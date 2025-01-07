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
	bu .LBB0_8
.LBB0_8:
	ldw r0, sp[2]
	bf r0, .LBB0_11
	bu .LBB0_9
.LBB0_9:
	ldw r0, sp[0]
	add r1, r0, 1
	stw r1, sp[0]
	ldc r2, 0
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
	bu .LBB0_12
.LBB0_12:
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
	entsp 8
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	stw r3, sp[3]
	ldw r0, sp[6]
	stw r0, sp[2]
	ldw r0, sp[5]
	stw r0, sp[1]
	ldc r1, 0
	ldaw r0, sp[4]
	ld8u r0, r0[r1]
	stw r0, sp[4]
	bu .LBB1_1
.LBB1_1:
	ldw r0, sp[3]
	ldc r1, 0
	stw r1, sp[0]
	bf r0, .LBB1_3
	bu .LBB1_2
.LBB1_2:
	ldw r0, sp[1]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	st8 r0, r1[r2]
	ldw r1, sp[4]
	eq r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB1_3
.LBB1_3:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB1_6
	bu .LBB1_4
.LBB1_4:
	bu .LBB1_5
.LBB1_5:
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB1_1
.LBB1_6:
	ldw r0, sp[3]
	bf r0, .LBB1_8
	bu .LBB1_7
.LBB1_7:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[7]
	bu .LBB1_9
.LBB1_8:
	ldc r0, 0
	stw r0, sp[7]
	bu .LBB1_9
.LBB1_9:
	ldw r0, sp[7]
	retsp 8
	.cc_bottom memccpy.function
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy

	.globl	memchr
	.p2align	2
	.type	memchr,@function
	.cc_top memchr.function,memchr
memchr:
	entsp 6
	stw r0, sp[5]
	stw r1, sp[4]
	stw r2, sp[3]
	ldw r0, sp[5]
	stw r0, sp[2]
	ldc r1, 0
	ldaw r0, sp[4]
	ld8u r0, r0[r1]
	stw r0, sp[4]
	bu .LBB2_1
.LBB2_1:
	ldw r0, sp[3]
	ldc r1, 0
	stw r1, sp[1]
	bf r0, .LBB2_3
	bu .LBB2_2
.LBB2_2:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r1, sp[4]
	eq r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[1]
	bu .LBB2_3
.LBB2_3:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB2_6
	bu .LBB2_4
.LBB2_4:
	bu .LBB2_5
.LBB2_5:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	bu .LBB2_1
.LBB2_6:
	ldw r0, sp[3]
	bf r0, .LBB2_8
	bu .LBB2_7
.LBB2_7:
	ldw r0, sp[2]
	stw r0, sp[0]
	bu .LBB2_9
.LBB2_8:
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB2_9
.LBB2_9:
	ldw r0, sp[0]
	retsp 6
	.cc_bottom memchr.function
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr

	.globl	memcmp
	.p2align	2
	.type	memcmp,@function
	.cc_top memcmp.function,memcmp
memcmp:
	entsp 7
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r0, sp[6]
	stw r0, sp[3]
	ldw r0, sp[5]
	stw r0, sp[2]
	bu .LBB3_1
.LBB3_1:
	ldw r0, sp[4]
	ldc r1, 0
	stw r1, sp[1]
	bf r0, .LBB3_3
	bu .LBB3_2
.LBB3_2:
	ldw r0, sp[3]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	stw r0, sp[1]
	bu .LBB3_3
.LBB3_3:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB3_6
	bu .LBB3_4
.LBB3_4:
	bu .LBB3_5
.LBB3_5:
	ldw r0, sp[4]
	sub r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB3_1
.LBB3_6:
	ldw r0, sp[4]
	bf r0, .LBB3_8
	bu .LBB3_7
.LBB3_7:
	ldw r0, sp[3]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	stw r0, sp[0]
	bu .LBB3_9
.LBB3_8:
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB3_9
.LBB3_9:
	ldw r0, sp[0]
	retsp 7
	.cc_bottom memcmp.function
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp

	.globl	memcpy
	.p2align	2
	.type	memcpy,@function
	.cc_top memcpy.function,memcpy
memcpy:
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	stw r2, sp[2]
	ldw r0, sp[4]
	stw r0, sp[1]
	ldw r0, sp[3]
	stw r0, sp[0]
	bu .LBB4_1
.LBB4_1:
	ldw r0, sp[2]
	bf r0, .LBB4_4
	bu .LBB4_2
.LBB4_2:
	ldw r0, sp[0]
	add r1, r0, 1
	stw r1, sp[0]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	add r3, r1, 1
	stw r3, sp[1]
	st8 r0, r1[r2]
	bu .LBB4_3
.LBB4_3:
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	bu .LBB4_1
.LBB4_4:
	ldw r0, sp[4]
	retsp 5
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
	ldw r0, sp[3]
	stw r0, sp[0]
	ldc r1, 0
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
	ldw r0, sp[0]
	ldw r1, sp[1]
	ld8u r0, r0[r1]
	ldw r1, sp[2]
	eq r0, r0, r1
	bf r0, .LBB5_4
	bu .LBB5_3
.LBB5_3:
	ldw r0, sp[0]
	ldw r1, sp[1]
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB5_6
.LBB5_4:
	bu .LBB5_1
.LBB5_5:
	ldc r0, 0
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
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	stw r2, sp[2]
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB6_1
.LBB6_1:
	ldw r0, sp[2]
	bf r0, .LBB6_4
	bu .LBB6_2
.LBB6_2:
	ldw r0, sp[3]
	ldw r1, sp[1]
	ldc r2, 0
	st8 r0, r1[r2]
	bu .LBB6_3
.LBB6_3:
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB6_1
.LBB6_4:
	ldw r0, sp[4]
	retsp 5
	.cc_bottom memset.function
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset

	.globl	stpcpy
	.p2align	2
	.type	stpcpy,@function
	.cc_top stpcpy.function,stpcpy
stpcpy:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
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
	bu .LBB7_3
.LBB7_3:
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB7_1
.LBB7_4:
	ldw r0, sp[1]
	retsp 2
	.cc_bottom stpcpy.function
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy

	.globl	strchrnul
	.p2align	2
	.type	strchrnul,@function
	.cc_top strchrnul.function,strchrnul
strchrnul:
	entsp 3
	stw r0, sp[2]
	stw r1, sp[1]
	ldc r1, 0
	ldaw r0, sp[1]
	ld8u r0, r0[r1]
	stw r0, sp[1]
	bu .LBB8_1
.LBB8_1:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[0]
	bf r0, .LBB8_3
	bu .LBB8_2
.LBB8_2:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r1, sp[1]
	eq r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB8_3
.LBB8_3:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB8_6
	bu .LBB8_4
.LBB8_4:
	bu .LBB8_5
.LBB8_5:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB8_1
.LBB8_6:
	ldw r0, sp[2]
	retsp 3
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
	bu .LBB9_1
.LBB9_1:
	ldw r0, sp[1]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r1, sp[0]
	eq r0, r0, r1
	bf r0, .LBB9_3
	bu .LBB9_2
.LBB9_2:
	ldw r0, sp[1]
	stw r0, sp[2]
	bu .LBB9_6
.LBB9_3:
	bu .LBB9_4
.LBB9_4:
	ldw r0, sp[1]
	add r1, r0, 1
	stw r1, sp[1]
	ldc r1, 0
	ld8u r0, r0[r1]
	bt r0, .LBB9_1
	bu .LBB9_5
.LBB9_5:
	ldc r0, 0
	stw r0, sp[2]
	bu .LBB9_6
.LBB9_6:
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
	entsp 3
	stw r0, sp[2]
	stw r1, sp[1]
	bu .LBB10_1
.LBB10_1:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r2, sp[1]
	ld8u r2, r2[r1]
	eq r0, r0, r2
	stw r1, sp[0]
	bf r0, .LBB10_3
	bu .LBB10_2
.LBB10_2:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	eq r0, r0, 0
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB10_3
.LBB10_3:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB10_6
	bu .LBB10_4
.LBB10_4:
	bu .LBB10_5
.LBB10_5:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB10_1
.LBB10_6:
	ldw r0, sp[2]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	retsp 3
	.cc_bottom strcmp.function
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp

	.globl	strlen
	.p2align	2
	.type	strlen,@function
	.cc_top strlen.function,strlen
strlen:
	entsp 2
	stw r0, sp[1]
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
	bu .LBB11_3
.LBB11_3:
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB11_1
.LBB11_4:
	ldw r0, sp[1]
	ldw r1, sp[0]
	sub r0, r0, r1
	retsp 2
	.cc_bottom strlen.function
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen

	.globl	strncmp
	.p2align	2
	.type	strncmp,@function
	.cc_top strncmp.function,strncmp
strncmp:
	entsp 7
	stw r0, sp[5]
	stw r1, sp[4]
	stw r2, sp[3]
	ldw r0, sp[5]
	stw r0, sp[2]
	ldw r0, sp[4]
	stw r0, sp[1]
	ldw r0, sp[3]
	sub r1, r0, 1
	stw r1, sp[3]
	bt r0, .LBB12_2
	bu .LBB12_1
.LBB12_1:
	ldc r0, 0
	stw r0, sp[6]
	bu .LBB12_11
.LBB12_2:
	bu .LBB12_3
.LBB12_3:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[0]
	bf r0, .LBB12_7
	bu .LBB12_4
.LBB12_4:
	ldw r0, sp[1]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[0]
	bf r0, .LBB12_7
	bu .LBB12_5
.LBB12_5:
	ldw r0, sp[3]
	ldc r1, 0
	stw r1, sp[0]
	bf r0, .LBB12_7
	bu .LBB12_6
.LBB12_6:
	ldw r0, sp[2]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	stw r0, sp[0]
	bu .LBB12_7
.LBB12_7:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB12_10
	bu .LBB12_8
.LBB12_8:
	bu .LBB12_9
.LBB12_9:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	bu .LBB12_3
.LBB12_10:
	ldw r0, sp[2]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	ld8u r1, r1[r2]
	sub r0, r0, r1
	stw r0, sp[6]
	bu .LBB12_11
.LBB12_11:
	ldw r0, sp[6]
	retsp 7
	.cc_bottom strncmp.function
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp

	.globl	swab
	.p2align	2
	.type	swab,@function
	.cc_top swab.function,swab
swab:
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	stw r2, sp[2]
	ldw r0, sp[4]
	stw r0, sp[1]
	ldw r0, sp[3]
	stw r0, sp[0]
	bu .LBB13_1
.LBB13_1:
	ldw r0, sp[2]
	ldc r1, 2
	lss r0, r0, r1
	bt r0, .LBB13_4
	bu .LBB13_2
.LBB13_2:
	ldw r0, sp[1]
	mkmsk r2, 1
	ld8u r0, r0[r2]
	ldw r3, sp[0]
	ldc r1, 0
	st8 r0, r3[r1]
	ldw r0, sp[1]
	ld8u r0, r0[r1]
	ldw r1, sp[0]
	st8 r0, r1[r2]
	ldw r0, sp[0]
	add r0, r0, 2
	stw r0, sp[0]
	ldw r0, sp[1]
	add r0, r0, 2
	stw r0, sp[1]
	bu .LBB13_3
.LBB13_3:
	ldw r0, sp[2]
	sub r0, r0, 2
	stw r0, sp[2]
	bu .LBB13_1
.LBB13_4:
	retsp 5
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
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldc r1, 32
	or r0, r0, r1
	ldw r1, cp[.LCPI14_0]
	add r0, r0, r1
	ldc r1, 26
	lsu r0, r0, r1
	retsp 1
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
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI15_0]
	and r0, r0, r1
	eq r0, r0, 0
	retsp 1
	.cc_bottom isascii.function
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii

	.globl	isblank
	.p2align	2
	.type	isblank,@function
	.cc_top isblank.function,isblank
isblank:
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	ldc r1, 32
	eq r0, r0, r1
	mkmsk r1, 1
	stw r1, sp[0]
	bt r0, .LBB16_2
	bu .LBB16_1
.LBB16_1:
	ldw r0, sp[1]
	eq r0, r0, 9
	stw r0, sp[0]
	bu .LBB16_2
.LBB16_2:
	ldw r0, sp[0]
	zext r0, 1
	retsp 2
	.cc_bottom isblank.function
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank

	.globl	iscntrl
	.p2align	2
	.type	iscntrl,@function
	.cc_top iscntrl.function,iscntrl
iscntrl:
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	ldc r1, 32
	lsu r0, r0, r1
	mkmsk r1, 1
	stw r1, sp[0]
	bt r0, .LBB17_2
	bu .LBB17_1
.LBB17_1:
	ldw r0, sp[1]
	mkmsk r1, 7
	eq r0, r0, r1
	stw r0, sp[0]
	bu .LBB17_2
.LBB17_2:
	ldw r0, sp[0]
	zext r0, 1
	retsp 2
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
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI18_0]
	add r0, r0, r1
	ldc r1, 10
	lsu r0, r0, r1
	retsp 1
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
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI19_0]
	add r0, r0, r1
	ldc r1, 94
	lsu r0, r0, r1
	retsp 1
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
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI20_0]
	add r0, r0, r1
	ldc r1, 26
	lsu r0, r0, r1
	retsp 1
	.cc_bottom islower.function
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower

	.globl	isprint
	.p2align	2
	.type	isprint,@function
	.cc_top isprint.function,isprint
isprint:
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldaw r0, r0[-8]
	ldc r1, 95
	lsu r0, r0, r1
	retsp 1
	.cc_bottom isprint.function
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint

	.globl	isspace
	.p2align	2
	.type	isspace,@function
	.cc_top isspace.function,isspace
isspace:
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	ldc r1, 32
	eq r0, r0, r1
	mkmsk r1, 1
	stw r1, sp[0]
	bt r0, .LBB22_2
	bu .LBB22_1
