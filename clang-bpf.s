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
	r2 = .L__profc_memmove ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 32)
	if r1 >= r2 goto LBB0_6
	goto LBB0_1
LBB0_1:
	r2 = .L__profc_memmove ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_memmove ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_memmove ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	goto LBB0_8
LBB0_8:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB0_11
	goto LBB0_9
LBB0_9:                                 #   in Loop: Header=BB0_8 Depth=1
	r2 = .L__profc_memmove ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
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
	r2 = .L__profc_memccpy ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 == 0 goto LBB1_4
	goto LBB1_2
LBB1_2:                                 #   in Loop: Header=BB1_1 Depth=1
	r2 = .L__profc_memccpy ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 56)
	r1 = *(u8 *)(r1 + 0)
	*(u64 *)(r10 - 96) = r1
	r2 = *(u64 *)(r10 - 48)
	*(u8 *)(r2 + 0) = r1
	r2 = *(u32 *)(r10 - 28)
	*(u64 *)(r10 - 88) = r2
	r3 = 0
	*(u64 *)(r10 - 80) = r3
	r3 = 1
	*(u64 *)(r10 - 72) = r3
	if r1 != r2 goto LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 80)
	*(u64 *)(r10 - 72) = r1
LBB1_12:                                #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 96)
	r2 = *(u64 *)(r10 - 88)
	r3 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 104) = r3
	*(u64 *)(r10 - 64) = r3
	if r1 == r2 goto LBB1_4
	goto LBB1_3
LBB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 104)
	r3 = .L__profc_memccpy ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 64) = r1
	goto LBB1_4
LBB1_4:                                 #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r1 &= 1
	if r1 == 0 goto LBB1_7
	goto LBB1_5
LBB1_5:                                 #   in Loop: Header=BB1_1 Depth=1
	r2 = .L__profc_memccpy ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB1_6
LBB1_6:                                 #   in Loop: Header=BB1_1 Depth=1
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
LBB1_7:
	r1 = *(u64 *)(r10 - 40)
	if r1 == 0 goto LBB1_9
	goto LBB1_8
LBB1_8:
	r2 = .L__profc_memccpy ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 48)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB1_10
LBB1_9:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB1_10
LBB1_10:
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
	r2 = .L__profc_memchr ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 == 0 goto LBB2_4
	goto LBB2_2
LBB2_2:                                 #   in Loop: Header=BB2_1 Depth=1
	r2 = .L__profc_memchr ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	*(u64 *)(r10 - 72) = r1
	r2 = *(u32 *)(r10 - 12)
	*(u64 *)(r10 - 64) = r2
	r3 = 0
	*(u64 *)(r10 - 56) = r3
	r3 = 1
	*(u64 *)(r10 - 48) = r3
	if r1 != r2 goto LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
LBB2_12:                                #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	r2 = *(u64 *)(r10 - 64)
	r3 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 80) = r3
	*(u64 *)(r10 - 40) = r3
	if r1 == r2 goto LBB2_4
	goto LBB2_3
LBB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 80)
	r3 = .L__profc_memchr ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 40) = r1
	goto LBB2_4
LBB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 &= 1
	if r1 == 0 goto LBB2_7
	goto LBB2_5
LBB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	r2 = .L__profc_memchr ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB2_6
LBB2_6:                                 #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 += 1
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB2_1
LBB2_7:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB2_9
	goto LBB2_8
LBB2_8:
	r2 = .L__profc_memchr ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 88) = r1
	goto LBB2_10
LBB2_9:
	r1 = 0
	*(u64 *)(r10 - 88) = r1
	goto LBB2_10
LBB2_10:
	r0 = *(u64 *)(r10 - 88)
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
	r2 = .L__profc_memcmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	goto LBB3_1
LBB3_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB3_4
	goto LBB3_2
LBB3_2:                                 #   in Loop: Header=BB3_1 Depth=1
	r2 = .L__profc_memcmp ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	*(u64 *)(r10 - 80) = r1
	r2 = *(u64 *)(r10 - 40)
	r2 = *(u8 *)(r2 + 0)
	*(u64 *)(r10 - 72) = r2
	r3 = 0
	*(u64 *)(r10 - 64) = r3
	r3 = 1
	*(u64 *)(r10 - 56) = r3
	if r1 == r2 goto LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
LBB3_12:                                #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 80)
	r2 = *(u64 *)(r10 - 72)
	r3 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 88) = r3
	*(u64 *)(r10 - 48) = r3
	if r1 != r2 goto LBB3_4
	goto LBB3_3
LBB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 88)
	r3 = .L__profc_memcmp ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 48) = r1
	goto LBB3_4
LBB3_4:                                 #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 &= 1
	if r1 == 0 goto LBB3_7
	goto LBB3_5
LBB3_5:                                 #   in Loop: Header=BB3_1 Depth=1
	r2 = .L__profc_memcmp ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB3_6
LBB3_6:                                 #   in Loop: Header=BB3_1 Depth=1
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
LBB3_7:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB3_9
	goto LBB3_8
LBB3_8:
	r2 = .L__profc_memcmp ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 = *(u8 *)(r2 + 0)
	r1 -= r2
	*(u64 *)(r10 - 96) = r1
	goto LBB3_10
LBB3_9:
	r1 = 0
	*(u64 *)(r10 - 96) = r1
	goto LBB3_10
LBB3_10:
	r0 = *(u64 *)(r10 - 96)
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
	r2 = .L__profc_memrchr ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_memrchr ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 32)
	r1 += r2
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u32 *)(r10 - 20)
	if r1 != r2 goto LBB4_4
	goto LBB4_3
LBB4_3:
	r2 = .L__profc_memrchr ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_stpcpy ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	goto LBB5_1
LBB5_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	*(u8 *)(r2 + 0) = r1
	if r1 == 0 goto LBB5_4
	goto LBB5_2
LBB5_2:                                 #   in Loop: Header=BB5_1 Depth=1
	r2 = .L__profc_stpcpy ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_strchrnul ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 == 0 goto LBB6_4
	goto LBB6_2
LBB6_2:                                 #   in Loop: Header=BB6_1 Depth=1
	r2 = .L__profc_strchrnul ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	*(u64 *)(r10 - 56) = r1
	r2 = *(u32 *)(r10 - 12)
	*(u64 *)(r10 - 48) = r2
	r3 = 0
	*(u64 *)(r10 - 40) = r3
	r3 = 1
	*(u64 *)(r10 - 32) = r3
	if r1 != r2 goto LBB6_9
# %bb.8:                                #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB6_9:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 64) = r3
	*(u64 *)(r10 - 24) = r3
	if r1 == r2 goto LBB6_4
	goto LBB6_3
LBB6_3:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r3 = .L__profc_strchrnul ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 24) = r1
	goto LBB6_4
LBB6_4:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB6_7
	goto LBB6_5
LBB6_5:                                 #   in Loop: Header=BB6_1 Depth=1
	r2 = .L__profc_strchrnul ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB6_6
LBB6_6:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB6_1
LBB6_7:
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
	r2 = .L__profc_strchr ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	goto LBB7_2
LBB7_1:                                 #   in Loop: Header=BB7_2 Depth=1
	r2 = .L__profc_strchr ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB7_2
LBB7_2:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r1 <<= 32
	r1 >>= 32
	r2 = *(u32 *)(r10 - 20)
	if r1 != r2 goto LBB7_4
	goto LBB7_3
LBB7_3:
	r2 = .L__profc_strchr ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB7_7
LBB7_4:                                 #   in Loop: Header=BB7_2 Depth=1
	goto LBB7_5
LBB7_5:                                 #   in Loop: Header=BB7_2 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 16) = r2
	r1 = *(u8 *)(r1 + 0)
	if r1 != 0 goto LBB7_1
	goto LBB7_6
LBB7_6:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB7_7
LBB7_7:
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
	r2 = .L__profc_strcmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 != r2 goto LBB8_4
	goto LBB8_2
LBB8_2:                                 #   in Loop: Header=BB8_1 Depth=1
	r2 = .L__profc_strcmp ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	*(u64 *)(r10 - 48) = r1
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	if r1 != 0 goto LBB8_9
# %bb.8:                                #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB8_9:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r2 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 56) = r2
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB8_4
	goto LBB8_3
LBB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r3 = .L__profc_strcmp ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 24) = r1
	goto LBB8_4
LBB8_4:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB8_7
	goto LBB8_5
LBB8_5:                                 #   in Loop: Header=BB8_1 Depth=1
	r2 = .L__profc_strcmp ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB8_6
LBB8_6:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 += 1
	*(u64 *)(r10 - 16) = r1
	goto LBB8_1
LBB8_7:
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
	r2 = .L__profc_strlen ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	goto LBB9_1
LBB9_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	if r1 == 0 goto LBB9_4
	goto LBB9_2
LBB9_2:                                 #   in Loop: Header=BB9_1 Depth=1
	r2 = .L__profc_strlen ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB10_14
LBB10_2:
	goto LBB10_3
LBB10_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 = *(u8 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB10_10
	goto LBB10_4
LBB10_4:                                #   in Loop: Header=BB10_3 Depth=1
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 56)
	r1 += 1
	*(u64 *)(r2 + 56) = r1
	r1 = *(u64 *)(r10 - 48)
	r1 = *(u8 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB10_10
	goto LBB10_5
LBB10_5:                                #   in Loop: Header=BB10_3 Depth=1
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 64)
	r1 += 1
	*(u64 *)(r2 + 64) = r1
	goto LBB10_6
LBB10_6:                                #   in Loop: Header=BB10_3 Depth=1
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB10_10
	goto LBB10_7
LBB10_7:                                #   in Loop: Header=BB10_3 Depth=1
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	goto LBB10_8
LBB10_8:                                #   in Loop: Header=BB10_3 Depth=1
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = *(u64 *)(r10 - 40)
	r1 = *(u8 *)(r1 + 0)
	*(u64 *)(r10 - 88) = r1
	r2 = *(u64 *)(r10 - 48)
	r2 = *(u8 *)(r2 + 0)
	*(u64 *)(r10 - 80) = r2
	r3 = 0
	*(u64 *)(r10 - 72) = r3
	r3 = 1
	*(u64 *)(r10 - 64) = r3
	if r1 == r2 goto LBB10_16
# %bb.15:                               #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
LBB10_16:                               #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 88)
	r2 = *(u64 *)(r10 - 80)
	r3 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 96) = r3
	*(u64 *)(r10 - 56) = r3
	if r1 != r2 goto LBB10_10
	goto LBB10_9
