	.text
	.file	"mini-libc.c"
	.globl	memmove
	.p2align	2
	.type	memmove,@function
	.cc_top memmove.function,memmove
memmove:
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	stw r2, sp[2]
	ldw r0, dp[.L__profc_memmove+4]
	ldw r1, dp[.L__profc_memmove]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmove]
	stw r0, dp[.L__profc_memmove+4]
	ldw r0, sp[4]
	stw r0, sp[1]
	ldw r0, sp[3]
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r1, sp[1]
	lsu r0, r0, r1
	bf r0, .LBB0_6
	bu .LBB0_1
.LBB0_1:
	ldw r0, dp[__llvm_gcov_ctr+4]
	ldw r1, dp[__llvm_gcov_ctr]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr]
	stw r0, dp[__llvm_gcov_ctr+4]
	ldw r0, dp[.L__profc_memmove+12]
	ldw r1, dp[.L__profc_memmove+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmove+8]
	stw r0, dp[.L__profc_memmove+12]
	ldw r1, sp[2]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	ldw r1, sp[2]
	ldw r0, sp[1]
	add r0, r0, r1
	stw r0, sp[1]
	bu .LBB0_2
.LBB0_2:
	ldw r0, sp[2]
	bf r0, .LBB0_5
	bu .LBB0_3
.LBB0_3:
	ldw r0, dp[.L__profc_memmove+20]
	ldw r1, dp[.L__profc_memmove+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmove+16]
	stw r0, dp[.L__profc_memmove+20]
	ldw r0, sp[0]
	sub r1, r0, 1
	stw r1, sp[0]
	mkmsk r2, 32
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	sub r3, r1, 1
	stw r3, sp[1]
	st8 r0, r1[r2]
	bu .LBB0_4
.LBB0_4:
	ldw r0, dp[__llvm_gcov_ctr+12]
	ldw r1, dp[__llvm_gcov_ctr+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr+8]
	stw r0, dp[__llvm_gcov_ctr+12]
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	bu .LBB0_2
.LBB0_5:
	bu .LBB0_13
.LBB0_6:
	ldw r0, sp[0]
	ldw r1, sp[1]
	eq r0, r0, r1
	bt r0, .LBB0_12
	bu .LBB0_7
.LBB0_7:
	ldw r0, dp[.L__profc_memmove+28]
	ldw r1, dp[.L__profc_memmove+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmove+24]
	stw r0, dp[.L__profc_memmove+28]
	bu .LBB0_8
.LBB0_8:
	ldw r0, sp[2]
	bf r0, .LBB0_11
	bu .LBB0_9
.LBB0_9:
	ldw r0, dp[__llvm_gcov_ctr+20]
	ldw r1, dp[__llvm_gcov_ctr+16]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr+16]
	stw r0, dp[__llvm_gcov_ctr+20]
	ldw r0, dp[.L__profc_memmove+36]
	ldw r1, dp[.L__profc_memmove+32]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memmove+32]
	stw r0, dp[.L__profc_memmove+36]
	ldw r0, sp[0]
	add r1, r0, 1
	stw r1, sp[0]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	add r3, r1, 1
	stw r3, sp[1]
	st8 r0, r1[r2]
	bu .LBB0_10
.LBB0_10:
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	bu .LBB0_8
.LBB0_11:
	ldw r0, dp[__llvm_gcov_ctr+28]
	ldw r1, dp[__llvm_gcov_ctr+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr+24]
	stw r0, dp[__llvm_gcov_ctr+28]
	bu .LBB0_12
.LBB0_12:
	ldw r0, dp[__llvm_gcov_ctr+36]
	ldw r1, dp[__llvm_gcov_ctr+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr+32]
	stw r0, dp[__llvm_gcov_ctr+36]
	bu .LBB0_13
.LBB0_13:
	ldw r0, sp[4]
	retsp 5
	.cc_bottom memmove.function
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove

	.globl	memccpy
	.p2align	2
	.type	memccpy,@function
	.cc_top memccpy.function,memccpy
memccpy:
	entsp 10
	stw r4, sp[9]
	stw r0, sp[7]
	stw r1, sp[6]
	stw r2, sp[5]
	stw r3, sp[4]
	ldw r0, dp[.L__profc_memccpy+4]
	ldw r2, dp[.L__profc_memccpy]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_memccpy]
	stw r0, dp[.L__profc_memccpy+4]
	ldw r0, sp[7]
	stw r0, sp[3]
	ldw r0, sp[6]
	stw r0, sp[2]
	ldaw r0, sp[5]
	ld8u r0, r0[r1]
	stw r0, sp[5]
	bu .LBB1_1
.LBB1_1:
	ldw r0, sp[4]
	ldc r1, 0
	stw r1, sp[1]
	bf r0, .LBB1_4
	bu .LBB1_2
.LBB1_2:
	ldw r0, dp[__llvm_gcov_ctr.1+4]
	ldw r1, dp[__llvm_gcov_ctr.1]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.1]
	stw r0, dp[__llvm_gcov_ctr.1+4]
	ldw r0, dp[.L__profc_memccpy+20]
	ldw r1, dp[.L__profc_memccpy+16]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memccpy+16]
	stw r0, dp[.L__profc_memccpy+20]
	ldw r0, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	st8 r0, r1[r2]
	ldw r1, sp[5]
	eq r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[0]
	stw r1, sp[1]
	bt r0, .LBB1_4
	bu .LBB1_3
.LBB1_3:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.1+12]
	ldw r2, dp[__llvm_gcov_ctr.1+8]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.1+8]
	stw r1, dp[__llvm_gcov_ctr.1+12]
	ldw r1, dp[.L__profc_memccpy+28]
	ldw r2, dp[.L__profc_memccpy+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_memccpy+24]
	stw r1, dp[.L__profc_memccpy+28]
	stw r0, sp[1]
	bu .LBB1_4
.LBB1_4:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB1_7
	bu .LBB1_5
.LBB1_5:
	ldw r0, dp[.L__profc_memccpy+12]
	ldw r1, dp[.L__profc_memccpy+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memccpy+8]
	stw r0, dp[.L__profc_memccpy+12]
	bu .LBB1_6
.LBB1_6:
	ldw r0, dp[__llvm_gcov_ctr.1+20]
	ldw r1, dp[__llvm_gcov_ctr.1+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.1+16]
	stw r0, dp[__llvm_gcov_ctr.1+20]
	ldw r0, sp[4]
	sub r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB1_1
.LBB1_7:
	ldw r0, sp[4]
	bf r0, .LBB1_9
	bu .LBB1_8
.LBB1_8:
	ldw r0, dp[__llvm_gcov_ctr.1+28]
	ldw r1, dp[__llvm_gcov_ctr.1+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.1+24]
	stw r0, dp[__llvm_gcov_ctr.1+28]
	ldw r0, dp[.L__profc_memccpy+36]
	ldw r1, dp[.L__profc_memccpy+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memccpy+32]
	stw r0, dp[.L__profc_memccpy+36]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[8]
	bu .LBB1_10
.LBB1_9:
	ldw r1, dp[__llvm_gcov_ctr.1+36]
	ldw r2, dp[__llvm_gcov_ctr.1+32]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.1+32]
	stw r1, dp[__llvm_gcov_ctr.1+36]
	stw r0, sp[8]
	bu .LBB1_10
.LBB1_10:
	ldw r0, sp[8]
	ldw r4, sp[9]
	retsp 10
	.cc_bottom memccpy.function
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy

	.globl	memchr
	.p2align	2
	.type	memchr,@function
	.cc_top memchr.function,memchr
memchr:
	entsp 8
	stw r4, sp[7]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r0, dp[.L__profc_memchr+4]
	ldw r2, dp[.L__profc_memchr]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_memchr]
	stw r0, dp[.L__profc_memchr+4]
	ldw r0, sp[6]
	stw r0, sp[3]
	ldaw r0, sp[5]
	ld8u r0, r0[r1]
	stw r0, sp[5]
	bu .LBB2_1
.LBB2_1:
	ldw r0, sp[4]
	ldc r1, 0
	stw r1, sp[2]
	bf r0, .LBB2_4
	bu .LBB2_2
.LBB2_2:
	ldw r0, dp[__llvm_gcov_ctr.2+4]
	ldw r2, dp[__llvm_gcov_ctr.2]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.2]
	stw r0, dp[__llvm_gcov_ctr.2+4]
	ldw r0, dp[.L__profc_memchr+20]
	ldw r2, dp[.L__profc_memchr+16]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_memchr+16]
	stw r0, dp[.L__profc_memchr+20]
	ldw r0, sp[3]
	ld8u r0, r0[r1]
	ldw r1, sp[5]
	eq r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[1]
	stw r1, sp[2]
	bt r0, .LBB2_4
	bu .LBB2_3
.LBB2_3:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.2+12]
	ldw r2, dp[__llvm_gcov_ctr.2+8]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.2+8]
	stw r1, dp[__llvm_gcov_ctr.2+12]
	ldw r1, dp[.L__profc_memchr+28]
	ldw r2, dp[.L__profc_memchr+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_memchr+24]
	stw r1, dp[.L__profc_memchr+28]
	stw r0, sp[2]
	bu .LBB2_4
.LBB2_4:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB2_7
	bu .LBB2_5
.LBB2_5:
	ldw r0, dp[.L__profc_memchr+12]
	ldw r1, dp[.L__profc_memchr+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memchr+8]
	stw r0, dp[.L__profc_memchr+12]
	bu .LBB2_6
.LBB2_6:
	ldw r0, dp[__llvm_gcov_ctr.2+20]
	ldw r1, dp[__llvm_gcov_ctr.2+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.2+16]
	stw r0, dp[__llvm_gcov_ctr.2+20]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[4]
	sub r0, r0, 1
	stw r0, sp[4]
	bu .LBB2_1
.LBB2_7:
	ldw r0, sp[4]
	bf r0, .LBB2_9
	bu .LBB2_8
.LBB2_8:
	ldw r0, dp[__llvm_gcov_ctr.2+28]
	ldw r1, dp[__llvm_gcov_ctr.2+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.2+24]
	stw r0, dp[__llvm_gcov_ctr.2+28]
	ldw r0, dp[.L__profc_memchr+36]
	ldw r1, dp[.L__profc_memchr+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memchr+32]
	stw r0, dp[.L__profc_memchr+36]
	ldw r0, sp[3]
	stw r0, sp[0]
	bu .LBB2_10
.LBB2_9:
	ldw r1, dp[__llvm_gcov_ctr.2+36]
	ldw r2, dp[__llvm_gcov_ctr.2+32]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.2+32]
	stw r1, dp[__llvm_gcov_ctr.2+36]
	stw r0, sp[0]
	bu .LBB2_10
.LBB2_10:
	ldw r0, sp[0]
	ldw r4, sp[7]
	retsp 8
	.cc_bottom memchr.function
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr

	.globl	memcmp
	.p2align	2
	.type	memcmp,@function
	.cc_top memcmp.function,memcmp
memcmp:
	entsp 9
	stw r4, sp[8]
	stw r0, sp[7]
	stw r1, sp[6]
	stw r2, sp[5]
	ldw r0, dp[.L__profc_memcmp+4]
	ldw r1, dp[.L__profc_memcmp]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memcmp]
	stw r0, dp[.L__profc_memcmp+4]
	ldw r0, sp[7]
	stw r0, sp[4]
	ldw r0, sp[6]
	stw r0, sp[3]
	bu .LBB3_1
.LBB3_1:
	ldw r0, sp[5]
	ldc r1, 0
	stw r1, sp[2]
	bf r0, .LBB3_4
	bu .LBB3_2
.LBB3_2:
	ldw r0, dp[__llvm_gcov_ctr.3+4]
	ldw r1, dp[__llvm_gcov_ctr.3]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.3]
	stw r0, dp[__llvm_gcov_ctr.3+4]
	ldw r0, dp[.L__profc_memcmp+20]
	ldw r1, dp[.L__profc_memcmp+16]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memcmp+16]
	stw r0, dp[.L__profc_memcmp+20]
	ldw r0, sp[4]
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	stw r0, sp[1]
	mov r1, r0
	stw r1, sp[2]
	bf r0, .LBB3_4
	bu .LBB3_3
.LBB3_3:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.3+12]
	ldw r2, dp[__llvm_gcov_ctr.3+8]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.3+8]
	stw r1, dp[__llvm_gcov_ctr.3+12]
	ldw r1, dp[.L__profc_memcmp+28]
	ldw r2, dp[.L__profc_memcmp+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_memcmp+24]
	stw r1, dp[.L__profc_memcmp+28]
	stw r0, sp[2]
	bu .LBB3_4
.LBB3_4:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB3_7
	bu .LBB3_5
.LBB3_5:
	ldw r0, dp[.L__profc_memcmp+12]
	ldw r1, dp[.L__profc_memcmp+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memcmp+8]
	stw r0, dp[.L__profc_memcmp+12]
	bu .LBB3_6
.LBB3_6:
	ldw r0, dp[__llvm_gcov_ctr.3+20]
	ldw r1, dp[__llvm_gcov_ctr.3+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.3+16]
	stw r0, dp[__llvm_gcov_ctr.3+20]
	ldw r0, sp[5]
	sub r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB3_1
.LBB3_7:
	ldw r0, sp[5]
	bf r0, .LBB3_9
	bu .LBB3_8
.LBB3_8:
	ldw r0, dp[__llvm_gcov_ctr.3+28]
	ldw r1, dp[__llvm_gcov_ctr.3+24]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.3+24]
	stw r0, dp[__llvm_gcov_ctr.3+28]
	ldw r0, dp[.L__profc_memcmp+36]
	ldw r1, dp[.L__profc_memcmp+32]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memcmp+32]
	stw r0, dp[.L__profc_memcmp+36]
	ldw r0, sp[4]
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	stw r0, sp[0]
	bu .LBB3_10
.LBB3_9:
	ldw r1, dp[__llvm_gcov_ctr.3+36]
	ldw r2, dp[__llvm_gcov_ctr.3+32]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.3+32]
	stw r1, dp[__llvm_gcov_ctr.3+36]
	stw r0, sp[0]
	bu .LBB3_10
.LBB3_10:
	ldw r0, sp[0]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom memcmp.function
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp

	.globl	memcpy
	.p2align	2
	.type	memcpy,@function
	.cc_top memcpy.function,memcpy
memcpy:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	stw r6, sp[6]
	stw r2, sp[0]
	mov r11, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.4+4]
	ldw r5, dp[__llvm_gcov_ctr.4]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.4]
	stw r4, dp[__llvm_gcov_ctr.4+4]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_memcpy+4]
	ldw r1, dp[.L__profc_memcpy]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memcpy]
	stw r0, dp[.L__profc_memcpy+4]
	ldw r0, sp[5]
	stw r0, sp[2]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB4_1
.LBB4_1:
	ldw r0, sp[3]
	bf r0, .LBB4_4
	bu .LBB4_2
.LBB4_2:
	ldw r0, dp[.L__profc_memcpy+12]
	ldw r1, dp[.L__profc_memcpy+8]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memcpy+8]
	stw r0, dp[.L__profc_memcpy+12]
	ldw r0, sp[1]
	add r1, r0, 1
	stw r1, sp[1]
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	add r3, r1, 1
	stw r3, sp[2]
	st8 r0, r1[r2]
	bu .LBB4_3
.LBB4_3:
	ldw r0, dp[__llvm_gcov_ctr.4+12]
	ldw r1, dp[__llvm_gcov_ctr.4+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.4+8]
	stw r0, dp[__llvm_gcov_ctr.4+12]
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	bu .LBB4_1
.LBB4_4:
	ldw r0, sp[5]
	ldw r6, sp[6]
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom memcpy.function
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy

	.globl	memrchr
	.p2align	2
	.type	memrchr,@function
	.cc_top memrchr.function,memrchr
memrchr:
	entsp 5
	stw r0, sp[3]
	stw r1, sp[2]
	stw r2, sp[1]
	ldw r0, dp[.L__profc_memrchr+4]
	ldw r2, dp[.L__profc_memrchr]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_memrchr]
	stw r0, dp[.L__profc_memrchr+4]
	ldw r0, sp[3]
	stw r0, sp[0]
	ldaw r0, sp[2]
	ld8u r0, r0[r1]
	stw r0, sp[2]
	bu .LBB5_1
.LBB5_1:
	ldw r0, sp[1]
	sub r1, r0, 1
	stw r1, sp[1]
	bf r0, .LBB5_5
	bu .LBB5_2
.LBB5_2:
	ldw r0, dp[.L__profc_memrchr+12]
	ldw r1, dp[.L__profc_memrchr+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memrchr+8]
	stw r0, dp[.L__profc_memrchr+12]
	ldw r0, sp[0]
	ldw r1, sp[1]
	ld8u r0, r0[r1]
	ldw r1, sp[2]
	eq r0, r0, r1
	bf r0, .LBB5_4
	bu .LBB5_3
.LBB5_3:
	ldw r0, dp[__llvm_gcov_ctr.5+4]
	ldw r1, dp[__llvm_gcov_ctr.5]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.5]
	stw r0, dp[__llvm_gcov_ctr.5+4]
	ldw r0, dp[.L__profc_memrchr+20]
	ldw r1, dp[.L__profc_memrchr+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memrchr+16]
	stw r0, dp[.L__profc_memrchr+20]
	ldw r0, sp[0]
	ldw r1, sp[1]
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB5_6
.LBB5_4:
	ldw r0, dp[__llvm_gcov_ctr.5+12]
	ldw r1, dp[__llvm_gcov_ctr.5+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.5+8]
	stw r0, dp[__llvm_gcov_ctr.5+12]
	bu .LBB5_1
.LBB5_5:
	ldw r1, dp[__llvm_gcov_ctr.5+20]
	ldw r2, dp[__llvm_gcov_ctr.5+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.5+16]
	stw r1, dp[__llvm_gcov_ctr.5+20]
	stw r0, sp[4]
	bu .LBB5_6
.LBB5_6:
	ldw r0, sp[4]
	retsp 5
	.cc_bottom memrchr.function
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr

	.globl	memset
	.p2align	2
	.type	memset,@function
	.cc_top memset.function,memset
memset:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	stw r6, sp[6]
	stw r2, sp[0]
	mov r11, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.6+4]
	ldw r5, dp[__llvm_gcov_ctr.6]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.6]
	stw r4, dp[__llvm_gcov_ctr.6+4]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_memset+4]
	ldw r1, dp[.L__profc_memset]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memset]
	stw r0, dp[.L__profc_memset+4]
	ldw r0, sp[5]
	stw r0, sp[2]
	bu .LBB6_1
.LBB6_1:
	ldw r0, sp[3]
	bf r0, .LBB6_4
	bu .LBB6_2
.LBB6_2:
	ldw r0, dp[.L__profc_memset+12]
	ldw r1, dp[.L__profc_memset+8]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memset+8]
	stw r0, dp[.L__profc_memset+12]
	ldw r0, sp[4]
	ldw r1, sp[2]
	st8 r0, r1[r2]
	bu .LBB6_3
.LBB6_3:
	ldw r0, dp[__llvm_gcov_ctr.6+12]
	ldw r1, dp[__llvm_gcov_ctr.6+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.6+8]
	stw r0, dp[__llvm_gcov_ctr.6+12]
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB6_1
.LBB6_4:
	ldw r0, sp[5]
	ldw r6, sp[6]
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom memset.function
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset

	.globl	stpcpy
	.p2align	2
	.type	stpcpy,@function
	.cc_top stpcpy.function,stpcpy
stpcpy:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.7+4]
	ldw r4, dp[__llvm_gcov_ctr.7]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.7]
	stw r11, dp[__llvm_gcov_ctr.7+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc_stpcpy+4]
	ldw r1, dp[.L__profc_stpcpy]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_stpcpy]
	stw r0, dp[.L__profc_stpcpy+4]
	bu .LBB7_1
.LBB7_1:
	ldw r0, sp[0]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bf r0, .LBB7_4
	bu .LBB7_2
.LBB7_2:
	ldw r0, dp[.L__profc_stpcpy+12]
	ldw r1, dp[.L__profc_stpcpy+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_stpcpy+8]
	stw r0, dp[.L__profc_stpcpy+12]
	bu .LBB7_3
.LBB7_3:
	ldw r0, dp[__llvm_gcov_ctr.7+12]
	ldw r1, dp[__llvm_gcov_ctr.7+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.7+8]
	stw r0, dp[__llvm_gcov_ctr.7+12]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB7_1
.LBB7_4:
	ldw r0, sp[1]
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom stpcpy.function
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy

	.globl	strchrnul
	.p2align	2
	.type	strchrnul,@function
	.cc_top strchrnul.function,strchrnul
strchrnul:
	entsp 7
	stw r4, sp[6]
	stw r5, sp[5]
	stw r1, sp[2]
	mov r2, r0
	ldw r0, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.8+4]
	ldw r4, dp[__llvm_gcov_ctr.8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r1
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.8]
	stw r11, dp[__llvm_gcov_ctr.8+4]
	stw r2, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_strchrnul+4]
	ldw r2, dp[.L__profc_strchrnul]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_strchrnul]
	stw r0, dp[.L__profc_strchrnul+4]
	ldaw r0, sp[3]
	ld8u r0, r0[r1]
	stw r0, sp[3]
	bu .LBB8_1
.LBB8_1:
	ldw r0, sp[4]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[1]
	bf r0, .LBB8_4
	bu .LBB8_2
.LBB8_2:
	ldw r0, dp[__llvm_gcov_ctr.8+12]
	ldw r2, dp[__llvm_gcov_ctr.8+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.8+8]
	stw r0, dp[__llvm_gcov_ctr.8+12]
	ldw r0, dp[.L__profc_strchrnul+20]
	ldw r2, dp[.L__profc_strchrnul+16]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_strchrnul+16]
	stw r0, dp[.L__profc_strchrnul+20]
	ldw r0, sp[4]
	ld8u r0, r0[r1]
	ldw r1, sp[3]
	eq r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[0]
	stw r1, sp[1]
	bt r0, .LBB8_4
	bu .LBB8_3
.LBB8_3:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.8+20]
	ldw r2, dp[__llvm_gcov_ctr.8+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.8+16]
	stw r1, dp[__llvm_gcov_ctr.8+20]
	ldw r1, dp[.L__profc_strchrnul+28]
	ldw r2, dp[.L__profc_strchrnul+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_strchrnul+24]
	stw r1, dp[.L__profc_strchrnul+28]
	stw r0, sp[1]
	bu .LBB8_4
.LBB8_4:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB8_7
	bu .LBB8_5
.LBB8_5:
	ldw r0, dp[.L__profc_strchrnul+12]
	ldw r1, dp[.L__profc_strchrnul+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strchrnul+8]
	stw r0, dp[.L__profc_strchrnul+12]
	bu .LBB8_6
.LBB8_6:
	ldw r0, dp[__llvm_gcov_ctr.8+28]
	ldw r1, dp[__llvm_gcov_ctr.8+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.8+24]
	stw r0, dp[__llvm_gcov_ctr.8+28]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB8_1
.LBB8_7:
	ldw r0, sp[4]
	ldw r5, sp[5]
	ldw r4, sp[6]
	retsp 7
	.cc_bottom strchrnul.function
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul

	.globl	strchr
	.p2align	2
	.type	strchr,@function
	.cc_top strchr.function,strchr
strchr:
	entsp 3
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc_strchr+4]
	ldw r1, dp[.L__profc_strchr]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strchr]
	stw r0, dp[.L__profc_strchr+4]
	bu .LBB9_2
.LBB9_1:
	ldw r0, dp[__llvm_gcov_ctr.9+12]
	ldw r1, dp[__llvm_gcov_ctr.9+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.9+8]
	stw r0, dp[__llvm_gcov_ctr.9+12]
	ldw r0, dp[.L__profc_strchr+12]
	ldw r1, dp[.L__profc_strchr+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strchr+8]
	stw r0, dp[.L__profc_strchr+12]
	bu .LBB9_2
.LBB9_2:
	ldw r0, sp[1]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r1, sp[0]
	eq r0, r0, r1
	bf r0, .LBB9_4
	bu .LBB9_3
.LBB9_3:
	ldw r0, dp[__llvm_gcov_ctr.9+4]
	ldw r1, dp[__llvm_gcov_ctr.9]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.9]
	stw r0, dp[__llvm_gcov_ctr.9+4]
	ldw r0, dp[.L__profc_strchr+20]
	ldw r1, dp[.L__profc_strchr+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strchr+16]
	stw r0, dp[.L__profc_strchr+20]
	ldw r0, sp[1]
	stw r0, sp[2]
	bu .LBB9_7
.LBB9_4:
	bu .LBB9_5
.LBB9_5:
	ldw r0, sp[1]
	add r1, r0, 1
	stw r1, sp[1]
	ldc r1, 0
	ld8u r0, r0[r1]
	bt r0, .LBB9_1
	bu .LBB9_6
.LBB9_6:
	ldw r1, dp[__llvm_gcov_ctr.9+20]
	ldw r2, dp[__llvm_gcov_ctr.9+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.9+16]
	stw r1, dp[__llvm_gcov_ctr.9+20]
	stw r0, sp[2]
	bu .LBB9_7
.LBB9_7:
	ldw r0, sp[2]
	retsp 3
	.cc_bottom strchr.function
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr

	.globl	strcmp
	.p2align	2
	.type	strcmp,@function
	.cc_top strcmp.function,strcmp
strcmp:
	entsp 6
	stw r4, sp[5]
	stw r5, sp[4]
	ldw r11, dp[__llvm_gcov_ctr.10+4]
	ldw r4, dp[__llvm_gcov_ctr.10]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.10]
	stw r11, dp[__llvm_gcov_ctr.10+4]
	stw r0, sp[3]
	stw r1, sp[2]
	ldw r0, dp[.L__profc_strcmp+4]
	ldw r1, dp[.L__profc_strcmp]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strcmp]
	stw r0, dp[.L__profc_strcmp+4]
	bu .LBB10_1
.LBB10_1:
	ldw r0, sp[3]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r2, sp[2]
	ld8u r2, r2[r1]
	eq r0, r0, r2
	stw r1, sp[1]
	bf r0, .LBB10_4
	bu .LBB10_2
.LBB10_2:
	ldw r0, dp[__llvm_gcov_ctr.10+12]
	ldw r2, dp[__llvm_gcov_ctr.10+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.10+8]
	stw r0, dp[__llvm_gcov_ctr.10+12]
	ldw r0, dp[.L__profc_strcmp+20]
	ldw r2, dp[.L__profc_strcmp+16]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_strcmp+16]
	stw r0, dp[.L__profc_strcmp+20]
	ldw r0, sp[3]
	ld8u r0, r0[r1]
	eq r1, r0, 0
	eq r1, r1, 0
	stw r1, sp[0]
	stw r1, sp[1]
	bf r0, .LBB10_4
	bu .LBB10_3
.LBB10_3:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.10+20]
	ldw r2, dp[__llvm_gcov_ctr.10+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.10+16]
	stw r1, dp[__llvm_gcov_ctr.10+20]
	ldw r1, dp[.L__profc_strcmp+28]
	ldw r2, dp[.L__profc_strcmp+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_strcmp+24]
	stw r1, dp[.L__profc_strcmp+28]
	stw r0, sp[1]
	bu .LBB10_4
.LBB10_4:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB10_7
	bu .LBB10_5
.LBB10_5:
	ldw r0, dp[.L__profc_strcmp+12]
	ldw r1, dp[.L__profc_strcmp+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strcmp+8]
	stw r0, dp[.L__profc_strcmp+12]
	bu .LBB10_6
.LBB10_6:
	ldw r0, dp[__llvm_gcov_ctr.10+28]
	ldw r1, dp[__llvm_gcov_ctr.10+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.10+24]
	stw r0, dp[__llvm_gcov_ctr.10+28]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB10_1
.LBB10_7:
	ldw r0, sp[3]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	ldw r5, sp[4]
	ldw r4, sp[5]
	retsp 6
	.cc_bottom strcmp.function
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp

	.globl	strlen
	.p2align	2
	.type	strlen,@function
	.cc_top strlen.function,strlen
strlen:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.11+4]
	ldw r11, dp[__llvm_gcov_ctr.11]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.11]
	stw r1, dp[__llvm_gcov_ctr.11+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc_strlen+4]
	ldw r1, dp[.L__profc_strlen]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strlen]
	stw r0, dp[.L__profc_strlen+4]
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB11_1
.LBB11_1:
	ldw r0, sp[1]
	ldc r1, 0
	ld8u r0, r0[r1]
	bf r0, .LBB11_4
	bu .LBB11_2
.LBB11_2:
	ldw r0, dp[.L__profc_strlen+12]
	ldw r1, dp[.L__profc_strlen+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strlen+8]
	stw r0, dp[.L__profc_strlen+12]
	bu .LBB11_3
.LBB11_3:
	ldw r0, dp[__llvm_gcov_ctr.11+12]
	ldw r1, dp[__llvm_gcov_ctr.11+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.11+8]
	stw r0, dp[__llvm_gcov_ctr.11+12]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB11_1
.LBB11_4:
	ldw r0, sp[1]
	ldw r1, sp[0]
	sub r0, r0, r1
	ldw r4, sp[2]
	retsp 3
	.cc_bottom strlen.function
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen

	.globl	strncmp
	.p2align	2
	.type	strncmp,@function
	.cc_top strncmp.function,strncmp
strncmp:
	entsp 9
	stw r4, sp[8]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r0, dp[.L__profc_strncmp+4]
	ldw r1, dp[.L__profc_strncmp]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strncmp]
	stw r0, dp[.L__profc_strncmp+4]
	ldw r0, sp[6]
	stw r0, sp[3]
	ldw r0, sp[5]
	stw r0, sp[2]
	ldw r0, sp[4]
	sub r1, r0, 1
	stw r1, sp[4]
	bt r0, .LBB12_2
	bu .LBB12_1
.LBB12_1:
	ldw r1, dp[__llvm_gcov_ctr.12+12]
	ldw r2, dp[__llvm_gcov_ctr.12+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.12+8]
	stw r1, dp[__llvm_gcov_ctr.12+12]
	ldw r1, dp[.L__profc_strncmp+12]
	ldw r2, dp[.L__profc_strncmp+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_strncmp+8]
	stw r1, dp[.L__profc_strncmp+12]
	stw r0, sp[7]
	bu .LBB12_14
.LBB12_2:
	ldw r0, dp[__llvm_gcov_ctr.12+4]
	ldw r1, dp[__llvm_gcov_ctr.12]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.12]
	stw r0, dp[__llvm_gcov_ctr.12+4]
	bu .LBB12_3
.LBB12_3:
	ldw r0, sp[3]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[1]
	bf r0, .LBB12_10
	bu .LBB12_4
.LBB12_4:
	ldw r0, dp[__llvm_gcov_ctr.12+20]
	ldw r2, dp[__llvm_gcov_ctr.12+16]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.12+16]
	stw r0, dp[__llvm_gcov_ctr.12+20]
	ldw r0, dp[.L__profc_strncmp+60]
	ldw r2, dp[.L__profc_strncmp+56]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_strncmp+56]
	stw r0, dp[.L__profc_strncmp+60]
	ldw r0, sp[2]
	ld8u r0, r0[r1]
	stw r1, sp[1]
	bf r0, .LBB12_10
	bu .LBB12_5
.LBB12_5:
	ldw r0, dp[__llvm_gcov_ctr.12+28]
	ldw r1, dp[__llvm_gcov_ctr.12+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.12+24]
	stw r0, dp[__llvm_gcov_ctr.12+28]
	ldw r0, dp[.L__profc_strncmp+68]
	ldw r1, dp[.L__profc_strncmp+64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strncmp+64]
	stw r0, dp[.L__profc_strncmp+68]
	bu .LBB12_6
.LBB12_6:
	ldw r0, dp[.L__profc_strncmp+44]
	ldw r2, dp[.L__profc_strncmp+40]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_strncmp+40]
	stw r0, dp[.L__profc_strncmp+44]
	ldw r0, sp[4]
	stw r1, sp[1]
	bf r0, .LBB12_10
	bu .LBB12_7
.LBB12_7:
	ldw r0, dp[__llvm_gcov_ctr.12+36]
	ldw r1, dp[__llvm_gcov_ctr.12+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.12+32]
	stw r0, dp[__llvm_gcov_ctr.12+36]
	ldw r0, dp[.L__profc_strncmp+52]
	ldw r1, dp[.L__profc_strncmp+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strncmp+48]
	stw r0, dp[.L__profc_strncmp+52]
	bu .LBB12_8
.LBB12_8:
	ldw r0, dp[.L__profc_strncmp+28]
	ldw r1, dp[.L__profc_strncmp+24]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_strncmp+24]
	stw r0, dp[.L__profc_strncmp+28]
	ldw r0, sp[3]
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	stw r0, sp[0]
	mov r1, r0
	stw r1, sp[1]
	bf r0, .LBB12_10
	bu .LBB12_9
.LBB12_9:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.12+44]
	ldw r2, dp[__llvm_gcov_ctr.12+40]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.12+40]
	stw r1, dp[__llvm_gcov_ctr.12+44]
	ldw r1, dp[.L__profc_strncmp+36]
	ldw r2, dp[.L__profc_strncmp+32]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_strncmp+32]
	stw r1, dp[.L__profc_strncmp+36]
	stw r0, sp[1]
	bu .LBB12_10
.LBB12_10:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB12_13
	bu .LBB12_11
.LBB12_11:
	ldw r0, dp[.L__profc_strncmp+20]
	ldw r1, dp[.L__profc_strncmp+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strncmp+16]
	stw r0, dp[.L__profc_strncmp+20]
	bu .LBB12_12
.LBB12_12:
	ldw r0, dp[__llvm_gcov_ctr.12+52]
	ldw r1, dp[__llvm_gcov_ctr.12+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.12+48]
	stw r0, dp[__llvm_gcov_ctr.12+52]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[4]
	sub r0, r0, 1
	stw r0, sp[4]
	bu .LBB12_3
.LBB12_13:
	ldw r0, sp[3]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	stw r0, sp[7]
	bu .LBB12_14
.LBB12_14:
	ldw r0, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom strncmp.function
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp

	.globl	swab
	.p2align	2
	.type	swab,@function
	.cc_top swab.function,swab
swab:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	stw r6, sp[6]
	stw r2, sp[0]
	mov r11, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.13+4]
	ldw r5, dp[__llvm_gcov_ctr.13]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.13]
	stw r4, dp[__llvm_gcov_ctr.13+4]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_swab+4]
	ldw r1, dp[.L__profc_swab]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_swab]
	stw r0, dp[.L__profc_swab+4]
	ldw r0, sp[5]
	stw r0, sp[2]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB13_1
.LBB13_1:
	ldw r0, sp[3]
	ldc r1, 2
	lss r0, r0, r1
	bt r0, .LBB13_4
	bu .LBB13_2
.LBB13_2:
	ldw r0, dp[.L__profc_swab+12]
	ldw r3, dp[.L__profc_swab+8]
	ldc r1, 0
	mkmsk r2, 1
	ladd r11, r3, r3, r2, r1
	add r0, r0, r11
	stw r3, dp[.L__profc_swab+8]
	stw r0, dp[.L__profc_swab+12]
	ldw r0, sp[2]
	ld8u r0, r0[r2]
	ldw r3, sp[1]
	st8 r0, r3[r1]
	ldw r0, sp[2]
	ld8u r0, r0[r1]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	ldw r0, sp[1]
	add r0, r0, 2
	stw r0, sp[1]
	ldw r0, sp[2]
	add r0, r0, 2
	stw r0, sp[2]
	bu .LBB13_3
.LBB13_3:
	ldw r0, dp[__llvm_gcov_ctr.13+12]
	ldw r1, dp[__llvm_gcov_ctr.13+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.13+8]
	stw r0, dp[__llvm_gcov_ctr.13+12]
	ldw r0, sp[3]
	sub r0, r0, 2
	stw r0, sp[3]
	bu .LBB13_1
.LBB13_4:
	ldw r6, sp[6]
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom swab.function
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI14_0:
	.long	4294967199
	.text
	.globl	isalpha
	.p2align	2
	.type	isalpha,@function
	.cc_top isalpha.function,isalpha
isalpha:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.14+4]
	ldw r11, dp[__llvm_gcov_ctr.14]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.14]
	stw r1, dp[__llvm_gcov_ctr.14+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_isalpha+4]
	ldw r1, dp[.L__profc_isalpha]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isalpha]
	stw r0, dp[.L__profc_isalpha+4]
	ldw r0, sp[0]
	ldc r1, 32
	or r0, r0, r1
	ldw r1, cp[.LCPI14_0]
	add r0, r0, r1
	ldc r1, 26
	lsu r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom isalpha.function
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI15_0:
	.long	4294967168
	.text
	.globl	isascii
	.p2align	2
	.type	isascii,@function
	.cc_top isascii.function,isascii
isascii:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.15+4]
	ldw r11, dp[__llvm_gcov_ctr.15]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.15]
	stw r1, dp[__llvm_gcov_ctr.15+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_isascii+4]
	ldw r1, dp[.L__profc_isascii]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isascii]
	stw r0, dp[.L__profc_isascii+4]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI15_0]
	and r0, r0, r1
	eq r0, r0, 0
	ldw r4, sp[1]
	retsp 2
	.cc_bottom isascii.function
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii

	.globl	isblank
	.p2align	2
	.type	isblank,@function
	.cc_top isblank.function,isblank
isblank:
	entsp 4
	stw r4, sp[3]
	ldw r2, dp[__llvm_gcov_ctr.16+4]
	ldw r11, dp[__llvm_gcov_ctr.16]
	ldc r3, 0
	mkmsk r1, 1
	ladd r4, r11, r11, r1, r3
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.16]
	stw r2, dp[__llvm_gcov_ctr.16+4]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_isblank+4]
	ldw r2, dp[.L__profc_isblank]
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_isblank]
	stw r0, dp[.L__profc_isblank+4]
	ldw r0, sp[2]
	ldc r2, 32
	eq r0, r0, r2
	stw r1, sp[1]
	bt r0, .LBB16_3
	bu .LBB16_1
.LBB16_1:
	ldw r0, dp[__llvm_gcov_ctr.16+12]
	ldw r1, dp[__llvm_gcov_ctr.16+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.16+8]
	stw r0, dp[__llvm_gcov_ctr.16+12]
	ldw r0, dp[.L__profc_isblank+12]
	ldw r1, dp[.L__profc_isblank+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isblank+8]
	stw r0, dp[.L__profc_isblank+12]
	ldw r0, sp[2]
	eq r0, r0, 9
	stw r0, sp[0]
	mov r1, r0
	stw r1, sp[1]
	bt r0, .LBB16_3
	bu .LBB16_2
.LBB16_2:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.16+20]
	ldw r2, dp[__llvm_gcov_ctr.16+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.16+16]
	stw r1, dp[__llvm_gcov_ctr.16+20]
	ldw r1, dp[.L__profc_isblank+20]
	ldw r2, dp[.L__profc_isblank+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_isblank+16]
	stw r1, dp[.L__profc_isblank+20]
	stw r0, sp[1]
	bu .LBB16_3
.LBB16_3:
	ldw r0, sp[1]
	zext r0, 1
	ldw r4, sp[3]
	retsp 4
	.cc_bottom isblank.function
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank

	.globl	iscntrl
	.p2align	2
	.type	iscntrl,@function
	.cc_top iscntrl.function,iscntrl
iscntrl:
	entsp 4
	stw r4, sp[3]
	ldw r2, dp[__llvm_gcov_ctr.17+4]
	ldw r11, dp[__llvm_gcov_ctr.17]
	ldc r3, 0
	mkmsk r1, 1
	ladd r4, r11, r11, r1, r3
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.17]
	stw r2, dp[__llvm_gcov_ctr.17+4]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_iscntrl+4]
	ldw r2, dp[.L__profc_iscntrl]
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_iscntrl]
	stw r0, dp[.L__profc_iscntrl+4]
	ldw r0, sp[2]
	ldc r2, 32
	lsu r0, r0, r2
	stw r1, sp[1]
	bt r0, .LBB17_3
	bu .LBB17_1
.LBB17_1:
	ldw r0, dp[__llvm_gcov_ctr.17+12]
	ldw r1, dp[__llvm_gcov_ctr.17+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.17+8]
	stw r0, dp[__llvm_gcov_ctr.17+12]
	ldw r0, dp[.L__profc_iscntrl+12]
	ldw r1, dp[.L__profc_iscntrl+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iscntrl+8]
	stw r0, dp[.L__profc_iscntrl+12]
	ldw r0, sp[2]
	mkmsk r1, 7
	eq r0, r0, r1
	stw r0, sp[0]
	mov r1, r0
	stw r1, sp[1]
	bt r0, .LBB17_3
	bu .LBB17_2
.LBB17_2:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.17+20]
	ldw r2, dp[__llvm_gcov_ctr.17+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.17+16]
	stw r1, dp[__llvm_gcov_ctr.17+20]
	ldw r1, dp[.L__profc_iscntrl+20]
	ldw r2, dp[.L__profc_iscntrl+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_iscntrl+16]
	stw r1, dp[.L__profc_iscntrl+20]
	stw r0, sp[1]
	bu .LBB17_3
.LBB17_3:
	ldw r0, sp[1]
	zext r0, 1
	ldw r4, sp[3]
	retsp 4
	.cc_bottom iscntrl.function
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI18_0:
	.long	4294967248
	.text
	.globl	isdigit
	.p2align	2
	.type	isdigit,@function
	.cc_top isdigit.function,isdigit
isdigit:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.18+4]
	ldw r11, dp[__llvm_gcov_ctr.18]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.18]
	stw r1, dp[__llvm_gcov_ctr.18+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_isdigit+4]
	ldw r1, dp[.L__profc_isdigit]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isdigit]
	stw r0, dp[.L__profc_isdigit+4]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI18_0]
	add r0, r0, r1
	ldc r1, 10
	lsu r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom isdigit.function
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI19_0:
	.long	4294967263
	.text
	.globl	isgraph
	.p2align	2
	.type	isgraph,@function
	.cc_top isgraph.function,isgraph
isgraph:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.19+4]
	ldw r11, dp[__llvm_gcov_ctr.19]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.19]
	stw r1, dp[__llvm_gcov_ctr.19+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_isgraph+4]
	ldw r1, dp[.L__profc_isgraph]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isgraph]
	stw r0, dp[.L__profc_isgraph+4]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI19_0]
	add r0, r0, r1
	ldc r1, 94
	lsu r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom isgraph.function
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI20_0:
	.long	4294967199
	.text
	.globl	islower
	.p2align	2
	.type	islower,@function
	.cc_top islower.function,islower
islower:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.20+4]
	ldw r11, dp[__llvm_gcov_ctr.20]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.20]
	stw r1, dp[__llvm_gcov_ctr.20+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_islower+4]
	ldw r1, dp[.L__profc_islower]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_islower]
	stw r0, dp[.L__profc_islower+4]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI20_0]
	add r0, r0, r1
	ldc r1, 26
	lsu r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom islower.function
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower

	.globl	isprint
	.p2align	2
	.type	isprint,@function
	.cc_top isprint.function,isprint
isprint:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.21+4]
	ldw r11, dp[__llvm_gcov_ctr.21]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.21]
	stw r1, dp[__llvm_gcov_ctr.21+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_isprint+4]
	ldw r1, dp[.L__profc_isprint]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isprint]
	stw r0, dp[.L__profc_isprint+4]
	ldw r0, sp[0]
	ldaw r0, r0[-8]
	ldc r1, 95
	lsu r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom isprint.function
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint

	.globl	isspace
	.p2align	2
	.type	isspace,@function
	.cc_top isspace.function,isspace
isspace:
	entsp 4
	stw r4, sp[3]
	ldw r2, dp[__llvm_gcov_ctr.22+4]
	ldw r11, dp[__llvm_gcov_ctr.22]
	ldc r3, 0
	mkmsk r1, 1
	ladd r4, r11, r11, r1, r3
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.22]
	stw r2, dp[__llvm_gcov_ctr.22+4]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_isspace+4]
	ldw r2, dp[.L__profc_isspace]
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_isspace]
	stw r0, dp[.L__profc_isspace+4]
	ldw r0, sp[2]
	ldc r2, 32
	eq r0, r0, r2
	stw r1, sp[1]
	bt r0, .LBB22_3
	bu .LBB22_1
.LBB22_1:
	ldw r0, dp[__llvm_gcov_ctr.22+12]
	ldw r1, dp[__llvm_gcov_ctr.22+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.22+8]
	stw r0, dp[__llvm_gcov_ctr.22+12]
	ldw r0, dp[.L__profc_isspace+12]
	ldw r1, dp[.L__profc_isspace+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isspace+8]
	stw r0, dp[.L__profc_isspace+12]
	ldw r0, sp[2]
	sub r0, r0, 9
	ldc r1, 5
	lsu r0, r0, r1
	stw r0, sp[0]
	mov r1, r0
	stw r1, sp[1]
	bt r0, .LBB22_3
	bu .LBB22_2
.LBB22_2:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.22+20]
	ldw r2, dp[__llvm_gcov_ctr.22+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.22+16]
	stw r1, dp[__llvm_gcov_ctr.22+20]
	ldw r1, dp[.L__profc_isspace+20]
	ldw r2, dp[.L__profc_isspace+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_isspace+16]
	stw r1, dp[.L__profc_isspace+20]
	stw r0, sp[1]
	bu .LBB22_3
.LBB22_3:
	ldw r0, sp[1]
	zext r0, 1
	ldw r4, sp[3]
	retsp 4
	.cc_bottom isspace.function
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI23_0:
	.long	4294967231
	.text
	.globl	isupper
	.p2align	2
	.type	isupper,@function
	.cc_top isupper.function,isupper
isupper:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.23+4]
	ldw r11, dp[__llvm_gcov_ctr.23]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.23]
	stw r1, dp[__llvm_gcov_ctr.23+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_isupper+4]
	ldw r1, dp[.L__profc_isupper]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_isupper]
	stw r0, dp[.L__profc_isupper+4]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI23_0]
	add r0, r0, r1
	ldc r1, 26
	lsu r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom isupper.function
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI24_0:
	.long	4294967169
.LCPI24_1:
	.long	4294959064
.LCPI24_2:
	.long	4294901767
	.text
	.globl	iswcntrl
	.p2align	2
	.type	iswcntrl,@function
	.cc_top iswcntrl.function,iswcntrl
iswcntrl:
	entsp 4
	stw r4, sp[3]
	ldw r2, dp[__llvm_gcov_ctr.24+4]
	ldw r11, dp[__llvm_gcov_ctr.24]
	ldc r3, 0
	mkmsk r1, 1
	ladd r4, r11, r11, r1, r3
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.24]
	stw r2, dp[__llvm_gcov_ctr.24+4]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_iswcntrl+4]
	ldw r2, dp[.L__profc_iswcntrl]
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_iswcntrl]
	stw r0, dp[.L__profc_iswcntrl+4]
	ldw r0, sp[2]
	ldc r2, 32
	lsu r0, r0, r2
	stw r1, sp[1]
	bt r0, .LBB24_7
	bu .LBB24_1
.LBB24_1:
	ldw r0, dp[__llvm_gcov_ctr.24+12]
	ldw r2, dp[__llvm_gcov_ctr.24+8]
	ldc r3, 0
	mkmsk r1, 1
	ladd r11, r2, r2, r1, r3
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.24+8]
	stw r0, dp[__llvm_gcov_ctr.24+12]
	ldw r0, dp[.L__profc_iswcntrl+44]
	ldw r2, dp[.L__profc_iswcntrl+40]
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_iswcntrl+40]
	stw r0, dp[.L__profc_iswcntrl+44]
	ldw r0, sp[2]
	ldw r2, cp[.LCPI24_0]
	add r0, r0, r2
	ldc r2, 33
	lsu r0, r0, r2
	stw r1, sp[1]
	bt r0, .LBB24_7
	bu .LBB24_2
.LBB24_2:
	ldw r0, dp[__llvm_gcov_ctr.24+20]
	ldw r1, dp[__llvm_gcov_ctr.24+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.24+16]
	stw r0, dp[__llvm_gcov_ctr.24+20]
	ldw r0, dp[.L__profc_iswcntrl+52]
	ldw r1, dp[.L__profc_iswcntrl+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswcntrl+48]
	stw r0, dp[.L__profc_iswcntrl+52]
	bu .LBB24_3
.LBB24_3:
	ldw r0, dp[.L__profc_iswcntrl+28]
	ldw r2, dp[.L__profc_iswcntrl+24]
	ldc r3, 0
	mkmsk r1, 1
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_iswcntrl+24]
	stw r0, dp[.L__profc_iswcntrl+28]
	ldw r0, sp[2]
	ldw r2, cp[.LCPI24_1]
	add r0, r0, r2
	ldc r2, 2
	lsu r0, r0, r2
	stw r1, sp[1]
	bt r0, .LBB24_7
	bu .LBB24_4
.LBB24_4:
	ldw r0, dp[__llvm_gcov_ctr.24+28]
	ldw r1, dp[__llvm_gcov_ctr.24+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.24+24]
	stw r0, dp[__llvm_gcov_ctr.24+28]
	ldw r0, dp[.L__profc_iswcntrl+36]
	ldw r1, dp[.L__profc_iswcntrl+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswcntrl+32]
	stw r0, dp[.L__profc_iswcntrl+36]
	bu .LBB24_5
.LBB24_5:
	ldw r0, dp[.L__profc_iswcntrl+12]
	ldw r1, dp[.L__profc_iswcntrl+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswcntrl+8]
	stw r0, dp[.L__profc_iswcntrl+12]
	ldw r0, sp[2]
	ldw r1, cp[.LCPI24_2]
	add r0, r0, r1
	mkmsk r1, 2
	lsu r0, r0, r1
	stw r0, sp[0]
	mov r1, r0
	stw r1, sp[1]
	bt r0, .LBB24_7
	bu .LBB24_6
.LBB24_6:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.24+36]
	ldw r2, dp[__llvm_gcov_ctr.24+32]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.24+32]
	stw r1, dp[__llvm_gcov_ctr.24+36]
	ldw r1, dp[.L__profc_iswcntrl+20]
	ldw r2, dp[.L__profc_iswcntrl+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_iswcntrl+16]
	stw r1, dp[.L__profc_iswcntrl+20]
	stw r0, sp[1]
	bu .LBB24_7
.LBB24_7:
	ldw r0, sp[1]
	zext r0, 1
	ldw r4, sp[3]
	retsp 4
	.cc_bottom iswcntrl.function
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI25_0:
	.long	4294967248
	.text
	.globl	iswdigit
	.p2align	2
	.type	iswdigit,@function
	.cc_top iswdigit.function,iswdigit
iswdigit:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.25+4]
	ldw r11, dp[__llvm_gcov_ctr.25]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.25]
	stw r1, dp[__llvm_gcov_ctr.25+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_iswdigit+4]
	ldw r1, dp[.L__profc_iswdigit]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswdigit]
	stw r0, dp[.L__profc_iswdigit+4]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI25_0]
	add r0, r0, r1
	ldc r1, 10
	lsu r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom iswdigit.function
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI26_0:
	.long	4294959062
.LCPI26_1:
	.long	4294909952
.LCPI26_2:
	.long	4294901764
.LCPI26_3:
	.long	1048579
	.text
	.globl	iswprint
	.p2align	2
	.type	iswprint,@function
	.cc_top iswprint.function,iswprint
iswprint:
	entsp 2
	stw r0, sp[0]
	ldw r0, dp[.L__profc_iswprint+4]
	ldw r1, dp[.L__profc_iswprint]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint]
	stw r0, dp[.L__profc_iswprint+4]
	ldw r1, sp[0]
	ldc r0, 254
	lsu r0, r0, r1
	bt r0, .LBB26_2
	bu .LBB26_1
.LBB26_1:
	ldw r0, dp[__llvm_gcov_ctr.26+4]
	ldw r1, dp[__llvm_gcov_ctr.26]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.26]
	stw r0, dp[__llvm_gcov_ctr.26+4]
	ldw r0, dp[.L__profc_iswprint+12]
	ldw r1, dp[.L__profc_iswprint+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint+8]
	stw r0, dp[.L__profc_iswprint+12]
	ldw r0, sp[0]
	add r1, r0, 1
	zext r1, 7
	ldc r0, 32
	lsu r0, r0, r1
	stw r0, sp[1]
	bu .LBB26_13
.LBB26_2:
	ldw r0, sp[0]
	ldc r1, 8232
	lsu r0, r0, r1
	bt r0, .LBB26_7
	bu .LBB26_3
.LBB26_3:
	ldw r0, dp[__llvm_gcov_ctr.26+12]
	ldw r1, dp[__llvm_gcov_ctr.26+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.26+8]
	stw r0, dp[__llvm_gcov_ctr.26+12]
	ldw r0, dp[.L__profc_iswprint+44]
	ldw r1, dp[.L__profc_iswprint+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint+40]
	stw r0, dp[.L__profc_iswprint+44]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI26_0]
	add r0, r0, r1
	ldc r1, 47062
	lsu r0, r0, r1
	bt r0, .LBB26_7
	bu .LBB26_4
.LBB26_4:
	ldw r0, dp[__llvm_gcov_ctr.26+20]
	ldw r1, dp[__llvm_gcov_ctr.26+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.26+16]
	stw r0, dp[__llvm_gcov_ctr.26+20]
	ldw r0, dp[.L__profc_iswprint+52]
	ldw r1, dp[.L__profc_iswprint+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint+48]
	stw r0, dp[.L__profc_iswprint+52]
	bu .LBB26_5
.LBB26_5:
	ldw r0, dp[.L__profc_iswprint+28]
	ldw r1, dp[.L__profc_iswprint+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint+24]
	stw r0, dp[.L__profc_iswprint+28]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI26_1]
	add r0, r0, r1
	ldc r1, 8185
	lsu r0, r0, r1
	bt r0, .LBB26_7
	bu .LBB26_6
.LBB26_6:
	ldw r0, dp[.L__profc_iswprint+36]
	ldw r1, dp[.L__profc_iswprint+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint+32]
	stw r0, dp[.L__profc_iswprint+36]
	bu .LBB26_8
.LBB26_7:
	ldw r1, dp[__llvm_gcov_ctr.26+28]
	ldw r2, dp[__llvm_gcov_ctr.26+24]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.26+24]
	stw r1, dp[__llvm_gcov_ctr.26+28]
	ldw r1, dp[.L__profc_iswprint+20]
	ldw r2, dp[.L__profc_iswprint+16]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc_iswprint+16]
	stw r1, dp[.L__profc_iswprint+20]
	stw r0, sp[1]
	bu .LBB26_13
.LBB26_8:
	ldw r0, sp[0]
	ldw r1, cp[.LCPI26_2]
	add r1, r0, r1
	ldw r0, cp[.LCPI26_3]
	lsu r0, r0, r1
	bt r0, .LBB26_11
	bu .LBB26_9
.LBB26_9:
	ldw r0, dp[__llvm_gcov_ctr.26+36]
	ldw r1, dp[__llvm_gcov_ctr.26+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.26+32]
	stw r0, dp[__llvm_gcov_ctr.26+36]
	ldw r0, dp[.L__profc_iswprint+68]
	ldw r1, dp[.L__profc_iswprint+64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint+64]
	stw r0, dp[.L__profc_iswprint+68]
	ldw r0, sp[0]
	ldc r1, 65534
	and r0, r0, r1
	eq r0, r0, r1
	bt r0, .LBB26_11
	bu .LBB26_10
.LBB26_10:
	ldw r0, dp[.L__profc_iswprint+76]
	ldw r1, dp[.L__profc_iswprint+72]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswprint+72]
	stw r0, dp[.L__profc_iswprint+76]
	bu .LBB26_12
.LBB26_11:
	ldw r1, dp[__llvm_gcov_ctr.26+44]
	ldw r2, dp[__llvm_gcov_ctr.26+40]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.26+40]
	stw r1, dp[__llvm_gcov_ctr.26+44]
	ldw r1, dp[.L__profc_iswprint+60]
	ldw r2, dp[.L__profc_iswprint+56]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_iswprint+56]
	stw r1, dp[.L__profc_iswprint+60]
	stw r0, sp[1]
	bu .LBB26_13
.LBB26_12:
	ldw r1, dp[__llvm_gcov_ctr.26+52]
	ldw r2, dp[__llvm_gcov_ctr.26+48]
	ldc r3, 0
	mkmsk r0, 1
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.26+48]
	stw r1, dp[__llvm_gcov_ctr.26+52]
	stw r0, sp[1]
	bu .LBB26_13
.LBB26_13:
	ldw r0, sp[1]
	retsp 2
	.cc_bottom iswprint.function
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI27_0:
	.long	4294967248
.LCPI27_1:
	.long	4294967199
	.text
	.globl	iswxdigit
	.p2align	2
	.type	iswxdigit,@function
	.cc_top iswxdigit.function,iswxdigit
iswxdigit:
	entsp 4
	stw r4, sp[3]
	ldw r2, dp[__llvm_gcov_ctr.27+4]
	ldw r11, dp[__llvm_gcov_ctr.27]
	ldc r3, 0
	mkmsk r1, 1
	ladd r4, r11, r11, r1, r3
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.27]
	stw r2, dp[__llvm_gcov_ctr.27+4]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_iswxdigit+4]
	ldw r2, dp[.L__profc_iswxdigit]
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_iswxdigit]
	stw r0, dp[.L__profc_iswxdigit+4]
	ldw r0, sp[2]
	ldw r2, cp[.LCPI27_0]
	add r0, r0, r2
	ldc r2, 10
	lsu r0, r0, r2
	stw r1, sp[1]
	bt r0, .LBB27_3
	bu .LBB27_1
.LBB27_1:
	ldw r0, dp[__llvm_gcov_ctr.27+12]
	ldw r1, dp[__llvm_gcov_ctr.27+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.27+8]
	stw r0, dp[__llvm_gcov_ctr.27+12]
	ldw r0, dp[.L__profc_iswxdigit+12]
	ldw r1, dp[.L__profc_iswxdigit+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_iswxdigit+8]
	stw r0, dp[.L__profc_iswxdigit+12]
	ldw r0, sp[2]
	ldc r1, 32
	or r0, r0, r1
	ldw r1, cp[.LCPI27_1]
	add r0, r0, r1
	ldc r1, 6
	lsu r0, r0, r1
	stw r0, sp[0]
	mov r1, r0
	stw r1, sp[1]
	bt r0, .LBB27_3
	bu .LBB27_2
.LBB27_2:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.27+20]
	ldw r2, dp[__llvm_gcov_ctr.27+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.27+16]
	stw r1, dp[__llvm_gcov_ctr.27+20]
	ldw r1, dp[.L__profc_iswxdigit+20]
	ldw r2, dp[.L__profc_iswxdigit+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_iswxdigit+16]
	stw r1, dp[.L__profc_iswxdigit+20]
	stw r0, sp[1]
	bu .LBB27_3
.LBB27_3:
	ldw r0, sp[1]
	zext r0, 1
	ldw r4, sp[3]
	retsp 4
	.cc_bottom iswxdigit.function
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit

	.globl	toascii
	.p2align	2
	.type	toascii,@function
	.cc_top toascii.function,toascii
toascii:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.28+4]
	ldw r11, dp[__llvm_gcov_ctr.28]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.28]
	stw r1, dp[__llvm_gcov_ctr.28+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_toascii+4]
	ldw r1, dp[.L__profc_toascii]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_toascii]
	stw r0, dp[.L__profc_toascii+4]
	ldw r0, sp[0]
	zext r0, 7
	ldw r4, sp[1]
	retsp 2
	.cc_bottom toascii.function
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI29_0:
	.long	2147483647
.LCPI29_1:
	.long	2146435072
	.text
	.globl	fdim
	.p2align	2
	.type	fdim,@function
	.cc_top fdim.function,fdim
fdim:
	entsp 13
	stw r1, sp[10]
	stw r0, sp[9]
	stw r3, sp[8]
	stw r2, sp[7]
	ldw r0, dp[.L__profc_fdim+4]
	ldw r1, dp[.L__profc_fdim]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdim]
	stw r0, dp[.L__profc_fdim+4]
	ldw r1, sp[9]
	ldw r0, sp[10]
	ldw r2, cp[.LCPI29_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI29_1]
	lss r3, r0, r2
	stw r3, sp[5]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[6]
	bt r0, .LBB29_10
	ldw r0, sp[5]
	stw r0, sp[6]
.LBB29_10:
	ldw r0, sp[6]
	bt r0, .LBB29_2
	bu .LBB29_1
.LBB29_1:
	ldw r0, dp[__llvm_gcov_ctr.29+4]
	ldw r1, dp[__llvm_gcov_ctr.29]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.29]
	stw r0, dp[__llvm_gcov_ctr.29+4]
	ldw r0, dp[.L__profc_fdim+12]
	ldw r1, dp[.L__profc_fdim+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdim+8]
	stw r0, dp[.L__profc_fdim+12]
	ldw r0, sp[9]
	ldw r1, sp[10]
	stw r1, sp[12]
	stw r0, sp[11]
	bu .LBB29_8
.LBB29_2:
	ldw r1, sp[7]
	ldw r0, sp[8]
	ldw r2, cp[.LCPI29_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI29_1]
	lss r3, r0, r2
	stw r3, sp[3]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[4]
	bt r0, .LBB29_12
	ldw r0, sp[3]
	stw r0, sp[4]
.LBB29_12:
	ldw r0, sp[4]
	bt r0, .LBB29_4
	bu .LBB29_3
.LBB29_3:
	ldw r0, dp[__llvm_gcov_ctr.29+12]
	ldw r1, dp[__llvm_gcov_ctr.29+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.29+8]
	stw r0, dp[__llvm_gcov_ctr.29+12]
	ldw r0, dp[.L__profc_fdim+20]
	ldw r1, dp[.L__profc_fdim+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdim+16]
	stw r0, dp[.L__profc_fdim+20]
	ldw r0, sp[7]
	ldw r1, sp[8]
	stw r1, sp[12]
	stw r0, sp[11]
	bu .LBB29_8
.LBB29_4:
	ldw r0, sp[9]
	ldw r1, sp[10]
	ldw r2, sp[7]
	ldw r3, sp[8]
	bl __gtdf2
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB29_6
	bu .LBB29_5
.LBB29_5:
	ldw r0, dp[__llvm_gcov_ctr.29+20]
	ldw r1, dp[__llvm_gcov_ctr.29+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.29+16]
	stw r0, dp[__llvm_gcov_ctr.29+20]
	ldw r0, dp[.L__profc_fdim+28]
	ldw r1, dp[.L__profc_fdim+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdim+24]
	stw r0, dp[.L__profc_fdim+28]
	ldw r0, sp[9]
	ldw r1, sp[10]
	ldw r2, sp[7]
	ldw r3, sp[8]
	bl __subdf3
	stw r0, sp[1]
	stw r1, sp[2]
	bu .LBB29_7
.LBB29_6:
	ldw r1, dp[__llvm_gcov_ctr.29+28]
	ldw r2, dp[__llvm_gcov_ctr.29+24]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.29+24]
	stw r1, dp[__llvm_gcov_ctr.29+28]
	mov r1, r0
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB29_7
.LBB29_7:
	ldw r1, sp[1]
	ldw r0, sp[2]
	stw r1, sp[11]
	stw r0, sp[12]
	bu .LBB29_8
.LBB29_8:
	ldw r0, sp[11]
	ldw r1, sp[12]
	retsp 13
	.cc_bottom fdim.function
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI30_0:
	.long	2147483647
.LCPI30_1:
	.long	2139095041
	.text
	.globl	fdimf
	.p2align	2
	.type	fdimf,@function
	.cc_top fdimf.function,fdimf
fdimf:
	entsp 5
	stw r0, sp[3]
	stw r1, sp[2]
	ldw r0, dp[.L__profc_fdimf+4]
	ldw r1, dp[.L__profc_fdimf]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdimf]
	stw r0, dp[.L__profc_fdimf+4]
	ldw r0, sp[3]
	ldw r1, cp[.LCPI30_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI30_1]
	lss r0, r0, r1
	bt r0, .LBB30_2
	bu .LBB30_1
.LBB30_1:
	ldw r0, dp[__llvm_gcov_ctr.30+4]
	ldw r1, dp[__llvm_gcov_ctr.30]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.30]
	stw r0, dp[__llvm_gcov_ctr.30+4]
	ldw r0, dp[.L__profc_fdimf+12]
	ldw r1, dp[.L__profc_fdimf+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdimf+8]
	stw r0, dp[.L__profc_fdimf+12]
	ldw r0, sp[3]
	stw r0, sp[4]
	bu .LBB30_8
.LBB30_2:
	ldw r0, sp[2]
	ldw r1, cp[.LCPI30_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI30_1]
	lss r0, r0, r1
	bt r0, .LBB30_4
	bu .LBB30_3
.LBB30_3:
	ldw r0, dp[__llvm_gcov_ctr.30+12]
	ldw r1, dp[__llvm_gcov_ctr.30+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.30+8]
	stw r0, dp[__llvm_gcov_ctr.30+12]
	ldw r0, dp[.L__profc_fdimf+20]
	ldw r1, dp[.L__profc_fdimf+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdimf+16]
	stw r0, dp[.L__profc_fdimf+20]
	ldw r0, sp[2]
	stw r0, sp[4]
	bu .LBB30_8
.LBB30_4:
	ldw r0, sp[3]
	ldw r1, sp[2]
	bl __gtsf2
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB30_6
	bu .LBB30_5
.LBB30_5:
	ldw r0, dp[__llvm_gcov_ctr.30+20]
	ldw r1, dp[__llvm_gcov_ctr.30+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.30+16]
	stw r0, dp[__llvm_gcov_ctr.30+20]
	ldw r0, dp[.L__profc_fdimf+28]
	ldw r1, dp[.L__profc_fdimf+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fdimf+24]
	stw r0, dp[.L__profc_fdimf+28]
	ldw r0, sp[3]
	ldw r1, sp[2]
	bl __subsf3
	stw r0, sp[1]
	bu .LBB30_7
.LBB30_6:
	ldw r1, dp[__llvm_gcov_ctr.30+28]
	ldw r2, dp[__llvm_gcov_ctr.30+24]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.30+24]
	stw r1, dp[__llvm_gcov_ctr.30+28]
	stw r0, sp[1]
	bu .LBB30_7
.LBB30_7:
	ldw r0, sp[1]
	stw r0, sp[4]
	bu .LBB30_8
.LBB30_8:
	ldw r0, sp[4]
	retsp 5
	.cc_bottom fdimf.function
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI31_0:
	.long	2147483647
.LCPI31_1:
	.long	2146435072
	.text
	.globl	fmax
	.p2align	2
	.type	fmax,@function
	.cc_top fmax.function,fmax
fmax:
	entsp 15
	stw r1, sp[12]
	stw r0, sp[11]
	stw r3, sp[10]
	stw r2, sp[9]
	ldw r0, dp[.L__profc_fmax+4]
	ldw r1, dp[.L__profc_fmax]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmax]
	stw r0, dp[.L__profc_fmax+4]
	ldw r1, sp[11]
	ldw r0, sp[12]
	ldw r2, cp[.LCPI31_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI31_1]
	lss r3, r0, r2
	stw r3, sp[7]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[8]
	bt r0, .LBB31_15
	ldw r0, sp[7]
	stw r0, sp[8]
.LBB31_15:
	ldw r0, sp[8]
	bt r0, .LBB31_2
	bu .LBB31_1
.LBB31_1:
	ldw r0, dp[__llvm_gcov_ctr.31+4]
	ldw r1, dp[__llvm_gcov_ctr.31]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.31]
	stw r0, dp[__llvm_gcov_ctr.31+4]
	ldw r0, dp[.L__profc_fmax+12]
	ldw r1, dp[.L__profc_fmax+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmax+8]
	stw r0, dp[.L__profc_fmax+12]
	ldw r0, sp[9]
	ldw r1, sp[10]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB31_13
.LBB31_2:
	ldw r1, sp[9]
	ldw r0, sp[10]
	ldw r2, cp[.LCPI31_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI31_1]
	lss r3, r0, r2
	stw r3, sp[5]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[6]
	bt r0, .LBB31_17
	ldw r0, sp[5]
	stw r0, sp[6]
.LBB31_17:
	ldw r0, sp[6]
	bt r0, .LBB31_4
	bu .LBB31_3
.LBB31_3:
	ldw r0, dp[__llvm_gcov_ctr.31+12]
	ldw r1, dp[__llvm_gcov_ctr.31+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.31+8]
	stw r0, dp[__llvm_gcov_ctr.31+12]
	ldw r0, dp[.L__profc_fmax+20]
	ldw r1, dp[.L__profc_fmax+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmax+16]
	stw r0, dp[.L__profc_fmax+20]
	ldw r0, sp[11]
	ldw r1, sp[12]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB31_13
.LBB31_4:
	ldw r0, sp[12]
	mkmsk r2, 5
	shr r0, r0, r2
	ldw r1, sp[10]
	shr r1, r1, r2
	eq r0, r0, r1
	bt r0, .LBB31_9
	bu .LBB31_5
.LBB31_5:
	ldw r0, dp[.L__profc_fmax+28]
	ldw r1, dp[.L__profc_fmax+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmax+24]
	stw r0, dp[.L__profc_fmax+28]
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB31_7
	bu .LBB31_6
.LBB31_6:
	ldw r0, dp[__llvm_gcov_ctr.31+20]
	ldw r1, dp[__llvm_gcov_ctr.31+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.31+16]
	stw r0, dp[__llvm_gcov_ctr.31+20]
	ldw r0, dp[.L__profc_fmax+36]
	ldw r1, dp[.L__profc_fmax+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmax+32]
	stw r0, dp[.L__profc_fmax+36]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB31_8
.LBB31_7:
	ldw r0, dp[__llvm_gcov_ctr.31+28]
	ldw r1, dp[__llvm_gcov_ctr.31+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.31+24]
	stw r0, dp[__llvm_gcov_ctr.31+28]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB31_8
.LBB31_8:
	ldw r1, sp[3]
	ldw r0, sp[4]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB31_13
.LBB31_9:
	ldw r0, sp[11]
	ldw r1, sp[12]
	ldw r2, sp[9]
	ldw r3, sp[10]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB31_11
	bu .LBB31_10
.LBB31_10:
	ldw r0, dp[__llvm_gcov_ctr.31+36]
	ldw r1, dp[__llvm_gcov_ctr.31+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.31+32]
	stw r0, dp[__llvm_gcov_ctr.31+36]
	ldw r0, dp[.L__profc_fmax+44]
	ldw r1, dp[.L__profc_fmax+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmax+40]
	stw r0, dp[.L__profc_fmax+44]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB31_12
.LBB31_11:
	ldw r0, dp[__llvm_gcov_ctr.31+44]
	ldw r1, dp[__llvm_gcov_ctr.31+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.31+40]
	stw r0, dp[__llvm_gcov_ctr.31+44]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB31_12
.LBB31_12:
	ldw r1, sp[1]
	ldw r0, sp[2]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB31_13
.LBB31_13:
	ldw r0, sp[13]
	ldw r1, sp[14]
	retsp 15
	.cc_bottom fmax.function
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI32_0:
	.long	2147483647
.LCPI32_1:
	.long	2139095041
	.text
	.globl	fmaxf
	.p2align	2
	.type	fmaxf,@function
	.cc_top fmaxf.function,fmaxf
fmaxf:
	entsp 6
	stw r0, sp[4]
	stw r1, sp[3]
	ldw r0, dp[.L__profc_fmaxf+4]
	ldw r1, dp[.L__profc_fmaxf]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxf]
	stw r0, dp[.L__profc_fmaxf+4]
	ldw r0, sp[4]
	ldw r1, cp[.LCPI32_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI32_1]
	lss r0, r0, r1
	bt r0, .LBB32_2
	bu .LBB32_1
.LBB32_1:
	ldw r0, dp[__llvm_gcov_ctr.32+4]
	ldw r1, dp[__llvm_gcov_ctr.32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.32]
	stw r0, dp[__llvm_gcov_ctr.32+4]
	ldw r0, dp[.L__profc_fmaxf+12]
	ldw r1, dp[.L__profc_fmaxf+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxf+8]
	stw r0, dp[.L__profc_fmaxf+12]
	ldw r0, sp[3]
	stw r0, sp[5]
	bu .LBB32_13
.LBB32_2:
	ldw r0, sp[3]
	ldw r1, cp[.LCPI32_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI32_1]
	lss r0, r0, r1
	bt r0, .LBB32_4
	bu .LBB32_3
.LBB32_3:
	ldw r0, dp[__llvm_gcov_ctr.32+12]
	ldw r1, dp[__llvm_gcov_ctr.32+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.32+8]
	stw r0, dp[__llvm_gcov_ctr.32+12]
	ldw r0, dp[.L__profc_fmaxf+20]
	ldw r1, dp[.L__profc_fmaxf+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxf+16]
	stw r0, dp[.L__profc_fmaxf+20]
	ldw r0, sp[4]
	stw r0, sp[5]
	bu .LBB32_13
.LBB32_4:
	ldw r0, sp[4]
	mkmsk r2, 5
	shr r0, r0, r2
	ldw r1, sp[3]
	shr r1, r1, r2
	eq r0, r0, r1
	bt r0, .LBB32_9
	bu .LBB32_5
.LBB32_5:
	ldw r0, dp[.L__profc_fmaxf+28]
	ldw r1, dp[.L__profc_fmaxf+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxf+24]
	stw r0, dp[.L__profc_fmaxf+28]
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB32_7
	bu .LBB32_6
.LBB32_6:
	ldw r0, dp[__llvm_gcov_ctr.32+20]
	ldw r1, dp[__llvm_gcov_ctr.32+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.32+16]
	stw r0, dp[__llvm_gcov_ctr.32+20]
	ldw r0, dp[.L__profc_fmaxf+36]
	ldw r1, dp[.L__profc_fmaxf+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxf+32]
	stw r0, dp[.L__profc_fmaxf+36]
	ldw r0, sp[3]
	stw r0, sp[2]
	bu .LBB32_8
.LBB32_7:
	ldw r0, dp[__llvm_gcov_ctr.32+28]
	ldw r1, dp[__llvm_gcov_ctr.32+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.32+24]
	stw r0, dp[__llvm_gcov_ctr.32+28]
	ldw r0, sp[4]
	stw r0, sp[2]
	bu .LBB32_8
.LBB32_8:
	ldw r0, sp[2]
	stw r0, sp[5]
	bu .LBB32_13
.LBB32_9:
	ldw r0, sp[4]
	ldw r1, sp[3]
	bl __ltsf2
	ashr r0, r0, 32
	bf r0, .LBB32_11
	bu .LBB32_10
.LBB32_10:
	ldw r0, dp[__llvm_gcov_ctr.32+36]
	ldw r1, dp[__llvm_gcov_ctr.32+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.32+32]
	stw r0, dp[__llvm_gcov_ctr.32+36]
	ldw r0, dp[.L__profc_fmaxf+44]
	ldw r1, dp[.L__profc_fmaxf+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxf+40]
	stw r0, dp[.L__profc_fmaxf+44]
	ldw r0, sp[3]
	stw r0, sp[1]
	bu .LBB32_12
.LBB32_11:
	ldw r0, dp[__llvm_gcov_ctr.32+44]
	ldw r1, dp[__llvm_gcov_ctr.32+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.32+40]
	stw r0, dp[__llvm_gcov_ctr.32+44]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB32_12
.LBB32_12:
	ldw r0, sp[1]
	stw r0, sp[5]
	bu .LBB32_13
.LBB32_13:
	ldw r0, sp[5]
	retsp 6
	.cc_bottom fmaxf.function
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI33_0:
	.long	2147483647
.LCPI33_1:
	.long	2146435072
	.text
	.globl	fmaxl
	.p2align	2
	.type	fmaxl,@function
	.cc_top fmaxl.function,fmaxl
fmaxl:
	entsp 15
	stw r1, sp[12]
	stw r0, sp[11]
	stw r3, sp[10]
	stw r2, sp[9]
	ldw r0, dp[.L__profc_fmaxl+4]
	ldw r1, dp[.L__profc_fmaxl]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxl]
	stw r0, dp[.L__profc_fmaxl+4]
	ldw r1, sp[11]
	ldw r0, sp[12]
	ldw r2, cp[.LCPI33_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI33_1]
	lss r3, r0, r2
	stw r3, sp[7]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[8]
	bt r0, .LBB33_15
	ldw r0, sp[7]
	stw r0, sp[8]
.LBB33_15:
	ldw r0, sp[8]
	bt r0, .LBB33_2
	bu .LBB33_1
.LBB33_1:
	ldw r0, dp[__llvm_gcov_ctr.33+4]
	ldw r1, dp[__llvm_gcov_ctr.33]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.33]
	stw r0, dp[__llvm_gcov_ctr.33+4]
	ldw r0, dp[.L__profc_fmaxl+12]
	ldw r1, dp[.L__profc_fmaxl+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxl+8]
	stw r0, dp[.L__profc_fmaxl+12]
	ldw r0, sp[9]
	ldw r1, sp[10]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB33_13
.LBB33_2:
	ldw r1, sp[9]
	ldw r0, sp[10]
	ldw r2, cp[.LCPI33_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI33_1]
	lss r3, r0, r2
	stw r3, sp[5]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[6]
	bt r0, .LBB33_17
	ldw r0, sp[5]
	stw r0, sp[6]
.LBB33_17:
	ldw r0, sp[6]
	bt r0, .LBB33_4
	bu .LBB33_3
.LBB33_3:
	ldw r0, dp[__llvm_gcov_ctr.33+12]
	ldw r1, dp[__llvm_gcov_ctr.33+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.33+8]
	stw r0, dp[__llvm_gcov_ctr.33+12]
	ldw r0, dp[.L__profc_fmaxl+20]
	ldw r1, dp[.L__profc_fmaxl+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxl+16]
	stw r0, dp[.L__profc_fmaxl+20]
	ldw r0, sp[11]
	ldw r1, sp[12]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB33_13
.LBB33_4:
	ldw r0, sp[12]
	mkmsk r2, 5
	shr r0, r0, r2
	ldw r1, sp[10]
	shr r1, r1, r2
	eq r0, r0, r1
	bt r0, .LBB33_9
	bu .LBB33_5
.LBB33_5:
	ldw r0, dp[.L__profc_fmaxl+28]
	ldw r1, dp[.L__profc_fmaxl+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxl+24]
	stw r0, dp[.L__profc_fmaxl+28]
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB33_7
	bu .LBB33_6
.LBB33_6:
	ldw r0, dp[__llvm_gcov_ctr.33+20]
	ldw r1, dp[__llvm_gcov_ctr.33+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.33+16]
	stw r0, dp[__llvm_gcov_ctr.33+20]
	ldw r0, dp[.L__profc_fmaxl+36]
	ldw r1, dp[.L__profc_fmaxl+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxl+32]
	stw r0, dp[.L__profc_fmaxl+36]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB33_8
.LBB33_7:
	ldw r0, dp[__llvm_gcov_ctr.33+28]
	ldw r1, dp[__llvm_gcov_ctr.33+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.33+24]
	stw r0, dp[__llvm_gcov_ctr.33+28]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB33_8
.LBB33_8:
	ldw r1, sp[3]
	ldw r0, sp[4]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB33_13
.LBB33_9:
	ldw r0, sp[11]
	ldw r1, sp[12]
	ldw r2, sp[9]
	ldw r3, sp[10]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB33_11
	bu .LBB33_10
.LBB33_10:
	ldw r0, dp[__llvm_gcov_ctr.33+36]
	ldw r1, dp[__llvm_gcov_ctr.33+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.33+32]
	stw r0, dp[__llvm_gcov_ctr.33+36]
	ldw r0, dp[.L__profc_fmaxl+44]
	ldw r1, dp[.L__profc_fmaxl+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmaxl+40]
	stw r0, dp[.L__profc_fmaxl+44]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB33_12
.LBB33_11:
	ldw r0, dp[__llvm_gcov_ctr.33+44]
	ldw r1, dp[__llvm_gcov_ctr.33+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.33+40]
	stw r0, dp[__llvm_gcov_ctr.33+44]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB33_12
.LBB33_12:
	ldw r1, sp[1]
	ldw r0, sp[2]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB33_13
.LBB33_13:
	ldw r0, sp[13]
	ldw r1, sp[14]
	retsp 15
	.cc_bottom fmaxl.function
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI34_0:
	.long	2147483647
.LCPI34_1:
	.long	2146435072
	.text
	.globl	fmin
	.p2align	2
	.type	fmin,@function
	.cc_top fmin.function,fmin
fmin:
	entsp 15
	stw r1, sp[12]
	stw r0, sp[11]
	stw r3, sp[10]
	stw r2, sp[9]
	ldw r0, dp[.L__profc_fmin+4]
	ldw r1, dp[.L__profc_fmin]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmin]
	stw r0, dp[.L__profc_fmin+4]
	ldw r1, sp[11]
	ldw r0, sp[12]
	ldw r2, cp[.LCPI34_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI34_1]
	lss r3, r0, r2
	stw r3, sp[7]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[8]
	bt r0, .LBB34_15
	ldw r0, sp[7]
	stw r0, sp[8]
.LBB34_15:
	ldw r0, sp[8]
	bt r0, .LBB34_2
	bu .LBB34_1
.LBB34_1:
	ldw r0, dp[__llvm_gcov_ctr.34+4]
	ldw r1, dp[__llvm_gcov_ctr.34]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.34]
	stw r0, dp[__llvm_gcov_ctr.34+4]
	ldw r0, dp[.L__profc_fmin+12]
	ldw r1, dp[.L__profc_fmin+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmin+8]
	stw r0, dp[.L__profc_fmin+12]
	ldw r0, sp[9]
	ldw r1, sp[10]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB34_13
.LBB34_2:
	ldw r1, sp[9]
	ldw r0, sp[10]
	ldw r2, cp[.LCPI34_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI34_1]
	lss r3, r0, r2
	stw r3, sp[5]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[6]
	bt r0, .LBB34_17
	ldw r0, sp[5]
	stw r0, sp[6]
.LBB34_17:
	ldw r0, sp[6]
	bt r0, .LBB34_4
	bu .LBB34_3
.LBB34_3:
	ldw r0, dp[__llvm_gcov_ctr.34+12]
	ldw r1, dp[__llvm_gcov_ctr.34+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.34+8]
	stw r0, dp[__llvm_gcov_ctr.34+12]
	ldw r0, dp[.L__profc_fmin+20]
	ldw r1, dp[.L__profc_fmin+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmin+16]
	stw r0, dp[.L__profc_fmin+20]
	ldw r0, sp[11]
	ldw r1, sp[12]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB34_13
.LBB34_4:
	ldw r0, sp[12]
	mkmsk r2, 5
	shr r0, r0, r2
	ldw r1, sp[10]
	shr r1, r1, r2
	eq r0, r0, r1
	bt r0, .LBB34_9
	bu .LBB34_5
.LBB34_5:
	ldw r0, dp[.L__profc_fmin+28]
	ldw r1, dp[.L__profc_fmin+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmin+24]
	stw r0, dp[.L__profc_fmin+28]
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB34_7
	bu .LBB34_6
.LBB34_6:
	ldw r0, dp[__llvm_gcov_ctr.34+20]
	ldw r1, dp[__llvm_gcov_ctr.34+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.34+16]
	stw r0, dp[__llvm_gcov_ctr.34+20]
	ldw r0, dp[.L__profc_fmin+36]
	ldw r1, dp[.L__profc_fmin+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmin+32]
	stw r0, dp[.L__profc_fmin+36]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB34_8
.LBB34_7:
	ldw r0, dp[__llvm_gcov_ctr.34+28]
	ldw r1, dp[__llvm_gcov_ctr.34+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.34+24]
	stw r0, dp[__llvm_gcov_ctr.34+28]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB34_8
.LBB34_8:
	ldw r1, sp[3]
	ldw r0, sp[4]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB34_13
.LBB34_9:
	ldw r0, sp[11]
	ldw r1, sp[12]
	ldw r2, sp[9]
	ldw r3, sp[10]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB34_11
	bu .LBB34_10
.LBB34_10:
	ldw r0, dp[__llvm_gcov_ctr.34+36]
	ldw r1, dp[__llvm_gcov_ctr.34+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.34+32]
	stw r0, dp[__llvm_gcov_ctr.34+36]
	ldw r0, dp[.L__profc_fmin+44]
	ldw r1, dp[.L__profc_fmin+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fmin+40]
	stw r0, dp[.L__profc_fmin+44]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB34_12
.LBB34_11:
	ldw r0, dp[__llvm_gcov_ctr.34+44]
	ldw r1, dp[__llvm_gcov_ctr.34+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.34+40]
	stw r0, dp[__llvm_gcov_ctr.34+44]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB34_12
.LBB34_12:
	ldw r1, sp[1]
	ldw r0, sp[2]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB34_13
.LBB34_13:
	ldw r0, sp[13]
	ldw r1, sp[14]
	retsp 15
	.cc_bottom fmin.function
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI35_0:
	.long	2147483647
.LCPI35_1:
	.long	2139095041
	.text
	.globl	fminf
	.p2align	2
	.type	fminf,@function
	.cc_top fminf.function,fminf
fminf:
	entsp 6
	stw r0, sp[4]
	stw r1, sp[3]
	ldw r0, dp[.L__profc_fminf+4]
	ldw r1, dp[.L__profc_fminf]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminf]
	stw r0, dp[.L__profc_fminf+4]
	ldw r0, sp[4]
	ldw r1, cp[.LCPI35_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI35_1]
	lss r0, r0, r1
	bt r0, .LBB35_2
	bu .LBB35_1
.LBB35_1:
	ldw r0, dp[__llvm_gcov_ctr.35+4]
	ldw r1, dp[__llvm_gcov_ctr.35]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.35]
	stw r0, dp[__llvm_gcov_ctr.35+4]
	ldw r0, dp[.L__profc_fminf+12]
	ldw r1, dp[.L__profc_fminf+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminf+8]
	stw r0, dp[.L__profc_fminf+12]
	ldw r0, sp[3]
	stw r0, sp[5]
	bu .LBB35_13
.LBB35_2:
	ldw r0, sp[3]
	ldw r1, cp[.LCPI35_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI35_1]
	lss r0, r0, r1
	bt r0, .LBB35_4
	bu .LBB35_3
.LBB35_3:
	ldw r0, dp[__llvm_gcov_ctr.35+12]
	ldw r1, dp[__llvm_gcov_ctr.35+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.35+8]
	stw r0, dp[__llvm_gcov_ctr.35+12]
	ldw r0, dp[.L__profc_fminf+20]
	ldw r1, dp[.L__profc_fminf+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminf+16]
	stw r0, dp[.L__profc_fminf+20]
	ldw r0, sp[4]
	stw r0, sp[5]
	bu .LBB35_13
.LBB35_4:
	ldw r0, sp[4]
	mkmsk r2, 5
	shr r0, r0, r2
	ldw r1, sp[3]
	shr r1, r1, r2
	eq r0, r0, r1
	bt r0, .LBB35_9
	bu .LBB35_5
.LBB35_5:
	ldw r0, dp[.L__profc_fminf+28]
	ldw r1, dp[.L__profc_fminf+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminf+24]
	stw r0, dp[.L__profc_fminf+28]
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB35_7
	bu .LBB35_6
.LBB35_6:
	ldw r0, dp[__llvm_gcov_ctr.35+20]
	ldw r1, dp[__llvm_gcov_ctr.35+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.35+16]
	stw r0, dp[__llvm_gcov_ctr.35+20]
	ldw r0, dp[.L__profc_fminf+36]
	ldw r1, dp[.L__profc_fminf+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminf+32]
	stw r0, dp[.L__profc_fminf+36]
	ldw r0, sp[4]
	stw r0, sp[2]
	bu .LBB35_8
.LBB35_7:
	ldw r0, dp[__llvm_gcov_ctr.35+28]
	ldw r1, dp[__llvm_gcov_ctr.35+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.35+24]
	stw r0, dp[__llvm_gcov_ctr.35+28]
	ldw r0, sp[3]
	stw r0, sp[2]
	bu .LBB35_8
.LBB35_8:
	ldw r0, sp[2]
	stw r0, sp[5]
	bu .LBB35_13
.LBB35_9:
	ldw r0, sp[4]
	ldw r1, sp[3]
	bl __ltsf2
	ashr r0, r0, 32
	bf r0, .LBB35_11
	bu .LBB35_10
.LBB35_10:
	ldw r0, dp[__llvm_gcov_ctr.35+36]
	ldw r1, dp[__llvm_gcov_ctr.35+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.35+32]
	stw r0, dp[__llvm_gcov_ctr.35+36]
	ldw r0, dp[.L__profc_fminf+44]
	ldw r1, dp[.L__profc_fminf+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminf+40]
	stw r0, dp[.L__profc_fminf+44]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB35_12
.LBB35_11:
	ldw r0, dp[__llvm_gcov_ctr.35+44]
	ldw r1, dp[__llvm_gcov_ctr.35+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.35+40]
	stw r0, dp[__llvm_gcov_ctr.35+44]
	ldw r0, sp[3]
	stw r0, sp[1]
	bu .LBB35_12
.LBB35_12:
	ldw r0, sp[1]
	stw r0, sp[5]
	bu .LBB35_13
.LBB35_13:
	ldw r0, sp[5]
	retsp 6
	.cc_bottom fminf.function
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI36_0:
	.long	2147483647
.LCPI36_1:
	.long	2146435072
	.text
	.globl	fminl
	.p2align	2
	.type	fminl,@function
	.cc_top fminl.function,fminl
fminl:
	entsp 15
	stw r1, sp[12]
	stw r0, sp[11]
	stw r3, sp[10]
	stw r2, sp[9]
	ldw r0, dp[.L__profc_fminl+4]
	ldw r1, dp[.L__profc_fminl]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminl]
	stw r0, dp[.L__profc_fminl+4]
	ldw r1, sp[11]
	ldw r0, sp[12]
	ldw r2, cp[.LCPI36_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI36_1]
	lss r3, r0, r2
	stw r3, sp[7]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[8]
	bt r0, .LBB36_15
	ldw r0, sp[7]
	stw r0, sp[8]
.LBB36_15:
	ldw r0, sp[8]
	bt r0, .LBB36_2
	bu .LBB36_1
.LBB36_1:
	ldw r0, dp[__llvm_gcov_ctr.36+4]
	ldw r1, dp[__llvm_gcov_ctr.36]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.36]
	stw r0, dp[__llvm_gcov_ctr.36+4]
	ldw r0, dp[.L__profc_fminl+12]
	ldw r1, dp[.L__profc_fminl+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminl+8]
	stw r0, dp[.L__profc_fminl+12]
	ldw r0, sp[9]
	ldw r1, sp[10]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB36_13
.LBB36_2:
	ldw r1, sp[9]
	ldw r0, sp[10]
	ldw r2, cp[.LCPI36_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI36_1]
	lss r3, r0, r2
	stw r3, sp[5]
	eq r0, r0, r2
	eq r1, r1, 0
	stw r1, sp[6]
	bt r0, .LBB36_17
	ldw r0, sp[5]
	stw r0, sp[6]
.LBB36_17:
	ldw r0, sp[6]
	bt r0, .LBB36_4
	bu .LBB36_3
.LBB36_3:
	ldw r0, dp[__llvm_gcov_ctr.36+12]
	ldw r1, dp[__llvm_gcov_ctr.36+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.36+8]
	stw r0, dp[__llvm_gcov_ctr.36+12]
	ldw r0, dp[.L__profc_fminl+20]
	ldw r1, dp[.L__profc_fminl+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminl+16]
	stw r0, dp[.L__profc_fminl+20]
	ldw r0, sp[11]
	ldw r1, sp[12]
	stw r1, sp[14]
	stw r0, sp[13]
	bu .LBB36_13
.LBB36_4:
	ldw r0, sp[12]
	mkmsk r2, 5
	shr r0, r0, r2
	ldw r1, sp[10]
	shr r1, r1, r2
	eq r0, r0, r1
	bt r0, .LBB36_9
	bu .LBB36_5
.LBB36_5:
	ldw r0, dp[.L__profc_fminl+28]
	ldw r1, dp[.L__profc_fminl+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminl+24]
	stw r0, dp[.L__profc_fminl+28]
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB36_7
	bu .LBB36_6
.LBB36_6:
	ldw r0, dp[__llvm_gcov_ctr.36+20]
	ldw r1, dp[__llvm_gcov_ctr.36+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.36+16]
	stw r0, dp[__llvm_gcov_ctr.36+20]
	ldw r0, dp[.L__profc_fminl+36]
	ldw r1, dp[.L__profc_fminl+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminl+32]
	stw r0, dp[.L__profc_fminl+36]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB36_8
.LBB36_7:
	ldw r0, dp[__llvm_gcov_ctr.36+28]
	ldw r1, dp[__llvm_gcov_ctr.36+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.36+24]
	stw r0, dp[__llvm_gcov_ctr.36+28]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB36_8
.LBB36_8:
	ldw r1, sp[3]
	ldw r0, sp[4]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB36_13
.LBB36_9:
	ldw r0, sp[11]
	ldw r1, sp[12]
	ldw r2, sp[9]
	ldw r3, sp[10]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB36_11
	bu .LBB36_10
.LBB36_10:
	ldw r0, dp[__llvm_gcov_ctr.36+36]
	ldw r1, dp[__llvm_gcov_ctr.36+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.36+32]
	stw r0, dp[__llvm_gcov_ctr.36+36]
	ldw r0, dp[.L__profc_fminl+44]
	ldw r1, dp[.L__profc_fminl+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_fminl+40]
	stw r0, dp[.L__profc_fminl+44]
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB36_12
.LBB36_11:
	ldw r0, dp[__llvm_gcov_ctr.36+44]
	ldw r1, dp[__llvm_gcov_ctr.36+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.36+40]
	stw r0, dp[__llvm_gcov_ctr.36+44]
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB36_12
.LBB36_12:
	ldw r1, sp[1]
	ldw r0, sp[2]
	stw r1, sp[13]
	stw r0, sp[14]
	bu .LBB36_13
.LBB36_13:
	ldw r0, sp[13]
	ldw r1, sp[14]
	retsp 15
	.cc_bottom fminl.function
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl

	.globl	l64a
	.p2align	2
	.type	l64a,@function
	.cc_top l64a.function,l64a
l64a:
	entsp 4
	stw r4, sp[3]
	ldw r1, dp[__llvm_gcov_ctr.37+4]
	ldw r11, dp[__llvm_gcov_ctr.37]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.37]
	stw r1, dp[__llvm_gcov_ctr.37+4]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_l64a+4]
	ldw r1, dp[.L__profc_l64a]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_l64a]
	stw r0, dp[.L__profc_l64a+4]
	ldw r0, sp[2]
	stw r0, sp[0]
	ldaw r0, dp[l64a.s]
	stw r0, sp[1]
	bu .LBB37_1
.LBB37_1:
	ldw r0, sp[0]
	bf r0, .LBB37_4
	bu .LBB37_2
.LBB37_2:
	ldw r0, dp[.L__profc_l64a+12]
	ldw r1, dp[.L__profc_l64a+8]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_l64a+8]
	stw r0, dp[.L__profc_l64a+12]
	ldw r0, sp[0]
	zext r0, 6
	ldaw r11, cp[digits]
	ld8u r0, r0[r11]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB37_3
.LBB37_3:
	ldw r0, dp[__llvm_gcov_ctr.37+12]
	ldw r1, dp[__llvm_gcov_ctr.37+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.37+8]
	stw r0, dp[__llvm_gcov_ctr.37+12]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	ldw r0, sp[0]
	shr r0, r0, 6
	stw r0, sp[0]
	bu .LBB37_1
.LBB37_4:
	ldw r1, sp[1]
	ldc r0, 0
	st8 r0, r1[r0]
	ldaw r0, dp[l64a.s]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom l64a.function
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a

	.globl	srand
	.p2align	2
	.type	srand,@function
	.cc_top srand.function,srand
srand:
	entsp 2
	stw r4, sp[1]
	ldw r2, dp[__llvm_gcov_ctr.38+4]
	ldw r11, dp[__llvm_gcov_ctr.38]
	ldc r1, 0
	mkmsk r3, 1
	ladd r4, r11, r11, r3, r1
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.38]
	stw r2, dp[__llvm_gcov_ctr.38+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc_srand+4]
	ldw r2, dp[.L__profc_srand]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_srand]
	stw r0, dp[.L__profc_srand+4]
	ldw r0, sp[0]
	sub r0, r0, 1
	stw r1, dp[seed+4]
	stw r0, dp[seed]
	ldw r4, sp[1]
	retsp 2
	.cc_bottom srand.function
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI39_0:
	.long	1481765933
.LCPI39_1:
	.long	1284865837
	.text
	.globl	rand
	.p2align	2
	.type	rand,@function
	.cc_top rand.function,rand
rand:
	extsp 1
	stw r4, sp[0]
	ldw r0, dp[__llvm_gcov_ctr.39+4]
	ldw r2, dp[__llvm_gcov_ctr.39]
	ldc r3, 0
	mkmsk r1, 1
	ladd r11, r2, r2, r1, r3
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.39]
	stw r0, dp[__llvm_gcov_ctr.39+4]
	ldw r0, dp[.L__profc_rand+4]
	ldw r2, dp[.L__profc_rand]
	ladd r11, r2, r2, r1, r3
	add r0, r0, r11
	stw r2, dp[.L__profc_rand]
	stw r0, dp[.L__profc_rand+4]
	ldw r0, dp[seed+4]
	ldw r4, dp[seed]
	ldw r2, cp[.LCPI39_0]
	mul r11, r4, r2
	ldw r2, cp[.LCPI39_1]
	maccu r3, r1, r4, r2
	lmul r2, r0, r0, r2, r3, r11
	stw r1, dp[seed]
	stw r0, dp[seed+4]
	ldw r0, dp[seed+4]
	shr r0, r0, 1
	ldw r4, sp[0]
	ldaw sp, sp[1]
	retsp 0
	.cc_bottom rand.function
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand

	.globl	insque
	.p2align	2
	.type	insque,@function
	.cc_top insque.function,insque
insque:
	entsp 4
	stw r0, sp[3]
	stw r1, sp[2]
	ldw r0, dp[.L__profc_insque+4]
	ldw r1, dp[.L__profc_insque]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_insque]
	stw r0, dp[.L__profc_insque+4]
	ldw r0, sp[3]
	stw r0, sp[1]
	ldw r0, sp[2]
	stw r0, sp[0]
	ldw r0, sp[0]
	bt r0, .LBB40_2
	bu .LBB40_1
.LBB40_1:
	ldw r1, dp[__llvm_gcov_ctr.40+12]
	ldw r2, dp[__llvm_gcov_ctr.40+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.40+8]
	stw r1, dp[__llvm_gcov_ctr.40+12]
	ldw r1, dp[.L__profc_insque+12]
	ldw r2, dp[.L__profc_insque+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_insque+8]
	stw r1, dp[.L__profc_insque+12]
	ldw r1, sp[1]
	stw r0, r1[1]
	ldw r1, sp[1]
	stw r0, r1[0]
	bu .LBB40_4
.LBB40_2:
	ldw r0, dp[__llvm_gcov_ctr.40+4]
	ldw r1, dp[__llvm_gcov_ctr.40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.40]
	stw r0, dp[__llvm_gcov_ctr.40+4]
	ldw r0, sp[0]
	ldw r0, r0[0]
	ldw r1, sp[1]
	stw r0, r1[0]
	ldw r0, sp[0]
	ldw r1, sp[1]
	stw r0, r1[1]
	ldw r0, sp[1]
	ldw r1, sp[0]
	stw r0, r1[0]
	ldw r0, sp[1]
	ldw r0, r0[0]
	bf r0, .LBB40_4
	bu .LBB40_3
.LBB40_3:
	ldw r0, dp[__llvm_gcov_ctr.40+20]
	ldw r1, dp[__llvm_gcov_ctr.40+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.40+16]
	stw r0, dp[__llvm_gcov_ctr.40+20]
	ldw r0, dp[.L__profc_insque+20]
	ldw r1, dp[.L__profc_insque+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_insque+16]
	stw r0, dp[.L__profc_insque+20]
	ldw r0, sp[1]
	ldw r1, r0[0]
	stw r0, r1[1]
	bu .LBB40_4
.LBB40_4:
	retsp 4
	.cc_bottom insque.function
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque

	.globl	remque
	.p2align	2
	.type	remque,@function
	.cc_top remque.function,remque
remque:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.41+4]
	ldw r11, dp[__llvm_gcov_ctr.41]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.41]
	stw r1, dp[__llvm_gcov_ctr.41+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc_remque+4]
	ldw r1, dp[.L__profc_remque]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_remque]
	stw r0, dp[.L__profc_remque+4]
	ldw r0, sp[1]
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r0, r0[0]
	bf r0, .LBB41_2
	bu .LBB41_1
.LBB41_1:
	ldw r0, dp[__llvm_gcov_ctr.41+12]
	ldw r1, dp[__llvm_gcov_ctr.41+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.41+8]
	stw r0, dp[__llvm_gcov_ctr.41+12]
	ldw r0, dp[.L__profc_remque+12]
	ldw r1, dp[.L__profc_remque+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_remque+8]
	stw r0, dp[.L__profc_remque+12]
	ldw r1, sp[0]
	ldw r0, r1[1]
	ldw r1, r1[0]
	stw r0, r1[1]
	bu .LBB41_2
.LBB41_2:
	ldw r0, sp[0]
	ldw r0, r0[1]
	bf r0, .LBB41_4
	bu .LBB41_3
.LBB41_3:
	ldw r0, dp[__llvm_gcov_ctr.41+20]
	ldw r1, dp[__llvm_gcov_ctr.41+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.41+16]
	stw r0, dp[__llvm_gcov_ctr.41+20]
	ldw r0, dp[.L__profc_remque+20]
	ldw r1, dp[.L__profc_remque+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_remque+16]
	stw r0, dp[.L__profc_remque+20]
	ldw r1, sp[0]
	ldw r0, r1[0]
	ldw r1, r1[1]
	stw r0, r1[0]
	bu .LBB41_4
.LBB41_4:
	ldw r4, sp[2]
	retsp 3
	.cc_bottom remque.function
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque

	.globl	lsearch
	.p2align	2
	.type	lsearch,@function
	.cc_top lsearch.function,lsearch
lsearch:
	entsp 12
	stw r4, sp[11]
	ldw r11, sp[13]
	stw r0, sp[9]
	stw r1, sp[8]
	stw r2, sp[7]
	stw r3, sp[6]
	ldw r1, dp[.L__profc_lsearch+4]
	ldw r2, dp[.L__profc_lsearch]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_lsearch]
	stw r1, dp[.L__profc_lsearch+4]
	ldw r1, sp[6]
	stw r1, sp[2]
	ldw r1, sp[8]
	stw r1, sp[5]
	ldw r1, sp[7]
	ldw r1, r1[0]
	stw r1, sp[4]
	stw r0, sp[3]
	bu .LBB42_1
.LBB42_1:
	ldw r0, sp[3]
	ldw r1, sp[4]
	lsu r0, r0, r1
	bf r0, .LBB42_6
	bu .LBB42_2
.LBB42_2:
	ldw r11, sp[2]
	ldw r0, dp[.L__profc_lsearch+12]
	ldw r1, dp[.L__profc_lsearch+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_lsearch+8]
	stw r0, dp[.L__profc_lsearch+12]
	ldw r2, sp[13]
	ldw r0, sp[9]
	ldw r1, sp[5]
	ldw r3, sp[3]
	mul r3, r3, r11
	add r1, r1, r3
	bla r2
	bt r0, .LBB42_4
	bu .LBB42_3
.LBB42_3:
	ldw r2, sp[2]
	ldw r0, dp[__llvm_gcov_ctr.42+4]
	ldw r1, dp[__llvm_gcov_ctr.42]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r1, r1, r3, r11
	add r0, r0, r4
	stw r1, dp[__llvm_gcov_ctr.42]
	stw r0, dp[__llvm_gcov_ctr.42+4]
	ldw r0, dp[.L__profc_lsearch+20]
	ldw r1, dp[.L__profc_lsearch+16]
	ladd r3, r1, r1, r3, r11
	add r0, r0, r3
	stw r1, dp[.L__profc_lsearch+16]
	stw r0, dp[.L__profc_lsearch+20]
	ldw r0, sp[5]
	ldw r1, sp[3]
	mul r1, r1, r2
	add r0, r0, r1
	stw r0, sp[10]
	bu .LBB42_7
.LBB42_4:
	bu .LBB42_5
.LBB42_5:
	ldw r0, dp[__llvm_gcov_ctr.42+12]
	ldw r1, dp[__llvm_gcov_ctr.42+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.42+8]
	stw r0, dp[__llvm_gcov_ctr.42+12]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB42_1
.LBB42_6:
	ldw r2, sp[2]
	ldw r0, dp[__llvm_gcov_ctr.42+20]
	ldw r1, dp[__llvm_gcov_ctr.42+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r11
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.42+16]
	stw r0, dp[__llvm_gcov_ctr.42+20]
	ldw r0, sp[4]
	add r0, r0, 1
	ldw r1, sp[7]
	stw r0, r1[0]
	ldw r0, sp[5]
	ldw r1, sp[4]
	mul r1, r1, r2
	add r0, r0, r1
	stw r0, sp[1]
	ldw r1, sp[9]
	ldw r2, sp[6]
	bl memcpy
	ldw r0, sp[1]
	stw r0, sp[10]
	bu .LBB42_7
.LBB42_7:
	ldw r0, sp[10]
	ldw r4, sp[11]
	retsp 12
	.cc_bottom lsearch.function
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch

	.globl	lfind
	.p2align	2
	.type	lfind,@function
	.cc_top lfind.function,lfind
lfind:
	entsp 11
	stw r4, sp[10]
	ldw r11, sp[12]
	stw r0, sp[8]
	stw r1, sp[7]
	stw r2, sp[6]
	stw r3, sp[5]
	ldw r1, dp[.L__profc_lfind+4]
	ldw r2, dp[.L__profc_lfind]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_lfind]
	stw r1, dp[.L__profc_lfind+4]
	ldw r1, sp[5]
	stw r1, sp[1]
	ldw r1, sp[7]
	stw r1, sp[4]
	ldw r1, sp[6]
	ldw r1, r1[0]
	stw r1, sp[3]
	stw r0, sp[2]
	bu .LBB43_1
.LBB43_1:
	ldw r0, sp[2]
	ldw r1, sp[3]
	lsu r0, r0, r1
	bf r0, .LBB43_6
	bu .LBB43_2
.LBB43_2:
	ldw r11, sp[1]
	ldw r0, dp[.L__profc_lfind+12]
	ldw r1, dp[.L__profc_lfind+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_lfind+8]
	stw r0, dp[.L__profc_lfind+12]
	ldw r2, sp[12]
	ldw r0, sp[8]
	ldw r1, sp[4]
	ldw r3, sp[2]
	mul r3, r3, r11
	add r1, r1, r3
	bla r2
	bt r0, .LBB43_4
	bu .LBB43_3
.LBB43_3:
	ldw r2, sp[1]
	ldw r0, dp[__llvm_gcov_ctr.43+4]
	ldw r1, dp[__llvm_gcov_ctr.43]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r1, r1, r3, r11
	add r0, r0, r4
	stw r1, dp[__llvm_gcov_ctr.43]
	stw r0, dp[__llvm_gcov_ctr.43+4]
	ldw r0, dp[.L__profc_lfind+20]
	ldw r1, dp[.L__profc_lfind+16]
	ladd r3, r1, r1, r3, r11
	add r0, r0, r3
	stw r1, dp[.L__profc_lfind+16]
	stw r0, dp[.L__profc_lfind+20]
	ldw r0, sp[4]
	ldw r1, sp[2]
	mul r1, r1, r2
	add r0, r0, r1
	stw r0, sp[9]
	bu .LBB43_7
.LBB43_4:
	bu .LBB43_5
.LBB43_5:
	ldw r0, dp[__llvm_gcov_ctr.43+12]
	ldw r1, dp[__llvm_gcov_ctr.43+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.43+8]
	stw r0, dp[__llvm_gcov_ctr.43+12]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB43_1
.LBB43_6:
	ldw r1, dp[__llvm_gcov_ctr.43+20]
	ldw r2, dp[__llvm_gcov_ctr.43+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.43+16]
	stw r1, dp[__llvm_gcov_ctr.43+20]
	stw r0, sp[9]
	bu .LBB43_7
.LBB43_7:
	ldw r0, sp[9]
	ldw r4, sp[10]
	retsp 11
	.cc_bottom lfind.function
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind

	.globl	abs
	.p2align	2
	.type	abs,@function
	.cc_top abs.function,abs
abs:
	entsp 2
	stw r0, sp[1]
	ldw r0, dp[.L__profc_abs+4]
	ldw r2, dp[.L__profc_abs]
	ldc r3, 0
	mkmsk r1, 1
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_abs]
	stw r0, dp[.L__profc_abs+4]
	ldw r0, sp[1]
	lss r0, r0, r1
	bt r0, .LBB44_2
	bu .LBB44_1
.LBB44_1:
	ldw r0, dp[__llvm_gcov_ctr.44+4]
	ldw r1, dp[__llvm_gcov_ctr.44]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.44]
	stw r0, dp[__llvm_gcov_ctr.44+4]
	ldw r0, dp[.L__profc_abs+12]
	ldw r1, dp[.L__profc_abs+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_abs+8]
	stw r0, dp[.L__profc_abs+12]
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB44_3
.LBB44_2:
	ldw r0, dp[__llvm_gcov_ctr.44+12]
	ldw r1, dp[__llvm_gcov_ctr.44+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.44+8]
	stw r0, dp[__llvm_gcov_ctr.44+12]
	ldw r0, sp[1]
	neg r0, r0
	stw r0, sp[0]
	bu .LBB44_3
.LBB44_3:
	ldw r0, sp[0]
	retsp 2
	.cc_bottom abs.function
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs

	.globl	atoi
	.p2align	2
	.type	atoi,@function
	.cc_top atoi.function,atoi
atoi:
	entsp 6
	stw r0, sp[5]
	ldw r1, dp[.L__profc_atoi+4]
	ldw r2, dp[.L__profc_atoi]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_atoi]
	stw r1, dp[.L__profc_atoi+4]
	stw r0, sp[4]
	stw r0, sp[3]
	bu .LBB45_1
.LBB45_1:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isspace
	bf r0, .LBB45_3
	bu .LBB45_2
.LBB45_2:
	ldw r0, dp[__llvm_gcov_ctr.45+4]
	ldw r1, dp[__llvm_gcov_ctr.45]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.45]
	stw r0, dp[__llvm_gcov_ctr.45+4]
	ldw r0, dp[.L__profc_atoi+12]
	ldw r1, dp[.L__profc_atoi+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoi+8]
	stw r0, dp[.L__profc_atoi+12]
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB45_1
.LBB45_3:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r0, sp[2]
	ldc r1, 43
	eq r0, r0, r1
	bt r0, .LBB45_5
	bu .LBB45_14
.LBB45_14:
	ldw r0, sp[2]
	ldc r1, 45
	eq r0, r0, r1
	bf r0, .LBB45_7
	bu .LBB45_4
.LBB45_4:
	ldw r1, dp[__llvm_gcov_ctr.45+12]
	ldw r2, dp[__llvm_gcov_ctr.45+8]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.45+8]
	stw r1, dp[__llvm_gcov_ctr.45+12]
	ldw r1, dp[.L__profc_atoi+28]
	ldw r2, dp[.L__profc_atoi+24]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc_atoi+24]
	stw r1, dp[.L__profc_atoi+28]
	stw r0, sp[3]
	bu .LBB45_6
.LBB45_5:
	ldw r0, dp[__llvm_gcov_ctr.45+20]
	ldw r1, dp[__llvm_gcov_ctr.45+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.45+16]
	stw r0, dp[__llvm_gcov_ctr.45+20]
	ldw r0, dp[.L__profc_atoi+36]
	ldw r1, dp[.L__profc_atoi+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoi+32]
	stw r0, dp[.L__profc_atoi+36]
	bu .LBB45_6
.LBB45_6:
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB45_7
.LBB45_7:
	ldw r0, dp[.L__profc_atoi+20]
	ldw r1, dp[.L__profc_atoi+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoi+16]
	stw r0, dp[.L__profc_atoi+20]
	bu .LBB45_8
.LBB45_8:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isdigit
	bf r0, .LBB45_10
	bu .LBB45_9
.LBB45_9:
	ldw r0, dp[__llvm_gcov_ctr.45+28]
	ldw r1, dp[__llvm_gcov_ctr.45+24]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.45+24]
	stw r0, dp[__llvm_gcov_ctr.45+28]
	ldw r0, dp[.L__profc_atoi+44]
	ldw r1, dp[.L__profc_atoi+40]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_atoi+40]
	stw r0, dp[.L__profc_atoi+44]
	ldw r0, sp[4]
	ldc r1, 10
	mul r0, r0, r1
	ldw r1, sp[5]
	add r3, r1, 1
	stw r3, sp[5]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	ldc r1, 48
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB45_8
.LBB45_10:
	ldw r0, sp[3]
	bf r0, .LBB45_12
	bu .LBB45_11
.LBB45_11:
	ldw r0, dp[__llvm_gcov_ctr.45+36]
	ldw r1, dp[__llvm_gcov_ctr.45+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.45+32]
	stw r0, dp[__llvm_gcov_ctr.45+36]
	ldw r0, dp[.L__profc_atoi+52]
	ldw r1, dp[.L__profc_atoi+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoi+48]
	stw r0, dp[.L__profc_atoi+52]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB45_13
.LBB45_12:
	ldw r0, dp[__llvm_gcov_ctr.45+44]
	ldw r1, dp[__llvm_gcov_ctr.45+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.45+40]
	stw r0, dp[__llvm_gcov_ctr.45+44]
	ldw r0, sp[4]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB45_13
.LBB45_13:
	ldw r0, sp[1]
	retsp 6
	.cc_bottom atoi.function
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi

	.globl	atol
	.p2align	2
	.type	atol,@function
	.cc_top atol.function,atol
atol:
	entsp 6
	stw r0, sp[5]
	ldw r1, dp[.L__profc_atol+4]
	ldw r2, dp[.L__profc_atol]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_atol]
	stw r1, dp[.L__profc_atol+4]
	stw r0, sp[4]
	stw r0, sp[3]
	bu .LBB46_1
.LBB46_1:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isspace
	bf r0, .LBB46_3
	bu .LBB46_2
.LBB46_2:
	ldw r0, dp[__llvm_gcov_ctr.46+4]
	ldw r1, dp[__llvm_gcov_ctr.46]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.46]
	stw r0, dp[__llvm_gcov_ctr.46+4]
	ldw r0, dp[.L__profc_atol+12]
	ldw r1, dp[.L__profc_atol+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atol+8]
	stw r0, dp[.L__profc_atol+12]
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB46_1
.LBB46_3:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r0, sp[2]
	ldc r1, 43
	eq r0, r0, r1
	bt r0, .LBB46_5
	bu .LBB46_14
.LBB46_14:
	ldw r0, sp[2]
	ldc r1, 45
	eq r0, r0, r1
	bf r0, .LBB46_7
	bu .LBB46_4
.LBB46_4:
	ldw r1, dp[__llvm_gcov_ctr.46+12]
	ldw r2, dp[__llvm_gcov_ctr.46+8]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.46+8]
	stw r1, dp[__llvm_gcov_ctr.46+12]
	ldw r1, dp[.L__profc_atol+28]
	ldw r2, dp[.L__profc_atol+24]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc_atol+24]
	stw r1, dp[.L__profc_atol+28]
	stw r0, sp[3]
	bu .LBB46_6
.LBB46_5:
	ldw r0, dp[__llvm_gcov_ctr.46+20]
	ldw r1, dp[__llvm_gcov_ctr.46+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.46+16]
	stw r0, dp[__llvm_gcov_ctr.46+20]
	ldw r0, dp[.L__profc_atol+36]
	ldw r1, dp[.L__profc_atol+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atol+32]
	stw r0, dp[.L__profc_atol+36]
	bu .LBB46_6
.LBB46_6:
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB46_7
.LBB46_7:
	ldw r0, dp[.L__profc_atol+20]
	ldw r1, dp[.L__profc_atol+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atol+16]
	stw r0, dp[.L__profc_atol+20]
	bu .LBB46_8
.LBB46_8:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isdigit
	bf r0, .LBB46_10
	bu .LBB46_9
.LBB46_9:
	ldw r0, dp[__llvm_gcov_ctr.46+28]
	ldw r1, dp[__llvm_gcov_ctr.46+24]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.46+24]
	stw r0, dp[__llvm_gcov_ctr.46+28]
	ldw r0, dp[.L__profc_atol+44]
	ldw r1, dp[.L__profc_atol+40]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_atol+40]
	stw r0, dp[.L__profc_atol+44]
	ldw r0, sp[4]
	ldc r1, 10
	mul r0, r0, r1
	ldw r1, sp[5]
	add r3, r1, 1
	stw r3, sp[5]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	ldc r1, 48
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB46_8
.LBB46_10:
	ldw r0, sp[3]
	bf r0, .LBB46_12
	bu .LBB46_11
.LBB46_11:
	ldw r0, dp[__llvm_gcov_ctr.46+36]
	ldw r1, dp[__llvm_gcov_ctr.46+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.46+32]
	stw r0, dp[__llvm_gcov_ctr.46+36]
	ldw r0, dp[.L__profc_atol+52]
	ldw r1, dp[.L__profc_atol+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atol+48]
	stw r0, dp[.L__profc_atol+52]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB46_13
.LBB46_12:
	ldw r0, dp[__llvm_gcov_ctr.46+44]
	ldw r1, dp[__llvm_gcov_ctr.46+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.46+40]
	stw r0, dp[__llvm_gcov_ctr.46+44]
	ldw r0, sp[4]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB46_13
.LBB46_13:
	ldw r0, sp[1]
	retsp 6
	.cc_bottom atol.function
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI47_0:
	.long	4294967248
	.text
	.globl	atoll
	.p2align	2
	.type	atoll,@function
	.cc_top atoll.function,atoll
atoll:
	entsp 8
	stw r0, sp[7]
	ldw r1, dp[.L__profc_atoll+4]
	ldw r2, dp[.L__profc_atoll]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_atoll]
	stw r1, dp[.L__profc_atoll+4]
	stw r0, sp[6]
	stw r0, sp[5]
	stw r0, sp[4]
	bu .LBB47_1
.LBB47_1:
	ldw r0, sp[7]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isspace
	bf r0, .LBB47_3
	bu .LBB47_2
.LBB47_2:
	ldw r0, dp[__llvm_gcov_ctr.47+4]
	ldw r1, dp[__llvm_gcov_ctr.47]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.47]
	stw r0, dp[__llvm_gcov_ctr.47+4]
	ldw r0, dp[.L__profc_atoll+12]
	ldw r1, dp[.L__profc_atoll+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoll+8]
	stw r0, dp[.L__profc_atoll+12]
	ldw r0, sp[7]
	add r0, r0, 1
	stw r0, sp[7]
	bu .LBB47_1
.LBB47_3:
	ldw r0, sp[7]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r0, sp[3]
	ldc r1, 43
	eq r0, r0, r1
	bt r0, .LBB47_5
	bu .LBB47_14
.LBB47_14:
	ldw r0, sp[3]
	ldc r1, 45
	eq r0, r0, r1
	bf r0, .LBB47_7
	bu .LBB47_4
.LBB47_4:
	ldw r1, dp[__llvm_gcov_ctr.47+12]
	ldw r2, dp[__llvm_gcov_ctr.47+8]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.47+8]
	stw r1, dp[__llvm_gcov_ctr.47+12]
	ldw r1, dp[.L__profc_atoll+28]
	ldw r2, dp[.L__profc_atoll+24]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc_atoll+24]
	stw r1, dp[.L__profc_atoll+28]
	stw r0, sp[4]
	bu .LBB47_6
.LBB47_5:
	ldw r0, dp[__llvm_gcov_ctr.47+20]
	ldw r1, dp[__llvm_gcov_ctr.47+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.47+16]
	stw r0, dp[__llvm_gcov_ctr.47+20]
	ldw r0, dp[.L__profc_atoll+36]
	ldw r1, dp[.L__profc_atoll+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoll+32]
	stw r0, dp[.L__profc_atoll+36]
	bu .LBB47_6
.LBB47_6:
	ldw r0, sp[7]
	add r0, r0, 1
	stw r0, sp[7]
	bu .LBB47_7
.LBB47_7:
	ldw r0, dp[.L__profc_atoll+20]
	ldw r1, dp[.L__profc_atoll+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoll+16]
	stw r0, dp[.L__profc_atoll+20]
	bu .LBB47_8
.LBB47_8:
	ldw r0, sp[7]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isdigit
	bf r0, .LBB47_10
	bu .LBB47_9
.LBB47_9:
	ldw r0, dp[__llvm_gcov_ctr.47+28]
	ldw r1, dp[__llvm_gcov_ctr.47+24]
	ldc r11, 0
	mkmsk r2, 1
	ladd r3, r1, r1, r2, r11
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.47+24]
	stw r0, dp[__llvm_gcov_ctr.47+28]
	ldw r0, dp[.L__profc_atoll+44]
	ldw r1, dp[.L__profc_atoll+40]
	ladd r2, r1, r1, r2, r11
	add r0, r0, r2
	stw r1, dp[.L__profc_atoll+40]
	stw r0, dp[.L__profc_atoll+44]
	ldw r2, sp[6]
	ldw r0, sp[5]
	ldc r3, 10
	lmul r0, r1, r0, r3, r11, r11
	mul r2, r2, r3
	add r0, r0, r2
	ldw r2, sp[7]
	add r3, r2, 1
	stw r3, sp[7]
	ld8u r2, r2[r11]
	ldw r3, cp[.LCPI47_0]
	add r3, r2, r3
	ashr r2, r3, 32
	lsub r3, r1, r1, r3, r11
	lsub r2, r0, r0, r2, r3
	stw r1, sp[5]
	stw r0, sp[6]
	bu .LBB47_8
.LBB47_10:
	ldw r0, sp[4]
	bf r0, .LBB47_12
	bu .LBB47_11
.LBB47_11:
	ldw r0, dp[__llvm_gcov_ctr.47+36]
	ldw r1, dp[__llvm_gcov_ctr.47+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.47+32]
	stw r0, dp[__llvm_gcov_ctr.47+36]
	ldw r0, dp[.L__profc_atoll+52]
	ldw r1, dp[.L__profc_atoll+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_atoll+48]
	stw r0, dp[.L__profc_atoll+52]
	ldw r0, sp[6]
	ldw r1, sp[5]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB47_13
.LBB47_12:
	ldw r1, dp[__llvm_gcov_ctr.47+44]
	ldw r2, dp[__llvm_gcov_ctr.47+40]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.47+40]
	stw r1, dp[__llvm_gcov_ctr.47+44]
	ldw r2, sp[6]
	ldw r1, sp[5]
	lsub r3, r1, r0, r1, r0
	lsub r2, r0, r0, r2, r3
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB47_13
.LBB47_13:
	ldw r0, sp[1]
	ldw r1, sp[2]
	retsp 8
	.cc_bottom atoll.function
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll

	.globl	bsearch
	.p2align	2
	.type	bsearch,@function
	.cc_top bsearch.function,bsearch
bsearch:
	entsp 8
	ldw r11, sp[9]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	stw r3, sp[3]
	ldw r0, dp[.L__profc_bsearch+4]
	ldw r1, dp[.L__profc_bsearch]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch]
	stw r0, dp[.L__profc_bsearch+4]
	bu .LBB48_1
.LBB48_1:
	ldw r0, sp[4]
	bf r0, .LBB48_9
	bu .LBB48_2
.LBB48_2:
	ldw r0, dp[.L__profc_bsearch+12]
	ldw r1, dp[.L__profc_bsearch+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch+8]
	stw r0, dp[.L__profc_bsearch+12]
	ldw r0, sp[5]
	ldw r1, sp[3]
	ldw r2, sp[4]
	shr r2, r2, 1
	mul r1, r1, r2
	add r0, r0, r1
	stw r0, sp[2]
	ldw r2, sp[9]
	ldw r0, sp[6]
	ldw r1, sp[2]
	bla r2
	stw r0, sp[1]
	ldw r0, sp[1]
	ashr r0, r0, 32
	bf r0, .LBB48_4
	bu .LBB48_3
.LBB48_3:
	ldw r0, dp[__llvm_gcov_ctr.48+12]
	ldw r1, dp[__llvm_gcov_ctr.48+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.48+8]
	stw r0, dp[__llvm_gcov_ctr.48+12]
	ldw r0, dp[.L__profc_bsearch+20]
	ldw r1, dp[.L__profc_bsearch+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch+16]
	stw r0, dp[.L__profc_bsearch+20]
	ldw r0, sp[4]
	shr r0, r0, 1
	stw r0, sp[4]
	bu .LBB48_8
.LBB48_4:
	ldw r0, sp[1]
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB48_6
	bu .LBB48_5
.LBB48_5:
	ldw r0, dp[.L__profc_bsearch+28]
	ldw r1, dp[.L__profc_bsearch+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch+24]
	stw r0, dp[.L__profc_bsearch+28]
	ldw r0, sp[2]
	ldw r1, sp[3]
	add r0, r0, r1
	stw r0, sp[5]
	ldw r1, sp[4]
	shr r0, r1, 1
	not r0, r0
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB48_7
.LBB48_6:
	ldw r0, dp[__llvm_gcov_ctr.48+20]
	ldw r1, dp[__llvm_gcov_ctr.48+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.48+16]
	stw r0, dp[__llvm_gcov_ctr.48+20]
	ldw r0, sp[2]
	stw r0, sp[7]
	bu .LBB48_10
.LBB48_7:
	ldw r0, dp[__llvm_gcov_ctr.48+28]
	ldw r1, dp[__llvm_gcov_ctr.48+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.48+24]
	stw r0, dp[__llvm_gcov_ctr.48+28]
	bu .LBB48_8
.LBB48_8:
	bu .LBB48_1
.LBB48_9:
	ldw r1, dp[__llvm_gcov_ctr.48+4]
	ldw r2, dp[__llvm_gcov_ctr.48]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.48]
	stw r1, dp[__llvm_gcov_ctr.48+4]
	stw r0, sp[7]
	bu .LBB48_10
.LBB48_10:
	ldw r0, sp[7]
	retsp 8
	.cc_bottom bsearch.function
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch

	.globl	bsearch_r
	.p2align	2
	.type	bsearch_r,@function
	.cc_top bsearch_r.function,bsearch_r
bsearch_r:
	entsp 10
	ldw r11, sp[12]
	ldw r11, sp[11]
	stw r0, sp[8]
	stw r1, sp[7]
	stw r2, sp[6]
	stw r3, sp[5]
	ldw r0, dp[.L__profc_bsearch_r+4]
	ldw r1, dp[.L__profc_bsearch_r]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch_r]
	stw r0, dp[.L__profc_bsearch_r+4]
	ldw r0, sp[7]
	stw r0, sp[4]
	ldw r0, sp[6]
	stw r0, sp[3]
	bu .LBB49_1
.LBB49_1:
	ldw r0, sp[3]
	bf r0, .LBB49_8
	bu .LBB49_2
.LBB49_2:
	ldw r0, dp[.L__profc_bsearch_r+12]
	ldw r1, dp[.L__profc_bsearch_r+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch_r+8]
	stw r0, dp[.L__profc_bsearch_r+12]
	ldw r0, sp[4]
	ldw r1, sp[3]
	ashr r1, r1, 1
	ldw r2, sp[5]
	mul r1, r1, r2
	add r0, r0, r1
	stw r0, sp[1]
	ldw r3, sp[11]
	ldw r0, sp[8]
	ldw r1, sp[1]
	ldw r2, sp[12]
	bla r3
	stw r0, sp[2]
	ldw r0, sp[2]
	bt r0, .LBB49_4
	bu .LBB49_3
.LBB49_3:
	ldw r0, dp[__llvm_gcov_ctr.49+4]
	ldw r1, dp[__llvm_gcov_ctr.49]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.49]
	stw r0, dp[__llvm_gcov_ctr.49+4]
	ldw r0, dp[.L__profc_bsearch_r+20]
	ldw r1, dp[.L__profc_bsearch_r+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch_r+16]
	stw r0, dp[.L__profc_bsearch_r+20]
	ldw r0, sp[1]
	stw r0, sp[9]
	bu .LBB49_9
.LBB49_4:
	ldw r0, sp[2]
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB49_6
	bu .LBB49_5
.LBB49_5:
	ldw r0, dp[__llvm_gcov_ctr.49+12]
	ldw r1, dp[__llvm_gcov_ctr.49+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.49+8]
	stw r0, dp[__llvm_gcov_ctr.49+12]
	ldw r0, dp[.L__profc_bsearch_r+28]
	ldw r1, dp[.L__profc_bsearch_r+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bsearch_r+24]
	stw r0, dp[.L__profc_bsearch_r+28]
	ldw r0, sp[1]
	ldw r1, sp[5]
	add r0, r0, r1
	stw r0, sp[4]
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	bu .LBB49_6
.LBB49_6:
	bu .LBB49_7
.LBB49_7:
	ldw r0, dp[__llvm_gcov_ctr.49+20]
	ldw r1, dp[__llvm_gcov_ctr.49+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.49+16]
	stw r0, dp[__llvm_gcov_ctr.49+20]
	ldw r0, sp[3]
	ashr r0, r0, 1
	stw r0, sp[3]
	bu .LBB49_1
.LBB49_8:
	ldw r1, dp[__llvm_gcov_ctr.49+28]
	ldw r2, dp[__llvm_gcov_ctr.49+24]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.49+24]
	stw r1, dp[__llvm_gcov_ctr.49+28]
	stw r0, sp[9]
	bu .LBB49_9
.LBB49_9:
	ldw r0, sp[9]
	retsp 10
	.cc_bottom bsearch_r.function
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r

	.globl	div
	.p2align	2
	.type	div,@function
	.cc_top div.function,div
div:
	entsp 6
	stw r4, sp[5]
	stw r5, sp[4]
	stw r6, sp[3]
	stw r1, sp[0]
	mov r1, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.50+4]
	ldw r5, dp[__llvm_gcov_ctr.50]
	ldc r11, 0
	mkmsk r3, 1
	ladd r6, r5, r5, r3, r11
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.50]
	stw r4, dp[__llvm_gcov_ctr.50+4]
	stw r0, sp[2]
	stw r2, sp[1]
	ldw r0, dp[.L__profc_div+4]
	ldw r2, dp[.L__profc_div]
	ladd r3, r2, r2, r3, r11
	add r0, r0, r3
	stw r2, dp[.L__profc_div]
	stw r0, dp[.L__profc_div+4]
	ldw r0, sp[2]
	ldw r2, sp[1]
	divs r0, r0, r2
	stw r0, r1[0]
	ldw r0, sp[2]
	ldw r2, sp[1]
	rems r0, r0, r2
	stw r0, r1[1]
	ldw r6, sp[3]
	ldw r5, sp[4]
	ldw r4, sp[5]
	retsp 6
	.cc_bottom div.function
.Lfunc_end50:
	.size	div, .Lfunc_end50-div

	.globl	imaxabs
	.p2align	2
	.type	imaxabs,@function
	.cc_top imaxabs.function,imaxabs
imaxabs:
	entsp 6
	stw r1, sp[5]
	stw r0, sp[4]
	ldw r0, dp[.L__profc_imaxabs+4]
	ldw r2, dp[.L__profc_imaxabs]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_imaxabs]
	stw r0, dp[.L__profc_imaxabs+4]
	ldw r2, sp[4]
	ldw r0, sp[5]
	lss r1, r0, r1
	eq r2, r2, 0
	stw r2, sp[2]
	stw r1, sp[3]
	bt r0, .LBB51_5
	ldw r0, sp[2]
	stw r0, sp[3]
.LBB51_5:
	ldw r0, sp[3]
	bt r0, .LBB51_2
	bu .LBB51_1
.LBB51_1:
	ldw r0, dp[__llvm_gcov_ctr.51+4]
	ldw r1, dp[__llvm_gcov_ctr.51]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.51]
	stw r0, dp[__llvm_gcov_ctr.51+4]
	ldw r0, dp[.L__profc_imaxabs+12]
	ldw r1, dp[.L__profc_imaxabs+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_imaxabs+8]
	stw r0, dp[.L__profc_imaxabs+12]
	ldw r0, sp[5]
	ldw r1, sp[4]
	stw r1, sp[0]
	stw r0, sp[1]
	bu .LBB51_3
.LBB51_2:
	ldw r1, dp[__llvm_gcov_ctr.51+12]
	ldw r2, dp[__llvm_gcov_ctr.51+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.51+8]
	stw r1, dp[__llvm_gcov_ctr.51+12]
	ldw r2, sp[5]
	ldw r1, sp[4]
	lsub r3, r1, r0, r1, r0
	lsub r2, r0, r0, r2, r3
	stw r1, sp[0]
	stw r0, sp[1]
	bu .LBB51_3
.LBB51_3:
	ldw r0, sp[0]
	ldw r1, sp[1]
	retsp 6
	.cc_bottom imaxabs.function
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs

	.globl	imaxdiv
	.p2align	2
	.type	imaxdiv,@function
	.cc_top imaxdiv.function,imaxdiv
imaxdiv:
	entsp 11
	stw r4, sp[10]
	stw r5, sp[9]
	stw r6, sp[8]
	stw r7, sp[7]
	stw r3, sp[1]
	mov r4, r2
	mov r11, r1
	mov r1, r0
	ldw r0, sp[1]
	stw r1, sp[2]
	ldw r1, sp[12]
	ldw r5, dp[__llvm_gcov_ctr.52+4]
	ldw r6, dp[__llvm_gcov_ctr.52]
	ldc r3, 0
	mkmsk r2, 1
	ladd r7, r6, r6, r2, r3
	add r5, r5, r7
	stw r6, dp[__llvm_gcov_ctr.52]
	stw r5, dp[__llvm_gcov_ctr.52+4]
	stw r4, sp[6]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_imaxdiv+4]
	ldw r1, dp[.L__profc_imaxdiv]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_imaxdiv]
	stw r0, dp[.L__profc_imaxdiv+4]
	ldw r0, sp[5]
	ldw r1, sp[6]
	ldw r2, sp[3]
	ldw r3, sp[4]
	bl __divdi3
	mov r2, r1
	ldw r1, sp[2]
	stw r2, r1[1]
	stw r0, r1[0]
	ldw r0, sp[5]
	ldw r1, sp[6]
	ldw r2, sp[3]
	ldw r3, sp[4]
	bl __moddi3
	mov r2, r1
	ldw r1, sp[2]
	stw r2, r1[3]
	stw r0, r1[2]
	ldw r7, sp[7]
	ldw r6, sp[8]
	ldw r5, sp[9]
	ldw r4, sp[10]
	retsp 11
	.cc_bottom imaxdiv.function
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv

	.globl	labs
	.p2align	2
	.type	labs,@function
	.cc_top labs.function,labs
labs:
	entsp 2
	stw r0, sp[1]
	ldw r0, dp[.L__profc_labs+4]
	ldw r2, dp[.L__profc_labs]
	ldc r3, 0
	mkmsk r1, 1
	ladd r3, r2, r2, r1, r3
	add r0, r0, r3
	stw r2, dp[.L__profc_labs]
	stw r0, dp[.L__profc_labs+4]
	ldw r0, sp[1]
	lss r0, r0, r1
	bt r0, .LBB53_2
	bu .LBB53_1
.LBB53_1:
	ldw r0, dp[__llvm_gcov_ctr.53+4]
	ldw r1, dp[__llvm_gcov_ctr.53]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.53]
	stw r0, dp[__llvm_gcov_ctr.53+4]
	ldw r0, dp[.L__profc_labs+12]
	ldw r1, dp[.L__profc_labs+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_labs+8]
	stw r0, dp[.L__profc_labs+12]
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB53_3
.LBB53_2:
	ldw r0, dp[__llvm_gcov_ctr.53+12]
	ldw r1, dp[__llvm_gcov_ctr.53+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.53+8]
	stw r0, dp[__llvm_gcov_ctr.53+12]
	ldw r0, sp[1]
	neg r0, r0
	stw r0, sp[0]
	bu .LBB53_3
.LBB53_3:
	ldw r0, sp[0]
	retsp 2
	.cc_bottom labs.function
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs

	.globl	ldiv
	.p2align	2
	.type	ldiv,@function
	.cc_top ldiv.function,ldiv
ldiv:
	entsp 6
	stw r4, sp[5]
	stw r5, sp[4]
	stw r6, sp[3]
	stw r1, sp[0]
	mov r1, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.54+4]
	ldw r5, dp[__llvm_gcov_ctr.54]
	ldc r11, 0
	mkmsk r3, 1
	ladd r6, r5, r5, r3, r11
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.54]
	stw r4, dp[__llvm_gcov_ctr.54+4]
	stw r0, sp[2]
	stw r2, sp[1]
	ldw r0, dp[.L__profc_ldiv+4]
	ldw r2, dp[.L__profc_ldiv]
	ladd r3, r2, r2, r3, r11
	add r0, r0, r3
	stw r2, dp[.L__profc_ldiv]
	stw r0, dp[.L__profc_ldiv+4]
	ldw r0, sp[2]
	ldw r2, sp[1]
	divs r0, r0, r2
	stw r0, r1[0]
	ldw r0, sp[2]
	ldw r2, sp[1]
	rems r0, r0, r2
	stw r0, r1[1]
	ldw r6, sp[3]
	ldw r5, sp[4]
	ldw r4, sp[5]
	retsp 6
	.cc_bottom ldiv.function
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv

	.globl	llabs
	.p2align	2
	.type	llabs,@function
	.cc_top llabs.function,llabs
llabs:
	entsp 6
	stw r1, sp[5]
	stw r0, sp[4]
	ldw r0, dp[.L__profc_llabs+4]
	ldw r2, dp[.L__profc_llabs]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_llabs]
	stw r0, dp[.L__profc_llabs+4]
	ldw r2, sp[4]
	ldw r0, sp[5]
	lss r1, r0, r1
	eq r2, r2, 0
	stw r2, sp[2]
	stw r1, sp[3]
	bt r0, .LBB55_5
	ldw r0, sp[2]
	stw r0, sp[3]
.LBB55_5:
	ldw r0, sp[3]
	bt r0, .LBB55_2
	bu .LBB55_1
.LBB55_1:
	ldw r0, dp[__llvm_gcov_ctr.55+4]
	ldw r1, dp[__llvm_gcov_ctr.55]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.55]
	stw r0, dp[__llvm_gcov_ctr.55+4]
	ldw r0, dp[.L__profc_llabs+12]
	ldw r1, dp[.L__profc_llabs+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_llabs+8]
	stw r0, dp[.L__profc_llabs+12]
	ldw r0, sp[5]
	ldw r1, sp[4]
	stw r1, sp[0]
	stw r0, sp[1]
	bu .LBB55_3
.LBB55_2:
	ldw r1, dp[__llvm_gcov_ctr.55+12]
	ldw r2, dp[__llvm_gcov_ctr.55+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.55+8]
	stw r1, dp[__llvm_gcov_ctr.55+12]
	ldw r2, sp[5]
	ldw r1, sp[4]
	lsub r3, r1, r0, r1, r0
	lsub r2, r0, r0, r2, r3
	stw r1, sp[0]
	stw r0, sp[1]
	bu .LBB55_3
.LBB55_3:
	ldw r0, sp[0]
	ldw r1, sp[1]
	retsp 6
	.cc_bottom llabs.function
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs

	.globl	lldiv
	.p2align	2
	.type	lldiv,@function
	.cc_top lldiv.function,lldiv
lldiv:
	entsp 11
	stw r4, sp[10]
	stw r5, sp[9]
	stw r6, sp[8]
	stw r7, sp[7]
	stw r3, sp[1]
	mov r4, r2
	mov r11, r1
	mov r1, r0
	ldw r0, sp[1]
	stw r1, sp[2]
	ldw r1, sp[12]
	ldw r5, dp[__llvm_gcov_ctr.56+4]
	ldw r6, dp[__llvm_gcov_ctr.56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r7, r6, r6, r2, r3
	add r5, r5, r7
	stw r6, dp[__llvm_gcov_ctr.56]
	stw r5, dp[__llvm_gcov_ctr.56+4]
	stw r4, sp[6]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_lldiv+4]
	ldw r1, dp[.L__profc_lldiv]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_lldiv]
	stw r0, dp[.L__profc_lldiv+4]
	ldw r0, sp[5]
	ldw r1, sp[6]
	ldw r2, sp[3]
	ldw r3, sp[4]
	bl __divdi3
	mov r2, r1
	ldw r1, sp[2]
	stw r2, r1[1]
	stw r0, r1[0]
	ldw r0, sp[5]
	ldw r1, sp[6]
	ldw r2, sp[3]
	ldw r3, sp[4]
	bl __moddi3
	mov r2, r1
	ldw r1, sp[2]
	stw r2, r1[3]
	stw r0, r1[2]
	ldw r7, sp[7]
	ldw r6, sp[8]
	ldw r5, sp[9]
	ldw r4, sp[10]
	retsp 11
	.cc_bottom lldiv.function
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv

	.globl	wcschr
	.p2align	2
	.type	wcschr,@function
	.cc_top wcschr.function,wcschr
wcschr:
	entsp 6
	stw r4, sp[5]
	stw r0, sp[4]
	ldc r3, 0
	ldaw r0, sp[3]
	st8 r1, r0[r3]
	ldw r0, dp[.L__profc_wcschr+4]
	ldw r1, dp[.L__profc_wcschr]
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcschr]
	stw r0, dp[.L__profc_wcschr+4]
	bu .LBB57_1
.LBB57_1:
	ldw r0, sp[4]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[2]
	bf r0, .LBB57_4
	bu .LBB57_2
.LBB57_2:
	ldw r0, dp[__llvm_gcov_ctr.57+4]
	ldw r1, dp[__llvm_gcov_ctr.57]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.57]
	stw r0, dp[__llvm_gcov_ctr.57+4]
	ldw r0, dp[.L__profc_wcschr+20]
	ldw r1, dp[.L__profc_wcschr+16]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wcschr+16]
	stw r0, dp[.L__profc_wcschr+20]
	ldw r0, sp[4]
	ld8u r0, r0[r2]
	ldaw r1, sp[3]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[1]
	stw r1, sp[2]
	bt r0, .LBB57_4
	bu .LBB57_3
.LBB57_3:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.57+12]
	ldw r2, dp[__llvm_gcov_ctr.57+8]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.57+8]
	stw r1, dp[__llvm_gcov_ctr.57+12]
	ldw r1, dp[.L__profc_wcschr+28]
	ldw r2, dp[.L__profc_wcschr+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_wcschr+24]
	stw r1, dp[.L__profc_wcschr+28]
	stw r0, sp[2]
	bu .LBB57_4
.LBB57_4:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB57_7
	bu .LBB57_5
.LBB57_5:
	ldw r0, dp[.L__profc_wcschr+12]
	ldw r1, dp[.L__profc_wcschr+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcschr+8]
	stw r0, dp[.L__profc_wcschr+12]
	bu .LBB57_6
.LBB57_6:
	ldw r0, dp[__llvm_gcov_ctr.57+20]
	ldw r1, dp[__llvm_gcov_ctr.57+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.57+16]
	stw r0, dp[__llvm_gcov_ctr.57+20]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB57_1
.LBB57_7:
	ldw r0, sp[4]
	ldc r1, 0
	ld8u r0, r0[r1]
	bf r0, .LBB57_9
	bu .LBB57_8
.LBB57_8:
	ldw r0, dp[__llvm_gcov_ctr.57+28]
	ldw r1, dp[__llvm_gcov_ctr.57+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.57+24]
	stw r0, dp[__llvm_gcov_ctr.57+28]
	ldw r0, dp[.L__profc_wcschr+36]
	ldw r1, dp[.L__profc_wcschr+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcschr+32]
	stw r0, dp[.L__profc_wcschr+36]
	ldw r0, sp[4]
	stw r0, sp[0]
	bu .LBB57_10
.LBB57_9:
	ldw r1, dp[__llvm_gcov_ctr.57+36]
	ldw r2, dp[__llvm_gcov_ctr.57+32]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.57+32]
	stw r1, dp[__llvm_gcov_ctr.57+36]
	stw r0, sp[0]
	bu .LBB57_10
.LBB57_10:
	ldw r0, sp[0]
	ldw r4, sp[5]
	retsp 6
	.cc_bottom wcschr.function
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr

	.globl	wcscmp
	.p2align	2
	.type	wcscmp,@function
	.cc_top wcscmp.function,wcscmp
wcscmp:
	entsp 6
	stw r4, sp[5]
	stw r0, sp[4]
	stw r1, sp[3]
	ldw r0, dp[.L__profc_wcscmp+4]
	ldw r1, dp[.L__profc_wcscmp]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcscmp]
	stw r0, dp[.L__profc_wcscmp+4]
	bu .LBB58_1
.LBB58_1:
	ldw r0, sp[4]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r2, sp[3]
	ld8u r2, r2[r1]
	eq r0, r0, r2
	stw r1, sp[2]
	bf r0, .LBB58_6
	bu .LBB58_2
.LBB58_2:
	ldw r0, dp[__llvm_gcov_ctr.58+4]
	ldw r2, dp[__llvm_gcov_ctr.58]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.58]
	stw r0, dp[__llvm_gcov_ctr.58+4]
	ldw r0, dp[.L__profc_wcscmp+36]
	ldw r2, dp[.L__profc_wcscmp+32]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_wcscmp+32]
	stw r0, dp[.L__profc_wcscmp+36]
	ldw r0, sp[4]
	ld8u r0, r0[r1]
	stw r1, sp[2]
	bf r0, .LBB58_6
	bu .LBB58_3
.LBB58_3:
	ldw r0, dp[__llvm_gcov_ctr.58+12]
	ldw r1, dp[__llvm_gcov_ctr.58+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.58+8]
	stw r0, dp[__llvm_gcov_ctr.58+12]
	ldw r0, dp[.L__profc_wcscmp+44]
	ldw r1, dp[.L__profc_wcscmp+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcscmp+40]
	stw r0, dp[.L__profc_wcscmp+44]
	bu .LBB58_4
.LBB58_4:
	ldw r0, dp[.L__profc_wcscmp+20]
	ldw r2, dp[.L__profc_wcscmp+16]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_wcscmp+16]
	stw r0, dp[.L__profc_wcscmp+20]
	ldw r0, sp[3]
	ld8u r0, r0[r1]
	eq r1, r0, 0
	eq r1, r1, 0
	stw r1, sp[1]
	stw r1, sp[2]
	bf r0, .LBB58_6
	bu .LBB58_5
.LBB58_5:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.58+20]
	ldw r2, dp[__llvm_gcov_ctr.58+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.58+16]
	stw r1, dp[__llvm_gcov_ctr.58+20]
	ldw r1, dp[.L__profc_wcscmp+28]
	ldw r2, dp[.L__profc_wcscmp+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_wcscmp+24]
	stw r1, dp[.L__profc_wcscmp+28]
	stw r0, sp[2]
	bu .LBB58_6
.LBB58_6:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB58_9
	bu .LBB58_7
.LBB58_7:
	ldw r0, dp[.L__profc_wcscmp+12]
	ldw r1, dp[.L__profc_wcscmp+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcscmp+8]
	stw r0, dp[.L__profc_wcscmp+12]
	bu .LBB58_8
.LBB58_8:
	ldw r0, dp[__llvm_gcov_ctr.58+28]
	ldw r1, dp[__llvm_gcov_ctr.58+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.58+24]
	stw r0, dp[__llvm_gcov_ctr.58+28]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB58_1
.LBB58_9:
	ldw r0, sp[4]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	ld8u r1, r1[r2]
	lss r0, r0, r1
	bf r0, .LBB58_11
	bu .LBB58_10
.LBB58_10:
	ldw r0, dp[__llvm_gcov_ctr.58+36]
	ldw r1, dp[__llvm_gcov_ctr.58+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.58+32]
	stw r0, dp[__llvm_gcov_ctr.58+36]
	ldw r0, dp[.L__profc_wcscmp+52]
	ldw r1, dp[.L__profc_wcscmp+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcscmp+48]
	stw r0, dp[.L__profc_wcscmp+52]
	mkmsk r0, 32
	stw r0, sp[0]
	bu .LBB58_12
.LBB58_11:
	ldw r0, dp[__llvm_gcov_ctr.58+44]
	ldw r1, dp[__llvm_gcov_ctr.58+40]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.58+40]
	stw r0, dp[__llvm_gcov_ctr.58+44]
	ldw r0, sp[4]
	ld8u r1, r0[r2]
	ldw r0, sp[3]
	ld8u r0, r0[r2]
	lss r0, r0, r1
	stw r0, sp[0]
	bu .LBB58_12
.LBB58_12:
	ldw r0, sp[0]
	ldw r4, sp[5]
	retsp 6
	.cc_bottom wcscmp.function
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp

	.globl	wcscpy
	.p2align	2
	.type	wcscpy,@function
	.cc_top wcscpy.function,wcscpy
wcscpy:
	entsp 5
	stw r4, sp[4]
	stw r5, sp[3]
	ldw r11, dp[__llvm_gcov_ctr.59+4]
	ldw r4, dp[__llvm_gcov_ctr.59]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.59]
	stw r11, dp[__llvm_gcov_ctr.59+4]
	stw r0, sp[2]
	stw r1, sp[1]
	ldw r0, dp[.L__profc_wcscpy+4]
	ldw r1, dp[.L__profc_wcscpy]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcscpy]
	stw r0, dp[.L__profc_wcscpy+4]
	ldw r0, sp[2]
	stw r0, sp[0]
	bu .LBB59_1
.LBB59_1:
	ldw r0, sp[1]
	add r1, r0, 1
	stw r1, sp[1]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	add r3, r1, 1
	stw r3, sp[2]
	st8 r0, r1[r2]
	bf r0, .LBB59_3
	bu .LBB59_2
.LBB59_2:
	ldw r0, dp[__llvm_gcov_ctr.59+12]
	ldw r1, dp[__llvm_gcov_ctr.59+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.59+8]
	stw r0, dp[__llvm_gcov_ctr.59+12]
	ldw r0, dp[.L__profc_wcscpy+12]
	ldw r1, dp[.L__profc_wcscpy+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcscpy+8]
	stw r0, dp[.L__profc_wcscpy+12]
	bu .LBB59_1
.LBB59_3:
	ldw r0, sp[0]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
	.cc_bottom wcscpy.function
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy

	.globl	wcslen
	.p2align	2
	.type	wcslen,@function
	.cc_top wcslen.function,wcslen
wcslen:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.60+4]
	ldw r11, dp[__llvm_gcov_ctr.60]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.60]
	stw r1, dp[__llvm_gcov_ctr.60+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc_wcslen+4]
	ldw r1, dp[.L__profc_wcslen]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcslen]
	stw r0, dp[.L__profc_wcslen+4]
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB60_1
.LBB60_1:
	ldw r0, sp[1]
	ldc r1, 0
	ld8u r0, r0[r1]
	bf r0, .LBB60_4
	bu .LBB60_2
.LBB60_2:
	ldw r0, dp[.L__profc_wcslen+12]
	ldw r1, dp[.L__profc_wcslen+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcslen+8]
	stw r0, dp[.L__profc_wcslen+12]
	bu .LBB60_3
.LBB60_3:
	ldw r0, dp[__llvm_gcov_ctr.60+12]
	ldw r1, dp[__llvm_gcov_ctr.60+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.60+8]
	stw r0, dp[__llvm_gcov_ctr.60+12]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB60_1
.LBB60_4:
	ldw r0, sp[1]
	ldw r1, sp[0]
	sub r0, r0, r1
	ldw r4, sp[2]
	retsp 3
	.cc_bottom wcslen.function
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen

	.globl	wcsncmp
	.p2align	2
	.type	wcsncmp,@function
	.cc_top wcsncmp.function,wcsncmp
wcsncmp:
	entsp 8
	stw r4, sp[7]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r0, dp[.L__profc_wcsncmp+4]
	ldw r1, dp[.L__profc_wcsncmp]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcsncmp]
	stw r0, dp[.L__profc_wcsncmp+4]
	bu .LBB61_1
.LBB61_1:
	ldw r0, sp[4]
	ldc r1, 0
	stw r1, sp[3]
	bf r0, .LBB61_8
	bu .LBB61_2
.LBB61_2:
	ldw r0, dp[__llvm_gcov_ctr.61+4]
	ldw r2, dp[__llvm_gcov_ctr.61]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.61]
	stw r0, dp[__llvm_gcov_ctr.61+4]
	ldw r0, dp[.L__profc_wcsncmp+52]
	ldw r2, dp[.L__profc_wcsncmp+48]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_wcsncmp+48]
	stw r0, dp[.L__profc_wcsncmp+52]
	ldw r0, sp[6]
	ld8u r0, r0[r1]
	ldw r2, sp[5]
	ld8u r2, r2[r1]
	eq r0, r0, r2
	stw r1, sp[3]
	bf r0, .LBB61_8
	bu .LBB61_3
.LBB61_3:
	ldw r0, dp[__llvm_gcov_ctr.61+12]
	ldw r1, dp[__llvm_gcov_ctr.61+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.61+8]
	stw r0, dp[__llvm_gcov_ctr.61+12]
	ldw r0, dp[.L__profc_wcsncmp+60]
	ldw r1, dp[.L__profc_wcsncmp+56]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcsncmp+56]
	stw r0, dp[.L__profc_wcsncmp+60]
	bu .LBB61_4
.LBB61_4:
	ldw r0, dp[.L__profc_wcsncmp+36]
	ldw r2, dp[.L__profc_wcsncmp+32]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_wcsncmp+32]
	stw r0, dp[.L__profc_wcsncmp+36]
	ldw r0, sp[6]
	ld8u r0, r0[r1]
	stw r1, sp[3]
	bf r0, .LBB61_8
	bu .LBB61_5
.LBB61_5:
	ldw r0, dp[__llvm_gcov_ctr.61+20]
	ldw r1, dp[__llvm_gcov_ctr.61+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.61+16]
	stw r0, dp[__llvm_gcov_ctr.61+20]
	ldw r0, dp[.L__profc_wcsncmp+44]
	ldw r1, dp[.L__profc_wcsncmp+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcsncmp+40]
	stw r0, dp[.L__profc_wcsncmp+44]
	bu .LBB61_6
.LBB61_6:
	ldw r0, dp[.L__profc_wcsncmp+20]
	ldw r2, dp[.L__profc_wcsncmp+16]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_wcsncmp+16]
	stw r0, dp[.L__profc_wcsncmp+20]
	ldw r0, sp[5]
	ld8u r0, r0[r1]
	eq r1, r0, 0
	eq r1, r1, 0
	stw r1, sp[2]
	stw r1, sp[3]
	bf r0, .LBB61_8
	bu .LBB61_7
.LBB61_7:
	ldw r0, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.61+28]
	ldw r2, dp[__llvm_gcov_ctr.61+24]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.61+24]
	stw r1, dp[__llvm_gcov_ctr.61+28]
	ldw r1, dp[.L__profc_wcsncmp+28]
	ldw r2, dp[.L__profc_wcsncmp+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_wcsncmp+24]
	stw r1, dp[.L__profc_wcsncmp+28]
	stw r0, sp[3]
	bu .LBB61_8
.LBB61_8:
	ldw r0, sp[3]
	zext r0, 1
	bf r0, .LBB61_11
	bu .LBB61_9
.LBB61_9:
	ldw r0, dp[.L__profc_wcsncmp+12]
	ldw r1, dp[.L__profc_wcsncmp+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcsncmp+8]
	stw r0, dp[.L__profc_wcsncmp+12]
	bu .LBB61_10
.LBB61_10:
	ldw r0, dp[__llvm_gcov_ctr.61+36]
	ldw r1, dp[__llvm_gcov_ctr.61+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.61+32]
	stw r0, dp[__llvm_gcov_ctr.61+36]
	ldw r0, sp[4]
	sub r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[6]
	add r0, r0, 1
	stw r0, sp[6]
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB61_1
.LBB61_11:
	ldw r0, sp[4]
	bf r0, .LBB61_16
	bu .LBB61_12
.LBB61_12:
	ldw r0, dp[.L__profc_wcsncmp+68]
	ldw r1, dp[.L__profc_wcsncmp+64]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wcsncmp+64]
	stw r0, dp[.L__profc_wcsncmp+68]
	ldw r0, sp[6]
	ld8u r0, r0[r2]
	ldw r1, sp[5]
	ld8u r1, r1[r2]
	lss r0, r0, r1
	bf r0, .LBB61_14
	bu .LBB61_13
.LBB61_13:
	ldw r0, dp[__llvm_gcov_ctr.61+44]
	ldw r1, dp[__llvm_gcov_ctr.61+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.61+40]
	stw r0, dp[__llvm_gcov_ctr.61+44]
	ldw r0, dp[.L__profc_wcsncmp+76]
	ldw r1, dp[.L__profc_wcsncmp+72]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wcsncmp+72]
	stw r0, dp[.L__profc_wcsncmp+76]
	mkmsk r0, 32
	stw r0, sp[1]
	bu .LBB61_15
.LBB61_14:
	ldw r0, dp[__llvm_gcov_ctr.61+52]
	ldw r1, dp[__llvm_gcov_ctr.61+48]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.61+48]
	stw r0, dp[__llvm_gcov_ctr.61+52]
	ldw r0, sp[6]
	ld8u r1, r0[r2]
	ldw r0, sp[5]
	ld8u r0, r0[r2]
	lss r0, r0, r1
	stw r0, sp[1]
	bu .LBB61_15
.LBB61_15:
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB61_17
.LBB61_16:
	ldw r1, dp[__llvm_gcov_ctr.61+60]
	ldw r2, dp[__llvm_gcov_ctr.61+56]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.61+56]
	stw r1, dp[__llvm_gcov_ctr.61+60]
	stw r0, sp[0]
	bu .LBB61_17
.LBB61_17:
	ldw r0, sp[0]
	ldw r4, sp[7]
	retsp 8
	.cc_bottom wcsncmp.function
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp

	.globl	wmemchr
	.p2align	2
	.type	wmemchr,@function
	.cc_top wmemchr.function,wmemchr
wmemchr:
	entsp 7
	stw r4, sp[6]
	stw r0, sp[5]
	ldc r3, 0
	ldaw r0, sp[4]
	st8 r1, r0[r3]
	stw r2, sp[3]
	ldw r0, dp[.L__profc_wmemchr+4]
	ldw r1, dp[.L__profc_wmemchr]
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemchr]
	stw r0, dp[.L__profc_wmemchr+4]
	bu .LBB62_1
.LBB62_1:
	ldw r0, sp[3]
	ldc r1, 0
	stw r1, sp[2]
	bf r0, .LBB62_4
	bu .LBB62_2
.LBB62_2:
	ldw r0, dp[__llvm_gcov_ctr.62+4]
	ldw r1, dp[__llvm_gcov_ctr.62]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.62]
	stw r0, dp[__llvm_gcov_ctr.62+4]
	ldw r0, dp[.L__profc_wmemchr+20]
	ldw r1, dp[.L__profc_wmemchr+16]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wmemchr+16]
	stw r0, dp[.L__profc_wmemchr+20]
	ldw r0, sp[5]
	ld8u r0, r0[r2]
	ldaw r1, sp[4]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[1]
	stw r1, sp[2]
	bt r0, .LBB62_4
	bu .LBB62_3
.LBB62_3:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.62+12]
	ldw r2, dp[__llvm_gcov_ctr.62+8]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.62+8]
	stw r1, dp[__llvm_gcov_ctr.62+12]
	ldw r1, dp[.L__profc_wmemchr+28]
	ldw r2, dp[.L__profc_wmemchr+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_wmemchr+24]
	stw r1, dp[.L__profc_wmemchr+28]
	stw r0, sp[2]
	bu .LBB62_4
.LBB62_4:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB62_7
	bu .LBB62_5
.LBB62_5:
	ldw r0, dp[.L__profc_wmemchr+12]
	ldw r1, dp[.L__profc_wmemchr+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemchr+8]
	stw r0, dp[.L__profc_wmemchr+12]
	bu .LBB62_6
.LBB62_6:
	ldw r0, dp[__llvm_gcov_ctr.62+20]
	ldw r1, dp[__llvm_gcov_ctr.62+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.62+16]
	stw r0, dp[__llvm_gcov_ctr.62+20]
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB62_1
.LBB62_7:
	ldw r0, sp[3]
	bf r0, .LBB62_9
	bu .LBB62_8
.LBB62_8:
	ldw r0, dp[__llvm_gcov_ctr.62+28]
	ldw r1, dp[__llvm_gcov_ctr.62+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.62+24]
	stw r0, dp[__llvm_gcov_ctr.62+28]
	ldw r0, dp[.L__profc_wmemchr+36]
	ldw r1, dp[.L__profc_wmemchr+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemchr+32]
	stw r0, dp[.L__profc_wmemchr+36]
	ldw r0, sp[5]
	stw r0, sp[0]
	bu .LBB62_10
.LBB62_9:
	ldw r1, dp[__llvm_gcov_ctr.62+36]
	ldw r2, dp[__llvm_gcov_ctr.62+32]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.62+32]
	stw r1, dp[__llvm_gcov_ctr.62+36]
	stw r0, sp[0]
	bu .LBB62_10
.LBB62_10:
	ldw r0, sp[0]
	ldw r4, sp[6]
	retsp 7
	.cc_bottom wmemchr.function
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr

	.globl	wmemcmp
	.p2align	2
	.type	wmemcmp,@function
	.cc_top wmemcmp.function,wmemcmp
wmemcmp:
	entsp 8
	stw r4, sp[7]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r0, dp[.L__profc_wmemcmp+4]
	ldw r1, dp[.L__profc_wmemcmp]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemcmp]
	stw r0, dp[.L__profc_wmemcmp+4]
	bu .LBB63_1
.LBB63_1:
	ldw r0, sp[4]
	ldc r1, 0
	stw r1, sp[3]
	bf r0, .LBB63_4
	bu .LBB63_2
.LBB63_2:
	ldw r0, dp[__llvm_gcov_ctr.63+4]
	ldw r1, dp[__llvm_gcov_ctr.63]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.63]
	stw r0, dp[__llvm_gcov_ctr.63+4]
	ldw r0, dp[.L__profc_wmemcmp+20]
	ldw r1, dp[.L__profc_wmemcmp+16]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wmemcmp+16]
	stw r0, dp[.L__profc_wmemcmp+20]
	ldw r0, sp[6]
	ld8u r0, r0[r2]
	ldw r1, sp[5]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	stw r0, sp[2]
	mov r1, r0
	stw r1, sp[3]
	bf r0, .LBB63_4
	bu .LBB63_3
.LBB63_3:
	ldw r0, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.63+12]
	ldw r2, dp[__llvm_gcov_ctr.63+8]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.63+8]
	stw r1, dp[__llvm_gcov_ctr.63+12]
	ldw r1, dp[.L__profc_wmemcmp+28]
	ldw r2, dp[.L__profc_wmemcmp+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_wmemcmp+24]
	stw r1, dp[.L__profc_wmemcmp+28]
	stw r0, sp[3]
	bu .LBB63_4
.LBB63_4:
	ldw r0, sp[3]
	zext r0, 1
	bf r0, .LBB63_7
	bu .LBB63_5
.LBB63_5:
	ldw r0, dp[.L__profc_wmemcmp+12]
	ldw r1, dp[.L__profc_wmemcmp+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemcmp+8]
	stw r0, dp[.L__profc_wmemcmp+12]
	bu .LBB63_6
.LBB63_6:
	ldw r0, dp[__llvm_gcov_ctr.63+20]
	ldw r1, dp[__llvm_gcov_ctr.63+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.63+16]
	stw r0, dp[__llvm_gcov_ctr.63+20]
	ldw r0, sp[4]
	sub r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[6]
	add r0, r0, 1
	stw r0, sp[6]
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB63_1
.LBB63_7:
	ldw r0, sp[4]
	bf r0, .LBB63_12
	bu .LBB63_8
.LBB63_8:
	ldw r0, dp[.L__profc_wmemcmp+36]
	ldw r1, dp[.L__profc_wmemcmp+32]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wmemcmp+32]
	stw r0, dp[.L__profc_wmemcmp+36]
	ldw r0, sp[6]
	ld8u r0, r0[r2]
	ldw r1, sp[5]
	ld8u r1, r1[r2]
	lss r0, r0, r1
	bf r0, .LBB63_10
	bu .LBB63_9
.LBB63_9:
	ldw r0, dp[__llvm_gcov_ctr.63+28]
	ldw r1, dp[__llvm_gcov_ctr.63+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.63+24]
	stw r0, dp[__llvm_gcov_ctr.63+28]
	ldw r0, dp[.L__profc_wmemcmp+44]
	ldw r1, dp[.L__profc_wmemcmp+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemcmp+40]
	stw r0, dp[.L__profc_wmemcmp+44]
	mkmsk r0, 32
	stw r0, sp[1]
	bu .LBB63_11
.LBB63_10:
	ldw r0, dp[__llvm_gcov_ctr.63+36]
	ldw r1, dp[__llvm_gcov_ctr.63+32]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.63+32]
	stw r0, dp[__llvm_gcov_ctr.63+36]
	ldw r0, sp[6]
	ld8u r1, r0[r2]
	ldw r0, sp[5]
	ld8u r0, r0[r2]
	lss r0, r0, r1
	stw r0, sp[1]
	bu .LBB63_11
.LBB63_11:
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB63_13
.LBB63_12:
	ldw r1, dp[__llvm_gcov_ctr.63+44]
	ldw r2, dp[__llvm_gcov_ctr.63+40]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.63+40]
	stw r1, dp[__llvm_gcov_ctr.63+44]
	stw r0, sp[0]
	bu .LBB63_13
.LBB63_13:
	ldw r0, sp[0]
	ldw r4, sp[7]
	retsp 8
	.cc_bottom wmemcmp.function
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp

	.globl	wmemcpy
	.p2align	2
	.type	wmemcpy,@function
	.cc_top wmemcpy.function,wmemcpy
wmemcpy:
	entsp 8
	stw r4, sp[7]
	stw r5, sp[6]
	stw r6, sp[5]
	stw r2, sp[0]
	mov r11, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.64+4]
	ldw r5, dp[__llvm_gcov_ctr.64]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.64]
	stw r4, dp[__llvm_gcov_ctr.64+4]
	stw r11, sp[4]
	stw r1, sp[3]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_wmemcpy+4]
	ldw r1, dp[.L__profc_wmemcpy]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemcpy]
	stw r0, dp[.L__profc_wmemcpy+4]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB64_1
.LBB64_1:
	ldw r0, sp[2]
	sub r1, r0, 1
	stw r1, sp[2]
	bf r0, .LBB64_3
	bu .LBB64_2
.LBB64_2:
	ldw r0, dp[__llvm_gcov_ctr.64+12]
	ldw r1, dp[__llvm_gcov_ctr.64+8]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.64+8]
	stw r0, dp[__llvm_gcov_ctr.64+12]
	ldw r0, dp[.L__profc_wmemcpy+12]
	ldw r1, dp[.L__profc_wmemcpy+8]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wmemcpy+8]
	stw r0, dp[.L__profc_wmemcpy+12]
	ldw r0, sp[3]
	add r1, r0, 1
	stw r1, sp[3]
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	add r3, r1, 1
	stw r3, sp[4]
	st8 r0, r1[r2]
	bu .LBB64_1
.LBB64_3:
	ldw r0, sp[1]
	ldw r6, sp[5]
	ldw r5, sp[6]
	ldw r4, sp[7]
	retsp 8
	.cc_bottom wmemcpy.function
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy

	.globl	wmemmove
	.p2align	2
	.type	wmemmove,@function
	.cc_top wmemmove.function,wmemmove
wmemmove:
	entsp 5
	stw r0, sp[3]
	stw r1, sp[2]
	stw r2, sp[1]
	ldw r0, dp[.L__profc_wmemmove+4]
	ldw r1, dp[.L__profc_wmemmove]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemmove]
	stw r0, dp[.L__profc_wmemmove+4]
	ldw r0, sp[3]
	stw r0, sp[0]
	ldw r0, sp[3]
	ldw r1, sp[2]
	eq r0, r0, r1
	bf r0, .LBB65_2
	bu .LBB65_1
.LBB65_1:
	ldw r0, dp[__llvm_gcov_ctr.65+4]
	ldw r1, dp[__llvm_gcov_ctr.65]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.65]
	stw r0, dp[__llvm_gcov_ctr.65+4]
	ldw r0, dp[.L__profc_wmemmove+12]
	ldw r1, dp[.L__profc_wmemmove+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemmove+8]
	stw r0, dp[.L__profc_wmemmove+12]
	ldw r0, sp[3]
	stw r0, sp[4]
	bu .LBB65_12
.LBB65_2:
	ldw r0, sp[3]
	ldw r1, sp[2]
	sub r0, r0, r1
	ldw r1, sp[1]
	lsu r0, r0, r1
	bf r0, .LBB65_7
	bu .LBB65_3
.LBB65_3:
	ldw r0, dp[__llvm_gcov_ctr.65+12]
	ldw r1, dp[__llvm_gcov_ctr.65+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.65+8]
	stw r0, dp[__llvm_gcov_ctr.65+12]
	ldw r0, dp[.L__profc_wmemmove+20]
	ldw r1, dp[.L__profc_wmemmove+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemmove+16]
	stw r0, dp[.L__profc_wmemmove+20]
	bu .LBB65_4
.LBB65_4:
	ldw r0, sp[1]
	sub r1, r0, 1
	stw r1, sp[1]
	bf r0, .LBB65_6
	bu .LBB65_5
.LBB65_5:
	ldw r0, dp[__llvm_gcov_ctr.65+20]
	ldw r1, dp[__llvm_gcov_ctr.65+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.65+16]
	stw r0, dp[__llvm_gcov_ctr.65+20]
	ldw r0, dp[.L__profc_wmemmove+28]
	ldw r1, dp[.L__profc_wmemmove+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemmove+24]
	stw r0, dp[.L__profc_wmemmove+28]
	ldw r0, sp[2]
	ldw r2, sp[1]
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	st8 r0, r1[r2]
	bu .LBB65_4
.LBB65_6:
	bu .LBB65_11
.LBB65_7:
	bu .LBB65_8
.LBB65_8:
	ldw r0, sp[1]
	sub r1, r0, 1
	stw r1, sp[1]
	bf r0, .LBB65_10
	bu .LBB65_9
.LBB65_9:
	ldw r0, dp[__llvm_gcov_ctr.65+28]
	ldw r1, dp[__llvm_gcov_ctr.65+24]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.65+24]
	stw r0, dp[__llvm_gcov_ctr.65+28]
	ldw r0, dp[.L__profc_wmemmove+36]
	ldw r1, dp[.L__profc_wmemmove+32]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wmemmove+32]
	stw r0, dp[.L__profc_wmemmove+36]
	ldw r0, sp[2]
	add r1, r0, 1
	stw r1, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	add r3, r1, 1
	stw r3, sp[3]
	st8 r0, r1[r2]
	bu .LBB65_8
.LBB65_10:
	ldw r0, dp[__llvm_gcov_ctr.65+36]
	ldw r1, dp[__llvm_gcov_ctr.65+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.65+32]
	stw r0, dp[__llvm_gcov_ctr.65+36]
	bu .LBB65_11
.LBB65_11:
	ldw r0, sp[0]
	stw r0, sp[4]
	bu .LBB65_12
.LBB65_12:
	ldw r0, sp[4]
	retsp 5
	.cc_bottom wmemmove.function
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove

	.globl	wmemset
	.p2align	2
	.type	wmemset,@function
	.cc_top wmemset.function,wmemset
wmemset:
	entsp 8
	stw r4, sp[7]
	stw r5, sp[6]
	stw r6, sp[5]
	stw r2, sp[0]
	mov r11, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.66+4]
	ldw r5, dp[__llvm_gcov_ctr.66]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.66]
	stw r4, dp[__llvm_gcov_ctr.66+4]
	stw r11, sp[4]
	ldaw r11, sp[3]
	st8 r1, r11[r3]
	stw r0, sp[2]
	ldw r0, dp[.L__profc_wmemset+4]
	ldw r1, dp[.L__profc_wmemset]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_wmemset]
	stw r0, dp[.L__profc_wmemset+4]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB66_1
.LBB66_1:
	ldw r0, sp[2]
	sub r1, r0, 1
	stw r1, sp[2]
	bf r0, .LBB66_3
	bu .LBB66_2
.LBB66_2:
	ldw r0, dp[__llvm_gcov_ctr.66+12]
	ldw r1, dp[__llvm_gcov_ctr.66+8]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.66+8]
	stw r0, dp[__llvm_gcov_ctr.66+12]
	ldw r0, dp[.L__profc_wmemset+12]
	ldw r1, dp[.L__profc_wmemset+8]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_wmemset+8]
	stw r0, dp[.L__profc_wmemset+12]
	ldaw r0, sp[3]
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	add r3, r1, 1
	stw r3, sp[4]
	st8 r0, r1[r2]
	bu .LBB66_1
.LBB66_3:
	ldw r0, sp[1]
	ldw r6, sp[5]
	ldw r5, sp[6]
	ldw r4, sp[7]
	retsp 8
	.cc_bottom wmemset.function
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset

	.globl	bcopy
	.p2align	2
	.type	bcopy,@function
	.cc_top bcopy.function,bcopy
bcopy:
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	stw r2, sp[2]
	ldw r0, dp[.L__profc_bcopy+4]
	ldw r1, dp[.L__profc_bcopy]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bcopy]
	stw r0, dp[.L__profc_bcopy+4]
	ldw r0, sp[4]
	stw r0, sp[1]
	ldw r0, sp[3]
	stw r0, sp[0]
	ldw r0, sp[1]
	ldw r1, sp[0]
	lsu r0, r0, r1
	bf r0, .LBB67_6
	bu .LBB67_1
.LBB67_1:
	ldw r0, dp[__llvm_gcov_ctr.67+4]
	ldw r1, dp[__llvm_gcov_ctr.67]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.67]
	stw r0, dp[__llvm_gcov_ctr.67+4]
	ldw r0, dp[.L__profc_bcopy+12]
	ldw r1, dp[.L__profc_bcopy+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bcopy+8]
	stw r0, dp[.L__profc_bcopy+12]
	ldw r1, sp[2]
	ldw r0, sp[1]
	add r0, r0, r1
	stw r0, sp[1]
	ldw r1, sp[2]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	bu .LBB67_2
.LBB67_2:
	ldw r0, sp[2]
	bf r0, .LBB67_5
	bu .LBB67_3
.LBB67_3:
	ldw r0, dp[.L__profc_bcopy+20]
	ldw r1, dp[.L__profc_bcopy+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bcopy+16]
	stw r0, dp[.L__profc_bcopy+20]
	ldw r0, sp[1]
	sub r1, r0, 1
	stw r1, sp[1]
	mkmsk r2, 32
	ld8u r0, r0[r2]
	ldw r1, sp[0]
	sub r3, r1, 1
	stw r3, sp[0]
	st8 r0, r1[r2]
	bu .LBB67_4
.LBB67_4:
	ldw r0, dp[__llvm_gcov_ctr.67+12]
	ldw r1, dp[__llvm_gcov_ctr.67+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.67+8]
	stw r0, dp[__llvm_gcov_ctr.67+12]
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	bu .LBB67_2
.LBB67_5:
	bu .LBB67_13
.LBB67_6:
	ldw r0, sp[1]
	ldw r1, sp[0]
	eq r0, r0, r1
	bt r0, .LBB67_12
	bu .LBB67_7
.LBB67_7:
	ldw r0, dp[.L__profc_bcopy+28]
	ldw r1, dp[.L__profc_bcopy+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bcopy+24]
	stw r0, dp[.L__profc_bcopy+28]
	bu .LBB67_8
.LBB67_8:
	ldw r0, sp[2]
	bf r0, .LBB67_11
	bu .LBB67_9
.LBB67_9:
	ldw r0, dp[__llvm_gcov_ctr.67+20]
	ldw r1, dp[__llvm_gcov_ctr.67+16]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.67+16]
	stw r0, dp[__llvm_gcov_ctr.67+20]
	ldw r0, dp[.L__profc_bcopy+36]
	ldw r1, dp[.L__profc_bcopy+32]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_bcopy+32]
	stw r0, dp[.L__profc_bcopy+36]
	ldw r0, sp[1]
	add r1, r0, 1
	stw r1, sp[1]
	ld8u r0, r0[r2]
	ldw r1, sp[0]
	add r3, r1, 1
	stw r3, sp[0]
	st8 r0, r1[r2]
	bu .LBB67_10
.LBB67_10:
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	bu .LBB67_8
.LBB67_11:
	ldw r0, dp[__llvm_gcov_ctr.67+28]
	ldw r1, dp[__llvm_gcov_ctr.67+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.67+24]
	stw r0, dp[__llvm_gcov_ctr.67+28]
	bu .LBB67_12
.LBB67_12:
	ldw r0, dp[__llvm_gcov_ctr.67+36]
	ldw r1, dp[__llvm_gcov_ctr.67+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.67+32]
	stw r0, dp[__llvm_gcov_ctr.67+36]
	bu .LBB67_13
.LBB67_13:
	retsp 5
	.cc_bottom bcopy.function
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy

	.globl	rotl64
	.p2align	2
	.type	rotl64,@function
	.cc_top rotl64.function,rotl64
rotl64:
	entsp 13
	stw r4, sp[12]
	stw r5, sp[11]
	stw r6, sp[10]
	stw r2, sp[1]
	mov r11, r1
	mov r1, r0
	ldw r0, sp[1]
	ldw r4, dp[__llvm_gcov_ctr.68+4]
	ldw r5, dp[__llvm_gcov_ctr.68]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.68]
	stw r4, dp[__llvm_gcov_ctr.68+4]
	stw r11, sp[9]
	stw r1, sp[8]
	stw r0, sp[7]
	ldw r0, dp[.L__profc_rotl64+4]
	ldw r1, dp[.L__profc_rotl64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_rotl64]
	stw r0, dp[.L__profc_rotl64+4]
	ldw r0, sp[8]
	stw r0, sp[3]
	ldw r1, sp[9]
	stw r1, sp[4]
	ldw r2, sp[7]
	stw r2, sp[2]
	bl __ashldi3
	ldw r3, sp[2]
	mov r2, r0
	ldw r0, sp[3]
	stw r2, sp[5]
	mov r2, r1
	ldw r1, sp[4]
	stw r2, sp[6]
	ldc r2, 64
	sub r2, r2, r3
	bl __lshrdi3
	mov r3, r0
	ldw r0, sp[5]
	mov r2, r1
	ldw r1, sp[6]
	or r0, r0, r3
	or r1, r1, r2
	ldw r6, sp[10]
	ldw r5, sp[11]
	ldw r4, sp[12]
	retsp 13
	.cc_bottom rotl64.function
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64

	.globl	rotr64
	.p2align	2
	.type	rotr64,@function
	.cc_top rotr64.function,rotr64
rotr64:
	entsp 13
	stw r4, sp[12]
	stw r5, sp[11]
	stw r6, sp[10]
	stw r2, sp[1]
	mov r11, r1
	mov r1, r0
	ldw r0, sp[1]
	ldw r4, dp[__llvm_gcov_ctr.69+4]
	ldw r5, dp[__llvm_gcov_ctr.69]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.69]
	stw r4, dp[__llvm_gcov_ctr.69+4]
	stw r11, sp[9]
	stw r1, sp[8]
	stw r0, sp[7]
	ldw r0, dp[.L__profc_rotr64+4]
	ldw r1, dp[.L__profc_rotr64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_rotr64]
	stw r0, dp[.L__profc_rotr64+4]
	ldw r0, sp[8]
	stw r0, sp[3]
	ldw r1, sp[9]
	stw r1, sp[4]
	ldw r2, sp[7]
	stw r2, sp[2]
	bl __lshrdi3
	ldw r3, sp[2]
	mov r2, r0
	ldw r0, sp[3]
	stw r2, sp[5]
	mov r2, r1
	ldw r1, sp[4]
	stw r2, sp[6]
	ldc r2, 64
	sub r2, r2, r3
	bl __ashldi3
	mov r3, r0
	ldw r0, sp[5]
	mov r2, r1
	ldw r1, sp[6]
	or r0, r0, r3
	or r1, r1, r2
	ldw r6, sp[10]
	ldw r5, sp[11]
	ldw r4, sp[12]
	retsp 13
	.cc_bottom rotr64.function
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64

	.globl	rotl32
	.p2align	2
	.type	rotl32,@function
	.cc_top rotl32.function,rotl32
rotl32:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.70+4]
	ldw r4, dp[__llvm_gcov_ctr.70]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.70]
	stw r11, dp[__llvm_gcov_ctr.70+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc_rotl32+4]
	ldw r1, dp[.L__profc_rotl32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_rotl32]
	stw r0, dp[.L__profc_rotl32+4]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotl32.function
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32

	.globl	rotr32
	.p2align	2
	.type	rotr32,@function
	.cc_top rotr32.function,rotr32
rotr32:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.71+4]
	ldw r4, dp[__llvm_gcov_ctr.71]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.71]
	stw r11, dp[__llvm_gcov_ctr.71+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc_rotr32+4]
	ldw r1, dp[.L__profc_rotr32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_rotr32]
	stw r0, dp[.L__profc_rotr32+4]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotr32.function
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32

	.globl	rotl_sz
	.p2align	2
	.type	rotl_sz,@function
	.cc_top rotl_sz.function,rotl_sz
rotl_sz:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.72+4]
	ldw r4, dp[__llvm_gcov_ctr.72]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.72]
	stw r11, dp[__llvm_gcov_ctr.72+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc_rotl_sz+4]
	ldw r1, dp[.L__profc_rotl_sz]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_rotl_sz]
	stw r0, dp[.L__profc_rotl_sz+4]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotl_sz.function
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz

	.globl	rotr_sz
	.p2align	2
	.type	rotr_sz,@function
	.cc_top rotr_sz.function,rotr_sz
rotr_sz:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.73+4]
	ldw r4, dp[__llvm_gcov_ctr.73]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.73]
	stw r11, dp[__llvm_gcov_ctr.73+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc_rotr_sz+4]
	ldw r1, dp[.L__profc_rotr_sz]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_rotr_sz]
	stw r0, dp[.L__profc_rotr_sz+4]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotr_sz.function
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz

	.globl	rotl16
	.p2align	2
	.type	rotl16,@function
	.cc_top rotl16.function,rotl16
rotl16:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	mov r2, r1
	mov r3, r0
	ldw r0, dp[__llvm_gcov_ctr.74+4]
	ldw r4, dp[__llvm_gcov_ctr.74]
	ldc r1, 0
	mkmsk r11, 1
	ladd r5, r4, r4, r11, r1
	add r0, r0, r5
	stw r4, dp[__llvm_gcov_ctr.74]
	stw r0, dp[__llvm_gcov_ctr.74+4]
	ldaw r0, sp[1]
	st16 r3, r0[r1]
	stw r2, sp[0]
	ldw r2, dp[.L__profc_rotl16+4]
	ldw r3, dp[.L__profc_rotl16]
	ladd r11, r3, r3, r11, r1
	add r2, r2, r11
	stw r3, dp[.L__profc_rotl16]
	stw r2, dp[.L__profc_rotl16+4]
	ld16s r1, r0[r1]
	zext r1, 16
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 16
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	zext r0, 16
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotl16.function
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16

	.globl	rotr16
	.p2align	2
	.type	rotr16,@function
	.cc_top rotr16.function,rotr16
rotr16:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	mov r2, r1
	mov r3, r0
	ldw r0, dp[__llvm_gcov_ctr.75+4]
	ldw r4, dp[__llvm_gcov_ctr.75]
	ldc r1, 0
	mkmsk r11, 1
	ladd r5, r4, r4, r11, r1
	add r0, r0, r5
	stw r4, dp[__llvm_gcov_ctr.75]
	stw r0, dp[__llvm_gcov_ctr.75+4]
	ldaw r0, sp[1]
	st16 r3, r0[r1]
	stw r2, sp[0]
	ldw r2, dp[.L__profc_rotr16+4]
	ldw r3, dp[.L__profc_rotr16]
	ladd r11, r3, r3, r11, r1
	add r2, r2, r11
	stw r3, dp[.L__profc_rotr16]
	stw r2, dp[.L__profc_rotr16+4]
	ld16s r1, r0[r1]
	zext r1, 16
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 16
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	zext r0, 16
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotr16.function
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16

	.globl	rotl8
	.p2align	2
	.type	rotl8,@function
	.cc_top rotl8.function,rotl8
rotl8:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	mov r2, r1
	mov r3, r0
	ldw r0, dp[__llvm_gcov_ctr.76+4]
	ldw r4, dp[__llvm_gcov_ctr.76]
	ldc r1, 0
	mkmsk r11, 1
	ladd r5, r4, r4, r11, r1
	add r0, r0, r5
	stw r4, dp[__llvm_gcov_ctr.76]
	stw r0, dp[__llvm_gcov_ctr.76+4]
	ldaw r0, sp[1]
	st8 r3, r0[r1]
	stw r2, sp[0]
	ldw r2, dp[.L__profc_rotl8+4]
	ldw r3, dp[.L__profc_rotl8]
	ladd r11, r3, r3, r11, r1
	add r2, r2, r11
	stw r3, dp[.L__profc_rotl8]
	stw r2, dp[.L__profc_rotl8+4]
	ld8u r1, r0[r1]
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 8
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	zext r0, 8
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotl8.function
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8

	.globl	rotr8
	.p2align	2
	.type	rotr8,@function
	.cc_top rotr8.function,rotr8
rotr8:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	mov r2, r1
	mov r3, r0
	ldw r0, dp[__llvm_gcov_ctr.77+4]
	ldw r4, dp[__llvm_gcov_ctr.77]
	ldc r1, 0
	mkmsk r11, 1
	ladd r5, r4, r4, r11, r1
	add r0, r0, r5
	stw r4, dp[__llvm_gcov_ctr.77]
	stw r0, dp[__llvm_gcov_ctr.77+4]
	ldaw r0, sp[1]
	st8 r3, r0[r1]
	stw r2, sp[0]
	ldw r2, dp[.L__profc_rotr8+4]
	ldw r3, dp[.L__profc_rotr8]
	ladd r11, r3, r3, r11, r1
	add r2, r2, r11
	stw r3, dp[.L__profc_rotr8]
	stw r2, dp[.L__profc_rotr8+4]
	ld8u r1, r0[r1]
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 8
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	zext r0, 8
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom rotr8.function
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8

	.globl	bswap_16
	.p2align	2
	.type	bswap_16,@function
	.cc_top bswap_16.function,bswap_16
bswap_16:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.78+4]
	ldw r3, dp[__llvm_gcov_ctr.78]
	ldc r2, 0
	mkmsk r11, 1
	ladd r4, r3, r3, r11, r2
	add r1, r1, r4
	stw r3, dp[__llvm_gcov_ctr.78]
	stw r1, dp[__llvm_gcov_ctr.78+4]
	ldaw r1, sp[0]
	st16 r0, r1[r2]
	ldw r0, dp[.L__profc_bswap_16+4]
	ldw r3, dp[.L__profc_bswap_16]
	ladd r11, r3, r3, r11, r2
	add r0, r0, r11
	stw r3, dp[.L__profc_bswap_16]
	stw r0, dp[.L__profc_bswap_16+4]
	ldaw r0, sp[0]
	mkmsk r3, 8
	st16 r3, r0[r2]
	ld16s r1, r1[r2]
	ld16s r2, r0[r2]
	shl r0, r2, 8
	and r0, r1, r0
	ldc r3, 65280
	and r0, r0, r3
	shr r0, r0, 8
	and r1, r1, r2
	shl r1, r1, 8
	or r0, r0, r1
	zext r0, 16
	ldw r4, sp[1]
	retsp 2
	.cc_bottom bswap_16.function
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16

	.globl	bswap_32
	.p2align	2
	.type	bswap_32,@function
	.cc_top bswap_32.function,bswap_32
bswap_32:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.79+4]
	ldw r11, dp[__llvm_gcov_ctr.79]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.79]
	stw r1, dp[__llvm_gcov_ctr.79+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc_bswap_32+4]
	ldw r1, dp[.L__profc_bswap_32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_bswap_32]
	stw r0, dp[.L__profc_bswap_32+4]
	mkmsk r0, 8
	stw r0, sp[0]
	ldw r1, sp[1]
	ldw r2, sp[0]
	shl r0, r2, 24
	and r0, r1, r0
	shr r0, r0, 24
	shl r3, r2, 16
	and r11, r1, r3
	shr r11, r11, 8
	or r0, r0, r11
	shl r11, r1, 8
	and r3, r3, r11
	or r0, r0, r3
	and r1, r1, r2
	shl r1, r1, 24
	or r0, r0, r1
	ldw r4, sp[2]
	retsp 3
	.cc_bottom bswap_32.function
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32

	.globl	bswap_64
	.p2align	2
	.type	bswap_64,@function
	.cc_top bswap_64.function,bswap_64
bswap_64:
	entsp 8
	stw r4, sp[7]
	stw r5, sp[6]
	stw r6, sp[5]
	stw r7, sp[4]
	mov r2, r1
	mov r1, r0
	ldw r11, dp[__llvm_gcov_ctr.80+4]
	ldw r4, dp[__llvm_gcov_ctr.80]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.80]
	stw r11, dp[__llvm_gcov_ctr.80+4]
	stw r2, sp[3]
	stw r1, sp[2]
	ldw r1, dp[.L__profc_bswap_64+4]
	ldw r2, dp[.L__profc_bswap_64]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_bswap_64]
	stw r1, dp[.L__profc_bswap_64+4]
	stw r0, sp[1]
	mkmsk r0, 8
	stw r0, sp[0]
	ldw r2, sp[2]
	ldw r5, sp[3]
	ldw r3, sp[0]
	shl r0, r3, 24
	and r0, r5, r0
	shr r0, r0, 24
	shl r11, r3, 16
	and r1, r5, r11
	shr r1, r1, 8
	or r0, r0, r1
	shl r4, r3, 8
	and r6, r5, r4
	shr r1, r6, 24
	shl r6, r6, 8
	or r0, r0, r6
	and r7, r5, r3
	shr r6, r7, 8
	shl r7, r7, 24
	or r0, r0, r7
	or r1, r1, r6
	shr r7, r2, 24
	shl r6, r5, 8
	or r6, r6, r7
	and r6, r3, r6
	or r1, r1, r6
	shr r6, r2, 8
	shl r5, r5, 24
	or r5, r5, r6
	and r4, r4, r5
	or r1, r1, r4
	shl r4, r2, 8
	and r11, r11, r4
	or r1, r1, r11
	and r2, r2, r3
	shl r2, r2, 24
	or r1, r1, r2
	ldw r7, sp[4]
	ldw r6, sp[5]
	ldw r5, sp[6]
	ldw r4, sp[7]
	retsp 8
	.cc_bottom bswap_64.function
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64

	.globl	ffs
	.p2align	2
	.type	ffs,@function
	.cc_top ffs.function,ffs
ffs:
	entsp 3
	stw r0, sp[1]
	ldw r1, dp[.L__profc_ffs+4]
	ldw r2, dp[.L__profc_ffs]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_ffs]
	stw r1, dp[.L__profc_ffs+4]
	stw r0, sp[0]
	bu .LBB81_1
.LBB81_1:
	ldw r1, sp[0]
	mkmsk r0, 5
	lsu r0, r0, r1
	bt r0, .LBB81_6
	bu .LBB81_2
.LBB81_2:
	ldw r0, dp[.L__profc_ffs+12]
	ldw r1, dp[.L__profc_ffs+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ffs+8]
	stw r0, dp[.L__profc_ffs+12]
	ldw r0, sp[1]
	ldw r1, sp[0]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB81_4
	bu .LBB81_3
.LBB81_3:
	ldw r0, dp[__llvm_gcov_ctr.81+4]
	ldw r1, dp[__llvm_gcov_ctr.81]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.81]
	stw r0, dp[__llvm_gcov_ctr.81+4]
	ldw r0, dp[.L__profc_ffs+20]
	ldw r1, dp[.L__profc_ffs+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ffs+16]
	stw r0, dp[.L__profc_ffs+20]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB81_7
.LBB81_4:
	bu .LBB81_5
.LBB81_5:
	ldw r0, dp[__llvm_gcov_ctr.81+12]
	ldw r1, dp[__llvm_gcov_ctr.81+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.81+8]
	stw r0, dp[__llvm_gcov_ctr.81+12]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB81_1
.LBB81_6:
	ldw r1, dp[__llvm_gcov_ctr.81+20]
	ldw r2, dp[__llvm_gcov_ctr.81+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.81+16]
	stw r1, dp[__llvm_gcov_ctr.81+20]
	stw r0, sp[2]
	bu .LBB81_7
.LBB81_7:
	ldw r0, sp[2]
	retsp 3
	.cc_bottom ffs.function
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs

	.globl	libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
	.cc_top libiberty_ffs.function,libiberty_ffs
libiberty_ffs:
	entsp 3
	stw r0, sp[1]
	ldw r0, dp[.L__profc_libiberty_ffs+4]
	ldw r1, dp[.L__profc_libiberty_ffs]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_libiberty_ffs]
	stw r0, dp[.L__profc_libiberty_ffs+4]
	ldw r0, sp[1]
	bt r0, .LBB82_2
	bu .LBB82_1
.LBB82_1:
	ldw r1, dp[__llvm_gcov_ctr.82+12]
	ldw r2, dp[__llvm_gcov_ctr.82+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.82+8]
	stw r1, dp[__llvm_gcov_ctr.82+12]
	ldw r1, dp[.L__profc_libiberty_ffs+12]
	ldw r2, dp[.L__profc_libiberty_ffs+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_libiberty_ffs+8]
	stw r1, dp[.L__profc_libiberty_ffs+12]
	stw r0, sp[2]
	bu .LBB82_7
.LBB82_2:
	ldw r1, dp[__llvm_gcov_ctr.82+4]
	ldw r2, dp[__llvm_gcov_ctr.82]
	ldc r3, 0
	mkmsk r0, 1
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.82]
	stw r1, dp[__llvm_gcov_ctr.82+4]
	stw r0, sp[0]
	bu .LBB82_3
.LBB82_3:
	ldc r1, 0
	ldaw r0, sp[1]
	ld8u r0, r0[r1]
	zext r0, 1
	bt r0, .LBB82_6
	bu .LBB82_4
.LBB82_4:
	ldw r0, dp[.L__profc_libiberty_ffs+20]
	ldw r1, dp[.L__profc_libiberty_ffs+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_libiberty_ffs+16]
	stw r0, dp[.L__profc_libiberty_ffs+20]
	ldw r0, sp[1]
	ashr r0, r0, 1
	stw r0, sp[1]
	bu .LBB82_5
.LBB82_5:
	ldw r0, dp[__llvm_gcov_ctr.82+20]
	ldw r1, dp[__llvm_gcov_ctr.82+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.82+16]
	stw r0, dp[__llvm_gcov_ctr.82+20]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB82_3
.LBB82_6:
	ldw r0, sp[0]
	stw r0, sp[2]
	bu .LBB82_7
.LBB82_7:
	ldw r0, sp[2]
	retsp 3
	.cc_bottom libiberty_ffs.function
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI83_0:
	.long	4286578687
.LCPI83_1:
	.long	2139095039
	.text
	.globl	gl_isinff
	.p2align	2
	.type	gl_isinff,@function
	.cc_top gl_isinff.function,gl_isinff
gl_isinff:
	entsp 7
	stw r4, sp[6]
	ldw r1, dp[__llvm_gcov_ctr.83+4]
	ldw r11, dp[__llvm_gcov_ctr.83]
	ldc r3, 0
	mkmsk r2, 1
	stw r2, sp[3]
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.83]
	stw r1, dp[__llvm_gcov_ctr.83+4]
	stw r0, sp[5]
	ldw r0, dp[.L__profc_gl_isinff+4]
	ldw r1, dp[.L__profc_gl_isinff]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_gl_isinff]
	stw r0, dp[.L__profc_gl_isinff+4]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI83_0]
	bl __ltsf2
	ldw r1, sp[3]
	ashr r0, r0, 32
	stw r1, sp[4]
	bt r0, .LBB83_3
	bu .LBB83_1
.LBB83_1:
	ldw r0, dp[__llvm_gcov_ctr.83+12]
	ldw r1, dp[__llvm_gcov_ctr.83+8]
	ldc r3, 0
	stw r3, sp[1]
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.83+8]
	stw r0, dp[__llvm_gcov_ctr.83+12]
	ldw r0, dp[.L__profc_gl_isinff+12]
	ldw r1, dp[.L__profc_gl_isinff+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_gl_isinff+8]
	stw r0, dp[.L__profc_gl_isinff+12]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI83_1]
	bl __gtsf2
	mov r1, r0
	ldw r0, sp[1]
	lss r0, r0, r1
	stw r0, sp[2]
	mov r1, r0
	stw r1, sp[4]
	bt r0, .LBB83_3
	bu .LBB83_2
.LBB83_2:
	ldw r0, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.83+20]
	ldw r2, dp[__llvm_gcov_ctr.83+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.83+16]
	stw r1, dp[__llvm_gcov_ctr.83+20]
	ldw r1, dp[.L__profc_gl_isinff+20]
	ldw r2, dp[.L__profc_gl_isinff+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_gl_isinff+16]
	stw r1, dp[.L__profc_gl_isinff+20]
	stw r0, sp[4]
	bu .LBB83_3
.LBB83_3:
	ldw r0, sp[4]
	zext r0, 1
	ldw r4, sp[6]
	retsp 7
	.cc_bottom gl_isinff.function
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI84_0:
	.long	4293918719
.LCPI84_1:
	.long	2146435071
	.text
	.globl	gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
	.cc_top gl_isinfd.function,gl_isinfd
gl_isinfd:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	ldw r11, dp[__llvm_gcov_ctr.84+4]
	ldw r4, dp[__llvm_gcov_ctr.84]
	ldc r3, 0
	mkmsk r2, 1
	stw r2, sp[3]
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.84]
	stw r11, dp[__llvm_gcov_ctr.84+4]
	stw r1, sp[6]
	stw r0, sp[5]
	ldw r0, dp[.L__profc_gl_isinfd+4]
	ldw r1, dp[.L__profc_gl_isinfd]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_gl_isinfd]
	stw r0, dp[.L__profc_gl_isinfd+4]
	ldw r0, sp[5]
	ldw r1, sp[6]
	mkmsk r2, 32
	ldw r3, cp[.LCPI84_0]
	bl __ltdf2
	ldw r1, sp[3]
	ashr r0, r0, 32
	stw r1, sp[4]
	bt r0, .LBB84_3
	bu .LBB84_1
.LBB84_1:
	ldw r0, dp[__llvm_gcov_ctr.84+12]
	ldw r1, dp[__llvm_gcov_ctr.84+8]
	ldc r3, 0
	stw r3, sp[1]
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.84+8]
	stw r0, dp[__llvm_gcov_ctr.84+12]
	ldw r0, dp[.L__profc_gl_isinfd+12]
	ldw r1, dp[.L__profc_gl_isinfd+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_gl_isinfd+8]
	stw r0, dp[.L__profc_gl_isinfd+12]
	ldw r0, sp[5]
	ldw r1, sp[6]
	mkmsk r2, 32
	ldw r3, cp[.LCPI84_1]
	bl __gtdf2
	mov r1, r0
	ldw r0, sp[1]
	lss r0, r0, r1
	stw r0, sp[2]
	mov r1, r0
	stw r1, sp[4]
	bt r0, .LBB84_3
	bu .LBB84_2
.LBB84_2:
	ldw r0, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.84+20]
	ldw r2, dp[__llvm_gcov_ctr.84+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.84+16]
	stw r1, dp[__llvm_gcov_ctr.84+20]
	ldw r1, dp[.L__profc_gl_isinfd+20]
	ldw r2, dp[.L__profc_gl_isinfd+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_gl_isinfd+16]
	stw r1, dp[.L__profc_gl_isinfd+20]
	stw r0, sp[4]
	bu .LBB84_3
.LBB84_3:
	ldw r0, sp[4]
	zext r0, 1
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom gl_isinfd.function
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI85_0:
	.long	4293918719
.LCPI85_1:
	.long	2146435071
	.text
	.globl	gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
	.cc_top gl_isinfl.function,gl_isinfl
gl_isinfl:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	ldw r11, dp[__llvm_gcov_ctr.85+4]
	ldw r4, dp[__llvm_gcov_ctr.85]
	ldc r3, 0
	mkmsk r2, 1
	stw r2, sp[3]
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.85]
	stw r11, dp[__llvm_gcov_ctr.85+4]
	stw r1, sp[6]
	stw r0, sp[5]
	ldw r0, dp[.L__profc_gl_isinfl+4]
	ldw r1, dp[.L__profc_gl_isinfl]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_gl_isinfl]
	stw r0, dp[.L__profc_gl_isinfl+4]
	ldw r0, sp[5]
	ldw r1, sp[6]
	mkmsk r2, 32
	ldw r3, cp[.LCPI85_0]
	bl __ltdf2
	ldw r1, sp[3]
	ashr r0, r0, 32
	stw r1, sp[4]
	bt r0, .LBB85_3
	bu .LBB85_1
.LBB85_1:
	ldw r0, dp[__llvm_gcov_ctr.85+12]
	ldw r1, dp[__llvm_gcov_ctr.85+8]
	ldc r3, 0
	stw r3, sp[1]
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.85+8]
	stw r0, dp[__llvm_gcov_ctr.85+12]
	ldw r0, dp[.L__profc_gl_isinfl+12]
	ldw r1, dp[.L__profc_gl_isinfl+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_gl_isinfl+8]
	stw r0, dp[.L__profc_gl_isinfl+12]
	ldw r0, sp[5]
	ldw r1, sp[6]
	mkmsk r2, 32
	ldw r3, cp[.LCPI85_1]
	bl __gtdf2
	mov r1, r0
	ldw r0, sp[1]
	lss r0, r0, r1
	stw r0, sp[2]
	mov r1, r0
	stw r1, sp[4]
	bt r0, .LBB85_3
	bu .LBB85_2
.LBB85_2:
	ldw r0, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.85+20]
	ldw r2, dp[__llvm_gcov_ctr.85+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.85+16]
	stw r1, dp[__llvm_gcov_ctr.85+20]
	ldw r1, dp[.L__profc_gl_isinfl+20]
	ldw r2, dp[.L__profc_gl_isinfl+16]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_gl_isinfl+16]
	stw r1, dp[.L__profc_gl_isinfl+20]
	stw r0, sp[4]
	bu .LBB85_3
.LBB85_3:
	ldw r0, sp[4]
	zext r0, 1
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom gl_isinfl.function
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl

	.globl	_Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
	.cc_top _Qp_itoq.function,_Qp_itoq
_Qp_itoq:
	entsp 5
	stw r4, sp[4]
	stw r5, sp[3]
	ldw r11, dp[__llvm_gcov_ctr.86+4]
	ldw r4, dp[__llvm_gcov_ctr.86]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.86]
	stw r11, dp[__llvm_gcov_ctr.86+4]
	stw r0, sp[2]
	stw r1, sp[1]
	ldw r0, dp[.L__profc__Qp_itoq+4]
	ldw r1, dp[.L__profc__Qp_itoq]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc__Qp_itoq]
	stw r0, dp[.L__profc__Qp_itoq+4]
	ldw r0, sp[1]
	bl __floatsidf
	mov r2, r1
	ldw r1, sp[2]
	stw r2, r1[1]
	stw r0, r1[0]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
	.cc_bottom _Qp_itoq.function
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI87_0:
	.long	2147483647
.LCPI87_1:
	.long	2139095040
.LCPI87_2:
	.long	1073741824
.LCPI87_3:
	.long	1056964608
.LCPI87_4:
	.long	4294967294
	.text
	.globl	ldexpf
	.p2align	2
	.type	ldexpf,@function
	.cc_top ldexpf.function,ldexpf
ldexpf:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	ldw r11, dp[__llvm_gcov_ctr.87+4]
	ldw r4, dp[__llvm_gcov_ctr.87]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.87]
	stw r11, dp[__llvm_gcov_ctr.87+4]
	stw r0, sp[6]
	stw r1, sp[5]
	ldw r0, dp[.L__profc_ldexpf+4]
	ldw r1, dp[.L__profc_ldexpf]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpf]
	stw r0, dp[.L__profc_ldexpf+4]
	ldw r0, sp[6]
	ldw r1, cp[.LCPI87_0]
	and r1, r0, r1
	ldw r0, cp[.LCPI87_1]
	lss r0, r0, r1
	bt r0, .LBB87_10
	bu .LBB87_1
.LBB87_1:
	ldw r0, dp[__llvm_gcov_ctr.87+12]
	ldw r1, dp[__llvm_gcov_ctr.87+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.87+8]
	stw r0, dp[__llvm_gcov_ctr.87+12]
	ldw r0, dp[.L__profc_ldexpf+20]
	ldw r1, dp[.L__profc_ldexpf+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpf+16]
	stw r0, dp[.L__profc_ldexpf+20]
	ldw r1, sp[6]
	stw r1, sp[3]
	mov r0, r1
	bl __addsf3
	ldw r1, sp[3]
	bl __eqsf2
	bf r0, .LBB87_10
	bu .LBB87_2
.LBB87_2:
	ldw r0, dp[__llvm_gcov_ctr.87+20]
	ldw r1, dp[__llvm_gcov_ctr.87+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.87+16]
	stw r0, dp[__llvm_gcov_ctr.87+20]
	ldw r0, dp[.L__profc_ldexpf+28]
	ldw r1, dp[.L__profc_ldexpf+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpf+24]
	stw r0, dp[.L__profc_ldexpf+28]
	bu .LBB87_3
.LBB87_3:
	ldw r0, dp[.L__profc_ldexpf+12]
	ldw r1, dp[.L__profc_ldexpf+8]
	ldc r11, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r11
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpf+8]
	stw r0, dp[.L__profc_ldexpf+12]
	ldw r0, sp[5]
	mkmsk r1, 5
	shr r3, r0, r1
	ldw r1, dp[.L__profc_ldexpf+36]
	ldw r2, dp[.L__profc_ldexpf+32]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_ldexpf+32]
	stw r1, dp[.L__profc_ldexpf+36]
	ashr r0, r0, 32
	ldw r1, cp[.LCPI87_2]
	stw r1, sp[1]
	ldw r1, cp[.LCPI87_3]
	stw r1, sp[2]
	bt r0, .LBB87_12
	ldw r0, sp[1]
	stw r0, sp[2]
.LBB87_12:
	ldw r0, sp[2]
	stw r0, sp[4]
	bu .LBB87_4
.LBB87_4:
	ldw r0, dp[.L__profc_ldexpf+44]
	ldw r1, dp[.L__profc_ldexpf+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpf+40]
	stw r0, dp[.L__profc_ldexpf+44]
	ldw r0, sp[5]
	mkmsk r1, 5
	shr r1, r0, r1
	add r1, r0, r1
	ldw r2, cp[.LCPI87_4]
	and r1, r1, r2
	sub r0, r0, r1
	bf r0, .LBB87_6
	bu .LBB87_5
.LBB87_5:
	ldw r0, dp[__llvm_gcov_ctr.87+28]
	ldw r1, dp[__llvm_gcov_ctr.87+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.87+24]
	stw r0, dp[__llvm_gcov_ctr.87+28]
	ldw r0, dp[.L__profc_ldexpf+52]
	ldw r1, dp[.L__profc_ldexpf+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpf+48]
	stw r0, dp[.L__profc_ldexpf+52]
	ldw r1, sp[4]
	ldw r0, sp[6]
	bl __mulsf3
	stw r0, sp[6]
	bu .LBB87_6
.LBB87_6:
	ldw r0, sp[5]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[5]
	bt r0, .LBB87_8
	bu .LBB87_7
.LBB87_7:
	ldw r0, dp[.L__profc_ldexpf+60]
	ldw r1, dp[.L__profc_ldexpf+56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpf+56]
	stw r0, dp[.L__profc_ldexpf+60]
	bu .LBB87_9
.LBB87_8:
	ldw r0, dp[__llvm_gcov_ctr.87+36]
	ldw r1, dp[__llvm_gcov_ctr.87+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.87+32]
	stw r0, dp[__llvm_gcov_ctr.87+36]
	ldw r1, sp[4]
	mov r0, r1
	bl __mulsf3
	stw r0, sp[4]
	bu .LBB87_4
.LBB87_9:
	bu .LBB87_10
.LBB87_10:
	ldw r0, sp[6]
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom ldexpf.function
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI88_0:
	.long	2147483647
.LCPI88_1:
	.long	2146435072
.LCPI88_2:
	.long	1073741824
.LCPI88_3:
	.long	1071644672
.LCPI88_4:
	.long	4294967294
	.text
	.globl	ldexp
	.p2align	2
	.type	ldexp,@function
	.cc_top ldexp.function,ldexp
ldexp:
	entsp 17
	stw r4, sp[16]
	stw r5, sp[15]
	stw r6, sp[14]
	stw r2, sp[6]
	mov r11, r1
	mov r1, r0
	ldw r0, sp[6]
	ldw r4, dp[__llvm_gcov_ctr.88+4]
	ldw r5, dp[__llvm_gcov_ctr.88]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.88]
	stw r4, dp[__llvm_gcov_ctr.88+4]
	stw r11, sp[13]
	stw r1, sp[12]
	stw r0, sp[11]
	ldw r0, dp[.L__profc_ldexp+4]
	ldw r1, dp[.L__profc_ldexp]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexp]
	stw r0, dp[.L__profc_ldexp+4]
	ldw r1, sp[12]
	ldw r0, sp[13]
	ldw r2, cp[.LCPI88_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI88_1]
	lss r3, r2, r0
	stw r3, sp[7]
	eq r0, r0, r2
	eq r1, r1, 0
	eq r1, r1, 0
	stw r1, sp[8]
	bt r0, .LBB88_12
	ldw r0, sp[7]
	stw r0, sp[8]
.LBB88_12:
	ldw r0, sp[8]
	bt r0, .LBB88_10
	bu .LBB88_1
.LBB88_1:
	ldw r0, dp[__llvm_gcov_ctr.88+12]
	ldw r1, dp[__llvm_gcov_ctr.88+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.88+8]
	stw r0, dp[__llvm_gcov_ctr.88+12]
	ldw r0, dp[.L__profc_ldexp+20]
	ldw r1, dp[.L__profc_ldexp+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexp+16]
	stw r0, dp[.L__profc_ldexp+20]
	ldw r2, sp[12]
	stw r2, sp[5]
	ldw r3, sp[13]
	stw r3, sp[4]
	mov r0, r2
	mov r1, r3
	bl __adddf3
	ldw r3, sp[4]
	ldw r2, sp[5]
	bl __eqdf2
	bf r0, .LBB88_10
	bu .LBB88_2
.LBB88_2:
	ldw r0, dp[__llvm_gcov_ctr.88+20]
	ldw r1, dp[__llvm_gcov_ctr.88+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.88+16]
	stw r0, dp[__llvm_gcov_ctr.88+20]
	ldw r0, dp[.L__profc_ldexp+28]
	ldw r1, dp[.L__profc_ldexp+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexp+24]
	stw r0, dp[.L__profc_ldexp+28]
	bu .LBB88_3
.LBB88_3:
	ldw r0, dp[.L__profc_ldexp+12]
	ldw r1, dp[.L__profc_ldexp+8]
	ldc r11, 0
	stw r11, sp[1]
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r11
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexp+8]
	stw r0, dp[.L__profc_ldexp+12]
	ldw r0, sp[11]
	mkmsk r1, 5
	shr r3, r0, r1
	ldw r1, dp[.L__profc_ldexp+36]
	ldw r2, dp[.L__profc_ldexp+32]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_ldexp+32]
	stw r1, dp[.L__profc_ldexp+36]
	ashr r0, r0, 32
	ldw r1, cp[.LCPI88_2]
	stw r1, sp[2]
	ldw r1, cp[.LCPI88_3]
	stw r1, sp[3]
	bt r0, .LBB88_14
	ldw r0, sp[2]
	stw r0, sp[3]
.LBB88_14:
	ldw r0, sp[1]
	ldw r1, sp[3]
	stw r1, sp[10]
	stw r0, sp[9]
	bu .LBB88_4
.LBB88_4:
	ldw r0, dp[.L__profc_ldexp+44]
	ldw r1, dp[.L__profc_ldexp+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexp+40]
	stw r0, dp[.L__profc_ldexp+44]
	ldw r0, sp[11]
	mkmsk r1, 5
	shr r1, r0, r1
	add r1, r0, r1
	ldw r2, cp[.LCPI88_4]
	and r1, r1, r2
	sub r0, r0, r1
	bf r0, .LBB88_6
	bu .LBB88_5
.LBB88_5:
	ldw r0, dp[__llvm_gcov_ctr.88+28]
	ldw r1, dp[__llvm_gcov_ctr.88+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.88+24]
	stw r0, dp[__llvm_gcov_ctr.88+28]
	ldw r0, dp[.L__profc_ldexp+52]
	ldw r1, dp[.L__profc_ldexp+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexp+48]
	stw r0, dp[.L__profc_ldexp+52]
	ldw r2, sp[9]
	ldw r3, sp[10]
	ldw r0, sp[12]
	ldw r1, sp[13]
	bl __muldf3
	stw r1, sp[13]
	stw r0, sp[12]
	bu .LBB88_6
.LBB88_6:
	ldw r0, sp[11]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[11]
	ldw r0, sp[11]
	bt r0, .LBB88_8
	bu .LBB88_7
.LBB88_7:
	ldw r0, dp[.L__profc_ldexp+60]
	ldw r1, dp[.L__profc_ldexp+56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexp+56]
	stw r0, dp[.L__profc_ldexp+60]
	bu .LBB88_9
.LBB88_8:
	ldw r0, dp[__llvm_gcov_ctr.88+36]
	ldw r1, dp[__llvm_gcov_ctr.88+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.88+32]
	stw r0, dp[__llvm_gcov_ctr.88+36]
	ldw r2, sp[9]
	ldw r3, sp[10]
	mov r0, r2
	mov r1, r3
	bl __muldf3
	stw r1, sp[10]
	stw r0, sp[9]
	bu .LBB88_4
.LBB88_9:
	bu .LBB88_10
.LBB88_10:
	ldw r0, sp[12]
	ldw r1, sp[13]
	ldw r6, sp[14]
	ldw r5, sp[15]
	ldw r4, sp[16]
	retsp 17
	.cc_bottom ldexp.function
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI89_0:
	.long	2147483647
.LCPI89_1:
	.long	2146435072
.LCPI89_2:
	.long	1073741824
.LCPI89_3:
	.long	1071644672
.LCPI89_4:
	.long	4294967294
	.text
	.globl	ldexpl
	.p2align	2
	.type	ldexpl,@function
	.cc_top ldexpl.function,ldexpl
ldexpl:
	entsp 17
	stw r4, sp[16]
	stw r5, sp[15]
	stw r6, sp[14]
	stw r2, sp[6]
	mov r11, r1
	mov r1, r0
	ldw r0, sp[6]
	ldw r4, dp[__llvm_gcov_ctr.89+4]
	ldw r5, dp[__llvm_gcov_ctr.89]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.89]
	stw r4, dp[__llvm_gcov_ctr.89+4]
	stw r11, sp[13]
	stw r1, sp[12]
	stw r0, sp[11]
	ldw r0, dp[.L__profc_ldexpl+4]
	ldw r1, dp[.L__profc_ldexpl]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpl]
	stw r0, dp[.L__profc_ldexpl+4]
	ldw r1, sp[12]
	ldw r0, sp[13]
	ldw r2, cp[.LCPI89_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI89_1]
	lss r3, r2, r0
	stw r3, sp[7]
	eq r0, r0, r2
	eq r1, r1, 0
	eq r1, r1, 0
	stw r1, sp[8]
	bt r0, .LBB89_12
	ldw r0, sp[7]
	stw r0, sp[8]
.LBB89_12:
	ldw r0, sp[8]
	bt r0, .LBB89_10
	bu .LBB89_1
.LBB89_1:
	ldw r0, dp[__llvm_gcov_ctr.89+12]
	ldw r1, dp[__llvm_gcov_ctr.89+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.89+8]
	stw r0, dp[__llvm_gcov_ctr.89+12]
	ldw r0, dp[.L__profc_ldexpl+20]
	ldw r1, dp[.L__profc_ldexpl+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpl+16]
	stw r0, dp[.L__profc_ldexpl+20]
	ldw r2, sp[12]
	stw r2, sp[5]
	ldw r3, sp[13]
	stw r3, sp[4]
	mov r0, r2
	mov r1, r3
	bl __adddf3
	ldw r3, sp[4]
	ldw r2, sp[5]
	bl __eqdf2
	bf r0, .LBB89_10
	bu .LBB89_2
.LBB89_2:
	ldw r0, dp[__llvm_gcov_ctr.89+20]
	ldw r1, dp[__llvm_gcov_ctr.89+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.89+16]
	stw r0, dp[__llvm_gcov_ctr.89+20]
	ldw r0, dp[.L__profc_ldexpl+28]
	ldw r1, dp[.L__profc_ldexpl+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpl+24]
	stw r0, dp[.L__profc_ldexpl+28]
	bu .LBB89_3
.LBB89_3:
	ldw r0, dp[.L__profc_ldexpl+12]
	ldw r1, dp[.L__profc_ldexpl+8]
	ldc r11, 0
	stw r11, sp[1]
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r11
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpl+8]
	stw r0, dp[.L__profc_ldexpl+12]
	ldw r0, sp[11]
	mkmsk r1, 5
	shr r3, r0, r1
	ldw r1, dp[.L__profc_ldexpl+36]
	ldw r2, dp[.L__profc_ldexpl+32]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_ldexpl+32]
	stw r1, dp[.L__profc_ldexpl+36]
	ashr r0, r0, 32
	ldw r1, cp[.LCPI89_2]
	stw r1, sp[2]
	ldw r1, cp[.LCPI89_3]
	stw r1, sp[3]
	bt r0, .LBB89_14
	ldw r0, sp[2]
	stw r0, sp[3]
.LBB89_14:
	ldw r0, sp[1]
	ldw r1, sp[3]
	stw r1, sp[10]
	stw r0, sp[9]
	bu .LBB89_4
.LBB89_4:
	ldw r0, dp[.L__profc_ldexpl+44]
	ldw r1, dp[.L__profc_ldexpl+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpl+40]
	stw r0, dp[.L__profc_ldexpl+44]
	ldw r0, sp[11]
	mkmsk r1, 5
	shr r1, r0, r1
	add r1, r0, r1
	ldw r2, cp[.LCPI89_4]
	and r1, r1, r2
	sub r0, r0, r1
	bf r0, .LBB89_6
	bu .LBB89_5
.LBB89_5:
	ldw r0, dp[__llvm_gcov_ctr.89+28]
	ldw r1, dp[__llvm_gcov_ctr.89+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.89+24]
	stw r0, dp[__llvm_gcov_ctr.89+28]
	ldw r0, dp[.L__profc_ldexpl+52]
	ldw r1, dp[.L__profc_ldexpl+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpl+48]
	stw r0, dp[.L__profc_ldexpl+52]
	ldw r2, sp[9]
	ldw r3, sp[10]
	ldw r0, sp[12]
	ldw r1, sp[13]
	bl __muldf3
	stw r1, sp[13]
	stw r0, sp[12]
	bu .LBB89_6
.LBB89_6:
	ldw r0, sp[11]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[11]
	ldw r0, sp[11]
	bt r0, .LBB89_8
	bu .LBB89_7
.LBB89_7:
	ldw r0, dp[.L__profc_ldexpl+60]
	ldw r1, dp[.L__profc_ldexpl+56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_ldexpl+56]
	stw r0, dp[.L__profc_ldexpl+60]
	bu .LBB89_9
.LBB89_8:
	ldw r0, dp[__llvm_gcov_ctr.89+36]
	ldw r1, dp[__llvm_gcov_ctr.89+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.89+32]
	stw r0, dp[__llvm_gcov_ctr.89+36]
	ldw r2, sp[9]
	ldw r3, sp[10]
	mov r0, r2
	mov r1, r3
	bl __muldf3
	stw r1, sp[10]
	stw r0, sp[9]
	bu .LBB89_4
.LBB89_9:
	bu .LBB89_10
.LBB89_10:
	ldw r0, sp[12]
	ldw r1, sp[13]
	ldw r6, sp[14]
	ldw r5, sp[15]
	ldw r4, sp[16]
	retsp 17
	.cc_bottom ldexpl.function
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl

	.globl	memxor
	.p2align	2
	.type	memxor,@function
	.cc_top memxor.function,memxor
memxor:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	stw r6, sp[6]
	stw r2, sp[0]
	mov r11, r0
	ldw r0, sp[0]
	ldw r4, dp[__llvm_gcov_ctr.90+4]
	ldw r5, dp[__llvm_gcov_ctr.90]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.90]
	stw r4, dp[__llvm_gcov_ctr.90+4]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_memxor+4]
	ldw r1, dp[.L__profc_memxor]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memxor]
	stw r0, dp[.L__profc_memxor+4]
	ldw r0, sp[4]
	stw r0, sp[2]
	ldw r0, sp[5]
	stw r0, sp[1]
	bu .LBB90_1
.LBB90_1:
	ldw r0, sp[3]
	bf r0, .LBB90_4
	bu .LBB90_2
.LBB90_2:
	ldw r0, dp[.L__profc_memxor+12]
	ldw r1, dp[.L__profc_memxor+8]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memxor+8]
	stw r0, dp[.L__profc_memxor+12]
	ldw r0, sp[2]
	add r1, r0, 1
	stw r1, sp[2]
	ld8u r3, r0[r2]
	ldw r1, sp[1]
	add r0, r1, 1
	stw r0, sp[1]
	ld8u r0, r1[r2]
	xor r0, r0, r3
	st8 r0, r1[r2]
	bu .LBB90_3
.LBB90_3:
	ldw r0, dp[__llvm_gcov_ctr.90+12]
	ldw r1, dp[__llvm_gcov_ctr.90+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.90+8]
	stw r0, dp[__llvm_gcov_ctr.90+12]
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	bu .LBB90_1
.LBB90_4:
	ldw r0, sp[5]
	ldw r6, sp[6]
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom memxor.function
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor

	.globl	strncat
	.p2align	2
	.type	strncat,@function
	.cc_top strncat.function,strncat
strncat:
	entsp 9
	stw r4, sp[8]
	stw r0, sp[7]
	stw r1, sp[6]
	stw r2, sp[5]
	ldw r0, dp[.L__profc_strncat+4]
	ldw r1, dp[.L__profc_strncat]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strncat]
	stw r0, dp[.L__profc_strncat+4]
	ldw r0, sp[7]
	stw r0, sp[3]
	bl strlen
	mov r1, r0
	ldw r0, sp[3]
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB91_1
.LBB91_1:
	ldw r0, sp[5]
	ldc r1, 0
	stw r1, sp[2]
	bf r0, .LBB91_4
	bu .LBB91_2
.LBB91_2:
	ldw r0, dp[__llvm_gcov_ctr.91+4]
	ldw r1, dp[__llvm_gcov_ctr.91]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.91]
	stw r0, dp[__llvm_gcov_ctr.91+4]
	ldw r0, dp[.L__profc_strncat+20]
	ldw r1, dp[.L__profc_strncat+16]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_strncat+16]
	stw r0, dp[.L__profc_strncat+20]
	ldw r0, sp[6]
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	st8 r0, r1[r2]
	eq r1, r0, 0
	eq r1, r1, 0
	stw r1, sp[1]
	stw r1, sp[2]
	bf r0, .LBB91_4
	bu .LBB91_3
.LBB91_3:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.91+12]
	ldw r2, dp[__llvm_gcov_ctr.91+8]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.91+8]
	stw r1, dp[__llvm_gcov_ctr.91+12]
	ldw r1, dp[.L__profc_strncat+28]
	ldw r2, dp[.L__profc_strncat+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_strncat+24]
	stw r1, dp[.L__profc_strncat+28]
	stw r0, sp[2]
	bu .LBB91_4
.LBB91_4:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB91_7
	bu .LBB91_5
.LBB91_5:
	ldw r0, dp[.L__profc_strncat+12]
	ldw r1, dp[.L__profc_strncat+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strncat+8]
	stw r0, dp[.L__profc_strncat+12]
	bu .LBB91_6
.LBB91_6:
	ldw r0, dp[__llvm_gcov_ctr.91+28]
	ldw r1, dp[__llvm_gcov_ctr.91+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.91+24]
	stw r0, dp[__llvm_gcov_ctr.91+28]
	ldw r0, sp[6]
	add r0, r0, 1
	stw r0, sp[6]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[5]
	sub r0, r0, 1
	stw r0, sp[5]
	bu .LBB91_1
.LBB91_7:
	ldw r0, dp[__llvm_gcov_ctr.91+20]
	ldw r1, dp[__llvm_gcov_ctr.91+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.91+16]
	stw r0, dp[__llvm_gcov_ctr.91+20]
	ldw r0, sp[5]
	bt r0, .LBB91_9
	bu .LBB91_8
.LBB91_8:
	ldw r1, dp[__llvm_gcov_ctr.91+36]
	ldw r2, dp[__llvm_gcov_ctr.91+32]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.91+32]
	stw r1, dp[__llvm_gcov_ctr.91+36]
	ldw r1, dp[.L__profc_strncat+36]
	ldw r2, dp[.L__profc_strncat+32]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_strncat+32]
	stw r1, dp[.L__profc_strncat+36]
	ldw r1, sp[4]
	st8 r0, r1[r0]
	bu .LBB91_9
.LBB91_9:
	ldw r0, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom strncat.function
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat

	.globl	strnlen
	.p2align	2
	.type	strnlen,@function
	.cc_top strnlen.function,strnlen
strnlen:
	entsp 7
	stw r4, sp[6]
	stw r5, sp[5]
	mov r2, r0
	ldw r11, dp[__llvm_gcov_ctr.92+4]
	ldw r4, dp[__llvm_gcov_ctr.92]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.92]
	stw r11, dp[__llvm_gcov_ctr.92+4]
	stw r2, sp[4]
	stw r1, sp[3]
	ldw r1, dp[.L__profc_strnlen+4]
	ldw r2, dp[.L__profc_strnlen]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_strnlen]
	stw r1, dp[.L__profc_strnlen+4]
	stw r0, sp[2]
	bu .LBB92_1
.LBB92_1:
	ldw r0, sp[2]
	ldw r2, sp[3]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[1]
	bf r0, .LBB92_4
	bu .LBB92_2
.LBB92_2:
	ldw r0, dp[__llvm_gcov_ctr.92+12]
	ldw r1, dp[__llvm_gcov_ctr.92+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.92+8]
	stw r0, dp[__llvm_gcov_ctr.92+12]
	ldw r0, dp[.L__profc_strnlen+20]
	ldw r1, dp[.L__profc_strnlen+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strnlen+16]
	stw r0, dp[.L__profc_strnlen+20]
	ldw r0, sp[4]
	ldw r1, sp[2]
	ld8u r0, r0[r1]
	eq r1, r0, 0
	eq r1, r1, 0
	stw r1, sp[0]
	stw r1, sp[1]
	bf r0, .LBB92_4
	bu .LBB92_3
.LBB92_3:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.92+20]
	ldw r2, dp[__llvm_gcov_ctr.92+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.92+16]
	stw r1, dp[__llvm_gcov_ctr.92+20]
	ldw r1, dp[.L__profc_strnlen+28]
	ldw r2, dp[.L__profc_strnlen+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_strnlen+24]
	stw r1, dp[.L__profc_strnlen+28]
	stw r0, sp[1]
	bu .LBB92_4
.LBB92_4:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB92_7
	bu .LBB92_5
.LBB92_5:
	ldw r0, dp[.L__profc_strnlen+12]
	ldw r1, dp[.L__profc_strnlen+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strnlen+8]
	stw r0, dp[.L__profc_strnlen+12]
	bu .LBB92_6
.LBB92_6:
	ldw r0, dp[__llvm_gcov_ctr.92+28]
	ldw r1, dp[__llvm_gcov_ctr.92+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.92+24]
	stw r0, dp[__llvm_gcov_ctr.92+28]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB92_1
.LBB92_7:
	ldw r0, sp[2]
	ldw r5, sp[5]
	ldw r4, sp[6]
	retsp 7
	.cc_bottom strnlen.function
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen

	.globl	strpbrk
	.p2align	2
	.type	strpbrk,@function
	.cc_top strpbrk.function,strpbrk
strpbrk:
	entsp 4
	stw r0, sp[2]
	stw r1, sp[1]
	ldw r0, dp[.L__profc_strpbrk+4]
	ldw r1, dp[.L__profc_strpbrk]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strpbrk]
	stw r0, dp[.L__profc_strpbrk+4]
	bu .LBB93_1
.LBB93_1:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	bf r0, .LBB93_8
	bu .LBB93_2
.LBB93_2:
	ldw r0, dp[.L__profc_strpbrk+12]
	ldw r1, dp[.L__profc_strpbrk+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strpbrk+8]
	stw r0, dp[.L__profc_strpbrk+12]
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB93_3
.LBB93_3:
	ldw r0, sp[0]
	ldc r1, 0
	ld8u r0, r0[r1]
	bf r0, .LBB93_7
	bu .LBB93_4
.LBB93_4:
	ldw r0, dp[.L__profc_strpbrk+20]
	ldw r1, dp[.L__profc_strpbrk+16]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_strpbrk+16]
	stw r0, dp[.L__profc_strpbrk+20]
	ldw r0, sp[0]
	add r1, r0, 1
	stw r1, sp[0]
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	bf r0, .LBB93_6
	bu .LBB93_5
.LBB93_5:
	ldw r0, dp[__llvm_gcov_ctr.93+12]
	ldw r1, dp[__llvm_gcov_ctr.93+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.93+8]
	stw r0, dp[__llvm_gcov_ctr.93+12]
	ldw r0, dp[.L__profc_strpbrk+28]
	ldw r1, dp[.L__profc_strpbrk+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strpbrk+24]
	stw r0, dp[.L__profc_strpbrk+28]
	ldw r0, sp[2]
	stw r0, sp[3]
	bu .LBB93_9
.LBB93_6:
	ldw r0, dp[__llvm_gcov_ctr.93+20]
	ldw r1, dp[__llvm_gcov_ctr.93+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.93+16]
	stw r0, dp[__llvm_gcov_ctr.93+20]
	bu .LBB93_3
.LBB93_7:
	ldw r0, dp[__llvm_gcov_ctr.93+28]
	ldw r1, dp[__llvm_gcov_ctr.93+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.93+24]
	stw r0, dp[__llvm_gcov_ctr.93+28]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB93_1
.LBB93_8:
	ldw r1, dp[__llvm_gcov_ctr.93+4]
	ldw r2, dp[__llvm_gcov_ctr.93]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.93]
	stw r1, dp[__llvm_gcov_ctr.93+4]
	stw r0, sp[3]
	bu .LBB93_9
.LBB93_9:
	ldw r0, sp[3]
	retsp 4
	.cc_bottom strpbrk.function
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk

	.globl	strrchr
	.p2align	2
	.type	strrchr,@function
	.cc_top strrchr.function,strrchr
strrchr:
	entsp 5
	stw r4, sp[4]
	stw r5, sp[3]
	mov r2, r0
	ldw r11, dp[__llvm_gcov_ctr.94+4]
	ldw r4, dp[__llvm_gcov_ctr.94]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.94]
	stw r11, dp[__llvm_gcov_ctr.94+4]
	stw r2, sp[2]
	stw r1, sp[1]
	ldw r1, dp[.L__profc_strrchr+4]
	ldw r2, dp[.L__profc_strrchr]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_strrchr]
	stw r1, dp[.L__profc_strrchr+4]
	stw r0, sp[0]
	bu .LBB94_2
.LBB94_1:
	ldw r0, dp[__llvm_gcov_ctr.94+20]
	ldw r1, dp[__llvm_gcov_ctr.94+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.94+16]
	stw r0, dp[__llvm_gcov_ctr.94+20]
	ldw r0, dp[.L__profc_strrchr+12]
	ldw r1, dp[.L__profc_strrchr+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strrchr+8]
	stw r0, dp[.L__profc_strrchr+12]
	bu .LBB94_2
.LBB94_2:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r1, sp[1]
	eq r0, r0, r1
	bf r0, .LBB94_4
	bu .LBB94_3
.LBB94_3:
	ldw r0, dp[__llvm_gcov_ctr.94+12]
	ldw r1, dp[__llvm_gcov_ctr.94+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.94+8]
	stw r0, dp[__llvm_gcov_ctr.94+12]
	ldw r0, dp[.L__profc_strrchr+20]
	ldw r1, dp[.L__profc_strrchr+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strrchr+16]
	stw r0, dp[.L__profc_strrchr+20]
	ldw r0, sp[2]
	stw r0, sp[0]
	bu .LBB94_4
.LBB94_4:
	bu .LBB94_5
.LBB94_5:
	ldw r0, sp[2]
	add r1, r0, 1
	stw r1, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	bt r0, .LBB94_1
	bu .LBB94_6
.LBB94_6:
	ldw r0, sp[0]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
	.cc_bottom strrchr.function
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr

	.globl	strstr
	.p2align	2
	.type	strstr,@function
	.cc_top strstr.function,strstr
strstr:
	entsp 6
	stw r0, sp[4]
	stw r1, sp[3]
	ldw r0, dp[.L__profc_strstr+4]
	ldw r1, dp[.L__profc_strstr]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strstr]
	stw r0, dp[.L__profc_strstr+4]
	ldw r0, sp[4]
	stw r0, sp[2]
	ldw r0, sp[3]
	bl strlen
	stw r0, sp[1]
	ldw r0, sp[1]
	bt r0, .LBB95_2
	bu .LBB95_1
.LBB95_1:
	ldw r0, dp[__llvm_gcov_ctr.95+4]
	ldw r1, dp[__llvm_gcov_ctr.95]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.95]
	stw r0, dp[__llvm_gcov_ctr.95+4]
	ldw r0, dp[.L__profc_strstr+12]
	ldw r1, dp[.L__profc_strstr+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strstr+8]
	stw r0, dp[.L__profc_strstr+12]
	ldw r0, sp[4]
	stw r0, sp[5]
	bu .LBB95_9
.LBB95_2:
	bu .LBB95_3
.LBB95_3:
	ldw r0, sp[2]
	ldw r1, sp[3]
	ldc r2, 0
	ld8u r1, r1[r2]
	bl strchr
	stw r0, sp[2]
	bf r0, .LBB95_8
	bu .LBB95_4
.LBB95_4:
	ldw r0, dp[.L__profc_strstr+20]
	ldw r1, dp[.L__profc_strstr+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strstr+16]
	stw r0, dp[.L__profc_strstr+20]
	ldw r0, sp[2]
	ldw r1, sp[3]
	ldw r2, sp[1]
	bl strncmp
	bt r0, .LBB95_6
	bu .LBB95_5
.LBB95_5:
	ldw r0, dp[__llvm_gcov_ctr.95+12]
	ldw r1, dp[__llvm_gcov_ctr.95+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.95+8]
	stw r0, dp[__llvm_gcov_ctr.95+12]
	ldw r0, dp[.L__profc_strstr+28]
	ldw r1, dp[.L__profc_strstr+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_strstr+24]
	stw r0, dp[.L__profc_strstr+28]
	ldw r0, sp[2]
	stw r0, sp[5]
	bu .LBB95_9
.LBB95_6:
	bu .LBB95_7
.LBB95_7:
	ldw r0, dp[__llvm_gcov_ctr.95+20]
	ldw r1, dp[__llvm_gcov_ctr.95+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.95+16]
	stw r0, dp[__llvm_gcov_ctr.95+20]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB95_3
.LBB95_8:
	ldw r1, dp[__llvm_gcov_ctr.95+28]
	ldw r2, dp[__llvm_gcov_ctr.95+24]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.95+24]
	stw r1, dp[__llvm_gcov_ctr.95+28]
	stw r0, sp[5]
	bu .LBB95_9
.LBB95_9:
	ldw r0, sp[5]
	retsp 6
	.cc_bottom strstr.function
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI96_0:
	.long	2147483648
	.text
	.globl	copysign
	.p2align	2
	.type	copysign,@function
	.cc_top copysign.function,copysign
copysign:
	entsp 9
	stw r1, sp[6]
	stw r0, sp[5]
	stw r3, sp[4]
	stw r2, sp[3]
	ldw r0, dp[.L__profc_copysign+4]
	ldw r1, dp[.L__profc_copysign]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_copysign]
	stw r0, dp[.L__profc_copysign+4]
	ldw r0, sp[5]
	ldw r1, sp[6]
	mov r2, r3
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB96_3
	bu .LBB96_1
.LBB96_1:
	ldw r0, dp[__llvm_gcov_ctr.96+4]
	ldw r1, dp[__llvm_gcov_ctr.96]
	ldc r3, 0
	mkmsk r2, 1
	stw r2, sp[2]
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.96]
	stw r0, dp[__llvm_gcov_ctr.96+4]
	ldw r0, dp[.L__profc_copysign+28]
	ldw r1, dp[.L__profc_copysign+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_copysign+24]
	stw r0, dp[.L__profc_copysign+28]
	ldw r0, sp[3]
	ldw r1, sp[4]
	mov r2, r3
	bl __gtdf2
	ldw r1, sp[2]
	lss r0, r0, r1
	bt r0, .LBB96_3
	bu .LBB96_2
.LBB96_2:
	ldw r0, dp[__llvm_gcov_ctr.96+12]
	ldw r1, dp[__llvm_gcov_ctr.96+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.96+8]
	stw r0, dp[__llvm_gcov_ctr.96+12]
	ldw r0, dp[.L__profc_copysign+36]
	ldw r1, dp[.L__profc_copysign+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_copysign+32]
	stw r0, dp[.L__profc_copysign+36]
	bu .LBB96_6
.LBB96_3:
	ldw r0, dp[.L__profc_copysign+20]
	ldw r1, dp[.L__profc_copysign+16]
	ldc r3, 0
	mkmsk r2, 1
	stw r2, sp[1]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_copysign+16]
	stw r0, dp[.L__profc_copysign+20]
	ldw r0, sp[5]
	ldw r1, sp[6]
	mov r2, r3
	bl __gtdf2
	ldw r1, sp[1]
	lss r0, r0, r1
	bt r0, .LBB96_7
	bu .LBB96_4
.LBB96_4:
	ldw r0, dp[__llvm_gcov_ctr.96+20]
	ldw r1, dp[__llvm_gcov_ctr.96+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.96+16]
	stw r0, dp[__llvm_gcov_ctr.96+20]
	ldw r0, dp[.L__profc_copysign+44]
	ldw r1, dp[.L__profc_copysign+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_copysign+40]
	stw r0, dp[.L__profc_copysign+44]
	ldw r0, sp[3]
	ldw r1, sp[4]
	mov r2, r3
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB96_7
	bu .LBB96_5
.LBB96_5:
	ldw r0, dp[__llvm_gcov_ctr.96+28]
	ldw r1, dp[__llvm_gcov_ctr.96+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.96+24]
	stw r0, dp[__llvm_gcov_ctr.96+28]
	ldw r0, dp[.L__profc_copysign+52]
	ldw r1, dp[.L__profc_copysign+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_copysign+48]
	stw r0, dp[.L__profc_copysign+52]
	bu .LBB96_6
.LBB96_6:
	ldw r0, dp[.L__profc_copysign+12]
	ldw r1, dp[.L__profc_copysign+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_copysign+8]
	stw r0, dp[.L__profc_copysign+12]
	ldw r1, sp[5]
	ldw r0, sp[6]
	ldw r2, cp[.LCPI96_0]
	xor r0, r0, r2
	stw r1, sp[7]
	stw r0, sp[8]
	bu .LBB96_8
.LBB96_7:
	ldw r0, dp[__llvm_gcov_ctr.96+36]
	ldw r1, dp[__llvm_gcov_ctr.96+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.96+32]
	stw r0, dp[__llvm_gcov_ctr.96+36]
	ldw r0, sp[5]
	ldw r1, sp[6]
	stw r1, sp[8]
	stw r0, sp[7]
	bu .LBB96_8
.LBB96_8:
	ldw r0, sp[7]
	ldw r1, sp[8]
	retsp 9
	.cc_bottom copysign.function
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign

	.globl	memmem
	.p2align	2
	.type	memmem,@function
	.cc_top memmem.function,memmem
memmem:
	entsp 8
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	stw r3, sp[3]
	ldw r0, dp[.L__profc_memmem+4]
	ldw r1, dp[.L__profc_memmem]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmem]
	stw r0, dp[.L__profc_memmem+4]
	ldw r0, sp[6]
	ldw r1, sp[5]
	add r0, r0, r1
	ldw r1, sp[3]
	sub r0, r0, r1
	stw r0, sp[1]
	ldw r0, sp[3]
	bt r0, .LBB97_2
	bu .LBB97_1
.LBB97_1:
	ldw r0, dp[__llvm_gcov_ctr.97+4]
	ldw r1, dp[__llvm_gcov_ctr.97]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.97]
	stw r0, dp[__llvm_gcov_ctr.97+4]
	ldw r0, dp[.L__profc_memmem+12]
	ldw r1, dp[.L__profc_memmem+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmem+8]
	stw r0, dp[.L__profc_memmem+12]
	ldw r0, sp[6]
	stw r0, sp[7]
	bu .LBB97_13
.LBB97_2:
	ldw r0, sp[5]
	ldw r1, sp[3]
	lsu r0, r0, r1
	bf r0, .LBB97_4
	bu .LBB97_3
.LBB97_3:
	ldw r1, dp[__llvm_gcov_ctr.97+12]
	ldw r2, dp[__llvm_gcov_ctr.97+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.97+8]
	stw r1, dp[__llvm_gcov_ctr.97+12]
	ldw r1, dp[.L__profc_memmem+20]
	ldw r2, dp[.L__profc_memmem+16]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc_memmem+16]
	stw r1, dp[.L__profc_memmem+20]
	stw r0, sp[7]
	bu .LBB97_13
.LBB97_4:
	ldw r0, sp[6]
	stw r0, sp[2]
	bu .LBB97_5
.LBB97_5:
	ldw r1, sp[2]
	ldw r0, sp[1]
	lsu r0, r0, r1
	bt r0, .LBB97_12
	bu .LBB97_6
.LBB97_6:
	ldw r0, dp[.L__profc_memmem+28]
	ldw r1, dp[.L__profc_memmem+24]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_memmem+24]
	stw r0, dp[.L__profc_memmem+28]
	ldw r0, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	bf r0, .LBB97_10
	bu .LBB97_7
.LBB97_7:
	ldw r0, dp[__llvm_gcov_ctr.97+20]
	ldw r1, dp[__llvm_gcov_ctr.97+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.97+16]
	stw r0, dp[__llvm_gcov_ctr.97+20]
	ldw r0, dp[.L__profc_memmem+44]
	ldw r1, dp[.L__profc_memmem+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmem+40]
	stw r0, dp[.L__profc_memmem+44]
	ldw r0, sp[2]
	add r0, r0, 1
	ldw r1, sp[4]
	add r1, r1, 1
	ldw r2, sp[3]
	sub r2, r2, 1
	bl memcmp
	bt r0, .LBB97_10
	bu .LBB97_8
.LBB97_8:
	ldw r0, dp[__llvm_gcov_ctr.97+28]
	ldw r1, dp[__llvm_gcov_ctr.97+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.97+24]
	stw r0, dp[__llvm_gcov_ctr.97+28]
	ldw r0, dp[.L__profc_memmem+52]
	ldw r1, dp[.L__profc_memmem+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmem+48]
	stw r0, dp[.L__profc_memmem+52]
	bu .LBB97_9
.LBB97_9:
	ldw r0, dp[.L__profc_memmem+36]
	ldw r1, dp[.L__profc_memmem+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_memmem+32]
	stw r0, dp[.L__profc_memmem+36]
	ldw r0, sp[2]
	stw r0, sp[7]
	bu .LBB97_13
.LBB97_10:
	bu .LBB97_11
.LBB97_11:
	ldw r0, dp[__llvm_gcov_ctr.97+36]
	ldw r1, dp[__llvm_gcov_ctr.97+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.97+32]
	stw r0, dp[__llvm_gcov_ctr.97+36]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB97_5
.LBB97_12:
	ldw r1, dp[__llvm_gcov_ctr.97+44]
	ldw r2, dp[__llvm_gcov_ctr.97+40]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.97+40]
	stw r1, dp[__llvm_gcov_ctr.97+44]
	stw r0, sp[7]
	bu .LBB97_13
.LBB97_13:
	ldw r0, sp[7]
	retsp 8
	.cc_bottom memmem.function
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem

	.globl	mempcpy
	.p2align	2
	.type	mempcpy,@function
	.cc_top mempcpy.function,mempcpy
mempcpy:
	entsp 9
	stw r4, sp[8]
	stw r5, sp[7]
	stw r6, sp[6]
	stw r2, sp[1]
	mov r11, r0
	ldw r0, sp[1]
	ldw r4, dp[__llvm_gcov_ctr.98+4]
	ldw r5, dp[__llvm_gcov_ctr.98]
	ldc r3, 0
	mkmsk r2, 1
	ladd r6, r5, r5, r2, r3
	add r4, r4, r6
	stw r5, dp[__llvm_gcov_ctr.98]
	stw r4, dp[__llvm_gcov_ctr.98+4]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc_mempcpy+4]
	ldw r1, dp[.L__profc_mempcpy]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_mempcpy]
	stw r0, dp[.L__profc_mempcpy+4]
	ldw r0, sp[5]
	stw r0, sp[2]
	ldw r1, sp[4]
	ldw r2, sp[3]
	bl memcpy
	ldw r0, sp[2]
	ldw r1, sp[3]
	add r0, r0, r1
	ldw r6, sp[6]
	ldw r5, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom mempcpy.function
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI99_0:
	.long	2147483648
.LCPI99_1:
	.long	1072693248
.LCPI99_2:
	.long	1071644672
	.text
	.globl	frexp
	.p2align	2
	.type	frexp,@function
	.cc_top frexp.function,frexp
frexp:
	entsp 6
	stw r1, sp[5]
	stw r0, sp[4]
	stw r2, sp[3]
	ldw r0, dp[.L__profc_frexp+4]
	ldw r1, dp[.L__profc_frexp]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_frexp]
	stw r0, dp[.L__profc_frexp+4]
	stw r3, sp[1]
	stw r3, sp[2]
	ldw r0, sp[4]
	ldw r1, sp[5]
	mov r2, r3
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB99_2
	bu .LBB99_1
.LBB99_1:
	ldw r1, dp[__llvm_gcov_ctr.99+4]
	ldw r2, dp[__llvm_gcov_ctr.99]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.99]
	stw r1, dp[__llvm_gcov_ctr.99+4]
	ldw r1, dp[.L__profc_frexp+12]
	ldw r2, dp[.L__profc_frexp+8]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc_frexp+8]
	stw r1, dp[.L__profc_frexp+12]
	ldw r1, sp[5]
	ldw r2, cp[.LCPI99_0]
	xor r1, r1, r2
	stw r1, sp[5]
	stw r0, sp[2]
	bu .LBB99_2
.LBB99_2:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r2, 0
	ldw r3, cp[.LCPI99_1]
	bl __gedf2
	ashr r0, r0, 32
	bt r0, .LBB99_7
	bu .LBB99_3
.LBB99_3:
	ldw r0, dp[__llvm_gcov_ctr.99+12]
	ldw r1, dp[__llvm_gcov_ctr.99+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.99+8]
	stw r0, dp[__llvm_gcov_ctr.99+12]
	ldw r0, dp[.L__profc_frexp+20]
	ldw r1, dp[.L__profc_frexp+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_frexp+16]
	stw r0, dp[.L__profc_frexp+20]
	bu .LBB99_4
.LBB99_4:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r2, 0
	ldw r3, cp[.LCPI99_1]
	bl __gedf2
	ashr r0, r0, 32
	bt r0, .LBB99_6
	bu .LBB99_5
.LBB99_5:
	ldw r0, dp[__llvm_gcov_ctr.99+20]
	ldw r1, dp[__llvm_gcov_ctr.99+16]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.99+16]
	stw r0, dp[__llvm_gcov_ctr.99+20]
	ldw r0, dp[.L__profc_frexp+28]
	ldw r1, dp[.L__profc_frexp+24]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc_frexp+24]
	stw r0, dp[.L__profc_frexp+28]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldw r3, cp[.LCPI99_2]
	bl __muldf3
	stw r1, sp[5]
	stw r0, sp[4]
	bu .LBB99_4
.LBB99_6:
	bu .LBB99_15
.LBB99_7:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r2, 0
	ldw r3, cp[.LCPI99_2]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB99_14
	bu .LBB99_8
.LBB99_8:
	ldw r0, dp[__llvm_gcov_ctr.99+28]
	ldw r1, dp[__llvm_gcov_ctr.99+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.99+24]
	stw r0, dp[__llvm_gcov_ctr.99+28]
	ldw r0, dp[.L__profc_frexp+44]
	ldw r1, dp[.L__profc_frexp+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_frexp+40]
	stw r0, dp[.L__profc_frexp+44]
	ldw r0, sp[4]
	ldw r1, sp[5]
	mov r2, r3
	bl __eqdf2
	bf r0, .LBB99_14
	bu .LBB99_9
.LBB99_9:
	ldw r0, dp[.L__profc_frexp+52]
	ldw r1, dp[.L__profc_frexp+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_frexp+48]
	stw r0, dp[.L__profc_frexp+52]
	bu .LBB99_10
.LBB99_10:
	ldw r0, dp[.L__profc_frexp+36]
	ldw r1, dp[.L__profc_frexp+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_frexp+32]
	stw r0, dp[.L__profc_frexp+36]
	bu .LBB99_11
.LBB99_11:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r2, 0
	ldw r3, cp[.LCPI99_2]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB99_13
	bu .LBB99_12
.LBB99_12:
	ldw r0, dp[__llvm_gcov_ctr.99+36]
	ldw r1, dp[__llvm_gcov_ctr.99+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.99+32]
	stw r0, dp[__llvm_gcov_ctr.99+36]
	ldw r0, dp[.L__profc_frexp+60]
	ldw r1, dp[.L__profc_frexp+56]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_frexp+56]
	stw r0, dp[.L__profc_frexp+60]
	ldw r0, sp[1]
	sub r0, r0, 1
	stw r0, sp[1]
	ldw r2, sp[4]
	ldw r3, sp[5]
	mov r0, r2
	mov r1, r3
	bl __adddf3
	stw r1, sp[5]
	stw r0, sp[4]
	bu .LBB99_11
.LBB99_13:
	ldw r0, dp[__llvm_gcov_ctr.99+44]
	ldw r1, dp[__llvm_gcov_ctr.99+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.99+40]
	stw r0, dp[__llvm_gcov_ctr.99+44]
	bu .LBB99_14
.LBB99_14:
	ldw r0, dp[__llvm_gcov_ctr.99+52]
	ldw r1, dp[__llvm_gcov_ctr.99+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.99+48]
	stw r0, dp[__llvm_gcov_ctr.99+52]
	bu .LBB99_15
.LBB99_15:
	ldw r0, sp[1]
	ldw r1, sp[3]
	stw r0, r1[0]
	ldw r0, sp[2]
	bf r0, .LBB99_17
	bu .LBB99_16
.LBB99_16:
	ldw r0, dp[__llvm_gcov_ctr.99+60]
	ldw r1, dp[__llvm_gcov_ctr.99+56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.99+56]
	stw r0, dp[__llvm_gcov_ctr.99+60]
	ldw r0, dp[.L__profc_frexp+68]
	ldw r1, dp[.L__profc_frexp+64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_frexp+64]
	stw r0, dp[.L__profc_frexp+68]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI99_0]
	xor r0, r0, r1
	stw r0, sp[5]
	bu .LBB99_17
.LBB99_17:
	ldw r0, sp[4]
	ldw r1, sp[5]
	retsp 6
	.cc_bottom frexp.function
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp

	.globl	__muldi3
	.p2align	2
	.type	__muldi3,@function
	.cc_top __muldi3.function,__muldi3
__muldi3:
	entsp 13
	stw r4, sp[12]
	stw r5, sp[11]
	stw r6, sp[10]
	stw r7, sp[9]
	stw r3, sp[0]
	mov r4, r1
	ldw r1, sp[0]
	mov r11, r0
	ldw r5, dp[__llvm_gcov_ctr.100+4]
	ldw r6, dp[__llvm_gcov_ctr.100]
	ldc r0, 0
	mkmsk r3, 1
	ladd r7, r6, r6, r3, r0
	add r5, r5, r7
	stw r6, dp[__llvm_gcov_ctr.100]
	stw r5, dp[__llvm_gcov_ctr.100+4]
	stw r4, sp[8]
	stw r11, sp[7]
	stw r1, sp[6]
	stw r2, sp[5]
	ldw r1, dp[.L__profc___muldi3+4]
	ldw r2, dp[.L__profc___muldi3]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___muldi3]
	stw r1, dp[.L__profc___muldi3+4]
	stw r0, sp[4]
	stw r0, sp[3]
	ldw r0, sp[7]
	ldw r1, sp[8]
	stw r1, sp[2]
	stw r0, sp[1]
	bu .LBB100_1
.LBB100_1:
	ldw r1, sp[2]
	ldw r0, sp[1]
	or r0, r0, r1
	bf r0, .LBB100_5
	bu .LBB100_2
.LBB100_2:
	ldw r0, dp[.L__profc___muldi3+12]
	ldw r2, dp[.L__profc___muldi3+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___muldi3+8]
	stw r0, dp[.L__profc___muldi3+12]
	ldaw r0, sp[1]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB100_4
	bu .LBB100_3
.LBB100_3:
	ldw r0, dp[__llvm_gcov_ctr.100+12]
	ldw r1, dp[__llvm_gcov_ctr.100+8]
	ldc r11, 0
	mkmsk r2, 1
	ladd r3, r1, r1, r2, r11
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.100+8]
	stw r0, dp[__llvm_gcov_ctr.100+12]
	ldw r0, dp[.L__profc___muldi3+20]
	ldw r1, dp[.L__profc___muldi3+16]
	ladd r2, r1, r1, r2, r11
	add r0, r0, r2
	stw r1, dp[.L__profc___muldi3+16]
	stw r0, dp[.L__profc___muldi3+20]
	ldw r2, sp[6]
	ldw r3, sp[5]
	ldw r0, sp[4]
	ldw r1, sp[3]
	ladd r3, r1, r1, r3, r11
	ladd r2, r0, r0, r2, r3
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB100_4
.LBB100_4:
	ldw r0, dp[__llvm_gcov_ctr.100+20]
	ldw r1, dp[__llvm_gcov_ctr.100+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.100+16]
	stw r0, dp[__llvm_gcov_ctr.100+20]
	ldw r0, sp[6]
	ldw r1, sp[5]
	mkmsk r2, 5
	shr r3, r1, r2
	shl r0, r0, 1
	or r0, r0, r3
	shl r1, r1, 1
	stw r1, sp[5]
	stw r0, sp[6]
	ldw r0, sp[1]
	ldw r1, sp[2]
	shl r2, r1, r2
	shr r0, r0, 1
	or r0, r0, r2
	shr r1, r1, 1
	stw r1, sp[2]
	stw r0, sp[1]
	bu .LBB100_1
.LBB100_5:
	ldw r0, sp[3]
	ldw r1, sp[4]
	ldw r7, sp[9]
	ldw r6, sp[10]
	ldw r5, sp[11]
	ldw r4, sp[12]
	retsp 13
	.cc_bottom __muldi3.function
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI101_0:
	.long	2147483648
	.text
	.globl	udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
	.cc_top udivmodsi4.function,udivmodsi4
udivmodsi4:
	entsp 9
	stw r4, sp[8]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r2, dp[.L__profc_udivmodsi4+4]
	ldw r3, dp[.L__profc_udivmodsi4]
	ldc r0, 0
	mkmsk r1, 1
	ladd r11, r3, r3, r1, r0
	add r2, r2, r11
	stw r3, dp[.L__profc_udivmodsi4]
	stw r2, dp[.L__profc_udivmodsi4+4]
	stw r1, sp[3]
	stw r0, sp[2]
	bu .LBB101_1
.LBB101_1:
	ldw r0, sp[5]
	ldw r2, sp[6]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[1]
	bf r0, .LBB101_6
	bu .LBB101_2
.LBB101_2:
	ldw r0, dp[__llvm_gcov_ctr.101+4]
	ldw r2, dp[__llvm_gcov_ctr.101]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.101]
	stw r0, dp[__llvm_gcov_ctr.101+4]
	ldw r0, dp[.L__profc_udivmodsi4+36]
	ldw r2, dp[.L__profc_udivmodsi4+32]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc_udivmodsi4+32]
	stw r0, dp[.L__profc_udivmodsi4+36]
	ldw r0, sp[3]
	stw r1, sp[1]
	bf r0, .LBB101_6
	bu .LBB101_3
.LBB101_3:
	ldw r0, dp[__llvm_gcov_ctr.101+12]
	ldw r1, dp[__llvm_gcov_ctr.101+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.101+8]
	stw r0, dp[__llvm_gcov_ctr.101+12]
	ldw r0, dp[.L__profc_udivmodsi4+44]
	ldw r1, dp[.L__profc_udivmodsi4+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_udivmodsi4+40]
	stw r0, dp[.L__profc_udivmodsi4+44]
	bu .LBB101_4
.LBB101_4:
	ldw r0, dp[.L__profc_udivmodsi4+20]
	ldw r1, dp[.L__profc_udivmodsi4+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_udivmodsi4+16]
	stw r0, dp[.L__profc_udivmodsi4+20]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI101_0]
	and r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[0]
	stw r1, sp[1]
	bt r0, .LBB101_6
	bu .LBB101_5
.LBB101_5:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.101+20]
	ldw r2, dp[__llvm_gcov_ctr.101+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.101+16]
	stw r1, dp[__llvm_gcov_ctr.101+20]
	ldw r1, dp[.L__profc_udivmodsi4+28]
	ldw r2, dp[.L__profc_udivmodsi4+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc_udivmodsi4+24]
	stw r1, dp[.L__profc_udivmodsi4+28]
	stw r0, sp[1]
	bu .LBB101_6
.LBB101_6:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB101_8
	bu .LBB101_7
.LBB101_7:
	ldw r0, dp[__llvm_gcov_ctr.101+28]
	ldw r1, dp[__llvm_gcov_ctr.101+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.101+24]
	stw r0, dp[__llvm_gcov_ctr.101+28]
	ldw r0, dp[.L__profc_udivmodsi4+12]
	ldw r1, dp[.L__profc_udivmodsi4+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_udivmodsi4+8]
	stw r0, dp[.L__profc_udivmodsi4+12]
	ldw r0, sp[5]
	shl r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[3]
	shl r0, r0, 1
	stw r0, sp[3]
	bu .LBB101_1
.LBB101_8:
	bu .LBB101_9
.LBB101_9:
	ldw r0, sp[3]
	bf r0, .LBB101_13
	bu .LBB101_10
.LBB101_10:
	ldw r0, dp[.L__profc_udivmodsi4+52]
	ldw r1, dp[.L__profc_udivmodsi4+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_udivmodsi4+48]
	stw r0, dp[.L__profc_udivmodsi4+52]
	ldw r0, sp[6]
	ldw r1, sp[5]
	lsu r0, r0, r1
	bt r0, .LBB101_12
	bu .LBB101_11
.LBB101_11:
	ldw r0, dp[__llvm_gcov_ctr.101+36]
	ldw r1, dp[__llvm_gcov_ctr.101+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.101+32]
	stw r0, dp[__llvm_gcov_ctr.101+36]
	ldw r0, dp[.L__profc_udivmodsi4+60]
	ldw r1, dp[.L__profc_udivmodsi4+56]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_udivmodsi4+56]
	stw r0, dp[.L__profc_udivmodsi4+60]
	ldw r1, sp[5]
	ldw r0, sp[6]
	sub r0, r0, r1
	stw r0, sp[6]
	ldw r1, sp[3]
	ldw r0, sp[2]
	or r0, r0, r1
	stw r0, sp[2]
	bu .LBB101_12
.LBB101_12:
	ldw r0, dp[__llvm_gcov_ctr.101+44]
	ldw r1, dp[__llvm_gcov_ctr.101+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.101+40]
	stw r0, dp[__llvm_gcov_ctr.101+44]
	ldw r0, sp[3]
	shr r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[5]
	shr r0, r0, 1
	stw r0, sp[5]
	bu .LBB101_9
.LBB101_13:
	ldw r0, sp[4]
	bf r0, .LBB101_15
	bu .LBB101_14
.LBB101_14:
	ldw r0, dp[__llvm_gcov_ctr.101+52]
	ldw r1, dp[__llvm_gcov_ctr.101+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.101+48]
	stw r0, dp[__llvm_gcov_ctr.101+52]
	ldw r0, dp[.L__profc_udivmodsi4+68]
	ldw r1, dp[.L__profc_udivmodsi4+64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc_udivmodsi4+64]
	stw r0, dp[.L__profc_udivmodsi4+68]
	ldw r0, sp[6]
	stw r0, sp[7]
	bu .LBB101_16
.LBB101_15:
	ldw r0, dp[__llvm_gcov_ctr.101+60]
	ldw r1, dp[__llvm_gcov_ctr.101+56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.101+56]
	stw r0, dp[__llvm_gcov_ctr.101+60]
	ldw r0, sp[2]
	stw r0, sp[7]
	bu .LBB101_16
.LBB101_16:
	ldw r0, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom udivmodsi4.function
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4

	.globl	__clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
	.cc_top __clrsbqi2.function,__clrsbqi2
__clrsbqi2:
	entsp 3
	ldc r3, 0
	ldaw r1, sp[1]
	st8 r0, r1[r3]
	ldw r1, dp[.L__profc___clrsbqi2+4]
	ldw r2, dp[.L__profc___clrsbqi2]
	mkmsk r0, 1
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc___clrsbqi2]
	stw r1, dp[.L__profc___clrsbqi2+4]
	bt r0, .LBB102_2
	bu .LBB102_1
.LBB102_1:
	ldw r0, dp[__llvm_gcov_ctr.102+4]
	ldw r1, dp[__llvm_gcov_ctr.102]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.102]
	stw r0, dp[__llvm_gcov_ctr.102+4]
	ldw r0, dp[.L__profc___clrsbqi2+12]
	ldw r1, dp[.L__profc___clrsbqi2+8]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___clrsbqi2+8]
	stw r0, dp[.L__profc___clrsbqi2+12]
	ldaw r1, sp[1]
	ld8u r0, r1[r2]
	not r0, r0
	st8 r0, r1[r2]
	bu .LBB102_2
.LBB102_2:
	ldc r1, 0
	ldaw r0, sp[1]
	ld8u r0, r0[r1]
	bt r0, .LBB102_4
	bu .LBB102_3
.LBB102_3:
	ldw r0, dp[__llvm_gcov_ctr.102+12]
	ldw r1, dp[__llvm_gcov_ctr.102+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.102+8]
	stw r0, dp[__llvm_gcov_ctr.102+12]
	ldw r0, dp[.L__profc___clrsbqi2+20]
	ldw r1, dp[.L__profc___clrsbqi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___clrsbqi2+16]
	stw r0, dp[.L__profc___clrsbqi2+20]
	mkmsk r0, 3
	stw r0, sp[2]
	bu .LBB102_5
.LBB102_4:
	ldw r0, dp[__llvm_gcov_ctr.102+20]
	ldw r2, dp[__llvm_gcov_ctr.102+16]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[__llvm_gcov_ctr.102+16]
	stw r0, dp[__llvm_gcov_ctr.102+20]
	ldaw r0, sp[1]
	ld8u r0, r0[r1]
	shl r0, r0, 8
	clz r0, r0
	stw r0, sp[0]
	ldw r0, sp[0]
	sub r0, r0, 1
	stw r0, sp[2]
	bu .LBB102_5
.LBB102_5:
	ldw r0, sp[2]
	retsp 3
	.cc_bottom __clrsbqi2.function
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2

	.globl	__clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
	.cc_top __clrsbdi2.function,__clrsbdi2
__clrsbdi2:
	entsp 6
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc___clrsbdi2+4]
	ldw r1, dp[.L__profc___clrsbdi2]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___clrsbdi2]
	stw r0, dp[.L__profc___clrsbdi2+4]
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB103_2
	bu .LBB103_1
.LBB103_1:
	ldw r0, dp[__llvm_gcov_ctr.103+4]
	ldw r1, dp[__llvm_gcov_ctr.103]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.103]
	stw r0, dp[__llvm_gcov_ctr.103+4]
	ldw r0, dp[.L__profc___clrsbdi2+12]
	ldw r1, dp[.L__profc___clrsbdi2+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___clrsbdi2+8]
	stw r0, dp[.L__profc___clrsbdi2+12]
	ldw r1, sp[4]
	ldw r0, sp[3]
	not r0, r0
	not r1, r1
	stw r1, sp[4]
	stw r0, sp[3]
	bu .LBB103_2
.LBB103_2:
	ldw r1, sp[4]
	ldw r0, sp[3]
	or r0, r0, r1
	bt r0, .LBB103_4
	bu .LBB103_3
.LBB103_3:
	ldw r0, dp[__llvm_gcov_ctr.103+12]
	ldw r1, dp[__llvm_gcov_ctr.103+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.103+8]
	stw r0, dp[__llvm_gcov_ctr.103+12]
	ldw r0, dp[.L__profc___clrsbdi2+20]
	ldw r1, dp[.L__profc___clrsbdi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___clrsbdi2+16]
	stw r0, dp[.L__profc___clrsbdi2+20]
	mkmsk r0, 6
	stw r0, sp[5]
	bu .LBB103_5
.LBB103_4:
	ldw r0, dp[__llvm_gcov_ctr.103+20]
	ldw r1, dp[__llvm_gcov_ctr.103+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.103+16]
	stw r0, dp[__llvm_gcov_ctr.103+20]
	ldw r2, sp[3]
	ldw r0, sp[4]
	clz r1, r0
	clz r2, r2
	ldaw r2, r2[8]
	stw r2, sp[0]
	stw r1, sp[1]
	bt r0, .LBB103_7
	ldw r0, sp[0]
	stw r0, sp[1]
.LBB103_7:
	ldw r0, sp[1]
	stw r0, sp[2]
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[5]
	bu .LBB103_5
.LBB103_5:
	ldw r0, sp[5]
	retsp 6
	.cc_bottom __clrsbdi2.function
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2

	.globl	__mulsi3
	.p2align	2
	.type	__mulsi3,@function
	.cc_top __mulsi3.function,__mulsi3
__mulsi3:
	entsp 5
	stw r4, sp[4]
	stw r5, sp[3]
	mov r2, r0
	ldw r11, dp[__llvm_gcov_ctr.104+4]
	ldw r4, dp[__llvm_gcov_ctr.104]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.104]
	stw r11, dp[__llvm_gcov_ctr.104+4]
	stw r2, sp[2]
	stw r1, sp[1]
	ldw r1, dp[.L__profc___mulsi3+4]
	ldw r2, dp[.L__profc___mulsi3]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___mulsi3]
	stw r1, dp[.L__profc___mulsi3+4]
	stw r0, sp[0]
	bu .LBB104_1
.LBB104_1:
	ldw r0, sp[2]
	bf r0, .LBB104_5
	bu .LBB104_2
.LBB104_2:
	ldw r0, dp[.L__profc___mulsi3+12]
	ldw r2, dp[.L__profc___mulsi3+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___mulsi3+8]
	stw r0, dp[.L__profc___mulsi3+12]
	ldaw r0, sp[2]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB104_4
	bu .LBB104_3
.LBB104_3:
	ldw r0, dp[__llvm_gcov_ctr.104+12]
	ldw r1, dp[__llvm_gcov_ctr.104+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.104+8]
	stw r0, dp[__llvm_gcov_ctr.104+12]
	ldw r0, dp[.L__profc___mulsi3+20]
	ldw r1, dp[.L__profc___mulsi3+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mulsi3+16]
	stw r0, dp[.L__profc___mulsi3+20]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	bu .LBB104_4
.LBB104_4:
	ldw r0, dp[__llvm_gcov_ctr.104+20]
	ldw r1, dp[__llvm_gcov_ctr.104+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.104+16]
	stw r0, dp[__llvm_gcov_ctr.104+20]
	ldw r0, sp[2]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	shl r0, r0, 1
	stw r0, sp[1]
	bu .LBB104_1
.LBB104_5:
	ldw r0, sp[0]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
	.cc_bottom __mulsi3.function
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI105_0:
	.long	4294967288
	.text
	.globl	__cmovd
	.p2align	2
	.type	__cmovd,@function
	.cc_top __cmovd.function,__cmovd
__cmovd:
	entsp 8
	stw r0, sp[7]
	stw r1, sp[6]
	stw r2, sp[5]
	ldw r0, dp[.L__profc___cmovd+4]
	ldw r1, dp[.L__profc___cmovd]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovd]
	stw r0, dp[.L__profc___cmovd+4]
	ldw r0, sp[5]
	shr r0, r0, 3
	stw r0, sp[3]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI105_0]
	and r0, r0, r1
	stw r0, sp[2]
	ldw r0, sp[7]
	stw r0, sp[1]
	ldw r0, sp[6]
	stw r0, sp[0]
	ldw r0, sp[1]
	ldw r1, sp[0]
	lsu r0, r0, r1
	bt r0, .LBB105_3
	bu .LBB105_1
.LBB105_1:
	ldw r0, dp[__llvm_gcov_ctr.105+4]
	ldw r1, dp[__llvm_gcov_ctr.105]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.105]
	stw r0, dp[__llvm_gcov_ctr.105+4]
	ldw r0, dp[.L__profc___cmovd+20]
	ldw r1, dp[.L__profc___cmovd+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovd+16]
	stw r0, dp[.L__profc___cmovd+20]
	ldw r1, sp[1]
	ldw r0, sp[0]
	ldw r2, sp[5]
	add r0, r0, r2
	lsu r0, r0, r1
	bt r0, .LBB105_3
	bu .LBB105_2
.LBB105_2:
	ldw r0, dp[.L__profc___cmovd+28]
	ldw r1, dp[.L__profc___cmovd+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovd+24]
	stw r0, dp[.L__profc___cmovd+28]
	bu .LBB105_11
.LBB105_3:
	ldw r1, dp[.L__profc___cmovd+12]
	ldw r2, dp[.L__profc___cmovd+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___cmovd+8]
	stw r1, dp[.L__profc___cmovd+12]
	stw r0, sp[4]
	bu .LBB105_4
.LBB105_4:
	ldw r0, sp[4]
	ldw r1, sp[3]
	lsu r0, r0, r1
	bf r0, .LBB105_7
	bu .LBB105_5
.LBB105_5:
	ldw r0, dp[.L__profc___cmovd+36]
	ldw r1, dp[.L__profc___cmovd+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovd+32]
	stw r0, dp[.L__profc___cmovd+36]
	ldw r0, sp[6]
	ldw r1, sp[4]
	shl r3, r1, 3
	add r1, r0, r3
	ldw r0, r1[0]
	ldw r2, r1[1]
	ldw r1, sp[7]
	add r1, r1, r3
	stw r2, r1[1]
	stw r0, r1[0]
	bu .LBB105_6
.LBB105_6:
	ldw r0, dp[__llvm_gcov_ctr.105+12]
	ldw r1, dp[__llvm_gcov_ctr.105+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.105+8]
	stw r0, dp[__llvm_gcov_ctr.105+12]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB105_4
.LBB105_7:
	bu .LBB105_8
.LBB105_8:
	ldw r1, sp[5]
	ldw r0, sp[2]
	lsu r0, r0, r1
	bf r0, .LBB105_10
	bu .LBB105_9
.LBB105_9:
	ldw r0, dp[__llvm_gcov_ctr.105+20]
	ldw r1, dp[__llvm_gcov_ctr.105+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.105+16]
	stw r0, dp[__llvm_gcov_ctr.105+20]
	ldw r0, dp[.L__profc___cmovd+44]
	ldw r1, dp[.L__profc___cmovd+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovd+40]
	stw r0, dp[.L__profc___cmovd+44]
	ldw r0, sp[0]
	ldw r2, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB105_8
.LBB105_10:
	ldw r0, dp[__llvm_gcov_ctr.105+28]
	ldw r1, dp[__llvm_gcov_ctr.105+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.105+24]
	stw r0, dp[__llvm_gcov_ctr.105+28]
	bu .LBB105_15
.LBB105_11:
	bu .LBB105_12
.LBB105_12:
	ldw r0, sp[5]
	sub r1, r0, 1
	stw r1, sp[5]
	bf r0, .LBB105_14
	bu .LBB105_13
.LBB105_13:
	ldw r0, dp[__llvm_gcov_ctr.105+36]
	ldw r1, dp[__llvm_gcov_ctr.105+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.105+32]
	stw r0, dp[__llvm_gcov_ctr.105+36]
	ldw r0, dp[.L__profc___cmovd+52]
	ldw r1, dp[.L__profc___cmovd+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovd+48]
	stw r0, dp[.L__profc___cmovd+52]
	ldw r0, sp[0]
	ldw r2, sp[5]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB105_12
.LBB105_14:
	ldw r0, dp[__llvm_gcov_ctr.105+44]
	ldw r1, dp[__llvm_gcov_ctr.105+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.105+40]
	stw r0, dp[__llvm_gcov_ctr.105+44]
	bu .LBB105_15
.LBB105_15:
	retsp 8
	.cc_bottom __cmovd.function
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd

	.globl	__cmovh
	.p2align	2
	.type	__cmovh,@function
	.cc_top __cmovh.function,__cmovh
__cmovh:
	entsp 7
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r0, dp[.L__profc___cmovh+4]
	ldw r1, dp[.L__profc___cmovh]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovh]
	stw r0, dp[.L__profc___cmovh+4]
	ldw r0, sp[4]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[6]
	stw r0, sp[1]
	ldw r0, sp[5]
	stw r0, sp[0]
	ldw r0, sp[1]
	ldw r1, sp[0]
	lsu r0, r0, r1
	bt r0, .LBB106_3
	bu .LBB106_1
.LBB106_1:
	ldw r0, dp[__llvm_gcov_ctr.106+4]
	ldw r1, dp[__llvm_gcov_ctr.106]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.106]
	stw r0, dp[__llvm_gcov_ctr.106+4]
	ldw r0, dp[.L__profc___cmovh+20]
	ldw r1, dp[.L__profc___cmovh+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovh+16]
	stw r0, dp[.L__profc___cmovh+20]
	ldw r1, sp[1]
	ldw r0, sp[0]
	ldw r2, sp[4]
	add r0, r0, r2
	lsu r0, r0, r1
	bt r0, .LBB106_3
	bu .LBB106_2
.LBB106_2:
	ldw r0, dp[.L__profc___cmovh+28]
	ldw r1, dp[.L__profc___cmovh+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovh+24]
	stw r0, dp[.L__profc___cmovh+28]
	bu .LBB106_10
.LBB106_3:
	ldw r1, dp[.L__profc___cmovh+12]
	ldw r2, dp[.L__profc___cmovh+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___cmovh+8]
	stw r1, dp[.L__profc___cmovh+12]
	stw r0, sp[3]
	bu .LBB106_4
.LBB106_4:
	ldw r0, sp[3]
	ldw r1, sp[2]
	lsu r0, r0, r1
	bf r0, .LBB106_7
	bu .LBB106_5
.LBB106_5:
	ldw r0, dp[.L__profc___cmovh+36]
	ldw r1, dp[.L__profc___cmovh+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovh+32]
	stw r0, dp[.L__profc___cmovh+36]
	ldw r0, sp[5]
	ldw r2, sp[3]
	ld16s r0, r0[r2]
	ldw r1, sp[6]
	st16 r0, r1[r2]
	bu .LBB106_6
.LBB106_6:
	ldw r0, dp[__llvm_gcov_ctr.106+12]
	ldw r1, dp[__llvm_gcov_ctr.106+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.106+8]
	stw r0, dp[__llvm_gcov_ctr.106+12]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB106_4
.LBB106_7:
	ldc r1, 0
	ldaw r0, sp[4]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB106_9
	bu .LBB106_8
.LBB106_8:
	ldw r0, dp[__llvm_gcov_ctr.106+20]
	ldw r1, dp[__llvm_gcov_ctr.106+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.106+16]
	stw r0, dp[__llvm_gcov_ctr.106+20]
	ldw r0, dp[.L__profc___cmovh+44]
	ldw r1, dp[.L__profc___cmovh+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovh+40]
	stw r0, dp[.L__profc___cmovh+44]
	ldw r0, sp[0]
	ldw r1, sp[4]
	sub r2, r1, 1
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB106_9
.LBB106_9:
	ldw r0, dp[__llvm_gcov_ctr.106+28]
	ldw r1, dp[__llvm_gcov_ctr.106+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.106+24]
	stw r0, dp[__llvm_gcov_ctr.106+28]
	bu .LBB106_14
.LBB106_10:
	bu .LBB106_11
.LBB106_11:
	ldw r0, sp[4]
	sub r1, r0, 1
	stw r1, sp[4]
	bf r0, .LBB106_13
	bu .LBB106_12
.LBB106_12:
	ldw r0, dp[__llvm_gcov_ctr.106+36]
	ldw r1, dp[__llvm_gcov_ctr.106+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.106+32]
	stw r0, dp[__llvm_gcov_ctr.106+36]
	ldw r0, dp[.L__profc___cmovh+52]
	ldw r1, dp[.L__profc___cmovh+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovh+48]
	stw r0, dp[.L__profc___cmovh+52]
	ldw r0, sp[0]
	ldw r2, sp[4]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB106_11
.LBB106_13:
	ldw r0, dp[__llvm_gcov_ctr.106+44]
	ldw r1, dp[__llvm_gcov_ctr.106+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.106+40]
	stw r0, dp[__llvm_gcov_ctr.106+44]
	bu .LBB106_14
.LBB106_14:
	retsp 7
	.cc_bottom __cmovh.function
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI107_0:
	.long	4294967292
	.text
	.globl	__cmovw
	.p2align	2
	.type	__cmovw,@function
	.cc_top __cmovw.function,__cmovw
__cmovw:
	entsp 8
	stw r0, sp[7]
	stw r1, sp[6]
	stw r2, sp[5]
	ldw r0, dp[.L__profc___cmovw+4]
	ldw r1, dp[.L__profc___cmovw]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovw]
	stw r0, dp[.L__profc___cmovw+4]
	ldw r0, sp[5]
	shr r0, r0, 2
	stw r0, sp[3]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI107_0]
	and r0, r0, r1
	stw r0, sp[2]
	ldw r0, sp[7]
	stw r0, sp[1]
	ldw r0, sp[6]
	stw r0, sp[0]
	ldw r0, sp[1]
	ldw r1, sp[0]
	lsu r0, r0, r1
	bt r0, .LBB107_3
	bu .LBB107_1
.LBB107_1:
	ldw r0, dp[__llvm_gcov_ctr.107+4]
	ldw r1, dp[__llvm_gcov_ctr.107]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.107]
	stw r0, dp[__llvm_gcov_ctr.107+4]
	ldw r0, dp[.L__profc___cmovw+20]
	ldw r1, dp[.L__profc___cmovw+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovw+16]
	stw r0, dp[.L__profc___cmovw+20]
	ldw r1, sp[1]
	ldw r0, sp[0]
	ldw r2, sp[5]
	add r0, r0, r2
	lsu r0, r0, r1
	bt r0, .LBB107_3
	bu .LBB107_2
.LBB107_2:
	ldw r0, dp[.L__profc___cmovw+28]
	ldw r1, dp[.L__profc___cmovw+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovw+24]
	stw r0, dp[.L__profc___cmovw+28]
	bu .LBB107_11
.LBB107_3:
	ldw r1, dp[.L__profc___cmovw+12]
	ldw r2, dp[.L__profc___cmovw+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___cmovw+8]
	stw r1, dp[.L__profc___cmovw+12]
	stw r0, sp[4]
	bu .LBB107_4
.LBB107_4:
	ldw r0, sp[4]
	ldw r1, sp[3]
	lsu r0, r0, r1
	bf r0, .LBB107_7
	bu .LBB107_5
.LBB107_5:
	ldw r0, dp[.L__profc___cmovw+36]
	ldw r1, dp[.L__profc___cmovw+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovw+32]
	stw r0, dp[.L__profc___cmovw+36]
	ldw r0, sp[6]
	ldw r2, sp[4]
	ldw r0, r0[r2]
	ldw r1, sp[7]
	stw r0, r1[r2]
	bu .LBB107_6
.LBB107_6:
	ldw r0, dp[__llvm_gcov_ctr.107+12]
	ldw r1, dp[__llvm_gcov_ctr.107+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.107+8]
	stw r0, dp[__llvm_gcov_ctr.107+12]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB107_4
.LBB107_7:
	bu .LBB107_8
.LBB107_8:
	ldw r1, sp[5]
	ldw r0, sp[2]
	lsu r0, r0, r1
	bf r0, .LBB107_10
	bu .LBB107_9
.LBB107_9:
	ldw r0, dp[__llvm_gcov_ctr.107+20]
	ldw r1, dp[__llvm_gcov_ctr.107+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.107+16]
	stw r0, dp[__llvm_gcov_ctr.107+20]
	ldw r0, dp[.L__profc___cmovw+44]
	ldw r1, dp[.L__profc___cmovw+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovw+40]
	stw r0, dp[.L__profc___cmovw+44]
	ldw r0, sp[0]
	ldw r2, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB107_8
.LBB107_10:
	ldw r0, dp[__llvm_gcov_ctr.107+28]
	ldw r1, dp[__llvm_gcov_ctr.107+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.107+24]
	stw r0, dp[__llvm_gcov_ctr.107+28]
	bu .LBB107_15
.LBB107_11:
	bu .LBB107_12
.LBB107_12:
	ldw r0, sp[5]
	sub r1, r0, 1
	stw r1, sp[5]
	bf r0, .LBB107_14
	bu .LBB107_13
.LBB107_13:
	ldw r0, dp[__llvm_gcov_ctr.107+36]
	ldw r1, dp[__llvm_gcov_ctr.107+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.107+32]
	stw r0, dp[__llvm_gcov_ctr.107+36]
	ldw r0, dp[.L__profc___cmovw+52]
	ldw r1, dp[.L__profc___cmovw+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmovw+48]
	stw r0, dp[.L__profc___cmovw+52]
	ldw r0, sp[0]
	ldw r2, sp[5]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB107_12
.LBB107_14:
	ldw r0, dp[__llvm_gcov_ctr.107+44]
	ldw r1, dp[__llvm_gcov_ctr.107+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.107+40]
	stw r0, dp[__llvm_gcov_ctr.107+44]
	bu .LBB107_15
.LBB107_15:
	retsp 8
	.cc_bottom __cmovw.function
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw

	.globl	__modi
	.p2align	2
	.type	__modi,@function
	.cc_top __modi.function,__modi
__modi:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.108+4]
	ldw r4, dp[__llvm_gcov_ctr.108]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.108]
	stw r11, dp[__llvm_gcov_ctr.108+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc___modi+4]
	ldw r1, dp[.L__profc___modi]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___modi]
	stw r0, dp[.L__profc___modi+4]
	ldw r0, sp[1]
	ldw r1, sp[0]
	rems r0, r0, r1
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __modi.function
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi

	.globl	__uitod
	.p2align	2
	.type	__uitod,@function
	.cc_top __uitod.function,__uitod
__uitod:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.109+4]
	ldw r11, dp[__llvm_gcov_ctr.109]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.109]
	stw r1, dp[__llvm_gcov_ctr.109+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc___uitod+4]
	ldw r1, dp[.L__profc___uitod]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___uitod]
	stw r0, dp[.L__profc___uitod+4]
	ldw r0, sp[1]
	bl __floatunsidf
	ldw r4, sp[2]
	retsp 3
	.cc_bottom __uitod.function
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod

	.globl	__uitof
	.p2align	2
	.type	__uitof,@function
	.cc_top __uitof.function,__uitof
__uitof:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.110+4]
	ldw r11, dp[__llvm_gcov_ctr.110]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.110]
	stw r1, dp[__llvm_gcov_ctr.110+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc___uitof+4]
	ldw r1, dp[.L__profc___uitof]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___uitof]
	stw r0, dp[.L__profc___uitof+4]
	ldw r0, sp[1]
	bl __floatunsisf
	ldw r4, sp[2]
	retsp 3
	.cc_bottom __uitof.function
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof

	.globl	__ulltod
	.p2align	2
	.type	__ulltod,@function
	.cc_top __ulltod.function,__ulltod
__ulltod:
	entsp 5
	stw r4, sp[4]
	stw r5, sp[3]
	ldw r11, dp[__llvm_gcov_ctr.111+4]
	ldw r4, dp[__llvm_gcov_ctr.111]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.111]
	stw r11, dp[__llvm_gcov_ctr.111+4]
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, dp[.L__profc___ulltod+4]
	ldw r1, dp[.L__profc___ulltod]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ulltod]
	stw r0, dp[.L__profc___ulltod+4]
	ldw r0, sp[1]
	ldw r1, sp[2]
	bl __floatundidf
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
	.cc_bottom __ulltod.function
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod

	.globl	__ulltof
	.p2align	2
	.type	__ulltof,@function
	.cc_top __ulltof.function,__ulltof
__ulltof:
	entsp 5
	stw r4, sp[4]
	stw r5, sp[3]
	ldw r11, dp[__llvm_gcov_ctr.112+4]
	ldw r4, dp[__llvm_gcov_ctr.112]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.112]
	stw r11, dp[__llvm_gcov_ctr.112+4]
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, dp[.L__profc___ulltof+4]
	ldw r1, dp[.L__profc___ulltof]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ulltof]
	stw r0, dp[.L__profc___ulltof+4]
	ldw r0, sp[1]
	ldw r1, sp[2]
	bl __floatundisf
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
	.cc_bottom __ulltof.function
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof

	.globl	__umodi
	.p2align	2
	.type	__umodi,@function
	.cc_top __umodi.function,__umodi
__umodi:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.113+4]
	ldw r4, dp[__llvm_gcov_ctr.113]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.113]
	stw r11, dp[__llvm_gcov_ctr.113+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc___umodi+4]
	ldw r1, dp[.L__profc___umodi]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___umodi]
	stw r0, dp[.L__profc___umodi+4]
	ldw r0, sp[1]
	ldw r1, sp[0]
	remu r0, r0, r1
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __umodi.function
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi

	.globl	__clzhi2
	.p2align	2
	.type	__clzhi2,@function
	.cc_top __clzhi2.function,__clzhi2
__clzhi2:
	entsp 3
	stw r4, sp[2]
	mov r1, r0
	ldw r2, dp[__llvm_gcov_ctr.114+4]
	ldw r11, dp[__llvm_gcov_ctr.114]
	ldc r0, 0
	mkmsk r3, 1
	ladd r4, r11, r11, r3, r0
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.114]
	stw r2, dp[__llvm_gcov_ctr.114+4]
	ldaw r2, sp[1]
	st16 r1, r2[r0]
	ldw r1, dp[.L__profc___clzhi2+4]
	ldw r2, dp[.L__profc___clzhi2]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___clzhi2]
	stw r1, dp[.L__profc___clzhi2+4]
	stw r0, sp[0]
	bu .LBB114_1
.LBB114_1:
	ldw r1, sp[0]
	mkmsk r0, 4
	lss r0, r0, r1
	bt r0, .LBB114_6
	bu .LBB114_2
.LBB114_2:
	ldw r0, dp[.L__profc___clzhi2+12]
	ldw r2, dp[.L__profc___clzhi2+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___clzhi2+8]
	stw r0, dp[.L__profc___clzhi2+12]
	ldaw r0, sp[1]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r2, sp[0]
	mkmsk r1, 4
	sub r1, r1, r2
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB114_4
	bu .LBB114_3
.LBB114_3:
	ldw r0, dp[__llvm_gcov_ctr.114+12]
	ldw r1, dp[__llvm_gcov_ctr.114+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.114+8]
	stw r0, dp[__llvm_gcov_ctr.114+12]
	ldw r0, dp[.L__profc___clzhi2+20]
	ldw r1, dp[.L__profc___clzhi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___clzhi2+16]
	stw r0, dp[.L__profc___clzhi2+20]
	bu .LBB114_6
.LBB114_4:
	bu .LBB114_5
.LBB114_5:
	ldw r0, dp[__llvm_gcov_ctr.114+20]
	ldw r1, dp[__llvm_gcov_ctr.114+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.114+16]
	stw r0, dp[__llvm_gcov_ctr.114+20]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB114_1
.LBB114_6:
	ldw r0, sp[0]
	ldw r4, sp[2]
	retsp 3
	.cc_bottom __clzhi2.function
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2

	.globl	__ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
	.cc_top __ctzhi2.function,__ctzhi2
__ctzhi2:
	entsp 3
	stw r4, sp[2]
	mov r1, r0
	ldw r2, dp[__llvm_gcov_ctr.115+4]
	ldw r11, dp[__llvm_gcov_ctr.115]
	ldc r0, 0
	mkmsk r3, 1
	ladd r4, r11, r11, r3, r0
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.115]
	stw r2, dp[__llvm_gcov_ctr.115+4]
	ldaw r2, sp[1]
	st16 r1, r2[r0]
	ldw r1, dp[.L__profc___ctzhi2+4]
	ldw r2, dp[.L__profc___ctzhi2]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___ctzhi2]
	stw r1, dp[.L__profc___ctzhi2+4]
	stw r0, sp[0]
	bu .LBB115_1
.LBB115_1:
	ldw r1, sp[0]
	mkmsk r0, 4
	lss r0, r0, r1
	bt r0, .LBB115_6
	bu .LBB115_2
.LBB115_2:
	ldw r0, dp[.L__profc___ctzhi2+12]
	ldw r2, dp[.L__profc___ctzhi2+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___ctzhi2+8]
	stw r0, dp[.L__profc___ctzhi2+12]
	ldaw r0, sp[1]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r1, sp[0]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB115_4
	bu .LBB115_3
.LBB115_3:
	ldw r0, dp[__llvm_gcov_ctr.115+12]
	ldw r1, dp[__llvm_gcov_ctr.115+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.115+8]
	stw r0, dp[__llvm_gcov_ctr.115+12]
	ldw r0, dp[.L__profc___ctzhi2+20]
	ldw r1, dp[.L__profc___ctzhi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ctzhi2+16]
	stw r0, dp[.L__profc___ctzhi2+20]
	bu .LBB115_6
.LBB115_4:
	bu .LBB115_5
.LBB115_5:
	ldw r0, dp[__llvm_gcov_ctr.115+20]
	ldw r1, dp[__llvm_gcov_ctr.115+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.115+16]
	stw r0, dp[__llvm_gcov_ctr.115+20]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB115_1
.LBB115_6:
	ldw r0, sp[0]
	ldw r4, sp[2]
	retsp 3
	.cc_bottom __ctzhi2.function
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI116_0:
	.long	1191182336
.LCPI116_1:
	.long	3338665984
	.text
	.globl	__fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
	.cc_top __fixunssfsi.function,__fixunssfsi
__fixunssfsi:
	entsp 3
	stw r0, sp[1]
	ldw r0, dp[.L__profc___fixunssfsi+4]
	ldw r1, dp[.L__profc___fixunssfsi]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___fixunssfsi]
	stw r0, dp[.L__profc___fixunssfsi+4]
	ldw r0, sp[1]
	ldw r1, cp[.LCPI116_0]
	bl __gesf2
	ashr r0, r0, 32
	bt r0, .LBB116_2
	bu .LBB116_1
.LBB116_1:
	ldw r0, dp[__llvm_gcov_ctr.116+4]
	ldw r1, dp[__llvm_gcov_ctr.116]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.116]
	stw r0, dp[__llvm_gcov_ctr.116+4]
	ldw r0, dp[.L__profc___fixunssfsi+12]
	ldw r1, dp[.L__profc___fixunssfsi+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___fixunssfsi+8]
	stw r0, dp[.L__profc___fixunssfsi+12]
	ldw r0, sp[1]
	ldw r1, cp[.LCPI116_1]
	bl __addsf3
	bl __fixsfsi
	ldc r1, 32768
	add r0, r0, r1
	stw r0, sp[2]
	bu .LBB116_3
.LBB116_2:
	ldw r0, dp[__llvm_gcov_ctr.116+12]
	ldw r1, dp[__llvm_gcov_ctr.116+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.116+8]
	stw r0, dp[__llvm_gcov_ctr.116+12]
	ldw r0, sp[1]
	bl __fixsfsi
	stw r0, sp[2]
	bu .LBB116_3
.LBB116_3:
	ldw r0, sp[2]
	retsp 3
	.cc_bottom __fixunssfsi.function
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi

	.globl	__parityhi2
	.p2align	2
	.type	__parityhi2,@function
	.cc_top __parityhi2.function,__parityhi2
__parityhi2:
	entsp 4
	stw r4, sp[3]
	mov r1, r0
	ldw r2, dp[__llvm_gcov_ctr.117+4]
	ldw r11, dp[__llvm_gcov_ctr.117]
	ldc r0, 0
	mkmsk r3, 1
	ladd r4, r11, r11, r3, r0
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.117]
	stw r2, dp[__llvm_gcov_ctr.117+4]
	ldaw r2, sp[2]
	st16 r1, r2[r0]
	ldw r1, dp[.L__profc___parityhi2+4]
	ldw r2, dp[.L__profc___parityhi2]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___parityhi2]
	stw r1, dp[.L__profc___parityhi2+4]
	stw r0, sp[0]
	stw r0, sp[1]
	bu .LBB117_1
.LBB117_1:
	ldw r1, sp[1]
	mkmsk r0, 4
	lss r0, r0, r1
	bt r0, .LBB117_6
	bu .LBB117_2
.LBB117_2:
	ldw r0, dp[.L__profc___parityhi2+12]
	ldw r2, dp[.L__profc___parityhi2+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___parityhi2+8]
	stw r0, dp[.L__profc___parityhi2+12]
	ldaw r0, sp[2]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r1, sp[1]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB117_4
	bu .LBB117_3
.LBB117_3:
	ldw r0, dp[__llvm_gcov_ctr.117+12]
	ldw r1, dp[__llvm_gcov_ctr.117+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.117+8]
	stw r0, dp[__llvm_gcov_ctr.117+12]
	ldw r0, dp[.L__profc___parityhi2+20]
	ldw r1, dp[.L__profc___parityhi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___parityhi2+16]
	stw r0, dp[.L__profc___parityhi2+20]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB117_4
.LBB117_4:
	bu .LBB117_5
.LBB117_5:
	ldw r0, dp[__llvm_gcov_ctr.117+20]
	ldw r1, dp[__llvm_gcov_ctr.117+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.117+16]
	stw r0, dp[__llvm_gcov_ctr.117+20]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB117_1
.LBB117_6:
	ldw r0, sp[0]
	zext r0, 1
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __parityhi2.function
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2

	.globl	__popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
	.cc_top __popcounthi2.function,__popcounthi2
__popcounthi2:
	entsp 4
	stw r4, sp[3]
	mov r1, r0
	ldw r2, dp[__llvm_gcov_ctr.118+4]
	ldw r11, dp[__llvm_gcov_ctr.118]
	ldc r0, 0
	mkmsk r3, 1
	ladd r4, r11, r11, r3, r0
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.118]
	stw r2, dp[__llvm_gcov_ctr.118+4]
	ldaw r2, sp[2]
	st16 r1, r2[r0]
	ldw r1, dp[.L__profc___popcounthi2+4]
	ldw r2, dp[.L__profc___popcounthi2]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___popcounthi2]
	stw r1, dp[.L__profc___popcounthi2+4]
	stw r0, sp[0]
	stw r0, sp[1]
	bu .LBB118_1
.LBB118_1:
	ldw r1, sp[1]
	mkmsk r0, 4
	lss r0, r0, r1
	bt r0, .LBB118_6
	bu .LBB118_2
.LBB118_2:
	ldw r0, dp[.L__profc___popcounthi2+12]
	ldw r2, dp[.L__profc___popcounthi2+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___popcounthi2+8]
	stw r0, dp[.L__profc___popcounthi2+12]
	ldaw r0, sp[2]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r1, sp[1]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB118_4
	bu .LBB118_3
.LBB118_3:
	ldw r0, dp[__llvm_gcov_ctr.118+12]
	ldw r1, dp[__llvm_gcov_ctr.118+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.118+8]
	stw r0, dp[__llvm_gcov_ctr.118+12]
	ldw r0, dp[.L__profc___popcounthi2+20]
	ldw r1, dp[.L__profc___popcounthi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___popcounthi2+16]
	stw r0, dp[.L__profc___popcounthi2+20]
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB118_4
.LBB118_4:
	bu .LBB118_5
.LBB118_5:
	ldw r0, dp[__llvm_gcov_ctr.118+20]
	ldw r1, dp[__llvm_gcov_ctr.118+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.118+16]
	stw r0, dp[__llvm_gcov_ctr.118+20]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB118_1
.LBB118_6:
	ldw r0, sp[0]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __popcounthi2.function
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2

	.globl	__mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
	.cc_top __mulsi3_iq2000.function,__mulsi3_iq2000
__mulsi3_iq2000:
	entsp 5
	stw r4, sp[4]
	stw r5, sp[3]
	mov r2, r0
	ldw r11, dp[__llvm_gcov_ctr.119+4]
	ldw r4, dp[__llvm_gcov_ctr.119]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.119]
	stw r11, dp[__llvm_gcov_ctr.119+4]
	stw r2, sp[2]
	stw r1, sp[1]
	ldw r1, dp[.L__profc___mulsi3_iq2000+4]
	ldw r2, dp[.L__profc___mulsi3_iq2000]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___mulsi3_iq2000]
	stw r1, dp[.L__profc___mulsi3_iq2000+4]
	stw r0, sp[0]
	bu .LBB119_1
.LBB119_1:
	ldw r0, sp[2]
	bf r0, .LBB119_5
	bu .LBB119_2
.LBB119_2:
	ldw r0, dp[.L__profc___mulsi3_iq2000+12]
	ldw r2, dp[.L__profc___mulsi3_iq2000+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___mulsi3_iq2000+8]
	stw r0, dp[.L__profc___mulsi3_iq2000+12]
	ldaw r0, sp[2]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB119_4
	bu .LBB119_3
.LBB119_3:
	ldw r0, dp[__llvm_gcov_ctr.119+12]
	ldw r1, dp[__llvm_gcov_ctr.119+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.119+8]
	stw r0, dp[__llvm_gcov_ctr.119+12]
	ldw r0, dp[.L__profc___mulsi3_iq2000+20]
	ldw r1, dp[.L__profc___mulsi3_iq2000+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mulsi3_iq2000+16]
	stw r0, dp[.L__profc___mulsi3_iq2000+20]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	bu .LBB119_4
.LBB119_4:
	ldw r0, dp[__llvm_gcov_ctr.119+20]
	ldw r1, dp[__llvm_gcov_ctr.119+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.119+16]
	stw r0, dp[__llvm_gcov_ctr.119+20]
	ldw r0, sp[2]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	shl r0, r0, 1
	stw r0, sp[1]
	bu .LBB119_1
.LBB119_5:
	ldw r0, sp[0]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
	.cc_bottom __mulsi3_iq2000.function
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000

	.globl	__mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
	.cc_top __mulsi3_lm32.function,__mulsi3_lm32
__mulsi3_lm32:
	entsp 4
	stw r0, sp[2]
	stw r1, sp[1]
	ldw r1, dp[.L__profc___mulsi3_lm32+4]
	ldw r2, dp[.L__profc___mulsi3_lm32]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___mulsi3_lm32]
	stw r1, dp[.L__profc___mulsi3_lm32+4]
	stw r0, sp[0]
	ldw r0, sp[2]
	bt r0, .LBB120_2
	bu .LBB120_1
.LBB120_1:
	ldw r1, dp[__llvm_gcov_ctr.120+12]
	ldw r2, dp[__llvm_gcov_ctr.120+8]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.120+8]
	stw r1, dp[__llvm_gcov_ctr.120+12]
	ldw r1, dp[.L__profc___mulsi3_lm32+12]
	ldw r2, dp[.L__profc___mulsi3_lm32+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___mulsi3_lm32+8]
	stw r1, dp[.L__profc___mulsi3_lm32+12]
	stw r0, sp[3]
	bu .LBB120_8
.LBB120_2:
	ldw r0, dp[__llvm_gcov_ctr.120+4]
	ldw r1, dp[__llvm_gcov_ctr.120]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.120]
	stw r0, dp[__llvm_gcov_ctr.120+4]
	bu .LBB120_3
.LBB120_3:
	ldw r0, sp[1]
	bf r0, .LBB120_7
	bu .LBB120_4
.LBB120_4:
	ldw r0, dp[.L__profc___mulsi3_lm32+20]
	ldw r2, dp[.L__profc___mulsi3_lm32+16]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___mulsi3_lm32+16]
	stw r0, dp[.L__profc___mulsi3_lm32+20]
	ldaw r0, sp[1]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB120_6
	bu .LBB120_5
.LBB120_5:
	ldw r0, dp[__llvm_gcov_ctr.120+20]
	ldw r1, dp[__llvm_gcov_ctr.120+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.120+16]
	stw r0, dp[__llvm_gcov_ctr.120+20]
	ldw r0, dp[.L__profc___mulsi3_lm32+28]
	ldw r1, dp[.L__profc___mulsi3_lm32+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mulsi3_lm32+24]
	stw r0, dp[.L__profc___mulsi3_lm32+28]
	ldw r1, sp[2]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	bu .LBB120_6
.LBB120_6:
	ldw r0, dp[__llvm_gcov_ctr.120+28]
	ldw r1, dp[__llvm_gcov_ctr.120+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.120+24]
	stw r0, dp[__llvm_gcov_ctr.120+28]
	ldw r0, sp[2]
	shl r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	shr r0, r0, 1
	stw r0, sp[1]
	bu .LBB120_3
.LBB120_7:
	ldw r0, sp[0]
	stw r0, sp[3]
	bu .LBB120_8
.LBB120_8:
	ldw r0, sp[3]
	retsp 4
	.cc_bottom __mulsi3_lm32.function
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI121_0:
	.long	2147483648
	.text
	.globl	__udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
	.cc_top __udivmodsi4.function,__udivmodsi4
__udivmodsi4:
	entsp 9
	stw r4, sp[8]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r2, dp[.L__profc___udivmodsi4+4]
	ldw r3, dp[.L__profc___udivmodsi4]
	ldc r0, 0
	mkmsk r1, 1
	ladd r11, r3, r3, r1, r0
	add r2, r2, r11
	stw r3, dp[.L__profc___udivmodsi4]
	stw r2, dp[.L__profc___udivmodsi4+4]
	stw r1, sp[3]
	stw r0, sp[2]
	bu .LBB121_1
.LBB121_1:
	ldw r0, sp[5]
	ldw r2, sp[6]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[1]
	bf r0, .LBB121_6
	bu .LBB121_2
.LBB121_2:
	ldw r0, dp[__llvm_gcov_ctr.121+4]
	ldw r2, dp[__llvm_gcov_ctr.121]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.121]
	stw r0, dp[__llvm_gcov_ctr.121+4]
	ldw r0, dp[.L__profc___udivmodsi4+36]
	ldw r2, dp[.L__profc___udivmodsi4+32]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___udivmodsi4+32]
	stw r0, dp[.L__profc___udivmodsi4+36]
	ldw r0, sp[3]
	stw r1, sp[1]
	bf r0, .LBB121_6
	bu .LBB121_3
.LBB121_3:
	ldw r0, dp[__llvm_gcov_ctr.121+12]
	ldw r1, dp[__llvm_gcov_ctr.121+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.121+8]
	stw r0, dp[__llvm_gcov_ctr.121+12]
	ldw r0, dp[.L__profc___udivmodsi4+44]
	ldw r1, dp[.L__profc___udivmodsi4+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4+40]
	stw r0, dp[.L__profc___udivmodsi4+44]
	bu .LBB121_4
.LBB121_4:
	ldw r0, dp[.L__profc___udivmodsi4+20]
	ldw r1, dp[.L__profc___udivmodsi4+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4+16]
	stw r0, dp[.L__profc___udivmodsi4+20]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI121_0]
	and r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[0]
	stw r1, sp[1]
	bt r0, .LBB121_6
	bu .LBB121_5
.LBB121_5:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.121+20]
	ldw r2, dp[__llvm_gcov_ctr.121+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.121+16]
	stw r1, dp[__llvm_gcov_ctr.121+20]
	ldw r1, dp[.L__profc___udivmodsi4+28]
	ldw r2, dp[.L__profc___udivmodsi4+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc___udivmodsi4+24]
	stw r1, dp[.L__profc___udivmodsi4+28]
	stw r0, sp[1]
	bu .LBB121_6
.LBB121_6:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB121_8
	bu .LBB121_7
.LBB121_7:
	ldw r0, dp[__llvm_gcov_ctr.121+28]
	ldw r1, dp[__llvm_gcov_ctr.121+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.121+24]
	stw r0, dp[__llvm_gcov_ctr.121+28]
	ldw r0, dp[.L__profc___udivmodsi4+12]
	ldw r1, dp[.L__profc___udivmodsi4+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4+8]
	stw r0, dp[.L__profc___udivmodsi4+12]
	ldw r0, sp[5]
	shl r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[3]
	shl r0, r0, 1
	stw r0, sp[3]
	bu .LBB121_1
.LBB121_8:
	bu .LBB121_9
.LBB121_9:
	ldw r0, sp[3]
	bf r0, .LBB121_13
	bu .LBB121_10
.LBB121_10:
	ldw r0, dp[.L__profc___udivmodsi4+52]
	ldw r1, dp[.L__profc___udivmodsi4+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4+48]
	stw r0, dp[.L__profc___udivmodsi4+52]
	ldw r0, sp[6]
	ldw r1, sp[5]
	lsu r0, r0, r1
	bt r0, .LBB121_12
	bu .LBB121_11
.LBB121_11:
	ldw r0, dp[__llvm_gcov_ctr.121+36]
	ldw r1, dp[__llvm_gcov_ctr.121+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.121+32]
	stw r0, dp[__llvm_gcov_ctr.121+36]
	ldw r0, dp[.L__profc___udivmodsi4+60]
	ldw r1, dp[.L__profc___udivmodsi4+56]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4+56]
	stw r0, dp[.L__profc___udivmodsi4+60]
	ldw r1, sp[5]
	ldw r0, sp[6]
	sub r0, r0, r1
	stw r0, sp[6]
	ldw r1, sp[3]
	ldw r0, sp[2]
	or r0, r0, r1
	stw r0, sp[2]
	bu .LBB121_12
.LBB121_12:
	ldw r0, dp[__llvm_gcov_ctr.121+44]
	ldw r1, dp[__llvm_gcov_ctr.121+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.121+40]
	stw r0, dp[__llvm_gcov_ctr.121+44]
	ldw r0, sp[3]
	shr r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[5]
	shr r0, r0, 1
	stw r0, sp[5]
	bu .LBB121_9
.LBB121_13:
	ldw r0, sp[4]
	bf r0, .LBB121_15
	bu .LBB121_14
.LBB121_14:
	ldw r0, dp[__llvm_gcov_ctr.121+52]
	ldw r1, dp[__llvm_gcov_ctr.121+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.121+48]
	stw r0, dp[__llvm_gcov_ctr.121+52]
	ldw r0, dp[.L__profc___udivmodsi4+68]
	ldw r1, dp[.L__profc___udivmodsi4+64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4+64]
	stw r0, dp[.L__profc___udivmodsi4+68]
	ldw r0, sp[6]
	stw r0, sp[7]
	bu .LBB121_16
.LBB121_15:
	ldw r0, dp[__llvm_gcov_ctr.121+60]
	ldw r1, dp[__llvm_gcov_ctr.121+56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.121+56]
	stw r0, dp[__llvm_gcov_ctr.121+60]
	ldw r0, sp[2]
	stw r0, sp[7]
	bu .LBB121_16
.LBB121_16:
	ldw r0, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom __udivmodsi4.function
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4

	.globl	__mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
	.cc_top __mspabi_cmpf.function,__mspabi_cmpf
__mspabi_cmpf:
	entsp 4
	stw r0, sp[2]
	stw r1, sp[1]
	ldw r0, dp[.L__profc___mspabi_cmpf+4]
	ldw r1, dp[.L__profc___mspabi_cmpf]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mspabi_cmpf]
	stw r0, dp[.L__profc___mspabi_cmpf+4]
	ldw r0, sp[2]
	ldw r1, sp[1]
	bl __ltsf2
	ashr r0, r0, 32
	bf r0, .LBB122_2
	bu .LBB122_1
.LBB122_1:
	ldw r0, dp[__llvm_gcov_ctr.122+4]
	ldw r1, dp[__llvm_gcov_ctr.122]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.122]
	stw r0, dp[__llvm_gcov_ctr.122+4]
	ldw r0, dp[.L__profc___mspabi_cmpf+12]
	ldw r1, dp[.L__profc___mspabi_cmpf+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mspabi_cmpf+8]
	stw r0, dp[.L__profc___mspabi_cmpf+12]
	mkmsk r0, 32
	stw r0, sp[3]
	bu .LBB122_5
.LBB122_2:
	ldw r0, sp[2]
	ldw r1, sp[1]
	bl __gtsf2
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB122_4
	bu .LBB122_3
.LBB122_3:
	ldw r1, dp[__llvm_gcov_ctr.122+12]
	ldw r2, dp[__llvm_gcov_ctr.122+8]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.122+8]
	stw r1, dp[__llvm_gcov_ctr.122+12]
	ldw r1, dp[.L__profc___mspabi_cmpf+20]
	ldw r2, dp[.L__profc___mspabi_cmpf+16]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc___mspabi_cmpf+16]
	stw r1, dp[.L__profc___mspabi_cmpf+20]
	stw r0, sp[3]
	bu .LBB122_5
.LBB122_4:
	ldw r1, dp[__llvm_gcov_ctr.122+20]
	ldw r2, dp[__llvm_gcov_ctr.122+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.122+16]
	stw r1, dp[__llvm_gcov_ctr.122+20]
	stw r0, sp[3]
	bu .LBB122_5
.LBB122_5:
	ldw r0, sp[3]
	retsp 4
	.cc_bottom __mspabi_cmpf.function
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf

	.globl	__mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
	.cc_top __mspabi_cmpd.function,__mspabi_cmpd
__mspabi_cmpd:
	entsp 6
	stw r1, sp[4]
	stw r0, sp[3]
	stw r3, sp[2]
	stw r2, sp[1]
	ldw r0, dp[.L__profc___mspabi_cmpd+4]
	ldw r1, dp[.L__profc___mspabi_cmpd]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mspabi_cmpd]
	stw r0, dp[.L__profc___mspabi_cmpd+4]
	ldw r0, sp[3]
	ldw r1, sp[4]
	ldw r2, sp[1]
	ldw r3, sp[2]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB123_2
	bu .LBB123_1
.LBB123_1:
	ldw r0, dp[__llvm_gcov_ctr.123+4]
	ldw r1, dp[__llvm_gcov_ctr.123]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.123]
	stw r0, dp[__llvm_gcov_ctr.123+4]
	ldw r0, dp[.L__profc___mspabi_cmpd+12]
	ldw r1, dp[.L__profc___mspabi_cmpd+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mspabi_cmpd+8]
	stw r0, dp[.L__profc___mspabi_cmpd+12]
	mkmsk r0, 32
	stw r0, sp[5]
	bu .LBB123_5
.LBB123_2:
	ldw r0, sp[3]
	ldw r1, sp[4]
	ldw r2, sp[1]
	ldw r3, sp[2]
	bl __gtdf2
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB123_4
	bu .LBB123_3
.LBB123_3:
	ldw r1, dp[__llvm_gcov_ctr.123+12]
	ldw r2, dp[__llvm_gcov_ctr.123+8]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.123+8]
	stw r1, dp[__llvm_gcov_ctr.123+12]
	ldw r1, dp[.L__profc___mspabi_cmpd+20]
	ldw r2, dp[.L__profc___mspabi_cmpd+16]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc___mspabi_cmpd+16]
	stw r1, dp[.L__profc___mspabi_cmpd+20]
	stw r0, sp[5]
	bu .LBB123_5
.LBB123_4:
	ldw r1, dp[__llvm_gcov_ctr.123+20]
	ldw r2, dp[__llvm_gcov_ctr.123+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.123+16]
	stw r1, dp[__llvm_gcov_ctr.123+20]
	stw r0, sp[5]
	bu .LBB123_5
.LBB123_5:
	ldw r0, sp[5]
	retsp 6
	.cc_bottom __mspabi_cmpd.function
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd

	.globl	__mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
	.cc_top __mspabi_mpysll.function,__mspabi_mpysll
__mspabi_mpysll:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	mov r2, r0
	ldw r11, dp[__llvm_gcov_ctr.124+4]
	ldw r4, dp[__llvm_gcov_ctr.124]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.124]
	stw r11, dp[__llvm_gcov_ctr.124+4]
	stw r2, sp[1]
	stw r1, sp[0]
	ldw r1, dp[.L__profc___mspabi_mpysll+4]
	ldw r2, dp[.L__profc___mspabi_mpysll]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___mspabi_mpysll]
	stw r1, dp[.L__profc___mspabi_mpysll+4]
	ldw r2, sp[1]
	ldw r3, sp[0]
	mov r1, r0
	maccs r1, r0, r2, r3
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __mspabi_mpysll.function
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll

	.globl	__mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
	.cc_top __mspabi_mpyull.function,__mspabi_mpyull
__mspabi_mpyull:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.125+4]
	ldw r4, dp[__llvm_gcov_ctr.125]
	ldc r2, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r2
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.125]
	stw r11, dp[__llvm_gcov_ctr.125+4]
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, dp[.L__profc___mspabi_mpyull+4]
	ldw r1, dp[.L__profc___mspabi_mpyull]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___mspabi_mpyull]
	stw r0, dp[.L__profc___mspabi_mpyull+4]
	ldw r0, sp[1]
	ldw r1, sp[0]
	lmul r1, r0, r0, r1, r2, r2
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __mspabi_mpyull.function
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull

	.globl	__mulhi3
	.p2align	2
	.type	__mulhi3,@function
	.cc_top __mulhi3.function,__mulhi3
__mulhi3:
	entsp 9
	stw r4, sp[8]
	stw r0, sp[7]
	stw r1, sp[6]
	ldw r1, dp[.L__profc___mulhi3+4]
	ldw r2, dp[.L__profc___mulhi3]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___mulhi3]
	stw r1, dp[.L__profc___mulhi3+4]
	stw r0, sp[4]
	stw r0, sp[3]
	ldw r0, sp[6]
	ashr r0, r0, 32
	bf r0, .LBB126_2
	bu .LBB126_1
.LBB126_1:
	ldw r1, dp[__llvm_gcov_ctr.126+4]
	ldw r2, dp[__llvm_gcov_ctr.126]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.126]
	stw r1, dp[__llvm_gcov_ctr.126+4]
	ldw r1, dp[.L__profc___mulhi3+12]
	ldw r2, dp[.L__profc___mulhi3+8]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc___mulhi3+8]
	stw r1, dp[.L__profc___mulhi3+12]
	ldw r1, sp[6]
	neg r1, r1
	stw r1, sp[6]
	stw r0, sp[4]
	bu .LBB126_2
.LBB126_2:
	ldaw r1, sp[5]
	ldc r0, 0
	st8 r0, r1[r0]
	bu .LBB126_3
.LBB126_3:
	ldw r0, sp[6]
	ldc r1, 0
	stw r1, sp[2]
	bf r0, .LBB126_6
	bu .LBB126_4
.LBB126_4:
	ldw r0, dp[__llvm_gcov_ctr.126+12]
	ldw r2, dp[__llvm_gcov_ctr.126+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.126+8]
	stw r0, dp[__llvm_gcov_ctr.126+12]
	ldw r0, dp[.L__profc___mulhi3+28]
	ldw r2, dp[.L__profc___mulhi3+24]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___mulhi3+24]
	stw r0, dp[.L__profc___mulhi3+28]
	ldaw r0, sp[5]
	ld8u r2, r0[r1]
	ldc r0, 32
	lsu r1, r2, r0
	stw r1, sp[1]
	mkmsk r0, 5
	lsu r0, r0, r2
	stw r1, sp[2]
	bt r0, .LBB126_6
	bu .LBB126_5
.LBB126_5:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.126+20]
	ldw r2, dp[__llvm_gcov_ctr.126+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.126+16]
	stw r1, dp[__llvm_gcov_ctr.126+20]
	ldw r1, dp[.L__profc___mulhi3+36]
	ldw r2, dp[.L__profc___mulhi3+32]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc___mulhi3+32]
	stw r1, dp[.L__profc___mulhi3+36]
	stw r0, sp[2]
	bu .LBB126_6
.LBB126_6:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB126_11
	bu .LBB126_7
.LBB126_7:
	ldw r0, dp[.L__profc___mulhi3+20]
	ldw r2, dp[.L__profc___mulhi3+16]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___mulhi3+16]
	stw r0, dp[.L__profc___mulhi3+20]
	ldaw r0, sp[6]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB126_9
	bu .LBB126_8
.LBB126_8:
	ldw r0, dp[__llvm_gcov_ctr.126+28]
	ldw r1, dp[__llvm_gcov_ctr.126+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.126+24]
	stw r0, dp[__llvm_gcov_ctr.126+28]
	ldw r0, dp[.L__profc___mulhi3+44]
	ldw r1, dp[.L__profc___mulhi3+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mulhi3+40]
	stw r0, dp[.L__profc___mulhi3+44]
	ldw r1, sp[7]
	ldw r0, sp[3]
	add r0, r0, r1
	stw r0, sp[3]
	bu .LBB126_9
.LBB126_9:
	ldw r0, sp[7]
	shl r0, r0, 1
	stw r0, sp[7]
	ldw r0, sp[6]
	ashr r0, r0, 1
	stw r0, sp[6]
	bu .LBB126_10
.LBB126_10:
	ldw r0, dp[__llvm_gcov_ctr.126+36]
	ldw r1, dp[__llvm_gcov_ctr.126+32]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.126+32]
	stw r0, dp[__llvm_gcov_ctr.126+36]
	ldaw r1, sp[5]
	ld8u r0, r1[r2]
	add r0, r0, 1
	st8 r0, r1[r2]
	bu .LBB126_3
.LBB126_11:
	ldw r0, sp[4]
	bf r0, .LBB126_13
	bu .LBB126_12
.LBB126_12:
	ldw r0, dp[__llvm_gcov_ctr.126+44]
	ldw r1, dp[__llvm_gcov_ctr.126+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.126+40]
	stw r0, dp[__llvm_gcov_ctr.126+44]
	ldw r0, dp[.L__profc___mulhi3+52]
	ldw r1, dp[.L__profc___mulhi3+48]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___mulhi3+48]
	stw r0, dp[.L__profc___mulhi3+52]
	ldw r0, sp[3]
	neg r0, r0
	stw r0, sp[0]
	bu .LBB126_14
.LBB126_13:
	ldw r0, dp[__llvm_gcov_ctr.126+52]
	ldw r1, dp[__llvm_gcov_ctr.126+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.126+48]
	stw r0, dp[__llvm_gcov_ctr.126+52]
	ldw r0, sp[3]
	stw r0, sp[0]
	bu .LBB126_14
.LBB126_14:
	ldw r0, sp[0]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom __mulhi3.function
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3

	.globl	__divsi3
	.p2align	2
	.type	__divsi3,@function
	.cc_top __divsi3.function,__divsi3
__divsi3:
	entsp 7
	stw r4, sp[6]
	stw r5, sp[5]
	mov r2, r0
	ldw r11, dp[__llvm_gcov_ctr.127+4]
	ldw r4, dp[__llvm_gcov_ctr.127]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.127]
	stw r11, dp[__llvm_gcov_ctr.127+4]
	stw r2, sp[4]
	stw r1, sp[3]
	ldw r1, dp[.L__profc___divsi3+4]
	ldw r2, dp[.L__profc___divsi3]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___divsi3]
	stw r1, dp[.L__profc___divsi3+4]
	stw r0, sp[2]
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB127_2
	bu .LBB127_1
.LBB127_1:
	ldw r0, dp[__llvm_gcov_ctr.127+12]
	ldw r1, dp[__llvm_gcov_ctr.127+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.127+8]
	stw r0, dp[__llvm_gcov_ctr.127+12]
	ldw r0, dp[.L__profc___divsi3+12]
	ldw r1, dp[.L__profc___divsi3+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___divsi3+8]
	stw r0, dp[.L__profc___divsi3+12]
	ldw r0, sp[4]
	neg r0, r0
	stw r0, sp[4]
	ldw r0, sp[2]
	eq r0, r0, 0
	stw r0, sp[2]
	bu .LBB127_2
.LBB127_2:
	ldw r0, sp[3]
	ashr r0, r0, 32
	bf r0, .LBB127_4
	bu .LBB127_3
.LBB127_3:
	ldw r0, dp[__llvm_gcov_ctr.127+20]
	ldw r1, dp[__llvm_gcov_ctr.127+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.127+16]
	stw r0, dp[__llvm_gcov_ctr.127+20]
	ldw r0, dp[.L__profc___divsi3+20]
	ldw r1, dp[.L__profc___divsi3+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___divsi3+16]
	stw r0, dp[.L__profc___divsi3+20]
	ldw r0, sp[3]
	neg r0, r0
	stw r0, sp[3]
	ldw r0, sp[2]
	eq r0, r0, 0
	stw r0, sp[2]
	bu .LBB127_4
.LBB127_4:
	ldw r0, sp[4]
	ldw r1, sp[3]
	ldc r2, 0
	bl __udivmodsi4
	stw r0, sp[1]
	ldw r0, sp[2]
	bf r0, .LBB127_6
	bu .LBB127_5
.LBB127_5:
	ldw r0, dp[__llvm_gcov_ctr.127+28]
	ldw r1, dp[__llvm_gcov_ctr.127+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.127+24]
	stw r0, dp[__llvm_gcov_ctr.127+28]
	ldw r0, dp[.L__profc___divsi3+28]
	ldw r1, dp[.L__profc___divsi3+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___divsi3+24]
	stw r0, dp[.L__profc___divsi3+28]
	ldw r0, sp[1]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB127_6
.LBB127_6:
	ldw r0, sp[1]
	ldw r5, sp[5]
	ldw r4, sp[6]
	retsp 7
	.cc_bottom __divsi3.function
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3

	.globl	__modsi3
	.p2align	2
	.type	__modsi3,@function
	.cc_top __modsi3.function,__modsi3
__modsi3:
	entsp 7
	stw r4, sp[6]
	stw r5, sp[5]
	mov r2, r0
	ldw r11, dp[__llvm_gcov_ctr.128+4]
	ldw r4, dp[__llvm_gcov_ctr.128]
	ldc r0, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r0
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.128]
	stw r11, dp[__llvm_gcov_ctr.128+4]
	stw r2, sp[4]
	stw r1, sp[3]
	ldw r1, dp[.L__profc___modsi3+4]
	ldw r2, dp[.L__profc___modsi3]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___modsi3]
	stw r1, dp[.L__profc___modsi3+4]
	stw r0, sp[2]
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB128_2
	bu .LBB128_1
.LBB128_1:
	ldw r1, dp[__llvm_gcov_ctr.128+12]
	ldw r2, dp[__llvm_gcov_ctr.128+8]
	ldc r3, 0
	mkmsk r0, 1
	ladd r11, r2, r2, r0, r3
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.128+8]
	stw r1, dp[__llvm_gcov_ctr.128+12]
	ldw r1, dp[.L__profc___modsi3+12]
	ldw r2, dp[.L__profc___modsi3+8]
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[.L__profc___modsi3+8]
	stw r1, dp[.L__profc___modsi3+12]
	ldw r1, sp[4]
	neg r1, r1
	stw r1, sp[4]
	stw r0, sp[2]
	bu .LBB128_2
.LBB128_2:
	ldw r0, sp[3]
	ashr r0, r0, 32
	bf r0, .LBB128_4
	bu .LBB128_3
.LBB128_3:
	ldw r0, dp[__llvm_gcov_ctr.128+20]
	ldw r1, dp[__llvm_gcov_ctr.128+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.128+16]
	stw r0, dp[__llvm_gcov_ctr.128+20]
	ldw r0, dp[.L__profc___modsi3+20]
	ldw r1, dp[.L__profc___modsi3+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___modsi3+16]
	stw r0, dp[.L__profc___modsi3+20]
	ldw r0, sp[3]
	neg r0, r0
	stw r0, sp[3]
	bu .LBB128_4
.LBB128_4:
	ldw r0, sp[4]
	ldw r1, sp[3]
	mkmsk r2, 1
	bl __udivmodsi4
	stw r0, sp[1]
	ldw r0, sp[2]
	bf r0, .LBB128_6
	bu .LBB128_5
.LBB128_5:
	ldw r0, dp[__llvm_gcov_ctr.128+28]
	ldw r1, dp[__llvm_gcov_ctr.128+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.128+24]
	stw r0, dp[__llvm_gcov_ctr.128+28]
	ldw r0, dp[.L__profc___modsi3+28]
	ldw r1, dp[.L__profc___modsi3+24]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___modsi3+24]
	stw r0, dp[.L__profc___modsi3+28]
	ldw r0, sp[1]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB128_6
.LBB128_6:
	ldw r0, sp[1]
	ldw r5, sp[5]
	ldw r4, sp[6]
	retsp 7
	.cc_bottom __modsi3.function
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3

	.globl	__udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
	.cc_top __udivmodhi4.function,__udivmodhi4
__udivmodhi4:
	entsp 8
	stw r4, sp[7]
	mov r3, r0
	ldc r0, 0
	ldaw r11, sp[6]
	st16 r3, r11[r0]
	ldaw r3, sp[5]
	st16 r1, r3[r0]
	stw r2, sp[4]
	ldw r2, dp[.L__profc___udivmodhi4+4]
	ldw r3, dp[.L__profc___udivmodhi4]
	mkmsk r1, 1
	ladd r11, r3, r3, r1, r0
	add r2, r2, r11
	stw r3, dp[.L__profc___udivmodhi4]
	stw r2, dp[.L__profc___udivmodhi4+4]
	ldaw r2, sp[3]
	st16 r1, r2[r0]
	ldaw r1, sp[3]
	st16 r0, r1[r0]
	bu .LBB129_1
.LBB129_1:
	ldc r1, 0
	ldaw r0, sp[5]
	ld16s r0, r0[r1]
	zext r0, 16
	ldaw r2, sp[6]
	ld16s r2, r2[r1]
	zext r2, 16
	lss r0, r0, r2
	stw r1, sp[2]
	bf r0, .LBB129_6
	bu .LBB129_2
.LBB129_2:
	ldw r0, dp[__llvm_gcov_ctr.129+4]
	ldw r2, dp[__llvm_gcov_ctr.129]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.129]
	stw r0, dp[__llvm_gcov_ctr.129+4]
	ldw r0, dp[.L__profc___udivmodhi4+36]
	ldw r2, dp[.L__profc___udivmodhi4+32]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___udivmodhi4+32]
	stw r0, dp[.L__profc___udivmodhi4+36]
	ldaw r0, sp[3]
	ld16s r0, r0[r1]
	zext r0, 16
	stw r1, sp[2]
	bf r0, .LBB129_6
	bu .LBB129_3
.LBB129_3:
	ldw r0, dp[__llvm_gcov_ctr.129+12]
	ldw r1, dp[__llvm_gcov_ctr.129+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.129+8]
	stw r0, dp[__llvm_gcov_ctr.129+12]
	ldw r0, dp[.L__profc___udivmodhi4+44]
	ldw r1, dp[.L__profc___udivmodhi4+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodhi4+40]
	stw r0, dp[.L__profc___udivmodhi4+44]
	bu .LBB129_4
.LBB129_4:
	ldw r0, dp[.L__profc___udivmodhi4+20]
	ldw r2, dp[.L__profc___udivmodhi4+16]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___udivmodhi4+16]
	stw r0, dp[.L__profc___udivmodhi4+20]
	ldaw r0, sp[5]
	ld16s r0, r0[r1]
	ldc r1, 32768
	and r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[1]
	stw r1, sp[2]
	bt r0, .LBB129_6
	bu .LBB129_5
.LBB129_5:
	ldw r0, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.129+20]
	ldw r2, dp[__llvm_gcov_ctr.129+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.129+16]
	stw r1, dp[__llvm_gcov_ctr.129+20]
	ldw r1, dp[.L__profc___udivmodhi4+28]
	ldw r2, dp[.L__profc___udivmodhi4+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc___udivmodhi4+24]
	stw r1, dp[.L__profc___udivmodhi4+28]
	stw r0, sp[2]
	bu .LBB129_6
.LBB129_6:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB129_8
	bu .LBB129_7
.LBB129_7:
	ldw r0, dp[__llvm_gcov_ctr.129+28]
	ldw r1, dp[__llvm_gcov_ctr.129+24]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.129+24]
	stw r0, dp[__llvm_gcov_ctr.129+28]
	ldw r0, dp[.L__profc___udivmodhi4+12]
	ldw r1, dp[.L__profc___udivmodhi4+8]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___udivmodhi4+8]
	stw r0, dp[.L__profc___udivmodhi4+12]
	ldaw r1, sp[5]
	ld16s r0, r1[r2]
	shl r0, r0, 1
	st16 r0, r1[r2]
	ldaw r1, sp[3]
	ld16s r0, r1[r2]
	shl r0, r0, 1
	st16 r0, r1[r2]
	bu .LBB129_1
.LBB129_8:
	bu .LBB129_9
.LBB129_9:
	ldc r1, 0
	ldaw r0, sp[3]
	ld16s r0, r0[r1]
	zext r0, 16
	bf r0, .LBB129_13
	bu .LBB129_10
.LBB129_10:
	ldw r0, dp[.L__profc___udivmodhi4+52]
	ldw r1, dp[.L__profc___udivmodhi4+48]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___udivmodhi4+48]
	stw r0, dp[.L__profc___udivmodhi4+52]
	ldaw r0, sp[6]
	ld16s r0, r0[r2]
	zext r0, 16
	ldaw r1, sp[5]
	ld16s r1, r1[r2]
	zext r1, 16
	lss r0, r0, r1
	bt r0, .LBB129_12
	bu .LBB129_11
.LBB129_11:
	ldw r0, dp[__llvm_gcov_ctr.129+36]
	ldw r1, dp[__llvm_gcov_ctr.129+32]
	ldc r2, 0
	stw r2, sp[0]
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.129+32]
	stw r0, dp[__llvm_gcov_ctr.129+36]
	ldw r0, dp[.L__profc___udivmodhi4+60]
	ldw r1, dp[.L__profc___udivmodhi4+56]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___udivmodhi4+56]
	stw r0, dp[.L__profc___udivmodhi4+60]
	ldaw r0, sp[5]
	ld16s r3, r0[r2]
	ldaw r1, sp[6]
	ld16s r0, r1[r2]
	sub r0, r0, r3
	st16 r0, r1[r2]
	ldaw r0, sp[3]
	ld16s r3, r0[r2]
	ldaw r1, sp[3]
	ld16s r0, r1[r2]
	or r0, r0, r3
	st16 r0, r1[r2]
	bu .LBB129_12
.LBB129_12:
	ldw r0, dp[__llvm_gcov_ctr.129+44]
	ldw r1, dp[__llvm_gcov_ctr.129+40]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.129+40]
	stw r0, dp[__llvm_gcov_ctr.129+44]
	ldaw r1, sp[3]
	ld16s r0, r1[r2]
	ldc r3, 65534
	and r0, r0, r3
	shr r0, r0, 1
	st16 r0, r1[r2]
	ldaw r1, sp[5]
	ld16s r0, r1[r2]
	and r0, r0, r3
	shr r0, r0, 1
	st16 r0, r1[r2]
	bu .LBB129_9
.LBB129_13:
	ldw r0, sp[4]
	bf r0, .LBB129_15
	bu .LBB129_14
.LBB129_14:
	ldw r0, dp[__llvm_gcov_ctr.129+52]
	ldw r1, dp[__llvm_gcov_ctr.129+48]
	ldc r2, 0
	mkmsk r3, 1
	ladd r11, r1, r1, r3, r2
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.129+48]
	stw r0, dp[__llvm_gcov_ctr.129+52]
	ldw r0, dp[.L__profc___udivmodhi4+68]
	ldw r1, dp[.L__profc___udivmodhi4+64]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___udivmodhi4+64]
	stw r0, dp[.L__profc___udivmodhi4+68]
	ldaw r0, sp[6]
	ld16s r0, r0[r2]
	ldaw r1, sp[6]
	st16 r0, r1[r2]
	bu .LBB129_16
.LBB129_15:
	ldw r0, dp[__llvm_gcov_ctr.129+60]
	ldw r1, dp[__llvm_gcov_ctr.129+56]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[__llvm_gcov_ctr.129+56]
	stw r0, dp[__llvm_gcov_ctr.129+60]
	ldaw r0, sp[3]
	ld16s r0, r0[r2]
	ldaw r1, sp[6]
	st16 r0, r1[r2]
	bu .LBB129_16
.LBB129_16:
	ldc r1, 0
	ldaw r0, sp[6]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r4, sp[7]
	retsp 8
	.cc_bottom __udivmodhi4.function
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI130_0:
	.long	2147483648
	.text
	.globl	__udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
	.cc_top __udivmodsi4_libgcc.function,__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	entsp 9
	stw r4, sp[8]
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r2, dp[.L__profc___udivmodsi4_libgcc+4]
	ldw r3, dp[.L__profc___udivmodsi4_libgcc]
	ldc r0, 0
	mkmsk r1, 1
	ladd r11, r3, r3, r1, r0
	add r2, r2, r11
	stw r3, dp[.L__profc___udivmodsi4_libgcc]
	stw r2, dp[.L__profc___udivmodsi4_libgcc+4]
	stw r1, sp[3]
	stw r0, sp[2]
	bu .LBB130_1
.LBB130_1:
	ldw r0, sp[5]
	ldw r2, sp[6]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[1]
	bf r0, .LBB130_6
	bu .LBB130_2
.LBB130_2:
	ldw r0, dp[__llvm_gcov_ctr.130+4]
	ldw r2, dp[__llvm_gcov_ctr.130]
	ldc r1, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r1
	add r0, r0, r11
	stw r2, dp[__llvm_gcov_ctr.130]
	stw r0, dp[__llvm_gcov_ctr.130+4]
	ldw r0, dp[.L__profc___udivmodsi4_libgcc+36]
	ldw r2, dp[.L__profc___udivmodsi4_libgcc+32]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___udivmodsi4_libgcc+32]
	stw r0, dp[.L__profc___udivmodsi4_libgcc+36]
	ldw r0, sp[3]
	stw r1, sp[1]
	bf r0, .LBB130_6
	bu .LBB130_3
.LBB130_3:
	ldw r0, dp[__llvm_gcov_ctr.130+12]
	ldw r1, dp[__llvm_gcov_ctr.130+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.130+8]
	stw r0, dp[__llvm_gcov_ctr.130+12]
	ldw r0, dp[.L__profc___udivmodsi4_libgcc+44]
	ldw r1, dp[.L__profc___udivmodsi4_libgcc+40]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4_libgcc+40]
	stw r0, dp[.L__profc___udivmodsi4_libgcc+44]
	bu .LBB130_4
.LBB130_4:
	ldw r0, dp[.L__profc___udivmodsi4_libgcc+20]
	ldw r1, dp[.L__profc___udivmodsi4_libgcc+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4_libgcc+16]
	stw r0, dp[.L__profc___udivmodsi4_libgcc+20]
	ldw r0, sp[5]
	ldw r1, cp[.LCPI130_0]
	and r0, r0, r1
	eq r1, r0, 0
	stw r1, sp[0]
	stw r1, sp[1]
	bt r0, .LBB130_6
	bu .LBB130_5
.LBB130_5:
	ldw r0, sp[0]
	ldw r1, dp[__llvm_gcov_ctr.130+20]
	ldw r2, dp[__llvm_gcov_ctr.130+16]
	ldc r11, 0
	mkmsk r3, 1
	ladd r4, r2, r2, r3, r11
	add r1, r1, r4
	stw r2, dp[__llvm_gcov_ctr.130+16]
	stw r1, dp[__llvm_gcov_ctr.130+20]
	ldw r1, dp[.L__profc___udivmodsi4_libgcc+28]
	ldw r2, dp[.L__profc___udivmodsi4_libgcc+24]
	ladd r3, r2, r2, r3, r11
	add r1, r1, r3
	stw r2, dp[.L__profc___udivmodsi4_libgcc+24]
	stw r1, dp[.L__profc___udivmodsi4_libgcc+28]
	stw r0, sp[1]
	bu .LBB130_6
.LBB130_6:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB130_8
	bu .LBB130_7
.LBB130_7:
	ldw r0, dp[__llvm_gcov_ctr.130+28]
	ldw r1, dp[__llvm_gcov_ctr.130+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.130+24]
	stw r0, dp[__llvm_gcov_ctr.130+28]
	ldw r0, dp[.L__profc___udivmodsi4_libgcc+12]
	ldw r1, dp[.L__profc___udivmodsi4_libgcc+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4_libgcc+8]
	stw r0, dp[.L__profc___udivmodsi4_libgcc+12]
	ldw r0, sp[5]
	shl r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[3]
	shl r0, r0, 1
	stw r0, sp[3]
	bu .LBB130_1
.LBB130_8:
	bu .LBB130_9
.LBB130_9:
	ldw r0, sp[3]
	bf r0, .LBB130_13
	bu .LBB130_10
.LBB130_10:
	ldw r0, dp[.L__profc___udivmodsi4_libgcc+52]
	ldw r1, dp[.L__profc___udivmodsi4_libgcc+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4_libgcc+48]
	stw r0, dp[.L__profc___udivmodsi4_libgcc+52]
	ldw r0, sp[6]
	ldw r1, sp[5]
	lsu r0, r0, r1
	bt r0, .LBB130_12
	bu .LBB130_11
.LBB130_11:
	ldw r0, dp[__llvm_gcov_ctr.130+36]
	ldw r1, dp[__llvm_gcov_ctr.130+32]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.130+32]
	stw r0, dp[__llvm_gcov_ctr.130+36]
	ldw r0, dp[.L__profc___udivmodsi4_libgcc+60]
	ldw r1, dp[.L__profc___udivmodsi4_libgcc+56]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4_libgcc+56]
	stw r0, dp[.L__profc___udivmodsi4_libgcc+60]
	ldw r1, sp[5]
	ldw r0, sp[6]
	sub r0, r0, r1
	stw r0, sp[6]
	ldw r1, sp[3]
	ldw r0, sp[2]
	or r0, r0, r1
	stw r0, sp[2]
	bu .LBB130_12
.LBB130_12:
	ldw r0, dp[__llvm_gcov_ctr.130+44]
	ldw r1, dp[__llvm_gcov_ctr.130+40]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.130+40]
	stw r0, dp[__llvm_gcov_ctr.130+44]
	ldw r0, sp[3]
	shr r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[5]
	shr r0, r0, 1
	stw r0, sp[5]
	bu .LBB130_9
.LBB130_13:
	ldw r0, sp[4]
	bf r0, .LBB130_15
	bu .LBB130_14
.LBB130_14:
	ldw r0, dp[__llvm_gcov_ctr.130+52]
	ldw r1, dp[__llvm_gcov_ctr.130+48]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.130+48]
	stw r0, dp[__llvm_gcov_ctr.130+52]
	ldw r0, dp[.L__profc___udivmodsi4_libgcc+68]
	ldw r1, dp[.L__profc___udivmodsi4_libgcc+64]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___udivmodsi4_libgcc+64]
	stw r0, dp[.L__profc___udivmodsi4_libgcc+68]
	ldw r0, sp[6]
	stw r0, sp[7]
	bu .LBB130_16
.LBB130_15:
	ldw r0, dp[__llvm_gcov_ctr.130+60]
	ldw r1, dp[__llvm_gcov_ctr.130+56]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.130+56]
	stw r0, dp[__llvm_gcov_ctr.130+60]
	ldw r0, sp[2]
	stw r0, sp[7]
	bu .LBB130_16
.LBB130_16:
	ldw r0, sp[7]
	ldw r4, sp[8]
	retsp 9
	.cc_bottom __udivmodsi4_libgcc.function
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc

	.globl	__ashldi3
	.p2align	2
	.type	__ashldi3,@function
	.cc_top __ashldi3.function,__ashldi3
__ashldi3:
	entsp 10
	stw r1, sp[7]
	stw r0, sp[6]
	stw r2, sp[5]
	ldw r0, dp[.L__profc___ashldi3+4]
	ldw r1, dp[.L__profc___ashldi3]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___ashldi3]
	stw r0, dp[.L__profc___ashldi3+4]
	ldc r1, 32
	stw r1, sp[4]
	ldw r0, sp[6]
	ldw r3, sp[7]
	stw r3, sp[3]
	stw r0, sp[2]
	ldaw r0, sp[5]
	ld8u r0, r0[r2]
	and r0, r0, r1
	bf r0, .LBB131_2
	bu .LBB131_1
.LBB131_1:
	ldw r1, dp[__llvm_gcov_ctr.131+4]
	ldw r2, dp[__llvm_gcov_ctr.131]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.131]
	stw r1, dp[__llvm_gcov_ctr.131+4]
	ldw r1, dp[.L__profc___ashldi3+12]
	ldw r2, dp[.L__profc___ashldi3+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___ashldi3+8]
	stw r1, dp[.L__profc___ashldi3+12]
	stw r0, sp[0]
	ldw r0, sp[2]
	ldw r1, sp[5]
	ldaw r1, r1[-8]
	shl r0, r0, r1
	stw r0, sp[1]
	bu .LBB131_5
.LBB131_2:
	ldw r0, sp[5]
	bt r0, .LBB131_4
	bu .LBB131_3
.LBB131_3:
	ldw r0, dp[__llvm_gcov_ctr.131+12]
	ldw r1, dp[__llvm_gcov_ctr.131+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.131+8]
	stw r0, dp[__llvm_gcov_ctr.131+12]
	ldw r0, dp[.L__profc___ashldi3+20]
	ldw r1, dp[.L__profc___ashldi3+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ashldi3+16]
	stw r0, dp[.L__profc___ashldi3+20]
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB131_6
.LBB131_4:
	ldw r0, dp[__llvm_gcov_ctr.131+20]
	ldw r1, dp[__llvm_gcov_ctr.131+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.131+16]
	stw r0, dp[__llvm_gcov_ctr.131+20]
	ldw r0, sp[2]
	ldw r1, sp[5]
	shl r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[3]
	ldw r3, sp[5]
	shl r0, r0, r3
	ldw r1, sp[2]
	ldc r2, 32
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	stw r0, sp[1]
	bu .LBB131_5
.LBB131_5:
	ldw r0, sp[0]
	ldw r1, sp[1]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB131_6
.LBB131_6:
	ldw r0, sp[8]
	ldw r1, sp[9]
	retsp 10
	.cc_bottom __ashldi3.function
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3

	.globl	__ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
	.cc_top __ashrdi3.function,__ashrdi3
__ashrdi3:
	entsp 10
	stw r1, sp[7]
	stw r0, sp[6]
	stw r2, sp[5]
	ldw r0, dp[.L__profc___ashrdi3+4]
	ldw r1, dp[.L__profc___ashrdi3]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___ashrdi3]
	stw r0, dp[.L__profc___ashrdi3+4]
	ldc r1, 32
	stw r1, sp[4]
	ldw r0, sp[6]
	ldw r3, sp[7]
	stw r3, sp[3]
	stw r0, sp[2]
	ldaw r0, sp[5]
	ld8u r0, r0[r2]
	and r0, r0, r1
	bf r0, .LBB132_2
	bu .LBB132_1
.LBB132_1:
	ldw r0, dp[__llvm_gcov_ctr.132+4]
	ldw r1, dp[__llvm_gcov_ctr.132]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.132]
	stw r0, dp[__llvm_gcov_ctr.132+4]
	ldw r0, dp[.L__profc___ashrdi3+12]
	ldw r1, dp[.L__profc___ashrdi3+8]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ashrdi3+8]
	stw r0, dp[.L__profc___ashrdi3+12]
	ldw r0, sp[3]
	ashr r0, r0, 32
	stw r0, sp[1]
	ldw r0, sp[3]
	ldw r1, sp[5]
	ldaw r1, r1[-8]
	ashr r0, r0, r1
	stw r0, sp[0]
	bu .LBB132_5
.LBB132_2:
	ldw r0, sp[5]
	bt r0, .LBB132_4
	bu .LBB132_3
.LBB132_3:
	ldw r0, dp[__llvm_gcov_ctr.132+12]
	ldw r1, dp[__llvm_gcov_ctr.132+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.132+8]
	stw r0, dp[__llvm_gcov_ctr.132+12]
	ldw r0, dp[.L__profc___ashrdi3+20]
	ldw r1, dp[.L__profc___ashrdi3+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ashrdi3+16]
	stw r0, dp[.L__profc___ashrdi3+20]
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB132_6
.LBB132_4:
	ldw r0, dp[__llvm_gcov_ctr.132+20]
	ldw r1, dp[__llvm_gcov_ctr.132+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.132+16]
	stw r0, dp[__llvm_gcov_ctr.132+20]
	ldw r0, sp[3]
	ldw r1, sp[5]
	ashr r0, r0, r1
	stw r0, sp[1]
	ldw r0, sp[3]
	ldw r2, sp[5]
	ldc r1, 32
	sub r1, r1, r2
	shl r0, r0, r1
	ldw r1, sp[2]
	shr r1, r1, r2
	or r0, r0, r1
	stw r0, sp[0]
	bu .LBB132_5
.LBB132_5:
	ldw r0, sp[0]
	ldw r1, sp[1]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB132_6
.LBB132_6:
	ldw r0, sp[8]
	ldw r1, sp[9]
	retsp 10
	.cc_bottom __ashrdi3.function
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI133_0:
	.long	16711680
	.text
	.globl	__bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
	.cc_top __bswapdi2.function,__bswapdi2
__bswapdi2:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	ldw r11, dp[__llvm_gcov_ctr.133+4]
	ldw r4, dp[__llvm_gcov_ctr.133]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.133]
	stw r11, dp[__llvm_gcov_ctr.133+4]
	stw r1, sp[1]
	stw r0, sp[0]
	ldw r0, dp[.L__profc___bswapdi2+4]
	ldw r1, dp[.L__profc___bswapdi2]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___bswapdi2]
	stw r0, dp[.L__profc___bswapdi2+4]
	ldw r2, sp[0]
	ldw r1, sp[1]
	shr r0, r1, 24
	ldw r11, cp[.LCPI133_0]
	and r3, r1, r11
	shr r3, r3, 8
	or r0, r0, r3
	ldc r3, 65280
	and r4, r1, r3
	shl r4, r4, 8
	or r0, r0, r4
	shl r1, r1, 24
	or r0, r0, r1
	shr r1, r2, 24
	and r11, r2, r11
	shr r11, r11, 8
	or r1, r1, r11
	and r3, r2, r3
	shl r3, r3, 8
	or r1, r1, r3
	shl r2, r2, 24
	or r1, r1, r2
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __bswapdi2.function
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI134_0:
	.long	16711680
	.text
	.globl	__bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
	.cc_top __bswapsi2.function,__bswapsi2
__bswapsi2:
	entsp 2
	stw r4, sp[1]
	ldw r1, dp[__llvm_gcov_ctr.134+4]
	ldw r11, dp[__llvm_gcov_ctr.134]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.134]
	stw r1, dp[__llvm_gcov_ctr.134+4]
	stw r0, sp[0]
	ldw r0, dp[.L__profc___bswapsi2+4]
	ldw r1, dp[.L__profc___bswapsi2]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___bswapsi2]
	stw r0, dp[.L__profc___bswapsi2+4]
	ldw r1, sp[0]
	shr r0, r1, 24
	ldw r2, cp[.LCPI134_0]
	and r2, r1, r2
	shr r2, r2, 8
	or r0, r0, r2
	ldc r2, 65280
	and r2, r1, r2
	shl r2, r2, 8
	or r0, r0, r2
	shl r1, r1, 24
	or r0, r0, r1
	ldw r4, sp[1]
	retsp 2
	.cc_bottom __bswapsi2.function
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2

	.globl	__clzsi2
	.p2align	2
	.type	__clzsi2,@function
	.cc_top __clzsi2.function,__clzsi2
__clzsi2:
	entsp 5
	stw r4, sp[4]
	ldw r3, dp[__llvm_gcov_ctr.135+4]
	ldw r11, dp[__llvm_gcov_ctr.135]
	ldc r1, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r1
	add r3, r3, r4
	stw r11, dp[__llvm_gcov_ctr.135]
	stw r3, dp[__llvm_gcov_ctr.135+4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc___clzsi2+4]
	ldw r3, dp[.L__profc___clzsi2]
	ladd r11, r3, r3, r2, r1
	add r0, r0, r11
	stw r3, dp[.L__profc___clzsi2]
	stw r0, dp[.L__profc___clzsi2+4]
	ldw r0, sp[3]
	stw r0, sp[2]
	ldc r3, 2
	ldaw r0, sp[2]
	or r11, r0, r3
	ld16s r11, r11[r1]
	shl r11, r11, 16
	eq r11, r11, 0
	shl r11, r11, 4
	stw r11, sp[1]
	ldw r4, sp[1]
	ldc r11, 16
	sub r4, r11, r4
	ldw r11, sp[2]
	shr r11, r11, r4
	stw r11, sp[2]
	ldw r11, sp[1]
	stw r11, sp[0]
	or r0, r0, r2
	ld8u r0, r0[r1]
	shl r0, r0, 8
	eq r0, r0, 0
	shl r0, r0, 3
	stw r0, sp[1]
	ldw r1, sp[1]
	ldc r0, 8
	sub r1, r0, r1
	ldw r0, sp[2]
	shr r0, r0, r1
	stw r0, sp[2]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[2]
	ldc r1, 240
	and r0, r0, r1
	eq r0, r0, 0
	shl r0, r0, 2
	stw r0, sp[1]
	ldw r1, sp[1]
	ldc r0, 4
	sub r1, r0, r1
	ldw r0, sp[2]
	shr r0, r0, r1
	stw r0, sp[2]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[2]
	ldc r1, 12
	and r0, r0, r1
	eq r0, r0, 0
	shl r0, r0, 1
	stw r0, sp[1]
	ldw r0, sp[1]
	sub r1, r3, r0
	ldw r0, sp[2]
	shr r0, r0, r1
	stw r0, sp[2]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r2, sp[2]
	sub r1, r3, r2
	and r2, r2, r3
	eq r2, r2, 0
	neg r2, r2
	and r1, r1, r2
	add r0, r0, r1
	ldw r4, sp[4]
	retsp 5
	.cc_bottom __clzsi2.function
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2

	.globl	__cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
	.cc_top __cmpdi2.function,__cmpdi2
__cmpdi2:
	entsp 9
	stw r1, sp[7]
	stw r0, sp[6]
	stw r3, sp[5]
	stw r2, sp[4]
	ldw r0, dp[.L__profc___cmpdi2+4]
	ldw r1, dp[.L__profc___cmpdi2]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmpdi2]
	stw r0, dp[.L__profc___cmpdi2+4]
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[3]
	stw r0, sp[2]
	ldw r0, sp[4]
	ldw r1, sp[5]
	stw r1, sp[1]
	stw r0, sp[0]
	ldw r0, sp[3]
	ldw r1, sp[1]
	lss r0, r0, r1
	bf r0, .LBB136_2
	bu .LBB136_1
.LBB136_1:
	ldw r1, dp[__llvm_gcov_ctr.136+4]
	ldw r2, dp[__llvm_gcov_ctr.136]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.136]
	stw r1, dp[__llvm_gcov_ctr.136+4]
	ldw r1, dp[.L__profc___cmpdi2+12]
	ldw r2, dp[.L__profc___cmpdi2+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___cmpdi2+8]
	stw r1, dp[.L__profc___cmpdi2+12]
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_2:
	ldw r1, sp[3]
	ldw r0, sp[1]
	lss r0, r0, r1
	bf r0, .LBB136_4
	bu .LBB136_3
.LBB136_3:
	ldw r0, dp[__llvm_gcov_ctr.136+12]
	ldw r1, dp[__llvm_gcov_ctr.136+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.136+8]
	stw r0, dp[__llvm_gcov_ctr.136+12]
	ldw r0, dp[.L__profc___cmpdi2+20]
	ldw r1, dp[.L__profc___cmpdi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmpdi2+16]
	stw r0, dp[.L__profc___cmpdi2+20]
	ldc r0, 2
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_4:
	ldw r0, sp[2]
	ldw r1, sp[0]
	lsu r0, r0, r1
	bf r0, .LBB136_6
	bu .LBB136_5
.LBB136_5:
	ldw r1, dp[__llvm_gcov_ctr.136+20]
	ldw r2, dp[__llvm_gcov_ctr.136+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.136+16]
	stw r1, dp[__llvm_gcov_ctr.136+20]
	ldw r1, dp[.L__profc___cmpdi2+28]
	ldw r2, dp[.L__profc___cmpdi2+24]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___cmpdi2+24]
	stw r1, dp[.L__profc___cmpdi2+28]
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_6:
	ldw r1, sp[2]
	ldw r0, sp[0]
	lsu r0, r0, r1
	bf r0, .LBB136_8
	bu .LBB136_7
.LBB136_7:
	ldw r0, dp[__llvm_gcov_ctr.136+28]
	ldw r1, dp[__llvm_gcov_ctr.136+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.136+24]
	stw r0, dp[__llvm_gcov_ctr.136+28]
	ldw r0, dp[.L__profc___cmpdi2+36]
	ldw r1, dp[.L__profc___cmpdi2+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___cmpdi2+32]
	stw r0, dp[.L__profc___cmpdi2+36]
	ldc r0, 2
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_8:
	ldw r1, dp[__llvm_gcov_ctr.136+36]
	ldw r2, dp[__llvm_gcov_ctr.136+32]
	ldc r3, 0
	mkmsk r0, 1
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.136+32]
	stw r1, dp[__llvm_gcov_ctr.136+36]
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_9:
	ldw r0, sp[8]
	retsp 9
	.cc_bottom __cmpdi2.function
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2

	.globl	__aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
	.cc_top __aeabi_lcmp.function,__aeabi_lcmp
__aeabi_lcmp:
	entsp 11
	stw r4, sp[10]
	stw r5, sp[9]
	stw r6, sp[8]
	stw r7, sp[7]
	stw r3, sp[1]
	stw r2, sp[2]
	mov r4, r1
	ldw r1, sp[1]
	mov r11, r0
	ldw r0, sp[2]
	ldw r5, dp[__llvm_gcov_ctr.137+4]
	ldw r6, dp[__llvm_gcov_ctr.137]
	ldc r3, 0
	mkmsk r2, 1
	ladd r7, r6, r6, r2, r3
	add r5, r5, r7
	stw r6, dp[__llvm_gcov_ctr.137]
	stw r5, dp[__llvm_gcov_ctr.137+4]
	stw r4, sp[6]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc___aeabi_lcmp+4]
	ldw r1, dp[.L__profc___aeabi_lcmp]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___aeabi_lcmp]
	stw r0, dp[.L__profc___aeabi_lcmp+4]
	ldw r1, sp[6]
	ldw r0, sp[5]
	ldw r3, sp[4]
	ldw r2, sp[3]
	bl __cmpdi2
	sub r0, r0, 1
	ldw r7, sp[7]
	ldw r6, sp[8]
	ldw r5, sp[9]
	ldw r4, sp[10]
	retsp 11
	.cc_bottom __aeabi_lcmp.function
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp

	.globl	__ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
	.cc_top __ctzsi2.function,__ctzsi2
__ctzsi2:
	entsp 5
	stw r4, sp[4]
	ldw r2, dp[__llvm_gcov_ctr.138+4]
	ldw r11, dp[__llvm_gcov_ctr.138]
	ldc r1, 0
	mkmsk r3, 1
	ladd r4, r11, r11, r3, r1
	add r2, r2, r4
	stw r11, dp[__llvm_gcov_ctr.138]
	stw r2, dp[__llvm_gcov_ctr.138+4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc___ctzsi2+4]
	ldw r2, dp[.L__profc___ctzsi2]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___ctzsi2]
	stw r0, dp[.L__profc___ctzsi2+4]
	ldw r0, sp[3]
	stw r0, sp[2]
	ldaw r0, sp[2]
	ld16s r2, r0[r1]
	zext r2, 16
	eq r2, r2, 0
	shl r2, r2, 4
	stw r2, sp[1]
	ldw r3, sp[1]
	ldw r2, sp[2]
	shr r2, r2, r3
	stw r2, sp[2]
	ldw r2, sp[1]
	stw r2, sp[0]
	ld8u r0, r0[r1]
	eq r0, r0, 0
	shl r0, r0, 3
	stw r0, sp[1]
	ldw r1, sp[1]
	ldw r0, sp[2]
	shr r0, r0, r1
	stw r0, sp[2]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[2]
	zext r0, 4
	eq r0, r0, 0
	shl r0, r0, 2
	stw r0, sp[1]
	ldw r1, sp[1]
	ldw r0, sp[2]
	shr r0, r0, r1
	stw r0, sp[2]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[2]
	zext r0, 2
	eq r0, r0, 0
	shl r0, r0, 1
	stw r0, sp[1]
	ldw r1, sp[1]
	ldw r0, sp[2]
	shr r0, r0, r1
	stw r0, sp[2]
	ldw r0, sp[2]
	zext r0, 2
	stw r0, sp[2]
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r2, sp[2]
	shr r3, r2, 1
	ldc r1, 2
	sub r1, r1, r3
	zext r2, 1
	sub r2, r2, 1
	and r1, r1, r2
	add r0, r0, r1
	ldw r4, sp[4]
	retsp 5
	.cc_bottom __ctzsi2.function
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2

	.globl	__lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
	.cc_top __lshrdi3.function,__lshrdi3
__lshrdi3:
	entsp 10
	stw r1, sp[7]
	stw r0, sp[6]
	stw r2, sp[5]
	ldw r0, dp[.L__profc___lshrdi3+4]
	ldw r1, dp[.L__profc___lshrdi3]
	ldc r2, 0
	mkmsk r3, 1
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___lshrdi3]
	stw r0, dp[.L__profc___lshrdi3+4]
	ldc r1, 32
	stw r1, sp[4]
	ldw r0, sp[6]
	ldw r3, sp[7]
	stw r3, sp[3]
	stw r0, sp[2]
	ldaw r0, sp[5]
	ld8u r0, r0[r2]
	and r0, r0, r1
	bf r0, .LBB139_2
	bu .LBB139_1
.LBB139_1:
	ldw r1, dp[__llvm_gcov_ctr.139+4]
	ldw r2, dp[__llvm_gcov_ctr.139]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.139]
	stw r1, dp[__llvm_gcov_ctr.139+4]
	ldw r1, dp[.L__profc___lshrdi3+12]
	ldw r2, dp[.L__profc___lshrdi3+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___lshrdi3+8]
	stw r1, dp[.L__profc___lshrdi3+12]
	stw r0, sp[1]
	ldw r0, sp[3]
	ldw r1, sp[5]
	ldaw r1, r1[-8]
	shr r0, r0, r1
	stw r0, sp[0]
	bu .LBB139_5
.LBB139_2:
	ldw r0, sp[5]
	bt r0, .LBB139_4
	bu .LBB139_3
.LBB139_3:
	ldw r0, dp[__llvm_gcov_ctr.139+12]
	ldw r1, dp[__llvm_gcov_ctr.139+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.139+8]
	stw r0, dp[__llvm_gcov_ctr.139+12]
	ldw r0, dp[.L__profc___lshrdi3+20]
	ldw r1, dp[.L__profc___lshrdi3+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___lshrdi3+16]
	stw r0, dp[.L__profc___lshrdi3+20]
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB139_6
.LBB139_4:
	ldw r0, dp[__llvm_gcov_ctr.139+20]
	ldw r1, dp[__llvm_gcov_ctr.139+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.139+16]
	stw r0, dp[__llvm_gcov_ctr.139+20]
	ldw r0, sp[3]
	ldw r1, sp[5]
	shr r0, r0, r1
	stw r0, sp[1]
	ldw r0, sp[3]
	ldw r2, sp[5]
	ldc r1, 32
	sub r1, r1, r2
	shl r0, r0, r1
	ldw r1, sp[2]
	shr r1, r1, r2
	or r0, r0, r1
	stw r0, sp[0]
	bu .LBB139_5
.LBB139_5:
	ldw r0, sp[0]
	ldw r1, sp[1]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB139_6
.LBB139_6:
	ldw r0, sp[8]
	ldw r1, sp[9]
	retsp 10
	.cc_bottom __lshrdi3.function
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3

	.globl	__muldsi3
	.p2align	2
	.type	__muldsi3,@function
	.cc_top __muldsi3.function,__muldsi3
__muldsi3:
	entsp 11
	stw r4, sp[10]
	stw r5, sp[9]
	stw r6, sp[8]
	stw r7, sp[7]
	ldw r11, dp[__llvm_gcov_ctr.140+4]
	ldw r4, dp[__llvm_gcov_ctr.140]
	ldc r2, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r2
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.140]
	stw r11, dp[__llvm_gcov_ctr.140+4]
	stw r0, sp[6]
	stw r1, sp[5]
	ldw r0, dp[.L__profc___muldsi3+4]
	ldw r1, dp[.L__profc___muldsi3]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___muldsi3]
	stw r0, dp[.L__profc___muldsi3+4]
	ldc r0, 16
	stw r0, sp[2]
	mkmsk r0, 16
	stw r0, sp[1]
	ldaw r4, sp[6]
	ld16s r0, r4[r2]
	zext r0, 16
	ldaw r1, sp[5]
	ld16s r3, r1[r2]
	zext r3, 16
	mul r0, r0, r3
	stw r0, sp[3]
	ldc r11, 2
	ldaw r5, sp[3]
	or r6, r5, r11
	ld16s r0, r6[r2]
	zext r0, 16
	stw r0, sp[0]
	ld16s r0, r5[r2]
	zext r0, 16
	stw r0, sp[3]
	or r0, r4, r11
	ld16s r3, r0[r2]
	zext r3, 16
	ld16s r7, r1[r2]
	zext r7, 16
	mul r7, r3, r7
	ldw r3, sp[0]
	add r3, r3, r7
	stw r3, sp[0]
	ldw r3, sp[0]
	shl r7, r3, 16
	ldw r3, sp[3]
	add r3, r3, r7
	stw r3, sp[3]
	ldaw r3, sp[0]
	or r3, r3, r11
	ld16s r7, r3[r2]
	zext r7, 16
	stw r7, sp[4]
	ld16s r6, r6[r2]
	zext r6, 16
	stw r6, sp[0]
	ld16s r5, r5[r2]
	zext r5, 16
	stw r5, sp[3]
	or r1, r1, r11
	ld16s r11, r1[r2]
	zext r11, 16
	ld16s r4, r4[r2]
	zext r4, 16
	mul r4, r11, r4
	ldw r11, sp[0]
	add r11, r11, r4
	stw r11, sp[0]
	ldw r11, sp[0]
	shl r4, r11, 16
	ldw r11, sp[3]
	add r11, r11, r4
	stw r11, sp[3]
	ld16s r11, r3[r2]
	zext r11, 16
	ldw r3, sp[4]
	add r3, r3, r11
	stw r3, sp[4]
	ld16s r0, r0[r2]
	zext r0, 16
	ld16s r1, r1[r2]
	zext r1, 16
	mul r1, r0, r1
	ldw r0, sp[4]
	add r0, r0, r1
	stw r0, sp[4]
	ldw r0, sp[3]
	ldw r1, sp[4]
	ldw r7, sp[7]
	ldw r6, sp[8]
	ldw r5, sp[9]
	ldw r4, sp[10]
	retsp 11
	.cc_bottom __muldsi3.function
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3

	.globl	__muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
	.cc_top __muldi3_compiler_rt.function,__muldi3_compiler_rt
__muldi3_compiler_rt:
	entsp 17
	stw r4, sp[16]
	stw r5, sp[15]
	stw r6, sp[14]
	stw r7, sp[13]
	stw r3, sp[1]
	stw r2, sp[2]
	mov r4, r1
	ldw r1, sp[1]
	mov r11, r0
	ldw r0, sp[2]
	ldw r5, dp[__llvm_gcov_ctr.141+4]
	ldw r6, dp[__llvm_gcov_ctr.141]
	ldc r3, 0
	mkmsk r2, 1
	ladd r7, r6, r6, r2, r3
	add r5, r5, r7
	stw r6, dp[__llvm_gcov_ctr.141]
	stw r5, dp[__llvm_gcov_ctr.141+4]
	stw r4, sp[12]
	stw r11, sp[11]
	stw r1, sp[10]
	stw r0, sp[9]
	ldw r0, dp[.L__profc___muldi3_compiler_rt+4]
	ldw r1, dp[.L__profc___muldi3_compiler_rt]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___muldi3_compiler_rt]
	stw r0, dp[.L__profc___muldi3_compiler_rt+4]
	ldw r0, sp[11]
	ldw r1, sp[12]
	stw r1, sp[8]
	stw r0, sp[7]
	ldw r0, sp[9]
	ldw r1, sp[10]
	stw r1, sp[6]
	stw r0, sp[5]
	ldw r0, sp[7]
	ldw r1, sp[5]
	bl __muldsi3
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, sp[8]
	ldw r1, sp[5]
	ldw r2, sp[7]
	ldw r3, sp[6]
	mul r2, r2, r3
	ldw r3, sp[4]
	lmul r1, r0, r0, r1, r2, r3
	stw r0, sp[4]
	ldw r0, sp[3]
	ldw r1, sp[4]
	ldw r7, sp[13]
	ldw r6, sp[14]
	ldw r5, sp[15]
	ldw r4, sp[16]
	retsp 17
	.cc_bottom __muldi3_compiler_rt.function
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt

	.globl	__negdi2
	.p2align	2
	.type	__negdi2,@function
	.cc_top __negdi2.function,__negdi2
__negdi2:
	entsp 4
	stw r4, sp[3]
	stw r5, sp[2]
	mov r2, r1
	ldw r11, dp[__llvm_gcov_ctr.142+4]
	ldw r4, dp[__llvm_gcov_ctr.142]
	ldc r1, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r1
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.142]
	stw r11, dp[__llvm_gcov_ctr.142+4]
	stw r2, sp[1]
	stw r0, sp[0]
	ldw r0, dp[.L__profc___negdi2+4]
	ldw r2, dp[.L__profc___negdi2]
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___negdi2]
	stw r0, dp[.L__profc___negdi2+4]
	ldw r2, sp[1]
	ldw r0, sp[0]
	lsub r3, r0, r1, r0, r1
	lsub r2, r1, r1, r2, r3
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
	.cc_bottom __negdi2.function
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2

	.globl	__paritydi2
	.p2align	2
	.type	__paritydi2,@function
	.cc_top __paritydi2.function,__paritydi2
__paritydi2:
	entsp 7
	stw r4, sp[6]
	stw r5, sp[5]
	ldw r11, dp[__llvm_gcov_ctr.143+4]
	ldw r4, dp[__llvm_gcov_ctr.143]
	ldc r3, 0
	mkmsk r2, 1
	ladd r5, r4, r4, r2, r3
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.143]
	stw r11, dp[__llvm_gcov_ctr.143+4]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc___paritydi2+4]
	ldw r1, dp[.L__profc___paritydi2]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___paritydi2]
	stw r0, dp[.L__profc___paritydi2+4]
	ldw r0, sp[3]
	ldw r1, sp[4]
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, sp[2]
	ldw r1, sp[1]
	xor r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 16
	xor r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 8
	xor r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 4
	xor r0, r0, r1
	stw r0, sp[0]
	ldw r1, sp[0]
	zext r1, 4
	ldc r0, 27030
	shr r0, r0, r1
	zext r0, 1
	ldw r5, sp[5]
	ldw r4, sp[6]
	retsp 7
	.cc_bottom __paritydi2.function
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2

	.globl	__paritysi2
	.p2align	2
	.type	__paritysi2,@function
	.cc_top __paritysi2.function,__paritysi2
__paritysi2:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.144+4]
	ldw r11, dp[__llvm_gcov_ctr.144]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.144]
	stw r1, dp[__llvm_gcov_ctr.144+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc___paritysi2+4]
	ldw r1, dp[.L__profc___paritysi2]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___paritysi2]
	stw r0, dp[.L__profc___paritysi2+4]
	ldw r0, sp[1]
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 16
	xor r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 8
	xor r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 4
	xor r0, r0, r1
	stw r0, sp[0]
	ldw r1, sp[0]
	zext r1, 4
	ldc r0, 27030
	shr r0, r0, r1
	zext r0, 1
	ldw r4, sp[2]
	retsp 3
	.cc_bottom __paritysi2.function
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI145_0:
	.long	1431655765
.LCPI145_1:
	.long	858993459
.LCPI145_2:
	.long	252645135
	.text
	.globl	__popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
	.cc_top __popcountdi2.function,__popcountdi2
__popcountdi2:
	entsp 7
	stw r4, sp[6]
	stw r5, sp[5]
	ldw r11, dp[__llvm_gcov_ctr.145+4]
	ldw r4, dp[__llvm_gcov_ctr.145]
	ldc r2, 0
	mkmsk r3, 1
	ladd r5, r4, r4, r3, r2
	add r11, r11, r5
	stw r4, dp[__llvm_gcov_ctr.145]
	stw r11, dp[__llvm_gcov_ctr.145+4]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc___popcountdi2+4]
	ldw r1, dp[.L__profc___popcountdi2]
	ladd r3, r1, r1, r3, r2
	add r0, r0, r3
	stw r1, dp[.L__profc___popcountdi2]
	stw r0, dp[.L__profc___popcountdi2+4]
	ldw r0, sp[3]
	ldw r1, sp[4]
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, sp[2]
	ldw r1, sp[1]
	shr r11, r1, 1
	shr r3, r0, 1
	ldw r4, cp[.LCPI145_0]
	and r3, r3, r4
	and r11, r11, r4
	lsub r11, r1, r1, r11, r2
	lsub r3, r0, r0, r3, r11
	stw r1, sp[1]
	stw r0, sp[2]
	ldw r3, sp[2]
	ldw r11, sp[1]
	shr r1, r11, 2
	shr r0, r3, 2
	ldw r4, cp[.LCPI145_1]
	and r0, r0, r4
	and r1, r1, r4
	and r3, r3, r4
	and r11, r11, r4
	ladd r11, r1, r1, r11, r2
	ladd r3, r0, r0, r3, r11
	stw r1, sp[1]
	stw r0, sp[2]
	ldw r1, sp[1]
	ldw r0, sp[2]
	ldc r3, 28
	shl r11, r0, r3
	shr r3, r1, 4
	or r11, r3, r11
	shr r3, r0, 4
	ladd r11, r1, r1, r11, r2
	ladd r3, r0, r0, r3, r11
	ldw r3, cp[.LCPI145_2]
	and r0, r0, r3
	and r1, r1, r3
	stw r1, sp[1]
	stw r0, sp[2]
	ldw r1, sp[2]
	ldw r0, sp[1]
	ladd r1, r0, r0, r1, r2
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 16
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 8
	add r0, r0, r1
	zext r0, 7
	ldw r5, sp[5]
	ldw r4, sp[6]
	retsp 7
	.cc_bottom __popcountdi2.function
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI146_0:
	.long	1431655765
.LCPI146_1:
	.long	858993459
.LCPI146_2:
	.long	252645135
	.text
	.globl	__popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
	.cc_top __popcountsi2.function,__popcountsi2
__popcountsi2:
	entsp 3
	stw r4, sp[2]
	ldw r1, dp[__llvm_gcov_ctr.146+4]
	ldw r11, dp[__llvm_gcov_ctr.146]
	ldc r3, 0
	mkmsk r2, 1
	ladd r4, r11, r11, r2, r3
	add r1, r1, r4
	stw r11, dp[__llvm_gcov_ctr.146]
	stw r1, dp[__llvm_gcov_ctr.146+4]
	stw r0, sp[1]
	ldw r0, dp[.L__profc___popcountsi2+4]
	ldw r1, dp[.L__profc___popcountsi2]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___popcountsi2]
	stw r0, dp[.L__profc___popcountsi2+4]
	ldw r0, sp[1]
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 1
	ldw r2, cp[.LCPI146_0]
	and r1, r1, r2
	sub r0, r0, r1
	stw r0, sp[0]
	ldw r1, sp[0]
	shr r0, r1, 2
	ldw r2, cp[.LCPI146_1]
	and r0, r0, r2
	and r1, r1, r2
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 4
	add r0, r0, r1
	ldw r1, cp[.LCPI146_2]
	and r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 16
	add r0, r0, r1
	stw r0, sp[0]
	ldw r0, sp[0]
	shr r1, r0, 8
	add r0, r0, r1
	zext r0, 6
	ldw r4, sp[2]
	retsp 3
	.cc_bottom __popcountsi2.function
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI147_0:
	.long	1072693248
	.text
	.globl	__powidf2
	.p2align	2
	.type	__powidf2,@function
	.cc_top __powidf2.function,__powidf2
__powidf2:
	entsp 9
	stw r1, sp[8]
	stw r0, sp[7]
	stw r2, sp[6]
	ldw r1, dp[.L__profc___powidf2+4]
	ldw r2, dp[.L__profc___powidf2]
	ldc r0, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___powidf2]
	stw r1, dp[.L__profc___powidf2+4]
	ldw r1, sp[6]
	mkmsk r2, 5
	shr r1, r1, r2
	stw r1, sp[5]
	ldw r1, cp[.LCPI147_0]
	stw r1, sp[4]
	stw r0, sp[3]
	bu .LBB147_1
.LBB147_1:
	ldw r0, dp[.L__profc___powidf2+12]
	ldw r2, dp[.L__profc___powidf2+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___powidf2+8]
	stw r0, dp[.L__profc___powidf2+12]
	ldaw r0, sp[6]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB147_3
	bu .LBB147_2
.LBB147_2:
	ldw r0, dp[__llvm_gcov_ctr.147+4]
	ldw r1, dp[__llvm_gcov_ctr.147]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.147]
	stw r0, dp[__llvm_gcov_ctr.147+4]
	ldw r0, dp[.L__profc___powidf2+20]
	ldw r1, dp[.L__profc___powidf2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___powidf2+16]
	stw r0, dp[.L__profc___powidf2+20]
	ldw r2, sp[7]
	ldw r3, sp[8]
	ldw r0, sp[3]
	ldw r1, sp[4]
	bl __muldf3
	stw r1, sp[4]
	stw r0, sp[3]
	bu .LBB147_3
.LBB147_3:
	ldw r0, sp[6]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[6]
	ldw r0, sp[6]
	bt r0, .LBB147_5
	bu .LBB147_4
.LBB147_4:
	ldw r0, dp[.L__profc___powidf2+28]
	ldw r1, dp[.L__profc___powidf2+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___powidf2+24]
	stw r0, dp[.L__profc___powidf2+28]
	bu .LBB147_6
.LBB147_5:
	ldw r0, dp[__llvm_gcov_ctr.147+12]
	ldw r1, dp[__llvm_gcov_ctr.147+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.147+8]
	stw r0, dp[__llvm_gcov_ctr.147+12]
	ldw r2, sp[7]
	ldw r3, sp[8]
	mov r0, r2
	mov r1, r3
	bl __muldf3
	stw r1, sp[8]
	stw r0, sp[7]
	bu .LBB147_1
.LBB147_6:
	ldw r0, sp[5]
	bf r0, .LBB147_8
	bu .LBB147_7
.LBB147_7:
	ldw r1, dp[__llvm_gcov_ctr.147+20]
	ldw r2, dp[__llvm_gcov_ctr.147+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.147+16]
	stw r1, dp[__llvm_gcov_ctr.147+20]
	ldw r1, dp[.L__profc___powidf2+36]
	ldw r2, dp[.L__profc___powidf2+32]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___powidf2+32]
	stw r1, dp[.L__profc___powidf2+36]
	ldw r2, sp[3]
	ldw r3, sp[4]
	ldw r1, cp[.LCPI147_0]
	bl __divdf3
	stw r0, sp[1]
	stw r1, sp[2]
	bu .LBB147_9
.LBB147_8:
	ldw r0, dp[__llvm_gcov_ctr.147+28]
	ldw r1, dp[__llvm_gcov_ctr.147+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.147+24]
	stw r0, dp[__llvm_gcov_ctr.147+28]
	ldw r0, sp[4]
	ldw r1, sp[3]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB147_9
.LBB147_9:
	ldw r0, sp[1]
	ldw r1, sp[2]
	retsp 9
	.cc_bottom __powidf2.function
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.p2align	2, 0x0
.LCPI148_0:
	.long	1065353216
	.text
	.globl	__powisf2
	.p2align	2
	.type	__powisf2,@function
	.cc_top __powisf2.function,__powisf2
__powisf2:
	entsp 6
	stw r0, sp[5]
	stw r1, sp[4]
	ldw r0, dp[.L__profc___powisf2+4]
	ldw r1, dp[.L__profc___powisf2]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___powisf2]
	stw r0, dp[.L__profc___powisf2+4]
	ldw r0, sp[4]
	mkmsk r1, 5
	shr r0, r0, r1
	stw r0, sp[3]
	ldw r0, cp[.LCPI148_0]
	stw r0, sp[2]
	bu .LBB148_1
.LBB148_1:
	ldw r0, dp[.L__profc___powisf2+12]
	ldw r2, dp[.L__profc___powisf2+8]
	ldc r1, 0
	mkmsk r3, 1
	ladd r3, r2, r2, r3, r1
	add r0, r0, r3
	stw r2, dp[.L__profc___powisf2+8]
	stw r0, dp[.L__profc___powisf2+12]
	ldaw r0, sp[4]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB148_3
	bu .LBB148_2
.LBB148_2:
	ldw r0, dp[__llvm_gcov_ctr.148+4]
	ldw r1, dp[__llvm_gcov_ctr.148]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.148]
	stw r0, dp[__llvm_gcov_ctr.148+4]
	ldw r0, dp[.L__profc___powisf2+20]
	ldw r1, dp[.L__profc___powisf2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___powisf2+16]
	stw r0, dp[.L__profc___powisf2+20]
	ldw r1, sp[5]
	ldw r0, sp[2]
	bl __mulsf3
	stw r0, sp[2]
	bu .LBB148_3
.LBB148_3:
	ldw r0, sp[4]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[4]
	bt r0, .LBB148_5
	bu .LBB148_4
.LBB148_4:
	ldw r0, dp[.L__profc___powisf2+28]
	ldw r1, dp[.L__profc___powisf2+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___powisf2+24]
	stw r0, dp[.L__profc___powisf2+28]
	bu .LBB148_6
.LBB148_5:
	ldw r0, dp[__llvm_gcov_ctr.148+12]
	ldw r1, dp[__llvm_gcov_ctr.148+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.148+8]
	stw r0, dp[__llvm_gcov_ctr.148+12]
	ldw r1, sp[5]
	mov r0, r1
	bl __mulsf3
	stw r0, sp[5]
	bu .LBB148_1
.LBB148_6:
	ldw r0, sp[3]
	bf r0, .LBB148_8
	bu .LBB148_7
.LBB148_7:
	ldw r0, dp[__llvm_gcov_ctr.148+20]
	ldw r1, dp[__llvm_gcov_ctr.148+16]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.148+16]
	stw r0, dp[__llvm_gcov_ctr.148+20]
	ldw r0, dp[.L__profc___powisf2+36]
	ldw r1, dp[.L__profc___powisf2+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___powisf2+32]
	stw r0, dp[.L__profc___powisf2+36]
	ldw r1, sp[2]
	ldw r0, cp[.LCPI148_0]
	bl __divsf3
	stw r0, sp[1]
	bu .LBB148_9
.LBB148_8:
	ldw r0, dp[__llvm_gcov_ctr.148+28]
	ldw r1, dp[__llvm_gcov_ctr.148+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[__llvm_gcov_ctr.148+24]
	stw r0, dp[__llvm_gcov_ctr.148+28]
	ldw r0, sp[2]
	stw r0, sp[1]
	bu .LBB148_9
.LBB148_9:
	ldw r0, sp[1]
	retsp 6
	.cc_bottom __powisf2.function
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2

	.globl	__ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
	.cc_top __ucmpdi2.function,__ucmpdi2
__ucmpdi2:
	entsp 9
	stw r1, sp[7]
	stw r0, sp[6]
	stw r3, sp[5]
	stw r2, sp[4]
	ldw r0, dp[.L__profc___ucmpdi2+4]
	ldw r1, dp[.L__profc___ucmpdi2]
	ldc r3, 0
	mkmsk r2, 1
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ucmpdi2]
	stw r0, dp[.L__profc___ucmpdi2+4]
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[3]
	stw r0, sp[2]
	ldw r0, sp[4]
	ldw r1, sp[5]
	stw r1, sp[1]
	stw r0, sp[0]
	ldw r0, sp[3]
	ldw r1, sp[1]
	lsu r0, r0, r1
	bf r0, .LBB149_2
	bu .LBB149_1
.LBB149_1:
	ldw r1, dp[__llvm_gcov_ctr.149+4]
	ldw r2, dp[__llvm_gcov_ctr.149]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.149]
	stw r1, dp[__llvm_gcov_ctr.149+4]
	ldw r1, dp[.L__profc___ucmpdi2+12]
	ldw r2, dp[.L__profc___ucmpdi2+8]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___ucmpdi2+8]
	stw r1, dp[.L__profc___ucmpdi2+12]
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_2:
	ldw r1, sp[3]
	ldw r0, sp[1]
	lsu r0, r0, r1
	bf r0, .LBB149_4
	bu .LBB149_3
.LBB149_3:
	ldw r0, dp[__llvm_gcov_ctr.149+12]
	ldw r1, dp[__llvm_gcov_ctr.149+8]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.149+8]
	stw r0, dp[__llvm_gcov_ctr.149+12]
	ldw r0, dp[.L__profc___ucmpdi2+20]
	ldw r1, dp[.L__profc___ucmpdi2+16]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ucmpdi2+16]
	stw r0, dp[.L__profc___ucmpdi2+20]
	ldc r0, 2
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_4:
	ldw r0, sp[2]
	ldw r1, sp[0]
	lsu r0, r0, r1
	bf r0, .LBB149_6
	bu .LBB149_5
.LBB149_5:
	ldw r1, dp[__llvm_gcov_ctr.149+20]
	ldw r2, dp[__llvm_gcov_ctr.149+16]
	ldc r0, 0
	mkmsk r3, 1
	ladd r11, r2, r2, r3, r0
	add r1, r1, r11
	stw r2, dp[__llvm_gcov_ctr.149+16]
	stw r1, dp[__llvm_gcov_ctr.149+20]
	ldw r1, dp[.L__profc___ucmpdi2+28]
	ldw r2, dp[.L__profc___ucmpdi2+24]
	ladd r3, r2, r2, r3, r0
	add r1, r1, r3
	stw r2, dp[.L__profc___ucmpdi2+24]
	stw r1, dp[.L__profc___ucmpdi2+28]
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_6:
	ldw r1, sp[2]
	ldw r0, sp[0]
	lsu r0, r0, r1
	bf r0, .LBB149_8
	bu .LBB149_7
.LBB149_7:
	ldw r0, dp[__llvm_gcov_ctr.149+28]
	ldw r1, dp[__llvm_gcov_ctr.149+24]
	ldc r3, 0
	mkmsk r2, 1
	ladd r11, r1, r1, r2, r3
	add r0, r0, r11
	stw r1, dp[__llvm_gcov_ctr.149+24]
	stw r0, dp[__llvm_gcov_ctr.149+28]
	ldw r0, dp[.L__profc___ucmpdi2+36]
	ldw r1, dp[.L__profc___ucmpdi2+32]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___ucmpdi2+32]
	stw r0, dp[.L__profc___ucmpdi2+36]
	ldc r0, 2
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_8:
	ldw r1, dp[__llvm_gcov_ctr.149+36]
	ldw r2, dp[__llvm_gcov_ctr.149+32]
	ldc r3, 0
	mkmsk r0, 1
	ladd r3, r2, r2, r0, r3
	add r1, r1, r3
	stw r2, dp[__llvm_gcov_ctr.149+32]
	stw r1, dp[__llvm_gcov_ctr.149+36]
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_9:
	ldw r0, sp[8]
	retsp 9
	.cc_bottom __ucmpdi2.function
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2

	.globl	__aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
	.cc_top __aeabi_ulcmp.function,__aeabi_ulcmp
__aeabi_ulcmp:
	entsp 11
	stw r4, sp[10]
	stw r5, sp[9]
	stw r6, sp[8]
	stw r7, sp[7]
	stw r3, sp[1]
	stw r2, sp[2]
	mov r4, r1
	ldw r1, sp[1]
	mov r11, r0
	ldw r0, sp[2]
	ldw r5, dp[__llvm_gcov_ctr.150+4]
	ldw r6, dp[__llvm_gcov_ctr.150]
	ldc r3, 0
	mkmsk r2, 1
	ladd r7, r6, r6, r2, r3
	add r5, r5, r7
	stw r6, dp[__llvm_gcov_ctr.150]
	stw r5, dp[__llvm_gcov_ctr.150+4]
	stw r4, sp[6]
	stw r11, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, dp[.L__profc___aeabi_ulcmp+4]
	ldw r1, dp[.L__profc___aeabi_ulcmp]
	ladd r2, r1, r1, r2, r3
	add r0, r0, r2
	stw r1, dp[.L__profc___aeabi_ulcmp]
	stw r0, dp[.L__profc___aeabi_ulcmp+4]
	ldw r1, sp[6]
	ldw r0, sp[5]
	ldw r3, sp[4]
	ldw r2, sp[3]
	bl __ucmpdi2
	sub r0, r0, 1
	ldw r7, sp[7]
	ldw r6, sp[8]
	ldw r5, sp[9]
	ldw r4, sp[10]
	retsp 11
	.cc_bottom __aeabi_ulcmp.function
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp

	.p2align	2
	.type	__llvm_gcov_writeout,@function
	.cc_top __llvm_gcov_writeout.function,__llvm_gcov_writeout
__llvm_gcov_writeout:
	entsp 9
	ldc r0, 0
	stw r0, sp[8]
	bu .LBB151_1
.LBB151_1:
	ldw r0, sp[8]
	stw r0, sp[2]
	ldc r1, 24
	mul r2, r0, r1
	stw r2, sp[3]
	ldaw r11, cp[__llvm_internal_gcov_emit_file_info]
	add r0, r2, r11
	ldw r0, r0[0]
	ldaw r11, cp[__llvm_internal_gcov_emit_file_info+4]
	add r1, r2, r11
	ldw r1, r1[0]
	ldaw r11, cp[__llvm_internal_gcov_emit_file_info+8]
	add r2, r2, r11
	ldw r2, r2[0]
	bl llvm_gcda_start_file
	ldw r1, sp[3]
	ldaw r11, cp[__llvm_internal_gcov_emit_file_info+12]
	add r0, r1, r11
	ldw r0, r0[0]
	stw r0, sp[4]
	ldaw r11, cp[__llvm_internal_gcov_emit_file_info+16]
	add r2, r1, r11
	ldw r2, r2[0]
	stw r2, sp[5]
	ldaw r11, cp[__llvm_internal_gcov_emit_file_info+20]
	add r1, r1, r11
	ldw r1, r1[0]
	stw r1, sp[6]
	mkmsk r1, 1
	lss r0, r0, r1
	ldc r1, 0
	stw r1, sp[7]
	bt r0, .LBB151_3
	bu .LBB151_2
.LBB151_2:
	ldw r1, sp[7]
	ldw r0, sp[5]
	stw r1, sp[1]
	ldc r2, 12
	mul r1, r1, r2
	add r2, r0, r1
	ldw r0, r2[0]
	ldw r1, r2[1]
	ldw r2, r2[2]
	bl llvm_gcda_emit_function
	ldw r1, sp[1]
	ldw r0, sp[6]
	shl r1, r1, 3
	add r1, r0, r1
	ldw r0, r1[0]
	ldw r1, r1[1]
	bl llvm_gcda_emit_arcs
	ldw r1, sp[1]
	ldw r0, sp[4]
	add r1, r1, 1
	lss r0, r1, r0
	stw r1, sp[7]
	bt r0, .LBB151_2
	bu .LBB151_3
.LBB151_3:
	bl llvm_gcda_summary_info
	bl llvm_gcda_end_file
	ldw r0, sp[2]
	add r1, r0, 1
	mkmsk r0, 1
	lss r0, r1, r0
	stw r1, sp[8]
	bt r0, .LBB151_1
	bu .LBB151_4
.LBB151_4:
	retsp 9
	.cc_bottom __llvm_gcov_writeout.function
.Lfunc_end151:
	.size	__llvm_gcov_writeout, .Lfunc_end151-__llvm_gcov_writeout

	.p2align	2
	.type	__llvm_gcov_reset,@function
	.cc_top __llvm_gcov_reset.function,__llvm_gcov_reset
__llvm_gcov_reset:
	entsp 10
	ldaw r0, dp[__llvm_gcov_ctr]
	ldc r1, 0
	stw r1, sp[9]
	ldc r2, 40
	stw r2, sp[7]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.1]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.2]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.3]
	bl memset
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.4]
	ldc r2, 16
	stw r2, sp[2]
	bl memset
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.5]
	ldc r2, 24
	stw r2, sp[5]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.6]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.7]
	bl memset
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.8]
	ldc r2, 32
	stw r2, sp[6]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.9]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.10]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.11]
	bl memset
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.12]
	ldc r2, 56
	stw r2, sp[3]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.13]
	bl memset
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.14]
	ldc r2, 8
	stw r2, sp[8]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.15]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.16]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.17]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.18]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.19]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.20]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.21]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.22]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.23]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.24]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.25]
	bl memset
	ldw r2, sp[3]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.26]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.27]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.28]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.29]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.30]
	bl memset
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.31]
	ldc r2, 48
	stw r2, sp[1]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.32]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.33]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.34]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.35]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.36]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.37]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.38]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.39]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.40]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.41]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.42]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.43]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.44]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.45]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.46]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.47]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.48]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.49]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.50]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.51]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.52]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.53]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.54]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.55]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.56]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.57]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.58]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.59]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.60]
	bl memset
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.61]
	ldc r2, 64
	stw r2, sp[4]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.62]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.63]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.64]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.65]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.66]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.67]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.68]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.69]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.70]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.71]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.72]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.73]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.74]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.75]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.76]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.77]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.78]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.79]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.80]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.81]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.82]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.83]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.84]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.85]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.86]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.87]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.88]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.89]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.90]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.91]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.92]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.93]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.94]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.95]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.96]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.97]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.98]
	bl memset
	ldw r2, sp[4]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.99]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.100]
	bl memset
	ldw r2, sp[4]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.101]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.102]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.103]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.104]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.105]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.106]
	bl memset
	ldw r2, sp[1]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.107]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.108]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.109]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.110]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.111]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.112]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.113]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.114]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.115]
	bl memset
	ldw r2, sp[2]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.116]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.117]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.118]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.119]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.120]
	bl memset
	ldw r2, sp[4]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.121]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.122]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.123]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.124]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.125]
	bl memset
	ldw r2, sp[3]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.126]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.127]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.128]
	bl memset
	ldw r2, sp[4]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.129]
	bl memset
	ldw r2, sp[4]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.130]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.131]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.132]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.133]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.134]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.135]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.136]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.137]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.138]
	bl memset
	ldw r2, sp[5]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.139]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.140]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.141]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.142]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.143]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.144]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.145]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.146]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.147]
	bl memset
	ldw r2, sp[6]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.148]
	bl memset
	ldw r2, sp[7]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.149]
	bl memset
	ldw r2, sp[8]
	ldw r1, sp[9]
	ldaw r0, dp[__llvm_gcov_ctr.150]
	bl memset
	retsp 10
	.cc_bottom __llvm_gcov_reset.function
.Lfunc_end152:
	.size	__llvm_gcov_reset, .Lfunc_end152-__llvm_gcov_reset

	.p2align	2
	.type	__llvm_gcov_init,@function
	.cc_top __llvm_gcov_init.function,__llvm_gcov_init
__llvm_gcov_init:
	entsp 1
	ldap r11, __llvm_gcov_writeout
	mov r0, r11
	ldap r11, __llvm_gcov_reset
	mov r1, r11
	bl llvm_gcov_init
	retsp 1
	.cc_bottom __llvm_gcov_init.function
.Lfunc_end153:
	.size	__llvm_gcov_init, .Lfunc_end153-__llvm_gcov_init

	.section	.dp.bss,"awd",@nobits
	.cc_top l64a.s.data,l64a.s
	.p2align	2, 0x0
	.type	l64a.s,@object
	.size	l64a.s, 7
l64a.s:
	.space	7
	.cc_bottom l64a.s.data
	.section	.cp.rodata,"ac",@progbits
	.cc_top digits.data,digits
	.p2align	2, 0x0
	.type	digits,@object
	.size	digits, 65
digits:
.asciiz"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.cc_bottom digits.data
	.section	.dp.bss,"awd",@nobits
	.cc_top seed.data,seed
	.p2align	2, 0x0
	.type	seed,@object
	.size	seed, 8
seed:
	.long	0
	.long	0
	.cc_bottom seed.data
	.cc_top __llvm_gcov_ctr.data,__llvm_gcov_ctr
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr,@object
	.size	__llvm_gcov_ctr, 40
__llvm_gcov_ctr:
	.space	40
	.cc_bottom __llvm_gcov_ctr.data
	.cc_top __llvm_gcov_ctr.1.data,__llvm_gcov_ctr.1
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.1,@object
	.size	__llvm_gcov_ctr.1, 40
__llvm_gcov_ctr.1:
	.space	40
	.cc_bottom __llvm_gcov_ctr.1.data
	.cc_top __llvm_gcov_ctr.2.data,__llvm_gcov_ctr.2
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.2,@object
	.size	__llvm_gcov_ctr.2, 40
__llvm_gcov_ctr.2:
	.space	40
	.cc_bottom __llvm_gcov_ctr.2.data
	.cc_top __llvm_gcov_ctr.3.data,__llvm_gcov_ctr.3
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.3,@object
	.size	__llvm_gcov_ctr.3, 40
__llvm_gcov_ctr.3:
	.space	40
	.cc_bottom __llvm_gcov_ctr.3.data
	.cc_top __llvm_gcov_ctr.4.data,__llvm_gcov_ctr.4
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.4,@object
	.size	__llvm_gcov_ctr.4, 16
__llvm_gcov_ctr.4:
	.space	16
	.cc_bottom __llvm_gcov_ctr.4.data
	.cc_top __llvm_gcov_ctr.5.data,__llvm_gcov_ctr.5
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.5,@object
	.size	__llvm_gcov_ctr.5, 24
__llvm_gcov_ctr.5:
	.space	24
	.cc_bottom __llvm_gcov_ctr.5.data
	.cc_top __llvm_gcov_ctr.6.data,__llvm_gcov_ctr.6
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.6,@object
	.size	__llvm_gcov_ctr.6, 16
__llvm_gcov_ctr.6:
	.space	16
	.cc_bottom __llvm_gcov_ctr.6.data
	.cc_top __llvm_gcov_ctr.7.data,__llvm_gcov_ctr.7
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.7,@object
	.size	__llvm_gcov_ctr.7, 16
__llvm_gcov_ctr.7:
	.space	16
	.cc_bottom __llvm_gcov_ctr.7.data
	.cc_top __llvm_gcov_ctr.8.data,__llvm_gcov_ctr.8
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.8,@object
	.size	__llvm_gcov_ctr.8, 32
__llvm_gcov_ctr.8:
	.space	32
	.cc_bottom __llvm_gcov_ctr.8.data
	.cc_top __llvm_gcov_ctr.9.data,__llvm_gcov_ctr.9
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.9,@object
	.size	__llvm_gcov_ctr.9, 24
__llvm_gcov_ctr.9:
	.space	24
	.cc_bottom __llvm_gcov_ctr.9.data
	.cc_top __llvm_gcov_ctr.10.data,__llvm_gcov_ctr.10
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.10,@object
	.size	__llvm_gcov_ctr.10, 32
__llvm_gcov_ctr.10:
	.space	32
	.cc_bottom __llvm_gcov_ctr.10.data
	.cc_top __llvm_gcov_ctr.11.data,__llvm_gcov_ctr.11
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.11,@object
	.size	__llvm_gcov_ctr.11, 16
__llvm_gcov_ctr.11:
	.space	16
	.cc_bottom __llvm_gcov_ctr.11.data
	.cc_top __llvm_gcov_ctr.12.data,__llvm_gcov_ctr.12
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.12,@object
	.size	__llvm_gcov_ctr.12, 56
__llvm_gcov_ctr.12:
	.space	56
	.cc_bottom __llvm_gcov_ctr.12.data
	.cc_top __llvm_gcov_ctr.13.data,__llvm_gcov_ctr.13
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.13,@object
	.size	__llvm_gcov_ctr.13, 16
__llvm_gcov_ctr.13:
	.space	16
	.cc_bottom __llvm_gcov_ctr.13.data
	.cc_top __llvm_gcov_ctr.14.data,__llvm_gcov_ctr.14
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.14,@object
	.size	__llvm_gcov_ctr.14, 8
__llvm_gcov_ctr.14:
	.space	8
	.cc_bottom __llvm_gcov_ctr.14.data
	.cc_top __llvm_gcov_ctr.15.data,__llvm_gcov_ctr.15
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.15,@object
	.size	__llvm_gcov_ctr.15, 8
__llvm_gcov_ctr.15:
	.space	8
	.cc_bottom __llvm_gcov_ctr.15.data
	.cc_top __llvm_gcov_ctr.16.data,__llvm_gcov_ctr.16
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.16,@object
	.size	__llvm_gcov_ctr.16, 24
__llvm_gcov_ctr.16:
	.space	24
	.cc_bottom __llvm_gcov_ctr.16.data
	.cc_top __llvm_gcov_ctr.17.data,__llvm_gcov_ctr.17
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.17,@object
	.size	__llvm_gcov_ctr.17, 24
__llvm_gcov_ctr.17:
	.space	24
	.cc_bottom __llvm_gcov_ctr.17.data
	.cc_top __llvm_gcov_ctr.18.data,__llvm_gcov_ctr.18
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.18,@object
	.size	__llvm_gcov_ctr.18, 8
__llvm_gcov_ctr.18:
	.space	8
	.cc_bottom __llvm_gcov_ctr.18.data
	.cc_top __llvm_gcov_ctr.19.data,__llvm_gcov_ctr.19
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.19,@object
	.size	__llvm_gcov_ctr.19, 8
__llvm_gcov_ctr.19:
	.space	8
	.cc_bottom __llvm_gcov_ctr.19.data
	.cc_top __llvm_gcov_ctr.20.data,__llvm_gcov_ctr.20
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.20,@object
	.size	__llvm_gcov_ctr.20, 8
__llvm_gcov_ctr.20:
	.space	8
	.cc_bottom __llvm_gcov_ctr.20.data
	.cc_top __llvm_gcov_ctr.21.data,__llvm_gcov_ctr.21
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.21,@object
	.size	__llvm_gcov_ctr.21, 8
__llvm_gcov_ctr.21:
	.space	8
	.cc_bottom __llvm_gcov_ctr.21.data
	.cc_top __llvm_gcov_ctr.22.data,__llvm_gcov_ctr.22
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.22,@object
	.size	__llvm_gcov_ctr.22, 24
__llvm_gcov_ctr.22:
	.space	24
	.cc_bottom __llvm_gcov_ctr.22.data
	.cc_top __llvm_gcov_ctr.23.data,__llvm_gcov_ctr.23
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.23,@object
	.size	__llvm_gcov_ctr.23, 8
__llvm_gcov_ctr.23:
	.space	8
	.cc_bottom __llvm_gcov_ctr.23.data
	.cc_top __llvm_gcov_ctr.24.data,__llvm_gcov_ctr.24
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.24,@object
	.size	__llvm_gcov_ctr.24, 40
__llvm_gcov_ctr.24:
	.space	40
	.cc_bottom __llvm_gcov_ctr.24.data
	.cc_top __llvm_gcov_ctr.25.data,__llvm_gcov_ctr.25
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.25,@object
	.size	__llvm_gcov_ctr.25, 8
__llvm_gcov_ctr.25:
	.space	8
	.cc_bottom __llvm_gcov_ctr.25.data
	.cc_top __llvm_gcov_ctr.26.data,__llvm_gcov_ctr.26
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.26,@object
	.size	__llvm_gcov_ctr.26, 56
__llvm_gcov_ctr.26:
	.space	56
	.cc_bottom __llvm_gcov_ctr.26.data
	.cc_top __llvm_gcov_ctr.27.data,__llvm_gcov_ctr.27
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.27,@object
	.size	__llvm_gcov_ctr.27, 24
__llvm_gcov_ctr.27:
	.space	24
	.cc_bottom __llvm_gcov_ctr.27.data
	.cc_top __llvm_gcov_ctr.28.data,__llvm_gcov_ctr.28
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.28,@object
	.size	__llvm_gcov_ctr.28, 8
__llvm_gcov_ctr.28:
	.space	8
	.cc_bottom __llvm_gcov_ctr.28.data
	.cc_top __llvm_gcov_ctr.29.data,__llvm_gcov_ctr.29
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.29,@object
	.size	__llvm_gcov_ctr.29, 32
__llvm_gcov_ctr.29:
	.space	32
	.cc_bottom __llvm_gcov_ctr.29.data
	.cc_top __llvm_gcov_ctr.30.data,__llvm_gcov_ctr.30
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.30,@object
	.size	__llvm_gcov_ctr.30, 32
__llvm_gcov_ctr.30:
	.space	32
	.cc_bottom __llvm_gcov_ctr.30.data
	.cc_top __llvm_gcov_ctr.31.data,__llvm_gcov_ctr.31
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.31,@object
	.size	__llvm_gcov_ctr.31, 48
__llvm_gcov_ctr.31:
	.space	48
	.cc_bottom __llvm_gcov_ctr.31.data
	.cc_top __llvm_gcov_ctr.32.data,__llvm_gcov_ctr.32
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.32,@object
	.size	__llvm_gcov_ctr.32, 48
__llvm_gcov_ctr.32:
	.space	48
	.cc_bottom __llvm_gcov_ctr.32.data
	.cc_top __llvm_gcov_ctr.33.data,__llvm_gcov_ctr.33
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.33,@object
	.size	__llvm_gcov_ctr.33, 48
__llvm_gcov_ctr.33:
	.space	48
	.cc_bottom __llvm_gcov_ctr.33.data
	.cc_top __llvm_gcov_ctr.34.data,__llvm_gcov_ctr.34
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.34,@object
	.size	__llvm_gcov_ctr.34, 48
__llvm_gcov_ctr.34:
	.space	48
	.cc_bottom __llvm_gcov_ctr.34.data
	.cc_top __llvm_gcov_ctr.35.data,__llvm_gcov_ctr.35
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.35,@object
	.size	__llvm_gcov_ctr.35, 48
__llvm_gcov_ctr.35:
	.space	48
	.cc_bottom __llvm_gcov_ctr.35.data
	.cc_top __llvm_gcov_ctr.36.data,__llvm_gcov_ctr.36
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.36,@object
	.size	__llvm_gcov_ctr.36, 48
__llvm_gcov_ctr.36:
	.space	48
	.cc_bottom __llvm_gcov_ctr.36.data
	.cc_top __llvm_gcov_ctr.37.data,__llvm_gcov_ctr.37
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.37,@object
	.size	__llvm_gcov_ctr.37, 16
__llvm_gcov_ctr.37:
	.space	16
	.cc_bottom __llvm_gcov_ctr.37.data
	.cc_top __llvm_gcov_ctr.38.data,__llvm_gcov_ctr.38
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.38,@object
	.size	__llvm_gcov_ctr.38, 8
__llvm_gcov_ctr.38:
	.space	8
	.cc_bottom __llvm_gcov_ctr.38.data
	.cc_top __llvm_gcov_ctr.39.data,__llvm_gcov_ctr.39
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.39,@object
	.size	__llvm_gcov_ctr.39, 8
__llvm_gcov_ctr.39:
	.space	8
	.cc_bottom __llvm_gcov_ctr.39.data
	.cc_top __llvm_gcov_ctr.40.data,__llvm_gcov_ctr.40
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.40,@object
	.size	__llvm_gcov_ctr.40, 24
__llvm_gcov_ctr.40:
	.space	24
	.cc_bottom __llvm_gcov_ctr.40.data
	.cc_top __llvm_gcov_ctr.41.data,__llvm_gcov_ctr.41
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.41,@object
	.size	__llvm_gcov_ctr.41, 24
__llvm_gcov_ctr.41:
	.space	24
	.cc_bottom __llvm_gcov_ctr.41.data
	.cc_top __llvm_gcov_ctr.42.data,__llvm_gcov_ctr.42
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.42,@object
	.size	__llvm_gcov_ctr.42, 24
__llvm_gcov_ctr.42:
	.space	24
	.cc_bottom __llvm_gcov_ctr.42.data
	.cc_top __llvm_gcov_ctr.43.data,__llvm_gcov_ctr.43
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.43,@object
	.size	__llvm_gcov_ctr.43, 24
__llvm_gcov_ctr.43:
	.space	24
	.cc_bottom __llvm_gcov_ctr.43.data
	.cc_top __llvm_gcov_ctr.44.data,__llvm_gcov_ctr.44
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.44,@object
	.size	__llvm_gcov_ctr.44, 16
__llvm_gcov_ctr.44:
	.space	16
	.cc_bottom __llvm_gcov_ctr.44.data
	.cc_top __llvm_gcov_ctr.45.data,__llvm_gcov_ctr.45
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.45,@object
	.size	__llvm_gcov_ctr.45, 48
__llvm_gcov_ctr.45:
	.space	48
	.cc_bottom __llvm_gcov_ctr.45.data
	.cc_top __llvm_gcov_ctr.46.data,__llvm_gcov_ctr.46
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.46,@object
	.size	__llvm_gcov_ctr.46, 48
__llvm_gcov_ctr.46:
	.space	48
	.cc_bottom __llvm_gcov_ctr.46.data
	.cc_top __llvm_gcov_ctr.47.data,__llvm_gcov_ctr.47
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.47,@object
	.size	__llvm_gcov_ctr.47, 48
__llvm_gcov_ctr.47:
	.space	48
	.cc_bottom __llvm_gcov_ctr.47.data
	.cc_top __llvm_gcov_ctr.48.data,__llvm_gcov_ctr.48
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.48,@object
	.size	__llvm_gcov_ctr.48, 32
__llvm_gcov_ctr.48:
	.space	32
	.cc_bottom __llvm_gcov_ctr.48.data
	.cc_top __llvm_gcov_ctr.49.data,__llvm_gcov_ctr.49
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.49,@object
	.size	__llvm_gcov_ctr.49, 32
__llvm_gcov_ctr.49:
	.space	32
	.cc_bottom __llvm_gcov_ctr.49.data
	.cc_top __llvm_gcov_ctr.50.data,__llvm_gcov_ctr.50
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.50,@object
	.size	__llvm_gcov_ctr.50, 8
__llvm_gcov_ctr.50:
	.space	8
	.cc_bottom __llvm_gcov_ctr.50.data
	.cc_top __llvm_gcov_ctr.51.data,__llvm_gcov_ctr.51
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.51,@object
	.size	__llvm_gcov_ctr.51, 16
__llvm_gcov_ctr.51:
	.space	16
	.cc_bottom __llvm_gcov_ctr.51.data
	.cc_top __llvm_gcov_ctr.52.data,__llvm_gcov_ctr.52
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.52,@object
	.size	__llvm_gcov_ctr.52, 8
__llvm_gcov_ctr.52:
	.space	8
	.cc_bottom __llvm_gcov_ctr.52.data
	.cc_top __llvm_gcov_ctr.53.data,__llvm_gcov_ctr.53
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.53,@object
	.size	__llvm_gcov_ctr.53, 16
__llvm_gcov_ctr.53:
	.space	16
	.cc_bottom __llvm_gcov_ctr.53.data
	.cc_top __llvm_gcov_ctr.54.data,__llvm_gcov_ctr.54
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.54,@object
	.size	__llvm_gcov_ctr.54, 8
__llvm_gcov_ctr.54:
	.space	8
	.cc_bottom __llvm_gcov_ctr.54.data
	.cc_top __llvm_gcov_ctr.55.data,__llvm_gcov_ctr.55
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.55,@object
	.size	__llvm_gcov_ctr.55, 16
__llvm_gcov_ctr.55:
	.space	16
	.cc_bottom __llvm_gcov_ctr.55.data
	.cc_top __llvm_gcov_ctr.56.data,__llvm_gcov_ctr.56
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.56,@object
	.size	__llvm_gcov_ctr.56, 8
__llvm_gcov_ctr.56:
	.space	8
	.cc_bottom __llvm_gcov_ctr.56.data
	.cc_top __llvm_gcov_ctr.57.data,__llvm_gcov_ctr.57
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.57,@object
	.size	__llvm_gcov_ctr.57, 40
__llvm_gcov_ctr.57:
	.space	40
	.cc_bottom __llvm_gcov_ctr.57.data
	.cc_top __llvm_gcov_ctr.58.data,__llvm_gcov_ctr.58
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.58,@object
	.size	__llvm_gcov_ctr.58, 48
__llvm_gcov_ctr.58:
	.space	48
	.cc_bottom __llvm_gcov_ctr.58.data
	.cc_top __llvm_gcov_ctr.59.data,__llvm_gcov_ctr.59
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.59,@object
	.size	__llvm_gcov_ctr.59, 16
__llvm_gcov_ctr.59:
	.space	16
	.cc_bottom __llvm_gcov_ctr.59.data
	.cc_top __llvm_gcov_ctr.60.data,__llvm_gcov_ctr.60
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.60,@object
	.size	__llvm_gcov_ctr.60, 16
__llvm_gcov_ctr.60:
	.space	16
	.cc_bottom __llvm_gcov_ctr.60.data
	.cc_top __llvm_gcov_ctr.61.data,__llvm_gcov_ctr.61
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.61,@object
	.size	__llvm_gcov_ctr.61, 64
__llvm_gcov_ctr.61:
	.space	64
	.cc_bottom __llvm_gcov_ctr.61.data
	.cc_top __llvm_gcov_ctr.62.data,__llvm_gcov_ctr.62
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.62,@object
	.size	__llvm_gcov_ctr.62, 40
__llvm_gcov_ctr.62:
	.space	40
	.cc_bottom __llvm_gcov_ctr.62.data
	.cc_top __llvm_gcov_ctr.63.data,__llvm_gcov_ctr.63
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.63,@object
	.size	__llvm_gcov_ctr.63, 48
__llvm_gcov_ctr.63:
	.space	48
	.cc_bottom __llvm_gcov_ctr.63.data
	.cc_top __llvm_gcov_ctr.64.data,__llvm_gcov_ctr.64
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.64,@object
	.size	__llvm_gcov_ctr.64, 16
__llvm_gcov_ctr.64:
	.space	16
	.cc_bottom __llvm_gcov_ctr.64.data
	.cc_top __llvm_gcov_ctr.65.data,__llvm_gcov_ctr.65
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.65,@object
	.size	__llvm_gcov_ctr.65, 40
__llvm_gcov_ctr.65:
	.space	40
	.cc_bottom __llvm_gcov_ctr.65.data
	.cc_top __llvm_gcov_ctr.66.data,__llvm_gcov_ctr.66
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.66,@object
	.size	__llvm_gcov_ctr.66, 16
__llvm_gcov_ctr.66:
	.space	16
	.cc_bottom __llvm_gcov_ctr.66.data
	.cc_top __llvm_gcov_ctr.67.data,__llvm_gcov_ctr.67
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.67,@object
	.size	__llvm_gcov_ctr.67, 40
__llvm_gcov_ctr.67:
	.space	40
	.cc_bottom __llvm_gcov_ctr.67.data
	.cc_top __llvm_gcov_ctr.68.data,__llvm_gcov_ctr.68
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.68,@object
	.size	__llvm_gcov_ctr.68, 8
__llvm_gcov_ctr.68:
	.space	8
	.cc_bottom __llvm_gcov_ctr.68.data
	.cc_top __llvm_gcov_ctr.69.data,__llvm_gcov_ctr.69
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.69,@object
	.size	__llvm_gcov_ctr.69, 8
__llvm_gcov_ctr.69:
	.space	8
	.cc_bottom __llvm_gcov_ctr.69.data
	.cc_top __llvm_gcov_ctr.70.data,__llvm_gcov_ctr.70
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.70,@object
	.size	__llvm_gcov_ctr.70, 8
__llvm_gcov_ctr.70:
	.space	8
	.cc_bottom __llvm_gcov_ctr.70.data
	.cc_top __llvm_gcov_ctr.71.data,__llvm_gcov_ctr.71
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.71,@object
	.size	__llvm_gcov_ctr.71, 8
__llvm_gcov_ctr.71:
	.space	8
	.cc_bottom __llvm_gcov_ctr.71.data
	.cc_top __llvm_gcov_ctr.72.data,__llvm_gcov_ctr.72
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.72,@object
	.size	__llvm_gcov_ctr.72, 8
__llvm_gcov_ctr.72:
	.space	8
	.cc_bottom __llvm_gcov_ctr.72.data
	.cc_top __llvm_gcov_ctr.73.data,__llvm_gcov_ctr.73
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.73,@object
	.size	__llvm_gcov_ctr.73, 8
__llvm_gcov_ctr.73:
	.space	8
	.cc_bottom __llvm_gcov_ctr.73.data
	.cc_top __llvm_gcov_ctr.74.data,__llvm_gcov_ctr.74
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.74,@object
	.size	__llvm_gcov_ctr.74, 8
__llvm_gcov_ctr.74:
	.space	8
	.cc_bottom __llvm_gcov_ctr.74.data
	.cc_top __llvm_gcov_ctr.75.data,__llvm_gcov_ctr.75
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.75,@object
	.size	__llvm_gcov_ctr.75, 8
__llvm_gcov_ctr.75:
	.space	8
	.cc_bottom __llvm_gcov_ctr.75.data
	.cc_top __llvm_gcov_ctr.76.data,__llvm_gcov_ctr.76
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.76,@object
	.size	__llvm_gcov_ctr.76, 8
__llvm_gcov_ctr.76:
	.space	8
	.cc_bottom __llvm_gcov_ctr.76.data
	.cc_top __llvm_gcov_ctr.77.data,__llvm_gcov_ctr.77
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.77,@object
	.size	__llvm_gcov_ctr.77, 8
__llvm_gcov_ctr.77:
	.space	8
	.cc_bottom __llvm_gcov_ctr.77.data
	.cc_top __llvm_gcov_ctr.78.data,__llvm_gcov_ctr.78
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.78,@object
	.size	__llvm_gcov_ctr.78, 8
__llvm_gcov_ctr.78:
	.space	8
	.cc_bottom __llvm_gcov_ctr.78.data
	.cc_top __llvm_gcov_ctr.79.data,__llvm_gcov_ctr.79
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.79,@object
	.size	__llvm_gcov_ctr.79, 8
__llvm_gcov_ctr.79:
	.space	8
	.cc_bottom __llvm_gcov_ctr.79.data
	.cc_top __llvm_gcov_ctr.80.data,__llvm_gcov_ctr.80
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.80,@object
	.size	__llvm_gcov_ctr.80, 8
__llvm_gcov_ctr.80:
	.space	8
	.cc_bottom __llvm_gcov_ctr.80.data
	.cc_top __llvm_gcov_ctr.81.data,__llvm_gcov_ctr.81
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.81,@object
	.size	__llvm_gcov_ctr.81, 24
__llvm_gcov_ctr.81:
	.space	24
	.cc_bottom __llvm_gcov_ctr.81.data
	.cc_top __llvm_gcov_ctr.82.data,__llvm_gcov_ctr.82
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.82,@object
	.size	__llvm_gcov_ctr.82, 24
__llvm_gcov_ctr.82:
	.space	24
	.cc_bottom __llvm_gcov_ctr.82.data
	.cc_top __llvm_gcov_ctr.83.data,__llvm_gcov_ctr.83
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.83,@object
	.size	__llvm_gcov_ctr.83, 24
__llvm_gcov_ctr.83:
	.space	24
	.cc_bottom __llvm_gcov_ctr.83.data
	.cc_top __llvm_gcov_ctr.84.data,__llvm_gcov_ctr.84
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.84,@object
	.size	__llvm_gcov_ctr.84, 24
__llvm_gcov_ctr.84:
	.space	24
	.cc_bottom __llvm_gcov_ctr.84.data
	.cc_top __llvm_gcov_ctr.85.data,__llvm_gcov_ctr.85
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.85,@object
	.size	__llvm_gcov_ctr.85, 24
__llvm_gcov_ctr.85:
	.space	24
	.cc_bottom __llvm_gcov_ctr.85.data
	.cc_top __llvm_gcov_ctr.86.data,__llvm_gcov_ctr.86
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.86,@object
	.size	__llvm_gcov_ctr.86, 8
__llvm_gcov_ctr.86:
	.space	8
	.cc_bottom __llvm_gcov_ctr.86.data
	.cc_top __llvm_gcov_ctr.87.data,__llvm_gcov_ctr.87
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.87,@object
	.size	__llvm_gcov_ctr.87, 40
__llvm_gcov_ctr.87:
	.space	40
	.cc_bottom __llvm_gcov_ctr.87.data
	.cc_top __llvm_gcov_ctr.88.data,__llvm_gcov_ctr.88
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.88,@object
	.size	__llvm_gcov_ctr.88, 40
__llvm_gcov_ctr.88:
	.space	40
	.cc_bottom __llvm_gcov_ctr.88.data
	.cc_top __llvm_gcov_ctr.89.data,__llvm_gcov_ctr.89
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.89,@object
	.size	__llvm_gcov_ctr.89, 40
__llvm_gcov_ctr.89:
	.space	40
	.cc_bottom __llvm_gcov_ctr.89.data
	.cc_top __llvm_gcov_ctr.90.data,__llvm_gcov_ctr.90
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.90,@object
	.size	__llvm_gcov_ctr.90, 16
__llvm_gcov_ctr.90:
	.space	16
	.cc_bottom __llvm_gcov_ctr.90.data
	.cc_top __llvm_gcov_ctr.91.data,__llvm_gcov_ctr.91
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.91,@object
	.size	__llvm_gcov_ctr.91, 40
__llvm_gcov_ctr.91:
	.space	40
	.cc_bottom __llvm_gcov_ctr.91.data
	.cc_top __llvm_gcov_ctr.92.data,__llvm_gcov_ctr.92
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.92,@object
	.size	__llvm_gcov_ctr.92, 32
__llvm_gcov_ctr.92:
	.space	32
	.cc_bottom __llvm_gcov_ctr.92.data
	.cc_top __llvm_gcov_ctr.93.data,__llvm_gcov_ctr.93
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.93,@object
	.size	__llvm_gcov_ctr.93, 32
__llvm_gcov_ctr.93:
	.space	32
	.cc_bottom __llvm_gcov_ctr.93.data
	.cc_top __llvm_gcov_ctr.94.data,__llvm_gcov_ctr.94
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.94,@object
	.size	__llvm_gcov_ctr.94, 24
__llvm_gcov_ctr.94:
	.space	24
	.cc_bottom __llvm_gcov_ctr.94.data
	.cc_top __llvm_gcov_ctr.95.data,__llvm_gcov_ctr.95
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.95,@object
	.size	__llvm_gcov_ctr.95, 32
__llvm_gcov_ctr.95:
	.space	32
	.cc_bottom __llvm_gcov_ctr.95.data
	.cc_top __llvm_gcov_ctr.96.data,__llvm_gcov_ctr.96
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.96,@object
	.size	__llvm_gcov_ctr.96, 40
__llvm_gcov_ctr.96:
	.space	40
	.cc_bottom __llvm_gcov_ctr.96.data
	.cc_top __llvm_gcov_ctr.97.data,__llvm_gcov_ctr.97
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.97,@object
	.size	__llvm_gcov_ctr.97, 48
__llvm_gcov_ctr.97:
	.space	48
	.cc_bottom __llvm_gcov_ctr.97.data
	.cc_top __llvm_gcov_ctr.98.data,__llvm_gcov_ctr.98
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.98,@object
	.size	__llvm_gcov_ctr.98, 8
__llvm_gcov_ctr.98:
	.space	8
	.cc_bottom __llvm_gcov_ctr.98.data
	.cc_top __llvm_gcov_ctr.99.data,__llvm_gcov_ctr.99
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.99,@object
	.size	__llvm_gcov_ctr.99, 64
__llvm_gcov_ctr.99:
	.space	64
	.cc_bottom __llvm_gcov_ctr.99.data
	.cc_top __llvm_gcov_ctr.100.data,__llvm_gcov_ctr.100
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.100,@object
	.size	__llvm_gcov_ctr.100, 24
__llvm_gcov_ctr.100:
	.space	24
	.cc_bottom __llvm_gcov_ctr.100.data
	.cc_top __llvm_gcov_ctr.101.data,__llvm_gcov_ctr.101
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.101,@object
	.size	__llvm_gcov_ctr.101, 64
__llvm_gcov_ctr.101:
	.space	64
	.cc_bottom __llvm_gcov_ctr.101.data
	.cc_top __llvm_gcov_ctr.102.data,__llvm_gcov_ctr.102
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.102,@object
	.size	__llvm_gcov_ctr.102, 24
__llvm_gcov_ctr.102:
	.space	24
	.cc_bottom __llvm_gcov_ctr.102.data
	.cc_top __llvm_gcov_ctr.103.data,__llvm_gcov_ctr.103
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.103,@object
	.size	__llvm_gcov_ctr.103, 24
__llvm_gcov_ctr.103:
	.space	24
	.cc_bottom __llvm_gcov_ctr.103.data
	.cc_top __llvm_gcov_ctr.104.data,__llvm_gcov_ctr.104
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.104,@object
	.size	__llvm_gcov_ctr.104, 24
__llvm_gcov_ctr.104:
	.space	24
	.cc_bottom __llvm_gcov_ctr.104.data
	.cc_top __llvm_gcov_ctr.105.data,__llvm_gcov_ctr.105
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.105,@object
	.size	__llvm_gcov_ctr.105, 48
__llvm_gcov_ctr.105:
	.space	48
	.cc_bottom __llvm_gcov_ctr.105.data
	.cc_top __llvm_gcov_ctr.106.data,__llvm_gcov_ctr.106
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.106,@object
	.size	__llvm_gcov_ctr.106, 48
__llvm_gcov_ctr.106:
	.space	48
	.cc_bottom __llvm_gcov_ctr.106.data
	.cc_top __llvm_gcov_ctr.107.data,__llvm_gcov_ctr.107
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.107,@object
	.size	__llvm_gcov_ctr.107, 48
__llvm_gcov_ctr.107:
	.space	48
	.cc_bottom __llvm_gcov_ctr.107.data
	.cc_top __llvm_gcov_ctr.108.data,__llvm_gcov_ctr.108
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.108,@object
	.size	__llvm_gcov_ctr.108, 8
__llvm_gcov_ctr.108:
	.space	8
	.cc_bottom __llvm_gcov_ctr.108.data
	.cc_top __llvm_gcov_ctr.109.data,__llvm_gcov_ctr.109
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.109,@object
	.size	__llvm_gcov_ctr.109, 8
__llvm_gcov_ctr.109:
	.space	8
	.cc_bottom __llvm_gcov_ctr.109.data
	.cc_top __llvm_gcov_ctr.110.data,__llvm_gcov_ctr.110
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.110,@object
	.size	__llvm_gcov_ctr.110, 8
__llvm_gcov_ctr.110:
	.space	8
	.cc_bottom __llvm_gcov_ctr.110.data
	.cc_top __llvm_gcov_ctr.111.data,__llvm_gcov_ctr.111
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.111,@object
	.size	__llvm_gcov_ctr.111, 8
__llvm_gcov_ctr.111:
	.space	8
	.cc_bottom __llvm_gcov_ctr.111.data
	.cc_top __llvm_gcov_ctr.112.data,__llvm_gcov_ctr.112
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.112,@object
	.size	__llvm_gcov_ctr.112, 8
__llvm_gcov_ctr.112:
	.space	8
	.cc_bottom __llvm_gcov_ctr.112.data
	.cc_top __llvm_gcov_ctr.113.data,__llvm_gcov_ctr.113
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.113,@object
	.size	__llvm_gcov_ctr.113, 8
__llvm_gcov_ctr.113:
	.space	8
	.cc_bottom __llvm_gcov_ctr.113.data
	.cc_top __llvm_gcov_ctr.114.data,__llvm_gcov_ctr.114
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.114,@object
	.size	__llvm_gcov_ctr.114, 24
__llvm_gcov_ctr.114:
	.space	24
	.cc_bottom __llvm_gcov_ctr.114.data
	.cc_top __llvm_gcov_ctr.115.data,__llvm_gcov_ctr.115
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.115,@object
	.size	__llvm_gcov_ctr.115, 24
__llvm_gcov_ctr.115:
	.space	24
	.cc_bottom __llvm_gcov_ctr.115.data
	.cc_top __llvm_gcov_ctr.116.data,__llvm_gcov_ctr.116
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.116,@object
	.size	__llvm_gcov_ctr.116, 16
__llvm_gcov_ctr.116:
	.space	16
	.cc_bottom __llvm_gcov_ctr.116.data
	.cc_top __llvm_gcov_ctr.117.data,__llvm_gcov_ctr.117
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.117,@object
	.size	__llvm_gcov_ctr.117, 24
__llvm_gcov_ctr.117:
	.space	24
	.cc_bottom __llvm_gcov_ctr.117.data
	.cc_top __llvm_gcov_ctr.118.data,__llvm_gcov_ctr.118
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.118,@object
	.size	__llvm_gcov_ctr.118, 24
__llvm_gcov_ctr.118:
	.space	24
	.cc_bottom __llvm_gcov_ctr.118.data
	.cc_top __llvm_gcov_ctr.119.data,__llvm_gcov_ctr.119
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.119,@object
	.size	__llvm_gcov_ctr.119, 24
__llvm_gcov_ctr.119:
	.space	24
	.cc_bottom __llvm_gcov_ctr.119.data
	.cc_top __llvm_gcov_ctr.120.data,__llvm_gcov_ctr.120
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.120,@object
	.size	__llvm_gcov_ctr.120, 32
__llvm_gcov_ctr.120:
	.space	32
	.cc_bottom __llvm_gcov_ctr.120.data
	.cc_top __llvm_gcov_ctr.121.data,__llvm_gcov_ctr.121
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.121,@object
	.size	__llvm_gcov_ctr.121, 64
__llvm_gcov_ctr.121:
	.space	64
	.cc_bottom __llvm_gcov_ctr.121.data
	.cc_top __llvm_gcov_ctr.122.data,__llvm_gcov_ctr.122
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.122,@object
	.size	__llvm_gcov_ctr.122, 24
__llvm_gcov_ctr.122:
	.space	24
	.cc_bottom __llvm_gcov_ctr.122.data
	.cc_top __llvm_gcov_ctr.123.data,__llvm_gcov_ctr.123
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.123,@object
	.size	__llvm_gcov_ctr.123, 24
__llvm_gcov_ctr.123:
	.space	24
	.cc_bottom __llvm_gcov_ctr.123.data
	.cc_top __llvm_gcov_ctr.124.data,__llvm_gcov_ctr.124
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.124,@object
	.size	__llvm_gcov_ctr.124, 8
__llvm_gcov_ctr.124:
	.space	8
	.cc_bottom __llvm_gcov_ctr.124.data
	.cc_top __llvm_gcov_ctr.125.data,__llvm_gcov_ctr.125
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.125,@object
	.size	__llvm_gcov_ctr.125, 8
__llvm_gcov_ctr.125:
	.space	8
	.cc_bottom __llvm_gcov_ctr.125.data
	.cc_top __llvm_gcov_ctr.126.data,__llvm_gcov_ctr.126
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.126,@object
	.size	__llvm_gcov_ctr.126, 56
__llvm_gcov_ctr.126:
	.space	56
	.cc_bottom __llvm_gcov_ctr.126.data
	.cc_top __llvm_gcov_ctr.127.data,__llvm_gcov_ctr.127
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.127,@object
	.size	__llvm_gcov_ctr.127, 32
__llvm_gcov_ctr.127:
	.space	32
	.cc_bottom __llvm_gcov_ctr.127.data
	.cc_top __llvm_gcov_ctr.128.data,__llvm_gcov_ctr.128
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.128,@object
	.size	__llvm_gcov_ctr.128, 32
__llvm_gcov_ctr.128:
	.space	32
	.cc_bottom __llvm_gcov_ctr.128.data
	.cc_top __llvm_gcov_ctr.129.data,__llvm_gcov_ctr.129
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.129,@object
	.size	__llvm_gcov_ctr.129, 64
__llvm_gcov_ctr.129:
	.space	64
	.cc_bottom __llvm_gcov_ctr.129.data
	.cc_top __llvm_gcov_ctr.130.data,__llvm_gcov_ctr.130
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.130,@object
	.size	__llvm_gcov_ctr.130, 64
__llvm_gcov_ctr.130:
	.space	64
	.cc_bottom __llvm_gcov_ctr.130.data
	.cc_top __llvm_gcov_ctr.131.data,__llvm_gcov_ctr.131
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.131,@object
	.size	__llvm_gcov_ctr.131, 24
__llvm_gcov_ctr.131:
	.space	24
	.cc_bottom __llvm_gcov_ctr.131.data
	.cc_top __llvm_gcov_ctr.132.data,__llvm_gcov_ctr.132
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.132,@object
	.size	__llvm_gcov_ctr.132, 24
__llvm_gcov_ctr.132:
	.space	24
	.cc_bottom __llvm_gcov_ctr.132.data
	.cc_top __llvm_gcov_ctr.133.data,__llvm_gcov_ctr.133
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.133,@object
	.size	__llvm_gcov_ctr.133, 8
__llvm_gcov_ctr.133:
	.space	8
	.cc_bottom __llvm_gcov_ctr.133.data
	.cc_top __llvm_gcov_ctr.134.data,__llvm_gcov_ctr.134
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.134,@object
	.size	__llvm_gcov_ctr.134, 8
__llvm_gcov_ctr.134:
	.space	8
	.cc_bottom __llvm_gcov_ctr.134.data
	.cc_top __llvm_gcov_ctr.135.data,__llvm_gcov_ctr.135
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.135,@object
	.size	__llvm_gcov_ctr.135, 8
__llvm_gcov_ctr.135:
	.space	8
	.cc_bottom __llvm_gcov_ctr.135.data
	.cc_top __llvm_gcov_ctr.136.data,__llvm_gcov_ctr.136
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.136,@object
	.size	__llvm_gcov_ctr.136, 40
__llvm_gcov_ctr.136:
	.space	40
	.cc_bottom __llvm_gcov_ctr.136.data
	.cc_top __llvm_gcov_ctr.137.data,__llvm_gcov_ctr.137
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.137,@object
	.size	__llvm_gcov_ctr.137, 8
__llvm_gcov_ctr.137:
	.space	8
	.cc_bottom __llvm_gcov_ctr.137.data
	.cc_top __llvm_gcov_ctr.138.data,__llvm_gcov_ctr.138
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.138,@object
	.size	__llvm_gcov_ctr.138, 8
__llvm_gcov_ctr.138:
	.space	8
	.cc_bottom __llvm_gcov_ctr.138.data
	.cc_top __llvm_gcov_ctr.139.data,__llvm_gcov_ctr.139
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.139,@object
	.size	__llvm_gcov_ctr.139, 24
__llvm_gcov_ctr.139:
	.space	24
	.cc_bottom __llvm_gcov_ctr.139.data
	.cc_top __llvm_gcov_ctr.140.data,__llvm_gcov_ctr.140
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.140,@object
	.size	__llvm_gcov_ctr.140, 8
__llvm_gcov_ctr.140:
	.space	8
	.cc_bottom __llvm_gcov_ctr.140.data
	.cc_top __llvm_gcov_ctr.141.data,__llvm_gcov_ctr.141
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.141,@object
	.size	__llvm_gcov_ctr.141, 8
__llvm_gcov_ctr.141:
	.space	8
	.cc_bottom __llvm_gcov_ctr.141.data
	.cc_top __llvm_gcov_ctr.142.data,__llvm_gcov_ctr.142
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.142,@object
	.size	__llvm_gcov_ctr.142, 8
__llvm_gcov_ctr.142:
	.space	8
	.cc_bottom __llvm_gcov_ctr.142.data
	.cc_top __llvm_gcov_ctr.143.data,__llvm_gcov_ctr.143
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.143,@object
	.size	__llvm_gcov_ctr.143, 8
__llvm_gcov_ctr.143:
	.space	8
	.cc_bottom __llvm_gcov_ctr.143.data
	.cc_top __llvm_gcov_ctr.144.data,__llvm_gcov_ctr.144
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.144,@object
	.size	__llvm_gcov_ctr.144, 8
__llvm_gcov_ctr.144:
	.space	8
	.cc_bottom __llvm_gcov_ctr.144.data
	.cc_top __llvm_gcov_ctr.145.data,__llvm_gcov_ctr.145
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.145,@object
	.size	__llvm_gcov_ctr.145, 8
__llvm_gcov_ctr.145:
	.space	8
	.cc_bottom __llvm_gcov_ctr.145.data
	.cc_top __llvm_gcov_ctr.146.data,__llvm_gcov_ctr.146
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.146,@object
	.size	__llvm_gcov_ctr.146, 8
__llvm_gcov_ctr.146:
	.space	8
	.cc_bottom __llvm_gcov_ctr.146.data
	.cc_top __llvm_gcov_ctr.147.data,__llvm_gcov_ctr.147
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.147,@object
	.size	__llvm_gcov_ctr.147, 32
__llvm_gcov_ctr.147:
	.space	32
	.cc_bottom __llvm_gcov_ctr.147.data
	.cc_top __llvm_gcov_ctr.148.data,__llvm_gcov_ctr.148
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.148,@object
	.size	__llvm_gcov_ctr.148, 32
__llvm_gcov_ctr.148:
	.space	32
	.cc_bottom __llvm_gcov_ctr.148.data
	.cc_top __llvm_gcov_ctr.149.data,__llvm_gcov_ctr.149
	.p2align	4, 0x0
	.type	__llvm_gcov_ctr.149,@object
	.size	__llvm_gcov_ctr.149, 40
__llvm_gcov_ctr.149:
	.space	40
	.cc_bottom __llvm_gcov_ctr.149.data
	.cc_top __llvm_gcov_ctr.150.data,__llvm_gcov_ctr.150
	.p2align	2, 0x0
	.type	__llvm_gcov_ctr.150,@object
	.size	__llvm_gcov_ctr.150, 8
__llvm_gcov_ctr.150:
	.space	8
	.cc_bottom __llvm_gcov_ctr.150.data
	.section	.cp.rodata.string,"aMSc",@progbits
	.cc_top .L__unnamed_1.data,.L__unnamed_1
	.p2align	2, 0x0
	.type	.L__unnamed_1,@object
	.size	.L__unnamed_1, 49
.L__unnamed_1:
.asciiz"/home/gravier/tmp/some-libc-opt/clang-xcore.gcda"
	.cc_bottom .L__unnamed_1.data
	.section	.cp.rodata,"ac",@progbits
	.cc_top __llvm_internal_gcov_emit_function_args.0.data,__llvm_internal_gcov_emit_function_args.0
	.p2align	4, 0x0
	.type	__llvm_internal_gcov_emit_function_args.0,@object
	.size	__llvm_internal_gcov_emit_function_args.0, 1812
__llvm_internal_gcov_emit_function_args.0:
	.long	0
	.long	560687177
	.long	3469251760
	.long	1
	.long	1589591758
	.long	3469251760
	.long	2
	.long	2176136383
	.long	3469251760
	.long	3
	.long	3586625172
	.long	3469251760
	.long	4
	.long	2323119728
	.long	3469251760
	.long	5
	.long	2314569740
	.long	3469251760
	.long	6
	.long	2833673551
	.long	3469251760
	.long	7
	.long	1458633189
	.long	3469251760
	.long	8
	.long	1190300833
	.long	3469251760
	.long	9
	.long	758327989
	.long	3469251760
	.long	10
	.long	1651479037
	.long	3469251760
	.long	11
	.long	4132343275
	.long	3469251760
	.long	12
	.long	734262523
	.long	3469251760
	.long	13
	.long	2463424677
	.long	3469251760
	.long	14
	.long	1419026334
	.long	3469251760
	.long	15
	.long	3154471370
	.long	3469251760
	.long	16
	.long	2077973487
	.long	3469251760
	.long	17
	.long	1474691227
	.long	3469251760
	.long	18
	.long	3710986016
	.long	3469251760
	.long	19
	.long	1305101473
	.long	3469251760
	.long	20
	.long	3762036564
	.long	3469251760
	.long	21
	.long	477914433
	.long	3469251760
	.long	22
	.long	3923035234
	.long	3469251760
	.long	23
	.long	951651702
	.long	3469251760
	.long	24
	.long	4206925919
	.long	3469251760
	.long	25
	.long	32773942
	.long	3469251760
	.long	26
	.long	2877267246
	.long	3469251760
	.long	27
	.long	860405771
	.long	3469251760
	.long	28
	.long	815674877
	.long	3469251760
	.long	29
	.long	1778838753
	.long	3469251760
	.long	30
	.long	2718307199
	.long	3469251760
	.long	31
	.long	856224820
	.long	3469251760
	.long	32
	.long	1111195143
	.long	3469251760
	.long	33
	.long	1178414519
	.long	3469251760
	.long	34
	.long	3477640633
	.long	3469251760
	.long	35
	.long	4294770115
	.long	3469251760
	.long	36
	.long	3650660234
	.long	3469251760
	.long	37
	.long	289327647
	.long	3469251760
	.long	38
	.long	2093612798
	.long	3469251760
	.long	39
	.long	4177956716
	.long	3469251760
	.long	40
	.long	3434808461
	.long	3469251760
	.long	41
	.long	3206497114
	.long	3469251760
	.long	42
	.long	1537257434
	.long	3469251760
	.long	43
	.long	3028077325
	.long	3469251760
	.long	44
	.long	1369848209
	.long	3469251760
	.long	45
	.long	938831176
	.long	3469251760
	.long	46
	.long	1663146323
	.long	3469251760
	.long	47
	.long	4111410217
	.long	3469251760
	.long	48
	.long	1475378556
	.long	3469251760
	.long	49
	.long	3356195547
	.long	3469251760
	.long	50
	.long	514931786
	.long	3469251760
	.long	51
	.long	2854034444
	.long	3469251760
	.long	52
	.long	2747937306
	.long	3469251760
	.long	53
	.long	4192776208
	.long	3469251760
	.long	54
	.long	984436227
	.long	3469251760
	.long	55
	.long	1477657574
	.long	3469251760
	.long	56
	.long	1339127973
	.long	3469251760
	.long	57
	.long	2960567906
	.long	3469251760
	.long	58
	.long	3390076872
	.long	3469251760
	.long	59
	.long	1543282230
	.long	3469251760
	.long	60
	.long	2934101789
	.long	3469251760
	.long	61
	.long	3737986119
	.long	3469251760
	.long	62
	.long	49556427
	.long	3469251760
	.long	63
	.long	234051526
	.long	3469251760
	.long	64
	.long	2341800126
	.long	3469251760
	.long	65
	.long	3256799948
	.long	3469251760
	.long	66
	.long	777295480
	.long	3469251760
	.long	67
	.long	14040531
	.long	3469251760
	.long	68
	.long	8047973
	.long	3469251760
	.long	69
	.long	719459161
	.long	3469251760
	.long	70
	.long	243358501
	.long	3469251760
	.long	71
	.long	3262173932
	.long	3469251760
	.long	72
	.long	398910553
	.long	3469251760
	.long	73
	.long	3354219739
	.long	3469251760
	.long	74
	.long	2570308788
	.long	3469251760
	.long	75
	.long	982429111
	.long	3469251760
	.long	76
	.long	211491241
	.long	3469251760
	.long	77
	.long	1075683319
	.long	3469251760
	.long	78
	.long	1886352651
	.long	3469251760
	.long	79
	.long	248637203
	.long	3469251760
	.long	80
	.long	703327087
	.long	3469251760
	.long	81
	.long	3690160730
	.long	3469251760
	.long	82
	.long	787048238
	.long	3469251760
	.long	83
	.long	1937497967
	.long	3469251760
	.long	84
	.long	4205062514
	.long	3469251760
	.long	85
	.long	694462539
	.long	3469251760
	.long	86
	.long	85970907
	.long	3469251760
	.long	87
	.long	3681984728
	.long	3469251760
	.long	88
	.long	3620297642
	.long	3469251760
	.long	89
	.long	3394804480
	.long	3469251760
	.long	90
	.long	2119330183
	.long	3469251760
	.long	91
	.long	1963040266
	.long	3469251760
	.long	92
	.long	1603391838
	.long	3469251760
	.long	93
	.long	2340921237
	.long	3469251760
	.long	94
	.long	3028177438
	.long	3469251760
	.long	95
	.long	2265525308
	.long	3469251760
	.long	96
	.long	2598903994
	.long	3469251760
	.long	97
	.long	139524705
	.long	3469251760
	.long	98
	.long	1076410600
	.long	3469251760
	.long	99
	.long	220237413
	.long	3469251760
	.long	100
	.long	3913623866
	.long	3469251760
	.long	101
	.long	3453026372
	.long	3469251760
	.long	102
	.long	2321387380
	.long	3469251760
	.long	103
	.long	3319939363
	.long	3469251760
	.long	104
	.long	398991913
	.long	3469251760
	.long	105
	.long	333429647
	.long	3469251760
	.long	106
	.long	3927133990
	.long	3469251760
	.long	107
	.long	1797971294
	.long	3469251760
	.long	108
	.long	1622314776
	.long	3469251760
	.long	109
	.long	1092862330
	.long	3469251760
	.long	110
	.long	2568657322
	.long	3469251760
	.long	111
	.long	2168129897
	.long	3469251760
	.long	112
	.long	2890303119
	.long	3469251760
	.long	113
	.long	1713332582
	.long	3469251760
	.long	114
	.long	2375727721
	.long	3469251760
	.long	115
	.long	3586767156
	.long	3469251760
	.long	116
	.long	2191348475
	.long	3469251760
	.long	117
	.long	3910023869
	.long	3469251760
	.long	118
	.long	4189915105
	.long	3469251760
	.long	119
	.long	2527353334
	.long	3469251760
	.long	120
	.long	3429265923
	.long	3469251760
	.long	121
	.long	1283962724
	.long	3469251760
	.long	122
	.long	1970290990
	.long	3469251760
	.long	123
	.long	2615950861
	.long	3469251760
	.long	124
	.long	3338450337
	.long	3469251760
	.long	125
	.long	3971836509
	.long	3469251760
	.long	126
	.long	4260339231
	.long	3469251760
	.long	127
	.long	4160738226
	.long	3469251760
	.long	128
	.long	1309372079
	.long	3469251760
	.long	129
	.long	3151575564
	.long	3469251760
	.long	130
	.long	3938977714
	.long	3469251760
	.long	131
	.long	3228738087
	.long	3469251760
	.long	132
	.long	3135705803
	.long	3469251760
	.long	133
	.long	4061147315
	.long	3469251760
	.long	134
	.long	2783543715
	.long	3469251760
	.long	135
	.long	2471046843
	.long	3469251760
	.long	136
	.long	260073473
	.long	3469251760
	.long	137
	.long	1259876295
	.long	3469251760
	.long	138
	.long	2579807359
	.long	3469251760
	.long	139
	.long	90061610
	.long	3469251760
	.long	140
	.long	3598610789
	.long	3469251760
	.long	141
	.long	2351688191
	.long	3469251760
	.long	142
	.long	1438161982
	.long	3469251760
	.long	143
	.long	2438880600
	.long	3469251760
	.long	144
	.long	3593193962
	.long	3469251760
	.long	145
	.long	1755082314
	.long	3469251760
	.long	146
	.long	3432612426
	.long	3469251760
	.long	147
	.long	3374828335
	.long	3469251760
	.long	148
	.long	3311814731
	.long	3469251760
	.long	149
	.long	413908966
	.long	3469251760
	.long	150
	.long	3027808697
	.long	3469251760
	.cc_bottom __llvm_internal_gcov_emit_function_args.0.data
	.cc_top __llvm_internal_gcov_emit_arcs_args.0.data,__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
	.type	__llvm_internal_gcov_emit_arcs_args.0,@object
	.size	__llvm_internal_gcov_emit_arcs_args.0, 1208
__llvm_internal_gcov_emit_arcs_args.0:
	.long	5
	.long	__llvm_gcov_ctr
	.long	5
	.long	__llvm_gcov_ctr.1
	.long	5
	.long	__llvm_gcov_ctr.2
	.long	5
	.long	__llvm_gcov_ctr.3
	.long	2
	.long	__llvm_gcov_ctr.4
	.long	3
	.long	__llvm_gcov_ctr.5
	.long	2
	.long	__llvm_gcov_ctr.6
	.long	2
	.long	__llvm_gcov_ctr.7
	.long	4
	.long	__llvm_gcov_ctr.8
	.long	3
	.long	__llvm_gcov_ctr.9
	.long	4
	.long	__llvm_gcov_ctr.10
	.long	2
	.long	__llvm_gcov_ctr.11
	.long	7
	.long	__llvm_gcov_ctr.12
	.long	2
	.long	__llvm_gcov_ctr.13
	.long	1
	.long	__llvm_gcov_ctr.14
	.long	1
	.long	__llvm_gcov_ctr.15
	.long	3
	.long	__llvm_gcov_ctr.16
	.long	3
	.long	__llvm_gcov_ctr.17
	.long	1
	.long	__llvm_gcov_ctr.18
	.long	1
	.long	__llvm_gcov_ctr.19
	.long	1
	.long	__llvm_gcov_ctr.20
	.long	1
	.long	__llvm_gcov_ctr.21
	.long	3
	.long	__llvm_gcov_ctr.22
	.long	1
	.long	__llvm_gcov_ctr.23
	.long	5
	.long	__llvm_gcov_ctr.24
	.long	1
	.long	__llvm_gcov_ctr.25
	.long	7
	.long	__llvm_gcov_ctr.26
	.long	3
	.long	__llvm_gcov_ctr.27
	.long	1
	.long	__llvm_gcov_ctr.28
	.long	4
	.long	__llvm_gcov_ctr.29
	.long	4
	.long	__llvm_gcov_ctr.30
	.long	6
	.long	__llvm_gcov_ctr.31
	.long	6
	.long	__llvm_gcov_ctr.32
	.long	6
	.long	__llvm_gcov_ctr.33
	.long	6
	.long	__llvm_gcov_ctr.34
	.long	6
	.long	__llvm_gcov_ctr.35
	.long	6
	.long	__llvm_gcov_ctr.36
	.long	2
	.long	__llvm_gcov_ctr.37
	.long	1
	.long	__llvm_gcov_ctr.38
	.long	1
	.long	__llvm_gcov_ctr.39
	.long	3
	.long	__llvm_gcov_ctr.40
	.long	3
	.long	__llvm_gcov_ctr.41
	.long	3
	.long	__llvm_gcov_ctr.42
	.long	3
	.long	__llvm_gcov_ctr.43
	.long	2
	.long	__llvm_gcov_ctr.44
	.long	6
	.long	__llvm_gcov_ctr.45
	.long	6
	.long	__llvm_gcov_ctr.46
	.long	6
	.long	__llvm_gcov_ctr.47
	.long	4
	.long	__llvm_gcov_ctr.48
	.long	4
	.long	__llvm_gcov_ctr.49
	.long	1
	.long	__llvm_gcov_ctr.50
	.long	2
	.long	__llvm_gcov_ctr.51
	.long	1
	.long	__llvm_gcov_ctr.52
	.long	2
	.long	__llvm_gcov_ctr.53
	.long	1
	.long	__llvm_gcov_ctr.54
	.long	2
	.long	__llvm_gcov_ctr.55
	.long	1
	.long	__llvm_gcov_ctr.56
	.long	5
	.long	__llvm_gcov_ctr.57
	.long	6
	.long	__llvm_gcov_ctr.58
	.long	2
	.long	__llvm_gcov_ctr.59
	.long	2
	.long	__llvm_gcov_ctr.60
	.long	8
	.long	__llvm_gcov_ctr.61
	.long	5
	.long	__llvm_gcov_ctr.62
	.long	6
	.long	__llvm_gcov_ctr.63
	.long	2
	.long	__llvm_gcov_ctr.64
	.long	5
	.long	__llvm_gcov_ctr.65
	.long	2
	.long	__llvm_gcov_ctr.66
	.long	5
	.long	__llvm_gcov_ctr.67
	.long	1
	.long	__llvm_gcov_ctr.68
	.long	1
	.long	__llvm_gcov_ctr.69
	.long	1
	.long	__llvm_gcov_ctr.70
	.long	1
	.long	__llvm_gcov_ctr.71
	.long	1
	.long	__llvm_gcov_ctr.72
	.long	1
	.long	__llvm_gcov_ctr.73
	.long	1
	.long	__llvm_gcov_ctr.74
	.long	1
	.long	__llvm_gcov_ctr.75
	.long	1
	.long	__llvm_gcov_ctr.76
	.long	1
	.long	__llvm_gcov_ctr.77
	.long	1
	.long	__llvm_gcov_ctr.78
	.long	1
	.long	__llvm_gcov_ctr.79
	.long	1
	.long	__llvm_gcov_ctr.80
	.long	3
	.long	__llvm_gcov_ctr.81
	.long	3
	.long	__llvm_gcov_ctr.82
	.long	3
	.long	__llvm_gcov_ctr.83
	.long	3
	.long	__llvm_gcov_ctr.84
	.long	3
	.long	__llvm_gcov_ctr.85
	.long	1
	.long	__llvm_gcov_ctr.86
	.long	5
	.long	__llvm_gcov_ctr.87
	.long	5
	.long	__llvm_gcov_ctr.88
	.long	5
	.long	__llvm_gcov_ctr.89
	.long	2
	.long	__llvm_gcov_ctr.90
	.long	5
	.long	__llvm_gcov_ctr.91
	.long	4
	.long	__llvm_gcov_ctr.92
	.long	4
	.long	__llvm_gcov_ctr.93
	.long	3
	.long	__llvm_gcov_ctr.94
	.long	4
	.long	__llvm_gcov_ctr.95
	.long	5
	.long	__llvm_gcov_ctr.96
	.long	6
	.long	__llvm_gcov_ctr.97
	.long	1
	.long	__llvm_gcov_ctr.98
	.long	8
	.long	__llvm_gcov_ctr.99
	.long	3
	.long	__llvm_gcov_ctr.100
	.long	8
	.long	__llvm_gcov_ctr.101
	.long	3
	.long	__llvm_gcov_ctr.102
	.long	3
	.long	__llvm_gcov_ctr.103
	.long	3
	.long	__llvm_gcov_ctr.104
	.long	6
	.long	__llvm_gcov_ctr.105
	.long	6
	.long	__llvm_gcov_ctr.106
	.long	6
	.long	__llvm_gcov_ctr.107
	.long	1
	.long	__llvm_gcov_ctr.108
	.long	1
	.long	__llvm_gcov_ctr.109
	.long	1
	.long	__llvm_gcov_ctr.110
	.long	1
	.long	__llvm_gcov_ctr.111
	.long	1
	.long	__llvm_gcov_ctr.112
	.long	1
	.long	__llvm_gcov_ctr.113
	.long	3
	.long	__llvm_gcov_ctr.114
	.long	3
	.long	__llvm_gcov_ctr.115
	.long	2
	.long	__llvm_gcov_ctr.116
	.long	3
	.long	__llvm_gcov_ctr.117
	.long	3
	.long	__llvm_gcov_ctr.118
	.long	3
	.long	__llvm_gcov_ctr.119
	.long	4
	.long	__llvm_gcov_ctr.120
	.long	8
	.long	__llvm_gcov_ctr.121
	.long	3
	.long	__llvm_gcov_ctr.122
	.long	3
	.long	__llvm_gcov_ctr.123
	.long	1
	.long	__llvm_gcov_ctr.124
	.long	1
	.long	__llvm_gcov_ctr.125
	.long	7
	.long	__llvm_gcov_ctr.126
	.long	4
	.long	__llvm_gcov_ctr.127
	.long	4
	.long	__llvm_gcov_ctr.128
	.long	8
	.long	__llvm_gcov_ctr.129
	.long	8
	.long	__llvm_gcov_ctr.130
	.long	3
	.long	__llvm_gcov_ctr.131
	.long	3
	.long	__llvm_gcov_ctr.132
	.long	1
	.long	__llvm_gcov_ctr.133
	.long	1
	.long	__llvm_gcov_ctr.134
	.long	1
	.long	__llvm_gcov_ctr.135
	.long	5
	.long	__llvm_gcov_ctr.136
	.long	1
	.long	__llvm_gcov_ctr.137
	.long	1
	.long	__llvm_gcov_ctr.138
	.long	3
	.long	__llvm_gcov_ctr.139
	.long	1
	.long	__llvm_gcov_ctr.140
	.long	1
	.long	__llvm_gcov_ctr.141
	.long	1
	.long	__llvm_gcov_ctr.142
	.long	1
	.long	__llvm_gcov_ctr.143
	.long	1
	.long	__llvm_gcov_ctr.144
	.long	1
	.long	__llvm_gcov_ctr.145
	.long	1
	.long	__llvm_gcov_ctr.146
	.long	4
	.long	__llvm_gcov_ctr.147
	.long	4
	.long	__llvm_gcov_ctr.148
	.long	5
	.long	__llvm_gcov_ctr.149
	.long	1
	.long	__llvm_gcov_ctr.150
	.cc_bottom __llvm_internal_gcov_emit_arcs_args.0.data
	.cc_top __llvm_internal_gcov_emit_file_info.data,__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
	.type	__llvm_internal_gcov_emit_file_info,@object
	.size	__llvm_internal_gcov_emit_file_info, 24
__llvm_internal_gcov_emit_file_info:
	.long	.L__unnamed_1
	.long	875575338
	.long	3469251760
	.long	151
	.long	__llvm_internal_gcov_emit_function_args.0
	.long	__llvm_internal_gcov_emit_arcs_args.0
	.cc_bottom __llvm_internal_gcov_emit_file_info.data
	.section	.init_array.0,"aw",@init_array
	.p2align	2, 0x0
	.long	__llvm_gcov_init
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memmove.data,.L__profc_memmove
	.p2align	3, 0x0
	.type	.L__profc_memmove,@object
	.size	.L__profc_memmove, 40
.L__profc_memmove:
	.space	40
	.cc_bottom .L__profc_memmove.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memmove.data,.L__profd_memmove
	.p2align	3, 0x0
	.type	.L__profd_memmove,@object
	.size	.L__profd_memmove, 48
.L__profd_memmove:
	.long	3815148669
	.long	4223702050
	.long	1334589160
	.long	3349278745
	.long	.L__profc_memmove-.L__profd_memmove
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memmove.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memccpy.data,.L__profc_memccpy
	.p2align	3, 0x0
	.type	.L__profc_memccpy,@object
	.size	.L__profc_memccpy, 40
.L__profc_memccpy:
	.space	40
	.cc_bottom .L__profc_memccpy.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memccpy.data,.L__profd_memccpy
	.p2align	3, 0x0
	.type	.L__profd_memccpy,@object
	.size	.L__profd_memccpy, 48
.L__profd_memccpy:
	.long	3842140814
	.long	3924565461
	.long	1246331992
	.long	276996
	.long	.L__profc_memccpy-.L__profd_memccpy
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memccpy.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memchr.data,.L__profc_memchr
	.p2align	3, 0x0
	.type	.L__profc_memchr,@object
	.size	.L__profc_memchr, 40
.L__profc_memchr:
	.space	40
	.cc_bottom .L__profc_memchr.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memchr.data,.L__profd_memchr
	.p2align	3, 0x0
	.type	.L__profd_memchr,@object
	.size	.L__profd_memchr, 48
.L__profd_memchr:
	.long	503472520
	.long	1329152416
	.long	243340813
	.long	1
	.long	.L__profc_memchr-.L__profd_memchr
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memchr.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memcmp.data,.L__profc_memcmp
	.p2align	3, 0x0
	.type	.L__profc_memcmp,@object
	.size	.L__profc_memcmp, 40
.L__profc_memcmp:
	.space	40
	.cc_bottom .L__profc_memcmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memcmp.data,.L__profd_memcmp
	.p2align	3, 0x0
	.type	.L__profd_memcmp,@object
	.size	.L__profd_memcmp, 48
.L__profd_memcmp:
	.long	3752101698
	.long	3205424458
	.long	243078669
	.long	1
	.long	.L__profc_memcmp-.L__profd_memcmp
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memcmp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memcpy.data,.L__profc_memcpy
	.p2align	3, 0x0
	.type	.L__profc_memcpy,@object
	.size	.L__profc_memcpy, 16
.L__profc_memcpy:
	.space	16
	.cc_bottom .L__profc_memcpy.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memcpy.data,.L__profd_memcpy
	.p2align	3, 0x0
	.type	.L__profd_memcpy,@object
	.size	.L__profd_memcpy, 48
.L__profd_memcpy:
	.long	314430578
	.long	906480342
	.long	17496
	.long	0
	.long	.L__profc_memcpy-.L__profd_memcpy
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memcpy.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memrchr.data,.L__profc_memrchr
	.p2align	3, 0x0
	.type	.L__profc_memrchr,@object
	.size	.L__profc_memrchr, 24
.L__profc_memrchr:
	.space	24
	.cc_bottom .L__profc_memrchr.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memrchr.data,.L__profd_memrchr
	.p2align	3, 0x0
	.type	.L__profd_memrchr,@object
	.size	.L__profd_memrchr, 48
.L__profd_memrchr:
	.long	1963431520
	.long	4167298239
	.long	3529577560
	.long	2215
	.long	.L__profc_memrchr-.L__profd_memrchr
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memrchr.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memset.data,.L__profc_memset
	.p2align	3, 0x0
	.type	.L__profc_memset,@object
	.size	.L__profc_memset, 16
.L__profc_memset:
	.space	16
	.cc_bottom .L__profc_memset.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memset.data,.L__profd_memset
	.p2align	3, 0x0
	.type	.L__profd_memset,@object
	.size	.L__profd_memset, 48
.L__profd_memset:
	.long	116615793
	.long	3656644693
	.long	17496
	.long	0
	.long	.L__profc_memset-.L__profd_memset
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memset.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_stpcpy.data,.L__profc_stpcpy
	.p2align	3, 0x0
	.type	.L__profc_stpcpy,@object
	.size	.L__profc_stpcpy, 16
.L__profc_stpcpy:
	.space	16
	.cc_bottom .L__profc_stpcpy.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_stpcpy.data,.L__profd_stpcpy
	.p2align	3, 0x0
	.type	.L__profd_stpcpy,@object
	.size	.L__profd_stpcpy, 48
.L__profd_stpcpy:
	.long	2693264965
	.long	1037221703
	.long	17496
	.long	0
	.long	.L__profc_stpcpy-.L__profd_stpcpy
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_stpcpy.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strchrnul.data,.L__profc_strchrnul
	.p2align	3, 0x0
	.type	.L__profc_strchrnul,@object
	.size	.L__profc_strchrnul, 32
.L__profc_strchrnul:
	.space	32
	.cc_bottom .L__profc_strchrnul.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strchrnul.data,.L__profd_strchrnul
	.p2align	3, 0x0
	.type	.L__profd_strchrnul,@object
	.size	.L__profd_strchrnul, 48
.L__profd_strchrnul:
	.long	3359708469
	.long	1173282191
	.long	70911064
	.long	0
	.long	.L__profc_strchrnul-.L__profd_strchrnul
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strchrnul.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strchr.data,.L__profc_strchr
	.p2align	3, 0x0
	.type	.L__profc_strchr,@object
	.size	.L__profc_strchr, 24
.L__profc_strchr:
	.space	24
	.cc_bottom .L__profc_strchr.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strchr.data,.L__profd_strchr
	.p2align	3, 0x0
	.type	.L__profd_strchr,@object
	.size	.L__profd_strchr, 48
.L__profd_strchr:
	.long	1273642115
	.long	2974463078
	.long	3529577560
	.long	3239
	.long	.L__profc_strchr-.L__profd_strchr
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strchr.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strcmp.data,.L__profc_strcmp
	.p2align	3, 0x0
	.type	.L__profc_strcmp,@object
	.size	.L__profc_strcmp, 32
.L__profc_strcmp:
	.space	32
	.cc_bottom .L__profc_strcmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strcmp.data,.L__profd_strcmp
	.p2align	3, 0x0
	.type	.L__profd_strcmp,@object
	.size	.L__profd_strcmp, 48
.L__profd_strcmp:
	.long	53592868
	.long	235903750
	.long	70906968
	.long	0
	.long	.L__profc_strcmp-.L__profd_strcmp
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strcmp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strlen.data,.L__profc_strlen
	.p2align	3, 0x0
	.type	.L__profc_strlen,@object
	.size	.L__profc_strlen, 16
.L__profc_strlen:
	.space	16
	.cc_bottom .L__profc_strlen.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strlen.data,.L__profd_strlen
	.p2align	3, 0x0
	.type	.L__profd_strlen,@object
	.size	.L__profd_strlen, 48
.L__profd_strlen:
	.long	44553075
	.long	690374619
	.long	17496
	.long	0
	.long	.L__profc_strlen-.L__profd_strlen
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strlen.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strncmp.data,.L__profc_strncmp
	.p2align	3, 0x0
	.type	.L__profc_strncmp,@object
	.size	.L__profc_strncmp, 72
.L__profc_strncmp:
	.space	72
	.cc_bottom .L__profc_strncmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strncmp.data,.L__profd_strncmp
	.p2align	3, 0x0
	.type	.L__profd_strncmp,@object
	.size	.L__profd_strncmp, 48
.L__profd_strncmp:
	.long	1018521786
	.long	2884363811
	.long	3409360719
	.long	1678092867
	.long	.L__profc_strncmp-.L__profd_strncmp
	.long	0
	.long	0
	.long	0
	.long	9
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strncmp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_swab.data,.L__profc_swab
	.p2align	3, 0x0
	.type	.L__profc_swab,@object
	.size	.L__profc_swab, 16
.L__profc_swab:
	.space	16
	.cc_bottom .L__profc_swab.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_swab.data,.L__profd_swab
	.p2align	3, 0x0
	.type	.L__profd_swab,@object
	.size	.L__profd_swab, 48
.L__profd_swab:
	.long	63675239
	.long	3917793141
	.long	18193
	.long	0
	.long	.L__profc_swab-.L__profd_swab
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_swab.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isalpha.data,.L__profc_isalpha
	.p2align	3, 0x0
	.type	.L__profc_isalpha,@object
	.size	.L__profc_isalpha, 8
.L__profc_isalpha:
	.space	8
	.cc_bottom .L__profc_isalpha.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isalpha.data,.L__profd_isalpha
	.p2align	3, 0x0
	.type	.L__profd_isalpha,@object
	.size	.L__profd_isalpha, 48
.L__profd_isalpha:
	.long	4268055388
	.long	3962027158
	.long	1563
	.long	0
	.long	.L__profc_isalpha-.L__profd_isalpha
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isalpha.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isascii.data,.L__profc_isascii
	.p2align	3, 0x0
	.type	.L__profc_isascii,@object
	.size	.L__profc_isascii, 8
.L__profc_isascii:
	.space	8
	.cc_bottom .L__profc_isascii.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isascii.data,.L__profd_isascii
	.p2align	3, 0x0
	.type	.L__profd_isascii,@object
	.size	.L__profd_isascii, 48
.L__profd_isascii:
	.long	3299371601
	.long	3179184643
	.long	1562
	.long	0
	.long	.L__profc_isascii-.L__profd_isascii
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isascii.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isblank.data,.L__profc_isblank
	.p2align	3, 0x0
	.type	.L__profc_isblank,@object
	.size	.L__profc_isblank, 24
.L__profc_isblank:
	.space	24
	.cc_bottom .L__profc_isblank.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isblank.data,.L__profd_isblank
	.p2align	3, 0x0
	.type	.L__profd_isblank,@object
	.size	.L__profd_isblank, 48
.L__profd_isblank:
	.long	2601843714
	.long	573974245
	.long	6354911
	.long	0
	.long	.L__profc_isblank-.L__profd_isblank
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isblank.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_iscntrl.data,.L__profc_iscntrl
	.p2align	3, 0x0
	.type	.L__profc_iscntrl,@object
	.size	.L__profc_iscntrl, 24
.L__profc_iscntrl:
	.space	24
	.cc_bottom .L__profc_iscntrl.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_iscntrl.data,.L__profd_iscntrl
	.p2align	3, 0x0
	.type	.L__profd_iscntrl,@object
	.size	.L__profd_iscntrl, 48
.L__profd_iscntrl:
	.long	3367402719
	.long	2071664684
	.long	6354655
	.long	0
	.long	.L__profc_iscntrl-.L__profd_iscntrl
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_iscntrl.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isdigit.data,.L__profc_isdigit
	.p2align	3, 0x0
	.type	.L__profc_isdigit,@object
	.size	.L__profc_isdigit, 8
.L__profc_isdigit:
	.space	8
	.cc_bottom .L__profc_isdigit.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isdigit.data,.L__profd_isdigit
	.p2align	3, 0x0
	.type	.L__profd_isdigit,@object
	.size	.L__profd_isdigit, 48
.L__profd_isdigit:
	.long	1824746341
	.long	811178622
	.long	1563
	.long	0
	.long	.L__profc_isdigit-.L__profd_isdigit
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isdigit.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isgraph.data,.L__profc_isgraph
	.p2align	3, 0x0
	.type	.L__profc_isgraph,@object
	.size	.L__profc_isgraph, 8
.L__profc_isgraph:
	.space	8
	.cc_bottom .L__profc_isgraph.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isgraph.data,.L__profd_isgraph
	.p2align	3, 0x0
	.type	.L__profd_isgraph,@object
	.size	.L__profd_isgraph, 48
.L__profd_isgraph:
	.long	2312090716
	.long	4265344884
	.long	1563
	.long	0
	.long	.L__profc_isgraph-.L__profd_isgraph
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isgraph.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_islower.data,.L__profc_islower
	.p2align	3, 0x0
	.type	.L__profc_islower,@object
	.size	.L__profc_islower, 8
.L__profc_islower:
	.space	8
	.cc_bottom .L__profc_islower.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_islower.data,.L__profd_islower
	.p2align	3, 0x0
	.type	.L__profd_islower,@object
	.size	.L__profd_islower, 48
.L__profd_islower:
	.long	1158205281
	.long	1746691721
	.long	1563
	.long	0
	.long	.L__profc_islower-.L__profd_islower
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_islower.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isprint.data,.L__profc_isprint
	.p2align	3, 0x0
	.type	.L__profc_isprint,@object
	.size	.L__profc_isprint, 8
.L__profc_isprint:
	.space	8
	.cc_bottom .L__profc_isprint.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isprint.data,.L__profd_isprint
	.p2align	3, 0x0
	.type	.L__profd_isprint,@object
	.size	.L__profd_isprint, 48
.L__profd_isprint:
	.long	341795750
	.long	2600947030
	.long	1563
	.long	0
	.long	.L__profc_isprint-.L__profd_isprint
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isprint.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isspace.data,.L__profc_isspace
	.p2align	3, 0x0
	.type	.L__profc_isspace,@object
	.size	.L__profc_isspace, 24
.L__profc_isspace:
	.space	24
	.cc_bottom .L__profc_isspace.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isspace.data,.L__profd_isspace
	.p2align	3, 0x0
	.type	.L__profd_isspace,@object
	.size	.L__profd_isspace, 48
.L__profd_isspace:
	.long	970391827
	.long	2103010333
	.long	6354907
	.long	0
	.long	.L__profc_isspace-.L__profd_isspace
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isspace.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_isupper.data,.L__profc_isupper
	.p2align	3, 0x0
	.type	.L__profc_isupper,@object
	.size	.L__profc_isupper, 8
.L__profc_isupper:
	.space	8
	.cc_bottom .L__profc_isupper.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_isupper.data,.L__profd_isupper
	.p2align	3, 0x0
	.type	.L__profd_isupper,@object
	.size	.L__profd_isupper, 48
.L__profd_isupper:
	.long	3294401357
	.long	972001401
	.long	1563
	.long	0
	.long	.L__profc_isupper-.L__profd_isupper
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_isupper.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_iswcntrl.data,.L__profc_iswcntrl
	.p2align	3, 0x0
	.type	.L__profc_iswcntrl,@object
	.size	.L__profc_iswcntrl, 56
.L__profc_iswcntrl:
	.space	56
	.cc_bottom .L__profc_iswcntrl.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_iswcntrl.data,.L__profd_iswcntrl
	.p2align	3, 0x0
	.type	.L__profd_iswcntrl,@object
	.size	.L__profd_iswcntrl, 48
.L__profd_iswcntrl:
	.long	1638352188
	.long	1629875005
	.long	3480073947
	.long	24819
	.long	.L__profc_iswcntrl-.L__profd_iswcntrl
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_iswcntrl.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_iswdigit.data,.L__profc_iswdigit
	.p2align	3, 0x0
	.type	.L__profc_iswdigit,@object
	.size	.L__profc_iswdigit, 8
.L__profc_iswdigit:
	.space	8
	.cc_bottom .L__profc_iswdigit.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_iswdigit.data,.L__profd_iswdigit
	.p2align	3, 0x0
	.type	.L__profd_iswdigit,@object
	.size	.L__profd_iswdigit, 48
.L__profd_iswdigit:
	.long	425265880
	.long	1998560793
	.long	1563
	.long	0
	.long	.L__profc_iswdigit-.L__profd_iswdigit
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_iswdigit.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_iswprint.data,.L__profc_iswprint
	.p2align	3, 0x0
	.type	.L__profc_iswprint,@object
	.size	.L__profc_iswprint, 80
.L__profc_iswprint:
	.space	80
	.cc_bottom .L__profc_iswprint.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_iswprint.data,.L__profd_iswprint
	.p2align	3, 0x0
	.type	.L__profd_iswprint,@object
	.size	.L__profd_iswprint, 48
.L__profd_iswprint:
	.long	1234441494
	.long	4127432781
	.long	3816038944
	.long	3697496113
	.long	.L__profc_iswprint-.L__profd_iswprint
	.long	0
	.long	0
	.long	0
	.long	10
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_iswprint.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_iswxdigit.data,.L__profc_iswxdigit
	.p2align	3, 0x0
	.type	.L__profc_iswxdigit,@object
	.size	.L__profc_iswxdigit, 24
.L__profc_iswxdigit:
	.space	24
	.cc_bottom .L__profc_iswxdigit.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_iswxdigit.data,.L__profd_iswxdigit
	.p2align	3, 0x0
	.type	.L__profd_iswxdigit,@object
	.size	.L__profd_iswxdigit, 48
.L__profd_iswxdigit:
	.long	4035185714
	.long	145465997
	.long	6354651
	.long	0
	.long	.L__profc_iswxdigit-.L__profd_iswxdigit
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_iswxdigit.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_toascii.data,.L__profc_toascii
	.p2align	3, 0x0
	.type	.L__profc_toascii,@object
	.size	.L__profc_toascii, 8
.L__profc_toascii:
	.space	8
	.cc_bottom .L__profc_toascii.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_toascii.data,.L__profd_toascii
	.p2align	3, 0x0
	.type	.L__profd_toascii,@object
	.size	.L__profd_toascii, 48
.L__profd_toascii:
	.long	2787418936
	.long	1058951014
	.long	24
	.long	0
	.long	.L__profc_toascii-.L__profd_toascii
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_toascii.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fdim.data,.L__profc_fdim
	.p2align	3, 0x0
	.type	.L__profc_fdim,@object
	.size	.L__profc_fdim, 32
.L__profc_fdim:
	.space	32
	.cc_bottom .L__profc_fdim.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fdim.data,.L__profd_fdim
	.p2align	3, 0x0
	.type	.L__profd_fdim,@object
	.size	.L__profd_fdim, 48
.L__profd_fdim:
	.long	42400059
	.long	3469380117
	.long	698703480
	.long	1715926122
	.long	.L__profc_fdim-.L__profd_fdim
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fdim.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fdimf.data,.L__profc_fdimf
	.p2align	3, 0x0
	.type	.L__profc_fdimf,@object
	.size	.L__profc_fdimf, 32
.L__profc_fdimf:
	.space	32
	.cc_bottom .L__profc_fdimf.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fdimf.data,.L__profd_fdimf
	.p2align	3, 0x0
	.type	.L__profd_fdimf,@object
	.size	.L__profd_fdimf, 48
.L__profd_fdimf:
	.long	1666032008
	.long	3934575814
	.long	698703480
	.long	1715926122
	.long	.L__profc_fdimf-.L__profd_fdimf
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fdimf.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fmax.data,.L__profc_fmax
	.p2align	3, 0x0
	.type	.L__profc_fmax,@object
	.size	.L__profc_fmax, 48
.L__profc_fmax:
	.space	48
	.cc_bottom .L__profc_fmax.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fmax.data,.L__profd_fmax
	.p2align	3, 0x0
	.type	.L__profd_fmax,@object
	.size	.L__profd_fmax, 48
.L__profd_fmax:
	.long	996492642
	.long	3730631965
	.long	463263937
	.long	926163641
	.long	.L__profc_fmax-.L__profd_fmax
	.long	0
	.long	0
	.long	0
	.long	6
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fmax.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fmaxf.data,.L__profc_fmaxf
	.p2align	3, 0x0
	.type	.L__profc_fmaxf,@object
	.size	.L__profc_fmaxf, 48
.L__profc_fmaxf:
	.space	48
	.cc_bottom .L__profc_fmaxf.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fmaxf.data,.L__profd_fmaxf
	.p2align	3, 0x0
	.type	.L__profd_fmaxf,@object
	.size	.L__profd_fmaxf, 48
.L__profd_fmaxf:
	.long	2386403996
	.long	3099566085
	.long	463263937
	.long	926163641
	.long	.L__profc_fmaxf-.L__profd_fmaxf
	.long	0
	.long	0
	.long	0
	.long	6
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fmaxf.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fmaxl.data,.L__profc_fmaxl
	.p2align	3, 0x0
	.type	.L__profc_fmaxl,@object
	.size	.L__profc_fmaxl, 48
.L__profc_fmaxl:
	.space	48
	.cc_bottom .L__profc_fmaxl.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fmaxl.data,.L__profd_fmaxl
	.p2align	3, 0x0
	.type	.L__profd_fmaxl,@object
	.size	.L__profd_fmaxl, 48
.L__profd_fmaxl:
	.long	3522938444
	.long	3564209692
	.long	463263937
	.long	926163641
	.long	.L__profc_fmaxl-.L__profd_fmaxl
	.long	0
	.long	0
	.long	0
	.long	6
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fmaxl.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fmin.data,.L__profc_fmin
	.p2align	3, 0x0
	.type	.L__profc_fmin,@object
	.size	.L__profc_fmin, 48
.L__profc_fmin:
	.space	48
	.cc_bottom .L__profc_fmin.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fmin.data,.L__profd_fmin
	.p2align	3, 0x0
	.type	.L__profd_fmin,@object
	.size	.L__profd_fmin, 48
.L__profd_fmin:
	.long	1265219729
	.long	224781063
	.long	463263937
	.long	926163641
	.long	.L__profc_fmin-.L__profd_fmin
	.long	0
	.long	0
	.long	0
	.long	6
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fmin.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fminf.data,.L__profc_fminf
	.p2align	3, 0x0
	.type	.L__profc_fminf,@object
	.size	.L__profc_fminf, 48
.L__profc_fminf:
	.space	48
	.cc_bottom .L__profc_fminf.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fminf.data,.L__profd_fminf
	.p2align	3, 0x0
	.type	.L__profd_fminf,@object
	.size	.L__profd_fminf, 48
.L__profd_fminf:
	.long	848075867
	.long	1795170736
	.long	463263937
	.long	926163641
	.long	.L__profc_fminf-.L__profd_fminf
	.long	0
	.long	0
	.long	0
	.long	6
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fminf.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_fminl.data,.L__profc_fminl
	.p2align	3, 0x0
	.type	.L__profc_fminl,@object
	.size	.L__profc_fminl, 48
.L__profc_fminl:
	.space	48
	.cc_bottom .L__profc_fminl.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_fminl.data,.L__profd_fminl
	.p2align	3, 0x0
	.type	.L__profd_fminl,@object
	.size	.L__profd_fminl, 48
.L__profd_fminl:
	.long	1476992898
	.long	579147296
	.long	463263937
	.long	926163641
	.long	.L__profc_fminl-.L__profd_fminl
	.long	0
	.long	0
	.long	0
	.long	6
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_fminl.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_l64a.data,.L__profc_l64a
	.p2align	3, 0x0
	.type	.L__profc_l64a,@object
	.size	.L__profc_l64a, 16
.L__profc_l64a:
	.space	16
	.cc_bottom .L__profc_l64a.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_l64a.data,.L__profd_l64a
	.p2align	3, 0x0
	.type	.L__profd_l64a,@object
	.size	.L__profd_l64a, 48
.L__profd_l64a:
	.long	3141852333
	.long	2861022502
	.long	17496
	.long	0
	.long	.L__profc_l64a-.L__profd_l64a
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_l64a.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_srand.data,.L__profc_srand
	.p2align	3, 0x0
	.type	.L__profc_srand,@object
	.size	.L__profc_srand, 8
.L__profc_srand:
	.space	8
	.cc_bottom .L__profc_srand.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_srand.data,.L__profd_srand
	.p2align	3, 0x0
	.type	.L__profd_srand,@object
	.size	.L__profd_srand, 48
.L__profd_srand:
	.long	1506720376
	.long	3809371785
	.long	0
	.long	0
	.long	.L__profc_srand-.L__profd_srand
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_srand.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rand.data,.L__profc_rand
	.p2align	3, 0x0
	.type	.L__profc_rand,@object
	.size	.L__profc_rand, 8
.L__profc_rand:
	.space	8
	.cc_bottom .L__profc_rand.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rand.data,.L__profd_rand
	.p2align	3, 0x0
	.type	.L__profd_rand,@object
	.size	.L__profd_rand, 48
.L__profd_rand:
	.long	1355010356
	.long	1677797475
	.long	24
	.long	0
	.long	.L__profc_rand-.L__profd_rand
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rand.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_insque.data,.L__profc_insque
	.p2align	3, 0x0
	.type	.L__profc_insque,@object
	.size	.L__profc_insque, 24
.L__profc_insque:
	.space	24
	.cc_bottom .L__profc_insque.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_insque.data,.L__profd_insque
	.p2align	3, 0x0
	.type	.L__profd_insque,@object
	.size	.L__profd_insque, 48
.L__profd_insque:
	.long	3171658647
	.long	3112106243
	.long	2554635409
	.long	10660
	.long	.L__profc_insque-.L__profd_insque
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_insque.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_remque.data,.L__profc_remque
	.p2align	3, 0x0
	.type	.L__profc_remque,@object
	.size	.L__profc_remque, 24
.L__profc_remque:
	.space	24
	.cc_bottom .L__profc_remque.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_remque.data,.L__profd_remque
	.p2align	3, 0x0
	.type	.L__profd_remque,@object
	.size	.L__profd_remque, 48
.L__profd_remque:
	.long	1424166850
	.long	2615275917
	.long	2453972113
	.long	2
	.long	.L__profc_remque-.L__profd_remque
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_remque.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_lsearch.data,.L__profc_lsearch
	.p2align	3, 0x0
	.type	.L__profc_lsearch,@object
	.size	.L__profc_lsearch, 24
.L__profc_lsearch:
	.space	24
	.cc_bottom .L__profc_lsearch.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_lsearch.data,.L__profd_lsearch
	.p2align	3, 0x0
	.type	.L__profd_lsearch,@object
	.size	.L__profd_lsearch, 48
.L__profd_lsearch:
	.long	4174077742
	.long	2657666506
	.long	3529577560
	.long	289959
	.long	.L__profc_lsearch-.L__profd_lsearch
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_lsearch.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_lfind.data,.L__profc_lfind
	.p2align	3, 0x0
	.type	.L__profc_lfind,@object
	.size	.L__profc_lfind, 24
.L__profc_lfind:
	.space	24
	.cc_bottom .L__profc_lfind.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_lfind.data,.L__profd_lfind
	.p2align	3, 0x0
	.type	.L__profd_lfind,@object
	.size	.L__profd_lfind, 48
.L__profd_lfind:
	.long	817200365
	.long	2816442654
	.long	3529577560
	.long	289959
	.long	.L__profc_lfind-.L__profd_lfind
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_lfind.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_abs.data,.L__profc_abs
	.p2align	3, 0x0
	.type	.L__profc_abs,@object
	.size	.L__profc_abs, 16
.L__profc_abs:
	.space	16
	.cc_bottom .L__profc_abs.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_abs.data,.L__profd_abs
	.p2align	3, 0x0
	.type	.L__profd_abs,@object
	.size	.L__profd_abs, 48
.L__profd_abs:
	.long	90942713
	.long	4239445182
	.long	99164
	.long	0
	.long	.L__profc_abs-.L__profd_abs
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_abs.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_atoi.data,.L__profc_atoi
	.p2align	3, 0x0
	.type	.L__profc_atoi,@object
	.size	.L__profc_atoi, 56
.L__profc_atoi:
	.space	56
	.cc_bottom .L__profc_atoi.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_atoi.data,.L__profd_atoi
	.p2align	3, 0x0
	.type	.L__profd_atoi,@object
	.size	.L__profd_atoi, 48
.L__profd_atoi:
	.long	2738380237
	.long	2771274315
	.long	134813197
	.long	148594
	.long	.L__profc_atoi-.L__profd_atoi
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_atoi.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_atol.data,.L__profc_atol
	.p2align	3, 0x0
	.type	.L__profc_atol,@object
	.size	.L__profc_atol, 56
.L__profc_atol:
	.space	56
	.cc_bottom .L__profc_atol.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_atol.data,.L__profd_atol
	.p2align	3, 0x0
	.type	.L__profd_atol,@object
	.size	.L__profd_atol, 48
.L__profd_atol:
	.long	4002377009
	.long	1917634100
	.long	134813197
	.long	148594
	.long	.L__profc_atol-.L__profd_atol
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_atol.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_atoll.data,.L__profc_atoll
	.p2align	3, 0x0
	.type	.L__profc_atoll,@object
	.size	.L__profc_atoll, 56
.L__profc_atoll:
	.space	56
	.cc_bottom .L__profc_atoll.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_atoll.data,.L__profd_atoll
	.p2align	3, 0x0
	.type	.L__profd_atoll,@object
	.size	.L__profd_atoll, 48
.L__profd_atoll:
	.long	1906768237
	.long	850718345
	.long	134813197
	.long	148594
	.long	.L__profc_atoll-.L__profd_atoll
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_atoll.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_bsearch.data,.L__profc_bsearch
	.p2align	3, 0x0
	.type	.L__profc_bsearch,@object
	.size	.L__profc_bsearch, 32
.L__profc_bsearch:
	.space	32
	.cc_bottom .L__profc_bsearch.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_bsearch.data,.L__profd_bsearch
	.p2align	3, 0x0
	.type	.L__profd_bsearch,@object
	.size	.L__profd_bsearch, 48
.L__profd_bsearch:
	.long	2054766654
	.long	2037293955
	.long	739949690
	.long	4096469249
	.long	.L__profc_bsearch-.L__profd_bsearch
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_bsearch.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_bsearch_r.data,.L__profc_bsearch_r
	.p2align	3, 0x0
	.type	.L__profc_bsearch_r,@object
	.size	.L__profc_bsearch_r, 32
.L__profc_bsearch_r:
	.space	32
	.cc_bottom .L__profc_bsearch_r.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_bsearch_r.data,.L__profd_bsearch_r
	.p2align	3, 0x0
	.type	.L__profd_bsearch_r,@object
	.size	.L__profd_bsearch_r, 48
.L__profd_bsearch_r:
	.long	2873519740
	.long	329943608
	.long	2313468942
	.long	293222950
	.long	.L__profc_bsearch_r-.L__profd_bsearch_r
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_bsearch_r.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_div.data,.L__profc_div
	.p2align	3, 0x0
	.type	.L__profc_div,@object
	.size	.L__profc_div, 8
.L__profc_div:
	.space	8
	.cc_bottom .L__profc_div.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_div.data,.L__profd_div
	.p2align	3, 0x0
	.type	.L__profd_div,@object
	.size	.L__profd_div, 48
.L__profd_div:
	.long	1483041080
	.long	1279891676
	.long	24
	.long	0
	.long	.L__profc_div-.L__profd_div
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_div.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_imaxabs.data,.L__profc_imaxabs
	.p2align	3, 0x0
	.type	.L__profc_imaxabs,@object
	.size	.L__profc_imaxabs, 16
.L__profc_imaxabs:
	.space	16
	.cc_bottom .L__profc_imaxabs.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_imaxabs.data,.L__profd_imaxabs
	.p2align	3, 0x0
	.type	.L__profd_imaxabs,@object
	.size	.L__profd_imaxabs, 48
.L__profd_imaxabs:
	.long	3004042905
	.long	2083058595
	.long	99164
	.long	0
	.long	.L__profc_imaxabs-.L__profd_imaxabs
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_imaxabs.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_imaxdiv.data,.L__profc_imaxdiv
	.p2align	3, 0x0
	.type	.L__profc_imaxdiv,@object
	.size	.L__profc_imaxdiv, 8
.L__profc_imaxdiv:
	.space	8
	.cc_bottom .L__profc_imaxdiv.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_imaxdiv.data,.L__profd_imaxdiv
	.p2align	3, 0x0
	.type	.L__profd_imaxdiv,@object
	.size	.L__profd_imaxdiv, 48
.L__profd_imaxdiv:
	.long	2640297140
	.long	3380309228
	.long	24
	.long	0
	.long	.L__profc_imaxdiv-.L__profd_imaxdiv
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_imaxdiv.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_labs.data,.L__profc_labs
	.p2align	3, 0x0
	.type	.L__profc_labs,@object
	.size	.L__profc_labs, 16
.L__profc_labs:
	.space	16
	.cc_bottom .L__profc_labs.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_labs.data,.L__profd_labs
	.p2align	3, 0x0
	.type	.L__profd_labs,@object
	.size	.L__profd_labs, 48
.L__profd_labs:
	.long	3013844134
	.long	2637576034
	.long	99164
	.long	0
	.long	.L__profc_labs-.L__profd_labs
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_labs.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_ldiv.data,.L__profc_ldiv
	.p2align	3, 0x0
	.type	.L__profc_ldiv,@object
	.size	.L__profc_ldiv, 8
.L__profc_ldiv:
	.space	8
	.cc_bottom .L__profc_ldiv.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_ldiv.data,.L__profd_ldiv
	.p2align	3, 0x0
	.type	.L__profd_ldiv,@object
	.size	.L__profd_ldiv, 48
.L__profd_ldiv:
	.long	1948272233
	.long	1664700927
	.long	24
	.long	0
	.long	.L__profc_ldiv-.L__profd_ldiv
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_ldiv.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_llabs.data,.L__profc_llabs
	.p2align	3, 0x0
	.type	.L__profc_llabs,@object
	.size	.L__profc_llabs, 16
.L__profc_llabs:
	.space	16
	.cc_bottom .L__profc_llabs.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_llabs.data,.L__profd_llabs
	.p2align	3, 0x0
	.type	.L__profd_llabs,@object
	.size	.L__profd_llabs, 48
.L__profd_llabs:
	.long	3146878658
	.long	1789254398
	.long	99164
	.long	0
	.long	.L__profc_llabs-.L__profd_llabs
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_llabs.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_lldiv.data,.L__profc_lldiv
	.p2align	3, 0x0
	.type	.L__profc_lldiv,@object
	.size	.L__profc_lldiv, 8
.L__profc_lldiv:
	.space	8
	.cc_bottom .L__profc_lldiv.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_lldiv.data,.L__profd_lldiv
	.p2align	3, 0x0
	.type	.L__profd_lldiv,@object
	.size	.L__profd_lldiv, 48
.L__profd_lldiv:
	.long	1376157918
	.long	3054176300
	.long	24
	.long	0
	.long	.L__profc_lldiv-.L__profd_lldiv
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_lldiv.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wcschr.data,.L__profc_wcschr
	.p2align	3, 0x0
	.type	.L__profc_wcschr,@object
	.size	.L__profc_wcschr, 40
.L__profc_wcschr:
	.space	40
	.cc_bottom .L__profc_wcschr.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wcschr.data,.L__profd_wcschr
	.p2align	3, 0x0
	.type	.L__profd_wcschr,@object
	.size	.L__profd_wcschr, 48
.L__profd_wcschr:
	.long	3278405344
	.long	3764157494
	.long	243340813
	.long	1
	.long	.L__profc_wcschr-.L__profd_wcschr
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wcschr.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wcscmp.data,.L__profc_wcscmp
	.p2align	3, 0x0
	.type	.L__profc_wcscmp,@object
	.size	.L__profc_wcscmp, 56
.L__profc_wcscmp:
	.space	56
	.cc_bottom .L__profc_wcscmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wcscmp.data,.L__profd_wcscmp
	.p2align	3, 0x0
	.type	.L__profd_wcscmp,@object
	.size	.L__profd_wcscmp, 48
.L__profd_wcscmp:
	.long	3443918992
	.long	3431122395
	.long	3512784604
	.long	276711
	.long	.L__profc_wcscmp-.L__profd_wcscmp
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wcscmp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wcscpy.data,.L__profc_wcscpy
	.p2align	3, 0x0
	.type	.L__profc_wcscpy,@object
	.size	.L__profc_wcscpy, 16
.L__profc_wcscpy:
	.space	16
	.cc_bottom .L__profc_wcscpy.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wcscpy.data,.L__profd_wcscpy
	.p2align	3, 0x0
	.type	.L__profd_wcscpy,@object
	.size	.L__profd_wcscpy, 48
.L__profd_wcscpy:
	.long	4141681258
	.long	2343527946
	.long	9304
	.long	0
	.long	.L__profc_wcscpy-.L__profd_wcscpy
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wcscpy.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wcslen.data,.L__profc_wcslen
	.p2align	3, 0x0
	.type	.L__profc_wcslen,@object
	.size	.L__profc_wcslen, 16
.L__profc_wcslen:
	.space	16
	.cc_bottom .L__profc_wcslen.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wcslen.data,.L__profd_wcslen
	.p2align	3, 0x0
	.type	.L__profd_wcslen,@object
	.size	.L__profd_wcslen, 48
.L__profd_wcslen:
	.long	3359154486
	.long	928623828
	.long	17496
	.long	0
	.long	.L__profc_wcslen-.L__profd_wcslen
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wcslen.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wcsncmp.data,.L__profc_wcsncmp
	.p2align	3, 0x0
	.type	.L__profc_wcsncmp,@object
	.size	.L__profc_wcsncmp, 80
.L__profc_wcsncmp:
	.space	80
	.cc_bottom .L__profc_wcsncmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wcsncmp.data,.L__profd_wcsncmp
	.p2align	3, 0x0
	.type	.L__profd_wcsncmp,@object
	.size	.L__profd_wcsncmp, 48
.L__profd_wcsncmp:
	.long	3384850644
	.long	3031822229
	.long	4248202332
	.long	1562477617
	.long	.L__profc_wcsncmp-.L__profd_wcsncmp
	.long	0
	.long	0
	.long	0
	.long	10
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wcsncmp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wmemchr.data,.L__profc_wmemchr
	.p2align	3, 0x0
	.type	.L__profc_wmemchr,@object
	.size	.L__profc_wmemchr, 40
.L__profc_wmemchr:
	.space	40
	.cc_bottom .L__profc_wmemchr.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wmemchr.data,.L__profd_wmemchr
	.p2align	3, 0x0
	.type	.L__profd_wmemchr,@object
	.size	.L__profd_wmemchr, 48
.L__profd_wmemchr:
	.long	1528125668
	.long	4259829403
	.long	243340813
	.long	1
	.long	.L__profc_wmemchr-.L__profd_wmemchr
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wmemchr.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wmemcmp.data,.L__profc_wmemcmp
	.p2align	3, 0x0
	.type	.L__profc_wmemcmp,@object
	.size	.L__profc_wmemcmp, 48
.L__profc_wmemcmp:
	.space	48
	.cc_bottom .L__profc_wmemcmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wmemcmp.data,.L__profd_wmemcmp
	.p2align	3, 0x0
	.type	.L__profd_wmemcmp,@object
	.size	.L__profd_wmemcmp, 48
.L__profd_wmemcmp:
	.long	84788312
	.long	1254065907
	.long	1479857884
	.long	276980
	.long	.L__profc_wmemcmp-.L__profd_wmemcmp
	.long	0
	.long	0
	.long	0
	.long	6
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wmemcmp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wmemcpy.data,.L__profc_wmemcpy
	.p2align	3, 0x0
	.type	.L__profc_wmemcpy,@object
	.size	.L__profc_wmemcpy, 16
.L__profc_wmemcpy:
	.space	16
	.cc_bottom .L__profc_wmemcpy.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wmemcpy.data,.L__profd_wmemcpy
	.p2align	3, 0x0
	.type	.L__profd_wmemcpy,@object
	.size	.L__profd_wmemcpy, 48
.L__profd_wmemcpy:
	.long	2637215827
	.long	1705729035
	.long	9304
	.long	0
	.long	.L__profc_wmemcpy-.L__profd_wmemcpy
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wmemcpy.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wmemmove.data,.L__profc_wmemmove
	.p2align	3, 0x0
	.type	.L__profc_wmemmove,@object
	.size	.L__profc_wmemmove, 40
.L__profc_wmemmove:
	.space	40
	.cc_bottom .L__profc_wmemmove.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wmemmove.data,.L__profd_wmemmove
	.p2align	3, 0x0
	.type	.L__profd_wmemmove,@object
	.size	.L__profd_wmemmove, 48
.L__profd_wmemmove:
	.long	1772334517
	.long	3210114346
	.long	3244734756
	.long	3945673345
	.long	.L__profc_wmemmove-.L__profd_wmemmove
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wmemmove.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_wmemset.data,.L__profc_wmemset
	.p2align	3, 0x0
	.type	.L__profc_wmemset,@object
	.size	.L__profc_wmemset, 16
.L__profc_wmemset:
	.space	16
	.cc_bottom .L__profc_wmemset.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_wmemset.data,.L__profd_wmemset
	.p2align	3, 0x0
	.type	.L__profd_wmemset,@object
	.size	.L__profd_wmemset, 48
.L__profd_wmemset:
	.long	4064618063
	.long	2364535332
	.long	9304
	.long	0
	.long	.L__profc_wmemset-.L__profd_wmemset
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_wmemset.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_bcopy.data,.L__profc_bcopy
	.p2align	3, 0x0
	.type	.L__profc_bcopy,@object
	.size	.L__profc_bcopy, 40
.L__profc_bcopy:
	.space	40
	.cc_bottom .L__profc_bcopy.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_bcopy.data,.L__profd_bcopy
	.p2align	3, 0x0
	.type	.L__profd_bcopy,@object
	.size	.L__profd_bcopy, 48
.L__profd_bcopy:
	.long	1054661432
	.long	2337482974
	.long	975013403
	.long	1218661171
	.long	.L__profc_bcopy-.L__profd_bcopy
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_bcopy.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotl64.data,.L__profc_rotl64
	.p2align	3, 0x0
	.type	.L__profc_rotl64,@object
	.size	.L__profc_rotl64, 8
.L__profc_rotl64:
	.space	8
	.cc_bottom .L__profc_rotl64.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotl64.data,.L__profd_rotl64
	.p2align	3, 0x0
	.type	.L__profd_rotl64,@object
	.size	.L__profd_rotl64, 48
.L__profd_rotl64:
	.long	2229826992
	.long	1097718862
	.long	24
	.long	0
	.long	.L__profc_rotl64-.L__profd_rotl64
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotl64.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotr64.data,.L__profc_rotr64
	.p2align	3, 0x0
	.type	.L__profc_rotr64,@object
	.size	.L__profc_rotr64, 8
.L__profc_rotr64:
	.space	8
	.cc_bottom .L__profc_rotr64.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotr64.data,.L__profd_rotr64
	.p2align	3, 0x0
	.type	.L__profd_rotr64,@object
	.size	.L__profd_rotr64, 48
.L__profd_rotr64:
	.long	2326512589
	.long	2332753790
	.long	24
	.long	0
	.long	.L__profc_rotr64-.L__profd_rotr64
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotr64.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotl32.data,.L__profc_rotl32
	.p2align	3, 0x0
	.type	.L__profc_rotl32,@object
	.size	.L__profc_rotl32, 8
.L__profc_rotl32:
	.space	8
	.cc_bottom .L__profc_rotl32.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotl32.data,.L__profd_rotl32
	.p2align	3, 0x0
	.type	.L__profd_rotl32,@object
	.size	.L__profd_rotl32, 48
.L__profd_rotl32:
	.long	3626627460
	.long	1494238334
	.long	24
	.long	0
	.long	.L__profc_rotl32-.L__profd_rotl32
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotl32.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotr32.data,.L__profc_rotr32
	.p2align	3, 0x0
	.type	.L__profc_rotr32,@object
	.size	.L__profc_rotr32, 8
.L__profc_rotr32:
	.space	8
	.cc_bottom .L__profc_rotr32.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotr32.data,.L__profd_rotr32
	.p2align	3, 0x0
	.type	.L__profd_rotr32,@object
	.size	.L__profd_rotr32, 48
.L__profd_rotr32:
	.long	3418479684
	.long	2975071777
	.long	24
	.long	0
	.long	.L__profc_rotr32-.L__profd_rotr32
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotr32.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotl_sz.data,.L__profc_rotl_sz
	.p2align	3, 0x0
	.type	.L__profc_rotl_sz,@object
	.size	.L__profc_rotl_sz, 8
.L__profc_rotl_sz:
	.space	8
	.cc_bottom .L__profc_rotl_sz.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotl_sz.data,.L__profd_rotl_sz
	.p2align	3, 0x0
	.type	.L__profd_rotl_sz,@object
	.size	.L__profd_rotl_sz, 48
.L__profd_rotl_sz:
	.long	3086541338
	.long	3436608323
	.long	24
	.long	0
	.long	.L__profc_rotl_sz-.L__profd_rotl_sz
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotl_sz.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotr_sz.data,.L__profc_rotr_sz
	.p2align	3, 0x0
	.type	.L__profc_rotr_sz,@object
	.size	.L__profc_rotr_sz, 8
.L__profc_rotr_sz:
	.space	8
	.cc_bottom .L__profc_rotr_sz.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotr_sz.data,.L__profd_rotr_sz
	.p2align	3, 0x0
	.type	.L__profd_rotr_sz,@object
	.size	.L__profd_rotr_sz, 48
.L__profd_rotr_sz:
	.long	2553665156
	.long	795232994
	.long	24
	.long	0
	.long	.L__profc_rotr_sz-.L__profd_rotr_sz
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotr_sz.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotl16.data,.L__profc_rotl16
	.p2align	3, 0x0
	.type	.L__profc_rotl16,@object
	.size	.L__profc_rotl16, 8
.L__profc_rotl16:
	.space	8
	.cc_bottom .L__profc_rotl16.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotl16.data,.L__profd_rotl16
	.p2align	3, 0x0
	.type	.L__profd_rotl16,@object
	.size	.L__profd_rotl16, 48
.L__profd_rotl16:
	.long	244555557
	.long	1705989003
	.long	24
	.long	0
	.long	.L__profc_rotl16-.L__profd_rotl16
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotl16.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotr16.data,.L__profc_rotr16
	.p2align	3, 0x0
	.type	.L__profc_rotr16,@object
	.size	.L__profc_rotr16, 8
.L__profc_rotr16:
	.space	8
	.cc_bottom .L__profc_rotr16.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotr16.data,.L__profd_rotr16
	.p2align	3, 0x0
	.type	.L__profd_rotr16,@object
	.size	.L__profd_rotr16, 48
.L__profd_rotr16:
	.long	3877440124
	.long	1228126639
	.long	24
	.long	0
	.long	.L__profc_rotr16-.L__profd_rotr16
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotr16.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotl8.data,.L__profc_rotl8
	.p2align	3, 0x0
	.type	.L__profc_rotl8,@object
	.size	.L__profc_rotl8, 8
.L__profc_rotl8:
	.space	8
	.cc_bottom .L__profc_rotl8.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotl8.data,.L__profd_rotl8
	.p2align	3, 0x0
	.type	.L__profd_rotl8,@object
	.size	.L__profd_rotl8, 48
.L__profd_rotl8:
	.long	655336000
	.long	1026416019
	.long	24
	.long	0
	.long	.L__profc_rotl8-.L__profd_rotl8
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotl8.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_rotr8.data,.L__profc_rotr8
	.p2align	3, 0x0
	.type	.L__profc_rotr8,@object
	.size	.L__profc_rotr8, 8
.L__profc_rotr8:
	.space	8
	.cc_bottom .L__profc_rotr8.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_rotr8.data,.L__profd_rotr8
	.p2align	3, 0x0
	.type	.L__profd_rotr8,@object
	.size	.L__profd_rotr8, 48
.L__profd_rotr8:
	.long	1493665568
	.long	2773232362
	.long	24
	.long	0
	.long	.L__profc_rotr8-.L__profd_rotr8
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_rotr8.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_bswap_16.data,.L__profc_bswap_16
	.p2align	3, 0x0
	.type	.L__profc_bswap_16,@object
	.size	.L__profc_bswap_16, 8
.L__profc_bswap_16:
	.space	8
	.cc_bottom .L__profc_bswap_16.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_bswap_16.data,.L__profd_bswap_16
	.p2align	3, 0x0
	.type	.L__profd_bswap_16,@object
	.size	.L__profd_bswap_16, 48
.L__profd_bswap_16:
	.long	1268401773
	.long	2229566688
	.long	24
	.long	0
	.long	.L__profc_bswap_16-.L__profd_bswap_16
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_bswap_16.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_bswap_32.data,.L__profc_bswap_32
	.p2align	3, 0x0
	.type	.L__profc_bswap_32,@object
	.size	.L__profc_bswap_32, 8
.L__profc_bswap_32:
	.space	8
	.cc_bottom .L__profc_bswap_32.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_bswap_32.data,.L__profd_bswap_32
	.p2align	3, 0x0
	.type	.L__profd_bswap_32,@object
	.size	.L__profd_bswap_32, 48
.L__profd_bswap_32:
	.long	452808988
	.long	1700789097
	.long	24
	.long	0
	.long	.L__profc_bswap_32-.L__profd_bswap_32
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_bswap_32.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_bswap_64.data,.L__profc_bswap_64
	.p2align	3, 0x0
	.type	.L__profc_bswap_64,@object
	.size	.L__profc_bswap_64, 8
.L__profc_bswap_64:
	.space	8
	.cc_bottom .L__profc_bswap_64.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_bswap_64.data,.L__profd_bswap_64
	.p2align	3, 0x0
	.type	.L__profd_bswap_64,@object
	.size	.L__profd_bswap_64, 48
.L__profd_bswap_64:
	.long	475245398
	.long	669121836
	.long	24
	.long	0
	.long	.L__profc_bswap_64-.L__profd_bswap_64
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_bswap_64.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_ffs.data,.L__profc_ffs
	.p2align	3, 0x0
	.type	.L__profc_ffs,@object
	.size	.L__profc_ffs, 24
.L__profc_ffs:
	.space	24
	.cc_bottom .L__profc_ffs.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_ffs.data,.L__profd_ffs
	.p2align	3, 0x0
	.type	.L__profd_ffs,@object
	.size	.L__profd_ffs, 48
.L__profd_ffs:
	.long	1440366139
	.long	2147203945
	.long	2455835736
	.long	4530
	.long	.L__profc_ffs-.L__profd_ffs
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_ffs.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_libiberty_ffs.data,.L__profc_libiberty_ffs
	.p2align	3, 0x0
	.type	.L__profc_libiberty_ffs,@object
	.size	.L__profc_libiberty_ffs, 24
.L__profc_libiberty_ffs:
	.space	24
	.cc_bottom .L__profc_libiberty_ffs.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_libiberty_ffs.data,.L__profd_libiberty_ffs
	.p2align	3, 0x0
	.type	.L__profd_libiberty_ffs,@object
	.size	.L__profd_libiberty_ffs, 48
.L__profd_libiberty_ffs:
	.long	2840574905
	.long	15184296
	.long	286368856
	.long	687398
	.long	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_libiberty_ffs.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_gl_isinff.data,.L__profc_gl_isinff
	.p2align	3, 0x0
	.type	.L__profc_gl_isinff,@object
	.size	.L__profc_gl_isinff, 24
.L__profc_gl_isinff:
	.space	24
	.cc_bottom .L__profc_gl_isinff.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_gl_isinff.data,.L__profd_gl_isinff
	.p2align	3, 0x0
	.type	.L__profd_gl_isinff,@object
	.size	.L__profd_gl_isinff, 48
.L__profd_gl_isinff:
	.long	3010385274
	.long	1521550720
	.long	6354652
	.long	0
	.long	.L__profc_gl_isinff-.L__profd_gl_isinff
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_gl_isinff.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_gl_isinfd.data,.L__profc_gl_isinfd
	.p2align	3, 0x0
	.type	.L__profc_gl_isinfd,@object
	.size	.L__profc_gl_isinfd, 24
.L__profc_gl_isinfd:
	.space	24
	.cc_bottom .L__profc_gl_isinfd.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_gl_isinfd.data,.L__profd_gl_isinfd
	.p2align	3, 0x0
	.type	.L__profd_gl_isinfd,@object
	.size	.L__profd_gl_isinfd, 48
.L__profd_gl_isinfd:
	.long	444377658
	.long	2160863254
	.long	6354652
	.long	0
	.long	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_gl_isinfd.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_gl_isinfl.data,.L__profc_gl_isinfl
	.p2align	3, 0x0
	.type	.L__profc_gl_isinfl,@object
	.size	.L__profc_gl_isinfl, 24
.L__profc_gl_isinfl:
	.space	24
	.cc_bottom .L__profc_gl_isinfl.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_gl_isinfl.data,.L__profd_gl_isinfl
	.p2align	3, 0x0
	.type	.L__profd_gl_isinfl,@object
	.size	.L__profd_gl_isinfl, 48
.L__profd_gl_isinfl:
	.long	2943121403
	.long	1101558978
	.long	6354652
	.long	0
	.long	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_gl_isinfl.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc__Qp_itoq.data,.L__profc__Qp_itoq
	.p2align	3, 0x0
	.type	.L__profc__Qp_itoq,@object
	.size	.L__profc__Qp_itoq, 8
.L__profc__Qp_itoq:
	.space	8
	.cc_bottom .L__profc__Qp_itoq.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd__Qp_itoq.data,.L__profd__Qp_itoq
	.p2align	3, 0x0
	.type	.L__profd__Qp_itoq,@object
	.size	.L__profd__Qp_itoq, 48
.L__profd__Qp_itoq:
	.long	1257874239
	.long	3396677336
	.long	0
	.long	0
	.long	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd__Qp_itoq.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_ldexpf.data,.L__profc_ldexpf
	.p2align	3, 0x0
	.type	.L__profc_ldexpf,@object
	.size	.L__profc_ldexpf, 64
.L__profc_ldexpf:
	.space	64
	.cc_bottom .L__profc_ldexpf.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_ldexpf.data,.L__profd_ldexpf
	.p2align	3, 0x0
	.type	.L__profd_ldexpf,@object
	.size	.L__profd_ldexpf, 48
.L__profd_ldexpf:
	.long	539537125
	.long	3698773492
	.long	14241369
	.long	3818043334
	.long	.L__profc_ldexpf-.L__profd_ldexpf
	.long	0
	.long	0
	.long	0
	.long	8
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_ldexpf.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_ldexp.data,.L__profc_ldexp
	.p2align	3, 0x0
	.type	.L__profc_ldexp,@object
	.size	.L__profc_ldexp, 64
.L__profc_ldexp:
	.space	64
	.cc_bottom .L__profc_ldexp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_ldexp.data,.L__profd_ldexp
	.p2align	3, 0x0
	.type	.L__profd_ldexp,@object
	.size	.L__profd_ldexp, 48
.L__profd_ldexp:
	.long	3111827691
	.long	4238960103
	.long	14241369
	.long	3818043334
	.long	.L__profc_ldexp-.L__profd_ldexp
	.long	0
	.long	0
	.long	0
	.long	8
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_ldexp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_ldexpl.data,.L__profc_ldexpl
	.p2align	3, 0x0
	.type	.L__profc_ldexpl,@object
	.size	.L__profc_ldexpl, 64
.L__profc_ldexpl:
	.space	64
	.cc_bottom .L__profc_ldexpl.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_ldexpl.data,.L__profd_ldexpl
	.p2align	3, 0x0
	.type	.L__profd_ldexpl,@object
	.size	.L__profd_ldexpl, 48
.L__profd_ldexpl:
	.long	178812135
	.long	3108168284
	.long	14241369
	.long	3818043334
	.long	.L__profc_ldexpl-.L__profd_ldexpl
	.long	0
	.long	0
	.long	0
	.long	8
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_ldexpl.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memxor.data,.L__profc_memxor
	.p2align	3, 0x0
	.type	.L__profc_memxor,@object
	.size	.L__profc_memxor, 16
.L__profc_memxor:
	.space	16
	.cc_bottom .L__profc_memxor.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memxor.data,.L__profd_memxor
	.p2align	3, 0x0
	.type	.L__profd_memxor,@object
	.size	.L__profd_memxor, 48
.L__profd_memxor:
	.long	2128235242
	.long	2346634561
	.long	1164376
	.long	0
	.long	.L__profc_memxor-.L__profd_memxor
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memxor.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strncat.data,.L__profc_strncat
	.p2align	3, 0x0
	.type	.L__profc_strncat,@object
	.size	.L__profc_strncat, 40
.L__profc_strncat:
	.space	40
	.cc_bottom .L__profc_strncat.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strncat.data,.L__profd_strncat
	.p2align	3, 0x0
	.type	.L__profd_strncat,@object
	.size	.L__profd_strncat, 48
.L__profd_strncat:
	.long	2636207119
	.long	3460855252
	.long	1249715288
	.long	17723908
	.long	.L__profc_strncat-.L__profd_strncat
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strncat.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strnlen.data,.L__profc_strnlen
	.p2align	3, 0x0
	.type	.L__profc_strnlen,@object
	.size	.L__profc_strnlen, 32
.L__profc_strnlen:
	.space	32
	.cc_bottom .L__profc_strnlen.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strnlen.data,.L__profd_strnlen
	.p2align	3, 0x0
	.type	.L__profd_strnlen,@object
	.size	.L__profd_strnlen, 48
.L__profd_strnlen:
	.long	3690601605
	.long	120510996
	.long	242054232
	.long	1
	.long	.L__profc_strnlen-.L__profd_strnlen
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strnlen.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strpbrk.data,.L__profc_strpbrk
	.p2align	3, 0x0
	.type	.L__profc_strpbrk,@object
	.size	.L__profc_strpbrk, 32
.L__profc_strpbrk:
	.space	32
	.cc_bottom .L__profc_strpbrk.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strpbrk.data,.L__profd_strpbrk
	.p2align	3, 0x0
	.type	.L__profd_strpbrk,@object
	.size	.L__profd_strpbrk, 48
.L__profd_strpbrk:
	.long	1100202522
	.long	2696101869
	.long	84945426
	.long	3260081081
	.long	.L__profc_strpbrk-.L__profd_strpbrk
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strpbrk.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strrchr.data,.L__profc_strrchr
	.p2align	3, 0x0
	.type	.L__profc_strrchr,@object
	.size	.L__profc_strrchr, 24
.L__profc_strrchr:
	.space	24
	.cc_bottom .L__profc_strrchr.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strrchr.data,.L__profd_strrchr
	.p2align	3, 0x0
	.type	.L__profd_strrchr,@object
	.size	.L__profd_strrchr, 48
.L__profd_strrchr:
	.long	1003970063
	.long	1235827273
	.long	2672366680
	.long	50
	.long	.L__profc_strrchr-.L__profd_strrchr
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strrchr.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_strstr.data,.L__profc_strstr
	.p2align	3, 0x0
	.type	.L__profc_strstr,@object
	.size	.L__profc_strstr, 32
.L__profc_strstr:
	.space	32
	.cc_bottom .L__profc_strstr.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_strstr.data,.L__profd_strstr
	.p2align	3, 0x0
	.type	.L__profd_strstr,@object
	.size	.L__profd_strstr, 48
.L__profd_strstr:
	.long	1946130763
	.long	829008040
	.long	4193384452
	.long	2479291566
	.long	.L__profc_strstr-.L__profd_strstr
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_strstr.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_copysign.data,.L__profc_copysign
	.p2align	3, 0x0
	.type	.L__profc_copysign,@object
	.size	.L__profc_copysign, 56
.L__profc_copysign:
	.space	56
	.cc_bottom .L__profc_copysign.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_copysign.data,.L__profd_copysign
	.p2align	3, 0x0
	.type	.L__profd_copysign,@object
	.size	.L__profd_copysign, 48
.L__profd_copysign:
	.long	3933621461
	.long	2181655879
	.long	1176019055
	.long	978117507
	.long	.L__profc_copysign-.L__profd_copysign
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_copysign.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_memmem.data,.L__profc_memmem
	.p2align	3, 0x0
	.type	.L__profc_memmem,@object
	.size	.L__profc_memmem, 56
.L__profc_memmem:
	.space	56
	.cc_bottom .L__profc_memmem.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_memmem.data,.L__profd_memmem
	.p2align	3, 0x0
	.type	.L__profd_memmem,@object
	.size	.L__profd_memmem, 48
.L__profd_memmem:
	.long	1482351504
	.long	2552121931
	.long	2121957956
	.long	1282446034
	.long	.L__profc_memmem-.L__profd_memmem
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_memmem.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_mempcpy.data,.L__profc_mempcpy
	.p2align	3, 0x0
	.type	.L__profc_mempcpy,@object
	.size	.L__profc_mempcpy, 8
.L__profc_mempcpy:
	.space	8
	.cc_bottom .L__profc_mempcpy.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_mempcpy.data,.L__profd_mempcpy
	.p2align	3, 0x0
	.type	.L__profd_mempcpy,@object
	.size	.L__profd_mempcpy, 48
.L__profd_mempcpy:
	.long	252779458
	.long	4126652162
	.long	24
	.long	0
	.long	.L__profc_mempcpy-.L__profd_mempcpy
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_mempcpy.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_frexp.data,.L__profc_frexp
	.p2align	3, 0x0
	.type	.L__profc_frexp,@object
	.size	.L__profc_frexp, 72
.L__profc_frexp:
	.space	72
	.cc_bottom .L__profc_frexp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_frexp.data,.L__profd_frexp
	.p2align	3, 0x0
	.type	.L__profd_frexp,@object
	.size	.L__profd_frexp, 48
.L__profd_frexp:
	.long	471787407
	.long	3597134382
	.long	1008144312
	.long	3742278005
	.long	.L__profc_frexp-.L__profd_frexp
	.long	0
	.long	0
	.long	0
	.long	9
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_frexp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___muldi3.data,.L__profc___muldi3
	.p2align	3, 0x0
	.type	.L__profc___muldi3,@object
	.size	.L__profc___muldi3, 24
.L__profc___muldi3:
	.space	24
	.cc_bottom .L__profc___muldi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___muldi3.data,.L__profd___muldi3
	.p2align	3, 0x0
	.type	.L__profd___muldi3,@object
	.size	.L__profd___muldi3, 48
.L__profd___muldi3:
	.long	2949618840
	.long	928358956
	.long	2320045144
	.long	0
	.long	.L__profc___muldi3-.L__profd___muldi3
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___muldi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc_udivmodsi4.data,.L__profc_udivmodsi4
	.p2align	3, 0x0
	.type	.L__profc_udivmodsi4,@object
	.size	.L__profc_udivmodsi4, 72
.L__profc_udivmodsi4:
	.space	72
	.cc_bottom .L__profc_udivmodsi4.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd_udivmodsi4.data,.L__profd_udivmodsi4
	.p2align	3, 0x0
	.type	.L__profd_udivmodsi4,@object
	.size	.L__profd_udivmodsi4, 48
.L__profd_udivmodsi4:
	.long	1024966285
	.long	1087512846
	.long	1651402066
	.long	196214968
	.long	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.long	0
	.long	0
	.long	0
	.long	9
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd_udivmodsi4.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___clrsbqi2.data,.L__profc___clrsbqi2
	.p2align	3, 0x0
	.type	.L__profc___clrsbqi2,@object
	.size	.L__profc___clrsbqi2, 24
.L__profc___clrsbqi2:
	.space	24
	.cc_bottom .L__profc___clrsbqi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___clrsbqi2.data,.L__profd___clrsbqi2
	.p2align	3, 0x0
	.type	.L__profd___clrsbqi2,@object
	.size	.L__profd___clrsbqi2, 48
.L__profd___clrsbqi2:
	.long	921962090
	.long	2465351949
	.long	2672395352
	.long	43731218
	.long	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___clrsbqi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___clrsbdi2.data,.L__profc___clrsbdi2
	.p2align	3, 0x0
	.type	.L__profc___clrsbdi2,@object
	.size	.L__profc___clrsbdi2, 24
.L__profc___clrsbdi2:
	.space	24
	.cc_bottom .L__profc___clrsbdi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___clrsbdi2.data,.L__profd___clrsbdi2
	.p2align	3, 0x0
	.type	.L__profd___clrsbdi2,@object
	.size	.L__profd___clrsbdi2, 48
.L__profd___clrsbdi2:
	.long	1877498071
	.long	3937950378
	.long	2672395352
	.long	43731218
	.long	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___clrsbdi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mulsi3.data,.L__profc___mulsi3
	.p2align	3, 0x0
	.type	.L__profc___mulsi3,@object
	.size	.L__profc___mulsi3, 24
.L__profc___mulsi3:
	.space	24
	.cc_bottom .L__profc___mulsi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mulsi3.data,.L__profd___mulsi3
	.p2align	3, 0x0
	.type	.L__profd___mulsi3,@object
	.size	.L__profd___mulsi3, 48
.L__profd___mulsi3:
	.long	808585471
	.long	1193878735
	.long	2320045144
	.long	0
	.long	.L__profc___mulsi3-.L__profd___mulsi3
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mulsi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___cmovd.data,.L__profc___cmovd
	.p2align	3, 0x0
	.type	.L__profc___cmovd,@object
	.size	.L__profc___cmovd, 56
.L__profc___cmovd:
	.space	56
	.cc_bottom .L__profc___cmovd.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___cmovd.data,.L__profd___cmovd
	.p2align	3, 0x0
	.type	.L__profd___cmovd,@object
	.size	.L__profd___cmovd, 48
.L__profd___cmovd:
	.long	553465352
	.long	339561573
	.long	1219219495
	.long	2802264031
	.long	.L__profc___cmovd-.L__profd___cmovd
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___cmovd.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___cmovh.data,.L__profc___cmovh
	.p2align	3, 0x0
	.type	.L__profc___cmovh,@object
	.size	.L__profc___cmovh, 56
.L__profc___cmovh:
	.space	56
	.cc_bottom .L__profc___cmovh.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___cmovh.data,.L__profd___cmovh
	.p2align	3, 0x0
	.type	.L__profd___cmovh,@object
	.size	.L__profd___cmovh, 48
.L__profd___cmovh:
	.long	1199450638
	.long	4006189753
	.long	2696688615
	.long	728787248
	.long	.L__profc___cmovh-.L__profd___cmovh
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___cmovh.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___cmovw.data,.L__profc___cmovw
	.p2align	3, 0x0
	.type	.L__profc___cmovw,@object
	.size	.L__profc___cmovw, 56
.L__profc___cmovw:
	.space	56
	.cc_bottom .L__profc___cmovw.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___cmovw.data,.L__profd___cmovw
	.p2align	3, 0x0
	.type	.L__profd___cmovw,@object
	.size	.L__profd___cmovw, 48
.L__profd___cmovw:
	.long	1785275052
	.long	2750904109
	.long	1219219495
	.long	2802264031
	.long	.L__profc___cmovw-.L__profd___cmovw
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___cmovw.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___modi.data,.L__profc___modi
	.p2align	3, 0x0
	.type	.L__profc___modi,@object
	.size	.L__profc___modi, 8
.L__profc___modi:
	.space	8
	.cc_bottom .L__profc___modi.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___modi.data,.L__profd___modi
	.p2align	3, 0x0
	.type	.L__profd___modi,@object
	.size	.L__profd___modi, 48
.L__profd___modi:
	.long	3464656561
	.long	961659825
	.long	24
	.long	0
	.long	.L__profc___modi-.L__profd___modi
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___modi.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___uitod.data,.L__profc___uitod
	.p2align	3, 0x0
	.type	.L__profc___uitod,@object
	.size	.L__profc___uitod, 8
.L__profc___uitod:
	.space	8
	.cc_bottom .L__profc___uitod.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___uitod.data,.L__profd___uitod
	.p2align	3, 0x0
	.type	.L__profd___uitod,@object
	.size	.L__profd___uitod, 48
.L__profd___uitod:
	.long	2493213220
	.long	3411801264
	.long	24
	.long	0
	.long	.L__profc___uitod-.L__profd___uitod
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___uitod.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___uitof.data,.L__profc___uitof
	.p2align	3, 0x0
	.type	.L__profc___uitof,@object
	.size	.L__profc___uitof, 8
.L__profc___uitof:
	.space	8
	.cc_bottom .L__profc___uitof.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___uitof.data,.L__profd___uitof
	.p2align	3, 0x0
	.type	.L__profd___uitof,@object
	.size	.L__profd___uitof, 48
.L__profd___uitof:
	.long	3986234038
	.long	624942023
	.long	24
	.long	0
	.long	.L__profc___uitof-.L__profd___uitof
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___uitof.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___ulltod.data,.L__profc___ulltod
	.p2align	3, 0x0
	.type	.L__profc___ulltod,@object
	.size	.L__profc___ulltod, 8
.L__profc___ulltod:
	.space	8
	.cc_bottom .L__profc___ulltod.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___ulltod.data,.L__profd___ulltod
	.p2align	3, 0x0
	.type	.L__profd___ulltod,@object
	.size	.L__profd___ulltod, 48
.L__profd___ulltod:
	.long	4219734726
	.long	930223040
	.long	24
	.long	0
	.long	.L__profc___ulltod-.L__profd___ulltod
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___ulltod.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___ulltof.data,.L__profc___ulltof
	.p2align	3, 0x0
	.type	.L__profc___ulltof,@object
	.size	.L__profc___ulltof, 8
.L__profc___ulltof:
	.space	8
	.cc_bottom .L__profc___ulltof.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___ulltof.data,.L__profd___ulltof
	.p2align	3, 0x0
	.type	.L__profd___ulltof,@object
	.size	.L__profd___ulltof, 48
.L__profd___ulltof:
	.long	2547710861
	.long	3851062910
	.long	24
	.long	0
	.long	.L__profc___ulltof-.L__profd___ulltof
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___ulltof.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___umodi.data,.L__profc___umodi
	.p2align	3, 0x0
	.type	.L__profc___umodi,@object
	.size	.L__profc___umodi, 8
.L__profc___umodi:
	.space	8
	.cc_bottom .L__profc___umodi.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___umodi.data,.L__profd___umodi
	.p2align	3, 0x0
	.type	.L__profd___umodi,@object
	.size	.L__profd___umodi, 48
.L__profd___umodi:
	.long	1073703930
	.long	1432856457
	.long	24
	.long	0
	.long	.L__profc___umodi-.L__profd___umodi
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___umodi.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___clzhi2.data,.L__profc___clzhi2
	.p2align	3, 0x0
	.type	.L__profc___clzhi2,@object
	.size	.L__profc___clzhi2, 24
.L__profc___clzhi2:
	.space	24
	.cc_bottom .L__profc___clzhi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___clzhi2.data,.L__profd___clzhi2
	.p2align	3, 0x0
	.type	.L__profd___clzhi2,@object
	.size	.L__profd___clzhi2, 48
.L__profd___clzhi2:
	.long	1526022046
	.long	2147872176
	.long	2455311448
	.long	4530
	.long	.L__profc___clzhi2-.L__profd___clzhi2
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___clzhi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___ctzhi2.data,.L__profc___ctzhi2
	.p2align	3, 0x0
	.type	.L__profc___ctzhi2,@object
	.size	.L__profc___ctzhi2, 24
.L__profc___ctzhi2:
	.space	24
	.cc_bottom .L__profc___ctzhi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___ctzhi2.data,.L__profd___ctzhi2
	.p2align	3, 0x0
	.type	.L__profd___ctzhi2,@object
	.size	.L__profd___ctzhi2, 48
.L__profd___ctzhi2:
	.long	3617218592
	.long	3929608753
	.long	2455311448
	.long	4530
	.long	.L__profc___ctzhi2-.L__profd___ctzhi2
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___ctzhi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___fixunssfsi.data,.L__profc___fixunssfsi
	.p2align	3, 0x0
	.type	.L__profc___fixunssfsi,@object
	.size	.L__profc___fixunssfsi, 16
.L__profc___fixunssfsi:
	.space	16
	.cc_bottom .L__profc___fixunssfsi.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___fixunssfsi.data,.L__profd___fixunssfsi
	.p2align	3, 0x0
	.type	.L__profd___fixunssfsi,@object
	.size	.L__profd___fixunssfsi, 48
.L__profd___fixunssfsi:
	.long	651704643
	.long	2478778994
	.long	2655618136
	.long	2
	.long	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.long	0
	.long	0
	.long	0
	.long	2
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___fixunssfsi.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___parityhi2.data,.L__profc___parityhi2
	.p2align	3, 0x0
	.type	.L__profc___parityhi2,@object
	.size	.L__profc___parityhi2, 24
.L__profc___parityhi2:
	.space	24
	.cc_bottom .L__profc___parityhi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___parityhi2.data,.L__profd___parityhi2
	.p2align	3, 0x0
	.type	.L__profd___parityhi2,@object
	.size	.L__profd___parityhi2, 48
.L__profd___parityhi2:
	.long	1595267545
	.long	280303229
	.long	3393786968
	.long	70
	.long	.L__profc___parityhi2-.L__profd___parityhi2
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___parityhi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___popcounthi2.data,.L__profc___popcounthi2
	.p2align	3, 0x0
	.type	.L__profc___popcounthi2,@object
	.size	.L__profc___popcounthi2, 24
.L__profc___popcounthi2:
	.space	24
	.cc_bottom .L__profc___popcounthi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___popcounthi2.data,.L__profd___popcounthi2
	.p2align	3, 0x0
	.type	.L__profd___popcounthi2,@object
	.size	.L__profd___popcounthi2, 48
.L__profd___popcounthi2:
	.long	3021313414
	.long	918102351
	.long	3393786968
	.long	70
	.long	.L__profc___popcounthi2-.L__profd___popcounthi2
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___popcounthi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mulsi3_iq2000.data,.L__profc___mulsi3_iq2000
	.p2align	3, 0x0
	.type	.L__profc___mulsi3_iq2000,@object
	.size	.L__profc___mulsi3_iq2000, 24
.L__profc___mulsi3_iq2000:
	.space	24
	.cc_bottom .L__profc___mulsi3_iq2000.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mulsi3_iq2000.data,.L__profd___mulsi3_iq2000
	.p2align	3, 0x0
	.type	.L__profd___mulsi3_iq2000,@object
	.size	.L__profd___mulsi3_iq2000, 48
.L__profd___mulsi3_iq2000:
	.long	2418545684
	.long	3369150385
	.long	172561496
	.long	40
	.long	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mulsi3_iq2000.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mulsi3_lm32.data,.L__profc___mulsi3_lm32
	.p2align	3, 0x0
	.type	.L__profc___mulsi3_lm32,@object
	.size	.L__profc___mulsi3_lm32, 32
.L__profc___mulsi3_lm32:
	.space	32
	.cc_bottom .L__profc___mulsi3_lm32.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mulsi3_lm32.data,.L__profd___mulsi3_lm32
	.p2align	3, 0x0
	.type	.L__profd___mulsi3_lm32,@object
	.size	.L__profd___mulsi3_lm32, 48
.L__profd___mulsi3_lm32:
	.long	3669051597
	.long	646256707
	.long	903869171
	.long	2848929480
	.long	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mulsi3_lm32.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___udivmodsi4.data,.L__profc___udivmodsi4
	.p2align	3, 0x0
	.type	.L__profc___udivmodsi4,@object
	.size	.L__profc___udivmodsi4, 72
.L__profc___udivmodsi4:
	.space	72
	.cc_bottom .L__profc___udivmodsi4.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___udivmodsi4.data,.L__profd___udivmodsi4
	.p2align	3, 0x0
	.type	.L__profd___udivmodsi4,@object
	.size	.L__profd___udivmodsi4, 48
.L__profd___udivmodsi4:
	.long	3214998610
	.long	2730254797
	.long	1651402066
	.long	196214968
	.long	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.long	0
	.long	0
	.long	0
	.long	9
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___udivmodsi4.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mspabi_cmpf.data,.L__profc___mspabi_cmpf
	.p2align	3, 0x0
	.type	.L__profc___mspabi_cmpf,@object
	.size	.L__profc___mspabi_cmpf, 24
.L__profc___mspabi_cmpf:
	.space	24
	.cc_bottom .L__profc___mspabi_cmpf.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mspabi_cmpf.data,.L__profd___mspabi_cmpf
	.p2align	3, 0x0
	.type	.L__profd___mspabi_cmpf,@object
	.size	.L__profd___mspabi_cmpf, 48
.L__profd___mspabi_cmpf:
	.long	4012873975
	.long	1490062971
	.long	3971983684
	.long	314930112
	.long	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mspabi_cmpf.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mspabi_cmpd.data,.L__profc___mspabi_cmpd
	.p2align	3, 0x0
	.type	.L__profc___mspabi_cmpd,@object
	.size	.L__profc___mspabi_cmpd, 24
.L__profc___mspabi_cmpd:
	.space	24
	.cc_bottom .L__profc___mspabi_cmpd.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mspabi_cmpd.data,.L__profd___mspabi_cmpd
	.p2align	3, 0x0
	.type	.L__profd___mspabi_cmpd,@object
	.size	.L__profd___mspabi_cmpd, 48
.L__profd___mspabi_cmpd:
	.long	3823668329
	.long	2950287843
	.long	3971983684
	.long	314930112
	.long	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mspabi_cmpd.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mspabi_mpysll.data,.L__profc___mspabi_mpysll
	.p2align	3, 0x0
	.type	.L__profc___mspabi_mpysll,@object
	.size	.L__profc___mspabi_mpysll, 8
.L__profc___mspabi_mpysll:
	.space	8
	.cc_bottom .L__profc___mspabi_mpysll.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mspabi_mpysll.data,.L__profd___mspabi_mpysll
	.p2align	3, 0x0
	.type	.L__profd___mspabi_mpysll,@object
	.size	.L__profd___mspabi_mpysll, 48
.L__profd___mspabi_mpysll:
	.long	4195771941
	.long	4211327933
	.long	24
	.long	0
	.long	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mspabi_mpysll.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mspabi_mpyull.data,.L__profc___mspabi_mpyull
	.p2align	3, 0x0
	.type	.L__profc___mspabi_mpyull,@object
	.size	.L__profc___mspabi_mpyull, 8
.L__profc___mspabi_mpyull:
	.space	8
	.cc_bottom .L__profc___mspabi_mpyull.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mspabi_mpyull.data,.L__profd___mspabi_mpyull
	.p2align	3, 0x0
	.type	.L__profd___mspabi_mpyull,@object
	.size	.L__profd___mspabi_mpyull, 48
.L__profd___mspabi_mpyull:
	.long	3324675637
	.long	1543627396
	.long	24
	.long	0
	.long	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mspabi_mpyull.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___mulhi3.data,.L__profc___mulhi3
	.p2align	3, 0x0
	.type	.L__profc___mulhi3,@object
	.size	.L__profc___mulhi3, 56
.L__profc___mulhi3:
	.space	56
	.cc_bottom .L__profc___mulhi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___mulhi3.data,.L__profd___mulhi3
	.p2align	3, 0x0
	.type	.L__profd___mulhi3,@object
	.size	.L__profd___mulhi3, 48
.L__profd___mulhi3:
	.long	1556531068
	.long	3207241182
	.long	2703778695
	.long	3043539050
	.long	.L__profc___mulhi3-.L__profd___mulhi3
	.long	0
	.long	0
	.long	0
	.long	7
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___mulhi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___divsi3.data,.L__profc___divsi3
	.p2align	3, 0x0
	.type	.L__profc___divsi3,@object
	.size	.L__profc___divsi3, 32
.L__profc___divsi3:
	.space	32
	.cc_bottom .L__profc___divsi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___divsi3.data,.L__profd___divsi3
	.p2align	3, 0x0
	.type	.L__profd___divsi3,@object
	.size	.L__profd___divsi3, 48
.L__profd___divsi3:
	.long	296414084
	.long	1311169815
	.long	1867459201
	.long	118877630
	.long	.L__profc___divsi3-.L__profd___divsi3
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___divsi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___modsi3.data,.L__profc___modsi3
	.p2align	3, 0x0
	.type	.L__profc___modsi3,@object
	.size	.L__profc___modsi3, 32
.L__profc___modsi3:
	.space	32
	.cc_bottom .L__profc___modsi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___modsi3.data,.L__profd___modsi3
	.p2align	3, 0x0
	.type	.L__profd___modsi3,@object
	.size	.L__profd___modsi3, 48
.L__profd___modsi3:
	.long	1312834626
	.long	2200493471
	.long	2245965411
	.long	493860953
	.long	.L__profc___modsi3-.L__profd___modsi3
	.long	0
	.long	0
	.long	0
	.long	4
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___modsi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___udivmodhi4.data,.L__profc___udivmodhi4
	.p2align	3, 0x0
	.type	.L__profc___udivmodhi4,@object
	.size	.L__profc___udivmodhi4, 72
.L__profc___udivmodhi4:
	.space	72
	.cc_bottom .L__profc___udivmodhi4.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___udivmodhi4.data,.L__profd___udivmodhi4
	.p2align	3, 0x0
	.type	.L__profd___udivmodhi4,@object
	.size	.L__profd___udivmodhi4, 48
.L__profd___udivmodhi4:
	.long	3037779362
	.long	521920397
	.long	1651402066
	.long	196214968
	.long	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.long	0
	.long	0
	.long	0
	.long	9
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___udivmodhi4.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___udivmodsi4_libgcc.data,.L__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
	.type	.L__profc___udivmodsi4_libgcc,@object
	.size	.L__profc___udivmodsi4_libgcc, 72
.L__profc___udivmodsi4_libgcc:
	.space	72
	.cc_bottom .L__profc___udivmodsi4_libgcc.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___udivmodsi4_libgcc.data,.L__profd___udivmodsi4_libgcc
	.p2align	3, 0x0
	.type	.L__profd___udivmodsi4_libgcc,@object
	.size	.L__profd___udivmodsi4_libgcc, 48
.L__profd___udivmodsi4_libgcc:
	.long	3532769019
	.long	3949398765
	.long	1651402066
	.long	196214968
	.long	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.long	0
	.long	0
	.long	0
	.long	9
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___udivmodsi4_libgcc.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___ashldi3.data,.L__profc___ashldi3
	.p2align	3, 0x0
	.type	.L__profc___ashldi3,@object
	.size	.L__profc___ashldi3, 24
.L__profc___ashldi3:
	.space	24
	.cc_bottom .L__profc___ashldi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___ashldi3.data,.L__profd___ashldi3
	.p2align	3, 0x0
	.type	.L__profd___ashldi3,@object
	.size	.L__profd___ashldi3, 48
.L__profd___ashldi3:
	.long	978704463
	.long	865946264
	.long	3529577560
	.long	43142311
	.long	.L__profc___ashldi3-.L__profd___ashldi3
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___ashldi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___ashrdi3.data,.L__profc___ashrdi3
	.p2align	3, 0x0
	.type	.L__profc___ashrdi3,@object
	.size	.L__profc___ashrdi3, 24
.L__profc___ashrdi3:
	.space	24
	.cc_bottom .L__profc___ashrdi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___ashrdi3.data,.L__profd___ashrdi3
	.p2align	3, 0x0
	.type	.L__profd___ashrdi3,@object
	.size	.L__profd___ashrdi3, 48
.L__profd___ashrdi3:
	.long	3990118094
	.long	3862899431
	.long	3529577560
	.long	43142311
	.long	.L__profc___ashrdi3-.L__profd___ashrdi3
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___ashrdi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___bswapdi2.data,.L__profc___bswapdi2
	.p2align	3, 0x0
	.type	.L__profc___bswapdi2,@object
	.size	.L__profc___bswapdi2, 8
.L__profc___bswapdi2:
	.space	8
	.cc_bottom .L__profc___bswapdi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___bswapdi2.data,.L__profd___bswapdi2
	.p2align	3, 0x0
	.type	.L__profd___bswapdi2,@object
	.size	.L__profd___bswapdi2, 48
.L__profd___bswapdi2:
	.long	2913318844
	.long	2130249687
	.long	24
	.long	0
	.long	.L__profc___bswapdi2-.L__profd___bswapdi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___bswapdi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___bswapsi2.data,.L__profc___bswapsi2
	.p2align	3, 0x0
	.type	.L__profc___bswapsi2,@object
	.size	.L__profc___bswapsi2, 8
.L__profc___bswapsi2:
	.space	8
	.cc_bottom .L__profc___bswapsi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___bswapsi2.data,.L__profd___bswapsi2
	.p2align	3, 0x0
	.type	.L__profd___bswapsi2,@object
	.size	.L__profd___bswapsi2, 48
.L__profd___bswapsi2:
	.long	4268972970
	.long	3509176482
	.long	24
	.long	0
	.long	.L__profc___bswapsi2-.L__profd___bswapsi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___bswapsi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___clzsi2.data,.L__profc___clzsi2
	.p2align	3, 0x0
	.type	.L__profc___clzsi2,@object
	.size	.L__profc___clzsi2, 8
.L__profc___clzsi2:
	.space	8
	.cc_bottom .L__profc___clzsi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___clzsi2.data,.L__profd___clzsi2
	.p2align	3, 0x0
	.type	.L__profd___clzsi2,@object
	.size	.L__profd___clzsi2, 48
.L__profd___clzsi2:
	.long	847417603
	.long	321930635
	.long	3749574175
	.long	7
	.long	.L__profc___clzsi2-.L__profd___clzsi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___clzsi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___cmpdi2.data,.L__profc___cmpdi2
	.p2align	3, 0x0
	.type	.L__profc___cmpdi2,@object
	.size	.L__profc___cmpdi2, 40
.L__profc___cmpdi2:
	.space	40
	.cc_bottom .L__profc___cmpdi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___cmpdi2.data,.L__profd___cmpdi2
	.p2align	3, 0x0
	.type	.L__profd___cmpdi2,@object
	.size	.L__profd___cmpdi2, 48
.L__profd___cmpdi2:
	.long	2900396552
	.long	3014481458
	.long	1422139388
	.long	2570470050
	.long	.L__profc___cmpdi2-.L__profd___cmpdi2
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___cmpdi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___aeabi_lcmp.data,.L__profc___aeabi_lcmp
	.p2align	3, 0x0
	.type	.L__profc___aeabi_lcmp,@object
	.size	.L__profc___aeabi_lcmp, 8
.L__profc___aeabi_lcmp:
	.space	8
	.cc_bottom .L__profc___aeabi_lcmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___aeabi_lcmp.data,.L__profd___aeabi_lcmp
	.p2align	3, 0x0
	.type	.L__profd___aeabi_lcmp,@object
	.size	.L__profd___aeabi_lcmp, 48
.L__profd___aeabi_lcmp:
	.long	1053938860
	.long	1645588168
	.long	24
	.long	0
	.long	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___aeabi_lcmp.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___ctzsi2.data,.L__profc___ctzsi2
	.p2align	3, 0x0
	.type	.L__profc___ctzsi2,@object
	.size	.L__profc___ctzsi2, 8
.L__profc___ctzsi2:
	.space	8
	.cc_bottom .L__profc___ctzsi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___ctzsi2.data,.L__profd___ctzsi2
	.p2align	3, 0x0
	.type	.L__profd___ctzsi2,@object
	.size	.L__profd___ctzsi2, 48
.L__profd___ctzsi2:
	.long	1006971543
	.long	3013996388
	.long	3749574175
	.long	7
	.long	.L__profc___ctzsi2-.L__profd___ctzsi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___ctzsi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___lshrdi3.data,.L__profc___lshrdi3
	.p2align	3, 0x0
	.type	.L__profc___lshrdi3,@object
	.size	.L__profc___lshrdi3, 24
.L__profc___lshrdi3:
	.space	24
	.cc_bottom .L__profc___lshrdi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___lshrdi3.data,.L__profd___lshrdi3
	.p2align	3, 0x0
	.type	.L__profd___lshrdi3,@object
	.size	.L__profd___lshrdi3, 48
.L__profd___lshrdi3:
	.long	471342677
	.long	2431163
	.long	3529577560
	.long	43142311
	.long	.L__profc___lshrdi3-.L__profd___lshrdi3
	.long	0
	.long	0
	.long	0
	.long	3
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___lshrdi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___muldsi3.data,.L__profc___muldsi3
	.p2align	3, 0x0
	.type	.L__profc___muldsi3,@object
	.size	.L__profc___muldsi3, 8
.L__profc___muldsi3:
	.space	8
	.cc_bottom .L__profc___muldsi3.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___muldsi3.data,.L__profd___muldsi3
	.p2align	3, 0x0
	.type	.L__profd___muldsi3,@object
	.size	.L__profd___muldsi3, 48
.L__profd___muldsi3:
	.long	2728610976
	.long	1107499528
	.long	24
	.long	0
	.long	.L__profc___muldsi3-.L__profd___muldsi3
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___muldsi3.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___muldi3_compiler_rt.data,.L__profc___muldi3_compiler_rt
	.p2align	3, 0x0
	.type	.L__profc___muldi3_compiler_rt,@object
	.size	.L__profc___muldi3_compiler_rt, 8
.L__profc___muldi3_compiler_rt:
	.space	8
	.cc_bottom .L__profc___muldi3_compiler_rt.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___muldi3_compiler_rt.data,.L__profd___muldi3_compiler_rt
	.p2align	3, 0x0
	.type	.L__profd___muldi3_compiler_rt,@object
	.size	.L__profd___muldi3_compiler_rt, 48
.L__profd___muldi3_compiler_rt:
	.long	3866746773
	.long	4123204027
	.long	24
	.long	0
	.long	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___muldi3_compiler_rt.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___negdi2.data,.L__profc___negdi2
	.p2align	3, 0x0
	.type	.L__profc___negdi2,@object
	.size	.L__profc___negdi2, 8
.L__profc___negdi2:
	.space	8
	.cc_bottom .L__profc___negdi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___negdi2.data,.L__profd___negdi2
	.p2align	3, 0x0
	.type	.L__profd___negdi2,@object
	.size	.L__profd___negdi2, 48
.L__profd___negdi2:
	.long	3064379771
	.long	3643878523
	.long	24
	.long	0
	.long	.L__profc___negdi2-.L__profd___negdi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___negdi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___paritydi2.data,.L__profc___paritydi2
	.p2align	3, 0x0
	.type	.L__profc___paritydi2,@object
	.size	.L__profc___paritydi2, 8
.L__profc___paritydi2:
	.space	8
	.cc_bottom .L__profc___paritydi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___paritydi2.data,.L__profd___paritydi2
	.p2align	3, 0x0
	.type	.L__profd___paritydi2,@object
	.size	.L__profd___paritydi2, 48
.L__profd___paritydi2:
	.long	1043989739
	.long	3106859620
	.long	24
	.long	0
	.long	.L__profc___paritydi2-.L__profd___paritydi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___paritydi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___paritysi2.data,.L__profc___paritysi2
	.p2align	3, 0x0
	.type	.L__profc___paritysi2,@object
	.size	.L__profc___paritysi2, 8
.L__profc___paritysi2:
	.space	8
	.cc_bottom .L__profc___paritysi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___paritysi2.data,.L__profd___paritysi2
	.p2align	3, 0x0
	.type	.L__profd___paritysi2,@object
	.size	.L__profd___paritysi2, 48
.L__profd___paritysi2:
	.long	2433766622
	.long	1978085542
	.long	24
	.long	0
	.long	.L__profc___paritysi2-.L__profd___paritysi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___paritysi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___popcountdi2.data,.L__profc___popcountdi2
	.p2align	3, 0x0
	.type	.L__profc___popcountdi2,@object
	.size	.L__profc___popcountdi2, 8
.L__profc___popcountdi2:
	.space	8
	.cc_bottom .L__profc___popcountdi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___popcountdi2.data,.L__profd___popcountdi2
	.p2align	3, 0x0
	.type	.L__profd___popcountdi2,@object
	.size	.L__profd___popcountdi2, 48
.L__profd___popcountdi2:
	.long	220067820
	.long	1011066257
	.long	24
	.long	0
	.long	.L__profc___popcountdi2-.L__profd___popcountdi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___popcountdi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___popcountsi2.data,.L__profc___popcountsi2
	.p2align	3, 0x0
	.type	.L__profc___popcountsi2,@object
	.size	.L__profc___popcountsi2, 8
.L__profc___popcountsi2:
	.space	8
	.cc_bottom .L__profc___popcountsi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___popcountsi2.data,.L__profd___popcountsi2
	.p2align	3, 0x0
	.type	.L__profd___popcountsi2,@object
	.size	.L__profd___popcountsi2, 48
.L__profd___popcountsi2:
	.long	1866676599
	.long	3794549947
	.long	24
	.long	0
	.long	.L__profc___popcountsi2-.L__profd___popcountsi2
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___popcountsi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___powidf2.data,.L__profc___powidf2
	.p2align	3, 0x0
	.type	.L__profc___powidf2,@object
	.size	.L__profc___powidf2, 40
.L__profc___powidf2:
	.space	40
	.cc_bottom .L__profc___powidf2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___powidf2.data,.L__profd___powidf2
	.p2align	3, 0x0
	.type	.L__profd___powidf2,@object
	.size	.L__profd___powidf2, 48
.L__profd___powidf2:
	.long	3451548981
	.long	3886922029
	.long	3026146526
	.long	3161352597
	.long	.L__profc___powidf2-.L__profd___powidf2
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___powidf2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___powisf2.data,.L__profc___powisf2
	.p2align	3, 0x0
	.type	.L__profc___powisf2,@object
	.size	.L__profc___powisf2, 40
.L__profc___powisf2:
	.space	40
	.cc_bottom .L__profc___powisf2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___powisf2.data,.L__profd___powisf2
	.p2align	3, 0x0
	.type	.L__profd___powisf2,@object
	.size	.L__profd___powisf2, 48
.L__profd___powisf2:
	.long	3233246232
	.long	3408497190
	.long	3026146526
	.long	3161352597
	.long	.L__profc___powisf2-.L__profd___powisf2
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___powisf2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___ucmpdi2.data,.L__profc___ucmpdi2
	.p2align	3, 0x0
	.type	.L__profc___ucmpdi2,@object
	.size	.L__profc___ucmpdi2, 40
.L__profc___ucmpdi2:
	.space	40
	.cc_bottom .L__profc___ucmpdi2.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___ucmpdi2.data,.L__profd___ucmpdi2
	.p2align	3, 0x0
	.type	.L__profd___ucmpdi2,@object
	.size	.L__profd___ucmpdi2, 48
.L__profd___ucmpdi2:
	.long	627836813
	.long	3818980130
	.long	1422139388
	.long	2570470050
	.long	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.long	0
	.long	0
	.long	0
	.long	5
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___ucmpdi2.data
	.section	__llvm_prf_cnts,"awd",@progbits
	.cc_top .L__profc___aeabi_ulcmp.data,.L__profc___aeabi_ulcmp
	.p2align	3, 0x0
	.type	.L__profc___aeabi_ulcmp,@object
	.size	.L__profc___aeabi_ulcmp, 8
.L__profc___aeabi_ulcmp:
	.space	8
	.cc_bottom .L__profc___aeabi_ulcmp.data
	.section	__llvm_prf_data,"awd",@progbits
	.cc_top .L__profd___aeabi_ulcmp.data,.L__profd___aeabi_ulcmp
	.p2align	3, 0x0
	.type	.L__profd___aeabi_ulcmp,@object
	.size	.L__profd___aeabi_ulcmp, 48
.L__profd___aeabi_ulcmp:
	.long	2182691887
	.long	104464263
	.long	24
	.long	0
	.long	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.long	0
	.long	0
	.long	0
	.long	1
	.space	6
	.space	2
	.long	0
	.cc_bottom .L__profd___aeabi_ulcmp.data
	.section	__llvm_prf_names,"ad",@progbits
	.cc_top .L__llvm_prf_nm.data,.L__llvm_prf_nm
	.type	.L__llvm_prf_nm,@object
	.size	.L__llvm_prf_nm, 554
.L__llvm_prf_nm:
	.ascii	"\225\n\246\004x\332]\223\tn\3430\fE\241\033e\222\242\3505\346\004\206\254%&J-\221\344*\355\351\207\244\344\244\031\300\340\373\244VRtp!\244/\247\202\013\306\344o\341V\004!\013F\260\314huM\325\2269Z\033\007\343\216S\th\021\001]dDq\273^\025T\215y\323\314j\000\210+\352\370I4\221\246\023-\\\241\021\257E\347\215\210\251\273B\314\005\"\307k\326\306\021\367\234%\336\217\205\375X\331\217\251\375>B-\215\303\274\205 \306+\037\364]\314\220H\026\242\030/\026\025\276\277iU\213\216V\211\201Xo\273S\305\005\006V\247)W\205\036hL\257U\351\226\200\r\212A\265\316\031\223KQ\026\276\024\320a<\233\311>\262\203\242\206\024\335M\345:2\250p\f*3\201\313I\220r\366\371B}>Q\237o\304\224\227\354\363\225V\223(\\R\243\214\030e\000/g\361\006p\251?\342N\342\237wq\007\360C\234\017J\246\353\274Pp\bZ;\004m\351=\335\036VX]i\337\013{W\\\240RA\375C\331\207B\265\374\315\013\264t\243\354\335=\373\201a\221\033\354\236\312h\035\335\204\263\225\362Z>\231G\243\321\2478\301\n\327\310\313\350cHc\372\302[.K\330\251\252\027\265SiC\262\025\336(f\260\324\365\006\347CZ\2214\263\322L\212Q\t\355\3446\331yB\262@\330\351\346v\3223\021g\200\205D\346L\203?\3338\245M\341\341\276\307Z}\345\341\254\013\264\3571\220S6i\217m\373u\225\005n\347\323\351\364\3641\\x\364%\227@\377\304\nt\307\354_<\373\364\002U\210\232\362\267\277\017\177\307M2\246\rG\352\262\355\345y\306&g<\017\\\350\225\257\306PL\327M\n+\252\f%\3750\212)\262\316\022\377L\021\346\240v|\r\344\316\225\332\214a|\354\303oV\037\212\0227)d@W\226\322(\030\335u\3543\n\370[\327\227b\332\027\357\030\353`\375\241\252\250\375\277\233\355|\265\177\337\f\323w"
	.cc_bottom .L__llvm_prf_nm.data
	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	".note.GNU-stack","",@progbits