.LBB22_1:
	ldw r0, sp[1]
	sub r0, r0, 9
	ldc r1, 5
	lsu r0, r0, r1
	stw r0, sp[0]
	bu .LBB22_2
.LBB22_2:
	ldw r0, sp[0]
	zext r0, 1
	retsp 2
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
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI23_0]
	add r0, r0, r1
	ldc r1, 26
	lsu r0, r0, r1
	retsp 1
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
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	ldc r1, 32
	lsu r0, r0, r1
	mkmsk r1, 1
	stw r1, sp[0]
	bt r0, .LBB24_4
	bu .LBB24_1
.LBB24_1:
	ldw r0, sp[1]
	ldw r1, cp[.LCPI24_0]
	add r0, r0, r1
	ldc r1, 33
	lsu r0, r0, r1
	mkmsk r1, 1
	stw r1, sp[0]
	bt r0, .LBB24_4
	bu .LBB24_2
.LBB24_2:
	ldw r0, sp[1]
	ldw r1, cp[.LCPI24_1]
	add r0, r0, r1
	ldc r1, 2
	lsu r0, r0, r1
	mkmsk r1, 1
	stw r1, sp[0]
	bt r0, .LBB24_4
	bu .LBB24_3
.LBB24_3:
	ldw r0, sp[1]
	ldw r1, cp[.LCPI24_2]
	add r0, r0, r1
	mkmsk r1, 2
	lsu r0, r0, r1
	stw r0, sp[0]
	bu .LBB24_4
.LBB24_4:
	ldw r0, sp[0]
	zext r0, 1
	retsp 2
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
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r1, cp[.LCPI25_0]
	add r0, r0, r1
	ldc r1, 10
	lsu r0, r0, r1
	retsp 1
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
	ldw r1, sp[0]
	ldc r0, 254
	lsu r0, r0, r1
	bt r0, .LBB26_2
	bu .LBB26_1
.LBB26_1:
	ldw r0, sp[0]
	add r1, r0, 1
	zext r1, 7
	ldc r0, 32
	lsu r0, r0, r1
	stw r0, sp[1]
	bu .LBB26_10
.LBB26_2:
	ldw r0, sp[0]
	ldc r1, 8232
	lsu r0, r0, r1
	bt r0, .LBB26_5
	bu .LBB26_3
.LBB26_3:
	ldw r0, sp[0]
	ldw r1, cp[.LCPI26_0]
	add r0, r0, r1
	ldc r1, 47062
	lsu r0, r0, r1
	bt r0, .LBB26_5
	bu .LBB26_4
.LBB26_4:
	ldw r0, sp[0]
	ldw r1, cp[.LCPI26_1]
	add r1, r0, r1
	ldc r0, 8184
	lsu r0, r0, r1
	bt r0, .LBB26_6
	bu .LBB26_5
.LBB26_5:
	mkmsk r0, 1
	stw r0, sp[1]
	bu .LBB26_10
.LBB26_6:
	ldw r0, sp[0]
	ldw r1, cp[.LCPI26_2]
	add r1, r0, r1
	ldw r0, cp[.LCPI26_3]
	lsu r0, r0, r1
	bt r0, .LBB26_8
	bu .LBB26_7
.LBB26_7:
	ldw r0, sp[0]
	ldc r1, 65534
	and r0, r0, r1
	eq r0, r0, r1
	bf r0, .LBB26_9
	bu .LBB26_8
.LBB26_8:
	ldc r0, 0
	stw r0, sp[1]
	bu .LBB26_10
.LBB26_9:
	mkmsk r0, 1
	stw r0, sp[1]
	bu .LBB26_10
.LBB26_10:
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
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	ldw r1, cp[.LCPI27_0]
	add r0, r0, r1
	ldc r1, 10
	lsu r0, r0, r1
	mkmsk r1, 1
	stw r1, sp[0]
	bt r0, .LBB27_2
	bu .LBB27_1
.LBB27_1:
	ldw r0, sp[1]
	ldc r1, 32
	or r0, r0, r1
	ldw r1, cp[.LCPI27_1]
	add r0, r0, r1
	ldc r1, 6
	lsu r0, r0, r1
	stw r0, sp[0]
	bu .LBB27_2
.LBB27_2:
	ldw r0, sp[0]
	zext r0, 1
	retsp 2
	.cc_bottom iswxdigit.function
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit

	.globl	toascii
	.p2align	2
	.type	toascii,@function
	.cc_top toascii.function,toascii
toascii:
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	zext r0, 7
	retsp 1
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
	ldw r0, sp[9]
	ldw r1, sp[10]
	ldw r2, sp[7]
	ldw r3, sp[8]
	bl __subdf3
	stw r0, sp[1]
	stw r1, sp[2]
	bu .LBB29_7
.LBB29_6:
	ldc r0, 0
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
	ldw r0, sp[3]
	ldw r1, cp[.LCPI30_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI30_1]
	lss r0, r0, r1
	bt r0, .LBB30_2
	bu .LBB30_1
.LBB30_1:
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
	ldw r0, sp[3]
	ldw r1, sp[2]
	bl __subsf3
	stw r0, sp[1]
	bu .LBB30_7
.LBB30_6:
	ldc r0, 0
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
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB31_7
	bu .LBB31_6
.LBB31_6:
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB31_8
.LBB31_7:
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
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB31_12
.LBB31_11:
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
	ldw r0, sp[4]
	ldw r1, cp[.LCPI32_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI32_1]
	lss r0, r0, r1
	bt r0, .LBB32_2
	bu .LBB32_1
.LBB32_1:
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
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB32_7
	bu .LBB32_6
.LBB32_6:
	ldw r0, sp[3]
	stw r0, sp[2]
	bu .LBB32_8
.LBB32_7:
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
	ldw r0, sp[3]
	stw r0, sp[1]
	bu .LBB32_12
.LBB32_11:
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
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB33_7
	bu .LBB33_6
.LBB33_6:
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB33_8
.LBB33_7:
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
	ldw r0, sp[10]
	ldw r1, sp[9]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB33_12
.LBB33_11:
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
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB34_7
	bu .LBB34_6
.LBB34_6:
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB34_8
.LBB34_7:
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
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB34_12
.LBB34_11:
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
	ldw r0, sp[4]
	ldw r1, cp[.LCPI35_0]
	and r0, r0, r1
	ldw r1, cp[.LCPI35_1]
	lss r0, r0, r1
	bt r0, .LBB35_2
	bu .LBB35_1
.LBB35_1:
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
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB35_7
	bu .LBB35_6
.LBB35_6:
	ldw r0, sp[4]
	stw r0, sp[2]
	bu .LBB35_8
.LBB35_7:
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
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB35_12
.LBB35_11:
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
	ldw r0, sp[12]
	ashr r0, r0, 32
	bf r0, .LBB36_7
	bu .LBB36_6
.LBB36_6:
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[3]
	stw r0, sp[4]
	bu .LBB36_8
.LBB36_7:
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
	ldw r0, sp[12]
	ldw r1, sp[11]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB36_12
.LBB36_11:
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
	entsp 3
	stw r0, sp[2]
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
	ldw r0, sp[0]
	zext r0, 6
	ldaw r11, cp[digits]
	ld8u r0, r0[r11]
	ldw r1, sp[1]
	ldc r2, 0
	st8 r0, r1[r2]
	bu .LBB37_3
.LBB37_3:
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
	retsp 3
	.cc_bottom l64a.function
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a

	.globl	srand
	.p2align	2
	.type	srand,@function
	.cc_top srand.function,srand
srand:
	entsp 1
	stw r0, sp[0]
	ldw r0, sp[0]
	sub r0, r0, 1
	ldc r1, 0
	stw r1, dp[seed+4]
	stw r0, dp[seed]
	retsp 1
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
	ldw r0, dp[seed+4]
	ldw r4, dp[seed]
	ldw r1, cp[.LCPI39_0]
	mul r11, r4, r1
	ldw r2, cp[.LCPI39_1]
	mkmsk r1, 1
	ldc r3, 0
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
	ldw r0, sp[3]
	stw r0, sp[1]
	ldw r0, sp[2]
	stw r0, sp[0]
	ldw r0, sp[0]
	bt r0, .LBB40_2
	bu .LBB40_1
.LBB40_1:
	ldw r1, sp[1]
	ldc r0, 0
	stw r0, r1[1]
	ldw r1, sp[1]
	stw r0, r1[0]
	bu .LBB40_4
.LBB40_2:
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
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	stw r0, sp[0]
	ldw r0, sp[0]
	ldw r0, r0[0]
	bf r0, .LBB41_2
	bu .LBB41_1
.LBB41_1:
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
	ldw r1, sp[0]
	ldw r0, r1[0]
	ldw r1, r1[1]
	stw r0, r1[0]
	bu .LBB41_4
.LBB41_4:
	retsp 2
	.cc_bottom remque.function
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque

	.globl	lsearch
	.p2align	2
	.type	lsearch,@function
	.cc_top lsearch.function,lsearch
lsearch:
	entsp 11
	ldw r11, sp[12]
	stw r0, sp[9]
	stw r1, sp[8]
	stw r2, sp[7]
	stw r3, sp[6]
	ldw r0, sp[6]
	stw r0, sp[2]
	ldw r0, sp[8]
	stw r0, sp[5]
	ldw r0, sp[7]
	ldw r0, r0[0]
	stw r0, sp[4]
	ldc r0, 0
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
	ldw r2, sp[12]
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
	ldw r0, sp[5]
	ldw r1, sp[3]
	mul r1, r1, r2
	add r0, r0, r1
	stw r0, sp[10]
	bu .LBB42_7
.LBB42_4:
	bu .LBB42_5
.LBB42_5:
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB42_1
.LBB42_6:
	ldw r2, sp[2]
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
	retsp 11
	.cc_bottom lsearch.function
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch

	.globl	lfind
	.p2align	2
	.type	lfind,@function
	.cc_top lfind.function,lfind
lfind:
	entsp 10
	ldw r11, sp[11]
	stw r0, sp[8]
	stw r1, sp[7]
	stw r2, sp[6]
	stw r3, sp[5]
	ldw r0, sp[5]
	stw r0, sp[1]
	ldw r0, sp[7]
	stw r0, sp[4]
	ldw r0, sp[6]
	ldw r0, r0[0]
	stw r0, sp[3]
	ldc r0, 0
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
	ldw r2, sp[11]
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
	ldw r0, sp[4]
	ldw r1, sp[2]
	mul r1, r1, r2
	add r0, r0, r1
	stw r0, sp[9]
	bu .LBB43_7
.LBB43_4:
	bu .LBB43_5
.LBB43_5:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB43_1
.LBB43_6:
	ldc r0, 0
	stw r0, sp[9]
	bu .LBB43_7
.LBB43_7:
	ldw r0, sp[9]
	retsp 10
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
	ldw r0, sp[1]
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB44_2
	bu .LBB44_1
.LBB44_1:
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB44_3
.LBB44_2:
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
	ldc r0, 0
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
	bu .LBB45_13
.LBB45_13:
	ldw r0, sp[2]
	ldc r1, 45
	eq r0, r0, r1
	bf r0, .LBB45_6
	bu .LBB45_4
.LBB45_4:
	mkmsk r0, 1
	stw r0, sp[3]
	bu .LBB45_5
.LBB45_5:
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB45_6
.LBB45_6:
	bu .LBB45_7
.LBB45_7:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isdigit
	bf r0, .LBB45_9
	bu .LBB45_8
.LBB45_8:
	ldw r0, sp[4]
	ldc r1, 10
	mul r0, r0, r1
	ldw r1, sp[5]
	add r2, r1, 1
	stw r2, sp[5]
	ldc r2, 0
	ld8u r1, r1[r2]
	sub r0, r0, r1
	ldc r1, 48
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB45_7
.LBB45_9:
	ldw r0, sp[3]
	bf r0, .LBB45_11
	bu .LBB45_10
.LBB45_10:
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB45_12
.LBB45_11:
	ldw r0, sp[4]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB45_12
.LBB45_12:
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
	ldc r0, 0
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
	bu .LBB46_13
.LBB46_13:
	ldw r0, sp[2]
	ldc r1, 45
	eq r0, r0, r1
	bf r0, .LBB46_6
	bu .LBB46_4
.LBB46_4:
	mkmsk r0, 1
	stw r0, sp[3]
	bu .LBB46_5
.LBB46_5:
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	bu .LBB46_6
.LBB46_6:
	bu .LBB46_7
.LBB46_7:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isdigit
	bf r0, .LBB46_9
	bu .LBB46_8
.LBB46_8:
	ldw r0, sp[4]
	ldc r1, 10
	mul r0, r0, r1
	ldw r1, sp[5]
	add r2, r1, 1
	stw r2, sp[5]
	ldc r2, 0
	ld8u r1, r1[r2]
	sub r0, r0, r1
	ldc r1, 48
	add r0, r0, r1
	stw r0, sp[4]
	bu .LBB46_7
.LBB46_9:
	ldw r0, sp[3]
	bf r0, .LBB46_11
	bu .LBB46_10
.LBB46_10:
	ldw r0, sp[4]
	stw r0, sp[1]
	bu .LBB46_12
.LBB46_11:
	ldw r0, sp[4]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB46_12
.LBB46_12:
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
	ldc r0, 0
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
	bu .LBB47_13
.LBB47_13:
	ldw r0, sp[3]
	ldc r1, 45
	eq r0, r0, r1
	bf r0, .LBB47_6
	bu .LBB47_4
.LBB47_4:
	mkmsk r0, 1
	stw r0, sp[4]
	bu .LBB47_5
.LBB47_5:
	ldw r0, sp[7]
	add r0, r0, 1
	stw r0, sp[7]
	bu .LBB47_6