LBB10_9:                                #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 96)
	r3 = .L__profc_strncmp ll
	r2 = *(u64 *)(r3 + 32)
	r2 += 1
	*(u64 *)(r3 + 32) = r2
	*(u64 *)(r10 - 56) = r1
	goto LBB10_10
LBB10_10:                               #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r1 &= 1
	if r1 == 0 goto LBB10_13
	goto LBB10_11
LBB10_11:                               #   in Loop: Header=BB10_3 Depth=1
	r2 = .L__profc_strncmp ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	goto LBB10_12
LBB10_12:                               #   in Loop: Header=BB10_3 Depth=1
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
LBB10_13:
	r1 = *(u64 *)(r10 - 40)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 48)
	r2 = *(u8 *)(r2 + 0)
	r1 -= r2
	*(u32 *)(r10 - 4) = r1
	goto LBB10_14
LBB10_14:
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
	r2 = .L__profc_swab ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_swab ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_isalpha ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_isascii ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_isblank ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u32 *)(r10 - 4)
	r2 = 1
	*(u64 *)(r10 - 16) = r2
	if r1 == 32 goto LBB14_3
	goto LBB14_1
LBB14_1:
	r2 = .L__profc_isblank ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 4)
	*(u64 *)(r10 - 40) = r1
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	r2 = 1
	*(u64 *)(r10 - 24) = r2
	if r1 == 9 goto LBB14_5
# %bb.4:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
LBB14_5:
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 48) = r2
	*(u64 *)(r10 - 16) = r2
	if r1 == 9 goto LBB14_3
	goto LBB14_2
LBB14_2:
	r1 = *(u64 *)(r10 - 48)
	r3 = .L__profc_isblank ll
	r2 = *(u64 *)(r3 + 16)
	r2 += 1
	*(u64 *)(r3 + 16) = r2
	*(u64 *)(r10 - 16) = r1
	goto LBB14_3
LBB14_3:
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
	r2 = .L__profc_iscntrl ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r2 = *(u32 *)(r10 - 4)
	r3 = 1
	r1 = 32
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB15_3
	goto LBB15_1
LBB15_1:
	r2 = .L__profc_iscntrl ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 4)
	*(u64 *)(r10 - 40) = r1
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	r2 = 1
	*(u64 *)(r10 - 24) = r2
	if r1 == 127 goto LBB15_5
# %bb.4:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
LBB15_5:
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 48) = r2
	*(u64 *)(r10 - 16) = r2
	if r1 == 127 goto LBB15_3
	goto LBB15_2
LBB15_2:
	r1 = *(u64 *)(r10 - 48)
	r3 = .L__profc_iscntrl ll
	r2 = *(u64 *)(r3 + 16)
	r2 += 1
	*(u64 *)(r3 + 16) = r2
	*(u64 *)(r10 - 16) = r1
	goto LBB15_3
LBB15_3:
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
	r2 = .L__profc_isdigit ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_isgraph ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_islower ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_isprint ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_isspace ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u32 *)(r10 - 4)
	r2 = 1
	*(u64 *)(r10 - 16) = r2
	if r1 == 32 goto LBB20_3
	goto LBB20_1
LBB20_1:
	r2 = .L__profc_isspace ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -9
	r2 <<= 32
	r2 >>= 32
	*(u64 *)(r10 - 48) = r2
	r1 = 0
	*(u64 *)(r10 - 40) = r1
	r3 = 1
	r1 = 5
	*(u64 *)(r10 - 32) = r1
	*(u64 *)(r10 - 24) = r3
	if r1 > r2 goto LBB20_5
# %bb.4:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 24) = r1
LBB20_5:
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 56) = r3
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB20_3
	goto LBB20_2
LBB20_2:
	r1 = *(u64 *)(r10 - 56)
	r3 = .L__profc_isspace ll
	r2 = *(u64 *)(r3 + 16)
	r2 += 1
	*(u64 *)(r3 + 16) = r2
	*(u64 *)(r10 - 16) = r1
	goto LBB20_3
LBB20_3:
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
	r2 = .L__profc_isupper ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_iswcntrl ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r2 = *(u32 *)(r10 - 4)
	r3 = 1
	r1 = 32
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB22_7
	goto LBB22_1
LBB22_1:
	r2 = .L__profc_iswcntrl ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -127
	r2 <<= 32
	r2 >>= 32
	r3 = 1
	r1 = 33
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB22_7
	goto LBB22_2
LBB22_2:
	r2 = .L__profc_iswcntrl ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	goto LBB22_3
LBB22_3:
	r2 = .L__profc_iswcntrl ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -8232
	r2 <<= 32
	r2 >>= 32
	r3 = 1
	r1 = 2
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB22_7
	goto LBB22_4
LBB22_4:
	r2 = .L__profc_iswcntrl ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	goto LBB22_5
LBB22_5:
	r2 = .L__profc_iswcntrl ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -65529
	r2 <<= 32
	r2 >>= 32
	*(u64 *)(r10 - 48) = r2
	r1 = 0
	*(u64 *)(r10 - 40) = r1
	r3 = 1
	r1 = 3
	*(u64 *)(r10 - 32) = r1
	*(u64 *)(r10 - 24) = r3
	if r1 > r2 goto LBB22_9
# %bb.8:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 24) = r1
LBB22_9:
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 56) = r3
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB22_7
	goto LBB22_6
LBB22_6:
	r1 = *(u64 *)(r10 - 56)
	r3 = .L__profc_iswcntrl ll
	r2 = *(u64 *)(r3 + 16)
	r2 += 1
	*(u64 *)(r3 + 16) = r2
	*(u64 *)(r10 - 16) = r1
	goto LBB22_7
LBB22_7:
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
	r2 = .L__profc_iswdigit ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u32 *)(r10 - 8)
	if r1 > 254 goto LBB24_2
	goto LBB24_1
LBB24_1:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 += 1
	r1 &= 127
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	r2 = 1
	*(u64 *)(r10 - 16) = r2
	if r1 s> 32 goto LBB24_15
# %bb.14:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB24_15:
	r1 = *(u64 *)(r10 - 16)
	*(u32 *)(r10 - 4) = r1
	goto LBB24_13
LBB24_2:
	r2 = *(u32 *)(r10 - 8)
	r1 = 8232
	if r1 > r2 goto LBB24_7
	goto LBB24_3
LBB24_3:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	r2 = *(u32 *)(r10 - 8)
	r2 += -8234
	r2 <<= 32
	r2 >>= 32
	r1 = 47062
	if r1 > r2 goto LBB24_7
	goto LBB24_4
LBB24_4:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	goto LBB24_5
LBB24_5:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r2 = *(u32 *)(r10 - 8)
	r2 += -57344
	r2 <<= 32
	r2 >>= 32
	r1 = 8185
	if r1 > r2 goto LBB24_7
	goto LBB24_6
LBB24_6:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	goto LBB24_8
LBB24_7:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB24_13
LBB24_8:
	r1 = *(u32 *)(r10 - 8)
	r1 += -65532
	r1 <<= 32
	r1 >>= 32
	if r1 > 1048579 goto LBB24_11
	goto LBB24_9
LBB24_9:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 64)
	r1 += 1
	*(u64 *)(r2 + 64) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 65534
	if r1 == 65534 goto LBB24_11
	goto LBB24_10
LBB24_10:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 72)
	r1 += 1
	*(u64 *)(r2 + 72) = r1
	goto LBB24_12
LBB24_11:
	r2 = .L__profc_iswprint ll
	r1 = *(u64 *)(r2 + 56)
	r1 += 1
	*(u64 *)(r2 + 56) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB24_13
LBB24_12:
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB24_13
LBB24_13:
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
	r2 = .L__profc_iswxdigit ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -48
	r2 <<= 32
	r2 >>= 32
	r3 = 1
	r1 = 10
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB25_3
	goto LBB25_1
LBB25_1:
	r2 = .L__profc_iswxdigit ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 |= 32
	r2 += -97
	r2 <<= 32
	r2 >>= 32
	*(u64 *)(r10 - 48) = r2
	r1 = 0
	*(u64 *)(r10 - 40) = r1
	r3 = 1
	r1 = 6
	*(u64 *)(r10 - 32) = r1
	*(u64 *)(r10 - 24) = r3
	if r1 > r2 goto LBB25_5
# %bb.4:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 24) = r1
LBB25_5:
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 56) = r3
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB25_3
	goto LBB25_2
LBB25_2:
	r1 = *(u64 *)(r10 - 56)
	r3 = .L__profc_iswxdigit ll
	r2 = *(u64 *)(r3 + 16)
	r2 += 1
	*(u64 *)(r3 + 16) = r2
	*(u64 *)(r10 - 16) = r1
	goto LBB25_3
LBB25_3:
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
	r2 = .L__profc_toascii ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_l64a ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_l64a ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_srand ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rand ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_insque ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 32)
	if r1 != 0 goto LBB30_2
	goto LBB30_1
LBB30_1:
	r2 = .L__profc_insque ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_insque ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_remque ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r1 + 0)
	if r1 == 0 goto LBB31_2
	goto LBB31_1
LBB31_1:
	r2 = .L__profc_remque ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_remque ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_abs ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 <<= 32
	r2 s>>= 32
	r1 = 1
	if r1 s> r2 goto LBB32_2
	goto LBB32_1
LBB32_1:
	r2 = .L__profc_abs ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_atoi ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_atoi ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	goto LBB33_14
LBB33_14:
	r1 = *(u64 *)(r10 - 24)
	r1 <<= 32
	r1 >>= 32
	if r1 != 45 goto LBB33_7
	goto LBB33_4
LBB33_4:
	r2 = .L__profc_atoi ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = 1
	*(u32 *)(r10 - 16) = r1
	goto LBB33_6
LBB33_5:
	r2 = .L__profc_atoi ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	goto LBB33_6
LBB33_6:
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB33_7
LBB33_7:
	r2 = .L__profc_atoi ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	goto LBB33_8
LBB33_8:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isdigit
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB33_10
	goto LBB33_9
LBB33_9:                                #   in Loop: Header=BB33_8 Depth=1
	r2 = .L__profc_atoi ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
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
	goto LBB33_8
LBB33_10:
	r1 = *(u32 *)(r10 - 16)
	if r1 == 0 goto LBB33_12
	goto LBB33_11
LBB33_11:
	r2 = .L__profc_atoi ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u32 *)(r10 - 12)
	*(u64 *)(r10 - 32) = r1
	goto LBB33_13
