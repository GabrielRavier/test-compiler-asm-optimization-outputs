	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	strongarm
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 2	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 1	@ Tag_ABI_PCS_R9_use
	.file	"mini-libc.c"
	.globl	memmove                         @ -- Begin function memmove
	.p2align	2
	.type	memmove,%function
	.code	32                              @ @memmove
memmove:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bhs	.LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	r1, [sp, #8]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB0_2
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp]
	sub	r1, r0, #1
	str	r1, [sp]
	ldrb	r0, [r0, #-1]
	ldr	r1, [sp, #4]
	sub	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1, #-1]
	b	.LBB0_4
.LBB0_4:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_13
.LBB0_6:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	beq	.LBB0_12
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [sp]
	add	r1, r0, #1
	str	r1, [sp]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	b	.LBB0_10
.LBB0_10:                               @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_8
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
	.fnend
                                        @ -- End function
	.globl	memccpy                         @ -- Begin function memccpy
	.p2align	2
	.type	memccpy,%function
	.code	32                              @ @memccpy
memccpy:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-12]
	str	r0, [sp, #4]
	ldrb	r0, [sp, #16]
	str	r0, [sp, #16]
	b	.LBB1_1
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]
	ldrb	r0, [r0]
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	ldr	r1, [sp, #16]
	subs	r0, r0, r1
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB1_3
.LBB1_3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_6
	b	.LBB1_4
.LBB1_4:                                @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_5
.LBB1_5:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB1_1
.LBB1_6:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB1_8
	b	.LBB1_7
.LBB1_7:
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB1_9
.LBB1_8:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_9
.LBB1_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
	.fnend
                                        @ -- End function
	.globl	memchr                          @ -- Begin function memchr
	.p2align	2
	.type	memchr,%function
	.code	32                              @ @memchr
memchr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #8]
	ldrb	r0, [r11, #-8]
	str	r0, [r11, #-8]
	b	.LBB2_1
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB2_3
	b	.LBB2_2
.LBB2_2:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	ldr	r1, [r11, #-8]
	subs	r0, r0, r1
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB2_3
.LBB2_3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB2_6
	b	.LBB2_4
.LBB2_4:                                @   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_5
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB2_1
.LBB2_6:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB2_8
	b	.LBB2_7
.LBB2_7:
	ldr	r0, [sp, #8]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB2_9
.LBB2_8:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB2_9
.LBB2_9:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
	.fnend
                                        @ -- End function
	.globl	memcmp                          @ -- Begin function memcmp
	.p2align	2
	.type	memcmp,%function
	.code	32                              @ @memcmp
memcmp:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #28
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]
	b	.LBB3_1
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB3_3
	b	.LBB3_2
.LBB3_2:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #12]
	ldrb	r0, [r0]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB3_3
.LBB3_3:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB3_6
	b	.LBB3_4
.LBB3_4:                                @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_5
.LBB3_5:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r11, #-12]
	sub	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB3_1
.LBB3_6:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB3_8
	b	.LBB3_7
.LBB3_7:
	ldr	r0, [sp, #12]
	ldrb	r0, [r0]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB3_9
.LBB3_8:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB3_9
.LBB3_9:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	b	.LBB4_1
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB4_4
	b	.LBB4_2
.LBB4_2:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp]
	add	r1, r0, #1
	str	r1, [sp]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	b	.LBB4_3
.LBB4_3:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB4_1
.LBB4_4:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
	.fnend
                                        @ -- End function
	.globl	memrchr                         @ -- Begin function memrchr
	.p2align	2
	.type	memrchr,%function
	.code	32                              @ @memrchr
memrchr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldrb	r0, [sp, #8]
	str	r0, [sp, #8]
	b	.LBB5_1
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	str	r1, [sp, #4]
	cmp	r0, #0
	beq	.LBB5_5
	b	.LBB5_2
.LBB5_2:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bne	.LBB5_4
	b	.LBB5_3
.LBB5_3:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	str	r0, [r11, #-4]
	b	.LBB5_6
.LBB5_4:                                @   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_1
.LBB5_5:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB5_6
.LBB5_6:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	b	.LBB6_1
.LBB6_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB6_4
	b	.LBB6_2
.LBB6_2:                                @   in Loop: Header=BB6_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	b	.LBB6_3
.LBB6_3:                                @   in Loop: Header=BB6_1 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB6_1
.LBB6_4:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
	.fnend
                                        @ -- End function
	.globl	stpcpy                          @ -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,%function
	.code	32                              @ @stpcpy
stpcpy:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.LBB7_1
.LBB7_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	cmp	r0, #0
	beq	.LBB7_4
	b	.LBB7_2
.LBB7_2:                                @   in Loop: Header=BB7_1 Depth=1
	b	.LBB7_3
.LBB7_3:                                @   in Loop: Header=BB7_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB7_1
.LBB7_4:
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
	.fnend
                                        @ -- End function
	.globl	strchrnul                       @ -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,%function
	.code	32                              @ @strchrnul
strchrnul:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	str	r1, [sp, #4]
	ldrb	r0, [sp, #4]
	str	r0, [sp, #4]
	b	.LBB8_1
.LBB8_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB8_3
	b	.LBB8_2
.LBB8_2:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	subs	r0, r0, r1
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB8_3
.LBB8_3:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB8_6
	b	.LBB8_4
.LBB8_4:                                @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_5
.LBB8_5:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB8_1
.LBB8_6:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
	.fnend
                                        @ -- End function
	.globl	strchr                          @ -- Begin function strchr
	.p2align	2
	.type	strchr,%function
	.code	32                              @ @strchr
strchr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [sp, #4]
	str	r1, [sp]
	b	.LBB9_1
.LBB9_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldrb	r0, [r0]
	ldr	r1, [sp]
	cmp	r0, r1
	bne	.LBB9_3
	b	.LBB9_2
.LBB9_2:
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB9_6
.LBB9_3:                                @   in Loop: Header=BB9_1 Depth=1
	b	.LBB9_4
.LBB9_4:                                @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #4]
	add	r1, r0, #1
	str	r1, [sp, #4]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB9_1
	b	.LBB9_5
.LBB9_5:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB9_6
.LBB9_6:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
	.fnend
                                        @ -- End function
	.globl	strcmp                          @ -- Begin function strcmp
	.p2align	2
	.type	strcmp,%function
	.code	32                              @ @strcmp
strcmp:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	str	r1, [sp, #4]
	b	.LBB10_1
.LBB10_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r1, [r0]
	ldr	r0, [sp, #4]
	ldrb	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bne	.LBB10_3
	b	.LBB10_2
.LBB10_2:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB10_3
.LBB10_3:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB10_6
	b	.LBB10_4
.LBB10_4:                               @   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_5
.LBB10_5:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB10_1
.LBB10_6:
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
	.fnend
                                        @ -- End function
	.globl	strlen                          @ -- Begin function strlen
	.p2align	2
	.type	strlen,%function
	.code	32                              @ @strlen
strlen:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	b	.LBB11_1
.LBB11_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB11_4
	b	.LBB11_2
.LBB11_2:                               @   in Loop: Header=BB11_1 Depth=1
	b	.LBB11_3
.LBB11_3:                               @   in Loop: Header=BB11_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB11_1
.LBB11_4:
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	sub	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
	.fnend
                                        @ -- End function
	.globl	strncmp                         @ -- Begin function strncmp
	.p2align	2
	.type	strncmp,%function
	.code	32                              @ @strncmp
strncmp:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-12]
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	sub	r1, r0, #1
	str	r1, [sp, #12]
	cmp	r0, #0
	bne	.LBB12_2
	b	.LBB12_1
.LBB12_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB12_11
.LBB12_2:
	b	.LBB12_3
.LBB12_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB12_7
	b	.LBB12_4
.LBB12_4:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r0, [sp, #4]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB12_7
	b	.LBB12_5
.LBB12_5:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB12_7
	b	.LBB12_6
.LBB12_6:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB12_7
.LBB12_7:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB12_10
	b	.LBB12_8
.LBB12_8:                               @   in Loop: Header=BB12_3 Depth=1
	b	.LBB12_9
.LBB12_9:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB12_3
.LBB12_10:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	str	r0, [r11, #-4]
	b	.LBB12_11
.LBB12_11:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
	.fnend
                                        @ -- End function
	.globl	swab                            @ -- Begin function swab
	.p2align	2
	.type	swab,%function
	.code	32                              @ @swab
swab:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	b	.LBB13_1
.LBB13_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #2
	blt	.LBB13_4
	b	.LBB13_2
.LBB13_2:                               @   in Loop: Header=BB13_1 Depth=1
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #1]
	ldr	r1, [sp]
	strb	r0, [r1]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0]
	ldr	r1, [sp]
	strb	r0, [r1, #1]
	ldr	r0, [sp]
	add	r0, r0, #2
	str	r0, [sp]
	ldr	r0, [sp, #4]
	add	r0, r0, #2
	str	r0, [sp, #4]
	b	.LBB13_3
.LBB13_3:                               @   in Loop: Header=BB13_1 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #2
	str	r0, [sp, #8]
	b	.LBB13_1
.LBB13_4:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
	.fnend
                                        @ -- End function
	.globl	isalpha                         @ -- Begin function isalpha
	.p2align	2
	.type	isalpha,%function
	.code	32                              @ @isalpha
isalpha:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	orr	r0, r0, #32
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #26
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
	.fnend
                                        @ -- End function
	.globl	isascii                         @ -- Begin function isascii
	.p2align	2
	.type	isascii,%function
	.code	32                              @ @isascii
isascii:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	bic	r0, r0, #127
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
	.fnend
                                        @ -- End function
	.globl	isblank                         @ -- Begin function isblank
	.p2align	2
	.type	isblank,%function
	.code	32                              @ @isblank
isblank:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB16_2
	b	.LBB16_1
.LBB16_1:
	ldr	r0, [sp, #4]
	sub	r0, r0, #9
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB16_2
.LBB16_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
	.fnend
                                        @ -- End function
	.globl	iscntrl                         @ -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,%function
	.code	32                              @ @iscntrl
iscntrl:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp]                        @ 4-byte Spill
	blo	.LBB17_2
	b	.LBB17_1
.LBB17_1:
	ldr	r0, [sp, #4]
	sub	r0, r0, #127
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB17_2
.LBB17_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
	.fnend
                                        @ -- End function
	.globl	isdigit                         @ -- Begin function isdigit
	.p2align	2
	.type	isdigit,%function
	.code	32                              @ @isdigit
isdigit:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r1, r0, #48
	mov	r0, #0
	cmp	r1, #10
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
	.fnend
                                        @ -- End function
	.globl	isgraph                         @ -- Begin function isgraph
	.p2align	2
	.type	isgraph,%function
	.code	32                              @ @isgraph
isgraph:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r1, r0, #33
	mov	r0, #0
	cmp	r1, #94
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
	.fnend
                                        @ -- End function
	.globl	islower                         @ -- Begin function islower
	.p2align	2
	.type	islower,%function
	.code	32                              @ @islower
islower:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #26
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
	.fnend
                                        @ -- End function
	.globl	isprint                         @ -- Begin function isprint
	.p2align	2
	.type	isprint,%function
	.code	32                              @ @isprint
isprint:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r1, r0, #32
	mov	r0, #0
	cmp	r1, #95
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
	.fnend
                                        @ -- End function
	.globl	isspace                         @ -- Begin function isspace
	.p2align	2
	.type	isspace,%function
	.code	32                              @ @isspace
isspace:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB22_2
	b	.LBB22_1
.LBB22_1:
	ldr	r0, [sp, #4]
	sub	r1, r0, #9
	mov	r0, #0
	cmp	r1, #5
	movlo	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB22_2
.LBB22_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
	.fnend
                                        @ -- End function
	.globl	isupper                         @ -- Begin function isupper
	.p2align	2
	.type	isupper,%function
	.code	32                              @ @isupper
isupper:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r1, r0, #65
	mov	r0, #0
	cmp	r1, #26
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
	.fnend
                                        @ -- End function
	.globl	iswcntrl                        @ -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,%function
	.code	32                              @ @iswcntrl
iswcntrl:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp]                        @ 4-byte Spill
	blo	.LBB24_4
	b	.LBB24_1
.LBB24_1:
	ldr	r0, [sp, #4]
	sub	r1, r0, #127
	mov	r0, #1
	cmp	r1, #33
	str	r0, [sp]                        @ 4-byte Spill
	blo	.LBB24_4
	b	.LBB24_2
.LBB24_2:
	ldr	r0, [sp, #4]
	mvn	r1, #39
	sub	r1, r1, #8192
	add	r1, r0, r1
	mov	r0, #1
	cmp	r1, #2
	str	r0, [sp]                        @ 4-byte Spill
	blo	.LBB24_4
	b	.LBB24_3
.LBB24_3:
	ldr	r0, [sp, #4]
	mvn	r1, #248
	sub	r1, r1, #65280
	add	r1, r0, r1
	mov	r0, #0
	cmp	r1, #3
	movlo	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB24_4
.LBB24_4:
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
	.fnend
                                        @ -- End function
	.globl	iswdigit                        @ -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,%function
	.code	32                              @ @iswdigit
iswdigit:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r1, r0, #48
	mov	r0, #0
	cmp	r1, #10
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
	.fnend
                                        @ -- End function
	.globl	iswprint                        @ -- Begin function iswprint
	.p2align	2
	.type	iswprint,%function
	.code	32                              @ @iswprint
iswprint:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #254
	bhi	.LBB26_2
	b	.LBB26_1
.LBB26_1:
	ldr	r0, [sp]
	add	r0, r0, #1
	and	r1, r0, #127
	mov	r0, #0
	cmp	r1, #32
	movgt	r0, #1
	str	r0, [sp, #4]
	b	.LBB26_10
.LBB26_2:
	ldr	r0, [sp]
	mov	r1, #40
	orr	r1, r1, #8192
	cmp	r0, r1
	blo	.LBB26_5
	b	.LBB26_3
.LBB26_3:
	ldr	r0, [sp]
	mvn	r1, #41
	sub	r1, r1, #8192
	add	r0, r0, r1
	mov	r1, #214
	orr	r1, r1, #46848
	cmp	r0, r1
	blo	.LBB26_5
	b	.LBB26_4
.LBB26_4:
	ldr	r0, [sp]
	sub	r0, r0, #57344
	mov	r1, #1016
	orr	r1, r1, #7168
	cmp	r0, r1
	bhi	.LBB26_6
	b	.LBB26_5
.LBB26_5:
	mov	r0, #1
	str	r0, [sp, #4]
	b	.LBB26_10
.LBB26_6:
	ldr	r0, [sp]
	ldr	r1, .LCPI26_0
	add	r0, r0, r1
	mov	r1, #3
	orr	r1, r1, #1048576
	cmp	r0, r1
	bhi	.LBB26_8
	b	.LBB26_7
.LBB26_7:
	ldr	r0, [sp]
	mov	r1, #254
	orr	r1, r1, #65280
	and	r0, r0, r1
	cmp	r0, r1
	bne	.LBB26_9
	b	.LBB26_8
.LBB26_8:
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB26_10
.LBB26_9:
	mov	r0, #1
	str	r0, [sp, #4]
	b	.LBB26_10
.LBB26_10:
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI26_0:
	.long	4294901764                      @ 0xffff0004
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
	.fnend
                                        @ -- End function
	.globl	iswxdigit                       @ -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,%function
	.code	32                              @ @iswxdigit
iswxdigit:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	sub	r1, r0, #48
	mov	r0, #1
	cmp	r1, #10
	str	r0, [sp]                        @ 4-byte Spill
	blo	.LBB27_2
	b	.LBB27_1
.LBB27_1:
	ldr	r0, [sp, #4]
	orr	r0, r0, #32
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #6
	movlo	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB27_2
.LBB27_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
	.fnend
                                        @ -- End function
	.globl	toascii                         @ -- Begin function toascii
	.p2align	2
	.type	toascii,%function
	.code	32                              @ @toascii
toascii:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	and	r0, r0, #127
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
	.fnend
                                        @ -- End function
	.globl	fdim                            @ -- Begin function fdim
	.p2align	2
	.type	fdim,%function
	.code	32                              @ @fdim
fdim:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB29_2
	b	.LBB29_1
.LBB29_1:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB29_8
.LBB29_2:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB29_4
	b	.LBB29_3
.LBB29_3:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB29_8
.LBB29_4:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI29_0
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #1
	blt	.LBB29_6
	b	.LBB29_5
.LBB29_5:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI29_1
	mov	lr, pc
	mov	pc, r4
	str	r0, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	b	.LBB29_7
.LBB29_6:
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB29_7
.LBB29_7:
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB29_8
.LBB29_8:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.9:
.LCPI29_0:
	.long	__gtdf2
.LCPI29_1:
	.long	__subdf3
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
	.fnend
                                        @ -- End function
	.globl	fdimf                           @ -- Begin function fdimf
	.p2align	2
	.type	fdimf,%function
	.code	32                              @ @fdimf
fdimf:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI30_0
	cmp	r0, r1
	blt	.LBB30_2
	b	.LBB30_1
.LBB30_1:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB30_8
.LBB30_2:
	ldr	r0, [sp, #4]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI30_0
	cmp	r0, r1
	blt	.LBB30_4
	b	.LBB30_3
.LBB30_3:
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB30_8
.LBB30_4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI30_1
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #1
	blt	.LBB30_6
	b	.LBB30_5
.LBB30_5:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI30_2
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB30_7
.LBB30_6:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB30_7
.LBB30_7:
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [r11, #-4]
	b	.LBB30_8
.LBB30_8:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.9:
.LCPI30_0:
	.long	2139095041                      @ 0x7f800001
.LCPI30_1:
	.long	__gtsf2
.LCPI30_2:
	.long	__subsf3
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
	.fnend
                                        @ -- End function
	.globl	fmax                            @ -- Begin function fmax
	.p2align	2
	.type	fmax,%function
	.code	32                              @ @fmax
fmax:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB31_2
	b	.LBB31_1
.LBB31_1:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB31_13
.LBB31_2:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB31_4
	b	.LBB31_3
.LBB31_3:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB31_13
.LBB31_4:
	ldr	r0, [sp, #28]
	lsr	r0, r0, #31
	ldr	r1, [sp, #20]
	cmp	r0, r1, lsr #31
	beq	.LBB31_9
	b	.LBB31_5
.LBB31_5:
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB31_7
	b	.LBB31_6
.LBB31_6:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB31_8
.LBB31_7:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB31_8
.LBB31_8:
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB31_13
.LBB31_9:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI31_0
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB31_11
	b	.LBB31_10
.LBB31_10:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB31_12
.LBB31_11:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB31_12
.LBB31_12:
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB31_13
.LBB31_13:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI31_0:
	.long	__ltdf2
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
	.fnend
                                        @ -- End function
	.globl	fmaxf                           @ -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,%function
	.code	32                              @ @fmaxf
fmaxf:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r0, [r11, #-8]
	str	r1, [sp, #12]
	ldr	r0, [r11, #-8]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI32_0
	cmp	r0, r1
	blt	.LBB32_2
	b	.LBB32_1
.LBB32_1:
	ldr	r0, [sp, #12]
	str	r0, [r11, #-4]
	b	.LBB32_13
.LBB32_2:
	ldr	r0, [sp, #12]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI32_0
	cmp	r0, r1
	blt	.LBB32_4
	b	.LBB32_3
.LBB32_3:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB32_13
.LBB32_4:
	ldr	r0, [r11, #-8]
	lsr	r0, r0, #31
	ldr	r1, [sp, #12]
	cmp	r0, r1, lsr #31
	beq	.LBB32_9
	b	.LBB32_5
.LBB32_5:
	ldr	r0, [r11, #-8]
	cmn	r0, #1
	bgt	.LBB32_7
	b	.LBB32_6
.LBB32_6:
	ldr	r0, [sp, #12]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB32_8
.LBB32_7:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB32_8
.LBB32_8:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [r11, #-4]
	b	.LBB32_13
.LBB32_9:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r2, .LCPI32_1
	mov	lr, pc
	mov	pc, r2
	cmn	r0, #1
	bgt	.LBB32_11
	b	.LBB32_10
.LBB32_10:
	ldr	r0, [sp, #12]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB32_12
.LBB32_11:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB32_12
.LBB32_12:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [r11, #-4]
	b	.LBB32_13
.LBB32_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI32_0:
	.long	2139095041                      @ 0x7f800001
.LCPI32_1:
	.long	__ltsf2
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
	.fnend
                                        @ -- End function
	.globl	fmaxl                           @ -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,%function
	.code	32                              @ @fmaxl
fmaxl:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB33_2
	b	.LBB33_1
.LBB33_1:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB33_13
.LBB33_2:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB33_4
	b	.LBB33_3
.LBB33_3:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB33_13
.LBB33_4:
	ldr	r0, [sp, #28]
	lsr	r0, r0, #31
	ldr	r1, [sp, #20]
	cmp	r0, r1, lsr #31
	beq	.LBB33_9
	b	.LBB33_5
.LBB33_5:
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB33_7
	b	.LBB33_6
.LBB33_6:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB33_8
.LBB33_7:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB33_8
.LBB33_8:
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB33_13
.LBB33_9:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI33_0
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB33_11
	b	.LBB33_10
.LBB33_10:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB33_12
.LBB33_11:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB33_12
.LBB33_12:
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB33_13
.LBB33_13:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI33_0:
	.long	__ltdf2
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
	.fnend
                                        @ -- End function
	.globl	fmin                            @ -- Begin function fmin
	.p2align	2
	.type	fmin,%function
	.code	32                              @ @fmin
fmin:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB34_2
	b	.LBB34_1
.LBB34_1:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB34_13
.LBB34_2:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB34_4
	b	.LBB34_3
.LBB34_3:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB34_13
.LBB34_4:
	ldr	r0, [sp, #28]
	lsr	r0, r0, #31
	ldr	r1, [sp, #20]
	cmp	r0, r1, lsr #31
	beq	.LBB34_9
	b	.LBB34_5
.LBB34_5:
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB34_7
	b	.LBB34_6
.LBB34_6:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB34_8
.LBB34_7:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB34_8
.LBB34_8:
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB34_13
.LBB34_9:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI34_0
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB34_11
	b	.LBB34_10
.LBB34_10:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB34_12
.LBB34_11:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB34_12
.LBB34_12:
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB34_13
.LBB34_13:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI34_0:
	.long	__ltdf2
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
	.fnend
                                        @ -- End function
	.globl	fminf                           @ -- Begin function fminf
	.p2align	2
	.type	fminf,%function
	.code	32                              @ @fminf
fminf:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r0, [r11, #-8]
	str	r1, [sp, #12]
	ldr	r0, [r11, #-8]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI35_0
	cmp	r0, r1
	blt	.LBB35_2
	b	.LBB35_1
.LBB35_1:
	ldr	r0, [sp, #12]
	str	r0, [r11, #-4]
	b	.LBB35_13
.LBB35_2:
	ldr	r0, [sp, #12]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI35_0
	cmp	r0, r1
	blt	.LBB35_4
	b	.LBB35_3
.LBB35_3:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB35_13
.LBB35_4:
	ldr	r0, [r11, #-8]
	lsr	r0, r0, #31
	ldr	r1, [sp, #12]
	cmp	r0, r1, lsr #31
	beq	.LBB35_9
	b	.LBB35_5
.LBB35_5:
	ldr	r0, [r11, #-8]
	cmn	r0, #1
	bgt	.LBB35_7
	b	.LBB35_6
.LBB35_6:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB35_8
.LBB35_7:
	ldr	r0, [sp, #12]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB35_8
.LBB35_8:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [r11, #-4]
	b	.LBB35_13
.LBB35_9:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r2, .LCPI35_1
	mov	lr, pc
	mov	pc, r2
	cmn	r0, #1
	bgt	.LBB35_11
	b	.LBB35_10
.LBB35_10:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB35_12
.LBB35_11:
	ldr	r0, [sp, #12]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB35_12
.LBB35_12:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [r11, #-4]
	b	.LBB35_13
.LBB35_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI35_0:
	.long	2139095041                      @ 0x7f800001
.LCPI35_1:
	.long	__ltsf2
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
	.fnend
                                        @ -- End function
	.globl	fminl                           @ -- Begin function fminl
	.p2align	2
	.type	fminl,%function
	.code	32                              @ @fminl
fminl:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB36_2
	b	.LBB36_1
.LBB36_1:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB36_13
.LBB36_2:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bic	r0, r0, #-2147483648
	subs	r1, r1, #1
	mov	r1, #267386880
	orr	r1, r1, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB36_4
	b	.LBB36_3
.LBB36_3:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB36_13
.LBB36_4:
	ldr	r0, [sp, #28]
	lsr	r0, r0, #31
	ldr	r1, [sp, #20]
	cmp	r0, r1, lsr #31
	beq	.LBB36_9
	b	.LBB36_5
.LBB36_5:
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB36_7
	b	.LBB36_6
.LBB36_6:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB36_8
.LBB36_7:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB36_8
.LBB36_8:
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB36_13
.LBB36_9:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI36_0
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB36_11
	b	.LBB36_10
.LBB36_10:
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB36_12
.LBB36_11:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB36_12
.LBB36_12:
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r1, [r11, #-16]
	str	r0, [r11, #-12]
	b	.LBB36_13
.LBB36_13:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI36_0:
	.long	__ltdf2
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
	.fnend
                                        @ -- End function
	.globl	l64a                            @ -- Begin function l64a
	.p2align	2
	.type	l64a,%function
	.code	32                              @ @l64a
l64a:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	ldr	r1, .LCPI37_0
	mov	r0, r9
	add	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB37_1
.LBB37_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB37_4
	b	.LBB37_2
.LBB37_2:                               @   in Loop: Header=BB37_1 Depth=1
	ldr	r0, [sp]
	and	r1, r0, #63
	ldr	r0, .LCPI37_1
.LPC37_0:
	add	r0, pc, r0
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	b	.LBB37_3
.LBB37_3:                               @   in Loop: Header=BB37_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r0, [sp]
	lsr	r0, r0, #6
	str	r0, [sp]
	b	.LBB37_1
.LBB37_4:
	ldr	r1, [sp, #4]
	mov	r0, #0
	strb	r0, [r1]
	ldr	r1, .LCPI37_0
	mov	r0, r9
	add	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.5:
.LCPI37_0:
	.long	l64a.s(sbrel)
.LCPI37_1:
	.long	digits-(.LPC37_0+8)
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
	.fnend
                                        @ -- End function
	.globl	srand                           @ -- Begin function srand
	.p2align	2
	.type	srand,%function
	.code	32                              @ @srand
srand:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r0, r0, #1
	ldr	r2, .LCPI38_0
	mov	r1, r9
	str	r0, [r1, r2]!
	mov	r0, #0
	str	r0, [r1, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI38_0:
	.long	seed(sbrel)
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
	.fnend
                                        @ -- End function
	.globl	rand                            @ -- Begin function rand
	.p2align	2
	.type	rand,%function
	.code	32                              @ @rand
rand:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	ldr	r1, .LCPI39_0
	mov	r0, r9
	ldr	r3, [r0, r1]!
	ldr	r12, [r0, #4]
	ldr	lr, .LCPI39_1
	umull	r2, r5, r3, lr
	ldr	r4, .LCPI39_2
	mla	r1, r3, r4, r5
	mul	r3, r12, lr
	adds	r2, r2, #1
	adc	r1, r1, r3
	str	r2, [r0]
	str	r1, [r0, #4]
	ldr	r0, [r0, #4]
	lsr	r0, r0, #1
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI39_0:
	.long	seed(sbrel)
.LCPI39_1:
	.long	1284865837                      @ 0x4c957f2d
.LCPI39_2:
	.long	1481765933                      @ 0x5851f42d
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
	.fnend
                                        @ -- End function
	.globl	insque                          @ -- Begin function insque
	.p2align	2
	.type	insque,%function
	.code	32                              @ @insque
insque:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	bne	.LBB40_2
	b	.LBB40_1
.LBB40_1:
	ldr	r1, [sp, #4]
	mov	r0, #0
	str	r0, [r1, #4]
	ldr	r1, [sp, #4]
	str	r0, [r1]
	b	.LBB40_4
.LBB40_2:
	ldr	r0, [sp]
	ldr	r0, [r0]
	ldr	r1, [sp, #4]
	str	r0, [r1]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	str	r0, [r1]
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB40_4
	b	.LBB40_3
.LBB40_3:
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	str	r0, [r1, #4]
	b	.LBB40_4
.LBB40_4:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
	.fnend
                                        @ -- End function
	.globl	remque                          @ -- Begin function remque
	.p2align	2
	.type	remque,%function
	.code	32                              @ @remque
remque:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB41_2
	b	.LBB41_1
.LBB41_1:
	ldr	r0, [sp]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	r0, [r1, #4]
	b	.LBB41_2
.LBB41_2:
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB41_4
	b	.LBB41_3
.LBB41_3:
	ldr	r1, [sp]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	str	r0, [r1]
	b	.LBB41_4
.LBB41_4:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
	.fnend
                                        @ -- End function
	.globl	lsearch                         @ -- Begin function lsearch
	.p2align	2
	.type	lsearch,%function
	.code	32                              @ @lsearch
lsearch:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [sp, #20]
	ldr	r0, [sp, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r11, #-12]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0]
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB42_1
.LBB42_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB42_6
	b	.LBB42_2
.LBB42_2:                               @   in Loop: Header=BB42_1 Depth=1
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r2, [r11, #8]
	ldr	r0, [r11, #-8]
	ldr	lr, [sp, #16]
	ldr	r3, [sp, #8]
	mla	r1, r3, r12, lr
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #0
	bne	.LBB42_4
	b	.LBB42_3
.LBB42_3:
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #8]
	mla	r0, r1, r2, r3
	str	r0, [r11, #-4]
	b	.LBB42_7
.LBB42_4:                               @   in Loop: Header=BB42_1 Depth=1
	b	.LBB42_5
.LBB42_5:                               @   in Loop: Header=BB42_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB42_1
.LBB42_6:
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	ldr	r1, [r11, #-16]
	str	r0, [r1]
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #12]
	mla	r0, r1, r2, r3
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #20]
	ldr	r3, .LCPI42_0
	mov	lr, pc
	mov	pc, r3
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [r11, #-4]
	b	.LBB42_7
.LBB42_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI42_0:
	.long	memcpy
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
	.fnend
                                        @ -- End function
	.globl	lfind                           @ -- Begin function lfind
	.p2align	2
	.type	lfind,%function
	.code	32                              @ @lfind
lfind:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [sp, #20]
	ldr	r0, [sp, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r11, #-12]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0]
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB43_1
.LBB43_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB43_6
	b	.LBB43_2
.LBB43_2:                               @   in Loop: Header=BB43_1 Depth=1
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r2, [r11, #8]
	ldr	r0, [r11, #-8]
	ldr	lr, [sp, #16]
	ldr	r3, [sp, #8]
	mla	r1, r3, r12, lr
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #0
	bne	.LBB43_4
	b	.LBB43_3
.LBB43_3:
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #8]
	mla	r0, r1, r2, r3
	str	r0, [r11, #-4]
	b	.LBB43_7
.LBB43_4:                               @   in Loop: Header=BB43_1 Depth=1
	b	.LBB43_5
.LBB43_5:                               @   in Loop: Header=BB43_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB43_1
.LBB43_6:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB43_7
.LBB43_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
	.fnend
                                        @ -- End function
	.globl	abs                             @ -- Begin function abs
	.p2align	2
	.type	abs,%function
	.code	32                              @ @abs
abs:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #1
	blt	.LBB44_2
	b	.LBB44_1
.LBB44_1:
	ldr	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB44_3
.LBB44_2:
	ldr	r0, [sp, #4]
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB44_3
.LBB44_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
	.fnend
                                        @ -- End function
	.globl	atoi                            @ -- Begin function atoi
	.p2align	2
	.type	atoi,%function
	.code	32                              @ @atoi
atoi:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	mov	r0, #0
	str	r0, [r11, #-8]
	str	r0, [sp, #12]
	b	.LBB45_1
.LBB45_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI45_0
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB45_3
	b	.LBB45_2
.LBB45_2:                               @   in Loop: Header=BB45_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB45_1
.LBB45_3:
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	mov	r1, r0
	str	r1, [sp, #8]                    @ 4-byte Spill
	cmp	r0, #43
	beq	.LBB45_6
	b	.LBB45_4
.LBB45_4:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r0, #45
	bne	.LBB45_7
	b	.LBB45_5
.LBB45_5:
	mov	r0, #1
	str	r0, [sp, #12]
	b	.LBB45_6
.LBB45_6:
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB45_7
.LBB45_7:
	b	.LBB45_8
.LBB45_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI45_1
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB45_10
	b	.LBB45_9
.LBB45_9:                               @   in Loop: Header=BB45_8 Depth=1
	ldr	r0, [r11, #-8]
	add	r1, r0, r0, lsl #2
	ldr	r0, [r11, #-4]
	add	r2, r0, #1
	str	r2, [r11, #-4]
	ldrb	r0, [r0]
	rsb	r0, r0, r1, lsl #1
	add	r0, r0, #48
	str	r0, [r11, #-8]
	b	.LBB45_8
.LBB45_10:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB45_12
	b	.LBB45_11
.LBB45_11:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB45_13
.LBB45_12:
	ldr	r0, [r11, #-8]
	rsb	r0, r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB45_13
.LBB45_13:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI45_0:
	.long	isspace
.LCPI45_1:
	.long	isdigit
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
	.fnend
                                        @ -- End function
	.globl	atol                            @ -- Begin function atol
	.p2align	2
	.type	atol,%function
	.code	32                              @ @atol
atol:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	mov	r0, #0
	str	r0, [r11, #-8]
	str	r0, [sp, #12]
	b	.LBB46_1
.LBB46_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI46_0
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB46_3
	b	.LBB46_2
.LBB46_2:                               @   in Loop: Header=BB46_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB46_1
.LBB46_3:
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	mov	r1, r0
	str	r1, [sp, #8]                    @ 4-byte Spill
	cmp	r0, #43
	beq	.LBB46_6
	b	.LBB46_4
.LBB46_4:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r0, #45
	bne	.LBB46_7
	b	.LBB46_5
.LBB46_5:
	mov	r0, #1
	str	r0, [sp, #12]
	b	.LBB46_6
.LBB46_6:
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB46_7
.LBB46_7:
	b	.LBB46_8
.LBB46_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI46_1
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB46_10
	b	.LBB46_9
.LBB46_9:                               @   in Loop: Header=BB46_8 Depth=1
	ldr	r0, [r11, #-8]
	add	r1, r0, r0, lsl #2
	ldr	r0, [r11, #-4]
	add	r2, r0, #1
	str	r2, [r11, #-4]
	ldrb	r0, [r0]
	rsb	r0, r0, r1, lsl #1
	add	r0, r0, #48
	str	r0, [r11, #-8]
	b	.LBB46_8
.LBB46_10:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB46_12
	b	.LBB46_11
.LBB46_11:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB46_13
.LBB46_12:
	ldr	r0, [r11, #-8]
	rsb	r0, r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB46_13
.LBB46_13:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI46_0:
	.long	isspace
.LCPI46_1:
	.long	isdigit
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
	.fnend
                                        @ -- End function
	.globl	atoll                           @ -- Begin function atoll
	.p2align	2
	.type	atoll,%function
	.code	32                              @ @atoll
atoll:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	mov	r0, #0
	str	r0, [sp, #20]
	str	r0, [sp, #16]
	str	r0, [sp, #12]
	b	.LBB47_1
.LBB47_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI47_0
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB47_3
	b	.LBB47_2
.LBB47_2:                               @   in Loop: Header=BB47_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB47_1
.LBB47_3:
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	mov	r1, r0
	str	r1, [sp, #8]                    @ 4-byte Spill
	cmp	r0, #43
	beq	.LBB47_6
	b	.LBB47_4
.LBB47_4:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r0, #45
	bne	.LBB47_7
	b	.LBB47_5
.LBB47_5:
	mov	r0, #1
	str	r0, [sp, #12]
	b	.LBB47_6
.LBB47_6:
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB47_7
.LBB47_7:
	b	.LBB47_8
.LBB47_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI47_1
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB47_10
	b	.LBB47_9
.LBB47_9:                               @   in Loop: Header=BB47_8 Depth=1
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	mov	r12, #10
	umull	r1, r0, r3, r12
	add	r2, r2, r2, lsl #2
	add	r0, r0, r2, lsl #1
	ldr	r2, [r11, #-4]
	add	r3, r2, #1
	str	r3, [r11, #-4]
	ldrb	r2, [r2]
	sub	r2, r2, #48
	subs	r1, r1, r2
	sbc	r0, r0, r2, asr #31
	str	r1, [sp, #16]
	str	r0, [sp, #20]
	b	.LBB47_8
.LBB47_10:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB47_12
	b	.LBB47_11
.LBB47_11:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB47_13
.LBB47_12:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	rsbs	r1, r1, #0
	rsc	r0, r0, #0
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB47_13
.LBB47_13:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI47_0:
	.long	isspace
.LCPI47_1:
	.long	isdigit
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
	.fnend
                                        @ -- End function
	.globl	bsearch                         @ -- Begin function bsearch
	.p2align	2
	.type	bsearch,%function
	.code	32                              @ @bsearch
bsearch:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	b	.LBB48_1
.LBB48_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB48_9
	b	.LBB48_2
.LBB48_2:                               @   in Loop: Header=BB48_1 Depth=1
	ldr	r3, [r11, #-12]
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #16]
	lsr	r2, r0, #1
	mla	r0, r1, r2, r3
	str	r0, [sp, #8]
	ldr	r2, [r11, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmn	r0, #1
	bgt	.LBB48_4
	b	.LBB48_3
.LBB48_3:                               @   in Loop: Header=BB48_1 Depth=1
	ldr	r0, [sp, #16]
	lsr	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB48_8
.LBB48_4:                               @   in Loop: Header=BB48_1 Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #1
	blt	.LBB48_6
	b	.LBB48_5
.LBB48_5:                               @   in Loop: Header=BB48_1 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	str	r0, [r11, #-12]
	ldr	r1, [sp, #16]
	mvn	r0, r1, lsr #1
	add	r0, r0, r1
	str	r0, [sp, #16]
	b	.LBB48_7
.LBB48_6:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB48_10
.LBB48_7:                               @   in Loop: Header=BB48_1 Depth=1
	b	.LBB48_8
.LBB48_8:                               @   in Loop: Header=BB48_1 Depth=1
	b	.LBB48_1
.LBB48_9:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB48_10
.LBB48_10:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
	.fnend
                                        @ -- End function
	.globl	bsearch_r                       @ -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,%function
	.code	32                              @ @bsearch_r
bsearch_r:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	ldr	r12, [r11, #12]
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [sp, #20]
	ldr	r0, [r11, #-12]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	str	r0, [sp, #12]
	b	.LBB49_1
.LBB49_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB49_8
	b	.LBB49_2
.LBB49_2:                               @   in Loop: Header=BB49_1 Depth=1
	ldr	r3, [sp, #16]
	ldr	r0, [sp, #12]
	asr	r1, r0, #1
	ldr	r2, [sp, #20]
	mla	r0, r1, r2, r3
	str	r0, [sp, #4]
	ldr	r3, [r11, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #4]
	ldr	r2, [r11, #12]
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB49_4
	b	.LBB49_3
.LBB49_3:
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB49_9
.LBB49_4:                               @   in Loop: Header=BB49_1 Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #1
	blt	.LBB49_6
	b	.LBB49_5
.LBB49_5:                               @   in Loop: Header=BB49_1 Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	str	r0, [sp, #16]
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB49_6
.LBB49_6:                               @   in Loop: Header=BB49_1 Depth=1
	b	.LBB49_7
.LBB49_7:                               @   in Loop: Header=BB49_1 Depth=1
	ldr	r0, [sp, #12]
	asr	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB49_1
.LBB49_8:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB49_9
.LBB49_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
	.fnend
                                        @ -- End function
	.globl	div                             @ -- Begin function div
	.p2align	2
	.type	div,%function
	.code	32                              @ @div
div:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]                    @ 4-byte Spill
	str	r1, [r11, #-4]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI50_0
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI50_1
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r0, [r1, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI50_0:
	.long	__divsi3
.LCPI50_1:
	.long	__modsi3
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
	.fnend
                                        @ -- End function
	.globl	imaxabs                         @ -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,%function
	.code	32                              @ @imaxabs
imaxabs:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	subs	r1, r1, #1
	sbcs	r0, r0, #0
	blt	.LBB51_2
	b	.LBB51_1
.LBB51_1:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB51_3
.LBB51_2:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	rsbs	r1, r1, #0
	rsc	r0, r0, #0
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB51_3
.LBB51_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
	.fnend
                                        @ -- End function
	.globl	imaxdiv                         @ -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,%function
	.code	32                              @ @imaxdiv
imaxdiv:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [r11, #12]
	ldr	r0, [r11, #8]
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI52_0
	mov	lr, pc
	mov	pc, r4
	mov	r2, r1
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r2, [r1, #4]
	str	r0, [r1]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI52_1
	mov	lr, pc
	mov	pc, r4
	mov	r2, r1
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r2, [r1, #12]
	str	r0, [r1, #8]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI52_0:
	.long	__divdi3
.LCPI52_1:
	.long	__moddi3
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
	.fnend
                                        @ -- End function
	.globl	labs                            @ -- Begin function labs
	.p2align	2
	.type	labs,%function
	.code	32                              @ @labs
labs:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #1
	blt	.LBB53_2
	b	.LBB53_1
.LBB53_1:
	ldr	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB53_3
.LBB53_2:
	ldr	r0, [sp, #4]
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB53_3
.LBB53_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
	.fnend
                                        @ -- End function
	.globl	ldiv                            @ -- Begin function ldiv
	.p2align	2
	.type	ldiv,%function
	.code	32                              @ @ldiv
ldiv:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]                    @ 4-byte Spill
	str	r1, [r11, #-4]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI54_0
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI54_1
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r0, [r1, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI54_0:
	.long	__divsi3
.LCPI54_1:
	.long	__modsi3
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
	.fnend
                                        @ -- End function
	.globl	llabs                           @ -- Begin function llabs
	.p2align	2
	.type	llabs,%function
	.code	32                              @ @llabs
llabs:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	subs	r1, r1, #1
	sbcs	r0, r0, #0
	blt	.LBB55_2
	b	.LBB55_1
.LBB55_1:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB55_3
.LBB55_2:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	rsbs	r1, r1, #0
	rsc	r0, r0, #0
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB55_3
.LBB55_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
	.fnend
                                        @ -- End function
	.globl	lldiv                           @ -- Begin function lldiv
	.p2align	2
	.type	lldiv,%function
	.code	32                              @ @lldiv
lldiv:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [r11, #12]
	ldr	r0, [r11, #8]
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI56_0
	mov	lr, pc
	mov	pc, r4
	mov	r2, r1
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r2, [r1, #4]
	str	r0, [r1]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI56_1
	mov	lr, pc
	mov	pc, r4
	mov	r2, r1
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r2, [r1, #12]
	str	r0, [r1, #8]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI56_0:
	.long	__divdi3
.LCPI56_1:
	.long	__moddi3
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
	.fnend
                                        @ -- End function
	.globl	wcschr                          @ -- Begin function wcschr
	.p2align	2
	.type	wcschr,%function
	.code	32                              @ @wcschr
wcschr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	b	.LBB57_1
.LBB57_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB57_3
	b	.LBB57_2
.LBB57_2:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [sp, #8]
	subs	r0, r0, r1
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB57_3
.LBB57_3:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB57_6
	b	.LBB57_4
.LBB57_4:                               @   in Loop: Header=BB57_1 Depth=1
	b	.LBB57_5
.LBB57_5:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	b	.LBB57_1
.LBB57_6:
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB57_8
	b	.LBB57_7
.LBB57_7:
	ldr	r0, [r11, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB57_9
.LBB57_8:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB57_9
.LBB57_9:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
	.fnend
                                        @ -- End function
	.globl	wcscmp                          @ -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,%function
	.code	32                              @ @wcscmp
wcscmp:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	b	.LBB58_1
.LBB58_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB58_4
	b	.LBB58_2
.LBB58_2:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB58_4
	b	.LBB58_3
.LBB58_3:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB58_4
.LBB58_4:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB58_7
	b	.LBB58_5
.LBB58_5:                               @   in Loop: Header=BB58_1 Depth=1
	b	.LBB58_6
.LBB58_6:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	ldr	r0, [sp, #8]
	add	r0, r0, #4
	str	r0, [sp, #8]
	b	.LBB58_1
.LBB58_7:
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [sp, #8]
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB58_9
	b	.LBB58_8
.LBB58_8:
	mvn	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB58_10
.LBB58_9:
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB58_10
.LBB58_10:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
	.fnend
                                        @ -- End function
	.globl	wcscpy                          @ -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,%function
	.code	32                              @ @wcscpy
wcscpy:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	str	r1, [sp, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	b	.LBB59_1
.LBB59_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	add	r1, r0, #4
	str	r1, [sp, #4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-4]
	add	r2, r1, #4
	str	r2, [r11, #-4]
	str	r0, [r1]
	cmp	r0, #0
	beq	.LBB59_3
	b	.LBB59_2
.LBB59_2:                               @   in Loop: Header=BB59_1 Depth=1
	b	.LBB59_1
.LBB59_3:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
	.fnend
                                        @ -- End function
	.globl	wcslen                          @ -- Begin function wcslen
	.p2align	2
	.type	wcslen,%function
	.code	32                              @ @wcslen
wcslen:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	b	.LBB60_1
.LBB60_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB60_4
	b	.LBB60_2
.LBB60_2:                               @   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_3
.LBB60_3:                               @   in Loop: Header=BB60_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #4
	str	r0, [sp, #4]
	b	.LBB60_1
.LBB60_4:
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	sub	r0, r0, r1
	asr	r0, r0, #2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
	.fnend
                                        @ -- End function
	.globl	wcsncmp                         @ -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,%function
	.code	32                              @ @wcsncmp
wcsncmp:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	b	.LBB61_1
.LBB61_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB61_5
	b	.LBB61_2
.LBB61_2:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	bne	.LBB61_5
	b	.LBB61_3
.LBB61_3:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB61_5
	b	.LBB61_4
.LBB61_4:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB61_5
.LBB61_5:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB61_8
	b	.LBB61_6
.LBB61_6:                               @   in Loop: Header=BB61_1 Depth=1
	b	.LBB61_7
.LBB61_7:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-8]
	add	r0, r0, #4
	str	r0, [r11, #-8]
	b	.LBB61_1
.LBB61_8:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB61_13
	b	.LBB61_9
.LBB61_9:
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB61_11
	b	.LBB61_10
.LBB61_10:
	mvn	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB61_12
.LBB61_11:
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB61_12
.LBB61_12:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB61_14
.LBB61_13:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB61_14
.LBB61_14:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
	.fnend
                                        @ -- End function
	.globl	wmemchr                         @ -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,%function
	.code	32                              @ @wmemchr
wmemchr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #8]
	b	.LBB62_1
.LBB62_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #8]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB62_3
	b	.LBB62_2
.LBB62_2:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	subs	r0, r0, r1
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB62_3
.LBB62_3:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB62_6
	b	.LBB62_4
.LBB62_4:                               @   in Loop: Header=BB62_1 Depth=1
	b	.LBB62_5
.LBB62_5:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	b	.LBB62_1
.LBB62_6:
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB62_8
	b	.LBB62_7
.LBB62_7:
	ldr	r0, [r11, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB62_9
.LBB62_8:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB62_9
.LBB62_9:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
	.fnend
                                        @ -- End function
	.globl	wmemcmp                         @ -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,%function
	.code	32                              @ @wmemcmp
wmemcmp:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	b	.LBB63_1
.LBB63_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB63_3
	b	.LBB63_2
.LBB63_2:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	sub	r0, r0, r1
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB63_3
.LBB63_3:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB63_6
	b	.LBB63_4
.LBB63_4:                               @   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_5
.LBB63_5:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-8]
	add	r0, r0, #4
	str	r0, [r11, #-8]
	b	.LBB63_1
.LBB63_6:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB63_11
	b	.LBB63_7
.LBB63_7:
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB63_9
	b	.LBB63_8
.LBB63_8:
	mvn	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB63_10
.LBB63_9:
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB63_10
.LBB63_10:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB63_12
.LBB63_11:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB63_12
.LBB63_12:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
	.fnend
                                        @ -- End function
	.globl	wmemcpy                         @ -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,%function
	.code	32                              @ @wmemcpy
wmemcpy:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	b	.LBB64_1
.LBB64_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	str	r1, [sp, #4]
	cmp	r0, #0
	beq	.LBB64_3
	b	.LBB64_2
.LBB64_2:                               @   in Loop: Header=BB64_1 Depth=1
	ldr	r0, [sp, #8]
	add	r1, r0, #4
	str	r1, [sp, #8]
	ldr	r0, [r0]
	ldr	r1, [r11, #-4]
	add	r2, r1, #4
	str	r2, [r11, #-4]
	str	r0, [r1]
	b	.LBB64_1
.LBB64_3:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
	.fnend
                                        @ -- End function
	.globl	wmemmove                        @ -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,%function
	.code	32                              @ @wmemmove
wmemmove:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bne	.LBB65_2
	b	.LBB65_1
.LBB65_1:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB65_12
.LBB65_2:
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	sub	r0, r0, r1
	ldr	r1, [sp, #4]
	cmp	r0, r1, lsl #2
	bhs	.LBB65_7
	b	.LBB65_3
.LBB65_3:
	b	.LBB65_4
.LBB65_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	str	r1, [sp, #4]
	cmp	r0, #0
	beq	.LBB65_6
	b	.LBB65_5
.LBB65_5:                               @   in Loop: Header=BB65_4 Depth=1
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [r11, #-8]
	str	r0, [r1, r2, lsl #2]
	b	.LBB65_4
.LBB65_6:
	b	.LBB65_11
.LBB65_7:
	b	.LBB65_8
.LBB65_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	str	r1, [sp, #4]
	cmp	r0, #0
	beq	.LBB65_10
	b	.LBB65_9
.LBB65_9:                               @   in Loop: Header=BB65_8 Depth=1
	ldr	r0, [sp, #8]
	add	r1, r0, #4
	str	r1, [sp, #8]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	add	r2, r1, #4
	str	r2, [r11, #-8]
	str	r0, [r1]
	b	.LBB65_8
.LBB65_10:
	b	.LBB65_11
.LBB65_11:
	ldr	r0, [sp]
	str	r0, [r11, #-4]
	b	.LBB65_12
.LBB65_12:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
	.fnend
                                        @ -- End function
	.globl	wmemset                         @ -- Begin function wmemset
	.p2align	2
	.type	wmemset,%function
	.code	32                              @ @wmemset
wmemset:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	b	.LBB66_1
.LBB66_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	str	r1, [sp, #4]
	cmp	r0, #0
	beq	.LBB66_3
	b	.LBB66_2
.LBB66_2:                               @   in Loop: Header=BB66_1 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [r11, #-4]
	add	r2, r1, #4
	str	r2, [r11, #-4]
	str	r0, [r1]
	b	.LBB66_1
.LBB66_3:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
	.fnend
                                        @ -- End function
	.globl	bcopy                           @ -- Begin function bcopy
	.p2align	2
	.type	bcopy,%function
	.code	32                              @ @bcopy
bcopy:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	cmp	r0, r1
	bhs	.LBB67_6
	b	.LBB67_1
.LBB67_1:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	b	.LBB67_2
.LBB67_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB67_5
	b	.LBB67_3
.LBB67_3:                               @   in Loop: Header=BB67_2 Depth=1
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	str	r1, [sp, #4]
	ldrb	r0, [r0, #-1]
	ldr	r1, [sp]
	sub	r2, r1, #1
	str	r2, [sp]
	strb	r0, [r1, #-1]
	b	.LBB67_4
.LBB67_4:                               @   in Loop: Header=BB67_2 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB67_2
.LBB67_5:
	b	.LBB67_13
.LBB67_6:
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	cmp	r0, r1
	beq	.LBB67_12
	b	.LBB67_7
.LBB67_7:
	b	.LBB67_8
.LBB67_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB67_11
	b	.LBB67_9
.LBB67_9:                               @   in Loop: Header=BB67_8 Depth=1
	ldr	r0, [sp, #4]
	add	r1, r0, #1
	str	r1, [sp, #4]
	ldrb	r0, [r0]
	ldr	r1, [sp]
	add	r2, r1, #1
	str	r2, [sp]
	strb	r0, [r1]
	b	.LBB67_10
.LBB67_10:                              @   in Loop: Header=BB67_8 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB67_8
.LBB67_11:
	b	.LBB67_12
.LBB67_12:
	b	.LBB67_13
.LBB67_13:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
	.fnend
                                        @ -- End function
	.globl	rotl64                          @ -- Begin function rotl64
	.p2align	2
	.type	rotl64,%function
	.code	32                              @ @rotl64
rotl64:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #8]
	ldr	r12, [sp, #12]
	ldr	r2, [sp, #4]
	rsb	lr, r2, #32
	lsr	r0, r3, lr
	orr	r1, r0, r12, lsl r2
	sub	r4, r2, #32
	cmp	r4, #0
	lslpl	r1, r3, r4
	lsl	r0, r3, r2
	cmp	r4, #0
	movpl	r0, #0
	rsb	r4, r2, #64
	lsr	r2, r12, r4
	cmp	lr, #0
	movpl	r2, #0
	lsr	r3, r3, r4
	rsb	r4, r4, #32
	orr	r3, r3, r12, lsl r4
	cmp	lr, #0
	lsrpl	r3, r12, lr
	orr	r0, r0, r3
	orr	r1, r1, r2
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
	.fnend
                                        @ -- End function
	.globl	rotr64                          @ -- Begin function rotr64
	.p2align	2
	.type	rotr64,%function
	.code	32                              @ @rotr64
rotr64:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #12]
	ldr	r2, [sp, #4]
	lsr	r1, r4, r2
	sub	lr, r2, #32
	cmp	lr, #0
	movpl	r1, #0
	lsr	r0, r3, r2
	rsb	r12, r2, #32
	orr	r0, r0, r4, lsl r12
	cmp	lr, #0
	lsrpl	r0, r4, lr
	rsb	lr, r2, #64
	rsb	r2, lr, #32
	lsr	r2, r3, r2
	orr	r2, r2, r4, lsl lr
	cmp	r12, #0
	lslpl	r2, r3, r12
	lsl	r3, r3, lr
	cmp	r12, #0
	movpl	r3, #0
	orr	r0, r0, r3
	orr	r1, r1, r2
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
	.fnend
                                        @ -- End function
	.globl	rotl32                          @ -- Begin function rotl32
	.p2align	2
	.type	rotl32,%function
	.code	32                              @ @rotl32
rotl32:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	rsb	r1, r1, #32
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
	.fnend
                                        @ -- End function
	.globl	rotr32                          @ -- Begin function rotr32
	.p2align	2
	.type	rotr32,%function
	.code	32                              @ @rotr32
rotr32:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
	.fnend
                                        @ -- End function
	.globl	rotl_sz                         @ -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,%function
	.code	32                              @ @rotl_sz
rotl_sz:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	rsb	r1, r1, #32
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
	.fnend
                                        @ -- End function
	.globl	rotr_sz                         @ -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,%function
	.code	32                              @ @rotr_sz
rotr_sz:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
	.fnend
                                        @ -- End function
	.globl	rotl16                          @ -- Begin function rotl16
	.p2align	2
	.type	rotl16,%function
	.code	32                              @ @rotl16
rotl16:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r0
	strh	r0, [r11, #-2]
	str	r1, [sp]
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp]
	lsl	r0, r1, r2
	rsb	r2, r2, #16
	orr	r0, r0, r1, lsr r2
	mov	r1, #255
	orr	r1, r1, #65280
	and	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
	.fnend
                                        @ -- End function
	.globl	rotr16                          @ -- Begin function rotr16
	.p2align	2
	.type	rotr16,%function
	.code	32                              @ @rotr16
rotr16:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r0
	strh	r0, [r11, #-2]
	str	r1, [sp]
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp]
	lsr	r0, r1, r2
	rsb	r2, r2, #16
	orr	r0, r0, r1, lsl r2
	mov	r1, #255
	orr	r1, r1, #65280
	and	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
	.fnend
                                        @ -- End function
	.globl	rotl8                           @ -- Begin function rotl8
	.p2align	2
	.type	rotl8,%function
	.code	32                              @ @rotl8
rotl8:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r0
	strb	r0, [r11, #-1]
	str	r1, [sp]
	ldrb	r1, [r11, #-1]
	ldr	r2, [sp]
	lsl	r0, r1, r2
	rsb	r2, r2, #8
	orr	r0, r0, r1, lsr r2
	and	r0, r0, #255
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
	.fnend
                                        @ -- End function
	.globl	rotr8                           @ -- Begin function rotr8
	.p2align	2
	.type	rotr8,%function
	.code	32                              @ @rotr8
rotr8:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r0
	strb	r0, [r11, #-1]
	str	r1, [sp]
	ldrb	r1, [r11, #-1]
	ldr	r2, [sp]
	lsr	r0, r1, r2
	rsb	r2, r2, #8
	orr	r0, r0, r1, lsl r2
	and	r0, r0, #255
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
	.fnend
                                        @ -- End function
	.globl	bswap_16                        @ -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,%function
	.code	32                              @ @bswap_16
bswap_16:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
                                        @ kill: def $r1 killed $r0
	strh	r0, [sp, #2]
	mov	r0, #255
	strh	r0, [sp]
	ldrh	r1, [sp, #2]
	ldrh	r2, [sp]
	and	r0, r1, r2, lsl #8
	lsr	r0, r0, #8
	and	r1, r1, r2
	orr	r0, r0, r1, lsl #8
	mov	r1, #255
	orr	r1, r1, #65280
	and	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
	.fnend
                                        @ -- End function
	.globl	bswap_32                        @ -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,%function
	.code	32                              @ @bswap_32
bswap_32:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r0, #255
	str	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	and	r0, r1, r2, lsl #24
	lsr	r0, r0, #24
	lsl	r3, r2, #16
	and	r12, r1, r2, lsl #16
	orr	r0, r0, r12, lsr #8
	and	r3, r3, r1, lsl #8
	orr	r0, r0, r3
	and	r1, r1, r2
	orr	r0, r0, r1, lsl #24
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
	.fnend
                                        @ -- End function
	.globl	bswap_64                        @ -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,%function
	.code	32                              @ @bswap_64
bswap_64:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, #255
	str	r0, [sp]
	ldr	r2, [sp, #8]
	ldr	lr, [sp, #12]
	ldr	r3, [sp]
	and	r0, lr, r3, lsl #24
	lsr	r0, r0, #24
	lsl	r12, r3, #16
	and	r1, lr, r3, lsl #16
	orr	r0, r0, r1, lsr #8
	and	r4, lr, r3, lsl #8
	lsr	r1, r4, #24
	orr	r0, r0, r4, lsl #8
	and	r4, lr, r3
	orr	r0, r0, r4, lsl #24
	orr	r1, r1, r4, lsr #8
	lsl	r4, lr, #8
	orr	r4, r4, r2, lsr #24
	and	r4, r3, r4
	orr	r1, r1, r4
	lsl	lr, lr, #24
	orr	lr, lr, r2, lsr #8
	and	lr, lr, r3, lsl #8
	orr	r1, r1, lr
	and	r12, r12, r2, lsl #8
	orr	r1, r1, r12
	and	r2, r2, r3
	orr	r1, r1, r2, lsl #24
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
	.fnend
                                        @ -- End function
	.globl	ffs                             @ -- Begin function ffs
	.p2align	2
	.type	ffs,%function
	.code	32                              @ @ffs
ffs:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [sp, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB81_1
.LBB81_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #31
	bhi	.LBB81_6
	b	.LBB81_2
.LBB81_2:                               @   in Loop: Header=BB81_1 Depth=1
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB81_4
	b	.LBB81_3
.LBB81_3:
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB81_7
.LBB81_4:                               @   in Loop: Header=BB81_1 Depth=1
	b	.LBB81_5
.LBB81_5:                               @   in Loop: Header=BB81_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB81_1
.LBB81_6:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB81_7
.LBB81_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
	.fnend
                                        @ -- End function
	.globl	libiberty_ffs                   @ -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,%function
	.code	32                              @ @libiberty_ffs
libiberty_ffs:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.LBB82_2
	b	.LBB82_1
.LBB82_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB82_7
.LBB82_2:
	mov	r0, #1
	str	r0, [sp]
	b	.LBB82_3
.LBB82_3:                               @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [sp, #4]
	tst	r0, #1
	bne	.LBB82_6
	b	.LBB82_4
.LBB82_4:                               @   in Loop: Header=BB82_3 Depth=1
	ldr	r0, [sp, #4]
	asr	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB82_5
.LBB82_5:                               @   in Loop: Header=BB82_3 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB82_3
.LBB82_6:
	ldr	r0, [sp]
	str	r0, [r11, #-4]
	b	.LBB82_7
.LBB82_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
	.fnend
                                        @ -- End function
	.globl	gl_isinff                       @ -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,%function
	.code	32                              @ @gl_isinff
gl_isinff:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r1 killed $r0
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r2, .LCPI83_0
	mvn	r1, #8388608
	mov	lr, pc
	mov	pc, r2
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	bmi	.LBB83_2
	b	.LBB83_1
.LBB83_1:
	ldr	r0, [sp, #4]
	ldr	r2, .LCPI83_1
	ldr	r1, .LCPI83_2
	mov	lr, pc
	mov	pc, r2
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	movgt	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB83_2
.LBB83_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI83_0:
	.long	__ltsf2
.LCPI83_1:
	.long	__gtsf2
.LCPI83_2:
	.long	2139095039                      @ 0x7f7fffff
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
	.fnend
                                        @ -- End function
	.globl	gl_isinfd                       @ -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,%function
	.code	32                              @ @gl_isinfd
gl_isinfd:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI84_0
	mvn	r2, #0
	mvn	r3, #1048576
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bmi	.LBB84_2
	b	.LBB84_1
.LBB84_1:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI84_1
	mvn	r2, #0
	ldr	r3, .LCPI84_2
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	movgt	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB84_2
.LBB84_2:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI84_0:
	.long	__ltdf2
.LCPI84_1:
	.long	__gtdf2
.LCPI84_2:
	.long	2146435071                      @ 0x7fefffff
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
	.fnend
                                        @ -- End function
	.globl	gl_isinfl                       @ -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,%function
	.code	32                              @ @gl_isinfl
gl_isinfl:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI85_0
	mvn	r2, #0
	mvn	r3, #1048576
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bmi	.LBB85_2
	b	.LBB85_1
.LBB85_1:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI85_1
	mvn	r2, #0
	ldr	r3, .LCPI85_2
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	movgt	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB85_2
.LBB85_2:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.3:
.LCPI85_0:
	.long	__ltdf2
.LCPI85_1:
	.long	__gtdf2
.LCPI85_2:
	.long	2146435071                      @ 0x7fefffff
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
	.fnend
                                        @ -- End function
	.globl	_Qp_itoq                        @ -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,%function
	.code	32                              @ @_Qp_itoq
_Qp_itoq:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp]
	ldr	r1, .LCPI86_0
	mov	lr, pc
	mov	pc, r1
	mov	r2, r1
	ldr	r1, [sp, #4]
	str	r2, [r1, #4]
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI86_0:
	.long	__floatsidf
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
	.fnend
                                        @ -- End function
	.globl	ldexpf                          @ -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,%function
	.code	32                              @ @ldexpf
ldexpf:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r0
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bic	r0, r0, #-2147483648
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	cmp	r0, r1
	bgt	.LBB87_9
	b	.LBB87_1
.LBB87_1:
	ldr	r1, [r11, #-4]
	str	r1, [sp]                        @ 4-byte Spill
	ldr	r2, .LCPI87_0
	mov	r0, r1
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI87_1
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #0
	beq	.LBB87_9
	b	.LBB87_2
.LBB87_2:
	ldr	r1, [sp, #8]
	mov	r0, #1073741824
	cmp	r1, #0
	movmi	r0, #1056964608
	str	r0, [sp, #4]
	b	.LBB87_3
.LBB87_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	add	r1, r0, r0, lsr #31
	bic	r1, r1, #1
	sub	r0, r0, r1
	cmp	r0, #0
	beq	.LBB87_5
	b	.LBB87_4
.LBB87_4:                               @   in Loop: Header=BB87_3 Depth=1
	ldr	r1, [sp, #4]
	ldr	r0, [r11, #-4]
	ldr	r2, .LCPI87_2
	mov	lr, pc
	mov	pc, r2
	str	r0, [r11, #-4]
	b	.LBB87_5
.LBB87_5:                               @   in Loop: Header=BB87_3 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB87_7
	b	.LBB87_6
.LBB87_6:
	b	.LBB87_8
.LBB87_7:                               @   in Loop: Header=BB87_3 Depth=1
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI87_3
	mov	r0, r1
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #4]
	b	.LBB87_3
.LBB87_8:
	b	.LBB87_9
.LBB87_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI87_0:
	.long	__addsf3
.LCPI87_1:
	.long	__eqsf2
.LCPI87_2:
	.long	__mulsf3
.LCPI87_3:
	.long	__mulsf3
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
	.fnend
                                        @ -- End function
	.globl	ldexp                           @ -- Begin function ldexp
	.p2align	2
	.type	ldexp,%function
	.code	32                              @ @ldexp
ldexp:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [sp, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	bic	r1, r1, #-2147483648
	rsbs	r0, r0, #0
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB88_9
	b	.LBB88_1
.LBB88_1:
	ldr	r2, [r11, #-16]
	str	r2, [sp]                        @ 4-byte Spill
	ldr	r3, [r11, #-12]
	str	r3, [sp, #4]                    @ 4-byte Spill
	ldr	r4, .LCPI88_0
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	ldr	r4, .LCPI88_1
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB88_9
	b	.LBB88_2
.LBB88_2:
	ldr	r2, [sp, #20]
	mov	r1, #266338304
	orr	r1, r1, #805306368
	mov	r0, #1073741824
	cmp	r2, #0
	movmi	r0, r1
	mov	r1, #0
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	b	.LBB88_3
.LBB88_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	add	r1, r0, r0, lsr #31
	bic	r1, r1, #1
	sub	r0, r0, r1
	cmp	r0, #0
	beq	.LBB88_5
	b	.LBB88_4
.LBB88_4:                               @   in Loop: Header=BB88_3 Depth=1
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r4, .LCPI88_2
	mov	lr, pc
	mov	pc, r4
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB88_5
.LBB88_5:                               @   in Loop: Header=BB88_3 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bne	.LBB88_7
	b	.LBB88_6
.LBB88_6:
	b	.LBB88_8
.LBB88_7:                               @   in Loop: Header=BB88_3 Depth=1
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI88_3
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB88_3
.LBB88_8:
	b	.LBB88_9
.LBB88_9:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI88_0:
	.long	__adddf3
.LCPI88_1:
	.long	__eqdf2
.LCPI88_2:
	.long	__muldf3
.LCPI88_3:
	.long	__muldf3
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
	.fnend
                                        @ -- End function
	.globl	ldexpl                          @ -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,%function
	.code	32                              @ @ldexpl
ldexpl:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [sp, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	bic	r1, r1, #-2147483648
	rsbs	r0, r0, #0
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB89_9
	b	.LBB89_1
.LBB89_1:
	ldr	r2, [r11, #-16]
	str	r2, [sp]                        @ 4-byte Spill
	ldr	r3, [r11, #-12]
	str	r3, [sp, #4]                    @ 4-byte Spill
	ldr	r4, .LCPI89_0
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	ldr	r4, .LCPI89_1
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB89_9
	b	.LBB89_2
.LBB89_2:
	ldr	r2, [sp, #20]
	mov	r1, #266338304
	orr	r1, r1, #805306368
	mov	r0, #1073741824
	cmp	r2, #0
	movmi	r0, r1
	mov	r1, #0
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	b	.LBB89_3
.LBB89_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	add	r1, r0, r0, lsr #31
	bic	r1, r1, #1
	sub	r0, r0, r1
	cmp	r0, #0
	beq	.LBB89_5
	b	.LBB89_4
.LBB89_4:                               @   in Loop: Header=BB89_3 Depth=1
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r4, .LCPI89_2
	mov	lr, pc
	mov	pc, r4
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB89_5
.LBB89_5:                               @   in Loop: Header=BB89_3 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bne	.LBB89_7
	b	.LBB89_6
.LBB89_6:
	b	.LBB89_8
.LBB89_7:                               @   in Loop: Header=BB89_3 Depth=1
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI89_3
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB89_3
.LBB89_8:
	b	.LBB89_9
.LBB89_9:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI89_0:
	.long	__adddf3
.LCPI89_1:
	.long	__eqdf2
.LCPI89_2:
	.long	__muldf3
.LCPI89_3:
	.long	__muldf3
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
	.fnend
                                        @ -- End function
	.globl	memxor                          @ -- Begin function memxor
	.p2align	2
	.type	memxor,%function
	.code	32                              @ @memxor
memxor:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	b	.LBB90_1
.LBB90_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB90_4
	b	.LBB90_2
.LBB90_2:                               @   in Loop: Header=BB90_1 Depth=1
	ldr	r0, [sp, #4]
	add	r1, r0, #1
	str	r1, [sp, #4]
	ldrb	r2, [r0]
	ldr	r1, [sp]
	add	r0, r1, #1
	str	r0, [sp]
	ldrb	r0, [r1]
	eor	r0, r0, r2
	strb	r0, [r1]
	b	.LBB90_3
.LBB90_3:                               @   in Loop: Header=BB90_1 Depth=1
	ldr	r0, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB90_1
.LBB90_4:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
	.fnend
                                        @ -- End function
	.globl	strncat                         @ -- Begin function strncat
	.p2align	2
	.type	strncat,%function
	.code	32                              @ @strncat
strncat:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r1, .LCPI91_0
	mov	lr, pc
	mov	pc, r1
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, r1
	str	r0, [sp, #8]
	b	.LBB91_1
.LBB91_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB91_3
	b	.LBB91_2
.LBB91_2:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0]
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB91_3
.LBB91_3:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB91_6
	b	.LBB91_4
.LBB91_4:                               @   in Loop: Header=BB91_1 Depth=1
	b	.LBB91_5
.LBB91_5:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB91_1
.LBB91_6:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	bne	.LBB91_8
	b	.LBB91_7
.LBB91_7:
	ldr	r1, [sp, #8]
	mov	r0, #0
	strb	r0, [r1]
	b	.LBB91_8
.LBB91_8:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.9:
.LCPI91_0:
	.long	strlen
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
	.fnend
                                        @ -- End function
	.globl	strnlen                         @ -- Begin function strnlen
	.p2align	2
	.type	strnlen,%function
	.code	32                              @ @strnlen
strnlen:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB92_1
.LBB92_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bhs	.LBB92_3
	b	.LBB92_2
.LBB92_2:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #4]
	ldrb	r0, [r0, r1]
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB92_3
.LBB92_3:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB92_6
	b	.LBB92_4
.LBB92_4:                               @   in Loop: Header=BB92_1 Depth=1
	b	.LBB92_5
.LBB92_5:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB92_1
.LBB92_6:
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
	.fnend
                                        @ -- End function
	.globl	strpbrk                         @ -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,%function
	.code	32                              @ @strpbrk
strpbrk:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	b	.LBB93_1
.LBB93_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB93_3 Depth 2
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB93_8
	b	.LBB93_2
.LBB93_2:                               @   in Loop: Header=BB93_1 Depth=1
	ldr	r0, [sp, #4]
	str	r0, [sp]
	b	.LBB93_3
.LBB93_3:                               @   Parent Loop BB93_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB93_7
	b	.LBB93_4
.LBB93_4:                               @   in Loop: Header=BB93_3 Depth=2
	ldr	r0, [sp]
	add	r1, r0, #1
	str	r1, [sp]
	ldrb	r0, [r0]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1]
	cmp	r0, r1
	bne	.LBB93_6
	b	.LBB93_5
.LBB93_5:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB93_9
.LBB93_6:                               @   in Loop: Header=BB93_3 Depth=2
	b	.LBB93_3
.LBB93_7:                               @   in Loop: Header=BB93_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB93_1
.LBB93_8:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB93_9
.LBB93_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
	.fnend
                                        @ -- End function
	.globl	strrchr                         @ -- Begin function strrchr
	.p2align	2
	.type	strrchr,%function
	.code	32                              @ @strrchr
strrchr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	str	r1, [sp, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB94_1
.LBB94_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bne	.LBB94_3
	b	.LBB94_2
.LBB94_2:                               @   in Loop: Header=BB94_1 Depth=1
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	b	.LBB94_3
.LBB94_3:                               @   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_4
.LBB94_4:                               @   in Loop: Header=BB94_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r1, r0, #1
	str	r1, [r11, #-4]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB94_1
	b	.LBB94_5
.LBB94_5:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
	.fnend
                                        @ -- End function
	.globl	strstr                          @ -- Begin function strstr
	.p2align	2
	.type	strstr,%function
	.code	32                              @ @strstr
strstr:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-8]
	str	r1, [sp, #12]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r1, .LCPI95_0
	mov	lr, pc
	mov	pc, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.LBB95_2
	b	.LBB95_1
.LBB95_1:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB95_9
.LBB95_2:
	b	.LBB95_3
.LBB95_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldrb	r1, [r1]
	ldr	r2, .LCPI95_1
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB95_8
	b	.LBB95_4
.LBB95_4:                               @   in Loop: Header=BB95_3 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r3, .LCPI95_2
	mov	lr, pc
	mov	pc, r3
	cmp	r0, #0
	bne	.LBB95_6
	b	.LBB95_5
.LBB95_5:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB95_9
.LBB95_6:                               @   in Loop: Header=BB95_3 Depth=1
	b	.LBB95_7
.LBB95_7:                               @   in Loop: Header=BB95_3 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB95_3
.LBB95_8:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB95_9
.LBB95_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI95_0:
	.long	strlen
.LCPI95_1:
	.long	strchr
.LCPI95_2:
	.long	strncmp
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
	.fnend
                                        @ -- End function
	.globl	copysign                        @ -- Begin function copysign
	.p2align	2
	.type	copysign,%function
	.code	32                              @ @copysign
copysign:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI96_0
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB96_2
	b	.LBB96_1
.LBB96_1:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r4, .LCPI96_1
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	bgt	.LBB96_4
	b	.LBB96_2
.LBB96_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI96_2
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #1
	blt	.LBB96_5
	b	.LBB96_3
.LBB96_3:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r4, .LCPI96_3
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB96_5
	b	.LBB96_4
.LBB96_4:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	eor	r0, r0, #-2147483648
	str	r1, [sp, #16]
	str	r0, [sp, #20]
	b	.LBB96_6
.LBB96_5:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB96_6
.LBB96_6:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.7:
.LCPI96_0:
	.long	__ltdf2
.LCPI96_1:
	.long	__gtdf2
.LCPI96_2:
	.long	__gtdf2
.LCPI96_3:
	.long	__ltdf2
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
	.fnend
                                        @ -- End function
	.globl	memmem                          @ -- Begin function memmem
	.p2align	2
	.type	memmem,%function
	.code	32                              @ @memmem
memmem:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	add	r0, r0, r1
	ldr	r1, [sp, #12]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	cmp	r0, #0
	bne	.LBB97_2
	b	.LBB97_1
.LBB97_1:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB97_12
.LBB97_2:
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB97_4
	b	.LBB97_3
.LBB97_3:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB97_12
.LBB97_4:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]
	b	.LBB97_5
.LBB97_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bhi	.LBB97_11
	b	.LBB97_6
.LBB97_6:                               @   in Loop: Header=BB97_5 Depth=1
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	ldr	r1, [sp, #16]
	ldrb	r1, [r1]
	cmp	r0, r1
	bne	.LBB97_9
	b	.LBB97_7
.LBB97_7:                               @   in Loop: Header=BB97_5 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	ldr	r1, [sp, #16]
	add	r1, r1, #1
	ldr	r2, [sp, #12]
	sub	r2, r2, #1
	ldr	r3, .LCPI97_0
	mov	lr, pc
	mov	pc, r3
	cmp	r0, #0
	bne	.LBB97_9
	b	.LBB97_8
.LBB97_8:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB97_12
.LBB97_9:                               @   in Loop: Header=BB97_5 Depth=1
	b	.LBB97_10
.LBB97_10:                              @   in Loop: Header=BB97_5 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB97_5
.LBB97_11:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB97_12
.LBB97_12:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.13:
.LCPI97_0:
	.long	memcmp
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
	.fnend
                                        @ -- End function
	.globl	mempcpy                         @ -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,%function
	.code	32                              @ @mempcpy
mempcpy:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r3, .LCPI98_0
	mov	lr, pc
	mov	pc, r3
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI98_0:
	.long	memcpy
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
	.fnend
                                        @ -- End function
	.globl	frexp                           @ -- Begin function frexp
	.p2align	2
	.type	frexp,%function
	.code	32                              @ @frexp
frexp:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	str	r2, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB99_2
	b	.LBB99_1
.LBB99_1:
	ldr	r0, [sp, #20]
	eor	r0, r0, #-2147483648
	str	r0, [sp, #20]
	mov	r0, #1
	str	r0, [sp, #8]
	b	.LBB99_2
.LBB99_2:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_1
	mov	r2, #0
	mov	r3, #267386880
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	bmi	.LBB99_7
	b	.LBB99_3
.LBB99_3:
	b	.LBB99_4
.LBB99_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_6
	mov	r2, #0
	mov	r3, #267386880
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	bmi	.LBB99_6
	b	.LBB99_5
.LBB99_5:                               @   in Loop: Header=BB99_4 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_7
	mov	r2, #0
	mov	r3, #266338304
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB99_4
.LBB99_6:
	b	.LBB99_14
.LBB99_7:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_2
	mov	r2, #0
	mov	r3, #266338304
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB99_13
	b	.LBB99_8
.LBB99_8:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_3
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB99_13
	b	.LBB99_9
.LBB99_9:
	b	.LBB99_10
.LBB99_10:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_4
	mov	r2, #0
	mov	r3, #266338304
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB99_12
	b	.LBB99_11
.LBB99_11:                              @   in Loop: Header=BB99_10 Depth=1
	ldr	r0, [sp, #4]
	sub	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI99_5
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB99_10
.LBB99_12:
	b	.LBB99_13
.LBB99_13:
	b	.LBB99_14
.LBB99_14:
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #12]
	str	r0, [r1]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB99_16
	b	.LBB99_15
.LBB99_15:
	ldr	r0, [sp, #20]
	eor	r0, r0, #-2147483648
	str	r0, [sp, #20]
	b	.LBB99_16
.LBB99_16:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.17:
.LCPI99_0:
	.long	__ltdf2
.LCPI99_1:
	.long	__gedf2
.LCPI99_2:
	.long	__ltdf2
.LCPI99_3:
	.long	__eqdf2
.LCPI99_4:
	.long	__ltdf2
.LCPI99_5:
	.long	__adddf3
.LCPI99_6:
	.long	__gedf2
.LCPI99_7:
	.long	__muldf3
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
	.fnend
                                        @ -- End function
	.globl	__muldi3                        @ -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,%function
	.code	32                              @ @__muldi3
__muldi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	mov	r0, #0
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	str	r1, [sp, #4]
	str	r0, [sp]
	b	.LBB100_1
.LBB100_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	orr	r0, r0, r1
	cmp	r0, #0
	beq	.LBB100_5
	b	.LBB100_2
.LBB100_2:                              @   in Loop: Header=BB100_1 Depth=1
	ldrb	r0, [sp]
	tst	r0, #1
	beq	.LBB100_4
	b	.LBB100_3
.LBB100_3:                              @   in Loop: Header=BB100_1 Depth=1
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	adds	r1, r1, r3
	adc	r0, r0, r2
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	b	.LBB100_4
.LBB100_4:                              @   in Loop: Header=BB100_1 Depth=1
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	lsl	r0, r0, #1
	orr	r0, r0, r1, lsr #31
	lsl	r1, r1, #1
	str	r1, [sp, #16]
	str	r0, [sp, #20]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	lsrs	r1, r1, #1
	rrx	r0, r0
	str	r1, [sp, #4]
	str	r0, [sp]
	b	.LBB100_1
.LBB100_5:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
	.fnend
                                        @ -- End function
	.globl	udivmodsi4                      @ -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,%function
	.code	32                              @ @udivmodsi4
udivmodsi4:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #12]
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB101_1
.LBB101_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bhs	.LBB101_4
	b	.LBB101_2
.LBB101_2:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r1, [sp, #8]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB101_4
	b	.LBB101_3
.LBB101_3:                              @   in Loop: Header=BB101_1 Depth=1
	ldrb	r0, [r11, #-9]
	and	r0, r0, #128
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB101_4
.LBB101_4:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB101_6
	b	.LBB101_5
.LBB101_5:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r0, [r11, #-12]
	lsl	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #8]
	lsl	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB101_1
.LBB101_6:
	b	.LBB101_7
.LBB101_7:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB101_11
	b	.LBB101_8
.LBB101_8:                              @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	blo	.LBB101_10
	b	.LBB101_9
.LBB101_9:                              @   in Loop: Header=BB101_7 Depth=1
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	sub	r0, r0, r1
	str	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #4]
	orr	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB101_10
.LBB101_10:                             @   in Loop: Header=BB101_7 Depth=1
	ldr	r0, [sp, #8]
	lsr	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB101_7
.LBB101_11:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB101_13
	b	.LBB101_12
.LBB101_12:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB101_14
.LBB101_13:
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB101_14
.LBB101_14:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
	.fnend
                                        @ -- End function
	.globl	__clrsbqi2                      @ -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,%function
	.code	32                              @ @__clrsbqi2
__clrsbqi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
                                        @ kill: def $r1 killed $r0
	strb	r0, [r11, #-5]
	ldrb	r0, [r11, #-5]
	cmn	r0, #1
	bgt	.LBB102_2
	b	.LBB102_1
.LBB102_1:
	ldrb	r0, [r11, #-5]
	mvn	r0, r0
	strb	r0, [r11, #-5]
	b	.LBB102_2
.LBB102_2:
	ldrb	r0, [r11, #-5]
	cmp	r0, #0
	bne	.LBB102_4
	b	.LBB102_3
.LBB102_3:
	mov	r0, #7
	str	r0, [r11, #-4]
	b	.LBB102_5
.LBB102_4:
	ldrb	r0, [r11, #-5]
	lsl	r0, r0, #8
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r1, .LCPI102_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI102_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI102_2
	and	r1, r0, r1
	ldr	r2, .LCPI102_3
	mul	r0, r1, r2
	lsr	r0, r0, #24
	str	r0, [sp]
	ldr	r0, [sp]
	sub	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB102_5
.LBB102_5:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.6:
.LCPI102_0:
	.long	1431655765                      @ 0x55555555
.LCPI102_1:
	.long	858993459                       @ 0x33333333
.LCPI102_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI102_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
	.fnend
                                        @ -- End function
	.globl	__clrsbdi2                      @ -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,%function
	.code	32                              @ @__clrsbdi2
__clrsbdi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	ldr	r0, [sp, #20]
	cmn	r0, #1
	bgt	.LBB103_2
	b	.LBB103_1
.LBB103_1:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	mvn	r0, r0
	mvn	r1, r1
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB103_2
.LBB103_2:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	orr	r0, r0, r1
	cmp	r0, #0
	bne	.LBB103_4
	b	.LBB103_3
.LBB103_3:
	mov	r0, #63
	str	r0, [r11, #-4]
	b	.LBB103_5
.LBB103_4:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	orr	r1, r1, r1, lsr #1
	orr	r1, r1, r1, lsr #2
	orr	r1, r1, r1, lsr #4
	orr	r1, r1, r1, lsr #8
	orr	r1, r1, r1, lsr #16
	mvn	r1, r1
	ldr	r2, .LCPI103_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI103_1
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI103_2
	and	r1, r1, r2
	ldr	r3, .LCPI103_3
	mul	r2, r1, r3
	mov	r1, #32
	add	r1, r1, r2, lsr #24
	str	r1, [sp, #8]                    @ 4-byte Spill
	ldr	r1, .LCPI103_4
	mov	lr, pc
	mov	pc, r1
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	mov	r1, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r2, #0
	movne	r0, r1
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB103_5
.LBB103_5:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.6:
.LCPI103_0:
	.long	1431655765                      @ 0x55555555
.LCPI103_1:
	.long	858993459                       @ 0x33333333
.LCPI103_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI103_3:
	.long	16843009                        @ 0x1010101
.LCPI103_4:
	.long	__clzsi2
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
	.fnend
                                        @ -- End function
	.globl	__mulsi3                        @ -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,%function
	.code	32                              @ @__mulsi3
__mulsi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	str	r1, [sp, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB104_1
.LBB104_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	cmp	r0, #0
	beq	.LBB104_5
	b	.LBB104_2
.LBB104_2:                              @   in Loop: Header=BB104_1 Depth=1
	ldrb	r0, [r11, #-4]
	tst	r0, #1
	beq	.LBB104_4
	b	.LBB104_3
.LBB104_3:                              @   in Loop: Header=BB104_1 Depth=1
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	b	.LBB104_4
.LBB104_4:                              @   in Loop: Header=BB104_1 Depth=1
	ldr	r0, [r11, #-4]
	lsr	r0, r0, #1
	str	r0, [r11, #-4]
	ldr	r0, [sp, #4]
	lsl	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB104_1
.LBB104_5:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
	.fnend
                                        @ -- End function
	.globl	__cmovd                         @ -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,%function
	.code	32                              @ @__cmovd
__cmovd:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #3
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	bic	r0, r0, #7
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	cmp	r0, r1
	blo	.LBB105_2
	b	.LBB105_1
.LBB105_1:
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	cmp	r0, r1
	bls	.LBB105_10
	b	.LBB105_2
.LBB105_2:
	mov	r0, #0
	str	r0, [sp, #16]
	b	.LBB105_3
.LBB105_3:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB105_6
	b	.LBB105_4
.LBB105_4:                              @   in Loop: Header=BB105_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r3, [sp, #16]
	ldr	r2, [r0, r3, lsl #3]!
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-4]
	str	r2, [r1, r3, lsl #3]!
	str	r0, [r1, #4]
	b	.LBB105_5
.LBB105_5:                              @   in Loop: Header=BB105_3 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB105_3
.LBB105_6:
	b	.LBB105_7
.LBB105_7:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bls	.LBB105_9
	b	.LBB105_8
.LBB105_8:                              @   in Loop: Header=BB105_7 Depth=1
	ldr	r0, [sp]
	ldr	r2, [sp, #8]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB105_7
.LBB105_9:
	b	.LBB105_14
.LBB105_10:
	b	.LBB105_11
.LBB105_11:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	sub	r1, r0, #1
	str	r1, [r11, #-12]
	cmp	r0, #0
	beq	.LBB105_13
	b	.LBB105_12
.LBB105_12:                             @   in Loop: Header=BB105_11 Depth=1
	ldr	r0, [sp]
	ldr	r2, [r11, #-12]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB105_11
.LBB105_13:
	b	.LBB105_14
.LBB105_14:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
	.fnend
                                        @ -- End function
	.globl	__cmovh                         @ -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,%function
	.code	32                              @ @__cmovh
__cmovh:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #28
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	cmp	r0, r1
	blo	.LBB106_2
	b	.LBB106_1
.LBB106_1:
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	cmp	r0, r1
	bls	.LBB106_9
	b	.LBB106_2
.LBB106_2:
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB106_3
.LBB106_3:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bhs	.LBB106_6
	b	.LBB106_4
.LBB106_4:                              @   in Loop: Header=BB106_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r2, [sp, #12]
	add	r0, r0, r2, lsl #1
	ldrh	r0, [r0]
	ldr	r1, [r11, #-4]
	add	r1, r1, r2, lsl #1
	strh	r0, [r1]
	b	.LBB106_5
.LBB106_5:                              @   in Loop: Header=BB106_3 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB106_3
.LBB106_6:
	ldrb	r0, [r11, #-12]
	tst	r0, #1
	beq	.LBB106_8
	b	.LBB106_7
.LBB106_7:
	ldr	r0, [sp]
	ldr	r1, [r11, #-12]
	sub	r2, r1, #1
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB106_8
.LBB106_8:
	b	.LBB106_13
.LBB106_9:
	b	.LBB106_10
.LBB106_10:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	sub	r1, r0, #1
	str	r1, [r11, #-12]
	cmp	r0, #0
	beq	.LBB106_12
	b	.LBB106_11
.LBB106_11:                             @   in Loop: Header=BB106_10 Depth=1
	ldr	r0, [sp]
	ldr	r2, [r11, #-12]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB106_10
.LBB106_12:
	b	.LBB106_13
.LBB106_13:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
	.fnend
                                        @ -- End function
	.globl	__cmovw                         @ -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,%function
	.code	32                              @ @__cmovw
__cmovw:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #2
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	bic	r0, r0, #3
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	cmp	r0, r1
	blo	.LBB107_2
	b	.LBB107_1
.LBB107_1:
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	cmp	r0, r1
	bls	.LBB107_10
	b	.LBB107_2
.LBB107_2:
	mov	r0, #0
	str	r0, [sp, #16]
	b	.LBB107_3
.LBB107_3:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB107_6
	b	.LBB107_4
.LBB107_4:                              @   in Loop: Header=BB107_3 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r2, [sp, #16]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [r11, #-4]
	str	r0, [r1, r2, lsl #2]
	b	.LBB107_5
.LBB107_5:                              @   in Loop: Header=BB107_3 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB107_3
.LBB107_6:
	b	.LBB107_7
.LBB107_7:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bls	.LBB107_9
	b	.LBB107_8
.LBB107_8:                              @   in Loop: Header=BB107_7 Depth=1
	ldr	r0, [sp]
	ldr	r2, [sp, #8]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB107_7
.LBB107_9:
	b	.LBB107_14
.LBB107_10:
	b	.LBB107_11
.LBB107_11:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	sub	r1, r0, #1
	str	r1, [r11, #-12]
	cmp	r0, #0
	beq	.LBB107_13
	b	.LBB107_12
.LBB107_12:                             @   in Loop: Header=BB107_11 Depth=1
	ldr	r0, [sp]
	ldr	r2, [r11, #-12]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB107_11
.LBB107_13:
	b	.LBB107_14
.LBB107_14:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
	.fnend
                                        @ -- End function
	.globl	__modi                          @ -- Begin function __modi
	.p2align	2
	.type	__modi,%function
	.code	32                              @ @__modi
__modi:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, .LCPI108_0
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, r2
	.p2align	2
@ %bb.1:
.LCPI108_0:
	.long	__modsi3
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
	.fnend
                                        @ -- End function
	.globl	__uitod                         @ -- Begin function __uitod
	.p2align	2
	.type	__uitod,%function
	.code	32                              @ @__uitod
__uitod:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r1, .LCPI109_0
	mov	lr, pc
	mov	pc, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI109_0:
	.long	__floatunsidf
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
	.fnend
                                        @ -- End function
	.globl	__uitof                         @ -- Begin function __uitof
	.p2align	2
	.type	__uitof,%function
	.code	32                              @ @__uitof
__uitof:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r1, .LCPI110_0
	mov	lr, pc
	mov	pc, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI110_0:
	.long	__floatunsisf
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
	.fnend
                                        @ -- End function
	.globl	__ulltod                        @ -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,%function
	.code	32                              @ @__ulltod
__ulltod:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI111_0
	mov	lr, pc
	mov	pc, r2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI111_0:
	.long	__floatundidf
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
	.fnend
                                        @ -- End function
	.globl	__ulltof                        @ -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,%function
	.code	32                              @ @__ulltof
__ulltof:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI112_0
	mov	lr, pc
	mov	pc, r2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI112_0:
	.long	__floatundisf
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
	.fnend
                                        @ -- End function
	.globl	__umodi                         @ -- Begin function __umodi
	.p2align	2
	.type	__umodi,%function
	.code	32                              @ @__umodi
__umodi:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, .LCPI113_0
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, r2
	.p2align	2
@ %bb.1:
.LCPI113_0:
	.long	__umodsi3
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
	.fnend
                                        @ -- End function
	.globl	__clzhi2                        @ -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,%function
	.code	32                              @ @__clzhi2
__clzhi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r1 killed $r0
	strh	r0, [r11, #-2]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB114_1
.LBB114_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #15
	bgt	.LBB114_6
	b	.LBB114_2
.LBB114_2:                              @   in Loop: Header=BB114_1 Depth=1
	ldrh	r1, [r11, #-2]
	ldr	r0, [sp]
	rsb	r2, r0, #15
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB114_4
	b	.LBB114_3
.LBB114_3:
	b	.LBB114_6
.LBB114_4:                              @   in Loop: Header=BB114_1 Depth=1
	b	.LBB114_5
.LBB114_5:                              @   in Loop: Header=BB114_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB114_1
.LBB114_6:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
	.fnend
                                        @ -- End function
	.globl	__ctzhi2                        @ -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,%function
	.code	32                              @ @__ctzhi2
__ctzhi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r1 killed $r0
	strh	r0, [r11, #-2]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB115_1
.LBB115_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #15
	bgt	.LBB115_6
	b	.LBB115_2
.LBB115_2:                              @   in Loop: Header=BB115_1 Depth=1
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB115_4
	b	.LBB115_3
.LBB115_3:
	b	.LBB115_6
.LBB115_4:                              @   in Loop: Header=BB115_1 Depth=1
	b	.LBB115_5
.LBB115_5:                              @   in Loop: Header=BB115_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB115_1
.LBB115_6:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
	.fnend
                                        @ -- End function
	.globl	__fixunssfsi                    @ -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,%function
	.code	32                              @ @__fixunssfsi
__fixunssfsi:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r1 killed $r0
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r2, .LCPI116_0
	mov	r1, #1191182336
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #0
	bmi	.LBB116_2
	b	.LBB116_1
.LBB116_1:
	ldr	r0, [sp]
	ldr	r2, .LCPI116_2
	mov	r1, #-956301312
	mov	lr, pc
	mov	pc, r2
	ldr	r1, .LCPI116_3
	mov	lr, pc
	mov	pc, r1
	add	r0, r0, #32768
	str	r0, [sp, #4]
	b	.LBB116_3
.LBB116_2:
	ldr	r0, [sp]
	ldr	r1, .LCPI116_1
	mov	lr, pc
	mov	pc, r1
	str	r0, [sp, #4]
	b	.LBB116_3
.LBB116_3:
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI116_0:
	.long	__gesf2
.LCPI116_1:
	.long	__fixsfsi
.LCPI116_2:
	.long	__addsf3
.LCPI116_3:
	.long	__fixsfsi
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
	.fnend
                                        @ -- End function
	.globl	__parityhi2                     @ -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,%function
	.code	32                              @ @__parityhi2
__parityhi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
                                        @ kill: def $r1 killed $r0
	strh	r0, [r11, #-2]
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #4]
	b	.LBB117_1
.LBB117_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #15
	bgt	.LBB117_6
	b	.LBB117_2
.LBB117_2:                              @   in Loop: Header=BB117_1 Depth=1
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp, #4]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB117_4
	b	.LBB117_3
.LBB117_3:                              @   in Loop: Header=BB117_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB117_4
.LBB117_4:                              @   in Loop: Header=BB117_1 Depth=1
	b	.LBB117_5
.LBB117_5:                              @   in Loop: Header=BB117_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB117_1
.LBB117_6:
	ldr	r0, [sp]
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
	.fnend
                                        @ -- End function
	.globl	__popcounthi2                   @ -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,%function
	.code	32                              @ @__popcounthi2
__popcounthi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
                                        @ kill: def $r1 killed $r0
	strh	r0, [r11, #-2]
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #4]
	b	.LBB118_1
.LBB118_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #15
	bgt	.LBB118_6
	b	.LBB118_2
.LBB118_2:                              @   in Loop: Header=BB118_1 Depth=1
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp, #4]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB118_4
	b	.LBB118_3
.LBB118_3:                              @   in Loop: Header=BB118_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB118_4
.LBB118_4:                              @   in Loop: Header=BB118_1 Depth=1
	b	.LBB118_5
.LBB118_5:                              @   in Loop: Header=BB118_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB118_1
.LBB118_6:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
	.fnend
                                        @ -- End function
	.globl	__mulsi3_iq2000                 @ -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,%function
	.code	32                              @ @__mulsi3_iq2000
__mulsi3_iq2000:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	str	r1, [sp, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB119_1
.LBB119_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	cmp	r0, #0
	beq	.LBB119_5
	b	.LBB119_2
.LBB119_2:                              @   in Loop: Header=BB119_1 Depth=1
	ldrb	r0, [r11, #-4]
	tst	r0, #1
	beq	.LBB119_4
	b	.LBB119_3
.LBB119_3:                              @   in Loop: Header=BB119_1 Depth=1
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	b	.LBB119_4
.LBB119_4:                              @   in Loop: Header=BB119_1 Depth=1
	ldr	r0, [r11, #-4]
	lsr	r0, r0, #1
	str	r0, [r11, #-4]
	ldr	r0, [sp, #4]
	lsl	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB119_1
.LBB119_5:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
	.fnend
                                        @ -- End function
	.globl	__mulsi3_lm32                   @ -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,%function
	.code	32                              @ @__mulsi3_lm32
__mulsi3_lm32:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB120_2
	b	.LBB120_1
.LBB120_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB120_8
.LBB120_2:
	b	.LBB120_3
.LBB120_3:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB120_7
	b	.LBB120_4
.LBB120_4:                              @   in Loop: Header=BB120_3 Depth=1
	ldrb	r0, [sp, #4]
	tst	r0, #1
	beq	.LBB120_6
	b	.LBB120_5
.LBB120_5:                              @   in Loop: Header=BB120_3 Depth=1
	ldr	r1, [sp, #8]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	b	.LBB120_6
.LBB120_6:                              @   in Loop: Header=BB120_3 Depth=1
	ldr	r0, [sp, #8]
	lsl	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	lsr	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB120_3
.LBB120_7:
	ldr	r0, [sp]
	str	r0, [r11, #-4]
	b	.LBB120_8
.LBB120_8:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #12]
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB121_1
.LBB121_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bhs	.LBB121_4
	b	.LBB121_2
.LBB121_2:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r1, [sp, #8]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB121_4
	b	.LBB121_3
.LBB121_3:                              @   in Loop: Header=BB121_1 Depth=1
	ldrb	r0, [r11, #-9]
	and	r0, r0, #128
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB121_4
.LBB121_4:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB121_6
	b	.LBB121_5
.LBB121_5:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r0, [r11, #-12]
	lsl	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #8]
	lsl	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB121_1
.LBB121_6:
	b	.LBB121_7
.LBB121_7:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB121_11
	b	.LBB121_8
.LBB121_8:                              @   in Loop: Header=BB121_7 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	blo	.LBB121_10
	b	.LBB121_9
.LBB121_9:                              @   in Loop: Header=BB121_7 Depth=1
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	sub	r0, r0, r1
	str	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #4]
	orr	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB121_10
.LBB121_10:                             @   in Loop: Header=BB121_7 Depth=1
	ldr	r0, [sp, #8]
	lsr	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB121_7
.LBB121_11:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB121_13
	b	.LBB121_12
.LBB121_12:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB121_14
.LBB121_13:
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB121_14
.LBB121_14:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
	.fnend
                                        @ -- End function
	.globl	__mspabi_cmpf                   @ -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,%function
	.code	32                              @ @__mspabi_cmpf
__mspabi_cmpf:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI122_0
	mov	lr, pc
	mov	pc, r2
	cmn	r0, #1
	bgt	.LBB122_2
	b	.LBB122_1
.LBB122_1:
	mvn	r0, #0
	str	r0, [r11, #-4]
	b	.LBB122_5
.LBB122_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI122_1
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #1
	blt	.LBB122_4
	b	.LBB122_3
.LBB122_3:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB122_5
.LBB122_4:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB122_5
.LBB122_5:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.6:
.LCPI122_0:
	.long	__ltsf2
.LCPI122_1:
	.long	__gtsf2
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
	.fnend
                                        @ -- End function
	.globl	__mspabi_cmpd                   @ -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,%function
	.code	32                              @ @__mspabi_cmpd
__mspabi_cmpd:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI123_0
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB123_2
	b	.LBB123_1
.LBB123_1:
	mvn	r0, #0
	str	r0, [r11, #-12]
	b	.LBB123_5
.LBB123_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI123_1
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #1
	blt	.LBB123_4
	b	.LBB123_3
.LBB123_3:
	mov	r0, #1
	str	r0, [r11, #-12]
	b	.LBB123_5
.LBB123_4:
	mov	r0, #0
	str	r0, [r11, #-12]
	b	.LBB123_5
.LBB123_5:
	ldr	r0, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.6:
.LCPI123_0:
	.long	__ltdf2
.LCPI123_1:
	.long	__gtdf2
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
	.fnend
                                        @ -- End function
	.globl	__mspabi_mpysll                 @ -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,%function
	.code	32                              @ @__mspabi_mpysll
__mspabi_mpysll:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	smull	r0, r1, r2, r3
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
	.fnend
                                        @ -- End function
	.globl	__mspabi_mpyull                 @ -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,%function
	.code	32                              @ @__mspabi_mpyull
__mspabi_mpyull:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	umull	r0, r1, r2, r3
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
	.fnend
                                        @ -- End function
	.globl	__mulhi3                        @ -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,%function
	.code	32                              @ @__mulhi3
__mulhi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #28
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	mov	r0, #0
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	cmn	r0, #1
	bgt	.LBB126_2
	b	.LBB126_1
.LBB126_1:
	ldr	r0, [r11, #-8]
	rsb	r0, r0, #0
	str	r0, [r11, #-8]
	mov	r0, #1
	str	r0, [sp, #12]
	b	.LBB126_2
.LBB126_2:
	mov	r0, #0
	strb	r0, [r11, #-9]
	b	.LBB126_3
.LBB126_3:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-8]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB126_5
	b	.LBB126_4
.LBB126_4:                              @   in Loop: Header=BB126_3 Depth=1
	ldrb	r1, [r11, #-9]
	mov	r0, #0
	cmp	r1, #32
	movlo	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB126_5
.LBB126_5:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB126_10
	b	.LBB126_6
.LBB126_6:                              @   in Loop: Header=BB126_3 Depth=1
	ldrb	r0, [r11, #-8]
	tst	r0, #1
	beq	.LBB126_8
	b	.LBB126_7
.LBB126_7:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r1, [r11, #-4]
	ldr	r0, [sp, #8]
	add	r0, r0, r1
	str	r0, [sp, #8]
	b	.LBB126_8
.LBB126_8:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r0, [r11, #-4]
	lsl	r0, r0, #1
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-8]
	asr	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB126_9
.LBB126_9:                              @   in Loop: Header=BB126_3 Depth=1
	ldrb	r0, [r11, #-9]
	add	r0, r0, #1
	strb	r0, [r11, #-9]
	b	.LBB126_3
.LBB126_10:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB126_12
	b	.LBB126_11
.LBB126_11:
	ldr	r0, [sp, #8]
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB126_13
.LBB126_12:
	ldr	r0, [sp, #8]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB126_13
.LBB126_13:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	cmn	r0, #1
	bgt	.LBB127_2
	b	.LBB127_1
.LBB127_1:
	ldr	r0, [r11, #-4]
	rsb	r0, r0, #0
	str	r0, [r11, #-4]
	ldr	r0, [sp, #4]
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB127_2
.LBB127_2:
	ldr	r0, [sp, #8]
	cmn	r0, #1
	bgt	.LBB127_4
	b	.LBB127_3
.LBB127_3:
	ldr	r0, [sp, #8]
	rsb	r0, r0, #0
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB127_4
.LBB127_4:
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r3, .LCPI127_0
	mov	r2, #0
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB127_6
	b	.LBB127_5
.LBB127_5:
	ldr	r0, [sp]
	rsb	r0, r0, #0
	str	r0, [sp]
	b	.LBB127_6
.LBB127_6:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.7:
.LCPI127_0:
	.long	__udivmodsi4
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	cmn	r0, #1
	bgt	.LBB128_2
	b	.LBB128_1
.LBB128_1:
	ldr	r0, [r11, #-4]
	rsb	r0, r0, #0
	str	r0, [r11, #-4]
	mov	r0, #1
	str	r0, [sp, #4]
	b	.LBB128_2
.LBB128_2:
	ldr	r0, [sp, #8]
	cmn	r0, #1
	bgt	.LBB128_4
	b	.LBB128_3
.LBB128_3:
	ldr	r0, [sp, #8]
	rsb	r0, r0, #0
	str	r0, [sp, #8]
	b	.LBB128_4
.LBB128_4:
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r3, .LCPI128_0
	mov	r2, #1
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB128_6
	b	.LBB128_5
.LBB128_5:
	ldr	r0, [sp]
	rsb	r0, r0, #0
	str	r0, [sp]
	b	.LBB128_6
.LBB128_6:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.7:
.LCPI128_0:
	.long	__udivmodsi4
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
	.fnend
                                        @ -- End function
	.globl	__udivmodhi4                    @ -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,%function
	.code	32                              @ @__udivmodhi4
__udivmodhi4:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #20
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	strh	r0, [r11, #-4]
	strh	r1, [r11, #-6]
	str	r2, [sp, #8]
	mov	r0, #1
	strh	r0, [sp, #6]
	mov	r0, #0
	strh	r0, [sp, #4]
	b	.LBB129_1
.LBB129_1:                              @ =>This Inner Loop Header: Depth=1
	ldrh	r1, [r11, #-6]
	ldrh	r2, [r11, #-4]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bge	.LBB129_4
	b	.LBB129_2
.LBB129_2:                              @   in Loop: Header=BB129_1 Depth=1
	ldrh	r1, [sp, #6]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB129_4
	b	.LBB129_3
.LBB129_3:                              @   in Loop: Header=BB129_1 Depth=1
	ldrh	r0, [r11, #-6]
	and	r0, r0, #32768
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB129_4
.LBB129_4:                              @   in Loop: Header=BB129_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB129_6
	b	.LBB129_5
.LBB129_5:                              @   in Loop: Header=BB129_1 Depth=1
	ldrh	r0, [r11, #-6]
	lsl	r0, r0, #1
	strh	r0, [r11, #-6]
	ldrh	r0, [sp, #6]
	lsl	r0, r0, #1
	strh	r0, [sp, #6]
	b	.LBB129_1
.LBB129_6:
	b	.LBB129_7
.LBB129_7:                              @ =>This Inner Loop Header: Depth=1
	ldrh	r0, [sp, #6]
	cmp	r0, #0
	beq	.LBB129_11
	b	.LBB129_8
.LBB129_8:                              @   in Loop: Header=BB129_7 Depth=1
	ldrh	r0, [r11, #-4]
	ldrh	r1, [r11, #-6]
	cmp	r0, r1
	blt	.LBB129_10
	b	.LBB129_9
.LBB129_9:                              @   in Loop: Header=BB129_7 Depth=1
	ldrh	r1, [r11, #-6]
	ldrh	r0, [r11, #-4]
	sub	r0, r0, r1
	strh	r0, [r11, #-4]
	ldrh	r1, [sp, #6]
	ldrh	r0, [sp, #4]
	orr	r0, r0, r1
	strh	r0, [sp, #4]
	b	.LBB129_10
.LBB129_10:                             @   in Loop: Header=BB129_7 Depth=1
	ldrh	r0, [sp, #6]
	lsr	r0, r0, #1
	strh	r0, [sp, #6]
	ldrh	r0, [r11, #-6]
	lsr	r0, r0, #1
	strh	r0, [r11, #-6]
	b	.LBB129_7
.LBB129_11:
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB129_13
	b	.LBB129_12
.LBB129_12:
	ldrh	r0, [r11, #-4]
	strh	r0, [r11, #-2]
	b	.LBB129_14
.LBB129_13:
	ldrh	r0, [sp, #4]
	strh	r0, [r11, #-2]
	b	.LBB129_14
.LBB129_14:
	ldrh	r0, [r11, #-2]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4_libgcc             @ -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,%function
	.code	32                              @ @__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #12]
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB130_1
.LBB130_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bhs	.LBB130_4
	b	.LBB130_2
.LBB130_2:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r1, [sp, #8]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	beq	.LBB130_4
	b	.LBB130_3
.LBB130_3:                              @   in Loop: Header=BB130_1 Depth=1
	ldrb	r0, [r11, #-9]
	and	r0, r0, #128
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB130_4
.LBB130_4:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB130_6
	b	.LBB130_5
.LBB130_5:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r0, [r11, #-12]
	lsl	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #8]
	lsl	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB130_1
.LBB130_6:
	b	.LBB130_7
.LBB130_7:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB130_11
	b	.LBB130_8
.LBB130_8:                              @   in Loop: Header=BB130_7 Depth=1
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	blo	.LBB130_10
	b	.LBB130_9
.LBB130_9:                              @   in Loop: Header=BB130_7 Depth=1
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	sub	r0, r0, r1
	str	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #4]
	orr	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB130_10
.LBB130_10:                             @   in Loop: Header=BB130_7 Depth=1
	ldr	r0, [sp, #8]
	lsr	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB130_7
.LBB130_11:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB130_13
	b	.LBB130_12
.LBB130_12:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB130_14
.LBB130_13:
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB130_14
.LBB130_14:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [sp, #20]
	mov	r0, #32
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldrb	r0, [sp, #20]
	tst	r0, #32
	beq	.LBB131_2
	b	.LBB131_1
.LBB131_1:
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #20]
	sub	r1, r1, #32
	lsl	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB131_5
.LBB131_2:
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bne	.LBB131_4
	b	.LBB131_3
.LBB131_3:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	b	.LBB131_6
.LBB131_4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #20]
	lsl	r0, r0, r1
	str	r0, [sp]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #20]
	lsl	r0, r0, r2
	rsb	r2, r2, #32
	orr	r0, r0, r1, lsr r2
	str	r0, [sp, #4]
	b	.LBB131_5
.LBB131_5:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	b	.LBB131_6
.LBB131_6:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [sp, #20]
	mov	r0, #32
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldrb	r0, [sp, #20]
	tst	r0, #32
	beq	.LBB132_2
	b	.LBB132_1
.LBB132_1:
	ldr	r0, [sp, #12]
	asr	r0, r0, #31
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #20]
	sub	r1, r1, #32
	asr	r0, r0, r1
	str	r0, [sp]
	b	.LBB132_5
.LBB132_2:
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bne	.LBB132_4
	b	.LBB132_3
.LBB132_3:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	b	.LBB132_6
.LBB132_4:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #20]
	asr	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #20]
	rsb	r3, r2, #32
	lsl	r0, r0, r3
	orr	r0, r0, r1, lsr r2
	str	r0, [sp]
	b	.LBB132_5
.LBB132_5:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	b	.LBB132_6
.LBB132_6:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
	.fnend
                                        @ -- End function
	.globl	__bswapdi2                      @ -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,%function
	.code	32                              @ @__bswapdi2
__bswapdi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	lsr	r0, r1, #24
	and	r3, r1, #16711680
	orr	r0, r0, r3, lsr #8
	and	r3, r1, #65280
	orr	r0, r0, r3, lsl #8
	orr	r0, r0, r1, lsl #24
	lsr	r1, r2, #24
	and	r3, r2, #16711680
	orr	r1, r1, r3, lsr #8
	and	r3, r2, #65280
	orr	r1, r1, r3, lsl #8
	orr	r1, r1, r2, lsl #24
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
	.fnend
                                        @ -- End function
	.globl	__bswapsi2                      @ -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,%function
	.code	32                              @ @__bswapsi2
__bswapsi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r1, [sp]
	lsr	r0, r1, #24
	and	r2, r1, #16711680
	orr	r0, r0, r2, lsr #8
	and	r2, r1, #65280
	orr	r0, r0, r2, lsl #8
	orr	r0, r0, r1, lsl #24
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #8]
	ldrh	r1, [sp, #10]
	lsl	r0, r1, #16
	mov	r2, #0
	subs	r1, r2, r1, lsl #16
	adc	r0, r0, r1
	lsl	r0, r0, #4
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	rsb	r1, r0, #16
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldrb	r1, [sp, #9]
	lsl	r0, r1, #8
	subs	r1, r2, r1, lsl #8
	adc	r0, r0, r1
	lsl	r0, r0, #3
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	rsb	r1, r0, #8
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp, #8]
	and	r0, r0, #240
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	lsl	r0, r0, #2
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	rsb	r1, r0, #4
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp, #8]
	and	r0, r0, #12
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	lsl	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	rsb	r1, r0, #2
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r3, [sp, #8]
	rsb	r1, r3, #2
	tst	r3, #2
	mvneq	r2, #0
	and	r1, r1, r2
	add	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	.LBB136_2
	b	.LBB136_1
.LBB136_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB136_9
.LBB136_2:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	ble	.LBB136_4
	b	.LBB136_3
.LBB136_3:
	mov	r0, #2
	str	r0, [r11, #-4]
	b	.LBB136_9
.LBB136_4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	cmp	r0, r1
	bhs	.LBB136_6
	b	.LBB136_5
.LBB136_5:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB136_9
.LBB136_6:
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	cmp	r0, r1
	bls	.LBB136_8
	b	.LBB136_7
.LBB136_7:
	mov	r0, #2
	str	r0, [r11, #-4]
	b	.LBB136_9
.LBB136_8:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB136_9
.LBB136_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI137_0
	mov	lr, pc
	mov	pc, r4
	sub	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI137_0:
	.long	__cmpdi2
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #8]
	ldrh	r0, [sp, #8]
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	lsl	r0, r0, #4
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldrb	r0, [sp, #8]
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	lsl	r0, r0, #3
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp, #8]
	and	r0, r0, #15
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	lsl	r0, r0, #2
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp, #8]
	and	r0, r0, #3
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	lsl	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	lsr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	and	r0, r0, #3
	str	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r2, [sp, #8]
	mov	r1, #2
	sub	r1, r1, r2, lsr #1
	and	r2, r2, #1
	sub	r2, r2, #1
	and	r1, r1, r2
	add	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [sp, #20]
	mov	r0, #32
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldrb	r0, [sp, #20]
	tst	r0, #32
	beq	.LBB139_2
	b	.LBB139_1
.LBB139_1:
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #20]
	sub	r1, r1, #32
	lsr	r0, r0, r1
	str	r0, [sp]
	b	.LBB139_5
.LBB139_2:
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bne	.LBB139_4
	b	.LBB139_3
.LBB139_3:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	b	.LBB139_6
.LBB139_4:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #20]
	lsr	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #20]
	rsb	r3, r2, #32
	lsl	r0, r0, r3
	orr	r0, r0, r1, lsr r2
	str	r0, [sp]
	b	.LBB139_5
.LBB139_5:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	b	.LBB139_6
.LBB139_6:
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
	.fnend
                                        @ -- End function
	.globl	__muldsi3                       @ -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,%function
	.code	32                              @ @__muldsi3
__muldsi3:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	mov	r0, #16
	str	r0, [sp, #12]
	mov	r0, #255
	orr	r0, r0, #65280
	str	r0, [sp, #8]
	ldrh	r1, [r11, #-4]
	ldrh	r2, [r11, #-8]
	mul	r0, r1, r2
	str	r0, [sp, #16]
	ldrh	r0, [sp, #18]
	str	r0, [sp, #4]
	ldrh	r0, [sp, #16]
	str	r0, [sp, #16]
	ldrh	r1, [r11, #-2]
	ldrh	r2, [r11, #-8]
	ldr	r3, [sp, #4]
	mla	r0, r1, r2, r3
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #16]
	add	r0, r0, r1, lsl #16
	str	r0, [sp, #16]
	ldrh	r0, [sp, #6]
	str	r0, [sp, #20]
	ldrh	r0, [sp, #18]
	str	r0, [sp, #4]
	ldrh	r0, [sp, #16]
	str	r0, [sp, #16]
	ldrh	r1, [r11, #-6]
	ldrh	r2, [r11, #-4]
	ldr	r3, [sp, #4]
	mla	r0, r1, r2, r3
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #16]
	add	r0, r0, r1, lsl #16
	str	r0, [sp, #16]
	ldrh	r1, [sp, #6]
	ldr	r0, [sp, #20]
	add	r0, r0, r1
	str	r0, [sp, #20]
	ldrh	r1, [r11, #-2]
	ldrh	r2, [r11, #-6]
	ldr	r3, [sp, #20]
	mla	r0, r1, r2, r3
	str	r0, [sp, #20]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
	.fnend
                                        @ -- End function
	.globl	__muldi3_compiler_rt            @ -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,%function
	.code	32                              @ @__muldi3_compiler_rt
__muldi3_compiler_rt:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	str	r3, [r11, #-12]
	str	r2, [r11, #-16]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI141_0
	mov	lr, pc
	mov	pc, r2
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r12, [sp, #12]
	mul	r3, r1, r12
	mla	r1, r0, r2, r3
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI141_0:
	.long	__muldsi3
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
	.fnend
                                        @ -- End function
	.globl	__negdi2                        @ -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,%function
	.code	32                              @ @__negdi2
__negdi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	eor	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	eor	r0, r0, r0, lsr #16
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	eor	r0, r0, r0, lsr #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	eor	r0, r0, r0, lsr #4
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	and	r2, r0, #15
	mov	r1, #150
	orr	r1, r1, #26880
	mov	r0, #1
	and	r0, r0, r1, lsr r2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	eor	r0, r0, r0, lsr #16
	str	r0, [sp]
	ldr	r0, [sp]
	eor	r0, r0, r0, lsr #8
	str	r0, [sp]
	ldr	r0, [sp]
	eor	r0, r0, r0, lsr #4
	str	r0, [sp]
	ldr	r0, [sp]
	and	r2, r0, #15
	mov	r1, #150
	orr	r1, r1, #26880
	mov	r0, #1
	and	r0, r0, r1, lsr r2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	lsrs	r2, r0, #1
	rrx	r3, r1
	ldr	r12, .LCPI145_0
	and	r2, r2, r12
	and	r3, r3, r12
	subs	r1, r1, r3
	sbc	r0, r0, r2
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r12, .LCPI145_1
	and	r1, r12, r2, lsr #2
	and	r0, r12, r3, lsr #2
	and	r2, r2, r12
	and	r3, r3, r12
	add	r0, r0, r3
	add	r1, r1, r2
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	lsr	r2, r1, #4
	orr	r2, r2, r0, lsl #28
	adds	r1, r1, r2
	adc	r0, r0, r0, lsr #4
	ldr	r2, .LCPI145_2
	and	r0, r0, r2
	and	r1, r1, r2
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	add	r0, r0, r0, lsr #16
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	add	r0, r0, r0, lsr #8
	and	r0, r0, #127
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI145_0:
	.long	1431655765                      @ 0x55555555
.LCPI145_1:
	.long	858993459                       @ 0x33333333
.LCPI145_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, .LCPI146_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	ldr	r2, .LCPI146_1
	and	r0, r2, r1, lsr #2
	and	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp]
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI146_2
	and	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp]
	add	r0, r0, r0, lsr #16
	str	r0, [sp]
	ldr	r0, [sp]
	add	r0, r0, r0, lsr #8
	and	r0, r0, #63
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI146_0:
	.long	1431655765                      @ 0x55555555
.LCPI146_1:
	.long	858993459                       @ 0x33333333
.LCPI146_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
	.fnend
                                        @ -- End function
	.globl	__powidf2                       @ -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,%function
	.code	32                              @ @__powidf2
__powidf2:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [sp, #20]
	ldr	r0, [sp, #20]
	lsr	r0, r0, #31
	str	r0, [sp, #16]
	mov	r0, #267386880
	orr	r0, r0, #805306368
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB147_1
.LBB147_1:                              @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [sp, #20]
	tst	r0, #1
	beq	.LBB147_3
	b	.LBB147_2
.LBB147_2:                              @   in Loop: Header=BB147_1 Depth=1
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #-12]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI147_0
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB147_3
.LBB147_3:                              @   in Loop: Header=BB147_1 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bne	.LBB147_5
	b	.LBB147_4
.LBB147_4:
	b	.LBB147_6
.LBB147_5:                              @   in Loop: Header=BB147_1 Depth=1
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #-12]
	ldr	r4, .LCPI147_1
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB147_1
.LBB147_6:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB147_8
	b	.LBB147_7
.LBB147_7:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI147_2
	mov	r0, #0
	mov	r1, #267386880
	orr	r1, r1, #805306368
	mov	lr, pc
	mov	pc, r4
	str	r0, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	b	.LBB147_9
.LBB147_8:
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB147_9
.LBB147_9:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI147_0:
	.long	__muldf3
.LCPI147_1:
	.long	__muldf3
.LCPI147_2:
	.long	__divdf3
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
	.fnend
                                        @ -- End function
	.globl	__powisf2                       @ -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,%function
	.code	32                              @ @__powisf2
__powisf2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
                                        @ kill: def $r2 killed $r0
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, [r11, #-8]
	lsr	r0, r0, #31
	str	r0, [sp, #12]
	mov	r0, #1065353216
	str	r0, [sp, #8]
	b	.LBB148_1
.LBB148_1:                              @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [r11, #-8]
	tst	r0, #1
	beq	.LBB148_3
	b	.LBB148_2
.LBB148_2:                              @   in Loop: Header=BB148_1 Depth=1
	ldr	r1, [r11, #-4]
	ldr	r0, [sp, #8]
	ldr	r2, .LCPI148_0
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #8]
	b	.LBB148_3
.LBB148_3:                              @   in Loop: Header=BB148_1 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	bne	.LBB148_5
	b	.LBB148_4
.LBB148_4:
	b	.LBB148_6
.LBB148_5:                              @   in Loop: Header=BB148_1 Depth=1
	ldr	r1, [r11, #-4]
	ldr	r2, .LCPI148_1
	mov	r0, r1
	mov	lr, pc
	mov	pc, r2
	str	r0, [r11, #-4]
	b	.LBB148_1
.LBB148_6:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB148_8
	b	.LBB148_7
.LBB148_7:
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI148_2
	mov	r0, #1065353216
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB148_9
.LBB148_8:
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB148_9
.LBB148_9:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI148_0:
	.long	__mulsf3
.LCPI148_1:
	.long	__mulsf3
.LCPI148_2:
	.long	__divsf3
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bhs	.LBB149_2
	b	.LBB149_1
.LBB149_1:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB149_9
.LBB149_2:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bls	.LBB149_4
	b	.LBB149_3
.LBB149_3:
	mov	r0, #2
	str	r0, [r11, #-4]
	b	.LBB149_9
.LBB149_4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	cmp	r0, r1
	bhs	.LBB149_6
	b	.LBB149_5
.LBB149_5:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB149_9
.LBB149_6:
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	cmp	r0, r1
	bls	.LBB149_8
	b	.LBB149_7
.LBB149_7:
	mov	r0, #2
	str	r0, [r11, #-4]
	b	.LBB149_9
.LBB149_8:
	mov	r0, #1
	str	r0, [r11, #-4]
	b	.LBB149_9
.LBB149_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
	.fnstart
@ %bb.0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI150_0
	mov	lr, pc
	mov	pc, r4
	sub	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI150_0:
	.long	__ucmpdi2
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
	.fnend
                                        @ -- End function
	.type	l64a.s,%object                  @ @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1
	.type	digits,%object                  @ @digits
	.section	.rodata,"a",%progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,%object                    @ @seed
	.local	seed
	.comm	seed,8,8
	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	".note.GNU-stack","",%progbits
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