.LBB47_6:
	bu .LBB47_7
.LBB47_7:
	ldw r0, sp[7]
	ldc r1, 0
	ld8u r0, r0[r1]
	bl isdigit
	bf r0, .LBB47_9
	bu .LBB47_8
.LBB47_8:
	ldw r2, sp[6]
	ldw r0, sp[5]
	ldc r11, 0
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
	bu .LBB47_7
.LBB47_9:
	ldw r0, sp[4]
	bf r0, .LBB47_11
	bu .LBB47_10
.LBB47_10:
	ldw r0, sp[6]
	ldw r1, sp[5]
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB47_12
.LBB47_11:
	ldw r2, sp[6]
	ldw r1, sp[5]
	ldc r0, 0
	lsub r3, r1, r0, r1, r0
	lsub r2, r0, r0, r2, r3
	stw r1, sp[1]
	stw r0, sp[2]
	bu .LBB47_12
.LBB47_12:
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
	bu .LBB48_1
.LBB48_1:
	ldw r0, sp[4]
	bf r0, .LBB48_9
	bu .LBB48_2
.LBB48_2:
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
	ldw r0, sp[2]
	stw r0, sp[7]
	bu .LBB48_10
.LBB48_7:
	bu .LBB48_8
.LBB48_8:
	bu .LBB48_1
.LBB48_9:
	ldc r0, 0
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
	ldw r0, sp[3]
	ashr r0, r0, 1
	stw r0, sp[3]
	bu .LBB49_1
.LBB49_8:
	ldc r0, 0
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
	entsp 3
	stw r1, sp[0]
	mov r1, r0
	ldw r0, sp[0]
	stw r0, sp[2]
	stw r2, sp[1]
	ldw r0, sp[2]
	ldw r2, sp[1]
	divs r0, r0, r2
	stw r0, r1[0]
	ldw r0, sp[2]
	ldw r2, sp[1]
	rems r0, r0, r2
	stw r0, r1[1]
	retsp 3
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
	ldw r2, sp[4]
	ldw r0, sp[5]
	ldc r1, 0
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
	ldw r0, sp[5]
	ldw r1, sp[4]
	stw r1, sp[0]
	stw r0, sp[1]
	bu .LBB51_3
.LBB51_2:
	ldw r2, sp[5]
	ldw r1, sp[4]
	ldc r0, 0
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
	entsp 6
	stw r0, sp[1]
	ldw r0, sp[7]
	stw r2, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	stw r3, sp[2]
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldw r2, sp[2]
	ldw r3, sp[3]
	bl __divdi3
	mov r2, r1
	ldw r1, sp[1]
	stw r2, r1[1]
	stw r0, r1[0]
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldw r2, sp[2]
	ldw r3, sp[3]
	bl __moddi3
	mov r2, r1
	ldw r1, sp[1]
	stw r2, r1[3]
	stw r0, r1[2]
	retsp 6
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
	ldw r0, sp[1]
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB53_2
	bu .LBB53_1
.LBB53_1:
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB53_3
.LBB53_2:
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
	entsp 3
	stw r1, sp[0]
	mov r1, r0
	ldw r0, sp[0]
	stw r0, sp[2]
	stw r2, sp[1]
	ldw r0, sp[2]
	ldw r2, sp[1]
	divs r0, r0, r2
	stw r0, r1[0]
	ldw r0, sp[2]
	ldw r2, sp[1]
	rems r0, r0, r2
	stw r0, r1[1]
	retsp 3
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
	ldw r2, sp[4]
	ldw r0, sp[5]
	ldc r1, 0
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
	ldw r0, sp[5]
	ldw r1, sp[4]
	stw r1, sp[0]
	stw r0, sp[1]
	bu .LBB55_3
.LBB55_2:
	ldw r2, sp[5]
	ldw r1, sp[4]
	ldc r0, 0
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
	entsp 6
	stw r0, sp[1]
	ldw r0, sp[7]
	stw r2, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	stw r3, sp[2]
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldw r2, sp[2]
	ldw r3, sp[3]
	bl __divdi3
	mov r2, r1
	ldw r1, sp[1]
	stw r2, r1[1]
	stw r0, r1[0]
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldw r2, sp[2]
	ldw r3, sp[3]
	bl __moddi3
	mov r2, r1
	ldw r1, sp[1]
	stw r2, r1[3]
	stw r0, r1[2]
	retsp 6
	.cc_bottom lldiv.function
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv

	.globl	wcschr
	.p2align	2
	.type	wcschr,@function
	.cc_top wcschr.function,wcschr
wcschr:
	entsp 4
	stw r0, sp[3]
	ldc r2, 0
	ldaw r0, sp[2]
	st8 r1, r0[r2]
	bu .LBB57_1
.LBB57_1:
	ldw r0, sp[3]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[1]
	bf r0, .LBB57_3
	bu .LBB57_2
.LBB57_2:
	ldw r0, sp[3]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldaw r1, sp[2]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[1]
	bu .LBB57_3
.LBB57_3:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB57_6
	bu .LBB57_4
.LBB57_4:
	bu .LBB57_5
.LBB57_5:
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB57_1
.LBB57_6:
	ldw r0, sp[3]
	ldc r1, 0
	ld8u r0, r0[r1]
	bf r0, .LBB57_8
	bu .LBB57_7
.LBB57_7:
	ldw r0, sp[3]
	stw r0, sp[0]
	bu .LBB57_9
.LBB57_8:
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB57_9
.LBB57_9:
	ldw r0, sp[0]
	retsp 4
	.cc_bottom wcschr.function
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr

	.globl	wcscmp
	.p2align	2
	.type	wcscmp,@function
	.cc_top wcscmp.function,wcscmp
wcscmp:
	entsp 4
	stw r0, sp[3]
	stw r1, sp[2]
	bu .LBB58_1
.LBB58_1:
	ldw r0, sp[3]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r2, sp[2]
	ld8u r2, r2[r1]
	eq r0, r0, r2
	stw r1, sp[1]
	bf r0, .LBB58_4
	bu .LBB58_2
.LBB58_2:
	ldw r0, sp[3]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[1]
	bf r0, .LBB58_4
	bu .LBB58_3
.LBB58_3:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	eq r0, r0, 0
	eq r0, r0, 0
	stw r0, sp[1]
	bu .LBB58_4
.LBB58_4:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB58_7
	bu .LBB58_5
.LBB58_5:
	bu .LBB58_6
.LBB58_6:
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB58_1
.LBB58_7:
	ldw r0, sp[3]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	lss r0, r0, r1
	bf r0, .LBB58_9
	bu .LBB58_8
.LBB58_8:
	mkmsk r0, 32
	stw r0, sp[0]
	bu .LBB58_10
.LBB58_9:
	ldw r0, sp[3]
	ldc r2, 0
	ld8u r1, r0[r2]
	ldw r0, sp[2]
	ld8u r0, r0[r2]
	lss r0, r0, r1
	stw r0, sp[0]
	bu .LBB58_10
.LBB58_10:
	ldw r0, sp[0]
	retsp 4
	.cc_bottom wcscmp.function
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp

	.globl	wcscpy
	.p2align	2
	.type	wcscpy,@function
	.cc_top wcscpy.function,wcscpy
wcscpy:
	entsp 3
	stw r0, sp[2]
	stw r1, sp[1]
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
	bu .LBB59_1
.LBB59_3:
	ldw r0, sp[0]
	retsp 3
	.cc_bottom wcscpy.function
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy

	.globl	wcslen
	.p2align	2
	.type	wcslen,@function
	.cc_top wcslen.function,wcslen
wcslen:
	entsp 2
	stw r0, sp[1]
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
	bu .LBB60_3
.LBB60_3:
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB60_1
.LBB60_4:
	ldw r0, sp[1]
	ldw r1, sp[0]
	sub r0, r0, r1
	retsp 2
	.cc_bottom wcslen.function
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen

	.globl	wcsncmp
	.p2align	2
	.type	wcsncmp,@function
	.cc_top wcsncmp.function,wcsncmp
wcsncmp:
	entsp 6
	stw r0, sp[5]
	stw r1, sp[4]
	stw r2, sp[3]
	bu .LBB61_1
.LBB61_1:
	ldw r0, sp[3]
	ldc r1, 0
	stw r1, sp[2]
	bf r0, .LBB61_5
	bu .LBB61_2
.LBB61_2:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r2, sp[4]
	ld8u r2, r2[r1]
	eq r0, r0, r2
	stw r1, sp[2]
	bf r0, .LBB61_5
	bu .LBB61_3
.LBB61_3:
	ldw r0, sp[5]
	ldc r1, 0
	ld8u r0, r0[r1]
	stw r1, sp[2]
	bf r0, .LBB61_5
	bu .LBB61_4
.LBB61_4:
	ldw r0, sp[4]
	ldc r1, 0
	ld8u r0, r0[r1]
	eq r0, r0, 0
	eq r0, r0, 0
	stw r0, sp[2]
	bu .LBB61_5
.LBB61_5:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB61_8
	bu .LBB61_6
.LBB61_6:
	bu .LBB61_7
.LBB61_7:
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB61_1
.LBB61_8:
	ldw r0, sp[3]
	bf r0, .LBB61_13
	bu .LBB61_9
.LBB61_9:
	ldw r0, sp[5]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	ld8u r1, r1[r2]
	lss r0, r0, r1
	bf r0, .LBB61_11
	bu .LBB61_10
.LBB61_10:
	mkmsk r0, 32
	stw r0, sp[1]
	bu .LBB61_12
.LBB61_11:
	ldw r0, sp[5]
	ldc r2, 0
	ld8u r1, r0[r2]
	ldw r0, sp[4]
	ld8u r0, r0[r2]
	lss r0, r0, r1
	stw r0, sp[1]
	bu .LBB61_12
.LBB61_12:
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB61_14
.LBB61_13:
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB61_14
.LBB61_14:
	ldw r0, sp[0]
	retsp 6
	.cc_bottom wcsncmp.function
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp

	.globl	wmemchr
	.p2align	2
	.type	wmemchr,@function
	.cc_top wmemchr.function,wmemchr
wmemchr:
	entsp 5
	stw r0, sp[4]
	ldc r3, 0
	ldaw r0, sp[3]
	st8 r1, r0[r3]
	stw r2, sp[2]
	bu .LBB62_1
.LBB62_1:
	ldw r0, sp[2]
	ldc r1, 0
	stw r1, sp[1]
	bf r0, .LBB62_3
	bu .LBB62_2
.LBB62_2:
	ldw r0, sp[4]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldaw r1, sp[3]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[1]
	bu .LBB62_3
.LBB62_3:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB62_6
	bu .LBB62_4
.LBB62_4:
	bu .LBB62_5
.LBB62_5:
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB62_1
.LBB62_6:
	ldw r0, sp[2]
	bf r0, .LBB62_8
	bu .LBB62_7
.LBB62_7:
	ldw r0, sp[4]
	stw r0, sp[0]
	bu .LBB62_9
.LBB62_8:
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB62_9
.LBB62_9:
	ldw r0, sp[0]
	retsp 5
	.cc_bottom wmemchr.function
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr

	.globl	wmemcmp
	.p2align	2
	.type	wmemcmp,@function
	.cc_top wmemcmp.function,wmemcmp
wmemcmp:
	entsp 6
	stw r0, sp[5]
	stw r1, sp[4]
	stw r2, sp[3]
	bu .LBB63_1
.LBB63_1:
	ldw r0, sp[3]
	ldc r1, 0
	stw r1, sp[2]
	bf r0, .LBB63_3
	bu .LBB63_2
.LBB63_2:
	ldw r0, sp[5]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	stw r0, sp[2]
	bu .LBB63_3
.LBB63_3:
	ldw r0, sp[2]
	zext r0, 1
	bf r0, .LBB63_6
	bu .LBB63_4
.LBB63_4:
	bu .LBB63_5
.LBB63_5:
	ldw r0, sp[3]
	sub r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB63_1
.LBB63_6:
	ldw r0, sp[3]
	bf r0, .LBB63_11
	bu .LBB63_7
.LBB63_7:
	ldw r0, sp[5]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	ld8u r1, r1[r2]
	lss r0, r0, r1
	bf r0, .LBB63_9
	bu .LBB63_8
.LBB63_8:
	mkmsk r0, 32
	stw r0, sp[1]
	bu .LBB63_10
.LBB63_9:
	ldw r0, sp[5]
	ldc r2, 0
	ld8u r1, r0[r2]
	ldw r0, sp[4]
	ld8u r0, r0[r2]
	lss r0, r0, r1
	stw r0, sp[1]
	bu .LBB63_10
.LBB63_10:
	ldw r0, sp[1]
	stw r0, sp[0]
	bu .LBB63_12
.LBB63_11:
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB63_12
.LBB63_12:
	ldw r0, sp[0]
	retsp 6
	.cc_bottom wmemcmp.function
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp

	.globl	wmemcpy
	.p2align	2
	.type	wmemcpy,@function
	.cc_top wmemcpy.function,wmemcpy
wmemcpy:
	entsp 4
	stw r0, sp[3]
	stw r1, sp[2]
	stw r2, sp[1]
	ldw r0, sp[3]
	stw r0, sp[0]
	bu .LBB64_1
.LBB64_1:
	ldw r0, sp[1]
	sub r1, r0, 1
	stw r1, sp[1]
	bf r0, .LBB64_3
	bu .LBB64_2
.LBB64_2:
	ldw r0, sp[2]
	add r1, r0, 1
	stw r1, sp[2]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	add r3, r1, 1
	stw r3, sp[3]
	st8 r0, r1[r2]
	bu .LBB64_1