LBB33_12:
	r1 = *(u32 *)(r10 - 12)
	r1 = -r1
	*(u64 *)(r10 - 32) = r1
	goto LBB33_13
LBB33_13:
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
	r2 = .L__profc_atol ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_atol ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	goto LBB34_14
LBB34_14:
	r1 = *(u64 *)(r10 - 32)
	r1 <<= 32
	r1 >>= 32
	if r1 != 45 goto LBB34_7
	goto LBB34_4
LBB34_4:
	r2 = .L__profc_atol ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = 1
	*(u32 *)(r10 - 20) = r1
	goto LBB34_6
LBB34_5:
	r2 = .L__profc_atol ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	goto LBB34_6
LBB34_6:
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB34_7
LBB34_7:
	r2 = .L__profc_atol ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	goto LBB34_8
LBB34_8:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isdigit
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB34_10
	goto LBB34_9
LBB34_9:                                #   in Loop: Header=BB34_8 Depth=1
	r2 = .L__profc_atol ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
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
	goto LBB34_8
LBB34_10:
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB34_12
	goto LBB34_11
LBB34_11:
	r2 = .L__profc_atol ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	goto LBB34_13
LBB34_12:
	r1 = *(u64 *)(r10 - 16)
	r1 = -r1
	*(u64 *)(r10 - 40) = r1
	goto LBB34_13
LBB34_13:
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
	r2 = .L__profc_atoll ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_atoll ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	goto LBB35_14
LBB35_14:
	r1 = *(u64 *)(r10 - 32)
	r1 <<= 32
	r1 >>= 32
	if r1 != 45 goto LBB35_7
	goto LBB35_4
LBB35_4:
	r2 = .L__profc_atoll ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = 1
	*(u32 *)(r10 - 20) = r1
	goto LBB35_6
LBB35_5:
	r2 = .L__profc_atoll ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	goto LBB35_6
LBB35_6:
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB35_7
LBB35_7:
	r2 = .L__profc_atoll ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	goto LBB35_8
LBB35_8:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isdigit
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB35_10
	goto LBB35_9
LBB35_9:                                #   in Loop: Header=BB35_8 Depth=1
	r2 = .L__profc_atoll ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
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
	goto LBB35_8
LBB35_10:
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB35_12
	goto LBB35_11
LBB35_11:
	r2 = .L__profc_atoll ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	goto LBB35_13
LBB35_12:
	r1 = *(u64 *)(r10 - 16)
	r1 = -r1
	*(u64 *)(r10 - 40) = r1
	goto LBB35_13
LBB35_13:
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
	r2 = .L__profc_imaxabs ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r2 = *(u64 *)(r10 - 8)
	r1 = 1
	if r1 s> r2 goto LBB36_2
	goto LBB36_1
LBB36_1:
	r2 = .L__profc_imaxabs ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_labs ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r2 = *(u64 *)(r10 - 8)
	r1 = 1
	if r1 s> r2 goto LBB37_2
	goto LBB37_1
LBB37_1:
	r2 = .L__profc_labs ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_llabs ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r2 = *(u64 *)(r10 - 8)
	r1 = 1
	if r1 s> r2 goto LBB38_2
	goto LBB38_1
LBB38_1:
	r2 = .L__profc_llabs ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_wcschr ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	goto LBB39_1
LBB39_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB39_4
	goto LBB39_2
LBB39_2:                                #   in Loop: Header=BB39_1 Depth=1
	r2 = .L__profc_wcschr ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	*(u64 *)(r10 - 56) = r1
	r2 = *(u32 *)(r10 - 12)
	*(u64 *)(r10 - 48) = r2
	r3 = 0
	*(u64 *)(r10 - 40) = r3
	r3 = 1
	*(u64 *)(r10 - 32) = r3
	if r1 != r2 goto LBB39_12
# %bb.11:                               #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB39_12:                               #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 64) = r3
	*(u64 *)(r10 - 24) = r3
	if r1 == r2 goto LBB39_4
	goto LBB39_3
LBB39_3:                                #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r3 = .L__profc_wcschr ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 24) = r1
	goto LBB39_4
LBB39_4:                                #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB39_7
	goto LBB39_5
LBB39_5:                                #   in Loop: Header=BB39_1 Depth=1
	r2 = .L__profc_wcschr ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB39_6
LBB39_6:                                #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	goto LBB39_1
LBB39_7:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	if r1 == 0 goto LBB39_9
	goto LBB39_8
LBB39_8:
	r2 = .L__profc_wcschr ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 72) = r1
	goto LBB39_10
LBB39_9:
	r1 = 0
	*(u64 *)(r10 - 72) = r1
	goto LBB39_10
LBB39_10:
	r0 = *(u64 *)(r10 - 72)
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
	r2 = .L__profc_wcscmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	goto LBB40_1
LBB40_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r3 = 0
	*(u64 *)(r10 - 24) = r3
	if r1 != r2 goto LBB40_6
	goto LBB40_2
LBB40_2:                                #   in Loop: Header=BB40_1 Depth=1
	r2 = .L__profc_wcscmp ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB40_6
	goto LBB40_3
LBB40_3:                                #   in Loop: Header=BB40_1 Depth=1
	r2 = .L__profc_wcscmp ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	goto LBB40_4
LBB40_4:                                #   in Loop: Header=BB40_1 Depth=1
	r2 = .L__profc_wcscmp ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u32 *)(r1 + 0)
	*(u64 *)(r10 - 48) = r1
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	if r1 != 0 goto LBB40_14
# %bb.13:                               #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB40_14:                               #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r2 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 56) = r2
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB40_6
	goto LBB40_5
LBB40_5:                                #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r3 = .L__profc_wcscmp ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 24) = r1
	goto LBB40_6
LBB40_6:                                #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB40_9
	goto LBB40_7
LBB40_7:                                #   in Loop: Header=BB40_1 Depth=1
	r2 = .L__profc_wcscmp ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB40_8
LBB40_8:                                #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 += 4
	*(u64 *)(r10 - 16) = r1
	goto LBB40_1
LBB40_9:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	if r1 s>= r2 goto LBB40_11
	goto LBB40_10
LBB40_10:
	r2 = .L__profc_wcscmp ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = 4294967295 ll
	*(u64 *)(r10 - 64) = r1
	goto LBB40_12
LBB40_11:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	*(u64 *)(r10 - 80) = r3
	r3 = 1
	*(u64 *)(r10 - 72) = r3
	if r1 s> r2 goto LBB40_16
# %bb.15:
	r1 = *(u64 *)(r10 - 80)
	*(u64 *)(r10 - 72) = r1
LBB40_16:
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
	goto LBB40_12
LBB40_12:
	r0 = *(u64 *)(r10 - 64)
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
	r2 = .L__profc_wcscpy ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_wcscpy ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	goto LBB42_1
LBB42_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB42_8
	goto LBB42_2
LBB42_2:                                #   in Loop: Header=BB42_1 Depth=1
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r3 = 0
	*(u64 *)(r10 - 32) = r3
	if r1 != r2 goto LBB42_8
	goto LBB42_3
LBB42_3:                                #   in Loop: Header=BB42_1 Depth=1
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 56)
	r1 += 1
	*(u64 *)(r2 + 56) = r1
	goto LBB42_4
LBB42_4:                                #   in Loop: Header=BB42_1 Depth=1
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB42_8
	goto LBB42_5
LBB42_5:                                #   in Loop: Header=BB42_1 Depth=1
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	goto LBB42_6
LBB42_6:                                #   in Loop: Header=BB42_1 Depth=1
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u32 *)(r1 + 0)
	*(u64 *)(r10 - 56) = r1
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	r2 = 1
	*(u64 *)(r10 - 40) = r2
	if r1 != 0 goto LBB42_19
# %bb.18:                               #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB42_19:                               #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 64) = r2
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB42_8
	goto LBB42_7
LBB42_7:                                #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r3 = .L__profc_wcsncmp ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 32) = r1
	goto LBB42_8
LBB42_8:                                #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB42_11
	goto LBB42_9
LBB42_9:                                #   in Loop: Header=BB42_1 Depth=1
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB42_10
LBB42_10:                               #   in Loop: Header=BB42_1 Depth=1
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
LBB42_11:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB42_16
	goto LBB42_12
LBB42_12:
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 64)
	r1 += 1
	*(u64 *)(r2 + 64) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	if r1 s>= r2 goto LBB42_14
	goto LBB42_13
LBB42_13:
	r2 = .L__profc_wcsncmp ll
	r1 = *(u64 *)(r2 + 72)
	r1 += 1
	*(u64 *)(r2 + 72) = r1
	r1 = 4294967295 ll
	*(u64 *)(r10 - 72) = r1
	goto LBB42_15
LBB42_14:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	*(u64 *)(r10 - 88) = r3
	r3 = 1
	*(u64 *)(r10 - 80) = r3
	if r1 s> r2 goto LBB42_21
# %bb.20:
	r1 = *(u64 *)(r10 - 88)
	*(u64 *)(r10 - 80) = r1
LBB42_21:
	r1 = *(u64 *)(r10 - 80)
	*(u64 *)(r10 - 72) = r1
	goto LBB42_15
LBB42_15:
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 96) = r1
	goto LBB42_17
LBB42_16:
	r1 = 0
	*(u64 *)(r10 - 96) = r1
	goto LBB42_17
LBB42_17:
	r0 = *(u64 *)(r10 - 96)
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
	r2 = .L__profc_wmemchr ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	goto LBB43_1
LBB43_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB43_4
	goto LBB43_2
LBB43_2:                                #   in Loop: Header=BB43_1 Depth=1
	r2 = .L__profc_wmemchr ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	*(u64 *)(r10 - 64) = r1
	r2 = *(u32 *)(r10 - 12)
	*(u64 *)(r10 - 56) = r2
	r3 = 0
	*(u64 *)(r10 - 48) = r3
	r3 = 1
	*(u64 *)(r10 - 40) = r3
	if r1 != r2 goto LBB43_12
# %bb.11:                               #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB43_12:                               #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 56)
	r3 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 72) = r3
	*(u64 *)(r10 - 32) = r3
	if r1 == r2 goto LBB43_4
	goto LBB43_3
LBB43_3:                                #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	r3 = .L__profc_wmemchr ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 32) = r1
	goto LBB43_4
LBB43_4:                                #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB43_7
	goto LBB43_5
LBB43_5:                                #   in Loop: Header=BB43_1 Depth=1
	r2 = .L__profc_wmemchr ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB43_6
LBB43_6:                                #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	goto LBB43_1
LBB43_7:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB43_9
	goto LBB43_8
