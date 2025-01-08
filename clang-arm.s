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
	ldr	r0, .LCPI0_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI0_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI0_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI0_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB0_8
.LBB0_8:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                @   in Loop: Header=BB0_8 Depth=1
	ldr	r1, .LCPI0_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	.p2align	2
@ %bb.14:
.LCPI0_0:
	.long	.L__profc_memmove(sbrel)
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
	sub	sp, sp, #36
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [sp, #16]
	ldr	r0, .LCPI1_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	str	r0, [sp, #8]
	ldrb	r0, [r11, #-16]
	str	r0, [r11, #-16]
	b	.LBB1_1
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #16]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB1_4
	b	.LBB1_2
.LBB1_2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r1, .LCPI1_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	ldr	r0, [sp, #12]
	strb	r1, [r0]
	ldr	r2, [r11, #-16]
	subs	r0, r1, r2
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB1_4
	b	.LBB1_3
.LBB1_3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI1_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB1_4
.LBB1_4:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_7
	b	.LBB1_5
.LBB1_5:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r1, .LCPI1_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB1_6
.LBB1_6:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #16]
	sub	r0, r0, #1
	str	r0, [sp, #16]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB1_1
.LBB1_7:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB1_9
	b	.LBB1_8
.LBB1_8:
	ldr	r1, .LCPI1_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB1_10
.LBB1_9:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB1_10
.LBB1_10:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI1_0:
	.long	.L__profc_memccpy(sbrel)
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
	sub	sp, sp, #28
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, .LCPI2_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #12]
	ldrb	r0, [r11, #-8]
	str	r0, [r11, #-8]
	b	.LBB2_1
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB2_4
	b	.LBB2_2
.LBB2_2:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r1, .LCPI2_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #12]
	ldrb	r1, [r0]
	ldr	r2, [r11, #-8]
	subs	r0, r1, r2
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB2_4
	b	.LBB2_3
.LBB2_3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI2_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB2_4
.LBB2_4:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB2_7
	b	.LBB2_5
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r1, .LCPI2_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB2_6
.LBB2_6:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	sub	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB2_1
.LBB2_7:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB2_9
	b	.LBB2_8
.LBB2_8:
	ldr	r1, .LCPI2_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [sp, #12]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB2_10
.LBB2_9:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB2_10
.LBB2_10:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI2_0:
	.long	.L__profc_memchr(sbrel)
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
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, .LCPI3_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #12]
	b	.LBB3_1
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB3_4
	b	.LBB3_2
.LBB3_2:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r1, .LCPI3_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #16]
	ldrb	r1, [r0]
	ldr	r0, [sp, #12]
	ldrb	r2, [r0]
	sub	r0, r1, r2
	rsbs	r3, r0, #0
	adc	r0, r0, r3
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	bne	.LBB3_4
	b	.LBB3_3
.LBB3_3:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI3_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB3_4
.LBB3_4:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB3_7
	b	.LBB3_5
.LBB3_5:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r1, .LCPI3_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB3_6
.LBB3_6:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r11, #-12]
	sub	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB3_1
.LBB3_7:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB3_9
	b	.LBB3_8
.LBB3_8:
	ldr	r1, .LCPI3_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [sp, #16]
	ldrb	r0, [r0]
	ldr	r1, [sp, #12]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB3_10
.LBB3_9:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB3_10
.LBB3_10:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI3_0:
	.long	.L__profc_memcmp(sbrel)
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
	ldr	r0, .LCPI4_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI4_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.5:
.LCPI4_0:
	.long	.L__profc_memcpy(sbrel)
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
	ldr	r0, .LCPI5_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI5_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bne	.LBB5_4
	b	.LBB5_3
.LBB5_3:
	ldr	r1, .LCPI5_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI5_0:
	.long	.L__profc_memrchr(sbrel)
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
	ldr	r0, .LCPI6_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	b	.LBB6_1
.LBB6_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB6_4
	b	.LBB6_2
.LBB6_2:                                @   in Loop: Header=BB6_1 Depth=1
	ldr	r1, .LCPI6_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.5:
.LCPI6_0:
	.long	.L__profc_memset(sbrel)
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
	ldr	r0, .LCPI7_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI7_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.5:
.LCPI7_0:
	.long	.L__profc_stpcpy(sbrel)
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
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, .LCPI8_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldrb	r0, [sp, #8]
	str	r0, [sp, #8]
	b	.LBB8_1
.LBB8_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB8_4
	b	.LBB8_2
.LBB8_2:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r1, .LCPI8_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-4]
	ldrb	r1, [r0]
	ldr	r2, [sp, #8]
	subs	r0, r1, r2
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB8_4
	b	.LBB8_3
.LBB8_3:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI8_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB8_4
.LBB8_4:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB8_7
	b	.LBB8_5
.LBB8_5:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r1, .LCPI8_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB8_6
.LBB8_6:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB8_1
.LBB8_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI8_0:
	.long	.L__profc_strchrnul(sbrel)
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
	ldr	r0, .LCPI9_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB9_2
.LBB9_1:                                @   in Loop: Header=BB9_2 Depth=1
	ldr	r1, .LCPI9_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB9_2
.LBB9_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldrb	r0, [r0]
	ldr	r1, [sp]
	cmp	r0, r1
	bne	.LBB9_4
	b	.LBB9_3
.LBB9_3:
	ldr	r1, .LCPI9_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB9_7
.LBB9_4:                                @   in Loop: Header=BB9_2 Depth=1
	b	.LBB9_5
.LBB9_5:                                @   in Loop: Header=BB9_2 Depth=1
	ldr	r0, [sp, #4]
	add	r1, r0, #1
	str	r1, [sp, #4]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB9_1
	b	.LBB9_6
.LBB9_6:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB9_7
.LBB9_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI9_0:
	.long	.L__profc_strchr(sbrel)
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
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, .LCPI10_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB10_1
.LBB10_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r1, [r0]
	ldr	r0, [sp, #8]
	ldrb	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB10_4
	b	.LBB10_2
.LBB10_2:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r1, .LCPI10_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-4]
	ldrb	r1, [r0]
	cmp	r1, #0
	mov	r0, r1
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB10_4
	b	.LBB10_3
.LBB10_3:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI10_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB10_4
.LBB10_4:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB10_7
	b	.LBB10_5
.LBB10_5:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r1, .LCPI10_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB10_6
.LBB10_6:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB10_1
.LBB10_7:
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI10_0:
	.long	.L__profc_strcmp(sbrel)
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
	ldr	r0, .LCPI11_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI11_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.5:
.LCPI11_0:
	.long	.L__profc_strlen(sbrel)
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
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	ldr	r0, .LCPI12_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	sub	r1, r0, #1
	str	r1, [sp, #16]
	cmp	r0, #0
	bne	.LBB12_2
	b	.LBB12_1
.LBB12_1:
	ldr	r1, .LCPI12_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB12_14
.LBB12_2:
	b	.LBB12_3
.LBB12_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB12_10
	b	.LBB12_4
.LBB12_4:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r1, .LCPI12_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	ldr	r0, [sp, #8]
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB12_10
	b	.LBB12_5
.LBB12_5:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r1, .LCPI12_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	b	.LBB12_6
.LBB12_6:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r1, .LCPI12_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r1, [sp, #16]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB12_10
	b	.LBB12_7
.LBB12_7:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r1, .LCPI12_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	b	.LBB12_8
.LBB12_8:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r1, .LCPI12_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #12]
	ldrb	r1, [r0]
	ldr	r0, [sp, #8]
	ldrb	r2, [r0]
	sub	r0, r1, r2
	rsbs	r3, r0, #0
	adc	r0, r0, r3
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB12_10
	b	.LBB12_9
.LBB12_9:                               @   in Loop: Header=BB12_3 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI12_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #32]
	ldr	r1, [r2, #36]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #32]
	str	r1, [r2, #36]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB12_10
.LBB12_10:                              @   in Loop: Header=BB12_3 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB12_13
	b	.LBB12_11
.LBB12_11:                              @   in Loop: Header=BB12_3 Depth=1
	ldr	r1, .LCPI12_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	b	.LBB12_12
.LBB12_12:                              @   in Loop: Header=BB12_3 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	sub	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB12_3
.LBB12_13:
	ldr	r0, [sp, #12]
	ldrb	r0, [r0]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1]
	sub	r0, r0, r1
	str	r0, [r11, #-4]
	b	.LBB12_14
.LBB12_14:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.15:
.LCPI12_0:
	.long	.L__profc_strncmp(sbrel)
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
	ldr	r0, .LCPI13_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI13_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.5:
.LCPI13_0:
	.long	.L__profc_swab(sbrel)
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
	ldr	r0, .LCPI14_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	orr	r0, r0, #32
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #26
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI14_0:
	.long	.L__profc_isalpha(sbrel)
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
	ldr	r0, .LCPI15_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	bic	r0, r0, #127
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI15_0:
	.long	.L__profc_isascii(sbrel)
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
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	ldr	r0, .LCPI16_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r1, [r11, #-4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB16_3
	b	.LBB16_1
.LBB16_1:
	ldr	r1, .LCPI16_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r1, [r11, #-4]
	sub	r0, r1, #9
	rsbs	r2, r0, #0
	adc	r0, r0, r2
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #9
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB16_3
	b	.LBB16_2
.LBB16_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI16_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB16_3
.LBB16_3:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI16_0:
	.long	.L__profc_isblank(sbrel)
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
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	ldr	r0, .LCPI17_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r1, [r11, #-4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB17_3
	b	.LBB17_1
.LBB17_1:
	ldr	r1, .LCPI17_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r1, [r11, #-4]
	sub	r0, r1, #127
	rsbs	r2, r0, #0
	adc	r0, r0, r2
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #127
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB17_3
	b	.LBB17_2
.LBB17_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI17_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB17_3
.LBB17_3:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI17_0:
	.long	.L__profc_iscntrl(sbrel)
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
	ldr	r0, .LCPI18_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	sub	r1, r0, #48
	mov	r0, #0
	cmp	r1, #10
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI18_0:
	.long	.L__profc_isdigit(sbrel)
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
	ldr	r0, .LCPI19_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	sub	r1, r0, #33
	mov	r0, #0
	cmp	r1, #94
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI19_0:
	.long	.L__profc_isgraph(sbrel)
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
	ldr	r0, .LCPI20_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #26
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI20_0:
	.long	.L__profc_islower(sbrel)
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
	ldr	r0, .LCPI21_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	sub	r1, r0, #32
	mov	r0, #0
	cmp	r1, #95
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI21_0:
	.long	.L__profc_isprint(sbrel)
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
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	ldr	r0, .LCPI22_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r1, [r11, #-4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB22_3
	b	.LBB22_1
.LBB22_1:
	ldr	r1, .LCPI22_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-4]
	sub	r1, r0, #9
	mov	r0, #0
	cmp	r1, #5
	movlo	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #5
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB22_3
	b	.LBB22_2
.LBB22_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI22_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB22_3
.LBB22_3:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI22_0:
	.long	.L__profc_isspace(sbrel)
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
	ldr	r0, .LCPI23_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	sub	r1, r0, #65
	mov	r0, #0
	cmp	r1, #26
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI23_0:
	.long	.L__profc_isupper(sbrel)
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
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	ldr	r0, .LCPI24_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r1, [r11, #-4]
	mov	r0, #1
	cmp	r1, #32
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB24_7
	b	.LBB24_1
.LBB24_1:
	ldr	r1, .LCPI24_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [r11, #-4]
	sub	r1, r0, #127
	mov	r0, #1
	cmp	r1, #33
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB24_7
	b	.LBB24_2
.LBB24_2:
	ldr	r1, .LCPI24_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	b	.LBB24_3
.LBB24_3:
	ldr	r1, .LCPI24_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [r11, #-4]
	mvn	r1, #39
	sub	r1, r1, #8192
	add	r1, r0, r1
	mov	r0, #1
	cmp	r1, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB24_7
	b	.LBB24_4
.LBB24_4:
	ldr	r1, .LCPI24_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	b	.LBB24_5
.LBB24_5:
	ldr	r1, .LCPI24_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-4]
	mvn	r1, #248
	sub	r1, r1, #65280
	add	r1, r0, r1
	mov	r0, #0
	cmp	r1, #3
	movlo	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #3
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB24_7
	b	.LBB24_6
.LBB24_6:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI24_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB24_7
.LBB24_7:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI24_0:
	.long	.L__profc_iswcntrl(sbrel)
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
	ldr	r0, .LCPI25_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	sub	r1, r0, #48
	mov	r0, #0
	cmp	r1, #10
	movlo	r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI25_0:
	.long	.L__profc_iswdigit(sbrel)
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
	ldr	r0, .LCPI26_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	cmp	r0, #254
	bhi	.LBB26_2
	b	.LBB26_1
.LBB26_1:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp]
	add	r0, r0, #1
	and	r1, r0, #127
	mov	r0, #0
	cmp	r1, #32
	movgt	r0, #1
	str	r0, [sp, #4]
	b	.LBB26_13
.LBB26_2:
	ldr	r0, [sp]
	mov	r1, #40
	orr	r1, r1, #8192
	cmp	r0, r1
	blo	.LBB26_7
	b	.LBB26_3
.LBB26_3:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [sp]
	mvn	r1, #41
	sub	r1, r1, #8192
	add	r0, r0, r1
	mov	r1, #214
	orr	r1, r1, #46848
	cmp	r0, r1
	blo	.LBB26_7
	b	.LBB26_4
.LBB26_4:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	b	.LBB26_5
.LBB26_5:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp]
	sub	r0, r0, #57344
	mov	r1, #249
	orr	r1, r1, #7936
	cmp	r0, r1
	blo	.LBB26_7
	b	.LBB26_6
.LBB26_6:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	b	.LBB26_8
.LBB26_7:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	mov	r0, #1
	str	r0, [sp, #4]
	b	.LBB26_13
.LBB26_8:
	ldr	r0, [sp]
	ldr	r1, .LCPI26_1
	add	r0, r0, r1
	mov	r1, #3
	orr	r1, r1, #1048576
	cmp	r0, r1
	bhi	.LBB26_11
	b	.LBB26_9
.LBB26_9:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	ldr	r0, [sp]
	mov	r1, #254
	orr	r1, r1, #65280
	and	r0, r0, r1
	cmp	r0, r1
	beq	.LBB26_11
	b	.LBB26_10
.LBB26_10:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #72]
	ldr	r0, [r1, #76]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #72]
	str	r0, [r1, #76]
	b	.LBB26_12
.LBB26_11:
	ldr	r1, .LCPI26_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB26_13
.LBB26_12:
	mov	r0, #1
	str	r0, [sp, #4]
	b	.LBB26_13
.LBB26_13:
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI26_0:
	.long	.L__profc_iswprint(sbrel)
.LCPI26_1:
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
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	ldr	r0, .LCPI27_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	sub	r1, r0, #48
	mov	r0, #1
	cmp	r1, #10
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB27_3
	b	.LBB27_1
.LBB27_1:
	ldr	r1, .LCPI27_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-4]
	orr	r0, r0, #32
	sub	r1, r0, #97
	mov	r0, #0
	cmp	r1, #6
	movlo	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #6
	str	r0, [sp, #4]                    @ 4-byte Spill
	blo	.LBB27_3
	b	.LBB27_2
.LBB27_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI27_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB27_3
.LBB27_3:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI27_0:
	.long	.L__profc_iswxdigit(sbrel)
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
	ldr	r0, .LCPI28_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	and	r0, r0, #127
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI28_0:
	.long	.L__profc_toascii(sbrel)
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
	ldr	r0, .LCPI29_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI29_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI29_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r4, .LCPI29_1
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #1
	blt	.LBB29_6
	b	.LBB29_5
.LBB29_5:
	ldr	r1, .LCPI29_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI29_2
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
	.long	.L__profc_fdim(sbrel)
.LCPI29_1:
	.long	__gtdf2
.LCPI29_2:
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
	ldr	r0, .LCPI30_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI30_1
	cmp	r0, r1
	blt	.LBB30_2
	b	.LBB30_1
.LBB30_1:
	ldr	r1, .LCPI30_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB30_8
.LBB30_2:
	ldr	r0, [sp, #4]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI30_1
	cmp	r0, r1
	blt	.LBB30_4
	b	.LBB30_3
.LBB30_3:
	ldr	r1, .LCPI30_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB30_8
.LBB30_4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI30_2
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #1
	blt	.LBB30_6
	b	.LBB30_5
.LBB30_5:
	ldr	r1, .LCPI30_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI30_3
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
	.long	.L__profc_fdimf(sbrel)
.LCPI30_1:
	.long	2139095041                      @ 0x7f800001
.LCPI30_2:
	.long	__gtsf2
.LCPI30_3:
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
	ldr	r0, .LCPI31_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI31_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI31_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI31_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB31_7
	b	.LBB31_6
.LBB31_6:
	ldr	r1, .LCPI31_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	ldr	r4, .LCPI31_1
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB31_11
	b	.LBB31_10
.LBB31_10:
	ldr	r1, .LCPI31_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
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
	.long	.L__profc_fmax(sbrel)
.LCPI31_1:
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
	ldr	r0, .LCPI32_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI32_1
	cmp	r0, r1
	blt	.LBB32_2
	b	.LBB32_1
.LBB32_1:
	ldr	r1, .LCPI32_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp, #12]
	str	r0, [r11, #-4]
	b	.LBB32_13
.LBB32_2:
	ldr	r0, [sp, #12]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI32_1
	cmp	r0, r1
	blt	.LBB32_4
	b	.LBB32_3
.LBB32_3:
	ldr	r1, .LCPI32_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI32_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [r11, #-8]
	cmn	r0, #1
	bgt	.LBB32_7
	b	.LBB32_6
.LBB32_6:
	ldr	r1, .LCPI32_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	ldr	r2, .LCPI32_2
	mov	lr, pc
	mov	pc, r2
	cmn	r0, #1
	bgt	.LBB32_11
	b	.LBB32_10
.LBB32_10:
	ldr	r1, .LCPI32_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
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
	.long	.L__profc_fmaxf(sbrel)
.LCPI32_1:
	.long	2139095041                      @ 0x7f800001
.LCPI32_2:
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
	ldr	r0, .LCPI33_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI33_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI33_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI33_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB33_7
	b	.LBB33_6
.LBB33_6:
	ldr	r1, .LCPI33_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	ldr	r4, .LCPI33_1
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB33_11
	b	.LBB33_10
.LBB33_10:
	ldr	r1, .LCPI33_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
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
	.long	.L__profc_fmaxl(sbrel)
.LCPI33_1:
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
	ldr	r0, .LCPI34_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI34_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI34_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI34_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB34_7
	b	.LBB34_6
.LBB34_6:
	ldr	r1, .LCPI34_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	ldr	r4, .LCPI34_1
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB34_11
	b	.LBB34_10
.LBB34_10:
	ldr	r1, .LCPI34_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
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
	.long	.L__profc_fmin(sbrel)
.LCPI34_1:
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
	ldr	r0, .LCPI35_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI35_1
	cmp	r0, r1
	blt	.LBB35_2
	b	.LBB35_1
.LBB35_1:
	ldr	r1, .LCPI35_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp, #12]
	str	r0, [r11, #-4]
	b	.LBB35_13
.LBB35_2:
	ldr	r0, [sp, #12]
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI35_1
	cmp	r0, r1
	blt	.LBB35_4
	b	.LBB35_3
.LBB35_3:
	ldr	r1, .LCPI35_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI35_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [r11, #-8]
	cmn	r0, #1
	bgt	.LBB35_7
	b	.LBB35_6
.LBB35_6:
	ldr	r1, .LCPI35_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	ldr	r2, .LCPI35_2
	mov	lr, pc
	mov	pc, r2
	cmn	r0, #1
	bgt	.LBB35_11
	b	.LBB35_10
.LBB35_10:
	ldr	r1, .LCPI35_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
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
	.long	.L__profc_fminf(sbrel)
.LCPI35_1:
	.long	2139095041                      @ 0x7f800001
.LCPI35_2:
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
	ldr	r0, .LCPI36_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI36_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI36_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI36_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #28]
	cmn	r0, #1
	bgt	.LBB36_7
	b	.LBB36_6
.LBB36_6:
	ldr	r1, .LCPI36_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	ldr	r4, .LCPI36_1
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB36_11
	b	.LBB36_10
.LBB36_10:
	ldr	r1, .LCPI36_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
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
	.long	.L__profc_fminl(sbrel)
.LCPI36_1:
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
	ldr	r1, .LCPI37_0
	mov	r0, r9
	mov	r2, r0
	ldr	r3, [r2, r1]!
	ldr	r1, [r2, #4]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2]
	str	r1, [r2, #4]
	ldr	r1, [r11, #-4]
	str	r1, [sp]
	ldr	r1, .LCPI37_1
	add	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB37_1
.LBB37_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB37_4
	b	.LBB37_2
.LBB37_2:                               @   in Loop: Header=BB37_1 Depth=1
	ldr	r1, .LCPI37_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp]
	and	r1, r0, #63
	ldr	r0, .LCPI37_2
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
	ldr	r1, .LCPI37_1
	mov	r0, r9
	add	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.5:
.LCPI37_0:
	.long	.L__profc_l64a(sbrel)
.LCPI37_1:
	.long	l64a.s(sbrel)
.LCPI37_2:
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
	ldr	r0, .LCPI38_0
	mov	r1, r9
	mov	r2, r1
	ldr	r3, [r2, r0]!
	ldr	r0, [r2, #4]
	adds	r3, r3, #1
	adc	r0, r0, #0
	str	r3, [r2]
	str	r0, [r2, #4]
	ldr	r0, [sp]
	sub	r0, r0, #1
	ldr	r2, .LCPI38_1
	str	r0, [r1, r2]!
	mov	r0, #0
	str	r0, [r1, #4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI38_0:
	.long	.L__profc_srand(sbrel)
.LCPI38_1:
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
	mov	r2, r0
	ldr	r3, [r2, r1]!
	ldr	r1, [r2, #4]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2]
	str	r1, [r2, #4]
	ldr	r1, .LCPI39_1
	ldr	r3, [r0, r1]!
	ldr	r12, [r0, #4]
	ldr	lr, .LCPI39_2
	umull	r2, r5, r3, lr
	ldr	r4, .LCPI39_3
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
	.long	.L__profc_rand(sbrel)
.LCPI39_1:
	.long	seed(sbrel)
.LCPI39_2:
	.long	1284865837                      @ 0x4c957f2d
.LCPI39_3:
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
	ldr	r0, .LCPI40_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	bne	.LBB40_2
	b	.LBB40_1
.LBB40_1:
	ldr	r1, .LCPI40_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI40_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	str	r0, [r1, #4]
	b	.LBB40_4
.LBB40_4:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.5:
.LCPI40_0:
	.long	.L__profc_insque(sbrel)
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
	ldr	r0, .LCPI41_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB41_2
	b	.LBB41_1
.LBB41_1:
	ldr	r1, .LCPI41_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI41_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r1, [sp]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	str	r0, [r1]
	b	.LBB41_4
.LBB41_4:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.5:
.LCPI41_0:
	.long	.L__profc_remque(sbrel)
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
	ldr	r0, .LCPI42_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI42_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI42_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r3, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r3, r3, #1
	adc	r0, r0, #0
	str	r3, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r3, .LCPI42_1
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
	.long	.L__profc_lsearch(sbrel)
.LCPI42_1:
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
	ldr	r0, .LCPI43_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI43_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI43_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r3, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r3, r3, #1
	adc	r0, r0, #0
	str	r3, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.8:
.LCPI43_0:
	.long	.L__profc_lfind(sbrel)
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
	ldr	r0, .LCPI44_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #1
	blt	.LBB44_2
	b	.LBB44_1
.LBB44_1:
	ldr	r1, .LCPI44_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.4:
.LCPI44_0:
	.long	.L__profc_abs(sbrel)
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
	ldr	r0, .LCPI45_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [r11, #-8]
	str	r0, [sp, #12]
	b	.LBB45_1
.LBB45_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI45_1
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB45_3
	b	.LBB45_2
.LBB45_2:                               @   in Loop: Header=BB45_1 Depth=1
	ldr	r1, .LCPI45_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	bne	.LBB45_8
	b	.LBB45_5
.LBB45_5:
	ldr	r1, .LCPI45_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	mov	r0, #1
	str	r0, [sp, #12]
	b	.LBB45_7
.LBB45_6:
	ldr	r1, .LCPI45_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	b	.LBB45_7
.LBB45_7:
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB45_8
.LBB45_8:
	ldr	r1, .LCPI45_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	b	.LBB45_9
.LBB45_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI45_2
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB45_11
	b	.LBB45_10
.LBB45_10:                              @   in Loop: Header=BB45_9 Depth=1
	ldr	r1, .LCPI45_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [r11, #-8]
	add	r1, r0, r0, lsl #2
	ldr	r0, [r11, #-4]
	add	r2, r0, #1
	str	r2, [r11, #-4]
	ldrb	r0, [r0]
	rsb	r0, r0, r1, lsl #1
	add	r0, r0, #48
	str	r0, [r11, #-8]
	b	.LBB45_9
.LBB45_11:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB45_13
	b	.LBB45_12
.LBB45_12:
	ldr	r1, .LCPI45_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB45_14
.LBB45_13:
	ldr	r0, [r11, #-8]
	rsb	r0, r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB45_14
.LBB45_14:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.15:
.LCPI45_0:
	.long	.L__profc_atoi(sbrel)
.LCPI45_1:
	.long	isspace
.LCPI45_2:
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
	ldr	r0, .LCPI46_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [r11, #-8]
	str	r0, [sp, #12]
	b	.LBB46_1
.LBB46_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI46_1
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB46_3
	b	.LBB46_2
.LBB46_2:                               @   in Loop: Header=BB46_1 Depth=1
	ldr	r1, .LCPI46_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	bne	.LBB46_8
	b	.LBB46_5
.LBB46_5:
	ldr	r1, .LCPI46_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	mov	r0, #1
	str	r0, [sp, #12]
	b	.LBB46_7
.LBB46_6:
	ldr	r1, .LCPI46_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	b	.LBB46_7
.LBB46_7:
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB46_8
.LBB46_8:
	ldr	r1, .LCPI46_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	b	.LBB46_9
.LBB46_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI46_2
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB46_11
	b	.LBB46_10
.LBB46_10:                              @   in Loop: Header=BB46_9 Depth=1
	ldr	r1, .LCPI46_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [r11, #-8]
	add	r1, r0, r0, lsl #2
	ldr	r0, [r11, #-4]
	add	r2, r0, #1
	str	r2, [r11, #-4]
	ldrb	r0, [r0]
	rsb	r0, r0, r1, lsl #1
	add	r0, r0, #48
	str	r0, [r11, #-8]
	b	.LBB46_9
.LBB46_11:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB46_13
	b	.LBB46_12
.LBB46_12:
	ldr	r1, .LCPI46_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB46_14
.LBB46_13:
	ldr	r0, [r11, #-8]
	rsb	r0, r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB46_14
.LBB46_14:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.15:
.LCPI46_0:
	.long	.L__profc_atol(sbrel)
.LCPI46_1:
	.long	isspace
.LCPI46_2:
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
	ldr	r0, .LCPI47_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp, #20]
	str	r0, [sp, #16]
	str	r0, [sp, #12]
	b	.LBB47_1
.LBB47_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI47_1
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB47_3
	b	.LBB47_2
.LBB47_2:                               @   in Loop: Header=BB47_1 Depth=1
	ldr	r1, .LCPI47_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	bne	.LBB47_8
	b	.LBB47_5
.LBB47_5:
	ldr	r1, .LCPI47_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	mov	r0, #1
	str	r0, [sp, #12]
	b	.LBB47_7
.LBB47_6:
	ldr	r1, .LCPI47_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	b	.LBB47_7
.LBB47_7:
	ldr	r0, [r11, #-4]
	add	r0, r0, #1
	str	r0, [r11, #-4]
	b	.LBB47_8
.LBB47_8:
	ldr	r1, .LCPI47_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	b	.LBB47_9
.LBB47_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, .LCPI47_2
	mov	lr, pc
	mov	pc, r1
	cmp	r0, #0
	beq	.LBB47_11
	b	.LBB47_10
.LBB47_10:                              @   in Loop: Header=BB47_9 Depth=1
	ldr	r1, .LCPI47_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
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
	b	.LBB47_9
.LBB47_11:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB47_13
	b	.LBB47_12
.LBB47_12:
	ldr	r1, .LCPI47_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB47_14
.LBB47_13:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	rsbs	r1, r1, #0
	rsc	r0, r0, #0
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB47_14
.LBB47_14:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.15:
.LCPI47_0:
	.long	.L__profc_atoll(sbrel)
.LCPI47_1:
	.long	isspace
.LCPI47_2:
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
	ldr	r0, .LCPI48_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB48_1
.LBB48_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB48_9
	b	.LBB48_2
.LBB48_2:                               @   in Loop: Header=BB48_1 Depth=1
	ldr	r1, .LCPI48_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI48_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI48_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	.p2align	2
@ %bb.11:
.LCPI48_0:
	.long	.L__profc_bsearch(sbrel)
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
	ldr	r0, .LCPI49_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI49_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI49_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #4]
	str	r0, [r11, #-4]
	b	.LBB49_9
.LBB49_4:                               @   in Loop: Header=BB49_1 Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #1
	blt	.LBB49_6
	b	.LBB49_5
.LBB49_5:                               @   in Loop: Header=BB49_1 Depth=1
	ldr	r1, .LCPI49_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	.p2align	2
@ %bb.10:
.LCPI49_0:
	.long	.L__profc_bsearch_r(sbrel)
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
	ldr	r0, .LCPI50_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI50_1
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI50_2
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
	.long	.L__profc_div(sbrel)
.LCPI50_1:
	.long	__divsi3
.LCPI50_2:
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
	ldr	r0, .LCPI51_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	subs	r1, r1, #1
	sbcs	r0, r0, #0
	blt	.LBB51_2
	b	.LBB51_1
.LBB51_1:
	ldr	r1, .LCPI51_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.4:
.LCPI51_0:
	.long	.L__profc_imaxabs(sbrel)
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
	ldr	r0, .LCPI52_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI52_1
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
	ldr	r4, .LCPI52_2
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
	.long	.L__profc_imaxdiv(sbrel)
.LCPI52_1:
	.long	__divdi3
.LCPI52_2:
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
	ldr	r0, .LCPI53_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #1
	blt	.LBB53_2
	b	.LBB53_1
.LBB53_1:
	ldr	r1, .LCPI53_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.4:
.LCPI53_0:
	.long	.L__profc_labs(sbrel)
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
	ldr	r0, .LCPI54_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI54_1
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI54_2
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
	.long	.L__profc_ldiv(sbrel)
.LCPI54_1:
	.long	__divsi3
.LCPI54_2:
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
	ldr	r0, .LCPI55_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	subs	r1, r1, #1
	sbcs	r0, r0, #0
	blt	.LBB55_2
	b	.LBB55_1
.LBB55_1:
	ldr	r1, .LCPI55_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.4:
.LCPI55_0:
	.long	.L__profc_llabs(sbrel)
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
	ldr	r0, .LCPI56_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI56_1
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
	ldr	r4, .LCPI56_2
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
	.long	.L__profc_lldiv(sbrel)
.LCPI56_1:
	.long	__divdi3
.LCPI56_2:
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
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, .LCPI57_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB57_1
.LBB57_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB57_4
	b	.LBB57_2
.LBB57_2:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r1, .LCPI57_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r2, [r11, #-8]
	subs	r0, r1, r2
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB57_4
	b	.LBB57_3
.LBB57_3:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI57_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB57_4
.LBB57_4:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB57_7
	b	.LBB57_5
.LBB57_5:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r1, .LCPI57_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB57_6
.LBB57_6:                               @   in Loop: Header=BB57_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	b	.LBB57_1
.LBB57_7:
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB57_9
	b	.LBB57_8
.LBB57_8:
	ldr	r1, .LCPI57_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB57_10
.LBB57_9:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB57_10
.LBB57_10:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI57_0:
	.long	.L__profc_wcschr(sbrel)
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
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, .LCPI58_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB58_1
.LBB58_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	bne	.LBB58_6
	b	.LBB58_2
.LBB58_2:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r1, .LCPI58_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB58_6
	b	.LBB58_3
.LBB58_3:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r1, .LCPI58_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	b	.LBB58_4
.LBB58_4:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r1, .LCPI58_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r0]
	cmp	r1, #0
	mov	r0, r1
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB58_6
	b	.LBB58_5
.LBB58_5:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI58_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB58_6
.LBB58_6:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB58_9
	b	.LBB58_7
.LBB58_7:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r1, .LCPI58_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB58_8
.LBB58_8:                               @   in Loop: Header=BB58_1 Depth=1
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-8]
	add	r0, r0, #4
	str	r0, [r11, #-8]
	b	.LBB58_1
.LBB58_9:
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB58_11
	b	.LBB58_10
.LBB58_10:
	ldr	r1, .LCPI58_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	mvn	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB58_12
.LBB58_11:
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB58_12
.LBB58_12:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.13:
.LCPI58_0:
	.long	.L__profc_wcscmp(sbrel)
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
	ldr	r0, .LCPI59_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI59_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB59_1
.LBB59_3:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI59_0:
	.long	.L__profc_wcscpy(sbrel)
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
	ldr	r0, .LCPI60_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI60_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.5:
.LCPI60_0:
	.long	.L__profc_wcslen(sbrel)
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
	sub	sp, sp, #28
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, .LCPI61_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB61_1
.LBB61_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	beq	.LBB61_8
	b	.LBB61_2
.LBB61_2:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #12]                   @ 4-byte Spill
	bne	.LBB61_8
	b	.LBB61_3
.LBB61_3:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	b	.LBB61_4
.LBB61_4:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	beq	.LBB61_8
	b	.LBB61_5
.LBB61_5:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	b	.LBB61_6
.LBB61_6:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r0]
	cmp	r1, #0
	mov	r0, r1
	movne	r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	beq	.LBB61_8
	b	.LBB61_7
.LBB61_7:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, .LCPI61_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB61_8
.LBB61_8:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	tst	r0, #1
	beq	.LBB61_11
	b	.LBB61_9
.LBB61_9:                               @   in Loop: Header=BB61_1 Depth=1
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB61_10
.LBB61_10:                              @   in Loop: Header=BB61_1 Depth=1
	ldr	r0, [r11, #-12]
	sub	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-8]
	add	r0, r0, #4
	str	r0, [r11, #-8]
	b	.LBB61_1
.LBB61_11:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB61_16
	b	.LBB61_12
.LBB61_12:
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB61_14
	b	.LBB61_13
.LBB61_13:
	ldr	r1, .LCPI61_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #72]
	ldr	r0, [r1, #76]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #72]
	str	r0, [r1, #76]
	mvn	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB61_15
.LBB61_14:
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB61_15
.LBB61_15:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB61_17
.LBB61_16:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB61_17
.LBB61_17:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.18:
.LCPI61_0:
	.long	.L__profc_wcsncmp(sbrel)
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
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, .LCPI62_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB62_1
.LBB62_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB62_4
	b	.LBB62_2
.LBB62_2:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r1, .LCPI62_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r2, [r11, #-8]
	subs	r0, r1, r2
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB62_4
	b	.LBB62_3
.LBB62_3:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI62_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB62_4
.LBB62_4:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB62_7
	b	.LBB62_5
.LBB62_5:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r1, .LCPI62_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB62_6
.LBB62_6:                               @   in Loop: Header=BB62_1 Depth=1
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	b	.LBB62_1
.LBB62_7:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB62_9
	b	.LBB62_8
.LBB62_8:
	ldr	r1, .LCPI62_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB62_10
.LBB62_9:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB62_10
.LBB62_10:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI62_0:
	.long	.L__profc_wmemchr(sbrel)
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
	sub	sp, sp, #28
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, .LCPI63_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB63_1
.LBB63_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	beq	.LBB63_4
	b	.LBB63_2
.LBB63_2:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r1, .LCPI63_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	sub	r0, r1, r2
	rsbs	r3, r0, #0
	adc	r0, r0, r3
	str	r0, [sp, #8]                    @ 4-byte Spill
	cmp	r1, r2
	str	r0, [sp, #12]                   @ 4-byte Spill
	bne	.LBB63_4
	b	.LBB63_3
.LBB63_3:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, .LCPI63_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB63_4
.LBB63_4:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	tst	r0, #1
	beq	.LBB63_7
	b	.LBB63_5
.LBB63_5:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r1, .LCPI63_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB63_6
.LBB63_6:                               @   in Loop: Header=BB63_1 Depth=1
	ldr	r0, [r11, #-12]
	sub	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [r11, #-4]
	add	r0, r0, #4
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-8]
	add	r0, r0, #4
	str	r0, [r11, #-8]
	b	.LBB63_1
.LBB63_7:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	beq	.LBB63_12
	b	.LBB63_8
.LBB63_8:
	ldr	r1, .LCPI63_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB63_10
	b	.LBB63_9
.LBB63_9:
	ldr	r1, .LCPI63_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	mvn	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB63_11
.LBB63_10:
	ldr	r0, [r11, #-4]
	ldr	r1, [r0]
	ldr	r0, [r11, #-8]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB63_11
.LBB63_11:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB63_13
.LBB63_12:
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB63_13
.LBB63_13:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI63_0:
	.long	.L__profc_wmemcmp(sbrel)
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
	ldr	r0, .LCPI64_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI64_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.4:
.LCPI64_0:
	.long	.L__profc_wmemcpy(sbrel)
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
	ldr	r0, .LCPI65_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
	ldr	r0, [r11, #-8]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bne	.LBB65_2
	b	.LBB65_1
.LBB65_1:
	ldr	r1, .LCPI65_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI65_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	b	.LBB65_4
.LBB65_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	sub	r1, r0, #1
	str	r1, [sp, #4]
	cmp	r0, #0
	beq	.LBB65_6
	b	.LBB65_5
.LBB65_5:                               @   in Loop: Header=BB65_4 Depth=1
	ldr	r1, .LCPI65_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	ldr	r1, .LCPI65_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	.p2align	2
@ %bb.13:
.LCPI65_0:
	.long	.L__profc_wmemmove(sbrel)
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
	ldr	r0, .LCPI66_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI66_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.4:
.LCPI66_0:
	.long	.L__profc_wmemset(sbrel)
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
	ldr	r0, .LCPI67_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI67_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI67_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI67_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB67_8
.LBB67_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB67_11
	b	.LBB67_9
.LBB67_9:                               @   in Loop: Header=BB67_8 Depth=1
	ldr	r1, .LCPI67_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	.p2align	2
@ %bb.14:
.LCPI67_0:
	.long	.L__profc_bcopy(sbrel)
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
	ldr	r0, .LCPI68_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI68_0:
	.long	.L__profc_rotl64(sbrel)
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
	ldr	r0, .LCPI69_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI69_0:
	.long	.L__profc_rotr64(sbrel)
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
	ldr	r0, .LCPI70_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	rsb	r1, r1, #32
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI70_0:
	.long	.L__profc_rotl32(sbrel)
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
	ldr	r0, .LCPI71_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI71_0:
	.long	.L__profc_rotr32(sbrel)
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
	ldr	r0, .LCPI72_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	rsb	r1, r1, #32
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI72_0:
	.long	.L__profc_rotl_sz(sbrel)
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
	ldr	r0, .LCPI73_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ror	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI73_0:
	.long	.L__profc_rotr_sz(sbrel)
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
	ldr	r0, .LCPI74_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI74_0:
	.long	.L__profc_rotl16(sbrel)
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
	ldr	r0, .LCPI75_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI75_0:
	.long	.L__profc_rotr16(sbrel)
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
	ldr	r0, .LCPI76_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldrb	r1, [r11, #-1]
	ldr	r2, [sp]
	lsl	r0, r1, r2
	rsb	r2, r2, #8
	orr	r0, r0, r1, lsr r2
	and	r0, r0, #255
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI76_0:
	.long	.L__profc_rotl8(sbrel)
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
	ldr	r0, .LCPI77_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldrb	r1, [r11, #-1]
	ldr	r2, [sp]
	lsr	r0, r1, r2
	rsb	r2, r2, #8
	orr	r0, r0, r1, lsl r2
	and	r0, r0, #255
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI77_0:
	.long	.L__profc_rotr8(sbrel)
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
	ldr	r0, .LCPI78_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI78_0:
	.long	.L__profc_bswap_16(sbrel)
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
	ldr	r0, .LCPI79_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI79_0:
	.long	.L__profc_bswap_32(sbrel)
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
	ldr	r0, .LCPI80_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI80_0:
	.long	.L__profc_bswap_64(sbrel)
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
	ldr	r0, .LCPI81_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB81_1
.LBB81_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #31
	bhi	.LBB81_6
	b	.LBB81_2
.LBB81_2:                               @   in Loop: Header=BB81_1 Depth=1
	ldr	r1, .LCPI81_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB81_4
	b	.LBB81_3
.LBB81_3:
	ldr	r1, .LCPI81_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.8:
.LCPI81_0:
	.long	.L__profc_ffs(sbrel)
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
	ldr	r0, .LCPI82_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.LBB82_2
	b	.LBB82_1
.LBB82_1:
	ldr	r1, .LCPI82_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI82_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.8:
.LCPI82_0:
	.long	.L__profc_libiberty_ffs(sbrel)
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
	sub	sp, sp, #16
                                        @ kill: def $r1 killed $r0
	str	r0, [r11, #-4]
	ldr	r0, .LCPI83_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	ldr	r2, .LCPI83_1
	mvn	r1, #8388608
	mov	lr, pc
	mov	pc, r2
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	bmi	.LBB83_3
	b	.LBB83_1
.LBB83_1:
	ldr	r1, .LCPI83_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-4]
	ldr	r2, .LCPI83_2
	ldr	r1, .LCPI83_3
	mov	lr, pc
	mov	pc, r2
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	movgt	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	bgt	.LBB83_3
	b	.LBB83_2
.LBB83_2:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI83_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB83_3
.LBB83_3:
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI83_0:
	.long	.L__profc_gl_isinff(sbrel)
.LCPI83_1:
	.long	__ltsf2
.LCPI83_2:
	.long	__gtsf2
.LCPI83_3:
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
	ldr	r0, .LCPI84_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI84_1
	mvn	r2, #0
	mvn	r3, #1048576
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bmi	.LBB84_3
	b	.LBB84_1
.LBB84_1:
	ldr	r1, .LCPI84_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI84_2
	mvn	r2, #0
	ldr	r3, .LCPI84_3
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	movgt	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bgt	.LBB84_3
	b	.LBB84_2
.LBB84_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI84_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB84_3
.LBB84_3:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI84_0:
	.long	.L__profc_gl_isinfd(sbrel)
.LCPI84_1:
	.long	__ltdf2
.LCPI84_2:
	.long	__gtdf2
.LCPI84_3:
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
	ldr	r0, .LCPI85_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI85_1
	mvn	r2, #0
	mvn	r3, #1048576
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bmi	.LBB85_3
	b	.LBB85_1
.LBB85_1:
	ldr	r1, .LCPI85_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI85_2
	mvn	r2, #0
	ldr	r3, .LCPI85_3
	mov	lr, pc
	mov	pc, r4
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	movgt	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bgt	.LBB85_3
	b	.LBB85_2
.LBB85_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI85_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #20]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB85_3
.LBB85_3:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.4:
.LCPI85_0:
	.long	.L__profc_gl_isinfl(sbrel)
.LCPI85_1:
	.long	__ltdf2
.LCPI85_2:
	.long	__gtdf2
.LCPI85_3:
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
	ldr	r0, .LCPI86_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r1, .LCPI86_1
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
	.long	.L__profc__Qp_itoq(sbrel)
.LCPI86_1:
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
	sub	sp, sp, #24
                                        @ kill: def $r2 killed $r0
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, .LCPI87_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	bic	r0, r0, #-2147483648
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	cmp	r0, r1
	bgt	.LBB87_10
	b	.LBB87_1
.LBB87_1:
	ldr	r1, .LCPI87_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r1, [r11, #-4]
	str	r1, [sp, #8]                    @ 4-byte Spill
	ldr	r2, .LCPI87_1
	mov	r0, r1
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, .LCPI87_2
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #0
	beq	.LBB87_10
	b	.LBB87_2
.LBB87_2:
	ldr	r1, .LCPI87_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB87_3
.LBB87_3:
	ldr	r1, .LCPI87_0
	mov	r0, r9
	add	r2, r0, r1
	str	r2, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [r2, #8]
	ldr	r0, [r2, #12]
	adds	r1, r1, #1
	adc	r0, r0, #0
	str	r1, [r2, #8]
	str	r0, [r2, #12]
	ldr	r1, [r11, #-8]
	ldr	r3, [r2, #32]
	ldr	r0, [r2, #36]
	adds	r12, r3, #1
	adc	lr, r0, #0
	cmp	r1, #0
	movmi	r0, lr
	cmp	r1, #0
	movmi	r3, r12
	str	r3, [r2, #32]
	str	r0, [r2, #36]
	mov	r0, #1073741824
	cmp	r1, #0
	movmi	r0, #1056964608
	str	r0, [sp, #12]
	b	.LBB87_4
.LBB87_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, .LCPI87_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [r11, #-8]
	add	r1, r0, r0, lsr #31
	bic	r1, r1, #1
	sub	r0, r0, r1
	cmp	r0, #0
	beq	.LBB87_6
	b	.LBB87_5
.LBB87_5:                               @   in Loop: Header=BB87_4 Depth=1
	ldr	r1, .LCPI87_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r1, [sp, #12]
	ldr	r0, [r11, #-4]
	ldr	r2, .LCPI87_3
	mov	lr, pc
	mov	pc, r2
	str	r0, [r11, #-4]
	b	.LBB87_6
.LBB87_6:                               @   in Loop: Header=BB87_4 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	bne	.LBB87_8
	b	.LBB87_7
.LBB87_7:
	ldr	r1, .LCPI87_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	b	.LBB87_9
.LBB87_8:                               @   in Loop: Header=BB87_4 Depth=1
	ldr	r1, [sp, #12]
	ldr	r2, .LCPI87_4
	mov	r0, r1
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #12]
	b	.LBB87_4
.LBB87_9:
	b	.LBB87_10
.LBB87_10:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI87_0:
	.long	.L__profc_ldexpf(sbrel)
.LCPI87_1:
	.long	__addsf3
.LCPI87_2:
	.long	__eqsf2
.LCPI87_3:
	.long	__mulsf3
.LCPI87_4:
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
	sub	sp, sp, #40
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [r11, #-20]
	ldr	r0, .LCPI88_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	bic	r1, r1, #-2147483648
	rsbs	r0, r0, #0
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB88_10
	b	.LBB88_1
.LBB88_1:
	ldr	r1, .LCPI88_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r2, [r11, #-16]
	str	r2, [sp, #8]                    @ 4-byte Spill
	ldr	r3, [r11, #-12]
	str	r3, [sp, #12]                   @ 4-byte Spill
	ldr	r4, .LCPI88_1
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r4, .LCPI88_2
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB88_10
	b	.LBB88_2
.LBB88_2:
	ldr	r1, .LCPI88_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB88_3
.LBB88_3:
	ldr	r1, .LCPI88_0
	mov	r0, r9
	add	r1, r0, r1
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r2, [r11, #-20]
	ldr	r3, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r12, r3, #1
	adc	lr, r0, #0
	cmp	r2, #0
	movmi	r0, lr
	cmp	r2, #0
	movmi	r3, r12
	str	r3, [r1, #32]
	str	r0, [r1, #36]
	mov	r1, #266338304
	orr	r1, r1, #805306368
	mov	r0, #1073741824
	cmp	r2, #0
	movmi	r0, r1
	str	r0, [sp, #20]
	mov	r0, #0
	str	r0, [sp, #16]
	b	.LBB88_4
.LBB88_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, .LCPI88_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [r11, #-20]
	add	r1, r0, r0, lsr #31
	bic	r1, r1, #1
	sub	r0, r0, r1
	cmp	r0, #0
	beq	.LBB88_6
	b	.LBB88_5
.LBB88_5:                               @   in Loop: Header=BB88_4 Depth=1
	ldr	r1, .LCPI88_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r4, .LCPI88_3
	mov	lr, pc
	mov	pc, r4
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB88_6
.LBB88_6:                               @   in Loop: Header=BB88_4 Depth=1
	ldr	r0, [r11, #-20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	bne	.LBB88_8
	b	.LBB88_7
.LBB88_7:
	ldr	r1, .LCPI88_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	b	.LBB88_9
.LBB88_8:                               @   in Loop: Header=BB88_4 Depth=1
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI88_4
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB88_4
.LBB88_9:
	b	.LBB88_10
.LBB88_10:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI88_0:
	.long	.L__profc_ldexp(sbrel)
.LCPI88_1:
	.long	__adddf3
.LCPI88_2:
	.long	__eqdf2
.LCPI88_3:
	.long	__muldf3
.LCPI88_4:
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
	sub	sp, sp, #40
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	str	r2, [r11, #-20]
	ldr	r0, .LCPI89_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	bic	r1, r1, #-2147483648
	rsbs	r0, r0, #0
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	sbcs	r0, r0, r1
	blt	.LBB89_10
	b	.LBB89_1
.LBB89_1:
	ldr	r1, .LCPI89_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r2, [r11, #-16]
	str	r2, [sp, #8]                    @ 4-byte Spill
	ldr	r3, [r11, #-12]
	str	r3, [sp, #12]                   @ 4-byte Spill
	ldr	r4, .LCPI89_1
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r4, .LCPI89_2
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB89_10
	b	.LBB89_2
.LBB89_2:
	ldr	r1, .LCPI89_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB89_3
.LBB89_3:
	ldr	r1, .LCPI89_0
	mov	r0, r9
	add	r1, r0, r1
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r2, [r11, #-20]
	ldr	r3, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r12, r3, #1
	adc	lr, r0, #0
	cmp	r2, #0
	movmi	r0, lr
	cmp	r2, #0
	movmi	r3, r12
	str	r3, [r1, #32]
	str	r0, [r1, #36]
	mov	r1, #266338304
	orr	r1, r1, #805306368
	mov	r0, #1073741824
	cmp	r2, #0
	movmi	r0, r1
	str	r0, [sp, #20]
	mov	r0, #0
	str	r0, [sp, #16]
	b	.LBB89_4
.LBB89_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, .LCPI89_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [r11, #-20]
	add	r1, r0, r0, lsr #31
	bic	r1, r1, #1
	sub	r0, r0, r1
	cmp	r0, #0
	beq	.LBB89_6
	b	.LBB89_5
.LBB89_5:                               @   in Loop: Header=BB89_4 Depth=1
	ldr	r1, .LCPI89_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r4, .LCPI89_3
	mov	lr, pc
	mov	pc, r4
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	b	.LBB89_6
.LBB89_6:                               @   in Loop: Header=BB89_4 Depth=1
	ldr	r0, [r11, #-20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	bne	.LBB89_8
	b	.LBB89_7
.LBB89_7:
	ldr	r1, .LCPI89_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	b	.LBB89_9
.LBB89_8:                               @   in Loop: Header=BB89_4 Depth=1
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI89_4
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB89_4
.LBB89_9:
	b	.LBB89_10
.LBB89_10:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.11:
.LCPI89_0:
	.long	.L__profc_ldexpl(sbrel)
.LCPI89_1:
	.long	__adddf3
.LCPI89_2:
	.long	__eqdf2
.LCPI89_3:
	.long	__muldf3
.LCPI89_4:
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
	ldr	r0, .LCPI90_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI90_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	.p2align	2
@ %bb.5:
.LCPI90_0:
	.long	.L__profc_memxor(sbrel)
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
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, .LCPI91_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r1, .LCPI91_1
	mov	lr, pc
	mov	pc, r1
	mov	r1, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r0, r0, r1
	str	r0, [sp, #16]
	b	.LBB91_1
.LBB91_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB91_4
	b	.LBB91_2
.LBB91_2:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r1, .LCPI91_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-8]
	ldrb	r1, [r0]
	ldr	r0, [sp, #16]
	strb	r1, [r0]
	cmp	r1, #0
	mov	r0, r1
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB91_4
	b	.LBB91_3
.LBB91_3:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI91_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB91_4
.LBB91_4:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB91_7
	b	.LBB91_5
.LBB91_5:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r1, .LCPI91_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB91_6
.LBB91_6:                               @   in Loop: Header=BB91_1 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	ldr	r0, [r11, #-12]
	sub	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB91_1
.LBB91_7:
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	bne	.LBB91_9
	b	.LBB91_8
.LBB91_8:
	ldr	r1, .LCPI91_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r1, [sp, #16]
	mov	r0, #0
	strb	r0, [r1]
	b	.LBB91_9
.LBB91_9:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.10:
.LCPI91_0:
	.long	.L__profc_strncat(sbrel)
.LCPI91_1:
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
	sub	sp, sp, #20
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, .LCPI92_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB92_1
.LBB92_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #8]
	ldr	r2, [r11, #-8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bhs	.LBB92_4
	b	.LBB92_2
.LBB92_2:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r1, .LCPI92_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldrb	r1, [r0, r1]
	cmp	r1, #0
	mov	r0, r1
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB92_4
	b	.LBB92_3
.LBB92_3:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI92_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB92_4
.LBB92_4:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB92_7
	b	.LBB92_5
.LBB92_5:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r1, .LCPI92_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB92_6
.LBB92_6:                               @   in Loop: Header=BB92_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB92_1
.LBB92_7:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.8:
.LCPI92_0:
	.long	.L__profc_strnlen(sbrel)
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
	ldr	r0, .LCPI93_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	b	.LBB93_1
.LBB93_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB93_3 Depth 2
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB93_8
	b	.LBB93_2
.LBB93_2:                               @   in Loop: Header=BB93_1 Depth=1
	ldr	r1, .LCPI93_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI93_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI93_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	.p2align	2
@ %bb.10:
.LCPI93_0:
	.long	.L__profc_strpbrk(sbrel)
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
	ldr	r0, .LCPI94_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB94_2
.LBB94_1:                               @   in Loop: Header=BB94_2 Depth=1
	ldr	r1, .LCPI94_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	b	.LBB94_2
.LBB94_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bne	.LBB94_4
	b	.LBB94_3
.LBB94_3:                               @   in Loop: Header=BB94_2 Depth=1
	ldr	r1, .LCPI94_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-4]
	str	r0, [sp]
	b	.LBB94_4
.LBB94_4:                               @   in Loop: Header=BB94_2 Depth=1
	b	.LBB94_5
.LBB94_5:                               @   in Loop: Header=BB94_2 Depth=1
	ldr	r0, [r11, #-4]
	add	r1, r0, #1
	str	r1, [r11, #-4]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB94_1
	b	.LBB94_6
.LBB94_6:
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.7:
.LCPI94_0:
	.long	.L__profc_strrchr(sbrel)
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
	ldr	r0, .LCPI95_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r1, .LCPI95_1
	mov	lr, pc
	mov	pc, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.LBB95_2
	b	.LBB95_1
.LBB95_1:
	ldr	r1, .LCPI95_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB95_9
.LBB95_2:
	b	.LBB95_3
.LBB95_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldrb	r1, [r1]
	ldr	r2, .LCPI95_2
	mov	lr, pc
	mov	pc, r2
	str	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB95_8
	b	.LBB95_4
.LBB95_4:                               @   in Loop: Header=BB95_3 Depth=1
	ldr	r1, .LCPI95_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r3, .LCPI95_3
	mov	lr, pc
	mov	pc, r3
	cmp	r0, #0
	bne	.LBB95_6
	b	.LBB95_5
.LBB95_5:
	ldr	r1, .LCPI95_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	.long	.L__profc_strstr(sbrel)
.LCPI95_1:
	.long	strlen
.LCPI95_2:
	.long	strchr
.LCPI95_3:
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
	ldr	r0, .LCPI96_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI96_1
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB96_3
	b	.LBB96_1
.LBB96_1:
	ldr	r1, .LCPI96_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r4, .LCPI96_2
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #1
	blt	.LBB96_3
	b	.LBB96_2
.LBB96_2:
	ldr	r1, .LCPI96_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	b	.LBB96_6
.LBB96_3:
	ldr	r1, .LCPI96_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI96_3
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #1
	blt	.LBB96_7
	b	.LBB96_4
.LBB96_4:
	ldr	r1, .LCPI96_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r4, .LCPI96_4
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB96_7
	b	.LBB96_5
.LBB96_5:
	ldr	r1, .LCPI96_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	b	.LBB96_6
.LBB96_6:
	ldr	r1, .LCPI96_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	eor	r0, r0, #-2147483648
	str	r1, [sp, #16]
	str	r0, [sp, #20]
	b	.LBB96_8
.LBB96_7:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB96_8
.LBB96_8:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.9:
.LCPI96_0:
	.long	.L__profc_copysign(sbrel)
.LCPI96_1:
	.long	__ltdf2
.LCPI96_2:
	.long	__gtdf2
.LCPI96_3:
	.long	__gtdf2
.LCPI96_4:
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
	ldr	r0, .LCPI97_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI97_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB97_13
.LBB97_2:
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB97_4
	b	.LBB97_3
.LBB97_3:
	ldr	r1, .LCPI97_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB97_13
.LBB97_4:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]
	b	.LBB97_5
.LBB97_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bhi	.LBB97_12
	b	.LBB97_6
.LBB97_6:                               @   in Loop: Header=BB97_5 Depth=1
	ldr	r1, .LCPI97_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #8]
	ldrb	r0, [r0]
	ldr	r1, [sp, #16]
	ldrb	r1, [r1]
	cmp	r0, r1
	bne	.LBB97_10
	b	.LBB97_7
.LBB97_7:                               @   in Loop: Header=BB97_5 Depth=1
	ldr	r1, .LCPI97_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	ldr	r1, [sp, #16]
	add	r1, r1, #1
	ldr	r2, [sp, #12]
	sub	r2, r2, #1
	ldr	r3, .LCPI97_1
	mov	lr, pc
	mov	pc, r3
	cmp	r0, #0
	bne	.LBB97_10
	b	.LBB97_8
.LBB97_8:
	ldr	r1, .LCPI97_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	b	.LBB97_9
.LBB97_9:
	ldr	r1, .LCPI97_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB97_13
.LBB97_10:                              @   in Loop: Header=BB97_5 Depth=1
	b	.LBB97_11
.LBB97_11:                              @   in Loop: Header=BB97_5 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB97_5
.LBB97_12:
	mov	r0, #0
	str	r0, [r11, #-4]
	b	.LBB97_13
.LBB97_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.14:
.LCPI97_0:
	.long	.L__profc_memmem(sbrel)
.LCPI97_1:
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
	ldr	r0, .LCPI98_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r3, .LCPI98_1
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
	.long	.L__profc_mempcpy(sbrel)
.LCPI98_1:
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
	ldr	r0, .LCPI99_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_1
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB99_2
	b	.LBB99_1
.LBB99_1:
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp, #20]
	eor	r0, r0, #-2147483648
	str	r0, [sp, #20]
	mov	r0, #1
	str	r0, [sp, #8]
	b	.LBB99_2
.LBB99_2:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_2
	mov	r2, #0
	mov	r3, #267386880
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	bmi	.LBB99_7
	b	.LBB99_3
.LBB99_3:
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	b	.LBB99_4
.LBB99_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_7
	mov	r2, #0
	mov	r3, #267386880
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	bmi	.LBB99_6
	b	.LBB99_5
.LBB99_5:                               @   in Loop: Header=BB99_4 Depth=1
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_8
	mov	r2, #0
	mov	r3, #266338304
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB99_4
.LBB99_6:
	b	.LBB99_15
.LBB99_7:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_3
	mov	r2, #0
	mov	r3, #266338304
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB99_14
	b	.LBB99_8
.LBB99_8:
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_4
	mov	r3, #0
	mov	r2, r3
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB99_14
	b	.LBB99_9
.LBB99_9:
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	b	.LBB99_10
.LBB99_10:
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	b	.LBB99_11
.LBB99_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	ldr	r4, .LCPI99_5
	mov	r2, #0
	mov	r3, #266338304
	orr	r3, r3, #805306368
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB99_13
	b	.LBB99_12
.LBB99_12:                              @   in Loop: Header=BB99_11 Depth=1
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	ldr	r0, [sp, #4]
	sub	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r4, .LCPI99_6
	mov	r0, r2
	mov	r1, r3
	mov	lr, pc
	mov	pc, r4
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB99_11
.LBB99_13:
	b	.LBB99_14
.LBB99_14:
	b	.LBB99_15
.LBB99_15:
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #12]
	str	r0, [r1]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB99_17
	b	.LBB99_16
.LBB99_16:
	ldr	r1, .LCPI99_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	ldr	r0, [sp, #20]
	eor	r0, r0, #-2147483648
	str	r0, [sp, #20]
	b	.LBB99_17
.LBB99_17:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.18:
.LCPI99_0:
	.long	.L__profc_frexp(sbrel)
.LCPI99_1:
	.long	__ltdf2
.LCPI99_2:
	.long	__gedf2
.LCPI99_3:
	.long	__ltdf2
.LCPI99_4:
	.long	__eqdf2
.LCPI99_5:
	.long	__ltdf2
.LCPI99_6:
	.long	__adddf3
.LCPI99_7:
	.long	__gedf2
.LCPI99_8:
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
	ldr	r0, .LCPI100_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI100_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrb	r0, [sp]
	tst	r0, #1
	beq	.LBB100_4
	b	.LBB100_3
.LBB100_3:                              @   in Loop: Header=BB100_1 Depth=1
	ldr	r1, .LCPI100_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.6:
.LCPI100_0:
	.long	.L__profc___muldi3(sbrel)
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
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	ldr	r0, .LCPI101_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #1
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB101_1
.LBB101_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bhs	.LBB101_6
	b	.LBB101_2
.LBB101_2:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r1, .LCPI101_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB101_6
	b	.LBB101_3
.LBB101_3:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r1, .LCPI101_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	b	.LBB101_4
.LBB101_4:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r1, .LCPI101_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-12]
	and	r1, r0, #-2147483648
	rsbs	r0, r1, #0
	adc	r0, r1, r0
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB101_6
	b	.LBB101_5
.LBB101_5:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI101_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB101_6
.LBB101_6:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB101_8
	b	.LBB101_7
.LBB101_7:                              @   in Loop: Header=BB101_1 Depth=1
	ldr	r1, .LCPI101_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-12]
	lsl	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #12]
	lsl	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB101_1
.LBB101_8:
	b	.LBB101_9
.LBB101_9:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB101_13
	b	.LBB101_10
.LBB101_10:                             @   in Loop: Header=BB101_9 Depth=1
	ldr	r1, .LCPI101_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	blo	.LBB101_12
	b	.LBB101_11
.LBB101_11:                             @   in Loop: Header=BB101_9 Depth=1
	ldr	r1, .LCPI101_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	sub	r0, r0, r1
	str	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #8]
	orr	r0, r0, r1
	str	r0, [sp, #8]
	b	.LBB101_12
.LBB101_12:                             @   in Loop: Header=BB101_9 Depth=1
	ldr	r0, [sp, #12]
	lsr	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB101_9
.LBB101_13:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB101_15
	b	.LBB101_14
.LBB101_14:
	ldr	r1, .LCPI101_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB101_16
.LBB101_15:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB101_16
.LBB101_16:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.17:
.LCPI101_0:
	.long	.L__profc_udivmodsi4(sbrel)
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
	ldr	r0, .LCPI102_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldrb	r0, [r11, #-5]
	cmn	r0, #1
	bgt	.LBB102_2
	b	.LBB102_1
.LBB102_1:
	ldr	r1, .LCPI102_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI102_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI102_1
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI102_2
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI102_3
	and	r1, r0, r1
	ldr	r2, .LCPI102_4
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
	.long	.L__profc___clrsbqi2(sbrel)
.LCPI102_1:
	.long	1431655765                      @ 0x55555555
.LCPI102_2:
	.long	858993459                       @ 0x33333333
.LCPI102_3:
	.long	252645135                       @ 0xf0f0f0f
.LCPI102_4:
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
	ldr	r0, .LCPI103_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #20]
	cmn	r0, #1
	bgt	.LBB103_2
	b	.LBB103_1
.LBB103_1:
	ldr	r1, .LCPI103_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI103_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r2, .LCPI103_1
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI103_2
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI103_3
	and	r1, r1, r2
	ldr	r3, .LCPI103_4
	mul	r2, r1, r3
	mov	r1, #32
	add	r1, r1, r2, lsr #24
	str	r1, [sp, #8]                    @ 4-byte Spill
	ldr	r1, .LCPI103_5
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
	.long	.L__profc___clrsbdi2(sbrel)
.LCPI103_1:
	.long	1431655765                      @ 0x55555555
.LCPI103_2:
	.long	858993459                       @ 0x33333333
.LCPI103_3:
	.long	252645135                       @ 0xf0f0f0f
.LCPI103_4:
	.long	16843009                        @ 0x1010101
.LCPI103_5:
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
	ldr	r0, .LCPI104_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB104_1
.LBB104_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	cmp	r0, #0
	beq	.LBB104_5
	b	.LBB104_2
.LBB104_2:                              @   in Loop: Header=BB104_1 Depth=1
	ldr	r1, .LCPI104_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrb	r0, [r11, #-4]
	tst	r0, #1
	beq	.LBB104_4
	b	.LBB104_3
.LBB104_3:                              @   in Loop: Header=BB104_1 Depth=1
	ldr	r1, .LCPI104_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.6:
.LCPI104_0:
	.long	.L__profc___mulsi3(sbrel)
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
	ldr	r0, .LCPI105_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	blo	.LBB105_3
	b	.LBB105_1
.LBB105_1:
	ldr	r1, .LCPI105_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	cmp	r0, r1
	bhi	.LBB105_3
	b	.LBB105_2
.LBB105_2:
	ldr	r1, .LCPI105_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB105_11
.LBB105_3:
	ldr	r1, .LCPI105_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	mov	r0, #0
	str	r0, [sp, #16]
	b	.LBB105_4
.LBB105_4:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB105_7
	b	.LBB105_5
.LBB105_5:                              @   in Loop: Header=BB105_4 Depth=1
	ldr	r1, .LCPI105_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-8]
	ldr	r3, [sp, #16]
	ldr	r2, [r0, r3, lsl #3]!
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-4]
	str	r2, [r1, r3, lsl #3]!
	str	r0, [r1, #4]
	b	.LBB105_6
.LBB105_6:                              @   in Loop: Header=BB105_4 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB105_4
.LBB105_7:
	b	.LBB105_8
.LBB105_8:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bls	.LBB105_10
	b	.LBB105_9
.LBB105_9:                              @   in Loop: Header=BB105_8 Depth=1
	ldr	r1, .LCPI105_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [sp]
	ldr	r2, [sp, #8]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB105_8
.LBB105_10:
	b	.LBB105_15
.LBB105_11:
	b	.LBB105_12
.LBB105_12:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	sub	r1, r0, #1
	str	r1, [r11, #-12]
	cmp	r0, #0
	beq	.LBB105_14
	b	.LBB105_13
.LBB105_13:                             @   in Loop: Header=BB105_12 Depth=1
	ldr	r1, .LCPI105_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [sp]
	ldr	r2, [r11, #-12]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB105_12
.LBB105_14:
	b	.LBB105_15
.LBB105_15:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.16:
.LCPI105_0:
	.long	.L__profc___cmovd(sbrel)
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
	ldr	r0, .LCPI106_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	blo	.LBB106_3
	b	.LBB106_1
.LBB106_1:
	ldr	r1, .LCPI106_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	cmp	r0, r1
	bhi	.LBB106_3
	b	.LBB106_2
.LBB106_2:
	ldr	r1, .LCPI106_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB106_10
.LBB106_3:
	ldr	r1, .LCPI106_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	mov	r0, #0
	str	r0, [sp, #12]
	b	.LBB106_4
.LBB106_4:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bhs	.LBB106_7
	b	.LBB106_5
.LBB106_5:                              @   in Loop: Header=BB106_4 Depth=1
	ldr	r1, .LCPI106_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-8]
	ldr	r2, [sp, #12]
	add	r0, r0, r2, lsl #1
	ldrh	r0, [r0]
	ldr	r1, [r11, #-4]
	add	r1, r1, r2, lsl #1
	strh	r0, [r1]
	b	.LBB106_6
.LBB106_6:                              @   in Loop: Header=BB106_4 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB106_4
.LBB106_7:
	ldrb	r0, [r11, #-12]
	tst	r0, #1
	beq	.LBB106_9
	b	.LBB106_8
.LBB106_8:
	ldr	r1, .LCPI106_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [sp]
	ldr	r1, [r11, #-12]
	sub	r2, r1, #1
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB106_9
.LBB106_9:
	b	.LBB106_14
.LBB106_10:
	b	.LBB106_11
.LBB106_11:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	sub	r1, r0, #1
	str	r1, [r11, #-12]
	cmp	r0, #0
	beq	.LBB106_13
	b	.LBB106_12
.LBB106_12:                             @   in Loop: Header=BB106_11 Depth=1
	ldr	r1, .LCPI106_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [sp]
	ldr	r2, [r11, #-12]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB106_11
.LBB106_13:
	b	.LBB106_14
.LBB106_14:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.15:
.LCPI106_0:
	.long	.L__profc___cmovh(sbrel)
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
	ldr	r0, .LCPI107_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	blo	.LBB107_3
	b	.LBB107_1
.LBB107_1:
	ldr	r1, .LCPI107_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	cmp	r0, r1
	bhi	.LBB107_3
	b	.LBB107_2
.LBB107_2:
	ldr	r1, .LCPI107_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB107_11
.LBB107_3:
	ldr	r1, .LCPI107_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	mov	r0, #0
	str	r0, [sp, #16]
	b	.LBB107_4
.LBB107_4:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB107_7
	b	.LBB107_5
.LBB107_5:                              @   in Loop: Header=BB107_4 Depth=1
	ldr	r1, .LCPI107_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r0, [r11, #-8]
	ldr	r2, [sp, #16]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [r11, #-4]
	str	r0, [r1, r2, lsl #2]
	b	.LBB107_6
.LBB107_6:                              @   in Loop: Header=BB107_4 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB107_4
.LBB107_7:
	b	.LBB107_8
.LBB107_8:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bls	.LBB107_10
	b	.LBB107_9
.LBB107_9:                              @   in Loop: Header=BB107_8 Depth=1
	ldr	r1, .LCPI107_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r0, [sp]
	ldr	r2, [sp, #8]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB107_8
.LBB107_10:
	b	.LBB107_15
.LBB107_11:
	b	.LBB107_12
.LBB107_12:                             @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-12]
	sub	r1, r0, #1
	str	r1, [r11, #-12]
	cmp	r0, #0
	beq	.LBB107_14
	b	.LBB107_13
.LBB107_13:                             @   in Loop: Header=BB107_12 Depth=1
	ldr	r1, .LCPI107_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [sp]
	ldr	r2, [r11, #-12]
	ldrb	r0, [r0, r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1, r2]
	b	.LBB107_12
.LBB107_14:
	b	.LBB107_15
.LBB107_15:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.16:
.LCPI107_0:
	.long	.L__profc___cmovw(sbrel)
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
	ldr	r0, .LCPI108_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, .LCPI108_1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, r2
	.p2align	2
@ %bb.1:
.LCPI108_0:
	.long	.L__profc___modi(sbrel)
.LCPI108_1:
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
	ldr	r0, .LCPI109_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, .LCPI109_1
	mov	lr, pc
	mov	pc, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI109_0:
	.long	.L__profc___uitod(sbrel)
.LCPI109_1:
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
	ldr	r0, .LCPI110_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, .LCPI110_1
	mov	lr, pc
	mov	pc, r1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI110_0:
	.long	.L__profc___uitof(sbrel)
.LCPI110_1:
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
	ldr	r0, .LCPI111_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI111_1
	mov	lr, pc
	mov	pc, r2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI111_0:
	.long	.L__profc___ulltod(sbrel)
.LCPI111_1:
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
	ldr	r0, .LCPI112_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI112_1
	mov	lr, pc
	mov	pc, r2
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI112_0:
	.long	.L__profc___ulltof(sbrel)
.LCPI112_1:
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
	ldr	r0, .LCPI113_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldr	r2, .LCPI113_1
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, r2
	.p2align	2
@ %bb.1:
.LCPI113_0:
	.long	.L__profc___umodi(sbrel)
.LCPI113_1:
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
	ldr	r0, .LCPI114_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB114_1
.LBB114_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #15
	bgt	.LBB114_6
	b	.LBB114_2
.LBB114_2:                              @   in Loop: Header=BB114_1 Depth=1
	ldr	r1, .LCPI114_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrh	r1, [r11, #-2]
	ldr	r0, [sp]
	rsb	r2, r0, #15
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB114_4
	b	.LBB114_3
.LBB114_3:
	ldr	r1, .LCPI114_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI114_0:
	.long	.L__profc___clzhi2(sbrel)
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
	ldr	r0, .LCPI115_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB115_1
.LBB115_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #15
	bgt	.LBB115_6
	b	.LBB115_2
.LBB115_2:                              @   in Loop: Header=BB115_1 Depth=1
	ldr	r1, .LCPI115_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB115_4
	b	.LBB115_3
.LBB115_3:
	ldr	r1, .LCPI115_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI115_0:
	.long	.L__profc___ctzhi2(sbrel)
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
	ldr	r0, .LCPI116_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r2, .LCPI116_1
	mov	r1, #1191182336
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #0
	bmi	.LBB116_2
	b	.LBB116_1
.LBB116_1:
	ldr	r1, .LCPI116_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [sp]
	ldr	r2, .LCPI116_3
	mov	r1, #-956301312
	mov	lr, pc
	mov	pc, r2
	ldr	r1, .LCPI116_4
	mov	lr, pc
	mov	pc, r1
	add	r0, r0, #32768
	str	r0, [sp, #4]
	b	.LBB116_3
.LBB116_2:
	ldr	r0, [sp]
	ldr	r1, .LCPI116_2
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
	.long	.L__profc___fixunssfsi(sbrel)
.LCPI116_1:
	.long	__gesf2
.LCPI116_2:
	.long	__fixsfsi
.LCPI116_3:
	.long	__addsf3
.LCPI116_4:
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
	ldr	r0, .LCPI117_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI117_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp, #4]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB117_4
	b	.LBB117_3
.LBB117_3:                              @   in Loop: Header=BB117_1 Depth=1
	ldr	r1, .LCPI117_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI117_0:
	.long	.L__profc___parityhi2(sbrel)
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
	ldr	r0, .LCPI118_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI118_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrh	r1, [r11, #-2]
	ldr	r2, [sp, #4]
	mov	r0, #1
	tst	r0, r1, lsr r2
	beq	.LBB118_4
	b	.LBB118_3
.LBB118_3:                              @   in Loop: Header=BB118_1 Depth=1
	ldr	r1, .LCPI118_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI118_0:
	.long	.L__profc___popcounthi2(sbrel)
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
	ldr	r0, .LCPI119_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp]
	b	.LBB119_1
.LBB119_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	cmp	r0, #0
	beq	.LBB119_5
	b	.LBB119_2
.LBB119_2:                              @   in Loop: Header=BB119_1 Depth=1
	ldr	r1, .LCPI119_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrb	r0, [r11, #-4]
	tst	r0, #1
	beq	.LBB119_4
	b	.LBB119_3
.LBB119_3:                              @   in Loop: Header=BB119_1 Depth=1
	ldr	r1, .LCPI119_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.6:
.LCPI119_0:
	.long	.L__profc___mulsi3_iq2000(sbrel)
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
	ldr	r0, .LCPI120_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB120_2
	b	.LBB120_1
.LBB120_1:
	ldr	r1, .LCPI120_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI120_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldrb	r0, [sp, #4]
	tst	r0, #1
	beq	.LBB120_6
	b	.LBB120_5
.LBB120_5:                              @   in Loop: Header=BB120_3 Depth=1
	ldr	r1, .LCPI120_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	.p2align	2
@ %bb.9:
.LCPI120_0:
	.long	.L__profc___mulsi3_lm32(sbrel)
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
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	ldr	r0, .LCPI121_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #1
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB121_1
.LBB121_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bhs	.LBB121_6
	b	.LBB121_2
.LBB121_2:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r1, .LCPI121_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB121_6
	b	.LBB121_3
.LBB121_3:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r1, .LCPI121_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	b	.LBB121_4
.LBB121_4:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r1, .LCPI121_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-12]
	and	r1, r0, #-2147483648
	rsbs	r0, r1, #0
	adc	r0, r1, r0
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB121_6
	b	.LBB121_5
.LBB121_5:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI121_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB121_6
.LBB121_6:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB121_8
	b	.LBB121_7
.LBB121_7:                              @   in Loop: Header=BB121_1 Depth=1
	ldr	r1, .LCPI121_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-12]
	lsl	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #12]
	lsl	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB121_1
.LBB121_8:
	b	.LBB121_9
.LBB121_9:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB121_13
	b	.LBB121_10
.LBB121_10:                             @   in Loop: Header=BB121_9 Depth=1
	ldr	r1, .LCPI121_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	blo	.LBB121_12
	b	.LBB121_11
.LBB121_11:                             @   in Loop: Header=BB121_9 Depth=1
	ldr	r1, .LCPI121_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	sub	r0, r0, r1
	str	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #8]
	orr	r0, r0, r1
	str	r0, [sp, #8]
	b	.LBB121_12
.LBB121_12:                             @   in Loop: Header=BB121_9 Depth=1
	ldr	r0, [sp, #12]
	lsr	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB121_9
.LBB121_13:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB121_15
	b	.LBB121_14
.LBB121_14:
	ldr	r1, .LCPI121_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB121_16
.LBB121_15:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB121_16
.LBB121_16:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.17:
.LCPI121_0:
	.long	.L__profc___udivmodsi4(sbrel)
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
	ldr	r0, .LCPI122_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI122_1
	mov	lr, pc
	mov	pc, r2
	cmn	r0, #1
	bgt	.LBB122_2
	b	.LBB122_1
.LBB122_1:
	ldr	r1, .LCPI122_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	mvn	r0, #0
	str	r0, [r11, #-4]
	b	.LBB122_5
.LBB122_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, .LCPI122_2
	mov	lr, pc
	mov	pc, r2
	cmp	r0, #1
	blt	.LBB122_4
	b	.LBB122_3
.LBB122_3:
	ldr	r1, .LCPI122_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.long	.L__profc___mspabi_cmpf(sbrel)
.LCPI122_1:
	.long	__ltsf2
.LCPI122_2:
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
	ldr	r0, .LCPI123_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI123_1
	mov	lr, pc
	mov	pc, r4
	cmn	r0, #1
	bgt	.LBB123_2
	b	.LBB123_1
.LBB123_1:
	ldr	r1, .LCPI123_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	mvn	r0, #0
	str	r0, [r11, #-12]
	b	.LBB123_5
.LBB123_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI123_2
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #1
	blt	.LBB123_4
	b	.LBB123_3
.LBB123_3:
	ldr	r1, .LCPI123_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.long	.L__profc___mspabi_cmpd(sbrel)
.LCPI123_1:
	.long	__ltdf2
.LCPI123_2:
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
	ldr	r0, .LCPI124_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	smull	r0, r1, r2, r3
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI124_0:
	.long	.L__profc___mspabi_mpysll(sbrel)
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
	ldr	r0, .LCPI125_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	umull	r0, r1, r2, r3
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI125_0:
	.long	.L__profc___mspabi_mpyull(sbrel)
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
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, .LCPI126_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp, #16]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	cmn	r0, #1
	bgt	.LBB126_2
	b	.LBB126_1
.LBB126_1:
	ldr	r1, .LCPI126_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-8]
	rsb	r0, r0, #0
	str	r0, [r11, #-8]
	mov	r0, #1
	str	r0, [sp, #16]
	b	.LBB126_2
.LBB126_2:
	mov	r0, #0
	strb	r0, [r11, #-9]
	b	.LBB126_3
.LBB126_3:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-8]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	beq	.LBB126_6
	b	.LBB126_4
.LBB126_4:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r1, .LCPI126_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	ldrb	r1, [r11, #-9]
	mov	r0, #0
	cmp	r1, #32
	movlo	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	cmp	r1, #31
	str	r0, [sp, #8]                    @ 4-byte Spill
	bhi	.LBB126_6
	b	.LBB126_5
.LBB126_5:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI126_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #32]
	ldr	r1, [r2, #36]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #32]
	str	r1, [r2, #36]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB126_6
.LBB126_6:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB126_11
	b	.LBB126_7
.LBB126_7:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r1, .LCPI126_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldrb	r0, [r11, #-8]
	tst	r0, #1
	beq	.LBB126_9
	b	.LBB126_8
.LBB126_8:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r1, .LCPI126_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	ldr	r1, [r11, #-4]
	ldr	r0, [sp, #12]
	add	r0, r0, r1
	str	r0, [sp, #12]
	b	.LBB126_9
.LBB126_9:                              @   in Loop: Header=BB126_3 Depth=1
	ldr	r0, [r11, #-4]
	lsl	r0, r0, #1
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-8]
	asr	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB126_10
.LBB126_10:                             @   in Loop: Header=BB126_3 Depth=1
	ldrb	r0, [r11, #-9]
	add	r0, r0, #1
	strb	r0, [r11, #-9]
	b	.LBB126_3
.LBB126_11:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB126_13
	b	.LBB126_12
.LBB126_12:
	ldr	r1, .LCPI126_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [sp, #12]
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB126_14
.LBB126_13:
	ldr	r0, [sp, #12]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB126_14
.LBB126_14:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.15:
.LCPI126_0:
	.long	.L__profc___mulhi3(sbrel)
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
	ldr	r0, .LCPI127_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	cmn	r0, #1
	bgt	.LBB127_2
	b	.LBB127_1
.LBB127_1:
	ldr	r1, .LCPI127_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI127_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r3, .LCPI127_1
	mov	r2, #0
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB127_6
	b	.LBB127_5
.LBB127_5:
	ldr	r1, .LCPI127_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	.long	.L__profc___divsi3(sbrel)
.LCPI127_1:
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
	ldr	r0, .LCPI128_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	cmn	r0, #1
	bgt	.LBB128_2
	b	.LBB128_1
.LBB128_1:
	ldr	r1, .LCPI128_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI128_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [sp, #8]
	rsb	r0, r0, #0
	str	r0, [sp, #8]
	b	.LBB128_4
.LBB128_4:
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r3, .LCPI128_1
	mov	r2, #1
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB128_6
	b	.LBB128_5
.LBB128_5:
	ldr	r1, .LCPI128_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	.long	.L__profc___modsi3(sbrel)
.LCPI128_1:
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
	sub	sp, sp, #24
                                        @ kill: def $r3 killed $r1
                                        @ kill: def $r3 killed $r0
	strh	r0, [r11, #-4]
	strh	r1, [r11, #-6]
	str	r2, [sp, #12]
	ldr	r0, .LCPI129_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #1
	strh	r0, [sp, #10]
	mov	r0, #0
	strh	r0, [sp, #8]
	b	.LBB129_1
.LBB129_1:                              @ =>This Inner Loop Header: Depth=1
	ldrh	r1, [r11, #-6]
	ldrh	r2, [r11, #-4]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bge	.LBB129_6
	b	.LBB129_2
.LBB129_2:                              @   in Loop: Header=BB129_1 Depth=1
	ldr	r1, .LCPI129_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldrh	r1, [sp, #10]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB129_6
	b	.LBB129_3
.LBB129_3:                              @   in Loop: Header=BB129_1 Depth=1
	ldr	r1, .LCPI129_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	b	.LBB129_4
.LBB129_4:                              @   in Loop: Header=BB129_1 Depth=1
	ldr	r1, .LCPI129_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldrh	r0, [r11, #-6]
	and	r1, r0, #32768
	rsbs	r0, r1, #0
	adc	r0, r1, r0
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB129_6
	b	.LBB129_5
.LBB129_5:                              @   in Loop: Header=BB129_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI129_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB129_6
.LBB129_6:                              @   in Loop: Header=BB129_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB129_8
	b	.LBB129_7
.LBB129_7:                              @   in Loop: Header=BB129_1 Depth=1
	ldr	r1, .LCPI129_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrh	r0, [r11, #-6]
	lsl	r0, r0, #1
	strh	r0, [r11, #-6]
	ldrh	r0, [sp, #10]
	lsl	r0, r0, #1
	strh	r0, [sp, #10]
	b	.LBB129_1
.LBB129_8:
	b	.LBB129_9
.LBB129_9:                              @ =>This Inner Loop Header: Depth=1
	ldrh	r0, [sp, #10]
	cmp	r0, #0
	beq	.LBB129_13
	b	.LBB129_10
.LBB129_10:                             @   in Loop: Header=BB129_9 Depth=1
	ldr	r1, .LCPI129_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldrh	r0, [r11, #-4]
	ldrh	r1, [r11, #-6]
	cmp	r0, r1
	blt	.LBB129_12
	b	.LBB129_11
.LBB129_11:                             @   in Loop: Header=BB129_9 Depth=1
	ldr	r1, .LCPI129_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	ldrh	r1, [r11, #-6]
	ldrh	r0, [r11, #-4]
	sub	r0, r0, r1
	strh	r0, [r11, #-4]
	ldrh	r1, [sp, #10]
	ldrh	r0, [sp, #8]
	orr	r0, r0, r1
	strh	r0, [sp, #8]
	b	.LBB129_12
.LBB129_12:                             @   in Loop: Header=BB129_9 Depth=1
	ldrh	r0, [sp, #10]
	lsr	r0, r0, #1
	strh	r0, [sp, #10]
	ldrh	r0, [r11, #-6]
	lsr	r0, r0, #1
	strh	r0, [r11, #-6]
	b	.LBB129_9
.LBB129_13:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB129_15
	b	.LBB129_14
.LBB129_14:
	ldr	r1, .LCPI129_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	ldrh	r0, [r11, #-4]
	strh	r0, [r11, #-2]
	b	.LBB129_16
.LBB129_15:
	ldrh	r0, [sp, #8]
	strh	r0, [r11, #-2]
	b	.LBB129_16
.LBB129_16:
	ldrh	r0, [r11, #-2]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.17:
.LCPI129_0:
	.long	.L__profc___udivmodhi4(sbrel)
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
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	ldr	r0, .LCPI130_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	mov	r0, #1
	str	r0, [sp, #12]
	mov	r0, #0
	str	r0, [sp, #8]
	b	.LBB130_1
.LBB130_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-8]
	mov	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bhs	.LBB130_6
	b	.LBB130_2
.LBB130_2:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r1, .LCPI130_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r1, [sp, #12]
	mov	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB130_6
	b	.LBB130_3
.LBB130_3:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r1, .LCPI130_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #40]
	ldr	r0, [r1, #44]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	b	.LBB130_4
.LBB130_4:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r1, .LCPI130_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r0, [r11, #-12]
	and	r1, r0, #-2147483648
	rsbs	r0, r1, #0
	adc	r0, r1, r0
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB130_6
	b	.LBB130_5
.LBB130_5:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI130_0
	mov	r1, r9
	add	r2, r1, r2
	ldr	r3, [r2, #24]
	ldr	r1, [r2, #28]
	adds	r3, r3, #1
	adc	r1, r1, #0
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB130_6
.LBB130_6:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB130_8
	b	.LBB130_7
.LBB130_7:                              @   in Loop: Header=BB130_1 Depth=1
	ldr	r1, .LCPI130_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldr	r0, [r11, #-12]
	lsl	r0, r0, #1
	str	r0, [r11, #-12]
	ldr	r0, [sp, #12]
	lsl	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB130_1
.LBB130_8:
	b	.LBB130_9
.LBB130_9:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB130_13
	b	.LBB130_10
.LBB130_10:                             @   in Loop: Header=BB130_9 Depth=1
	ldr	r1, .LCPI130_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #48]
	ldr	r0, [r1, #52]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #48]
	str	r0, [r1, #52]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	blo	.LBB130_12
	b	.LBB130_11
.LBB130_11:                             @   in Loop: Header=BB130_9 Depth=1
	ldr	r1, .LCPI130_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #56]
	ldr	r0, [r1, #60]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #56]
	str	r0, [r1, #60]
	ldr	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	sub	r0, r0, r1
	str	r0, [r11, #-8]
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #8]
	orr	r0, r0, r1
	str	r0, [sp, #8]
	b	.LBB130_12
.LBB130_12:                             @   in Loop: Header=BB130_9 Depth=1
	ldr	r0, [sp, #12]
	lsr	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #1
	str	r0, [r11, #-12]
	b	.LBB130_9
.LBB130_13:
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.LBB130_15
	b	.LBB130_14
.LBB130_14:
	ldr	r1, .LCPI130_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #64]
	ldr	r0, [r1, #68]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #64]
	str	r0, [r1, #68]
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
	b	.LBB130_16
.LBB130_15:
	ldr	r0, [sp, #8]
	str	r0, [r11, #-4]
	b	.LBB130_16
.LBB130_16:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.17:
.LCPI130_0:
	.long	.L__profc___udivmodsi4_libgcc(sbrel)
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
	ldr	r0, .LCPI131_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI131_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI131_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI131_0:
	.long	.L__profc___ashldi3(sbrel)
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
	ldr	r0, .LCPI132_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI132_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI132_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI132_0:
	.long	.L__profc___ashrdi3(sbrel)
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
	ldr	r0, .LCPI133_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI133_0:
	.long	.L__profc___bswapdi2(sbrel)
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
	ldr	r0, .LCPI134_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI134_0:
	.long	.L__profc___bswapsi2(sbrel)
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
	ldr	r0, .LCPI135_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI135_0:
	.long	.L__profc___clzsi2(sbrel)
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
	ldr	r0, .LCPI136_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI136_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI136_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI136_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	ldr	r1, .LCPI136_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	.p2align	2
@ %bb.10:
.LCPI136_0:
	.long	.L__profc___cmpdi2(sbrel)
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
	ldr	r0, .LCPI137_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI137_1
	mov	lr, pc
	mov	pc, r4
	sub	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI137_0:
	.long	.L__profc___aeabi_lcmp(sbrel)
.LCPI137_1:
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
	ldr	r0, .LCPI138_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI138_0:
	.long	.L__profc___ctzsi2(sbrel)
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
	ldr	r0, .LCPI139_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI139_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI139_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	.p2align	2
@ %bb.7:
.LCPI139_0:
	.long	.L__profc___lshrdi3(sbrel)
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
	ldr	r0, .LCPI140_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI140_0:
	.long	.L__profc___muldsi3(sbrel)
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
	ldr	r0, .LCPI141_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r2, .LCPI141_1
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
	.long	.L__profc___muldi3_compiler_rt(sbrel)
.LCPI141_1:
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
	ldr	r0, .LCPI142_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	rsbs	r0, r0, #0
	rsc	r1, r1, #0
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI142_0:
	.long	.L__profc___negdi2(sbrel)
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
	ldr	r0, .LCPI143_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI143_0:
	.long	.L__profc___paritydi2(sbrel)
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
	ldr	r0, .LCPI144_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	.p2align	2
@ %bb.1:
.LCPI144_0:
	.long	.L__profc___paritysi2(sbrel)
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
	ldr	r0, .LCPI145_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	lsrs	r2, r0, #1
	rrx	r3, r1
	ldr	r12, .LCPI145_1
	and	r2, r2, r12
	and	r3, r3, r12
	subs	r1, r1, r3
	sbc	r0, r0, r2
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r12, .LCPI145_2
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
	ldr	r2, .LCPI145_3
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
	.long	.L__profc___popcountdi2(sbrel)
.LCPI145_1:
	.long	1431655765                      @ 0x55555555
.LCPI145_2:
	.long	858993459                       @ 0x33333333
.LCPI145_3:
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
	ldr	r0, .LCPI146_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, .LCPI146_1
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	ldr	r2, .LCPI146_2
	and	r0, r2, r1, lsr #2
	and	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp]
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI146_3
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
	.long	.L__profc___popcountsi2(sbrel)
.LCPI146_1:
	.long	1431655765                      @ 0x55555555
.LCPI146_2:
	.long	858993459                       @ 0x33333333
.LCPI146_3:
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
	ldr	r0, .LCPI147_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI147_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrb	r0, [sp, #20]
	tst	r0, #1
	beq	.LBB147_3
	b	.LBB147_2
.LBB147_2:                              @   in Loop: Header=BB147_1 Depth=1
	ldr	r1, .LCPI147_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #-12]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r4, .LCPI147_1
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
	ldr	r1, .LCPI147_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB147_6
.LBB147_5:                              @   in Loop: Header=BB147_1 Depth=1
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #-12]
	ldr	r4, .LCPI147_2
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
	ldr	r1, .LCPI147_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, .LCPI147_3
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
	.long	.L__profc___powidf2(sbrel)
.LCPI147_1:
	.long	__muldf3
.LCPI147_2:
	.long	__muldf3
.LCPI147_3:
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
	ldr	r0, .LCPI148_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-8]
	lsr	r0, r0, #31
	str	r0, [sp, #12]
	mov	r0, #1065353216
	str	r0, [sp, #8]
	b	.LBB148_1
.LBB148_1:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, .LCPI148_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
	ldrb	r0, [r11, #-8]
	tst	r0, #1
	beq	.LBB148_3
	b	.LBB148_2
.LBB148_2:                              @   in Loop: Header=BB148_1 Depth=1
	ldr	r1, .LCPI148_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
	ldr	r1, [r11, #-4]
	ldr	r0, [sp, #8]
	ldr	r2, .LCPI148_1
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
	ldr	r1, .LCPI148_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
	b	.LBB148_6
.LBB148_5:                              @   in Loop: Header=BB148_1 Depth=1
	ldr	r1, [r11, #-4]
	ldr	r2, .LCPI148_2
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
	ldr	r1, .LCPI148_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
	ldr	r1, [sp, #8]
	ldr	r2, .LCPI148_3
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
	.long	.L__profc___powisf2(sbrel)
.LCPI148_1:
	.long	__mulsf3
.LCPI148_2:
	.long	__mulsf3
.LCPI148_3:
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
	ldr	r0, .LCPI149_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
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
	ldr	r1, .LCPI149_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #8]
	ldr	r0, [r1, #12]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #8]
	str	r0, [r1, #12]
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
	ldr	r1, .LCPI149_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #16]
	str	r0, [r1, #20]
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
	ldr	r1, .LCPI149_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #24]
	ldr	r0, [r1, #28]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #24]
	str	r0, [r1, #28]
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
	ldr	r1, .LCPI149_0
	mov	r0, r9
	add	r1, r0, r1
	ldr	r2, [r1, #32]
	ldr	r0, [r1, #36]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1, #32]
	str	r0, [r1, #36]
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
	.p2align	2
@ %bb.10:
.LCPI149_0:
	.long	.L__profc___ucmpdi2(sbrel)
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
	ldr	r0, .LCPI150_0
	mov	r1, r9
	ldr	r2, [r1, r0]!
	ldr	r0, [r1, #4]
	adds	r2, r2, #1
	adc	r0, r0, #0
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, .LCPI150_1
	mov	lr, pc
	mov	pc, r4
	sub	r0, r0, #1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ %bb.1:
.LCPI150_0:
	.long	.L__profc___aeabi_ulcmp(sbrel)
.LCPI150_1:
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
	.hidden	__llvm_profile_runtime
	.type	.L__profc_memmove,%object       @ @__profc_memmove
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.zero	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,%object       @ @__profd_memmove
	.section	__llvm_prf_data,"awG",%progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.long	3815148669                      @ 0xfbc09422e3668c7d
	.long	4223702050
	.long	1334589160                      @ 0xc7a1f0194f8c36e8
	.long	3349278745
	.long	.L__profc_memmove-.L__profd_memmove
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memmove, 48

	.type	.L__profc_memccpy,%object       @ @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.zero	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,%object       @ @__profd_memccpy
	.section	__llvm_prf_data,"awG",%progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.long	3842140814                      @ 0xe9ec1dd5e5026a8e
	.long	3924565461
	.long	1246331992                      @ 0x43a044a498458
	.long	276996
	.long	.L__profc_memccpy-.L__profd_memccpy
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memccpy, 48

	.type	.L__profc_memchr,%object        @ @__profc_memchr
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.zero	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,%object        @ @__profd_memchr
	.section	__llvm_prf_data,"awG",%progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.long	503472520                       @ 0x4f3941a01e026188
	.long	1329152416
	.long	243340813                       @ 0x10e81160d
	.long	1
	.long	.L__profc_memchr-.L__profd_memchr
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memchr, 48

	.type	.L__profc_memcmp,%object        @ @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.zero	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,%object        @ @__profd_memcmp
	.section	__llvm_prf_data,"awG",%progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.long	3752101698                      @ 0xbf0ee54adfa48742
	.long	3205424458
	.long	243078669                       @ 0x10e7d160d
	.long	1
	.long	.L__profc_memcmp-.L__profd_memcmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memcmp, 48

	.type	.L__profc_memcpy,%object        @ @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.zero	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,%object        @ @__profd_memcpy
	.section	__llvm_prf_data,"awG",%progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.long	314430578                       @ 0x3607cad612bdd472
	.long	906480342
	.long	17496                           @ 0x4458
	.long	0
	.long	.L__profc_memcpy-.L__profd_memcpy
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memcpy, 48

	.type	.L__profc_memrchr,%object       @ @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.zero	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,%object       @ @__profd_memrchr
	.section	__llvm_prf_data,"awG",%progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.long	1963431520                      @ 0xf863ecbf75079660
	.long	4167298239
	.long	3529577560                      @ 0x8a7d2611458
	.long	2215
	.long	.L__profc_memrchr-.L__profd_memrchr
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memrchr, 48

	.type	.L__profc_memset,%object        @ @__profc_memset
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.zero	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,%object        @ @__profd_memset
	.section	__llvm_prf_data,"awG",%progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.long	116615793                       @ 0xd9f3f85506f36a71
	.long	3656644693
	.long	17496                           @ 0x4458
	.long	0
	.long	.L__profc_memset-.L__profd_memset
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memset, 48

	.type	.L__profc_stpcpy,%object        @ @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.zero	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,%object        @ @__profd_stpcpy
	.section	__llvm_prf_data,"awG",%progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.long	2693264965                      @ 0x3dd2bf47a087f645
	.long	1037221703
	.long	17496                           @ 0x4458
	.long	0
	.long	.L__profc_stpcpy-.L__profd_stpcpy
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_stpcpy, 48

	.type	.L__profc_strchrnul,%object     @ @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.zero	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,%object     @ @__profd_strchrnul
	.section	__llvm_prf_data,"awG",%progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.long	3359708469                      @ 0x45eedd8fc8411535
	.long	1173282191
	.long	70911064                        @ 0x43a0458
	.long	0
	.long	.L__profc_strchrnul-.L__profd_strchrnul
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strchrnul, 48

	.type	.L__profc_strchr,%object        @ @__profc_strchr
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.zero	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,%object        @ @__profd_strchr
	.section	__llvm_prf_data,"awG",%progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.long	1273642115                      @ 0xb14ab4664bea3c83
	.long	2974463078
	.long	3529577560                      @ 0xca7d2611458
	.long	3239
	.long	.L__profc_strchr-.L__profd_strchr
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strchr, 48

	.type	.L__profc_strcmp,%object        @ @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.zero	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,%object        @ @__profd_strcmp
	.section	__llvm_prf_data,"awG",%progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.long	53592868                        @ 0xe0f9b060331c324
	.long	235903750
	.long	70906968                        @ 0x439f458
	.long	0
	.long	.L__profc_strcmp-.L__profd_strcmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strcmp, 48

	.type	.L__profc_strlen,%object        @ @__profc_strlen
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.zero	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,%object        @ @__profd_strlen
	.section	__llvm_prf_data,"awG",%progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.long	44553075                        @ 0x292647db02a7d373
	.long	690374619
	.long	17496                           @ 0x4458
	.long	0
	.long	.L__profc_strlen-.L__profd_strlen
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strlen, 48

	.type	.L__profc_strncmp,%object       @ @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.zero	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,%object       @ @__profd_strncmp
	.section	__llvm_prf_data,"awG",%progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.long	1018521786                      @ 0xabebe6233cb568ba
	.long	2884363811
	.long	3409360719                      @ 0x6405aa43cb36b74f
	.long	1678092867
	.long	.L__profc_strncmp-.L__profd_strncmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	9                               @ 0x9
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strncmp, 48

	.type	.L__profc_swab,%object          @ @__profc_swab
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.zero	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,%object          @ @__profd_swab
	.section	__llvm_prf_data,"awG",%progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.long	63675239                        @ 0xe984c77503cb9b67
	.long	3917793141
	.long	18193                           @ 0x4711
	.long	0
	.long	.L__profc_swab-.L__profd_swab
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_swab, 48

	.type	.L__profc_isalpha,%object       @ @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.zero	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,%object       @ @__profd_isalpha
	.section	__llvm_prf_data,"awG",%progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.long	4268055388                      @ 0xec27bc96fe655b5c
	.long	3962027158
	.long	1563                            @ 0x61b
	.long	0
	.long	.L__profc_isalpha-.L__profd_isalpha
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isalpha, 48

	.type	.L__profc_isascii,%object       @ @__profc_isascii
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.zero	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,%object       @ @__profd_isascii
	.section	__llvm_prf_data,"awG",%progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.long	3299371601                      @ 0xbd7e8203c4a86a51
	.long	3179184643
	.long	1562                            @ 0x61a
	.long	0
	.long	.L__profc_isascii-.L__profd_isascii
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isascii, 48

	.type	.L__profc_isblank,%object       @ @__profc_isblank
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.zero	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,%object       @ @__profd_isblank
	.section	__llvm_prf_data,"awG",%progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.long	2601843714                      @ 0x223626e59b14fc02
	.long	573974245
	.long	6354911                         @ 0x60f7df
	.long	0
	.long	.L__profc_isblank-.L__profd_isblank
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isblank, 48

	.type	.L__profc_iscntrl,%object       @ @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.zero	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,%object       @ @__profd_iscntrl
	.section	__llvm_prf_data,"awG",%progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.long	3367402719                      @ 0x7b7b182cc8b67cdf
	.long	2071664684
	.long	6354655                         @ 0x60f6df
	.long	0
	.long	.L__profc_iscntrl-.L__profd_iscntrl
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_iscntrl, 48

	.type	.L__profc_isdigit,%object       @ @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.zero	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,%object       @ @__profd_isdigit
	.section	__llvm_prf_data,"awG",%progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.long	1824746341                      @ 0x30599a7e6cc36b65
	.long	811178622
	.long	1563                            @ 0x61b
	.long	0
	.long	.L__profc_isdigit-.L__profd_isdigit
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isdigit, 48

	.type	.L__profc_isgraph,%object       @ @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.zero	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,%object       @ @__profd_isgraph
	.section	__llvm_prf_data,"awG",%progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.long	2312090716                      @ 0xfe3bff7489cfb45c
	.long	4265344884
	.long	1563                            @ 0x61b
	.long	0
	.long	.L__profc_isgraph-.L__profd_isgraph
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isgraph, 48

	.type	.L__profc_islower,%object       @ @__profc_islower
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.zero	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,%object       @ @__profd_islower
	.section	__llvm_prf_data,"awG",%progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.long	1158205281                      @ 0x681c66894508cf61
	.long	1746691721
	.long	1563                            @ 0x61b
	.long	0
	.long	.L__profc_islower-.L__profd_islower
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_islower, 48

	.type	.L__profc_isprint,%object       @ @__profc_isprint
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.zero	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,%object       @ @__profd_isprint
	.section	__llvm_prf_data,"awG",%progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.long	341795750                       @ 0x9b074d56145f63a6
	.long	2600947030
	.long	1563                            @ 0x61b
	.long	0
	.long	.L__profc_isprint-.L__profd_isprint
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isprint, 48

	.type	.L__profc_isspace,%object       @ @__profc_isspace
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.zero	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,%object       @ @__profd_isspace
	.section	__llvm_prf_data,"awG",%progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.long	970391827                       @ 0x7d59641d39d70113
	.long	2103010333
	.long	6354907                         @ 0x60f7db
	.long	0
	.long	.L__profc_isspace-.L__profd_isspace
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isspace, 48

	.type	.L__profc_isupper,%object       @ @__profc_isupper
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.zero	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,%object       @ @__profd_isupper
	.section	__llvm_prf_data,"awG",%progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.long	3294401357                      @ 0x39ef9079c45c934d
	.long	972001401
	.long	1563                            @ 0x61b
	.long	0
	.long	.L__profc_isupper-.L__profd_isupper
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_isupper, 48

	.type	.L__profc_iswcntrl,%object      @ @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.zero	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,%object      @ @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",%progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.long	1638352188                      @ 0x6125eb3d61a7453c
	.long	1629875005
	.long	3480073947                      @ 0x60f3cf6db6db
	.long	24819
	.long	.L__profc_iswcntrl-.L__profd_iswcntrl
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_iswcntrl, 48

	.type	.L__profc_iswdigit,%object      @ @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.zero	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,%object      @ @__profd_iswdigit
	.section	__llvm_prf_data,"awG",%progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.long	425265880                       @ 0x771f9e1919590ad8
	.long	1998560793
	.long	1563                            @ 0x61b
	.long	0
	.long	.L__profc_iswdigit-.L__profd_iswdigit
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_iswdigit, 48

	.type	.L__profc_iswprint,%object      @ @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.zero	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,%object      @ @__profd_iswprint
	.section	__llvm_prf_data,"awG",%progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.long	1234441494                      @ 0xf603a04d49941516
	.long	4127432781
	.long	3816038944                      @ 0xdc635031e3742220
	.long	3697496113
	.long	.L__profc_iswprint-.L__profd_iswprint
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	10                              @ 0xa
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_iswprint, 48

	.type	.L__profc_iswxdigit,%object     @ @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.zero	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,%object     @ @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",%progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.long	4035185714                      @ 0x8aba28df0840c32
	.long	145465997
	.long	6354651                         @ 0x60f6db
	.long	0
	.long	.L__profc_iswxdigit-.L__profd_iswxdigit
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_iswxdigit, 48

	.type	.L__profc_toascii,%object       @ @__profc_toascii
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.zero	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,%object       @ @__profd_toascii
	.section	__llvm_prf_data,"awG",%progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.long	2787418936                      @ 0x3f1e4f66a624a338
	.long	1058951014
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_toascii-.L__profd_toascii
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_toascii, 48

	.type	.L__profc_fdim,%object          @ @__profc_fdim
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.zero	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,%object          @ @__profd_fdim
	.section	__llvm_prf_data,"awG",%progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.long	42400059                        @ 0xceca8a150286f93b
	.long	3469380117
	.long	698703480                       @ 0x6646f46a29a55e78
	.long	1715926122
	.long	.L__profc_fdim-.L__profd_fdim
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fdim, 48

	.type	.L__profc_fdimf,%object         @ @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.zero	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,%object         @ @__profd_fdimf
	.section	__llvm_prf_data,"awG",%progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.long	1666032008                      @ 0xea84dcc6634da188
	.long	3934575814
	.long	698703480                       @ 0x6646f46a29a55e78
	.long	1715926122
	.long	.L__profc_fdimf-.L__profd_fdimf
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fdimf, 48

	.type	.L__profc_fmax,%object          @ @__profc_fmax
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.zero	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,%object          @ @__profd_fmax
	.section	__llvm_prf_data,"awG",%progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.long	996492642                       @ 0xde5ced1d3b654562
	.long	3730631965
	.long	463263937                       @ 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmax-.L__profd_fmax
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	6                               @ 0x6
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fmax, 48

	.type	.L__profc_fmaxf,%object         @ @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.zero	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,%object         @ @__profd_fmaxf
	.section	__llvm_prf_data,"awG",%progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.long	2386403996                      @ 0xb8bfa0058e3da29c
	.long	3099566085
	.long	463263937                       @ 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmaxf-.L__profd_fmaxf
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	6                               @ 0x6
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fmaxf, 48

	.type	.L__profc_fmaxl,%object         @ @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.zero	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,%object         @ @__profd_fmaxl
	.section	__llvm_prf_data,"awG",%progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.long	3522938444                      @ 0xd471861cd1fbc64c
	.long	3564209692
	.long	463263937                       @ 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmaxl-.L__profd_fmaxl
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	6                               @ 0x6
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fmaxl, 48

	.type	.L__profc_fmin,%object          @ @__profc_fmin
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.zero	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,%object          @ @__profd_fmin
	.section	__llvm_prf_data,"awG",%progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.long	1265219729                      @ 0xd65e3074b69b891
	.long	224781063
	.long	463263937                       @ 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmin-.L__profd_fmin
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	6                               @ 0x6
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fmin, 48

	.type	.L__profc_fminf,%object         @ @__profc_fminf
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.zero	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,%object         @ @__profd_fminf
	.section	__llvm_prf_data,"awG",%progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.long	848075867                       @ 0x6b0021b0328c9c5b
	.long	1795170736
	.long	463263937                       @ 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fminf-.L__profd_fminf
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	6                               @ 0x6
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fminf, 48

	.type	.L__profc_fminl,%object         @ @__profc_fminl
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.zero	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,%object         @ @__profd_fminl
	.section	__llvm_prf_data,"awG",%progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.long	1476992898                      @ 0x2285162058091f82
	.long	579147296
	.long	463263937                       @ 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fminl-.L__profd_fminl
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	6                               @ 0x6
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_fminl, 48

	.type	.L__profc_l64a,%object          @ @__profc_l64a
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.zero	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,%object          @ @__profd_l64a
	.section	__llvm_prf_data,"awG",%progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.long	3141852333                      @ 0xaa87bd26bb44dcad
	.long	2861022502
	.long	17496                           @ 0x4458
	.long	0
	.long	.L__profc_l64a-.L__profd_l64a
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_l64a, 48

	.type	.L__profc_srand,%object         @ @__profc_srand
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.zero	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,%object         @ @__profd_srand
	.section	__llvm_prf_data,"awG",%progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.long	1506720376                      @ 0xe30e668959ceba78
	.long	3809371785
	.long	0                               @ 0x0
	.long	0
	.long	.L__profc_srand-.L__profd_srand
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_srand, 48

	.type	.L__profc_rand,%object          @ @__profc_rand
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.zero	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,%object          @ @__profd_rand
	.section	__llvm_prf_data,"awG",%progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.long	1355010356                      @ 0x6401286350c3d134
	.long	1677797475
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rand-.L__profd_rand
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rand, 48

	.type	.L__profc_insque,%object        @ @__profc_insque
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.zero	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,%object        @ @__profd_insque
	.section	__llvm_prf_data,"awG",%progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.long	3171658647                      @ 0xb97ef903bd0bab97
	.long	3112106243
	.long	2554635409                      @ 0x29a49844a491
	.long	10660
	.long	.L__profc_insque-.L__profd_insque
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_insque, 48

	.type	.L__profc_remque,%object        @ @__profc_remque
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.zero	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,%object        @ @__profd_remque
	.section	__llvm_prf_data,"awG",%progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.long	1424166850                      @ 0x9be1f18d54e30fc2
	.long	2615275917
	.long	2453972113                      @ 0x29244a491
	.long	2
	.long	.L__profc_remque-.L__profd_remque
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_remque, 48

	.type	.L__profc_lsearch,%object       @ @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.zero	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,%object       @ @__profd_lsearch
	.section	__llvm_prf_data,"awG",%progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.long	4174077742                      @ 0x9e68c5caf8cb5f2e
	.long	2657666506
	.long	3529577560                      @ 0x46ca7d2611458
	.long	289959
	.long	.L__profc_lsearch-.L__profd_lsearch
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_lsearch, 48

	.type	.L__profc_lfind,%object         @ @__profc_lfind
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.zero	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,%object         @ @__profd_lfind
	.section	__llvm_prf_data,"awG",%progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.long	817200365                       @ 0xa7df811e30b57ced
	.long	2816442654
	.long	3529577560                      @ 0x46ca7d2611458
	.long	289959
	.long	.L__profc_lfind-.L__profd_lfind
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_lfind, 48

	.type	.L__profc_abs,%object           @ @__profc_abs
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.zero	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,%object           @ @__profd_abs
	.section	__llvm_prf_data,"awG",%progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.long	90942713                        @ 0xfcb0ccbe056bacf9
	.long	4239445182
	.long	99164                           @ 0x1835c
	.long	0
	.long	.L__profc_abs-.L__profd_abs
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_abs, 48

	.type	.L__profc_atoi,%object          @ @__profc_atoi
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.zero	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,%object          @ @__profd_atoi
	.section	__llvm_prf_data,"awG",%progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.long	2738380237                      @ 0xa52e4a4ba3385dcd
	.long	2771274315
	.long	134813197                       @ 0x244720809160d
	.long	148594
	.long	.L__profc_atoi-.L__profd_atoi
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_atoi, 48

	.type	.L__profc_atol,%object          @ @__profc_atol
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.zero	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,%object          @ @__profd_atol
	.section	__llvm_prf_data,"awG",%progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.long	4002377009                      @ 0x724cc634ee8f6d31
	.long	1917634100
	.long	134813197                       @ 0x244720809160d
	.long	148594
	.long	.L__profc_atol-.L__profd_atol
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_atol, 48

	.type	.L__profc_atoll,%object         @ @__profc_atoll
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.zero	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,%object         @ @__profd_atoll
	.section	__llvm_prf_data,"awG",%progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.long	1906768237                      @ 0x32b4ee8971a6f96d
	.long	850718345
	.long	134813197                       @ 0x244720809160d
	.long	148594
	.long	.L__profc_atoll-.L__profd_atoll
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_atoll, 48

	.type	.L__profc_bsearch,%object       @ @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.zero	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,%object       @ @__profd_bsearch
	.section	__llvm_prf_data,"awG",%progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.long	2054766654                      @ 0x796ea3837a79403e
	.long	2037293955
	.long	739949690                       @ 0xf42b29012c1abc7a
	.long	4096469249
	.long	.L__profc_bsearch-.L__profd_bsearch
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_bsearch, 48

	.type	.L__profc_bsearch_r,%object     @ @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.zero	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,%object     @ @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",%progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.long	2873519740                      @ 0x13aa8a38ab466e7c
	.long	329943608
	.long	2313468942                      @ 0x117a3a2689e4bc0e
	.long	293222950
	.long	.L__profc_bsearch_r-.L__profd_bsearch_r
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_bsearch_r, 48

	.type	.L__profc_div,%object           @ @__profc_div
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.zero	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,%object           @ @__profd_div
	.section	__llvm_prf_data,"awG",%progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.long	1483041080                      @ 0x4c4998dc58656938
	.long	1279891676
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_div-.L__profd_div
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_div, 48

	.type	.L__profc_imaxabs,%object       @ @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.zero	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,%object       @ @__profd_imaxabs
	.section	__llvm_prf_data,"awG",%progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.long	3004042905                      @ 0x7c28f3a3b30e0e99
	.long	2083058595
	.long	99164                           @ 0x1835c
	.long	0
	.long	.L__profc_imaxabs-.L__profd_imaxabs
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_imaxabs, 48

	.type	.L__profc_imaxdiv,%object       @ @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.zero	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,%object       @ @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",%progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.long	2640297140                      @ 0xc97b6cec9d5fbcb4
	.long	3380309228
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_imaxdiv-.L__profd_imaxdiv
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_imaxdiv, 48

	.type	.L__profc_labs,%object          @ @__profc_labs
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.zero	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,%object          @ @__profd_labs
	.section	__llvm_prf_data,"awG",%progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.long	3013844134                      @ 0x9d363762b3a39ca6
	.long	2637576034
	.long	99164                           @ 0x1835c
	.long	0
	.long	.L__profc_labs-.L__profd_labs
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_labs, 48

	.type	.L__profc_ldiv,%object          @ @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.zero	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,%object          @ @__profd_ldiv
	.section	__llvm_prf_data,"awG",%progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.long	1948272233                      @ 0x633951ff74204669
	.long	1664700927
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_ldiv-.L__profd_ldiv
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_ldiv, 48

	.type	.L__profc_llabs,%object         @ @__profc_llabs
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.zero	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,%object         @ @__profd_llabs
	.section	__llvm_prf_data,"awG",%progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.long	3146878658                      @ 0x6aa5dafebb918ec2
	.long	1789254398
	.long	99164                           @ 0x1835c
	.long	0
	.long	.L__profc_llabs-.L__profd_llabs
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_llabs, 48

	.type	.L__profc_lldiv,%object         @ @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.zero	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,%object         @ @__profd_lldiv
	.section	__llvm_prf_data,"awG",%progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.long	1376157918                      @ 0xb60b082c520680de
	.long	3054176300
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_lldiv-.L__profd_lldiv
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_lldiv, 48

	.type	.L__profc_wcschr,%object        @ @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.zero	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,%object        @ @__profd_wcschr
	.section	__llvm_prf_data,"awG",%progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.long	3278405344                      @ 0xe05c7c36c3687ee0
	.long	3764157494
	.long	243340813                       @ 0x10e81160d
	.long	1
	.long	.L__profc_wcschr-.L__profd_wcschr
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wcschr, 48

	.type	.L__profc_wcscmp,%object        @ @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.zero	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,%object        @ @__profd_wcscmp
	.section	__llvm_prf_data,"awG",%progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.long	3443918992                      @ 0xcc82c5dbcd460890
	.long	3431122395
	.long	3512784604                      @ 0x438e7d160d6dc
	.long	276711
	.long	.L__profc_wcscmp-.L__profd_wcscmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wcscmp, 48

	.type	.L__profc_wcscpy,%object        @ @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.zero	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,%object        @ @__profd_wcscpy
	.section	__llvm_prf_data,"awG",%progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.long	4141681258                      @ 0x8baf660af6dd0a6a
	.long	2343527946
	.long	9304                            @ 0x2458
	.long	0
	.long	.L__profc_wcscpy-.L__profd_wcscpy
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wcscpy, 48

	.type	.L__profc_wcslen,%object        @ @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.zero	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,%object        @ @__profd_wcslen
	.section	__llvm_prf_data,"awG",%progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.long	3359154486                      @ 0x3759acd4c838a136
	.long	928623828
	.long	17496                           @ 0x4458
	.long	0
	.long	.L__profc_wcslen-.L__profd_wcslen
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wcslen, 48

	.type	.L__profc_wcsncmp,%object       @ @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.zero	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,%object       @ @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",%progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.long	3384850644                      @ 0xb4b5ef95c9c0b8d4
	.long	3031822229
	.long	4248202332                      @ 0x5d218431fd366c5c
	.long	1562477617
	.long	.L__profc_wcsncmp-.L__profd_wcsncmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	10                              @ 0xa
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wcsncmp, 48

	.type	.L__profc_wmemchr,%object       @ @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.zero	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,%object       @ @__profd_wmemchr
	.section	__llvm_prf_data,"awG",%progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.long	1528125668                      @ 0xfde7d69b5b1558e4
	.long	4259829403
	.long	243340813                       @ 0x10e81160d
	.long	1
	.long	.L__profc_wmemchr-.L__profd_wmemchr
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wmemchr, 48

	.type	.L__profc_wmemcmp,%object       @ @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.zero	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,%object       @ @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",%progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.long	84788312                        @ 0x4abf86f3050dc458
	.long	1254065907
	.long	1479857884                      @ 0x439f45834d6dc
	.long	276980
	.long	.L__profc_wmemcmp-.L__profd_wmemcmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	6                               @ 0x6
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wmemcmp, 48

	.type	.L__profc_wmemcpy,%object       @ @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.zero	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,%object       @ @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",%progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.long	2637215827                      @ 0x65ab5c0b9d30b853
	.long	1705729035
	.long	9304                            @ 0x2458
	.long	0
	.long	.L__profc_wmemcpy-.L__profd_wmemcpy
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wmemcpy, 48

	.type	.L__profc_wmemmove,%object      @ @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.zero	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,%object      @ @__profd_wmemmove
	.section	__llvm_prf_data,"awG",%progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.long	1772334517                      @ 0xbf56752a69a3adb5
	.long	3210114346
	.long	3244734756                      @ 0xeb2e3281c166b924
	.long	3945673345
	.long	.L__profc_wmemmove-.L__profd_wmemmove
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wmemmove, 48

	.type	.L__profc_wmemset,%object       @ @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.zero	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,%object       @ @__profd_wmemset
	.section	__llvm_prf_data,"awG",%progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.long	4064618063                      @ 0x8ceff224f245264f
	.long	2364535332
	.long	9304                            @ 0x2458
	.long	0
	.long	.L__profc_wmemset-.L__profd_wmemset
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_wmemset, 48

	.type	.L__profc_bcopy,%object         @ @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.zero	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,%object         @ @__profd_bcopy
	.section	__llvm_prf_data,"awG",%progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.long	1054661432                      @ 0x8b5328de3edcdb38
	.long	2337482974
	.long	975013403                       @ 0x48a34b333a1d861b
	.long	1218661171
	.long	.L__profc_bcopy-.L__profd_bcopy
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_bcopy, 48

	.type	.L__profc_rotl64,%object        @ @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.zero	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,%object        @ @__profd_rotl64
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.long	2229826992                      @ 0x416ddc4e84e875b0
	.long	1097718862
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotl64-.L__profd_rotl64
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotl64, 48

	.type	.L__profc_rotr64,%object        @ @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.zero	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,%object        @ @__profd_rotr64
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.long	2326512589                      @ 0x8b0aff7e8aabc3cd
	.long	2332753790
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotr64-.L__profd_rotr64
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotr64, 48

	.type	.L__profc_rotl32,%object        @ @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.zero	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,%object        @ @__profd_rotl32
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.long	3626627460                      @ 0x5910447ed829f184
	.long	1494238334
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotl32-.L__profd_rotl32
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotl32, 48

	.type	.L__profc_rotr32,%object        @ @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.zero	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,%object        @ @__profd_rotr32
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.long	3418479684                      @ 0xb153fe21cbc1dc44
	.long	2975071777
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotr32-.L__profd_rotr32
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotr32, 48

	.type	.L__profc_rotl_sz,%object       @ @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.zero	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,%object       @ @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.long	3086541338                      @ 0xccd67b43b7f8e21a
	.long	3436608323
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotl_sz-.L__profd_rotl_sz
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotl_sz, 48

	.type	.L__profc_rotr_sz,%object       @ @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.zero	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,%object       @ @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.long	2553665156                      @ 0x2f664ae29835d684
	.long	795232994
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotr_sz-.L__profd_rotr_sz
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotr_sz, 48

	.type	.L__profc_rotl16,%object        @ @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.zero	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,%object        @ @__profd_rotl16
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.long	244555557                       @ 0x65af538b0e939f25
	.long	1705989003
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotl16-.L__profd_rotl16
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotl16, 48

	.type	.L__profc_rotr16,%object        @ @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.zero	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,%object        @ @__profd_rotr16
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.long	3877440124                      @ 0x4933b9afe71d0a7c
	.long	1228126639
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotr16-.L__profd_rotr16
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotr16, 48

	.type	.L__profc_rotl8,%object         @ @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.zero	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,%object         @ @__profd_rotl8
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.long	655336000                       @ 0x3d2ddd93270fa240
	.long	1026416019
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotl8-.L__profd_rotl8
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotl8, 48

	.type	.L__profc_rotr8,%object         @ @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.zero	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,%object         @ @__profd_rotr8
	.section	__llvm_prf_data,"awG",%progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.long	1493665568                      @ 0xa54c2aea59078720
	.long	2773232362
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_rotr8-.L__profd_rotr8
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_rotr8, 48

	.type	.L__profc_bswap_16,%object      @ @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.zero	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,%object      @ @__profd_bswap_16
	.section	__llvm_prf_data,"awG",%progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.long	1268401773                      @ 0x84e47ce04b9a466d
	.long	2229566688
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_bswap_16-.L__profd_bswap_16
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_bswap_16, 48

	.type	.L__profc_bswap_32,%object      @ @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.zero	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,%object      @ @__profd_bswap_32
	.section	__llvm_prf_data,"awG",%progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.long	452808988                       @ 0x655ffb691afd511c
	.long	1700789097
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_bswap_32-.L__profd_bswap_32
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_bswap_32, 48

	.type	.L__profc_bswap_64,%object      @ @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.zero	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,%object      @ @__profd_bswap_64
	.section	__llvm_prf_data,"awG",%progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.long	475245398                       @ 0x27e1fd2c1c53ab56
	.long	669121836
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_bswap_64-.L__profd_bswap_64
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_bswap_64, 48

	.type	.L__profc_ffs,%object           @ @__profc_ffs
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.zero	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,%object           @ @__profd_ffs
	.section	__llvm_prf_data,"awG",%progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.long	1440366139                      @ 0x7ffbbb6955da3e3b
	.long	2147203945
	.long	2455835736                      @ 0x11b292611458
	.long	4530
	.long	.L__profc_ffs-.L__profd_ffs
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_ffs, 48

	.type	.L__profc_libiberty_ffs,%object @ @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.zero	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,%object @ @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",%progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.long	2840574905                      @ 0xe7b1a8a94fbbb9
	.long	15184296
	.long	286368856                       @ 0xa7d261111a458
	.long	687398
	.long	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_libiberty_ffs, 48

	.type	.L__profc_gl_isinff,%object     @ @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.zero	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,%object     @ @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",%progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.long	3010385274                      @ 0x5ab10580b36ed57a
	.long	1521550720
	.long	6354652                         @ 0x60f6dc
	.long	0
	.long	.L__profc_gl_isinff-.L__profd_gl_isinff
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_gl_isinff, 48

	.type	.L__profc_gl_isinfd,%object     @ @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.zero	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,%object     @ @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",%progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.long	444377658                       @ 0x80cc28161a7caa3a
	.long	2160863254
	.long	6354652                         @ 0x60f6dc
	.long	0
	.long	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_gl_isinfd, 48

	.type	.L__profc_gl_isinfl,%object     @ @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.zero	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,%object     @ @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",%progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.long	2943121403                      @ 0x41a874c2af6c77fb
	.long	1101558978
	.long	6354652                         @ 0x60f6dc
	.long	0
	.long	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_gl_isinfl, 48

	.type	.L__profc__Qp_itoq,%object      @ @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",%progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.zero	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,%object      @ @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",%progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.long	1257874239                      @ 0xca752ed84af9a33f
	.long	3396677336
	.long	0                               @ 0x0
	.long	0
	.long	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd__Qp_itoq, 48

	.type	.L__profc_ldexpf,%object        @ @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.zero	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,%object        @ @__profd_ldexpf
	.section	__llvm_prf_data,"awG",%progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.long	539537125                       @ 0xdc76cdf42028aee5
	.long	3698773492
	.long	14241369                        @ 0xe392b7c600d94e59
	.long	3818043334
	.long	.L__profc_ldexpf-.L__profd_ldexpf
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	8                               @ 0x8
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_ldexpf, 48

	.type	.L__profc_ldexp,%object         @ @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.zero	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,%object         @ @__profd_ldexp
	.section	__llvm_prf_data,"awG",%progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.long	3111827691                      @ 0xfca965e7b97ab8eb
	.long	4238960103
	.long	14241369                        @ 0xe392b7c600d94e59
	.long	3818043334
	.long	.L__profc_ldexp-.L__profd_ldexp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	8                               @ 0x8
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_ldexp, 48

	.type	.L__profc_ldexpl,%object        @ @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.zero	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,%object        @ @__profd_ldexpl
	.section	__llvm_prf_data,"awG",%progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.long	178812135                       @ 0xb942e25c0aa874e7
	.long	3108168284
	.long	14241369                        @ 0xe392b7c600d94e59
	.long	3818043334
	.long	.L__profc_ldexpl-.L__profd_ldexpl
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	8                               @ 0x8
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_ldexpl, 48

	.type	.L__profc_memxor,%object        @ @__profc_memxor
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.zero	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,%object        @ @__profd_memxor
	.section	__llvm_prf_data,"awG",%progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.long	2128235242                      @ 0x8bdecd417eda4aea
	.long	2346634561
	.long	1164376                         @ 0x11c458
	.long	0
	.long	.L__profc_memxor-.L__profd_memxor
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memxor, 48

	.type	.L__profc_strncat,%object       @ @__profc_strncat
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.zero	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,%object       @ @__profd_strncat
	.section	__llvm_prf_data,"awG",%progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.long	2636207119                      @ 0xce4875d49d21540f
	.long	3460855252
	.long	1249715288                      @ 0x10e72044a7d2458
	.long	17723908
	.long	.L__profc_strncat-.L__profd_strncat
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strncat, 48

	.type	.L__profc_strnlen,%object       @ @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.zero	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,%object       @ @__profd_strnlen
	.section	__llvm_prf_data,"awG",%progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.long	3690601605                      @ 0x72eda14dbfa1c85
	.long	120510996
	.long	242054232                       @ 0x10e6d7458
	.long	1
	.long	.L__profc_strnlen-.L__profd_strnlen
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strnlen, 48

	.type	.L__profc_strpbrk,%object       @ @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.zero	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,%object       @ @__profd_strpbrk
	.section	__llvm_prf_data,"awG",%progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.long	1100202522                      @ 0xa0b33fed4193c21a
	.long	2696101869
	.long	84945426                        @ 0xc250e3b905102a12
	.long	3260081081
	.long	.L__profc_strpbrk-.L__profd_strpbrk
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strpbrk, 48

	.type	.L__profc_strrchr,%object       @ @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.zero	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,%object       @ @__profd_strrchr
	.section	__llvm_prf_data,"awG",%progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.long	1003970063                      @ 0x49a93a493bd75e0f
	.long	1235827273
	.long	2672366680                      @ 0x329f491458
	.long	50
	.long	.L__profc_strrchr-.L__profd_strrchr
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strrchr, 48

	.type	.L__profc_strstr,%object        @ @__profc_strstr
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.zero	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,%object        @ @__profd_strstr
	.section	__llvm_prf_data,"awG",%progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.long	1946130763                      @ 0x3169a8a873ff994b
	.long	829008040
	.long	4193384452                      @ 0x93c6fcaef9f1f804
	.long	2479291566
	.long	.L__profc_strstr-.L__profd_strstr
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_strstr, 48

	.type	.L__profc_copysign,%object      @ @__profc_copysign
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.zero	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,%object      @ @__profd_copysign
	.section	__llvm_prf_data,"awG",%progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.long	3933621461                      @ 0x82096d47ea764cd5
	.long	2181655879
	.long	1176019055                      @ 0x3a4ce3834618a06f
	.long	978117507
	.long	.L__profc_copysign-.L__profd_copysign
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_copysign, 48

	.type	.L__profc_memmem,%object        @ @__profc_memmem
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.zero	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,%object        @ @__profd_memmem
	.section	__llvm_prf_data,"awG",%progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.long	1482351504                      @ 0x981e4a4b585ae390
	.long	2552121931
	.long	2121957956                      @ 0x4c7092d27e7a8244
	.long	1282446034
	.long	.L__profc_memmem-.L__profd_memmem
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_memmem, 48

	.type	.L__profc_mempcpy,%object       @ @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.zero	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,%object       @ @__profd_mempcpy
	.section	__llvm_prf_data,"awG",%progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.long	252779458                       @ 0xf5f7b7020f111bc2
	.long	4126652162
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc_mempcpy-.L__profd_mempcpy
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_mempcpy, 48

	.type	.L__profc_frexp,%object         @ @__profc_frexp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.zero	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,%object         @ @__profd_frexp
	.section	__llvm_prf_data,"awG",%progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.long	471787407                       @ 0xd667ea2e1c1ee78f
	.long	3597134382
	.long	1008144312                      @ 0xdf0ea1753c170fb8
	.long	3742278005
	.long	.L__profc_frexp-.L__profd_frexp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	9                               @ 0x9
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_frexp, 48

	.type	.L__profc___muldi3,%object      @ @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.zero	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,%object      @ @__profd___muldi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.long	2949618840                      @ 0x3755a22cafcf9c98
	.long	928358956
	.long	2320045144                      @ 0x8a491458
	.long	0
	.long	.L__profc___muldi3-.L__profd___muldi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___muldi3, 48

	.type	.L__profc_udivmodsi4,%object    @ @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",%progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.zero	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,%object    @ @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",%progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.long	1024966285                      @ 0x40d2210e3d17be8d
	.long	1087512846
	.long	1651402066                      @ 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	9                               @ 0x9
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd_udivmodsi4, 48

	.type	.L__profc___clrsbqi2,%object    @ @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.zero	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,%object    @ @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.long	921962090                       @ 0x92f2490d36f4066a
	.long	2465351949
	.long	2672395352                      @ 0x29b49129f498458
	.long	43731218
	.long	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___clrsbqi2, 48

	.type	.L__profc___clrsbdi2,%object    @ @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.zero	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,%object    @ @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.long	1877498071                      @ 0xeab85aaa6fe858d7
	.long	3937950378
	.long	2672395352                      @ 0x29b49129f498458
	.long	43731218
	.long	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___clrsbdi2, 48

	.type	.L__profc___mulsi3,%object      @ @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.zero	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,%object      @ @__profd___mulsi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.long	808585471                       @ 0x472924cf303208ff
	.long	1193878735
	.long	2320045144                      @ 0x8a491458
	.long	0
	.long	.L__profc___mulsi3-.L__profd___mulsi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mulsi3, 48

	.type	.L__profc___cmovd,%object       @ @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.zero	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,%object       @ @__profd___cmovd
	.section	__llvm_prf_data,"awG",%progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.long	553465352                       @ 0x143d4c6520fd3608
	.long	339561573
	.long	1219219495                      @ 0xa70727df48abd027
	.long	2802264031
	.long	.L__profc___cmovd-.L__profd___cmovd
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___cmovd, 48

	.type	.L__profc___cmovh,%object       @ @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.zero	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,%object       @ @__profd___cmovh
	.section	__llvm_prf_data,"awG",%progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.long	1199450638                      @ 0xeec99ab9477e2a0e
	.long	4006189753
	.long	2696688615                      @ 0x2b706930a0bc33e7
	.long	728787248
	.long	.L__profc___cmovh-.L__profd___cmovh
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___cmovh, 48

	.type	.L__profc___cmovw,%object       @ @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.zero	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,%object       @ @__profd___cmovw
	.section	__llvm_prf_data,"awG",%progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.long	1785275052                      @ 0xa3f7772d6a6922ac
	.long	2750904109
	.long	1219219495                      @ 0xa70727df48abd027
	.long	2802264031
	.long	.L__profc___cmovw-.L__profd___cmovw
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___cmovw, 48

	.type	.L__profc___modi,%object        @ @__profc___modi
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.zero	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,%object        @ @__profd___modi
	.section	__llvm_prf_data,"awG",%progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.long	3464656561                      @ 0x3951c3b1ce8276b1
	.long	961659825
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___modi-.L__profd___modi
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___modi, 48

	.type	.L__profc___uitod,%object       @ @__profc___uitod
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.zero	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,%object       @ @__profd___uitod
	.section	__llvm_prf_data,"awG",%progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.long	2493213220                      @ 0xcb5bf4b0949b6a24
	.long	3411801264
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___uitod-.L__profd___uitod
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___uitod, 48

	.type	.L__profc___uitof,%object       @ @__profc___uitof
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.zero	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,%object       @ @__profd___uitof
	.section	__llvm_prf_data,"awG",%progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.long	3986234038                      @ 0x253fdbc7ed991ab6
	.long	624942023
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___uitof-.L__profd___uitof
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___uitof, 48

	.type	.L__profc___ulltod,%object      @ @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.zero	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,%object      @ @__profd___ulltod
	.section	__llvm_prf_data,"awG",%progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.long	4219734726                      @ 0x377213c0fb840ac6
	.long	930223040
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___ulltod-.L__profd___ulltod
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___ulltod, 48

	.type	.L__profc___ulltof,%object      @ @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.zero	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,%object      @ @__profd___ulltof
	.section	__llvm_prf_data,"awG",%progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.long	2547710861                      @ 0xe58a8e7e97dafb8d
	.long	3851062910
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___ulltof-.L__profd___ulltof
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___ulltof, 48

	.type	.L__profc___umodi,%object       @ @__profc___umodi
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.zero	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,%object       @ @__profd___umodi
	.section	__llvm_prf_data,"awG",%progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.long	1073703930                      @ 0x5567a7893fff6bfa
	.long	1432856457
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___umodi-.L__profd___umodi
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___umodi, 48

	.type	.L__profc___clzhi2,%object      @ @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.zero	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,%object      @ @__profd___clzhi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.long	1526022046                      @ 0x8005edb05af53f9e
	.long	2147872176
	.long	2455311448                      @ 0x11b292591458
	.long	4530
	.long	.L__profc___clzhi2-.L__profd___clzhi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___clzhi2, 48

	.type	.L__profc___ctzhi2,%object      @ @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.zero	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,%object      @ @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.long	3617218592                      @ 0xea391231d79a6020
	.long	3929608753
	.long	2455311448                      @ 0x11b292591458
	.long	4530
	.long	.L__profc___ctzhi2-.L__profd___ctzhi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___ctzhi2, 48

	.type	.L__profc___fixunssfsi,%object  @ @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.zero	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,%object  @ @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",%progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.long	651704643                       @ 0x93bf2a7226d83943
	.long	2478778994
	.long	2655618136                      @ 0x29e498458
	.long	2
	.long	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	2                               @ 0x2
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___fixunssfsi, 48

	.type	.L__profc___parityhi2,%object   @ @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.zero	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,%object   @ @__profd___parityhi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.long	1595267545                      @ 0x10b5167d5f15d9d9
	.long	280303229
	.long	3393786968                      @ 0x46ca491458
	.long	70
	.long	.L__profc___parityhi2-.L__profd___parityhi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___parityhi2, 48

	.type	.L__profc___popcounthi2,%object @ @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.zero	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,%object @ @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.long	3021313414                      @ 0x36b9214fb4159586
	.long	918102351
	.long	3393786968                      @ 0x46ca491458
	.long	70
	.long	.L__profc___popcounthi2-.L__profd___popcounthi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___popcounthi2, 48

	.type	.L__profc___mulsi3_iq2000,%object @ @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.zero	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,%object @ @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",%progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.long	2418545684                      @ 0xc8d127b190281414
	.long	3369150385
	.long	172561496                       @ 0x280a491458
	.long	40
	.long	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mulsi3_iq2000, 48

	.type	.L__profc___mulsi3_lm32,%object @ @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.zero	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,%object @ @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",%progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.long	3669051597                      @ 0x26851843dab148cd
	.long	646256707
	.long	903869171                       @ 0xa9cf36c835dff2f3
	.long	2848929480
	.long	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mulsi3_lm32, 48

	.type	.L__profc___udivmodsi4,%object  @ @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.zero	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,%object  @ @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",%progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.long	3214998610                      @ 0xa2bc61cdbfa0fc52
	.long	2730254797
	.long	1651402066                      @ 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	9                               @ 0x9
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___udivmodsi4, 48

	.type	.L__profc___mspabi_cmpf,%object @ @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.zero	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,%object @ @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",%progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.long	4012873975                      @ 0x58d08e7bef2f98f7
	.long	1490062971
	.long	3971983684                      @ 0x12c573c0ecbfa944
	.long	314930112
	.long	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mspabi_cmpf, 48

	.type	.L__profc___mspabi_cmpd,%object @ @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.zero	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,%object @ @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",%progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.long	3823668329                      @ 0xafd9d1e3e3e88c69
	.long	2950287843
	.long	3971983684                      @ 0x12c573c0ecbfa944
	.long	314930112
	.long	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mspabi_cmpd, 48

	.type	.L__profc___mspabi_mpysll,%object @ @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.zero	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,%object @ @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",%progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.long	4195771941                      @ 0xfb03c3bdfa166625
	.long	4211327933
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mspabi_mpysll, 48

	.type	.L__profc___mspabi_mpyull,%object @ @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.zero	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,%object @ @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",%progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.long	3324675637                      @ 0x5c01e284c62a8635
	.long	1543627396
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mspabi_mpyull, 48

	.type	.L__profc___mulhi3,%object      @ @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.zero	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,%object      @ @__profd___mulhi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.long	1556531068                      @ 0xbf2a9dde5cc6c77c
	.long	3207241182
	.long	2703778695                      @ 0xb568b86aa1286387
	.long	3043539050
	.long	.L__profc___mulhi3-.L__profd___mulhi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	7                               @ 0x7
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___mulhi3, 48

	.type	.L__profc___divsi3,%object      @ @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.zero	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,%object      @ @__profd___divsi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.long	296414084                       @ 0x4e26dd1711aaeb84
	.long	1311169815
	.long	1867459201                      @ 0x715edbe6f4f2a81
	.long	118877630
	.long	.L__profc___divsi3-.L__profd___divsi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___divsi3, 48

	.type	.L__profc___modsi3,%object      @ @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.zero	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,%object      @ @__profd___modsi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.long	1312834626                      @ 0x8328dd9f4e404442
	.long	2200493471
	.long	2245965411                      @ 0x1d6fb85985deb663
	.long	493860953
	.long	.L__profc___modsi3-.L__profd___modsi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	4                               @ 0x4
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___modsi3, 48

	.type	.L__profc___udivmodhi4,%object  @ @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.zero	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,%object  @ @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",%progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.long	3037779362                      @ 0x1f1bdf8db510d5a2
	.long	521920397
	.long	1651402066                      @ 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	9                               @ 0x9
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___udivmodhi4, 48

	.type	.L__profc___udivmodsi4_libgcc,%object @ @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.zero	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,%object @ @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",%progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.long	3532769019                      @ 0xeb670aedd291c6fb
	.long	3949398765
	.long	1651402066                      @ 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	9                               @ 0x9
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___udivmodsi4_libgcc, 48

	.type	.L__profc___ashldi3,%object     @ @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.zero	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,%object     @ @__profd___ashldi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.long	978704463                       @ 0x339d4a983a55d84f
	.long	865946264
	.long	3529577560                      @ 0x2924ca7d2611458
	.long	43142311
	.long	.L__profc___ashldi3-.L__profd___ashldi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___ashldi3, 48

	.type	.L__profc___ashrdi3,%object     @ @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.zero	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,%object     @ @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.long	3990118094                      @ 0xe63f2ae7edd45ece
	.long	3862899431
	.long	3529577560                      @ 0x2924ca7d2611458
	.long	43142311
	.long	.L__profc___ashrdi3-.L__profd___ashrdi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___ashrdi3, 48

	.type	.L__profc___bswapdi2,%object    @ @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.zero	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,%object    @ @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.long	2913318844                      @ 0x7ef907d7ada5b7bc
	.long	2130249687
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___bswapdi2-.L__profd___bswapdi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___bswapdi2, 48

	.type	.L__profc___bswapsi2,%object    @ @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.zero	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,%object    @ @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.long	4268972970                      @ 0xd129c8a2fe735baa
	.long	3509176482
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___bswapsi2-.L__profd___bswapsi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___bswapsi2, 48

	.type	.L__profc___clzsi2,%object      @ @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.zero	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,%object      @ @__profd___clzsi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.long	847417603                       @ 0x1330458b32829103
	.long	321930635
	.long	3749574175                      @ 0x7df7df61f
	.long	7
	.long	.L__profc___clzsi2-.L__profd___clzsi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___clzsi2, 48

	.type	.L__profc___cmpdi2,%object      @ @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.zero	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,%object      @ @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.long	2900396552                      @ 0xb3ad5632ace08a08
	.long	3014481458
	.long	1422139388                      @ 0x993642a254c41ffc
	.long	2570470050
	.long	.L__profc___cmpdi2-.L__profd___cmpdi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___cmpdi2, 48

	.type	.L__profc___aeabi_lcmp,%object  @ @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.zero	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,%object  @ @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",%progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.long	1053938860                      @ 0x6215aec83ed1d4ac
	.long	1645588168
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___aeabi_lcmp, 48

	.type	.L__profc___ctzsi2,%object      @ @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.zero	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,%object      @ @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.long	1006971543                      @ 0xb3a5ef643c052a97
	.long	3013996388
	.long	3749574175                      @ 0x7df7df61f
	.long	7
	.long	.L__profc___ctzsi2-.L__profd___ctzsi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___ctzsi2, 48

	.type	.L__profc___lshrdi3,%object     @ @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.zero	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,%object     @ @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.long	471342677                       @ 0x2518bb1c181e55
	.long	2431163
	.long	3529577560                      @ 0x2924ca7d2611458
	.long	43142311
	.long	.L__profc___lshrdi3-.L__profd___lshrdi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	3                               @ 0x3
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___lshrdi3, 48

	.type	.L__profc___muldsi3,%object     @ @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.zero	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,%object     @ @__profd___muldsi3
	.section	__llvm_prf_data,"awG",%progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.long	2728610976                      @ 0x42031a08a2a34ca0
	.long	1107499528
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___muldsi3-.L__profd___muldsi3
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___muldsi3, 48

	.type	.L__profc___muldi3_compiler_rt,%object @ @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.zero	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,%object @ @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",%progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.long	3866746773                      @ 0xf5c319bbe679df95
	.long	4123204027
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___muldi3_compiler_rt, 48

	.type	.L__profc___negdi2,%object      @ @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.zero	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,%object      @ @__profd___negdi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.long	3064379771                      @ 0xd9312c7bb6a6b97b
	.long	3643878523
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___negdi2-.L__profd___negdi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___negdi2, 48

	.type	.L__profc___paritydi2,%object   @ @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.zero	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,%object   @ @__profd___paritydi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.long	1043989739                      @ 0xb92eea643e3a04eb
	.long	3106859620
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___paritydi2-.L__profd___paritydi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___paritydi2, 48

	.type	.L__profc___paritysi2,%object   @ @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.zero	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,%object   @ @__profd___paritysi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.long	2433766622                      @ 0x75e730a6911054de
	.long	1978085542
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___paritysi2-.L__profd___paritysi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___paritysi2, 48

	.type	.L__profc___popcountdi2,%object @ @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.zero	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,%object @ @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.long	220067820                       @ 0x3c43a5910d1df7ec
	.long	1011066257
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___popcountdi2-.L__profd___popcountdi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___popcountdi2, 48

	.type	.L__profc___popcountsi2,%object @ @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.zero	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,%object @ @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.long	1866676599                      @ 0xe22c3cbb6f433977
	.long	3794549947
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___popcountsi2-.L__profd___popcountsi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___popcountsi2, 48

	.type	.L__profc___powidf2,%object     @ @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.zero	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,%object     @ @__profd___powidf2
	.section	__llvm_prf_data,"awG",%progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.long	3451548981                      @ 0xe7adb92dcdba7535
	.long	3886922029
	.long	3026146526                      @ 0xbc6e6995b45f54de
	.long	3161352597
	.long	.L__profc___powidf2-.L__profd___powidf2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___powidf2, 48

	.type	.L__profc___powisf2,%object     @ @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.zero	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,%object     @ @__profd___powisf2
	.section	__llvm_prf_data,"awG",%progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.long	3233246232                      @ 0xcb298a26c0b76c18
	.long	3408497190
	.long	3026146526                      @ 0xbc6e6995b45f54de
	.long	3161352597
	.long	.L__profc___powisf2-.L__profd___powisf2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___powisf2, 48

	.type	.L__profc___ucmpdi2,%object     @ @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.zero	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,%object     @ @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",%progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.long	627836813                       @ 0xe3a10322256c078d
	.long	3818980130
	.long	1422139388                      @ 0x993642a254c41ffc
	.long	2570470050
	.long	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	5                               @ 0x5
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___ucmpdi2, 48

	.type	.L__profc___aeabi_ulcmp,%object @ @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",%progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.zero	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,%object @ @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",%progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.long	2182691887                      @ 0x639ff8782193c2f
	.long	104464263
	.long	24                              @ 0x18
	.long	0
	.long	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.long	0                               @ 0x0
	.long	0
	.long	0
	.long	1                               @ 0x1
	.zero	6
	.zero	2
	.long	0                               @ 0x0
	.size	.L__profd___aeabi_ulcmp, 48

	.type	.L__llvm_prf_nm,%object         @ @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",%progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\225\n\246\004x\332]\223\tn\3430\fE\241\033e\222\242\3505\346\004\206\254%&J-\221\344*\355\351\207\244\344\244\031\300\340\373\244VRtp!\244/\247\202\013\306\344o\341V\004!\013F\260\314huM\325\2269Z\033\007\343\216S\th\021\001]dDq\273^\025T\215y\323\314j\000\210+\352\370I4\221\246\023-\\\241\021\257E\347\215\210\251\273B\314\005\"\307k\326\306\021\367\234%\336\217\205\375X\331\217\251\375>B-\215\303\274\205 \306+\037\364]\314\220H\026\242\030/\026\025\276\277iU\213\216V\211\201Xo\273S\305\005\006V\247)W\205\036hL\257U\351\226\200\r\212A\265\316\031\223KQ\026\276\024\320a<\233\311>\262\203\242\206\024\335M\345:2\250p\f*3\201\313I\220r\366\371B}>Q\237o\304\224\227\354\363\225V\223(\\R\243\214\030e\000/g\361\006p\251?\342N\342\237wq\007\360C\234\017J\246\353\274Pp\bZ;\004m\351=\335\036VX]i\337\013{W\\\240RA\375C\331\207B\265\374\315\013\264t\243\354\335=\373\201a\221\033\354\236\312h\035\335\204\263\225\362Z>\231G\243\321\2478\301\n\327\310\313\350cHc\372\302[.K\330\251\252\027\265SiC\262\025\336(f\260\324\365\006\347CZ\2214\263\322L\212Q\t\355\3446\331yB\262@\330\351\346v\3223\021g\200\205D\346L\203?\3338\245M\341\341\276\307Z}\345\341\254\013\264\3571\220S6i\217m\373u\225\005n\347\323\351\364\3641\\x\364%\227@\377\304\nt\307\354_<\373\364\002U\210\232\362\267\277\017\177\307M2\246\rG\352\262\355\345y\306&g<\017\\\350\225\257\306PL\327M\n+\252\f%\3750\212)\262\316\022\377L\021\346\240v|\r\344\316\225\332\214a|\354\303oV\037\212\0227)d@W\226\322(\030\335u\3543\n\370[\327\227b\332\027\357\030\353`\375\241\252\250\375\277\233\355|\265\177\337\f\323w"
	.size	.L__llvm_prf_nm, 554

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