.LBB64_3:
	ldw r0, sp[0]
	retsp 4
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
	ldw r0, sp[3]
	stw r0, sp[0]
	ldw r0, sp[3]
	ldw r1, sp[2]
	eq r0, r0, r1
	bf r0, .LBB65_2
	bu .LBB65_1
.LBB65_1:
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
	bu .LBB65_4
.LBB65_4:
	ldw r0, sp[1]
	sub r1, r0, 1
	stw r1, sp[1]
	bf r0, .LBB65_6
	bu .LBB65_5
.LBB65_5:
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
	ldw r0, sp[2]
	add r1, r0, 1
	stw r1, sp[2]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	add r3, r1, 1
	stw r3, sp[3]
	st8 r0, r1[r2]
	bu .LBB65_8
.LBB65_10:
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
	entsp 4
	stw r0, sp[3]
	ldc r3, 0
	ldaw r0, sp[2]
	st8 r1, r0[r3]
	stw r2, sp[1]
	ldw r0, sp[3]
	stw r0, sp[0]
	bu .LBB66_1
.LBB66_1:
	ldw r0, sp[1]
	sub r1, r0, 1
	stw r1, sp[1]
	bf r0, .LBB66_3
	bu .LBB66_2
.LBB66_2:
	ldc r2, 0
	ldaw r0, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	add r3, r1, 1
	stw r3, sp[3]
	st8 r0, r1[r2]
	bu .LBB66_1
.LBB66_3:
	ldw r0, sp[0]
	retsp 4
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
	bu .LBB67_8
.LBB67_8:
	ldw r0, sp[2]
	bf r0, .LBB67_11
	bu .LBB67_9
.LBB67_9:
	ldw r0, sp[1]
	add r1, r0, 1
	stw r1, sp[1]
	ldc r2, 0
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
	bu .LBB67_12
.LBB67_12:
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
	entsp 9
	stw r1, sp[8]
	stw r0, sp[7]
	stw r2, sp[6]
	ldw r0, sp[7]
	stw r0, sp[2]
	ldw r1, sp[8]
	stw r1, sp[3]
	ldw r2, sp[6]
	stw r2, sp[1]
	bl __ashldi3
	ldw r3, sp[1]
	mov r2, r0
	ldw r0, sp[2]
	stw r2, sp[4]
	mov r2, r1
	ldw r1, sp[3]
	stw r2, sp[5]
	ldc r2, 64
	sub r2, r2, r3
	bl __lshrdi3
	mov r3, r0
	ldw r0, sp[4]
	mov r2, r1
	ldw r1, sp[5]
	or r0, r0, r3
	or r1, r1, r2
	retsp 9
	.cc_bottom rotl64.function
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64

	.globl	rotr64
	.p2align	2
	.type	rotr64,@function
	.cc_top rotr64.function,rotr64
rotr64:
	entsp 9
	stw r1, sp[8]
	stw r0, sp[7]
	stw r2, sp[6]
	ldw r0, sp[7]
	stw r0, sp[2]
	ldw r1, sp[8]
	stw r1, sp[3]
	ldw r2, sp[6]
	stw r2, sp[1]
	bl __lshrdi3
	ldw r3, sp[1]
	mov r2, r0
	ldw r0, sp[2]
	stw r2, sp[4]
	mov r2, r1
	ldw r1, sp[3]
	stw r2, sp[5]
	ldc r2, 64
	sub r2, r2, r3
	bl __ashldi3
	mov r3, r0
	ldw r0, sp[4]
	mov r2, r1
	ldw r1, sp[5]
	or r0, r0, r3
	or r1, r1, r2
	retsp 9
	.cc_bottom rotr64.function
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64

	.globl	rotl32
	.p2align	2
	.type	rotl32,@function
	.cc_top rotl32.function,rotl32
rotl32:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	retsp 2
	.cc_bottom rotl32.function
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32

	.globl	rotr32
	.p2align	2
	.type	rotr32,@function
	.cc_top rotr32.function,rotr32
rotr32:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	retsp 2
	.cc_bottom rotr32.function
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32

	.globl	rotl_sz
	.p2align	2
	.type	rotl_sz,@function
	.cc_top rotl_sz.function,rotl_sz
rotl_sz:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	retsp 2
	.cc_bottom rotl_sz.function
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz

	.globl	rotr_sz
	.p2align	2
	.type	rotr_sz,@function
	.cc_top rotr_sz.function,rotr_sz
rotr_sz:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r1, sp[1]
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 32
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	retsp 2
	.cc_bottom rotr_sz.function
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz

	.globl	rotl16
	.p2align	2
	.type	rotl16,@function
	.cc_top rotl16.function,rotl16
rotl16:
	entsp 2
	mov r2, r1
	mov r3, r0
	ldc r1, 0
	ldaw r0, sp[1]
	st16 r3, r0[r1]
	stw r2, sp[0]
	ld16s r1, r0[r1]
	zext r1, 16
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 16
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	zext r0, 16
	retsp 2
	.cc_bottom rotl16.function
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16

	.globl	rotr16
	.p2align	2
	.type	rotr16,@function
	.cc_top rotr16.function,rotr16
rotr16:
	entsp 2
	mov r2, r1
	mov r3, r0
	ldc r1, 0
	ldaw r0, sp[1]
	st16 r3, r0[r1]
	stw r2, sp[0]
	ld16s r1, r0[r1]
	zext r1, 16
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 16
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	zext r0, 16
	retsp 2
	.cc_bottom rotr16.function
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16

	.globl	rotl8
	.p2align	2
	.type	rotl8,@function
	.cc_top rotl8.function,rotl8
rotl8:
	entsp 2
	mov r2, r1
	mov r3, r0
	ldc r1, 0
	ldaw r0, sp[1]
	st8 r3, r0[r1]
	stw r2, sp[0]
	ld8u r1, r0[r1]
	ldw r3, sp[0]
	shl r0, r1, r3
	ldc r2, 8
	sub r2, r2, r3
	shr r1, r1, r2
	or r0, r0, r1
	zext r0, 8
	retsp 2
	.cc_bottom rotl8.function
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8

	.globl	rotr8
	.p2align	2
	.type	rotr8,@function
	.cc_top rotr8.function,rotr8
rotr8:
	entsp 2
	mov r2, r1
	mov r3, r0
	ldc r1, 0
	ldaw r0, sp[1]
	st8 r3, r0[r1]
	stw r2, sp[0]
	ld8u r1, r0[r1]
	ldw r3, sp[0]
	shr r0, r1, r3
	ldc r2, 8
	sub r2, r2, r3
	shl r1, r1, r2
	or r0, r0, r1
	zext r0, 8
	retsp 2
	.cc_bottom rotr8.function
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8

	.globl	bswap_16
	.p2align	2
	.type	bswap_16,@function
	.cc_top bswap_16.function,bswap_16
bswap_16:
	entsp 1
	ldc r2, 0
	ldaw r1, sp[0]
	st16 r0, r1[r2]
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
	retsp 1
	.cc_bottom bswap_16.function
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16

	.globl	bswap_32
	.p2align	2
	.type	bswap_32,@function
	.cc_top bswap_32.function,bswap_32
bswap_32:
	entsp 2
	stw r0, sp[1]
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
	retsp 2
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
	stw r1, sp[3]
	stw r0, sp[2]
	ldc r0, 0
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
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB81_1
.LBB81_1:
	ldw r1, sp[0]
	mkmsk r0, 5
	lsu r0, r0, r1
	bt r0, .LBB81_6
	bu .LBB81_2
.LBB81_2:
	ldw r0, sp[1]
	ldw r1, sp[0]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB81_4
	bu .LBB81_3
.LBB81_3:
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB81_7
.LBB81_4:
	bu .LBB81_5
.LBB81_5:
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB81_1
.LBB81_6:
	ldc r0, 0
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
	ldw r0, sp[1]
	bt r0, .LBB82_2
	bu .LBB82_1
.LBB82_1:
	ldc r0, 0
	stw r0, sp[2]
	bu .LBB82_7
.LBB82_2:
	mkmsk r0, 1
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
	ldw r0, sp[1]
	ashr r0, r0, 1
	stw r0, sp[1]
	bu .LBB82_5
.LBB82_5:
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
	entsp 3
	stw r0, sp[2]
	ldw r0, sp[2]
	ldw r1, cp[.LCPI83_0]
	bl __ltsf2
	mkmsk r1, 1
	ashr r0, r0, 32
	stw r1, sp[1]
	bt r0, .LBB83_2
	bu .LBB83_1
.LBB83_1:
	ldw r0, sp[2]
	ldw r1, cp[.LCPI83_1]
	bl __gtsf2
	mov r1, r0
	ldc r0, 0
	lss r0, r0, r1
	stw r0, sp[1]
	bu .LBB83_2
.LBB83_2:
	ldw r0, sp[1]
	zext r0, 1
	retsp 3
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
	entsp 4
	stw r1, sp[3]
	stw r0, sp[2]
	ldw r0, sp[2]
	ldw r1, sp[3]
	mkmsk r2, 32
	ldw r3, cp[.LCPI84_0]
	bl __ltdf2
	mkmsk r1, 1
	ashr r0, r0, 32
	stw r1, sp[1]
	bt r0, .LBB84_2
	bu .LBB84_1
.LBB84_1:
	ldw r0, sp[2]
	ldw r1, sp[3]
	mkmsk r2, 32
	ldw r3, cp[.LCPI84_1]
	bl __gtdf2
	mov r1, r0
	ldc r0, 0
	lss r0, r0, r1
	stw r0, sp[1]
	bu .LBB84_2
.LBB84_2:
	ldw r0, sp[1]
	zext r0, 1
	retsp 4
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
	entsp 4
	stw r1, sp[3]
	stw r0, sp[2]
	ldw r0, sp[2]
	ldw r1, sp[3]
	mkmsk r2, 32
	ldw r3, cp[.LCPI85_0]
	bl __ltdf2
	mkmsk r1, 1
	ashr r0, r0, 32
	stw r1, sp[1]
	bt r0, .LBB85_2
	bu .LBB85_1
.LBB85_1:
	ldw r0, sp[2]
	ldw r1, sp[3]
	mkmsk r2, 32
	ldw r3, cp[.LCPI85_1]
	bl __gtdf2
	mov r1, r0
	ldc r0, 0
	lss r0, r0, r1
	stw r0, sp[1]
	bu .LBB85_2
.LBB85_2:
	ldw r0, sp[1]
	zext r0, 1
	retsp 4
	.cc_bottom gl_isinfl.function
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl

	.globl	_Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
	.cc_top _Qp_itoq.function,_Qp_itoq
_Qp_itoq:
	entsp 3
	stw r0, sp[2]
	stw r1, sp[1]
	ldw r0, sp[1]
	bl __floatsidf
	mov r2, r1
	ldw r1, sp[2]
	stw r2, r1[1]
	stw r0, r1[0]
	retsp 3
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
	entsp 7
	stw r0, sp[6]
	stw r1, sp[5]
	ldw r0, sp[6]
	ldw r1, cp[.LCPI87_0]
	and r1, r0, r1
	ldw r0, cp[.LCPI87_1]
	lss r0, r0, r1
	bt r0, .LBB87_9
	bu .LBB87_1
.LBB87_1:
	ldw r1, sp[6]
	stw r1, sp[3]
	mov r0, r1
	bl __addsf3
	ldw r1, sp[3]
	bl __eqsf2
	bf r0, .LBB87_9
	bu .LBB87_2
.LBB87_2:
	ldw r0, sp[5]
	ashr r0, r0, 32
	ldw r1, cp[.LCPI87_2]
	stw r1, sp[1]
	ldw r1, cp[.LCPI87_3]
	stw r1, sp[2]
	bt r0, .LBB87_11
	ldw r0, sp[1]
	stw r0, sp[2]
.LBB87_11:
	ldw r0, sp[2]
	stw r0, sp[4]
	bu .LBB87_3
.LBB87_3:
	ldw r0, sp[5]
	mkmsk r1, 5
	shr r1, r0, r1
	add r1, r0, r1
	ldw r2, cp[.LCPI87_4]
	and r1, r1, r2
	sub r0, r0, r1
	bf r0, .LBB87_5
	bu .LBB87_4
.LBB87_4:
	ldw r1, sp[4]
	ldw r0, sp[6]
	bl __mulsf3
	stw r0, sp[6]
	bu .LBB87_5
.LBB87_5:
	ldw r0, sp[5]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[5]
	bt r0, .LBB87_7
	bu .LBB87_6
.LBB87_6:
	bu .LBB87_8
.LBB87_7:
	ldw r1, sp[4]
	mov r0, r1
	bl __mulsf3
	stw r0, sp[4]
	bu .LBB87_3
.LBB87_8:
	bu .LBB87_9
.LBB87_9:
	ldw r0, sp[6]
	retsp 7
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
	entsp 12
	stw r1, sp[11]
	stw r0, sp[10]
	stw r2, sp[9]
	ldw r1, sp[10]
	ldw r0, sp[11]
	ldw r2, cp[.LCPI88_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI88_1]
	lss r3, r2, r0
	stw r3, sp[5]
	eq r0, r0, r2
	eq r1, r1, 0
	eq r1, r1, 0
	stw r1, sp[6]
	bt r0, .LBB88_11
	ldw r0, sp[5]
	stw r0, sp[6]
.LBB88_11:
	ldw r0, sp[6]
	bt r0, .LBB88_9
	bu .LBB88_1
.LBB88_1:
	ldw r2, sp[10]
	stw r2, sp[4]
	ldw r3, sp[11]
	stw r3, sp[3]
	mov r0, r2
	mov r1, r3
	bl __adddf3
	ldw r3, sp[3]
	ldw r2, sp[4]
	bl __eqdf2
	bf r0, .LBB88_9
	bu .LBB88_2