LBB43_8:
	r2 = .L__profc_wmemchr ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 80) = r1
	goto LBB43_10
LBB43_9:
	r1 = 0
	*(u64 *)(r10 - 80) = r1
	goto LBB43_10
LBB43_10:
	r0 = *(u64 *)(r10 - 80)
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
	r2 = .L__profc_wmemcmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	goto LBB44_1
LBB44_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB44_4
	goto LBB44_2
LBB44_2:                                #   in Loop: Header=BB44_1 Depth=1
	r2 = .L__profc_wmemcmp ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	*(u64 *)(r10 - 64) = r1
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	*(u64 *)(r10 - 56) = r2
	r3 = 0
	*(u64 *)(r10 - 48) = r3
	r3 = 1
	*(u64 *)(r10 - 40) = r3
	if r1 == r2 goto LBB44_15
# %bb.14:                               #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB44_15:                               #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 56)
	r3 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 72) = r3
	*(u64 *)(r10 - 32) = r3
	if r1 != r2 goto LBB44_4
	goto LBB44_3
LBB44_3:                                #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	r3 = .L__profc_wmemcmp ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 32) = r1
	goto LBB44_4
LBB44_4:                                #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB44_7
	goto LBB44_5
LBB44_5:                                #   in Loop: Header=BB44_1 Depth=1
	r2 = .L__profc_wmemcmp ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB44_6
LBB44_6:                                #   in Loop: Header=BB44_1 Depth=1
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
LBB44_7:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB44_12
	goto LBB44_8
LBB44_8:
	r2 = .L__profc_wmemcmp ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	if r1 s>= r2 goto LBB44_10
	goto LBB44_9
LBB44_9:
	r2 = .L__profc_wmemcmp ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	r1 = 4294967295 ll
	*(u64 *)(r10 - 80) = r1
	goto LBB44_11
LBB44_10:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	*(u64 *)(r10 - 96) = r3
	r3 = 1
	*(u64 *)(r10 - 88) = r3
	if r1 s> r2 goto LBB44_17
# %bb.16:
	r1 = *(u64 *)(r10 - 96)
	*(u64 *)(r10 - 88) = r1
LBB44_17:
	r1 = *(u64 *)(r10 - 88)
	*(u64 *)(r10 - 80) = r1
	goto LBB44_11
LBB44_11:
	r1 = *(u64 *)(r10 - 80)
	*(u64 *)(r10 - 104) = r1
	goto LBB44_13
LBB44_12:
	r1 = 0
	*(u64 *)(r10 - 104) = r1
	goto LBB44_13
LBB44_13:
	r0 = *(u64 *)(r10 - 104)
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
	r2 = .L__profc_wmemmove ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 24)
	if r1 != r2 goto LBB45_2
	goto LBB45_1
LBB45_1:
	r2 = .L__profc_wmemmove ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_wmemmove ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	goto LBB45_4
LBB45_4:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB45_6
	goto LBB45_5
LBB45_5:                                #   in Loop: Header=BB45_4 Depth=1
	r2 = .L__profc_wmemmove ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
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
	r2 = .L__profc_wmemmove ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
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
	r2 = .L__profc_wmemset ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_wmemset ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_bcopy ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 40)
	if r1 >= r2 goto LBB47_6
	goto LBB47_1
LBB47_1:
	r2 = .L__profc_bcopy ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_bcopy ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_bcopy ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	goto LBB47_8
LBB47_8:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB47_11
	goto LBB47_9
LBB47_9:                                #   in Loop: Header=BB47_8 Depth=1
	r2 = .L__profc_bcopy ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
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
	r2 = .L__profc_rotl64 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotr64 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotl32 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotr32 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotl_sz ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotr_sz ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotl16 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotr16 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotl8 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_rotr8 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_bswap_16 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_bswap_32 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_bswap_64 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_ffs ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	goto LBB61_1
LBB61_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 12)
	if r1 > 31 goto LBB61_6
	goto LBB61_2
LBB61_2:                                #   in Loop: Header=BB61_1 Depth=1
	r2 = .L__profc_ffs ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = *(u32 *)(r10 - 12)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB61_4
	goto LBB61_3
LBB61_3:
	r2 = .L__profc_ffs ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_libiberty_ffs ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u32 *)(r10 - 8)
	if r1 != 0 goto LBB62_2
	goto LBB62_1
LBB62_1:
	r2 = .L__profc_libiberty_ffs ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_libiberty_ffs ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_memxor ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_memxor ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_strncat ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 == 0 goto LBB64_4
	goto LBB64_2
LBB64_2:                                #   in Loop: Header=BB64_1 Depth=1
	r2 = .L__profc_strncat ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	*(u64 *)(r10 - 72) = r1
	r2 = *(u64 *)(r10 - 32)
	*(u8 *)(r2 + 0) = r1
	r2 = 0
	*(u64 *)(r10 - 64) = r2
	r2 = 1
	*(u64 *)(r10 - 56) = r2
	if r1 != 0 goto LBB64_11
# %bb.10:                               #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
LBB64_11:                               #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	r2 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 80) = r2
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB64_4
	goto LBB64_3
LBB64_3:                                #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 80)
	r3 = .L__profc_strncat ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 48) = r1
	goto LBB64_4
LBB64_4:                                #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 &= 1
	if r1 == 0 goto LBB64_7
	goto LBB64_5
LBB64_5:                                #   in Loop: Header=BB64_1 Depth=1
	r2 = .L__profc_strncat ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB64_6
LBB64_6:                                #   in Loop: Header=BB64_1 Depth=1
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
LBB64_7:
	r1 = *(u64 *)(r10 - 24)
	if r1 != 0 goto LBB64_9
	goto LBB64_8
LBB64_8:
	r2 = .L__profc_strncat ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r2 = *(u64 *)(r10 - 32)
	r1 = 0
	*(u8 *)(r2 + 0) = r1
	goto LBB64_9
LBB64_9:
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
	r2 = .L__profc_strnlen ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	goto LBB65_1
LBB65_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r10 - 16)
	r3 = 0
	*(u64 *)(r10 - 32) = r3
	if r1 >= r2 goto LBB65_4
	goto LBB65_2
LBB65_2:                                #   in Loop: Header=BB65_1 Depth=1
	r2 = .L__profc_strnlen ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r2 = *(u64 *)(r10 - 24)
	r1 += r2
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	*(u64 *)(r10 - 56) = r1
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	r2 = 1
	*(u64 *)(r10 - 40) = r2
	if r1 != 0 goto LBB65_9
# %bb.8:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB65_9:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 64) = r2
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB65_4
	goto LBB65_3
LBB65_3:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r3 = .L__profc_strnlen ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 32) = r1
	goto LBB65_4
LBB65_4:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB65_7
	goto LBB65_5
LBB65_5:                                #   in Loop: Header=BB65_1 Depth=1
	r2 = .L__profc_strnlen ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB65_6
LBB65_6:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += 1
	*(u64 *)(r10 - 24) = r1
	goto LBB65_1
LBB65_7:
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
	r2 = .L__profc_strpbrk ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_strpbrk ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_strpbrk ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_strpbrk ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
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
	r2 = .L__profc_strrchr ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	goto LBB67_2
LBB67_1:                                #   in Loop: Header=BB67_2 Depth=1
	r2 = .L__profc_strrchr ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	goto LBB67_2
LBB67_2:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r1 <<= 32
	r1 >>= 32
	r2 = *(u32 *)(r10 - 12)
	if r1 != r2 goto LBB67_4
	goto LBB67_3
LBB67_3:                                #   in Loop: Header=BB67_2 Depth=1
	r2 = .L__profc_strrchr ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r1
	goto LBB67_4
LBB67_4:                                #   in Loop: Header=BB67_2 Depth=1
	goto LBB67_5
LBB67_5:                                #   in Loop: Header=BB67_2 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 8) = r2
	r1 = *(u8 *)(r1 + 0)
	if r1 != 0 goto LBB67_1
	goto LBB67_6
LBB67_6:
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
	r2 = .L__profc_strstr ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	call strlen
	*(u64 *)(r10 - 40) = r0
	r1 = *(u64 *)(r10 - 40)
	if r1 != 0 goto LBB68_2
	goto LBB68_1
LBB68_1:
	r2 = .L__profc_strstr ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc_strstr ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_strstr ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
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
	r2 = .L__profc_memmem ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc_memmem ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB69_13
LBB69_2:
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r10 - 40)
	if r1 >= r2 goto LBB69_4
	goto LBB69_3
LBB69_3:
	r2 = .L__profc_memmem ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB69_13
LBB69_4:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 48) = r1
	goto LBB69_5
LBB69_5:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 48)
	r2 = *(u64 *)(r10 - 56)
	if r1 > r2 goto LBB69_12
	goto LBB69_6
LBB69_6:                                #   in Loop: Header=BB69_5 Depth=1
	r2 = .L__profc_memmem ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = *(u64 *)(r10 - 48)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = *(u64 *)(r10 - 32)
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	if r1 != r2 goto LBB69_10
	goto LBB69_7
LBB69_7:                                #   in Loop: Header=BB69_5 Depth=1
	r2 = .L__profc_memmem ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
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
	if r1 != 0 goto LBB69_10
	goto LBB69_8
LBB69_8:
	r2 = .L__profc_memmem ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	goto LBB69_9
LBB69_9:
	r2 = .L__profc_memmem ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 8) = r1
	goto LBB69_13
LBB69_10:                               #   in Loop: Header=BB69_5 Depth=1
	goto LBB69_11
LBB69_11:                               #   in Loop: Header=BB69_5 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 += 1
	*(u64 *)(r10 - 48) = r1
	goto LBB69_5
LBB69_12:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB69_13
LBB69_13:
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
	r2 = .L__profc___muldi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___muldi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB70_4
	goto LBB70_3
LBB70_3:                                #   in Loop: Header=BB70_1 Depth=1
	r2 = .L__profc___muldi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 >= r2 goto LBB71_6
	goto LBB71_2
LBB71_2:                                #   in Loop: Header=BB71_1 Depth=1
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u32 *)(r10 - 28)
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	if r1 == 0 goto LBB71_6
	goto LBB71_3
LBB71_3:                                #   in Loop: Header=BB71_1 Depth=1
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	goto LBB71_4
LBB71_4:                                #   in Loop: Header=BB71_1 Depth=1
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u32 *)(r10 - 12)
	r2 = 2147483648 ll
	r1 &= r2
	*(u64 *)(r10 - 64) = r1
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	r2 = 1
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB71_18
# %bb.17:                               #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
LBB71_18:                               #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 72) = r2
	*(u64 *)(r10 - 40) = r2
	if r1 != 0 goto LBB71_6
	goto LBB71_5