.LBB88_2:
	ldw r0, sp[9]
	ashr r0, r0, 32
	ldw r1, cp[.LCPI88_2]
	stw r1, sp[1]
	ldw r1, cp[.LCPI88_3]
	stw r1, sp[2]
	bt r0, .LBB88_13
	ldw r0, sp[1]
	stw r0, sp[2]
.LBB88_13:
	ldw r0, sp[2]
	ldc r1, 0
	stw r1, sp[7]
	stw r0, sp[8]
	bu .LBB88_3
.LBB88_3:
	ldw r0, sp[9]
	mkmsk r1, 5
	shr r1, r0, r1
	add r1, r0, r1
	ldw r2, cp[.LCPI88_4]
	and r1, r1, r2
	sub r0, r0, r1
	bf r0, .LBB88_5
	bu .LBB88_4
.LBB88_4:
	ldw r2, sp[7]
	ldw r3, sp[8]
	ldw r0, sp[10]
	ldw r1, sp[11]
	bl __muldf3
	stw r1, sp[11]
	stw r0, sp[10]
	bu .LBB88_5
.LBB88_5:
	ldw r0, sp[9]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[9]
	ldw r0, sp[9]
	bt r0, .LBB88_7
	bu .LBB88_6
.LBB88_6:
	bu .LBB88_8
.LBB88_7:
	ldw r2, sp[7]
	ldw r3, sp[8]
	mov r0, r2
	mov r1, r3
	bl __muldf3
	stw r1, sp[8]
	stw r0, sp[7]
	bu .LBB88_3
.LBB88_8:
	bu .LBB88_9
.LBB88_9:
	ldw r0, sp[10]
	ldw r1, sp[11]
	retsp 12
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
	entsp 12
	stw r1, sp[11]
	stw r0, sp[10]
	stw r2, sp[9]
	ldw r1, sp[10]
	ldw r0, sp[11]
	ldw r2, cp[.LCPI89_0]
	and r0, r0, r2
	ldw r2, cp[.LCPI89_1]
	lss r3, r2, r0
	stw r3, sp[5]
	eq r0, r0, r2
	eq r1, r1, 0
	eq r1, r1, 0
	stw r1, sp[6]
	bt r0, .LBB89_11
	ldw r0, sp[5]
	stw r0, sp[6]
.LBB89_11:
	ldw r0, sp[6]
	bt r0, .LBB89_9
	bu .LBB89_1
.LBB89_1:
	ldw r2, sp[10]
	stw r2, sp[4]
	ldw r3, sp[11]
	stw r3, sp[3]
	mov r0, r2
	mov r1, r3
	bl __adddf3
	ldw r3, sp[3]
	ldw r2, sp[4]
	bl __eqdf2
	bf r0, .LBB89_9
	bu .LBB89_2
.LBB89_2:
	ldw r0, sp[9]
	ashr r0, r0, 32
	ldw r1, cp[.LCPI89_2]
	stw r1, sp[1]
	ldw r1, cp[.LCPI89_3]
	stw r1, sp[2]
	bt r0, .LBB89_13
	ldw r0, sp[1]
	stw r0, sp[2]
.LBB89_13:
	ldw r0, sp[2]
	ldc r1, 0
	stw r1, sp[7]
	stw r0, sp[8]
	bu .LBB89_3
.LBB89_3:
	ldw r0, sp[9]
	mkmsk r1, 5
	shr r1, r0, r1
	add r1, r0, r1
	ldw r2, cp[.LCPI89_4]
	and r1, r1, r2
	sub r0, r0, r1
	bf r0, .LBB89_5
	bu .LBB89_4
.LBB89_4:
	ldw r2, sp[7]
	ldw r3, sp[8]
	ldw r0, sp[10]
	ldw r1, sp[11]
	bl __muldf3
	stw r1, sp[11]
	stw r0, sp[10]
	bu .LBB89_5
.LBB89_5:
	ldw r0, sp[9]
	mkmsk r1, 5
	shr r1, r0, r1
	add r0, r0, r1
	ashr r0, r0, 1
	stw r0, sp[9]
	ldw r0, sp[9]
	bt r0, .LBB89_7
	bu .LBB89_6
.LBB89_6:
	bu .LBB89_8
.LBB89_7:
	ldw r2, sp[7]
	ldw r3, sp[8]
	mov r0, r2
	mov r1, r3
	bl __muldf3
	stw r1, sp[8]
	stw r0, sp[7]
	bu .LBB89_3
.LBB89_8:
	bu .LBB89_9
.LBB89_9:
	ldw r0, sp[10]
	ldw r1, sp[11]
	retsp 12
	.cc_bottom ldexpl.function
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl

	.globl	memxor
	.p2align	2
	.type	memxor,@function
	.cc_top memxor.function,memxor
memxor:
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	stw r2, sp[2]
	ldw r0, sp[3]
	stw r0, sp[1]
	ldw r0, sp[4]
	stw r0, sp[0]
	bu .LBB90_1
.LBB90_1:
	ldw r0, sp[2]
	bf r0, .LBB90_4
	bu .LBB90_2
.LBB90_2:
	ldw r0, sp[1]
	add r1, r0, 1
	stw r1, sp[1]
	ldc r2, 0
	ld8u r3, r0[r2]
	ldw r1, sp[0]
	add r0, r1, 1
	stw r0, sp[0]
	ld8u r0, r1[r2]
	xor r0, r0, r3
	st8 r0, r1[r2]
	bu .LBB90_3
.LBB90_3:
	ldw r0, sp[2]
	sub r0, r0, 1
	stw r0, sp[2]
	bu .LBB90_1
.LBB90_4:
	ldw r0, sp[4]
	retsp 5
	.cc_bottom memxor.function
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor

	.globl	strncat
	.p2align	2
	.type	strncat,@function
	.cc_top strncat.function,strncat
strncat:
	entsp 7
	stw r0, sp[6]
	stw r1, sp[5]
	stw r2, sp[4]
	ldw r0, sp[6]
	stw r0, sp[2]
	bl strlen
	mov r1, r0
	ldw r0, sp[2]
	add r0, r0, r1
	stw r0, sp[3]
	bu .LBB91_1
.LBB91_1:
	ldw r0, sp[4]
	ldc r1, 0
	stw r1, sp[1]
	bf r0, .LBB91_3
	bu .LBB91_2
.LBB91_2:
	ldw r0, sp[5]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[3]
	st8 r0, r1[r2]
	eq r0, r0, 0
	eq r0, r0, 0
	stw r0, sp[1]
	bu .LBB91_3
.LBB91_3:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB91_6
	bu .LBB91_4
.LBB91_4:
	bu .LBB91_5
.LBB91_5:
	ldw r0, sp[5]
	add r0, r0, 1
	stw r0, sp[5]
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	ldw r0, sp[4]
	sub r0, r0, 1
	stw r0, sp[4]
	bu .LBB91_1
.LBB91_6:
	ldw r0, sp[4]
	bt r0, .LBB91_8
	bu .LBB91_7
.LBB91_7:
	ldw r1, sp[3]
	ldc r0, 0
	st8 r0, r1[r0]
	bu .LBB91_8
.LBB91_8:
	ldw r0, sp[6]
	retsp 7
	.cc_bottom strncat.function
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat

	.globl	strnlen
	.p2align	2
	.type	strnlen,@function
	.cc_top strnlen.function,strnlen
strnlen:
	entsp 4
	stw r0, sp[3]
	stw r1, sp[2]
	ldc r0, 0
	stw r0, sp[1]
	bu .LBB92_1
.LBB92_1:
	ldw r0, sp[1]
	ldw r2, sp[2]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[0]
	bf r0, .LBB92_3
	bu .LBB92_2
.LBB92_2:
	ldw r0, sp[3]
	ldw r1, sp[1]
	ld8u r0, r0[r1]
	eq r0, r0, 0
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB92_3
.LBB92_3:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB92_6
	bu .LBB92_4
.LBB92_4:
	bu .LBB92_5
.LBB92_5:
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB92_1
.LBB92_6:
	ldw r0, sp[1]
	retsp 4
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
	bu .LBB93_1
.LBB93_1:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	bf r0, .LBB93_8
	bu .LBB93_2
.LBB93_2:
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
	ldw r0, sp[0]
	add r1, r0, 1
	stw r1, sp[0]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[2]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	bf r0, .LBB93_6
	bu .LBB93_5
.LBB93_5:
	ldw r0, sp[2]
	stw r0, sp[3]
	bu .LBB93_9
.LBB93_6:
	bu .LBB93_3
.LBB93_7:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB93_1
.LBB93_8:
	ldc r0, 0
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
	entsp 3
	stw r0, sp[2]
	stw r1, sp[1]
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB94_1
.LBB94_1:
	ldw r0, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	ldw r1, sp[1]
	eq r0, r0, r1
	bf r0, .LBB94_3
	bu .LBB94_2
.LBB94_2:
	ldw r0, sp[2]
	stw r0, sp[0]
	bu .LBB94_3
.LBB94_3:
	bu .LBB94_4
.LBB94_4:
	ldw r0, sp[2]
	add r1, r0, 1
	stw r1, sp[2]
	ldc r1, 0
	ld8u r0, r0[r1]
	bt r0, .LBB94_1
	bu .LBB94_5
.LBB94_5:
	ldw r0, sp[0]
	retsp 3
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
	ldw r0, sp[4]
	stw r0, sp[2]
	ldw r0, sp[3]
	bl strlen
	stw r0, sp[1]
	ldw r0, sp[1]
	bt r0, .LBB95_2
	bu .LBB95_1
.LBB95_1:
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
	ldw r0, sp[2]
	ldw r1, sp[3]
	ldw r2, sp[1]
	bl strncmp
	bt r0, .LBB95_6
	bu .LBB95_5
.LBB95_5:
	ldw r0, sp[2]
	stw r0, sp[5]
	bu .LBB95_9
.LBB95_6:
	bu .LBB95_7
.LBB95_7:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB95_3
.LBB95_8:
	ldc r0, 0
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
	entsp 8
	stw r1, sp[5]
	stw r0, sp[4]
	stw r3, sp[3]
	stw r2, sp[2]
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r3, 0
	mov r2, r3
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB96_2
	bu .LBB96_1
.LBB96_1:
	ldw r0, sp[2]
	ldw r1, sp[3]
	ldc r3, 0
	stw r3, sp[1]
	mov r2, r3
	bl __gtdf2
	mov r1, r0
	ldw r0, sp[1]
	lss r0, r0, r1
	bt r0, .LBB96_4
	bu .LBB96_2
.LBB96_2:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r3, 0
	mov r2, r3
	bl __gtdf2
	mkmsk r1, 1
	lss r0, r0, r1
	bt r0, .LBB96_5
	bu .LBB96_3
.LBB96_3:
	ldw r0, sp[2]
	ldw r1, sp[3]
	ldc r3, 0
	mov r2, r3
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB96_5
	bu .LBB96_4
.LBB96_4:
	ldw r1, sp[4]
	ldw r0, sp[5]
	ldw r2, cp[.LCPI96_0]
	xor r0, r0, r2
	stw r1, sp[6]
	stw r0, sp[7]
	bu .LBB96_6
.LBB96_5:
	ldw r0, sp[4]
	ldw r1, sp[5]
	stw r1, sp[7]
	stw r0, sp[6]
	bu .LBB96_6
.LBB96_6:
	ldw r0, sp[6]
	ldw r1, sp[7]
	retsp 8
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
	ldw r0, sp[6]
	stw r0, sp[7]
	bu .LBB97_12
.LBB97_2:
	ldw r0, sp[5]
	ldw r1, sp[3]
	lsu r0, r0, r1
	bf r0, .LBB97_4
	bu .LBB97_3
.LBB97_3:
	ldc r0, 0
	stw r0, sp[7]
	bu .LBB97_12
.LBB97_4:
	ldw r0, sp[6]
	stw r0, sp[2]
	bu .LBB97_5
.LBB97_5:
	ldw r1, sp[2]
	ldw r0, sp[1]
	lsu r0, r0, r1
	bt r0, .LBB97_11
	bu .LBB97_6
.LBB97_6:
	ldw r0, sp[2]
	ldc r2, 0
	ld8u r0, r0[r2]
	ldw r1, sp[4]
	ld8u r1, r1[r2]
	eq r0, r0, r1
	bf r0, .LBB97_9
	bu .LBB97_7
.LBB97_7:
	ldw r0, sp[2]
	add r0, r0, 1
	ldw r1, sp[4]
	add r1, r1, 1
	ldw r2, sp[3]
	sub r2, r2, 1
	bl memcmp
	bt r0, .LBB97_9
	bu .LBB97_8
.LBB97_8:
	ldw r0, sp[2]
	stw r0, sp[7]
	bu .LBB97_12
.LBB97_9:
	bu .LBB97_10
.LBB97_10:
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB97_5
.LBB97_11:
	ldc r0, 0
	stw r0, sp[7]
	bu .LBB97_12
.LBB97_12:
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
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	stw r2, sp[2]
	ldw r0, sp[4]
	stw r0, sp[1]
	ldw r1, sp[3]
	ldw r2, sp[2]
	bl memcpy
	ldw r0, sp[1]
	ldw r1, sp[2]
	add r0, r0, r1
	retsp 5
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
	ldc r3, 0
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
	ldw r0, sp[5]
	ldw r1, cp[.LCPI99_0]
	xor r0, r0, r1
	stw r0, sp[5]
	mkmsk r0, 1
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
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r2, 0
	ldw r3, cp[.LCPI99_2]
	bl __muldf3
	stw r1, sp[5]
	stw r0, sp[4]
	bu .LBB99_4
.LBB99_6:
	bu .LBB99_14
.LBB99_7:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r2, 0
	ldw r3, cp[.LCPI99_2]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB99_13
	bu .LBB99_8
.LBB99_8:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r3, 0
	mov r2, r3
	bl __eqdf2
	bf r0, .LBB99_13
	bu .LBB99_9
.LBB99_9:
	bu .LBB99_10
.LBB99_10:
	ldw r0, sp[4]
	ldw r1, sp[5]
	ldc r2, 0
	ldw r3, cp[.LCPI99_2]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB99_12
	bu .LBB99_11
.LBB99_11:
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
	bu .LBB99_10
.LBB99_12:
	bu .LBB99_13
.LBB99_13:
	bu .LBB99_14
.LBB99_14:
	ldw r0, sp[1]
	ldw r1, sp[3]
	stw r0, r1[0]
	ldw r0, sp[2]
	bf r0, .LBB99_16
	bu .LBB99_15
.LBB99_15:
	ldw r0, sp[5]
	ldw r1, cp[.LCPI99_0]
	xor r0, r0, r1
	stw r0, sp[5]
	bu .LBB99_16
.LBB99_16:
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
	entsp 8
	stw r1, sp[7]
	stw r0, sp[6]
	stw r3, sp[5]
	stw r2, sp[4]
	ldc r0, 0
	stw r0, sp[3]
	stw r0, sp[2]
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[1]
	stw r0, sp[0]
	bu .LBB100_1
.LBB100_1:
	ldw r1, sp[1]
	ldw r0, sp[0]
	or r0, r0, r1
	bf r0, .LBB100_5
	bu .LBB100_2
.LBB100_2:
	ldc r1, 0
	ldaw r0, sp[0]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB100_4
	bu .LBB100_3
.LBB100_3:
	ldw r2, sp[5]
	ldw r3, sp[4]
	ldw r0, sp[3]
	ldw r1, sp[2]
	ldc r11, 0
	ladd r3, r1, r1, r3, r11
	ladd r2, r0, r0, r2, r3
	stw r1, sp[2]
	stw r0, sp[3]
	bu .LBB100_4
.LBB100_4:
	ldw r0, sp[5]
	ldw r1, sp[4]
	mkmsk r2, 5
	shr r3, r1, r2
	shl r0, r0, 1
	or r0, r0, r3
	shl r1, r1, 1
	stw r1, sp[4]
	stw r0, sp[5]
	ldw r0, sp[0]
	ldw r1, sp[1]
	shl r2, r1, r2
	shr r0, r0, 1
	or r0, r0, r2
	shr r1, r1, 1
	stw r1, sp[1]
	stw r0, sp[0]
	bu .LBB100_1
.LBB100_5:
	ldw r0, sp[2]
	ldw r1, sp[3]
	retsp 8
	.cc_bottom __muldi3.function
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3

	.globl	udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
	.cc_top udivmodsi4.function,udivmodsi4
udivmodsi4:
	entsp 7
	stw r0, sp[5]
	stw r1, sp[4]
	stw r2, sp[3]
	mkmsk r0, 1
	stw r0, sp[2]
	ldc r0, 0
	stw r0, sp[1]
	bu .LBB101_1
.LBB101_1:
	ldw r0, sp[4]
	ldw r2, sp[5]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[0]
	bf r0, .LBB101_4
	bu .LBB101_2
.LBB101_2:
	ldw r0, sp[2]
	ldc r1, 0
	stw r1, sp[0]
	bf r0, .LBB101_4
	bu .LBB101_3
.LBB101_3:
	mkmsk r1, 2
	ldaw r0, sp[4]
	or r0, r0, r1
	ldc r1, 0
	ld8u r0, r0[r1]
	ldc r1, 128
	and r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB101_4
.LBB101_4:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB101_6
	bu .LBB101_5
.LBB101_5:
	ldw r0, sp[4]
	shl r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[2]
	shl r0, r0, 1
	stw r0, sp[2]
	bu .LBB101_1
.LBB101_6:
	bu .LBB101_7
.LBB101_7:
	ldw r0, sp[2]
	bf r0, .LBB101_11
	bu .LBB101_8
.LBB101_8:
	ldw r0, sp[5]
	ldw r1, sp[4]
	lsu r0, r0, r1
	bt r0, .LBB101_10
	bu .LBB101_9
.LBB101_9:
	ldw r1, sp[4]
	ldw r0, sp[5]
	sub r0, r0, r1
	stw r0, sp[5]
	ldw r1, sp[2]
	ldw r0, sp[1]
	or r0, r0, r1
	stw r0, sp[1]
	bu .LBB101_10
.LBB101_10:
	ldw r0, sp[2]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[4]
	shr r0, r0, 1
	stw r0, sp[4]
	bu .LBB101_7
.LBB101_11:
	ldw r0, sp[3]
	bf r0, .LBB101_13
	bu .LBB101_12
.LBB101_12:
	ldw r0, sp[5]
	stw r0, sp[6]
	bu .LBB101_14
.LBB101_13:
	ldw r0, sp[1]
	stw r0, sp[6]
	bu .LBB101_14
.LBB101_14:
	ldw r0, sp[6]
	retsp 7
	.cc_bottom udivmodsi4.function
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4

	.globl	__clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
	.cc_top __clrsbqi2.function,__clrsbqi2
__clrsbqi2:
	entsp 3
	ldc r2, 0
	ldaw r1, sp[1]
	st8 r0, r1[r2]
	mkmsk r0, 1
	bt r0, .LBB102_2
	bu .LBB102_1
.LBB102_1:
	ldc r2, 0
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
	mkmsk r0, 3
	stw r0, sp[2]
	bu .LBB102_5
.LBB102_4:
	ldc r1, 0
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
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB103_2
	bu .LBB103_1
.LBB103_1:
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
	mkmsk r0, 6
	stw r0, sp[5]
	bu .LBB103_5
.LBB103_4:
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
	entsp 3
	stw r0, sp[2]
	stw r1, sp[1]
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB104_1
.LBB104_1:
	ldw r0, sp[2]
	bf r0, .LBB104_5
	bu .LBB104_2
.LBB104_2:
	ldc r1, 0
	ldaw r0, sp[2]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB104_4
	bu .LBB104_3
.LBB104_3:
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	bu .LBB104_4
.LBB104_4:
	ldw r0, sp[2]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	shl r0, r0, 1
	stw r0, sp[1]
	bu .LBB104_1
.LBB104_5:
	ldw r0, sp[0]
	retsp 3
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
	bt r0, .LBB105_2
	bu .LBB105_1
.LBB105_1:
	ldw r1, sp[1]
	ldw r0, sp[0]
	ldw r2, sp[5]
	add r0, r0, r2
	lsu r0, r0, r1
	bf r0, .LBB105_10
	bu .LBB105_2
.LBB105_2:
	ldc r0, 0
	stw r0, sp[4]
	bu .LBB105_3
.LBB105_3:
	ldw r0, sp[4]
	ldw r1, sp[3]
	lsu r0, r0, r1
	bf r0, .LBB105_6
	bu .LBB105_4
.LBB105_4:
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
	bu .LBB105_5
.LBB105_5:
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB105_3
.LBB105_6:
	bu .LBB105_7
.LBB105_7:
	ldw r1, sp[5]
	ldw r0, sp[2]
	lsu r0, r0, r1
	bf r0, .LBB105_9
	bu .LBB105_8
.LBB105_8:
	ldw r0, sp[0]
	ldw r2, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB105_7
.LBB105_9:
	bu .LBB105_14
.LBB105_10:
	bu .LBB105_11
.LBB105_11:
	ldw r0, sp[5]
	sub r1, r0, 1
	stw r1, sp[5]
	bf r0, .LBB105_13
	bu .LBB105_12
.LBB105_12:
	ldw r0, sp[0]
	ldw r2, sp[5]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB105_11
.LBB105_13:
	bu .LBB105_14
.LBB105_14:
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
	bt r0, .LBB106_2
	bu .LBB106_1
.LBB106_1:
	ldw r1, sp[1]
	ldw r0, sp[0]
	ldw r2, sp[4]
	add r0, r0, r2
	lsu r0, r0, r1
	bf r0, .LBB106_9
	bu .LBB106_2
.LBB106_2:
	ldc r0, 0
	stw r0, sp[3]
	bu .LBB106_3
.LBB106_3:
	ldw r0, sp[3]
	ldw r1, sp[2]
	lsu r0, r0, r1
	bf r0, .LBB106_6
	bu .LBB106_4
.LBB106_4:
	ldw r0, sp[5]
	ldw r2, sp[3]
	ld16s r0, r0[r2]
	ldw r1, sp[6]
	st16 r0, r1[r2]
	bu .LBB106_5
.LBB106_5:
	ldw r0, sp[3]
	add r0, r0, 1
	stw r0, sp[3]
	bu .LBB106_3
.LBB106_6:
	ldc r1, 0
	ldaw r0, sp[4]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB106_8
	bu .LBB106_7
.LBB106_7:
	ldw r0, sp[0]
	ldw r1, sp[4]
	sub r2, r1, 1
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB106_8
.LBB106_8:
	bu .LBB106_13
.LBB106_9:
	bu .LBB106_10
.LBB106_10:
	ldw r0, sp[4]
	sub r1, r0, 1
	stw r1, sp[4]
	bf r0, .LBB106_12
	bu .LBB106_11
.LBB106_11:
	ldw r0, sp[0]
	ldw r2, sp[4]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB106_10
.LBB106_12:
	bu .LBB106_13
.LBB106_13:
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
	bt r0, .LBB107_2
	bu .LBB107_1
.LBB107_1:
	ldw r1, sp[1]
	ldw r0, sp[0]
	ldw r2, sp[5]
	add r0, r0, r2
	lsu r0, r0, r1
	bf r0, .LBB107_10
	bu .LBB107_2
.LBB107_2:
	ldc r0, 0
	stw r0, sp[4]
	bu .LBB107_3
.LBB107_3:
	ldw r0, sp[4]
	ldw r1, sp[3]
	lsu r0, r0, r1
	bf r0, .LBB107_6
	bu .LBB107_4
.LBB107_4:
	ldw r0, sp[6]
	ldw r2, sp[4]
	ldw r0, r0[r2]
	ldw r1, sp[7]
	stw r0, r1[r2]
	bu .LBB107_5
.LBB107_5:
	ldw r0, sp[4]
	add r0, r0, 1
	stw r0, sp[4]
	bu .LBB107_3
.LBB107_6:
	bu .LBB107_7
.LBB107_7:
	ldw r1, sp[5]
	ldw r0, sp[2]
	lsu r0, r0, r1
	bf r0, .LBB107_9
	bu .LBB107_8
.LBB107_8:
	ldw r0, sp[0]
	ldw r2, sp[2]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	ldw r0, sp[2]
	add r0, r0, 1
	stw r0, sp[2]
	bu .LBB107_7
.LBB107_9:
	bu .LBB107_14
.LBB107_10:
	bu .LBB107_11
.LBB107_11:
	ldw r0, sp[5]
	sub r1, r0, 1
	stw r1, sp[5]
	bf r0, .LBB107_13
	bu .LBB107_12
.LBB107_12:
	ldw r0, sp[0]
	ldw r2, sp[5]
	ld8u r0, r0[r2]
	ldw r1, sp[1]
	st8 r0, r1[r2]
	bu .LBB107_11
.LBB107_13:
	bu .LBB107_14
.LBB107_14:
	retsp 8
	.cc_bottom __cmovw.function
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw

	.globl	__modi
	.p2align	2
	.type	__modi,@function
	.cc_top __modi.function,__modi
__modi:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, sp[1]
	ldw r1, sp[0]
	rems r0, r0, r1
	retsp 2
	.cc_bottom __modi.function
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi

	.globl	__uitod
	.p2align	2
	.type	__uitod,@function
	.cc_top __uitod.function,__uitod
__uitod:
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	bl __floatunsidf
	retsp 2
	.cc_bottom __uitod.function
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod

	.globl	__uitof
	.p2align	2
	.type	__uitof,@function
	.cc_top __uitof.function,__uitof
__uitof:
	entsp 2
	stw r0, sp[1]
	ldw r0, sp[1]
	bl __floatunsisf
	retsp 2
	.cc_bottom __uitof.function
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof

	.globl	__ulltod
	.p2align	2
	.type	__ulltod,@function
	.cc_top __ulltod.function,__ulltod
__ulltod:
	entsp 3
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, sp[1]
	ldw r1, sp[2]
	bl __floatundidf
	retsp 3
	.cc_bottom __ulltod.function
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod

	.globl	__ulltof
	.p2align	2
	.type	__ulltof,@function
	.cc_top __ulltof.function,__ulltof
__ulltof:
	entsp 3
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, sp[1]
	ldw r1, sp[2]
	bl __floatundisf
	retsp 3
	.cc_bottom __ulltof.function
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof

	.globl	__umodi
	.p2align	2
	.type	__umodi,@function
	.cc_top __umodi.function,__umodi
__umodi:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, sp[1]
	ldw r1, sp[0]
	remu r0, r0, r1
	retsp 2
	.cc_bottom __umodi.function
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi

	.globl	__clzhi2
	.p2align	2
	.type	__clzhi2,@function
	.cc_top __clzhi2.function,__clzhi2
__clzhi2:
	entsp 2
	mov r1, r0
	ldc r0, 0
	ldaw r2, sp[1]
	st16 r1, r2[r0]
	stw r0, sp[0]
	bu .LBB114_1
.LBB114_1:
	ldw r1, sp[0]
	mkmsk r0, 4
	lss r0, r0, r1
	bt r0, .LBB114_6
	bu .LBB114_2
.LBB114_2:
	ldc r1, 0
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
	bu .LBB114_6
.LBB114_4:
	bu .LBB114_5
.LBB114_5:
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB114_1
.LBB114_6:
	ldw r0, sp[0]
	retsp 2
	.cc_bottom __clzhi2.function
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2

	.globl	__ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
	.cc_top __ctzhi2.function,__ctzhi2