LBB71_5:                                #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	r3 = .L__profc_udivmodsi4 ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 40) = r1
	goto LBB71_6
LBB71_6:                                #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 &= 1
	if r1 == 0 goto LBB71_8
	goto LBB71_7
LBB71_7:                                #   in Loop: Header=BB71_1 Depth=1
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 <<= 1
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 28)
	r1 <<= 1
	*(u32 *)(r10 - 28) = r1
	goto LBB71_1
LBB71_8:
	goto LBB71_9
LBB71_9:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 28)
	if r1 == 0 goto LBB71_13
	goto LBB71_10
LBB71_10:                               #   in Loop: Header=BB71_9 Depth=1
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r2 = *(u32 *)(r10 - 8)
	r1 = *(u32 *)(r10 - 12)
	if r1 > r2 goto LBB71_12
	goto LBB71_11
LBB71_11:                               #   in Loop: Header=BB71_9 Depth=1
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 56)
	r1 += 1
	*(u64 *)(r2 + 56) = r1
	r2 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 -= r2
	*(u32 *)(r10 - 8) = r1
	r2 = *(u32 *)(r10 - 28)
	r1 = *(u32 *)(r10 - 32)
	r1 |= r2
	*(u32 *)(r10 - 32) = r1
	goto LBB71_12
LBB71_12:                               #   in Loop: Header=BB71_9 Depth=1
	r1 = *(u32 *)(r10 - 28)
	r1 >>= 1
	*(u32 *)(r10 - 28) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 >>= 1
	*(u32 *)(r10 - 12) = r1
	goto LBB71_9
LBB71_13:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB71_15
	goto LBB71_14
LBB71_14:
	r2 = .L__profc_udivmodsi4 ll
	r1 = *(u64 *)(r2 + 64)
	r1 += 1
	*(u64 *)(r2 + 64) = r1
	r1 = *(u32 *)(r10 - 8)
	*(u32 *)(r10 - 4) = r1
	goto LBB71_16
LBB71_15:
	r1 = *(u32 *)(r10 - 32)
	*(u32 *)(r10 - 4) = r1
	goto LBB71_16
LBB71_16:
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
	r2 = .L__profc___clrsbqi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u8 *)(r10 - 5)
	r1 <<= 56
	r1 s>>= 56
	if r1 s> -1 goto LBB72_2
	goto LBB72_1
LBB72_1:
	r2 = .L__profc___clrsbqi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___clrsbqi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___clrsbdi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 16)
	if r1 s> -1 goto LBB73_2
	goto LBB73_1
LBB73_1:
	r2 = .L__profc___clrsbdi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 ^= -1
	*(u64 *)(r10 - 16) = r1
	goto LBB73_2
LBB73_2:
	r1 = *(u64 *)(r10 - 16)
	if r1 != 0 goto LBB73_4
	goto LBB73_3
LBB73_3:
	r2 = .L__profc___clrsbdi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___mulsi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	goto LBB74_1
LBB74_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 4)
	if r1 == 0 goto LBB74_5
	goto LBB74_2
LBB74_2:                                #   in Loop: Header=BB74_1 Depth=1
	r2 = .L__profc___mulsi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 4)
	r1 &= 1
	if r1 == 0 goto LBB74_4
	goto LBB74_3
LBB74_3:                                #   in Loop: Header=BB74_1 Depth=1
	r2 = .L__profc___mulsi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___cmovd ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 > r2 goto LBB75_3
	goto LBB75_1
LBB75_1:
	r2 = .L__profc___cmovd ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r2 += r3
	if r1 > r2 goto LBB75_3
	goto LBB75_2
LBB75_2:
	r2 = .L__profc___cmovd ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	goto LBB75_11
LBB75_3:
	r2 = .L__profc___cmovd ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = 0
	*(u32 *)(r10 - 24) = r1
	goto LBB75_4
LBB75_4:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 24)
	r2 = *(u32 *)(r10 - 28)
	if r1 >= r2 goto LBB75_7
	goto LBB75_5
LBB75_5:                                #   in Loop: Header=BB75_4 Depth=1
	r2 = .L__profc___cmovd ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 16)
	r3 = *(u32 *)(r10 - 24)
	r3 <<= 3
	r1 += r3
	r1 = *(u64 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	r2 += r3
	*(u64 *)(r2 + 0) = r1
	goto LBB75_6
LBB75_6:                                #   in Loop: Header=BB75_4 Depth=1
	r1 = *(u32 *)(r10 - 24)
	r1 += 1
	*(u32 *)(r10 - 24) = r1
	goto LBB75_4
LBB75_7:
	goto LBB75_8
LBB75_8:                                # =>This Inner Loop Header: Depth=1
	r2 = *(u32 *)(r10 - 20)
	r1 = *(u32 *)(r10 - 32)
	if r1 >= r2 goto LBB75_10
	goto LBB75_9
LBB75_9:                                #   in Loop: Header=BB75_8 Depth=1
	r2 = .L__profc___cmovd ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
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
	goto LBB75_8
LBB75_10:
	goto LBB75_15
LBB75_11:
	goto LBB75_12
LBB75_12:                               # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 += -1
	*(u32 *)(r10 - 20) = r2
	if r1 == 0 goto LBB75_14
	goto LBB75_13
LBB75_13:                               #   in Loop: Header=BB75_12 Depth=1
	r2 = .L__profc___cmovd ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	goto LBB75_12
LBB75_14:
	goto LBB75_15
LBB75_15:
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
	r2 = .L__profc___cmovh ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 >>= 1
	*(u32 *)(r10 - 28) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 48) = r1
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	if r1 > r2 goto LBB76_3
	goto LBB76_1
LBB76_1:
	r2 = .L__profc___cmovh ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r2 += r3
	if r1 > r2 goto LBB76_3
	goto LBB76_2
LBB76_2:
	r2 = .L__profc___cmovh ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	goto LBB76_10
LBB76_3:
	r2 = .L__profc___cmovh ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = 0
	*(u32 *)(r10 - 24) = r1
	goto LBB76_4
LBB76_4:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 24)
	r2 = *(u32 *)(r10 - 28)
	if r1 >= r2 goto LBB76_7
	goto LBB76_5
LBB76_5:                                #   in Loop: Header=BB76_4 Depth=1
	r2 = .L__profc___cmovh ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 16)
	r3 = *(u32 *)(r10 - 24)
	r3 <<= 1
	r1 += r3
	r1 = *(u16 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	r2 += r3
	*(u16 *)(r2 + 0) = r1
	goto LBB76_6
LBB76_6:                                #   in Loop: Header=BB76_4 Depth=1
	r1 = *(u32 *)(r10 - 24)
	r1 += 1
	*(u32 *)(r10 - 24) = r1
	goto LBB76_4
LBB76_7:
	r1 = *(u32 *)(r10 - 20)
	r1 &= 1
	if r1 == 0 goto LBB76_9
	goto LBB76_8
LBB76_8:
	r2 = .L__profc___cmovh ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
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
	goto LBB76_9
LBB76_9:
	goto LBB76_14
LBB76_10:
	goto LBB76_11
LBB76_11:                               # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 += -1
	*(u32 *)(r10 - 20) = r2
	if r1 == 0 goto LBB76_13
	goto LBB76_12
LBB76_12:                               #   in Loop: Header=BB76_11 Depth=1
	r2 = .L__profc___cmovh ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	goto LBB76_11
LBB76_13:
	goto LBB76_14
LBB76_14:
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
	r2 = .L__profc___cmovw ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 > r2 goto LBB77_3
	goto LBB77_1
LBB77_1:
	r2 = .L__profc___cmovw ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r2 += r3
	if r1 > r2 goto LBB77_3
	goto LBB77_2
LBB77_2:
	r2 = .L__profc___cmovw ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	goto LBB77_11
LBB77_3:
	r2 = .L__profc___cmovw ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = 0
	*(u32 *)(r10 - 24) = r1
	goto LBB77_4
LBB77_4:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 24)
	r2 = *(u32 *)(r10 - 28)
	if r1 >= r2 goto LBB77_7
	goto LBB77_5
LBB77_5:                                #   in Loop: Header=BB77_4 Depth=1
	r2 = .L__profc___cmovw ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 16)
	r3 = *(u32 *)(r10 - 24)
	r3 <<= 2
	r1 += r3
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	r2 += r3
	*(u32 *)(r2 + 0) = r1
	goto LBB77_6
LBB77_6:                                #   in Loop: Header=BB77_4 Depth=1
	r1 = *(u32 *)(r10 - 24)
	r1 += 1
	*(u32 *)(r10 - 24) = r1
	goto LBB77_4
LBB77_7:
	goto LBB77_8
LBB77_8:                                # =>This Inner Loop Header: Depth=1
	r2 = *(u32 *)(r10 - 20)
	r1 = *(u32 *)(r10 - 32)
	if r1 >= r2 goto LBB77_10
	goto LBB77_9
LBB77_9:                                #   in Loop: Header=BB77_8 Depth=1
	r2 = .L__profc___cmovw ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
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
	goto LBB77_8
LBB77_10:
	goto LBB77_15
LBB77_11:
	goto LBB77_12
LBB77_12:                               # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 += -1
	*(u32 *)(r10 - 20) = r2
	if r1 == 0 goto LBB77_14
	goto LBB77_13
LBB77_13:                               #   in Loop: Header=BB77_12 Depth=1
	r2 = .L__profc___cmovw ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	goto LBB77_12
LBB77_14:
	goto LBB77_15
LBB77_15:
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
	r2 = .L__profc___umodi ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___clzhi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___clzhi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___clzhi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___ctzhi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___ctzhi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u16 *)(r10 - 2)
	r2 = *(u32 *)(r10 - 8)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB80_4
	goto LBB80_3
LBB80_3:
	r2 = .L__profc___ctzhi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___parityhi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___parityhi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u16 *)(r10 - 2)
	r2 = *(u32 *)(r10 - 8)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB81_4
	goto LBB81_3
LBB81_3:                                #   in Loop: Header=BB81_1 Depth=1
	r2 = .L__profc___parityhi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___popcounthi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___popcounthi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u16 *)(r10 - 2)
	r2 = *(u32 *)(r10 - 8)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB82_4
	goto LBB82_3