__ctzhi2:
	entsp 2
	mov r1, r0
	ldc r0, 0
	ldaw r2, sp[1]
	st16 r1, r2[r0]
	stw r0, sp[0]
	bu .LBB115_1
.LBB115_1:
	ldw r1, sp[0]
	mkmsk r0, 4
	lss r0, r0, r1
	bt r0, .LBB115_6
	bu .LBB115_2
.LBB115_2:
	ldc r1, 0
	ldaw r0, sp[1]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r1, sp[0]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB115_4
	bu .LBB115_3
.LBB115_3:
	bu .LBB115_6
.LBB115_4:
	bu .LBB115_5
.LBB115_5:
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB115_1
.LBB115_6:
	ldw r0, sp[0]
	retsp 2
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
	ldw r0, sp[1]
	ldw r1, cp[.LCPI116_0]
	bl __gesf2
	ashr r0, r0, 32
	bt r0, .LBB116_2
	bu .LBB116_1
.LBB116_1:
	ldw r0, sp[1]
	ldw r1, cp[.LCPI116_1]
	bl __addsf3
	bl __fixsfsi
	ldc r1, 32768
	add r0, r0, r1
	stw r0, sp[2]
	bu .LBB116_3
.LBB116_2:
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
	entsp 3
	mov r1, r0
	ldc r0, 0
	ldaw r2, sp[2]
	st16 r1, r2[r0]
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
	ldc r1, 0
	ldaw r0, sp[2]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r1, sp[1]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB117_4
	bu .LBB117_3
.LBB117_3:
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB117_4
.LBB117_4:
	bu .LBB117_5
.LBB117_5:
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB117_1
.LBB117_6:
	ldw r0, sp[0]
	zext r0, 1
	retsp 3
	.cc_bottom __parityhi2.function
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2

	.globl	__popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
	.cc_top __popcounthi2.function,__popcounthi2
__popcounthi2:
	entsp 3
	mov r1, r0
	ldc r0, 0
	ldaw r2, sp[2]
	st16 r1, r2[r0]
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
	ldc r1, 0
	ldaw r0, sp[2]
	ld16s r0, r0[r1]
	zext r0, 16
	ldw r1, sp[1]
	shr r0, r0, r1
	zext r0, 1
	bf r0, .LBB118_4
	bu .LBB118_3
.LBB118_3:
	ldw r0, sp[0]
	add r0, r0, 1
	stw r0, sp[0]
	bu .LBB118_4
.LBB118_4:
	bu .LBB118_5
.LBB118_5:
	ldw r0, sp[1]
	add r0, r0, 1
	stw r0, sp[1]
	bu .LBB118_1
.LBB118_6:
	ldw r0, sp[0]
	retsp 3
	.cc_bottom __popcounthi2.function
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2

	.globl	__mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
	.cc_top __mulsi3_iq2000.function,__mulsi3_iq2000
__mulsi3_iq2000:
	entsp 3
	stw r0, sp[2]
	stw r1, sp[1]
	ldc r0, 0
	stw r0, sp[0]
	bu .LBB119_1
.LBB119_1:
	ldw r0, sp[2]
	bf r0, .LBB119_5
	bu .LBB119_2
.LBB119_2:
	ldc r1, 0
	ldaw r0, sp[2]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB119_4
	bu .LBB119_3
.LBB119_3:
	ldw r1, sp[1]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	bu .LBB119_4
.LBB119_4:
	ldw r0, sp[2]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[1]
	shl r0, r0, 1
	stw r0, sp[1]
	bu .LBB119_1
.LBB119_5:
	ldw r0, sp[0]
	retsp 3
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
	ldc r0, 0
	stw r0, sp[0]
	ldw r0, sp[2]
	bt r0, .LBB120_2
	bu .LBB120_1
.LBB120_1:
	ldc r0, 0
	stw r0, sp[3]
	bu .LBB120_8
.LBB120_2:
	bu .LBB120_3
.LBB120_3:
	ldw r0, sp[1]
	bf r0, .LBB120_7
	bu .LBB120_4
.LBB120_4:
	ldc r1, 0
	ldaw r0, sp[1]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB120_6
	bu .LBB120_5
.LBB120_5:
	ldw r1, sp[2]
	ldw r0, sp[0]
	add r0, r0, r1
	stw r0, sp[0]
	bu .LBB120_6
.LBB120_6:
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

	.globl	__udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
	.cc_top __udivmodsi4.function,__udivmodsi4
__udivmodsi4:
	entsp 7
	stw r0, sp[5]
	stw r1, sp[4]
	stw r2, sp[3]
	mkmsk r0, 1
	stw r0, sp[2]
	ldc r0, 0
	stw r0, sp[1]
	bu .LBB121_1
.LBB121_1:
	ldw r0, sp[4]
	ldw r2, sp[5]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[0]
	bf r0, .LBB121_4
	bu .LBB121_2
.LBB121_2:
	ldw r0, sp[2]
	ldc r1, 0
	stw r1, sp[0]
	bf r0, .LBB121_4
	bu .LBB121_3
.LBB121_3:
	mkmsk r1, 2
	ldaw r0, sp[4]
	or r0, r0, r1
	ldc r1, 0
	ld8u r0, r0[r1]
	ldc r1, 128
	and r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB121_4
.LBB121_4:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB121_6
	bu .LBB121_5
.LBB121_5:
	ldw r0, sp[4]
	shl r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[2]
	shl r0, r0, 1
	stw r0, sp[2]
	bu .LBB121_1
.LBB121_6:
	bu .LBB121_7
.LBB121_7:
	ldw r0, sp[2]
	bf r0, .LBB121_11
	bu .LBB121_8
.LBB121_8:
	ldw r0, sp[5]
	ldw r1, sp[4]
	lsu r0, r0, r1
	bt r0, .LBB121_10
	bu .LBB121_9
.LBB121_9:
	ldw r1, sp[4]
	ldw r0, sp[5]
	sub r0, r0, r1
	stw r0, sp[5]
	ldw r1, sp[2]
	ldw r0, sp[1]
	or r0, r0, r1
	stw r0, sp[1]
	bu .LBB121_10
.LBB121_10:
	ldw r0, sp[2]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[4]
	shr r0, r0, 1
	stw r0, sp[4]
	bu .LBB121_7
.LBB121_11:
	ldw r0, sp[3]
	bf r0, .LBB121_13
	bu .LBB121_12
.LBB121_12:
	ldw r0, sp[5]
	stw r0, sp[6]
	bu .LBB121_14
.LBB121_13:
	ldw r0, sp[1]
	stw r0, sp[6]
	bu .LBB121_14
.LBB121_14:
	ldw r0, sp[6]
	retsp 7
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
	ldw r0, sp[2]
	ldw r1, sp[1]
	bl __ltsf2
	ashr r0, r0, 32
	bf r0, .LBB122_2
	bu .LBB122_1
.LBB122_1:
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
	mkmsk r0, 1
	stw r0, sp[3]
	bu .LBB122_5
.LBB122_4:
	ldc r0, 0
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
	ldw r0, sp[3]
	ldw r1, sp[4]
	ldw r2, sp[1]
	ldw r3, sp[2]
	bl __ltdf2
	ashr r0, r0, 32
	bf r0, .LBB123_2
	bu .LBB123_1
.LBB123_1:
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
	mkmsk r0, 1
	stw r0, sp[5]
	bu .LBB123_5
.LBB123_4:
	ldc r0, 0
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
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r2, sp[1]
	ldw r3, sp[0]
	ldc r0, 0
	mov r1, r0
	maccs r1, r0, r2, r3
	retsp 2
	.cc_bottom __mspabi_mpysll.function
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll

	.globl	__mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
	.cc_top __mspabi_mpyull.function,__mspabi_mpyull
__mspabi_mpyull:
	entsp 2
	stw r0, sp[1]
	stw r1, sp[0]
	ldw r0, sp[1]
	ldw r1, sp[0]
	ldc r2, 0
	lmul r1, r0, r0, r1, r2, r2
	retsp 2
	.cc_bottom __mspabi_mpyull.function
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull

	.globl	__mulhi3
	.p2align	2
	.type	__mulhi3,@function
	.cc_top __mulhi3.function,__mulhi3
__mulhi3:
	entsp 7
	stw r0, sp[6]
	stw r1, sp[5]
	ldc r0, 0
	stw r0, sp[3]
	stw r0, sp[2]
	ldw r0, sp[5]
	ashr r0, r0, 32
	bf r0, .LBB126_2
	bu .LBB126_1
.LBB126_1:
	ldw r0, sp[5]
	neg r0, r0
	stw r0, sp[5]
	mkmsk r0, 1
	stw r0, sp[3]
	bu .LBB126_2
.LBB126_2:
	ldaw r1, sp[4]
	ldc r0, 0
	st8 r0, r1[r0]
	bu .LBB126_3
.LBB126_3:
	ldw r0, sp[5]
	ldc r1, 0
	stw r1, sp[1]
	bf r0, .LBB126_5
	bu .LBB126_4
.LBB126_4:
	ldc r1, 0
	ldaw r0, sp[4]
	ld8u r0, r0[r1]
	ldc r1, 32
	lsu r0, r0, r1
	stw r0, sp[1]
	bu .LBB126_5
.LBB126_5:
	ldw r0, sp[1]
	zext r0, 1
	bf r0, .LBB126_10
	bu .LBB126_6
.LBB126_6:
	ldc r1, 0
	ldaw r0, sp[5]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB126_8
	bu .LBB126_7
.LBB126_7:
	ldw r1, sp[6]
	ldw r0, sp[2]
	add r0, r0, r1
	stw r0, sp[2]
	bu .LBB126_8
.LBB126_8:
	ldw r0, sp[6]
	shl r0, r0, 1
	stw r0, sp[6]
	ldw r0, sp[5]
	ashr r0, r0, 1
	stw r0, sp[5]
	bu .LBB126_9
.LBB126_9:
	ldc r2, 0
	ldaw r1, sp[4]
	ld8u r0, r1[r2]
	add r0, r0, 1
	st8 r0, r1[r2]
	bu .LBB126_3
.LBB126_10:
	ldw r0, sp[3]
	bf r0, .LBB126_12
	bu .LBB126_11
.LBB126_11:
	ldw r0, sp[2]
	neg r0, r0
	stw r0, sp[0]
	bu .LBB126_13
.LBB126_12:
	ldw r0, sp[2]
	stw r0, sp[0]
	bu .LBB126_13
.LBB126_13:
	ldw r0, sp[0]
	retsp 7
	.cc_bottom __mulhi3.function
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3

	.globl	__divsi3
	.p2align	2
	.type	__divsi3,@function
	.cc_top __divsi3.function,__divsi3
__divsi3:
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	ldc r0, 0
	stw r0, sp[2]
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB127_2
	bu .LBB127_1
.LBB127_1:
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
	ldw r0, sp[1]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB127_6
.LBB127_6:
	ldw r0, sp[1]
	retsp 5
	.cc_bottom __divsi3.function
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3

	.globl	__modsi3
	.p2align	2
	.type	__modsi3,@function
	.cc_top __modsi3.function,__modsi3
__modsi3:
	entsp 5
	stw r0, sp[4]
	stw r1, sp[3]
	ldc r0, 0
	stw r0, sp[2]
	ldw r0, sp[4]
	ashr r0, r0, 32
	bf r0, .LBB128_2
	bu .LBB128_1
.LBB128_1:
	ldw r0, sp[4]
	neg r0, r0
	stw r0, sp[4]
	mkmsk r0, 1
	stw r0, sp[2]
	bu .LBB128_2
.LBB128_2:
	ldw r0, sp[3]
	ashr r0, r0, 32
	bf r0, .LBB128_4
	bu .LBB128_3
.LBB128_3:
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
	ldw r0, sp[1]
	neg r0, r0
	stw r0, sp[1]
	bu .LBB128_6
.LBB128_6:
	ldw r0, sp[1]
	retsp 5
	.cc_bottom __modsi3.function
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3

	.globl	__udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
	.cc_top __udivmodhi4.function,__udivmodhi4
__udivmodhi4:
	entsp 5
	mov r3, r0
	ldc r0, 0
	ldaw r11, sp[4]
	st16 r3, r11[r0]
	ldaw r3, sp[3]
	st16 r1, r3[r0]
	stw r2, sp[2]
	ldaw r2, sp[1]
	mkmsk r1, 1
	st16 r1, r2[r0]
	ldaw r1, sp[1]
	st16 r0, r1[r0]
	bu .LBB129_1
.LBB129_1:
	ldc r1, 0
	ldaw r0, sp[3]
	ld16s r0, r0[r1]
	zext r0, 16
	ldaw r2, sp[4]
	ld16s r2, r2[r1]
	zext r2, 16
	lss r0, r0, r2
	stw r1, sp[0]
	bf r0, .LBB129_4
	bu .LBB129_2
.LBB129_2:
	ldc r1, 0
	ldaw r0, sp[1]
	ld16s r0, r0[r1]
	zext r0, 16
	stw r1, sp[0]
	bf r0, .LBB129_4
	bu .LBB129_3
.LBB129_3:
	ldc r1, 0
	ldaw r0, sp[3]
	ld16s r0, r0[r1]
	ldc r1, 32768
	and r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB129_4
.LBB129_4:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB129_6
	bu .LBB129_5
.LBB129_5:
	ldc r2, 0
	ldaw r1, sp[3]
	ld16s r0, r1[r2]
	shl r0, r0, 1
	st16 r0, r1[r2]
	ldaw r1, sp[1]
	ld16s r0, r1[r2]
	shl r0, r0, 1
	st16 r0, r1[r2]
	bu .LBB129_1
.LBB129_6:
	bu .LBB129_7
.LBB129_7:
	ldc r1, 0
	ldaw r0, sp[1]
	ld16s r0, r0[r1]
	zext r0, 16
	bf r0, .LBB129_11
	bu .LBB129_8
.LBB129_8:
	ldc r2, 0
	ldaw r0, sp[4]
	ld16s r0, r0[r2]
	zext r0, 16
	ldaw r1, sp[3]
	ld16s r1, r1[r2]
	zext r1, 16
	lss r0, r0, r1
	bt r0, .LBB129_10
	bu .LBB129_9
.LBB129_9:
	ldc r2, 0
	ldaw r0, sp[3]
	ld16s r3, r0[r2]
	ldaw r1, sp[4]
	ld16s r0, r1[r2]
	sub r0, r0, r3
	st16 r0, r1[r2]
	ldaw r0, sp[1]
	ld16s r3, r0[r2]
	ldaw r1, sp[1]
	ld16s r0, r1[r2]
	or r0, r0, r3
	st16 r0, r1[r2]
	bu .LBB129_10
.LBB129_10:
	ldc r2, 0
	ldaw r1, sp[1]
	ld16s r0, r1[r2]
	ldc r3, 65534
	and r0, r0, r3
	shr r0, r0, 1
	st16 r0, r1[r2]
	ldaw r1, sp[3]
	ld16s r0, r1[r2]
	and r0, r0, r3
	shr r0, r0, 1
	st16 r0, r1[r2]
	bu .LBB129_7
.LBB129_11:
	ldw r0, sp[2]
	bf r0, .LBB129_13
	bu .LBB129_12
.LBB129_12:
	ldc r2, 0
	ldaw r0, sp[4]
	ld16s r0, r0[r2]
	ldaw r1, sp[4]
	st16 r0, r1[r2]
	bu .LBB129_14
.LBB129_13:
	ldc r2, 0
	ldaw r0, sp[1]
	ld16s r0, r0[r2]
	ldaw r1, sp[4]
	st16 r0, r1[r2]
	bu .LBB129_14
.LBB129_14:
	ldc r1, 0
	ldaw r0, sp[4]
	ld16s r0, r0[r1]
	zext r0, 16
	retsp 5
	.cc_bottom __udivmodhi4.function
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4

	.globl	__udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
	.cc_top __udivmodsi4_libgcc.function,__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	entsp 7
	stw r0, sp[5]
	stw r1, sp[4]
	stw r2, sp[3]
	mkmsk r0, 1
	stw r0, sp[2]
	ldc r0, 0
	stw r0, sp[1]
	bu .LBB130_1
.LBB130_1:
	ldw r0, sp[4]
	ldw r2, sp[5]
	ldc r1, 0
	lsu r0, r0, r2
	stw r1, sp[0]
	bf r0, .LBB130_4
	bu .LBB130_2
.LBB130_2:
	ldw r0, sp[2]
	ldc r1, 0
	stw r1, sp[0]
	bf r0, .LBB130_4
	bu .LBB130_3
.LBB130_3:
	mkmsk r1, 2
	ldaw r0, sp[4]
	or r0, r0, r1
	ldc r1, 0
	ld8u r0, r0[r1]
	ldc r1, 128
	and r0, r0, r1
	eq r0, r0, 0
	stw r0, sp[0]
	bu .LBB130_4
.LBB130_4:
	ldw r0, sp[0]
	zext r0, 1
	bf r0, .LBB130_6
	bu .LBB130_5
.LBB130_5:
	ldw r0, sp[4]
	shl r0, r0, 1
	stw r0, sp[4]
	ldw r0, sp[2]
	shl r0, r0, 1
	stw r0, sp[2]
	bu .LBB130_1
.LBB130_6:
	bu .LBB130_7
.LBB130_7:
	ldw r0, sp[2]
	bf r0, .LBB130_11
	bu .LBB130_8
.LBB130_8:
	ldw r0, sp[5]
	ldw r1, sp[4]
	lsu r0, r0, r1
	bt r0, .LBB130_10
	bu .LBB130_9
.LBB130_9:
	ldw r1, sp[4]
	ldw r0, sp[5]
	sub r0, r0, r1
	stw r0, sp[5]
	ldw r1, sp[2]
	ldw r0, sp[1]
	or r0, r0, r1
	stw r0, sp[1]
	bu .LBB130_10
.LBB130_10:
	ldw r0, sp[2]
	shr r0, r0, 1
	stw r0, sp[2]
	ldw r0, sp[4]
	shr r0, r0, 1
	stw r0, sp[4]
	bu .LBB130_7
.LBB130_11:
	ldw r0, sp[3]
	bf r0, .LBB130_13
	bu .LBB130_12
.LBB130_12:
	ldw r0, sp[5]
	stw r0, sp[6]
	bu .LBB130_14
.LBB130_13:
	ldw r0, sp[1]
	stw r0, sp[6]
	bu .LBB130_14
.LBB130_14:
	ldw r0, sp[6]
	retsp 7
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
	ldc r1, 32
	stw r1, sp[4]
	ldw r0, sp[6]
	ldw r2, sp[7]
	stw r2, sp[3]
	stw r0, sp[2]
	ldc r2, 0
	ldaw r0, sp[5]
	ld8u r0, r0[r2]
	and r0, r0, r1
	bf r0, .LBB131_2
	bu .LBB131_1
.LBB131_1:
	ldc r0, 0
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
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB131_6
.LBB131_4:
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
	ldc r1, 32
	stw r1, sp[4]
	ldw r0, sp[6]
	ldw r2, sp[7]
	stw r2, sp[3]
	stw r0, sp[2]
	ldc r2, 0
	ldaw r0, sp[5]
	ld8u r0, r0[r2]
	and r0, r0, r1
	bf r0, .LBB132_2
	bu .LBB132_1
.LBB132_1:
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
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB132_6
.LBB132_4:
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
	entsp 3
	stw r4, sp[2]
	stw r1, sp[1]
	stw r0, sp[0]
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
	ldw r4, sp[2]
	retsp 3
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
	entsp 1
	stw r0, sp[0]
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
	retsp 1
	.cc_bottom __bswapsi2.function
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2

	.globl	__clzsi2
	.p2align	2
	.type	__clzsi2,@function
	.cc_top __clzsi2.function,__clzsi2
__clzsi2:
	entsp 4
	stw r0, sp[3]
	ldw r0, sp[3]
	stw r0, sp[2]
	ldc r3, 2
	ldaw r0, sp[2]
	or r2, r0, r3
	ldc r1, 0
	ld16s r2, r2[r1]
	shl r2, r2, 16
	eq r2, r2, 0
	shl r2, r2, 4
	stw r2, sp[1]
	ldw r11, sp[1]
	ldc r2, 16
	sub r11, r2, r11
	ldw r2, sp[2]
	shr r2, r2, r11
	stw r2, sp[2]
	ldw r2, sp[1]
	stw r2, sp[0]
	mkmsk r2, 1
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
	retsp 4
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
	ldc r0, 0
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_2:
	ldw r1, sp[3]
	ldw r0, sp[1]
	lss r0, r0, r1
	bf r0, .LBB136_4
	bu .LBB136_3
.LBB136_3:
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
	ldc r0, 0
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_6:
	ldw r1, sp[2]
	ldw r0, sp[0]
	lsu r0, r0, r1
	bf r0, .LBB136_8
	bu .LBB136_7
.LBB136_7:
	ldc r0, 2
	stw r0, sp[8]
	bu .LBB136_9
.LBB136_8:
	mkmsk r0, 1
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
	entsp 5
	stw r1, sp[4]
	stw r0, sp[3]
	stw r3, sp[2]
	stw r2, sp[1]
	ldw r1, sp[4]
	ldw r0, sp[3]
	ldw r3, sp[2]
	ldw r2, sp[1]
	bl __cmpdi2
	sub r0, r0, 1
	retsp 5
	.cc_bottom __aeabi_lcmp.function
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp

	.globl	__ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
	.cc_top __ctzsi2.function,__ctzsi2
__ctzsi2:
	entsp 4
	stw r0, sp[3]
	ldw r0, sp[3]
	stw r0, sp[2]
	ldc r1, 0
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
	retsp 4
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
	ldc r1, 32
	stw r1, sp[4]
	ldw r0, sp[6]
	ldw r2, sp[7]
	stw r2, sp[3]
	stw r0, sp[2]
	ldc r2, 0
	ldaw r0, sp[5]
	ld8u r0, r0[r2]
	and r0, r0, r1
	bf r0, .LBB139_2
	bu .LBB139_1
.LBB139_1:
	ldc r0, 0
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
	ldw r0, sp[6]
	ldw r1, sp[7]
	stw r1, sp[9]
	stw r0, sp[8]
	bu .LBB139_6
.LBB139_4:
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
	stw r0, sp[6]
	stw r1, sp[5]
	ldc r0, 16
	stw r0, sp[2]
	mkmsk r0, 16
	stw r0, sp[1]
	ldc r2, 0
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
	entsp 11
	stw r1, sp[10]
	stw r0, sp[9]
	stw r3, sp[8]
	stw r2, sp[7]
	ldw r0, sp[9]
	ldw r1, sp[10]
	stw r1, sp[6]
	stw r0, sp[5]
	ldw r0, sp[7]
	ldw r1, sp[8]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, sp[5]
	ldw r1, sp[3]
	bl __muldsi3
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, sp[6]
	ldw r1, sp[3]
	ldw r2, sp[5]
	ldw r3, sp[4]
	mul r2, r2, r3
	ldw r3, sp[2]
	lmul r1, r0, r0, r1, r2, r3
	stw r0, sp[2]
	ldw r0, sp[1]
	ldw r1, sp[2]
	retsp 11
	.cc_bottom __muldi3_compiler_rt.function
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt

	.globl	__negdi2
	.p2align	2
	.type	__negdi2,@function
	.cc_top __negdi2.function,__negdi2
__negdi2:
	entsp 2
	stw r1, sp[1]
	stw r0, sp[0]
	ldw r2, sp[1]
	ldw r0, sp[0]
	ldc r1, 0
	lsub r3, r0, r1, r0, r1
	lsub r2, r1, r1, r2, r3
	retsp 2
	.cc_bottom __negdi2.function
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2

	.globl	__paritydi2
	.p2align	2
	.type	__paritydi2,@function
	.cc_top __paritydi2.function,__paritydi2
__paritydi2:
	entsp 5
	stw r1, sp[4]
	stw r0, sp[3]
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
	retsp 5
	.cc_bottom __paritydi2.function
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2

	.globl	__paritysi2
	.p2align	2
	.type	__paritysi2,@function
	.cc_top __paritysi2.function,__paritysi2
__paritysi2:
	entsp 2
	stw r0, sp[1]
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
	retsp 2
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
	entsp 6
	stw r4, sp[5]
	stw r1, sp[4]
	stw r0, sp[3]
	ldw r0, sp[3]
	ldw r1, sp[4]
	stw r1, sp[2]
	stw r0, sp[1]
	ldw r0, sp[2]
	ldw r1, sp[1]
	shr r2, r1, 1
	shr r3, r0, 1
	ldw r11, cp[.LCPI145_0]
	and r3, r3, r11
	and r11, r2, r11
	ldc r2, 0
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
	ldw r4, sp[5]
	retsp 6
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
	entsp 2
	stw r0, sp[1]
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
	retsp 2
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
	ldw r0, sp[6]
	mkmsk r1, 5
	shr r0, r0, r1
	stw r0, sp[5]
	ldw r0, cp[.LCPI147_0]
	stw r0, sp[4]
	ldc r0, 0
	stw r0, sp[3]
	bu .LBB147_1
.LBB147_1:
	ldc r1, 0
	ldaw r0, sp[6]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB147_3
	bu .LBB147_2
.LBB147_2:
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
	bu .LBB147_6
.LBB147_5:
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
	ldw r2, sp[3]
	ldw r3, sp[4]
	ldc r0, 0
	ldw r1, cp[.LCPI147_0]
	bl __divdf3
	stw r0, sp[1]
	stw r1, sp[2]
	bu .LBB147_9
.LBB147_8:
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
	ldw r0, sp[4]
	mkmsk r1, 5
	shr r0, r0, r1
	stw r0, sp[3]
	ldw r0, cp[.LCPI148_0]
	stw r0, sp[2]
	bu .LBB148_1
.LBB148_1:
	ldc r1, 0
	ldaw r0, sp[4]
	ld8u r0, r0[r1]
	zext r0, 1
	bf r0, .LBB148_3
	bu .LBB148_2
.LBB148_2:
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
	bu .LBB148_6
.LBB148_5:
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
	ldw r1, sp[2]
	ldw r0, cp[.LCPI148_0]
	bl __divsf3
	stw r0, sp[1]
	bu .LBB148_9
.LBB148_8:
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
	ldc r0, 0
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_2:
	ldw r1, sp[3]
	ldw r0, sp[1]
	lsu r0, r0, r1
	bf r0, .LBB149_4
	bu .LBB149_3
.LBB149_3:
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
	ldc r0, 0
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_6:
	ldw r1, sp[2]
	ldw r0, sp[0]
	lsu r0, r0, r1
	bf r0, .LBB149_8
	bu .LBB149_7
.LBB149_7:
	ldc r0, 2
	stw r0, sp[8]
	bu .LBB149_9
.LBB149_8:
	mkmsk r0, 1
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
	entsp 5
	stw r1, sp[4]
	stw r0, sp[3]
	stw r3, sp[2]
	stw r2, sp[1]
	ldw r1, sp[4]
	ldw r0, sp[3]
	ldw r3, sp[2]
	ldw r2, sp[1]
	bl __ucmpdi2
	sub r0, r0, 1
	retsp 5
	.cc_bottom __aeabi_ulcmp.function
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp

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
	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	".note.GNU-stack","",@progbits