LBB82_3:                                #   in Loop: Header=BB82_1 Depth=1
	r2 = .L__profc___popcounthi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___mulsi3_iq2000 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	goto LBB83_1
LBB83_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 4)
	if r1 == 0 goto LBB83_5
	goto LBB83_2
LBB83_2:                                #   in Loop: Header=BB83_1 Depth=1
	r2 = .L__profc___mulsi3_iq2000 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 4)
	r1 &= 1
	if r1 == 0 goto LBB83_4
	goto LBB83_3
LBB83_3:                                #   in Loop: Header=BB83_1 Depth=1
	r2 = .L__profc___mulsi3_iq2000 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___mulsi3_lm32 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	if r1 != 0 goto LBB84_2
	goto LBB84_1
LBB84_1:
	r2 = .L__profc___mulsi3_lm32 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___mulsi3_lm32 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 &= 1
	if r1 == 0 goto LBB84_6
	goto LBB84_5
LBB84_5:                                #   in Loop: Header=BB84_3 Depth=1
	r2 = .L__profc___mulsi3_lm32 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
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
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 >= r2 goto LBB85_6
	goto LBB85_2
LBB85_2:                                #   in Loop: Header=BB85_1 Depth=1
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB85_6
	goto LBB85_3
LBB85_3:                                #   in Loop: Header=BB85_1 Depth=1
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	goto LBB85_4
LBB85_4:                                #   in Loop: Header=BB85_1 Depth=1
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u32 *)(r10 - 12)
	r2 = 2147483648 ll
	r1 &= r2
	*(u64 *)(r10 - 56) = r1
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	r2 = 1
	*(u64 *)(r10 - 40) = r2
	if r1 == 0 goto LBB85_18
# %bb.17:                               #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB85_18:                               #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 64) = r2
	*(u64 *)(r10 - 32) = r2
	if r1 != 0 goto LBB85_6
	goto LBB85_5
LBB85_5:                                #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r3 = .L__profc___udivmodsi4 ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 32) = r1
	goto LBB85_6
LBB85_6:                                #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB85_8
	goto LBB85_7
LBB85_7:                                #   in Loop: Header=BB85_1 Depth=1
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 <<= 1
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 <<= 1
	*(u32 *)(r10 - 20) = r1
	goto LBB85_1
LBB85_8:
	goto LBB85_9
LBB85_9:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB85_13
	goto LBB85_10
LBB85_10:                               #   in Loop: Header=BB85_9 Depth=1
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r2 = *(u32 *)(r10 - 8)
	r1 = *(u32 *)(r10 - 12)
	if r1 > r2 goto LBB85_12
	goto LBB85_11
LBB85_11:                               #   in Loop: Header=BB85_9 Depth=1
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 56)
	r1 += 1
	*(u64 *)(r2 + 56) = r1
	r2 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 -= r2
	*(u32 *)(r10 - 8) = r1
	r2 = *(u32 *)(r10 - 20)
	r1 = *(u32 *)(r10 - 24)
	r1 |= r2
	*(u32 *)(r10 - 24) = r1
	goto LBB85_12
LBB85_12:                               #   in Loop: Header=BB85_9 Depth=1
	r1 = *(u32 *)(r10 - 20)
	r1 >>= 1
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 >>= 1
	*(u32 *)(r10 - 12) = r1
	goto LBB85_9
LBB85_13:
	r1 = *(u32 *)(r10 - 16)
	if r1 == 0 goto LBB85_15
	goto LBB85_14
LBB85_14:
	r2 = .L__profc___udivmodsi4 ll
	r1 = *(u64 *)(r2 + 64)
	r1 += 1
	*(u64 *)(r2 + 64) = r1
	r1 = *(u32 *)(r10 - 8)
	*(u32 *)(r10 - 4) = r1
	goto LBB85_16
LBB85_15:
	r1 = *(u32 *)(r10 - 24)
	*(u32 *)(r10 - 4) = r1
	goto LBB85_16
LBB85_16:
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
	r2 = .L__profc___mspabi_mpysll ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___mspabi_mpyull ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___mulhi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u32 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	if r1 s> -1 goto LBB88_2
	goto LBB88_1
LBB88_1:
	r2 = .L__profc___mulhi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	if r1 == 0 goto LBB88_6
	goto LBB88_4
LBB88_4:                                #   in Loop: Header=BB88_3 Depth=1
	r2 = .L__profc___mulhi3 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r2 = *(u8 *)(r10 - 9)
	r2 <<= 56
	r2 s>>= 56
	*(u64 *)(r10 - 56) = r2
	r1 = 0
	*(u64 *)(r10 - 48) = r1
	r3 = 1
	r1 = 32
	*(u64 *)(r10 - 40) = r3
	if r1 > r2 goto LBB88_16
# %bb.15:                               #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB88_16:                               #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 64) = r2
	*(u64 *)(r10 - 32) = r2
	if r1 > 31 goto LBB88_6
	goto LBB88_5
LBB88_5:                                #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r3 = .L__profc___mulhi3 ll
	r2 = *(u64 *)(r3 + 32)
	r2 += 1
	*(u64 *)(r3 + 32) = r2
	*(u64 *)(r10 - 32) = r1
	goto LBB88_6
LBB88_6:                                #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB88_11
	goto LBB88_7
LBB88_7:                                #   in Loop: Header=BB88_3 Depth=1
	r2 = .L__profc___mulhi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 1
	if r1 == 0 goto LBB88_9
	goto LBB88_8
LBB88_8:                                #   in Loop: Header=BB88_3 Depth=1
	r2 = .L__profc___mulhi3 ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	r2 = *(u32 *)(r10 - 4)
	r1 = *(u32 *)(r10 - 20)
	r1 += r2
	*(u32 *)(r10 - 20) = r1
	goto LBB88_9
LBB88_9:                                #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u32 *)(r10 - 4)
	r1 <<= 1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	r1 >>= 1
	*(u32 *)(r10 - 8) = r1
	goto LBB88_10
LBB88_10:                               #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u8 *)(r10 - 9)
	r1 += 1
	*(u8 *)(r10 - 9) = r1
	goto LBB88_3
LBB88_11:
	r1 = *(u32 *)(r10 - 16)
	if r1 == 0 goto LBB88_13
	goto LBB88_12
LBB88_12:
	r2 = .L__profc___mulhi3 ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 = -r1
	*(u64 *)(r10 - 72) = r1
	goto LBB88_14
LBB88_13:
	r1 = *(u32 *)(r10 - 20)
	*(u64 *)(r10 - 72) = r1
	goto LBB88_14
LBB88_14:
	r0 = *(u64 *)(r10 - 72)
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
	r2 = .L__profc___divsi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u32 *)(r10 - 20) = r1
	r1 = *(u64 *)(r10 - 8)
	if r1 s> -1 goto LBB89_2
	goto LBB89_1
LBB89_1:
	r2 = .L__profc___divsi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___divsi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___divsi3 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
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
	r2 = .L__profc___modsi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 0
	*(u32 *)(r10 - 20) = r1
	r1 = *(u64 *)(r10 - 8)
	if r1 s> -1 goto LBB90_2
	goto LBB90_1
LBB90_1:
	r2 = .L__profc___modsi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___modsi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___modsi3 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
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
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 s>= r2 goto LBB91_6
	goto LBB91_2
LBB91_2:                                #   in Loop: Header=BB91_1 Depth=1
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u16 *)(r10 - 14)
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB91_6
	goto LBB91_3
LBB91_3:                                #   in Loop: Header=BB91_1 Depth=1
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	goto LBB91_4
LBB91_4:                                #   in Loop: Header=BB91_1 Depth=1
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u16 *)(r10 - 6)
	r1 &= 32768
	*(u64 *)(r10 - 48) = r1
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB91_18
# %bb.17:                               #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB91_18:                               #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r2 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 56) = r2
	*(u64 *)(r10 - 24) = r2
	if r1 != 0 goto LBB91_6
	goto LBB91_5
LBB91_5:                                #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r3 = .L__profc___udivmodhi4 ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 24) = r1
	goto LBB91_6
LBB91_6:                                #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB91_8
	goto LBB91_7
LBB91_7:                                #   in Loop: Header=BB91_1 Depth=1
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u16 *)(r10 - 6)
	r1 <<= 1
	*(u16 *)(r10 - 6) = r1
	r1 = *(u16 *)(r10 - 14)
	r1 <<= 1
	*(u16 *)(r10 - 14) = r1
	goto LBB91_1
LBB91_8:
	goto LBB91_9
LBB91_9:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u16 *)(r10 - 14)
	if r1 == 0 goto LBB91_13
	goto LBB91_10
LBB91_10:                               #   in Loop: Header=BB91_9 Depth=1
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r2 = *(u16 *)(r10 - 4)
	r1 = *(u16 *)(r10 - 6)
	if r1 s> r2 goto LBB91_12
	goto LBB91_11
LBB91_11:                               #   in Loop: Header=BB91_9 Depth=1
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 56)
	r1 += 1
	*(u64 *)(r2 + 56) = r1
	r2 = *(u16 *)(r10 - 6)
	r1 = *(u16 *)(r10 - 4)
	r1 -= r2
	*(u16 *)(r10 - 4) = r1
	r2 = *(u16 *)(r10 - 14)
	r1 = *(u16 *)(r10 - 16)
	r1 |= r2
	*(u16 *)(r10 - 16) = r1
	goto LBB91_12
LBB91_12:                               #   in Loop: Header=BB91_9 Depth=1
	r1 = *(u16 *)(r10 - 14)
	r1 >>= 1
	*(u16 *)(r10 - 14) = r1
	r1 = *(u16 *)(r10 - 6)
	r1 >>= 1
	*(u16 *)(r10 - 6) = r1
	goto LBB91_9
LBB91_13:
	r1 = *(u32 *)(r10 - 12)
	if r1 == 0 goto LBB91_15
	goto LBB91_14
LBB91_14:
	r2 = .L__profc___udivmodhi4 ll
	r1 = *(u64 *)(r2 + 64)
	r1 += 1
	*(u64 *)(r2 + 64) = r1
	r1 = *(u16 *)(r10 - 4)
	*(u16 *)(r10 - 2) = r1
	goto LBB91_16
LBB91_15:
	r1 = *(u16 *)(r10 - 16)
	*(u16 *)(r10 - 2) = r1
	goto LBB91_16
LBB91_16:
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
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	if r1 >= r2 goto LBB92_6
	goto LBB92_2
LBB92_2:                                #   in Loop: Header=BB92_1 Depth=1
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB92_6
	goto LBB92_3
LBB92_3:                                #   in Loop: Header=BB92_1 Depth=1
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 40)
	r1 += 1
	*(u64 *)(r2 + 40) = r1
	goto LBB92_4
LBB92_4:                                #   in Loop: Header=BB92_1 Depth=1
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = *(u64 *)(r10 - 24)
	r2 = 2147483648 ll
	r1 &= r2
	*(u64 *)(r10 - 80) = r1
	r2 = 0
	*(u64 *)(r10 - 72) = r2
	r2 = 1
	*(u64 *)(r10 - 64) = r2
	if r1 == 0 goto LBB92_18
# %bb.17:                               #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
LBB92_18:                               #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 80)
	r2 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 88) = r2
	*(u64 *)(r10 - 56) = r2
	if r1 != 0 goto LBB92_6
	goto LBB92_5
LBB92_5:                                #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 88)
	r3 = .L__profc___udivmodsi4_libgcc ll
	r2 = *(u64 *)(r3 + 24)
	r2 += 1
	*(u64 *)(r3 + 24) = r2
	*(u64 *)(r10 - 56) = r1
	goto LBB92_6
LBB92_6:                                #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r1 &= 1
	if r1 == 0 goto LBB92_8
	goto LBB92_7
LBB92_7:                                #   in Loop: Header=BB92_1 Depth=1
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u64 *)(r10 - 24)
	r1 <<= 1
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 40)
	r1 <<= 1
	*(u64 *)(r10 - 40) = r1
	goto LBB92_1
LBB92_8:
	goto LBB92_9
LBB92_9:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 40)
	if r1 == 0 goto LBB92_13
	goto LBB92_10
LBB92_10:                               #   in Loop: Header=BB92_9 Depth=1
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 48)
	r1 += 1
	*(u64 *)(r2 + 48) = r1
	r2 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r10 - 24)
	if r1 > r2 goto LBB92_12
	goto LBB92_11
LBB92_11:                               #   in Loop: Header=BB92_9 Depth=1
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 56)
	r1 += 1
	*(u64 *)(r2 + 56) = r1
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 16)
	r1 -= r2
	*(u64 *)(r10 - 16) = r1
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	r1 |= r2
	*(u64 *)(r10 - 48) = r1
	goto LBB92_12
LBB92_12:                               #   in Loop: Header=BB92_9 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 >>= 1
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 24)
	r1 >>= 1
	*(u64 *)(r10 - 24) = r1
	goto LBB92_9
LBB92_13:
	r1 = *(u32 *)(r10 - 28)
	if r1 == 0 goto LBB92_15
	goto LBB92_14
LBB92_14:
	r2 = .L__profc___udivmodsi4_libgcc ll
	r1 = *(u64 *)(r2 + 64)
	r1 += 1
	*(u64 *)(r2 + 64) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB92_16
LBB92_15:
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 8) = r1
	goto LBB92_16
LBB92_16:
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
	r2 = .L__profc___ashldi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 32
	*(u32 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 32
	if r1 == 0 goto LBB93_2
	goto LBB93_1
LBB93_1:
	r2 = .L__profc___ashldi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___ashldi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___ashrdi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 32
	*(u32 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 32
	if r1 == 0 goto LBB94_2
	goto LBB94_1
LBB94_1:
	r2 = .L__profc___ashrdi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___ashrdi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___bswapdi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___bswapsi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___clzsi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___clzti2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___cmpdi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___cmpdi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___cmpdi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB99_9
LBB99_4:
	r1 = *(u32 *)(r10 - 32)
	r2 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB99_6
	goto LBB99_5
LBB99_5:
	r2 = .L__profc___cmpdi2 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB99_9
LBB99_6:
	r2 = *(u32 *)(r10 - 32)
	r1 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB99_8
	goto LBB99_7
LBB99_7:
	r2 = .L__profc___cmpdi2 ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
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
	r2 = .L__profc___aeabi_lcmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___cmpti2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___cmpti2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_2:
	r2 = *(u64 *)(r10 - 56)
	r1 = *(u64 *)(r10 - 72)
	if r1 s>= r2 goto LBB101_4
	goto LBB101_3
LBB101_3:
	r2 = .L__profc___cmpti2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_4:
	r1 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB101_6
	goto LBB101_5
LBB101_5:
	r2 = .L__profc___cmpti2 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_6:
	r2 = *(u64 *)(r10 - 64)
	r1 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB101_8
	goto LBB101_7
LBB101_7:
	r2 = .L__profc___cmpti2 ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
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
	r2 = .L__profc___ctzsi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___ctzti2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___ffsti2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 40) = r2
	*(u64 *)(r10 - 48) = r1
	r1 = *(u64 *)(r10 - 48)
	if r1 != 0 goto LBB104_4
	goto LBB104_1
LBB104_1:
	r2 = .L__profc___ffsti2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = *(u64 *)(r10 - 40)
	if r1 != 0 goto LBB104_3
	goto LBB104_2
LBB104_2:
	r2 = .L__profc___ffsti2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___lshrdi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = 32
	*(u32 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 32
	if r1 == 0 goto LBB105_2
	goto LBB105_1
LBB105_1:
	r2 = .L__profc___lshrdi3 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
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
	r2 = .L__profc___lshrdi3 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
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
	r2 = .L__profc___muldsi3 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___muldi3_compiler_rt ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___negdi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___paritydi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___parityti2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___paritysi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___popcountdi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___popcountsi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___popcountti2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___ucmpdi2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u32 *)(r10 - 28)
	r2 = *(u32 *)(r10 - 36)
	if r1 >= r2 goto LBB115_2
	goto LBB115_1
LBB115_1:
	r2 = .L__profc___ucmpdi2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_2:
	r2 = *(u32 *)(r10 - 28)
	r1 = *(u32 *)(r10 - 36)
	if r1 >= r2 goto LBB115_4
	goto LBB115_3
LBB115_3:
	r2 = .L__profc___ucmpdi2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_4:
	r1 = *(u32 *)(r10 - 32)
	r2 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB115_6
	goto LBB115_5
LBB115_5:
	r2 = .L__profc___ucmpdi2 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_6:
	r2 = *(u32 *)(r10 - 32)
	r1 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB115_8
	goto LBB115_7
LBB115_7:
	r2 = .L__profc___ucmpdi2 ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
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
	r2 = .L__profc___aeabi_ulcmp ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___ucmpti2 ll
	r1 = *(u64 *)(r2 + 0)
	r1 += 1
	*(u64 *)(r2 + 0) = r1
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
	r2 = .L__profc___ucmpti2 ll
	r1 = *(u64 *)(r2 + 8)
	r1 += 1
	*(u64 *)(r2 + 8) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_2:
	r2 = *(u64 *)(r10 - 56)
	r1 = *(u64 *)(r10 - 72)
	if r1 >= r2 goto LBB117_4
	goto LBB117_3
LBB117_3:
	r2 = .L__profc___ucmpti2 ll
	r1 = *(u64 *)(r2 + 16)
	r1 += 1
	*(u64 *)(r2 + 16) = r1
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_4:
	r1 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB117_6
	goto LBB117_5
LBB117_5:
	r2 = .L__profc___ucmpti2 ll
	r1 = *(u64 *)(r2 + 24)
	r1 += 1
	*(u64 *)(r2 + 24) = r1
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_6:
	r2 = *(u64 *)(r10 - 64)
	r1 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB117_8
	goto LBB117_7
LBB117_7:
	r2 = .L__profc___ucmpti2 ll
	r1 = *(u64 *)(r2 + 32)
	r1 += 1
	*(u64 *)(r2 + 32) = r1
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
	.hidden	__llvm_profile_runtime
	.type	.L__profc_memmove,@object       # @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memmove, 64

	.type	.L__profc_memccpy,@object       # @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memccpy, 64

	.type	.L__profc_memchr,@object        # @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memchr, 64

	.type	.L__profc_memcmp,@object        # @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memcmp, 64

	.type	.L__profc_memrchr,@object       # @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memrchr, 64

	.type	.L__profc_stpcpy,@object        # @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_stpcpy, 64

	.type	.L__profc_strchrnul,@object     # @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strchrnul, 64

	.type	.L__profc_strchr,@object        # @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strchr, 64

	.type	.L__profc_strcmp,@object        # @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strcmp, 64

	.type	.L__profc_strlen,@object        # @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strlen, 64

	.type	.L__profc_strncmp,@object       # @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.zero	72
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strncmp, 64

	.type	.L__profc_swab,@object          # @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_swab, 64

	.type	.L__profc_isalpha,@object       # @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isalpha, 64

	.type	.L__profc_isascii,@object       # @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isascii, 64

	.type	.L__profc_isblank,@object       # @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isblank, 64

	.type	.L__profc_iscntrl,@object       # @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iscntrl, 64

	.type	.L__profc_isdigit,@object       # @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isdigit, 64

	.type	.L__profc_isgraph,@object       # @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isgraph, 64

	.type	.L__profc_islower,@object       # @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_islower, 64

	.type	.L__profc_isprint,@object       # @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isprint, 64

	.type	.L__profc_isspace,@object       # @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isspace, 64

	.type	.L__profc_isupper,@object       # @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isupper, 64

	.type	.L__profc_iswcntrl,@object      # @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswcntrl, 64

	.type	.L__profc_iswdigit,@object      # @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswdigit, 64

	.type	.L__profc_iswprint,@object      # @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.zero	80
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswprint, 64

	.type	.L__profc_iswxdigit,@object     # @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswxdigit, 64

	.type	.L__profc_toascii,@object       # @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_toascii, 64

	.type	.L__profc_l64a,@object          # @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_l64a, 64

	.type	.L__profc_srand,@object         # @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_srand, 64

	.type	.L__profc_rand,@object          # @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rand, 64

	.type	.L__profc_insque,@object        # @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_insque, 64

	.type	.L__profc_remque,@object        # @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_remque, 64

	.type	.L__profc_abs,@object           # @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_abs, 64

	.type	.L__profc_atoi,@object          # @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atoi, 64

	.type	.L__profc_atol,@object          # @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atol, 64

	.type	.L__profc_atoll,@object         # @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atoll, 64

	.type	.L__profc_imaxabs,@object       # @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_imaxabs, 64

	.type	.L__profc_labs,@object          # @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_labs, 64

	.type	.L__profc_llabs,@object         # @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_llabs, 64

	.type	.L__profc_wcschr,@object        # @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcschr, 64

	.type	.L__profc_wcscmp,@object        # @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcscmp, 64

	.type	.L__profc_wcscpy,@object        # @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcscpy, 64

	.type	.L__profc_wcsncmp,@object       # @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.zero	80
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcsncmp, 64

	.type	.L__profc_wmemchr,@object       # @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemchr, 64

	.type	.L__profc_wmemcmp,@object       # @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.zero	48
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcmp, 64

	.type	.L__profc_wmemmove,@object      # @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemmove, 64

	.type	.L__profc_wmemset,@object       # @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemset, 64

	.type	.L__profc_bcopy,@object         # @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bcopy, 64

	.type	.L__profc_rotl64,@object        # @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl64, 64

	.type	.L__profc_rotr64,@object        # @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr64, 64

	.type	.L__profc_rotl32,@object        # @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl32, 64

	.type	.L__profc_rotr32,@object        # @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr32, 64

	.type	.L__profc_rotl_sz,@object       # @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl_sz, 64

	.type	.L__profc_rotr_sz,@object       # @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr_sz, 64

	.type	.L__profc_rotl16,@object        # @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl16, 64

	.type	.L__profc_rotr16,@object        # @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr16, 64

	.type	.L__profc_rotl8,@object         # @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl8, 64

	.type	.L__profc_rotr8,@object         # @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr8, 64

	.type	.L__profc_bswap_16,@object      # @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_16, 64

	.type	.L__profc_bswap_32,@object      # @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_32, 64

	.type	.L__profc_bswap_64,@object      # @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_64, 64

	.type	.L__profc_ffs,@object           # @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ffs, 64

	.type	.L__profc_libiberty_ffs,@object # @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 64

	.type	.L__profc_memxor,@object        # @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.zero	16
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memxor, 64

	.type	.L__profc_strncat,@object       # @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strncat, 64

	.type	.L__profc_strnlen,@object       # @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strnlen, 64

	.type	.L__profc_strpbrk,@object       # @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strpbrk, 64

	.type	.L__profc_strrchr,@object       # @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strrchr, 64

	.type	.L__profc_strstr,@object        # @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strstr, 64

	.type	.L__profc_memmem,@object        # @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memmem, 64

	.type	.L__profc___muldi3,@object      # @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3, 64

	.type	.L__profc_udivmodsi4,@object    # @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.zero	72
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_udivmodsi4, 64

	.type	.L__profc___clrsbqi2,@object    # @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbqi2, 64

	.type	.L__profc___clrsbdi2,@object    # @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbdi2, 64

	.type	.L__profc___mulsi3,@object      # @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3, 64

	.type	.L__profc___cmovd,@object       # @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovd, 64

	.type	.L__profc___cmovh,@object       # @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovh, 64

	.type	.L__profc___cmovw,@object       # @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovw, 64

	.type	.L__profc___umodi,@object       # @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___umodi, 64

	.type	.L__profc___clzhi2,@object      # @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzhi2, 64

	.type	.L__profc___ctzhi2,@object      # @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzhi2, 64

	.type	.L__profc___parityhi2,@object   # @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___parityhi2, 64

	.type	.L__profc___popcounthi2,@object # @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcounthi2, 64

	.type	.L__profc___mulsi3_iq2000,@object # @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 64

	.type	.L__profc___mulsi3_lm32,@object # @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 64

	.type	.L__profc___udivmodsi4,@object  # @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.zero	72
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4, 64

	.type	.L__profc___mspabi_mpysll,@object # @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 64

	.type	.L__profc___mspabi_mpyull,@object # @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 64

	.type	.L__profc___mulhi3,@object      # @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.zero	56
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulhi3, 64

	.type	.L__profc___divsi3,@object      # @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___divsi3, 64

	.type	.L__profc___modsi3,@object      # @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.zero	32
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___modsi3, 64

	.type	.L__profc___udivmodhi4,@object  # @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.zero	72
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodhi4, 64

	.type	.L__profc___udivmodsi4_libgcc,@object # @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.zero	72
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 64

	.type	.L__profc___ashldi3,@object     # @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashldi3, 64

	.type	.L__profc___ashrdi3,@object     # @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashrdi3, 64

	.type	.L__profc___bswapdi2,@object    # @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___bswapdi2, 64

	.type	.L__profc___bswapsi2,@object    # @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___bswapsi2, 64

	.type	.L__profc___clzsi2,@object      # @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzsi2, 64

	.type	.L__profc___clzti2,@object      # @__profc___clzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profc___clzti2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzti2, 64

	.type	.L__profc___cmpdi2,@object      # @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmpdi2, 64

	.type	.L__profc___aeabi_lcmp,@object  # @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 64

	.type	.L__profc___cmpti2,@object      # @__profc___cmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profc___cmpti2:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmpti2, 64

	.type	.L__profc___ctzsi2,@object      # @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzsi2, 64

	.type	.L__profc___ctzti2,@object      # @__profc___ctzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profc___ctzti2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzti2, 64

	.type	.L__profc___ffsti2,@object      # @__profc___ffsti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profc___ffsti2:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ffsti2, 64

	.type	.L__profc___lshrdi3,@object     # @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.zero	24
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___lshrdi3, 64

	.type	.L__profc___muldsi3,@object     # @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldsi3, 64

	.type	.L__profc___muldi3_compiler_rt,@object # @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 64

	.type	.L__profc___negdi2,@object      # @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___negdi2, 64

	.type	.L__profc___paritydi2,@object   # @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___paritydi2, 64

	.type	.L__profc___parityti2,@object   # @__profc___parityti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profc___parityti2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___parityti2, 64

	.type	.L__profc___paritysi2,@object   # @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___paritysi2, 64

	.type	.L__profc___popcountdi2,@object # @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountdi2, 64

	.type	.L__profc___popcountsi2,@object # @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountsi2, 64

	.type	.L__profc___popcountti2,@object # @__profc___popcountti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profc___popcountti2:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountti2, 64

	.type	.L__profc___ucmpdi2,@object     # @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpdi2, 64

	.type	.L__profc___aeabi_ulcmp,@object # @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.zero	8
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_ulcmp, 64

	.type	.L__profc___ucmpti2,@object     # @__profc___ucmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.zero	40
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
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\244\b\276\003x\332]\222\213n\353 \f\206\305\033\365\264\323\264\267\211\200\260\006\315\\\212a\264}\372\331\206\364r\244\210\357\267\261\2151\t.\204\364\353Tp\301\332|\023nE\0202\243\260\2115\363&V\266b\203\251\004\024F\000\027\031Q\314\256\215\362\250!o\232\211\326{\242\001\035\177\2106R8q\365g_\211\347\242\363F\204\324]!\346\342#\3731k\353\210-g\361\367=\261\357\231}\017\355\327\341\252i\034\006\237\037Za\321qU\262\370\210\227\346Tq\201\241\r*]\223\347\005d\241\252A_\331\017\262\310\332-\362\035\031t)\006\215\200 w\354sP}N\212)\203d\201\256*c\023\205\227T\251\027F\031\200\323Q\254\001X\360.\346$\374\373\024s\000\276\304\370R\206&\232\027r\016A\271CP\311\357oj\327\033o\\\251\267\205-:\377\232\312x\f]\205\363q\262)?\314\375\351\350\343h\372\324\262\204\006\253?\251\266\372\337\220V\364\037\344\263P\320\\\374q\227\253H\212D\212$\037]x\235\334&;\261Q\001/9\367m$\327)\262.\276\336\246N\331\246\026\353\366Rt\361\227\343\341px\332\020N\274\373\326U\240\037\303\370%\344\033\322\303\275\332m\330\r6\351\217\222F\243\222zz\326\331\244\316\263\350B\023<[K>\215\233\214AT\031Jf=\256.\022\347@\356\017Q\207\b3J;\356\007\370\267\020o\335\207\200\273\030\036z\255!\340q\026\277\002>\024\r\300\246\220=\270\262\224J\316\350\316\353\313 _u}\321\3706\340\365\315z\337\033Y\355\277\326\333\354\275\215\346\377\000\306\273|\007"
	.size	.L__llvm_prf_nm, 450

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
	.addrsig_sym .L__profc_memrchr
	.addrsig_sym .L__profd_memrchr
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
	.addrsig_sym .L__profc_abs
	.addrsig_sym .L__profd_abs
	.addrsig_sym .L__profc_atoi
	.addrsig_sym .L__profd_atoi
	.addrsig_sym .L__profc_atol
	.addrsig_sym .L__profd_atol
	.addrsig_sym .L__profc_atoll
	.addrsig_sym .L__profd_atoll
	.addrsig_sym .L__profc_imaxabs
	.addrsig_sym .L__profd_imaxabs
	.addrsig_sym .L__profc_labs
	.addrsig_sym .L__profd_labs
	.addrsig_sym .L__profc_llabs
	.addrsig_sym .L__profd_llabs
	.addrsig_sym .L__profc_wcschr
	.addrsig_sym .L__profd_wcschr
	.addrsig_sym .L__profc_wcscmp
	.addrsig_sym .L__profd_wcscmp
	.addrsig_sym .L__profc_wcscpy
	.addrsig_sym .L__profd_wcscpy
	.addrsig_sym .L__profc_wcsncmp
	.addrsig_sym .L__profd_wcsncmp
	.addrsig_sym .L__profc_wmemchr
	.addrsig_sym .L__profd_wmemchr
	.addrsig_sym .L__profc_wmemcmp
	.addrsig_sym .L__profd_wmemcmp
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
	.addrsig_sym .L__profc_memmem
	.addrsig_sym .L__profd_memmem
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
	.addrsig_sym .L__profc___umodi
	.addrsig_sym .L__profd___umodi
	.addrsig_sym .L__profc___clzhi2
	.addrsig_sym .L__profd___clzhi2
	.addrsig_sym .L__profc___ctzhi2
	.addrsig_sym .L__profd___ctzhi2
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
	.addrsig_sym .L__profc___muldsi3
	.addrsig_sym .L__profd___muldsi3
	.addrsig_sym .L__profc___muldi3_compiler_rt
	.addrsig_sym .L__profd___muldi3_compiler_rt
	.addrsig_sym .L__profc___negdi2
	.addrsig_sym .L__profd___negdi2
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
	.addrsig_sym .L__profc___ucmpdi2
	.addrsig_sym .L__profd___ucmpdi2
	.addrsig_sym .L__profc___aeabi_ulcmp
	.addrsig_sym .L__profd___aeabi_ulcmp
	.addrsig_sym .L__profc___ucmpti2
	.addrsig_sym .L__profd___ucmpti2
	.addrsig_sym .L__llvm_prf_nm
