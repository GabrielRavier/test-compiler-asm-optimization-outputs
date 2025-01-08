	.text
	.file	"mini-libc.c"
	.globl	memmove                         ; -- Begin function memmove
	.p2align	1
	.type	memmove,@function
memmove:                                ; @memmove
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_memmove+6, r12
	mov	&.L__profc_memmove+4, r11
	mov	&.L__profc_memmove+2, r14
	mov	&.L__profc_memmove, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmove
	mov	r14, &.L__profc_memmove+2
	mov	r13, &.L__profc_memmove+4
	mov	r12, &.L__profc_memmove+6
	mov	8(r1), r12
	mov	r12, 2(r1)
	mov	6(r1), r12
	mov	r12, 0(r1)
	mov	0(r1), r12
	mov	2(r1), r13
	cmp	r13, r12
	jhs	.LBB0_6
	jmp	.LBB0_1
.LBB0_1:
	mov	&.L__profc_memmove+14, r12
	mov	&.L__profc_memmove+12, r11
	mov	&.L__profc_memmove+10, r14
	mov	&.L__profc_memmove+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmove+8
	mov	r14, &.L__profc_memmove+10
	mov	r13, &.L__profc_memmove+12
	mov	r12, &.L__profc_memmove+14
	mov	4(r1), r13
	mov	0(r1), r12
	add	r13, r12
	mov	r12, 0(r1)
	mov	4(r1), r13
	mov	2(r1), r12
	add	r13, r12
	mov	r12, 2(r1)
	jmp	.LBB0_2
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB0_5
	jmp	.LBB0_3
.LBB0_3:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	&.L__profc_memmove+22, r12
	mov	&.L__profc_memmove+20, r11
	mov	&.L__profc_memmove+18, r14
	mov	&.L__profc_memmove+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmove+16
	mov	r14, &.L__profc_memmove+18
	mov	r13, &.L__profc_memmove+20
	mov	r12, &.L__profc_memmove+22
	mov	0(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 0(r1)
	mov.b	-1(r12), r13
	mov	2(r1), r12
	mov	r12, r14
	add	#-1, r14
	mov	r14, 2(r1)
	mov.b	r13, -1(r12)
	jmp	.LBB0_4
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_13
.LBB0_6:
	mov	0(r1), r12
	mov	2(r1), r13
	cmp	r13, r12
	jeq	.LBB0_12
	jmp	.LBB0_7
.LBB0_7:
	mov	&.L__profc_memmove+30, r12
	mov	&.L__profc_memmove+28, r11
	mov	&.L__profc_memmove+26, r14
	mov	&.L__profc_memmove+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmove+24
	mov	r14, &.L__profc_memmove+26
	mov	r13, &.L__profc_memmove+28
	mov	r12, &.L__profc_memmove+30
	jmp	.LBB0_8
.LBB0_8:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB0_11
	jmp	.LBB0_9
.LBB0_9:                                ;   in Loop: Header=BB0_8 Depth=1
	mov	&.L__profc_memmove+38, r12
	mov	&.L__profc_memmove+36, r11
	mov	&.L__profc_memmove+34, r14
	mov	&.L__profc_memmove+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmove+32
	mov	r14, &.L__profc_memmove+34
	mov	r13, &.L__profc_memmove+36
	mov	r12, &.L__profc_memmove+38
	mov	0(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 0(r1)
	mov.b	0(r12), r13
	mov	2(r1), r12
	mov	r12, r14
	inc	r14
	mov	r14, 2(r1)
	mov.b	r13, 0(r12)
	jmp	.LBB0_10
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	jmp	.LBB0_8
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        ; -- End function
	.globl	memccpy                         ; -- Begin function memccpy
	.p2align	1
	.type	memccpy,@function
memccpy:                                ; @memccpy
; %bb.0:
	push	r9
	push	r10
	sub	#16, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
	mov	r15, 6(r1)
	mov	&.L__profc_memccpy+6, r12
	mov	&.L__profc_memccpy+4, r11
	mov	&.L__profc_memccpy+2, r14
	mov	&.L__profc_memccpy, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memccpy
	mov	r14, &.L__profc_memccpy+2
	mov	r13, &.L__profc_memccpy+4
	mov	r12, &.L__profc_memccpy+6
	mov	12(r1), r12
	mov	r12, 4(r1)
	mov	10(r1), r12
	mov	r12, 2(r1)
	mov.b	8(r1), r12
	mov	r12, 8(r1)
	jmp	.LBB1_1
.LBB1_1:                                ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB1_4
	jmp	.LBB1_2
.LBB1_2:                                ;   in Loop: Header=BB1_1 Depth=1
	mov	&.L__profc_memccpy+22, r13
	mov	&.L__profc_memccpy+20, r12
	mov	&.L__profc_memccpy+18, r15
	mov	&.L__profc_memccpy+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_memccpy+16
	mov	r15, &.L__profc_memccpy+18
	mov	r14, &.L__profc_memccpy+20
	mov	r13, &.L__profc_memccpy+22
	mov	2(r1), r13
	mov.b	0(r13), r13
	mov.b	r13, r15
	mov	4(r1), r14
	mov.b	r15, 0(r14)
	mov	8(r1), r14
	cmp	r14, r13
	mov	r2, r15
	rra	r15
	bic	r15, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB1_4
	jmp	.LBB1_3
.LBB1_3:                                ;   in Loop: Header=BB1_1 Depth=1
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_memccpy+30, r13
	mov	&.L__profc_memccpy+28, r10
	mov	&.L__profc_memccpy+26, r15
	mov	&.L__profc_memccpy+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_memccpy+24
	mov	r15, &.L__profc_memccpy+26
	mov	r14, &.L__profc_memccpy+28
	mov	r13, &.L__profc_memccpy+30
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB1_4
.LBB1_4:                                ;   in Loop: Header=BB1_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB1_7
	jmp	.LBB1_5
.LBB1_5:                                ;   in Loop: Header=BB1_1 Depth=1
	mov	&.L__profc_memccpy+14, r12
	mov	&.L__profc_memccpy+12, r11
	mov	&.L__profc_memccpy+10, r14
	mov	&.L__profc_memccpy+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memccpy+8
	mov	r14, &.L__profc_memccpy+10
	mov	r13, &.L__profc_memccpy+12
	mov	r12, &.L__profc_memccpy+14
	jmp	.LBB1_6
.LBB1_6:                                ;   in Loop: Header=BB1_1 Depth=1
	mov	6(r1), r12
	add	#-1, r12
	mov	r12, 6(r1)
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB1_1
.LBB1_7:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB1_9
	jmp	.LBB1_8
.LBB1_8:
	mov	&.L__profc_memccpy+38, r12
	mov	&.L__profc_memccpy+36, r11
	mov	&.L__profc_memccpy+34, r14
	mov	&.L__profc_memccpy+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memccpy+32
	mov	r14, &.L__profc_memccpy+34
	mov	r13, &.L__profc_memccpy+36
	mov	r12, &.L__profc_memccpy+38
	mov	4(r1), r12
	inc	r12
	mov	r12, 14(r1)
	jmp	.LBB1_10
.LBB1_9:
	clr	14(r1)
	jmp	.LBB1_10
.LBB1_10:
	mov	14(r1), r12
	add	#16, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        ; -- End function
	.globl	memchr                          ; -- Begin function memchr
	.p2align	1
	.type	memchr,@function
memchr:                                 ; @memchr
; %bb.0:
	push	r9
	push	r10
	sub	#12, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
	mov	&.L__profc_memchr+6, r12
	mov	&.L__profc_memchr+4, r11
	mov	&.L__profc_memchr+2, r14
	mov	&.L__profc_memchr, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memchr
	mov	r14, &.L__profc_memchr+2
	mov	r13, &.L__profc_memchr+4
	mov	r12, &.L__profc_memchr+6
	mov	10(r1), r12
	mov	r12, 4(r1)
	mov.b	8(r1), r12
	mov	r12, 8(r1)
	jmp	.LBB2_1
.LBB2_1:                                ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB2_4
	jmp	.LBB2_2
.LBB2_2:                                ;   in Loop: Header=BB2_1 Depth=1
	mov	&.L__profc_memchr+22, r13
	mov	&.L__profc_memchr+20, r12
	mov	&.L__profc_memchr+18, r15
	mov	&.L__profc_memchr+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_memchr+16
	mov	r15, &.L__profc_memchr+18
	mov	r14, &.L__profc_memchr+20
	mov	r13, &.L__profc_memchr+22
	mov	4(r1), r13
	mov.b	0(r13), r13
	mov	8(r1), r14
	cmp	r14, r13
	mov	r2, r15
	rra	r15
	bic	r15, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 2(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB2_4
	jmp	.LBB2_3
.LBB2_3:                                ;   in Loop: Header=BB2_1 Depth=1
	mov.b	2(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_memchr+30, r13
	mov	&.L__profc_memchr+28, r10
	mov	&.L__profc_memchr+26, r15
	mov	&.L__profc_memchr+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_memchr+24
	mov	r15, &.L__profc_memchr+26
	mov	r14, &.L__profc_memchr+28
	mov	r13, &.L__profc_memchr+30
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB2_4
.LBB2_4:                                ;   in Loop: Header=BB2_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB2_7
	jmp	.LBB2_5
.LBB2_5:                                ;   in Loop: Header=BB2_1 Depth=1
	mov	&.L__profc_memchr+14, r12
	mov	&.L__profc_memchr+12, r11
	mov	&.L__profc_memchr+10, r14
	mov	&.L__profc_memchr+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memchr+8
	mov	r14, &.L__profc_memchr+10
	mov	r13, &.L__profc_memchr+12
	mov	r12, &.L__profc_memchr+14
	jmp	.LBB2_6
.LBB2_6:                                ;   in Loop: Header=BB2_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	mov	6(r1), r12
	add	#-1, r12
	mov	r12, 6(r1)
	jmp	.LBB2_1
.LBB2_7:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB2_9
	jmp	.LBB2_8
.LBB2_8:
	mov	&.L__profc_memchr+38, r12
	mov	&.L__profc_memchr+36, r11
	mov	&.L__profc_memchr+34, r14
	mov	&.L__profc_memchr+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memchr+32
	mov	r14, &.L__profc_memchr+34
	mov	r13, &.L__profc_memchr+36
	mov	r12, &.L__profc_memchr+38
	mov	4(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB2_10
.LBB2_9:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB2_10
.LBB2_10:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#12, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        ; -- End function
	.globl	memcmp                          ; -- Begin function memcmp
	.p2align	1
	.type	memcmp,@function
memcmp:                                 ; @memcmp
; %bb.0:
	push	r9
	push	r10
	sub	#14, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
	mov	&.L__profc_memcmp+6, r12
	mov	&.L__profc_memcmp+4, r11
	mov	&.L__profc_memcmp+2, r14
	mov	&.L__profc_memcmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memcmp
	mov	r14, &.L__profc_memcmp+2
	mov	r13, &.L__profc_memcmp+4
	mov	r12, &.L__profc_memcmp+6
	mov	12(r1), r12
	mov	r12, 6(r1)
	mov	10(r1), r12
	mov	r12, 4(r1)
	jmp	.LBB3_1
.LBB3_1:                                ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB3_4
	jmp	.LBB3_2
.LBB3_2:                                ;   in Loop: Header=BB3_1 Depth=1
	mov	&.L__profc_memcmp+22, r12
	mov	&.L__profc_memcmp+20, r11
	mov	&.L__profc_memcmp+18, r14
	mov	&.L__profc_memcmp+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memcmp+16
	mov	r14, &.L__profc_memcmp+18
	mov	r13, &.L__profc_memcmp+20
	mov	r12, &.L__profc_memcmp+22
	mov	6(r1), r12
	mov.b	0(r12), r13
	mov	4(r1), r12
	mov.b	0(r12), r14
	cmp	r14, r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 2(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB3_4
	jmp	.LBB3_3
.LBB3_3:                                ;   in Loop: Header=BB3_1 Depth=1
	mov.b	2(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_memcmp+30, r13
	mov	&.L__profc_memcmp+28, r10
	mov	&.L__profc_memcmp+26, r15
	mov	&.L__profc_memcmp+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_memcmp+24
	mov	r15, &.L__profc_memcmp+26
	mov	r14, &.L__profc_memcmp+28
	mov	r13, &.L__profc_memcmp+30
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB3_4
.LBB3_4:                                ;   in Loop: Header=BB3_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB3_7
	jmp	.LBB3_5
.LBB3_5:                                ;   in Loop: Header=BB3_1 Depth=1
	mov	&.L__profc_memcmp+14, r12
	mov	&.L__profc_memcmp+12, r11
	mov	&.L__profc_memcmp+10, r14
	mov	&.L__profc_memcmp+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memcmp+8
	mov	r14, &.L__profc_memcmp+10
	mov	r13, &.L__profc_memcmp+12
	mov	r12, &.L__profc_memcmp+14
	jmp	.LBB3_6
.LBB3_6:                                ;   in Loop: Header=BB3_1 Depth=1
	mov	8(r1), r12
	add	#-1, r12
	mov	r12, 8(r1)
	mov	6(r1), r12
	inc	r12
	mov	r12, 6(r1)
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB3_1
.LBB3_7:
	mov	8(r1), r12
	tst	r12
	jeq	.LBB3_9
	jmp	.LBB3_8
.LBB3_8:
	mov	&.L__profc_memcmp+38, r12
	mov	&.L__profc_memcmp+36, r11
	mov	&.L__profc_memcmp+34, r14
	mov	&.L__profc_memcmp+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memcmp+32
	mov	r14, &.L__profc_memcmp+34
	mov	r13, &.L__profc_memcmp+36
	mov	r12, &.L__profc_memcmp+38
	mov	6(r1), r12
	mov.b	0(r12), r12
	mov	4(r1), r13
	mov.b	0(r13), r13
	sub	r13, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB3_10
.LBB3_9:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB3_10
.LBB3_10:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#14, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        ; -- End function
	.globl	memcpy                          ; -- Begin function memcpy
	.p2align	1
	.type	memcpy,@function
memcpy:                                 ; @memcpy
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_memcpy+6, r12
	mov	&.L__profc_memcpy+4, r11
	mov	&.L__profc_memcpy+2, r14
	mov	&.L__profc_memcpy, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memcpy
	mov	r14, &.L__profc_memcpy+2
	mov	r13, &.L__profc_memcpy+4
	mov	r12, &.L__profc_memcpy+6
	mov	8(r1), r12
	mov	r12, 2(r1)
	mov	6(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB4_1
.LBB4_1:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB4_4
	jmp	.LBB4_2
.LBB4_2:                                ;   in Loop: Header=BB4_1 Depth=1
	mov	&.L__profc_memcpy+14, r12
	mov	&.L__profc_memcpy+12, r11
	mov	&.L__profc_memcpy+10, r14
	mov	&.L__profc_memcpy+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memcpy+8
	mov	r14, &.L__profc_memcpy+10
	mov	r13, &.L__profc_memcpy+12
	mov	r12, &.L__profc_memcpy+14
	mov	0(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 0(r1)
	mov.b	0(r12), r13
	mov	2(r1), r12
	mov	r12, r14
	inc	r14
	mov	r14, 2(r1)
	mov.b	r13, 0(r12)
	jmp	.LBB4_3
.LBB4_3:                                ;   in Loop: Header=BB4_1 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	jmp	.LBB4_1
.LBB4_4:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        ; -- End function
	.globl	memrchr                         ; -- Begin function memrchr
	.p2align	1
	.type	memrchr,@function
memrchr:                                ; @memrchr
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
	mov	&.L__profc_memrchr+6, r12
	mov	&.L__profc_memrchr+4, r11
	mov	&.L__profc_memrchr+2, r14
	mov	&.L__profc_memrchr, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memrchr
	mov	r14, &.L__profc_memrchr+2
	mov	r13, &.L__profc_memrchr+4
	mov	r12, &.L__profc_memrchr+6
	mov	6(r1), r12
	mov	r12, 0(r1)
	mov.b	4(r1), r12
	mov	r12, 4(r1)
	jmp	.LBB5_1
.LBB5_1:                                ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 2(r1)
	tst	r12
	jeq	.LBB5_5
	jmp	.LBB5_2
.LBB5_2:                                ;   in Loop: Header=BB5_1 Depth=1
	mov	&.L__profc_memrchr+14, r12
	mov	&.L__profc_memrchr+12, r11
	mov	&.L__profc_memrchr+10, r14
	mov	&.L__profc_memrchr+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memrchr+8
	mov	r14, &.L__profc_memrchr+10
	mov	r13, &.L__profc_memrchr+12
	mov	r12, &.L__profc_memrchr+14
	mov	0(r1), r12
	mov	2(r1), r13
	add	r13, r12
	mov.b	0(r12), r12
	mov	4(r1), r13
	cmp	r13, r12
	jne	.LBB5_4
	jmp	.LBB5_3
.LBB5_3:
	mov	&.L__profc_memrchr+22, r12
	mov	&.L__profc_memrchr+20, r11
	mov	&.L__profc_memrchr+18, r14
	mov	&.L__profc_memrchr+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memrchr+16
	mov	r14, &.L__profc_memrchr+18
	mov	r13, &.L__profc_memrchr+20
	mov	r12, &.L__profc_memrchr+22
	mov	0(r1), r12
	mov	2(r1), r13
	add	r13, r12
	mov	r12, 8(r1)
	jmp	.LBB5_6
.LBB5_4:                                ;   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_5:
	clr	8(r1)
	jmp	.LBB5_6
.LBB5_6:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        ; -- End function
	.globl	memset                          ; -- Begin function memset
	.p2align	1
	.type	memset,@function
memset:                                 ; @memset
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_memset+6, r12
	mov	&.L__profc_memset+4, r11
	mov	&.L__profc_memset+2, r14
	mov	&.L__profc_memset, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memset
	mov	r14, &.L__profc_memset+2
	mov	r13, &.L__profc_memset+4
	mov	r12, &.L__profc_memset+6
	mov	8(r1), r12
	mov	r12, 2(r1)
	jmp	.LBB6_1
.LBB6_1:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB6_4
	jmp	.LBB6_2
.LBB6_2:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	&.L__profc_memset+14, r12
	mov	&.L__profc_memset+12, r11
	mov	&.L__profc_memset+10, r14
	mov	&.L__profc_memset+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memset+8
	mov	r14, &.L__profc_memset+10
	mov	r13, &.L__profc_memset+12
	mov	r12, &.L__profc_memset+14
	mov.b	6(r1), r13
	mov	2(r1), r12
	mov.b	r13, 0(r12)
	jmp	.LBB6_3
.LBB6_3:                                ;   in Loop: Header=BB6_1 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB6_1
.LBB6_4:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        ; -- End function
	.globl	stpcpy                          ; -- Begin function stpcpy
	.p2align	1
	.type	stpcpy,@function
stpcpy:                                 ; @stpcpy
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
	mov	&.L__profc_stpcpy+6, r12
	mov	&.L__profc_stpcpy+4, r11
	mov	&.L__profc_stpcpy+2, r14
	mov	&.L__profc_stpcpy, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_stpcpy
	mov	r14, &.L__profc_stpcpy+2
	mov	r13, &.L__profc_stpcpy+4
	mov	r12, &.L__profc_stpcpy+6
	jmp	.LBB7_1
.LBB7_1:                                ; =>This Inner Loop Header: Depth=1
	mov	0(r1), r12
	mov.b	0(r12), r12
	mov	2(r1), r13
	mov.b	r12, 0(r13)
	tst.b	r12
	jeq	.LBB7_4
	jmp	.LBB7_2
.LBB7_2:                                ;   in Loop: Header=BB7_1 Depth=1
	mov	&.L__profc_stpcpy+14, r12
	mov	&.L__profc_stpcpy+12, r11
	mov	&.L__profc_stpcpy+10, r14
	mov	&.L__profc_stpcpy+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_stpcpy+8
	mov	r14, &.L__profc_stpcpy+10
	mov	r13, &.L__profc_stpcpy+12
	mov	r12, &.L__profc_stpcpy+14
	jmp	.LBB7_3
.LBB7_3:                                ;   in Loop: Header=BB7_1 Depth=1
	mov	0(r1), r12
	inc	r12
	mov	r12, 0(r1)
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB7_1
.LBB7_4:
	mov	2(r1), r12
	add	#4, r1
	pop	r10
	ret
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        ; -- End function
	.globl	strchrnul                       ; -- Begin function strchrnul
	.p2align	1
	.type	strchrnul,@function
strchrnul:                              ; @strchrnul
; %bb.0:
	push	r9
	push	r10
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	mov	&.L__profc_strchrnul+6, r12
	mov	&.L__profc_strchrnul+4, r11
	mov	&.L__profc_strchrnul+2, r14
	mov	&.L__profc_strchrnul, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strchrnul
	mov	r14, &.L__profc_strchrnul+2
	mov	r13, &.L__profc_strchrnul+4
	mov	r12, &.L__profc_strchrnul+6
	mov.b	2(r1), r12
	mov	r12, 2(r1)
	jmp	.LBB8_1
.LBB8_1:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r13
	clr.b	r12
	tst.b	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB8_4
	jmp	.LBB8_2
.LBB8_2:                                ;   in Loop: Header=BB8_1 Depth=1
	mov	&.L__profc_strchrnul+22, r13
	mov	&.L__profc_strchrnul+20, r12
	mov	&.L__profc_strchrnul+18, r15
	mov	&.L__profc_strchrnul+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strchrnul+16
	mov	r15, &.L__profc_strchrnul+18
	mov	r14, &.L__profc_strchrnul+20
	mov	r13, &.L__profc_strchrnul+22
	mov	4(r1), r13
	mov.b	0(r13), r13
	mov	2(r1), r14
	cmp	r14, r13
	mov	r2, r15
	rra	r15
	bic	r15, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB8_4
	jmp	.LBB8_3
.LBB8_3:                                ;   in Loop: Header=BB8_1 Depth=1
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_strchrnul+30, r13
	mov	&.L__profc_strchrnul+28, r10
	mov	&.L__profc_strchrnul+26, r15
	mov	&.L__profc_strchrnul+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strchrnul+24
	mov	r15, &.L__profc_strchrnul+26
	mov	r14, &.L__profc_strchrnul+28
	mov	r13, &.L__profc_strchrnul+30
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB8_4
.LBB8_4:                                ;   in Loop: Header=BB8_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB8_7
	jmp	.LBB8_5
.LBB8_5:                                ;   in Loop: Header=BB8_1 Depth=1
	mov	&.L__profc_strchrnul+14, r12
	mov	&.L__profc_strchrnul+12, r11
	mov	&.L__profc_strchrnul+10, r14
	mov	&.L__profc_strchrnul+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strchrnul+8
	mov	r14, &.L__profc_strchrnul+10
	mov	r13, &.L__profc_strchrnul+12
	mov	r12, &.L__profc_strchrnul+14
	jmp	.LBB8_6
.LBB8_6:                                ;   in Loop: Header=BB8_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB8_1
.LBB8_7:
	mov	4(r1), r12
	add	#6, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        ; -- End function
	.globl	strchr                          ; -- Begin function strchr
	.p2align	1
	.type	strchr,@function
strchr:                                 ; @strchr
; %bb.0:
	push	r10
	sub	#6, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
	mov	&.L__profc_strchr+6, r12
	mov	&.L__profc_strchr+4, r11
	mov	&.L__profc_strchr+2, r14
	mov	&.L__profc_strchr, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strchr
	mov	r14, &.L__profc_strchr+2
	mov	r13, &.L__profc_strchr+4
	mov	r12, &.L__profc_strchr+6
	jmp	.LBB9_2
.LBB9_1:                                ;   in Loop: Header=BB9_2 Depth=1
	mov	&.L__profc_strchr+14, r12
	mov	&.L__profc_strchr+12, r11
	mov	&.L__profc_strchr+10, r14
	mov	&.L__profc_strchr+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strchr+8
	mov	r14, &.L__profc_strchr+10
	mov	r13, &.L__profc_strchr+12
	mov	r12, &.L__profc_strchr+14
	jmp	.LBB9_2
.LBB9_2:                                ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	0(r1), r13
	cmp	r13, r12
	jne	.LBB9_4
	jmp	.LBB9_3
.LBB9_3:
	mov	&.L__profc_strchr+22, r12
	mov	&.L__profc_strchr+20, r11
	mov	&.L__profc_strchr+18, r14
	mov	&.L__profc_strchr+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strchr+16
	mov	r14, &.L__profc_strchr+18
	mov	r13, &.L__profc_strchr+20
	mov	r12, &.L__profc_strchr+22
	mov	2(r1), r12
	mov	r12, 4(r1)
	jmp	.LBB9_7
.LBB9_4:                                ;   in Loop: Header=BB9_2 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                ;   in Loop: Header=BB9_2 Depth=1
	mov	2(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 2(r1)
	mov.b	0(r12), r12
	tst.b	r12
	jne	.LBB9_1
	jmp	.LBB9_6
.LBB9_6:
	clr	4(r1)
	jmp	.LBB9_7
.LBB9_7:
	mov	4(r1), r12
	add	#6, r1
	pop	r10
	ret
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        ; -- End function
	.globl	strcmp                          ; -- Begin function strcmp
	.p2align	1
	.type	strcmp,@function
strcmp:                                 ; @strcmp
; %bb.0:
	push	r9
	push	r10
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	mov	&.L__profc_strcmp+6, r12
	mov	&.L__profc_strcmp+4, r11
	mov	&.L__profc_strcmp+2, r14
	mov	&.L__profc_strcmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strcmp
	mov	r14, &.L__profc_strcmp+2
	mov	r13, &.L__profc_strcmp+4
	mov	r12, &.L__profc_strcmp+6
	jmp	.LBB10_1
.LBB10_1:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r13
	sxt	r13
	mov	2(r1), r12
	mov.b	0(r12), r14
	sxt	r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jne	.LBB10_4
	jmp	.LBB10_2
.LBB10_2:                               ;   in Loop: Header=BB10_1 Depth=1
	mov	&.L__profc_strcmp+22, r13
	mov	&.L__profc_strcmp+20, r12
	mov	&.L__profc_strcmp+18, r15
	mov	&.L__profc_strcmp+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strcmp+16
	mov	r15, &.L__profc_strcmp+18
	mov	r14, &.L__profc_strcmp+20
	mov	r13, &.L__profc_strcmp+22
	mov	4(r1), r13
	mov.b	0(r13), r13
	sxt	r13
	tst	r13
	mov	r2, r14
	rra	r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB10_4
	jmp	.LBB10_3
.LBB10_3:                               ;   in Loop: Header=BB10_1 Depth=1
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_strcmp+30, r13
	mov	&.L__profc_strcmp+28, r10
	mov	&.L__profc_strcmp+26, r15
	mov	&.L__profc_strcmp+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strcmp+24
	mov	r15, &.L__profc_strcmp+26
	mov	r14, &.L__profc_strcmp+28
	mov	r13, &.L__profc_strcmp+30
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB10_4
.LBB10_4:                               ;   in Loop: Header=BB10_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB10_7
	jmp	.LBB10_5
.LBB10_5:                               ;   in Loop: Header=BB10_1 Depth=1
	mov	&.L__profc_strcmp+14, r12
	mov	&.L__profc_strcmp+12, r11
	mov	&.L__profc_strcmp+10, r14
	mov	&.L__profc_strcmp+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strcmp+8
	mov	r14, &.L__profc_strcmp+10
	mov	r13, &.L__profc_strcmp+12
	mov	r12, &.L__profc_strcmp+14
	jmp	.LBB10_6
.LBB10_6:                               ;   in Loop: Header=BB10_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB10_1
.LBB10_7:
	mov	4(r1), r12
	mov.b	0(r12), r12
	mov	2(r1), r13
	mov.b	0(r13), r13
	sub	r13, r12
	add	#6, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        ; -- End function
	.globl	strlen                          ; -- Begin function strlen
	.p2align	1
	.type	strlen,@function
strlen:                                 ; @strlen
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_strlen+6, r12
	mov	&.L__profc_strlen+4, r11
	mov	&.L__profc_strlen+2, r14
	mov	&.L__profc_strlen, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strlen
	mov	r14, &.L__profc_strlen+2
	mov	r13, &.L__profc_strlen+4
	mov	r12, &.L__profc_strlen+6
	mov	2(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB11_1
.LBB11_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov.b	0(r12), r12
	tst.b	r12
	jeq	.LBB11_4
	jmp	.LBB11_2
.LBB11_2:                               ;   in Loop: Header=BB11_1 Depth=1
	mov	&.L__profc_strlen+14, r12
	mov	&.L__profc_strlen+12, r11
	mov	&.L__profc_strlen+10, r14
	mov	&.L__profc_strlen+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strlen+8
	mov	r14, &.L__profc_strlen+10
	mov	r13, &.L__profc_strlen+12
	mov	r12, &.L__profc_strlen+14
	jmp	.LBB11_3
.LBB11_3:                               ;   in Loop: Header=BB11_1 Depth=1
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB11_1
.LBB11_4:
	mov	2(r1), r12
	mov	0(r1), r13
	sub	r13, r12
	add	#4, r1
	pop	r10
	ret
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        ; -- End function
	.globl	strncmp                         ; -- Begin function strncmp
	.p2align	1
	.type	strncmp,@function
strncmp:                                ; @strncmp
; %bb.0:
	push	r9
	push	r10
	sub	#14, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
	mov	&.L__profc_strncmp+6, r12
	mov	&.L__profc_strncmp+4, r11
	mov	&.L__profc_strncmp+2, r14
	mov	&.L__profc_strncmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp
	mov	r14, &.L__profc_strncmp+2
	mov	r13, &.L__profc_strncmp+4
	mov	r12, &.L__profc_strncmp+6
	mov	10(r1), r12
	mov	r12, 4(r1)
	mov	8(r1), r12
	mov	r12, 2(r1)
	mov	6(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 6(r1)
	tst	r12
	jne	.LBB12_2
	jmp	.LBB12_1
.LBB12_1:
	mov	&.L__profc_strncmp+14, r12
	mov	&.L__profc_strncmp+12, r11
	mov	&.L__profc_strncmp+10, r14
	mov	&.L__profc_strncmp+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp+8
	mov	r14, &.L__profc_strncmp+10
	mov	r13, &.L__profc_strncmp+12
	mov	r12, &.L__profc_strncmp+14
	clr	12(r1)
	jmp	.LBB12_14
.LBB12_2:
	jmp	.LBB12_3
.LBB12_3:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r13
	clr.b	r12
	tst.b	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB12_10
	jmp	.LBB12_4
.LBB12_4:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	&.L__profc_strncmp+62, r12
	mov	&.L__profc_strncmp+60, r11
	mov	&.L__profc_strncmp+58, r14
	mov	&.L__profc_strncmp+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp+56
	mov	r14, &.L__profc_strncmp+58
	mov	r13, &.L__profc_strncmp+60
	mov	r12, &.L__profc_strncmp+62
	mov	2(r1), r12
	mov.b	0(r12), r13
	clr.b	r12
	tst.b	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB12_10
	jmp	.LBB12_5
.LBB12_5:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	&.L__profc_strncmp+70, r12
	mov	&.L__profc_strncmp+68, r11
	mov	&.L__profc_strncmp+66, r14
	mov	&.L__profc_strncmp+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp+64
	mov	r14, &.L__profc_strncmp+66
	mov	r13, &.L__profc_strncmp+68
	mov	r12, &.L__profc_strncmp+70
	jmp	.LBB12_6
.LBB12_6:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	&.L__profc_strncmp+46, r12
	mov	&.L__profc_strncmp+44, r11
	mov	&.L__profc_strncmp+42, r14
	mov	&.L__profc_strncmp+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp+40
	mov	r14, &.L__profc_strncmp+42
	mov	r13, &.L__profc_strncmp+44
	mov	r12, &.L__profc_strncmp+46
	mov	6(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB12_10
	jmp	.LBB12_7
.LBB12_7:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	&.L__profc_strncmp+54, r12
	mov	&.L__profc_strncmp+52, r11
	mov	&.L__profc_strncmp+50, r14
	mov	&.L__profc_strncmp+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp+48
	mov	r14, &.L__profc_strncmp+50
	mov	r13, &.L__profc_strncmp+52
	mov	r12, &.L__profc_strncmp+54
	jmp	.LBB12_8
.LBB12_8:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	&.L__profc_strncmp+30, r12
	mov	&.L__profc_strncmp+28, r11
	mov	&.L__profc_strncmp+26, r14
	mov	&.L__profc_strncmp+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp+24
	mov	r14, &.L__profc_strncmp+26
	mov	r13, &.L__profc_strncmp+28
	mov	r12, &.L__profc_strncmp+30
	mov	4(r1), r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	mov.b	0(r12), r14
	cmp	r14, r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jne	.LBB12_10
	jmp	.LBB12_9
.LBB12_9:                               ;   in Loop: Header=BB12_3 Depth=1
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_strncmp+38, r13
	mov	&.L__profc_strncmp+36, r10
	mov	&.L__profc_strncmp+34, r15
	mov	&.L__profc_strncmp+32, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strncmp+32
	mov	r15, &.L__profc_strncmp+34
	mov	r14, &.L__profc_strncmp+36
	mov	r13, &.L__profc_strncmp+38
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB12_10
.LBB12_10:                              ;   in Loop: Header=BB12_3 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB12_13
	jmp	.LBB12_11
.LBB12_11:                              ;   in Loop: Header=BB12_3 Depth=1
	mov	&.L__profc_strncmp+22, r12
	mov	&.L__profc_strncmp+20, r11
	mov	&.L__profc_strncmp+18, r14
	mov	&.L__profc_strncmp+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncmp+16
	mov	r14, &.L__profc_strncmp+18
	mov	r13, &.L__profc_strncmp+20
	mov	r12, &.L__profc_strncmp+22
	jmp	.LBB12_12
.LBB12_12:                              ;   in Loop: Header=BB12_3 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	mov	6(r1), r12
	add	#-1, r12
	mov	r12, 6(r1)
	jmp	.LBB12_3
.LBB12_13:
	mov	4(r1), r12
	mov.b	0(r12), r12
	mov	2(r1), r13
	mov.b	0(r13), r13
	sub	r13, r12
	mov	r12, 12(r1)
	jmp	.LBB12_14
.LBB12_14:
	mov	12(r1), r12
	add	#14, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        ; -- End function
	.globl	swab                            ; -- Begin function swab
	.p2align	1
	.type	swab,@function
swab:                                   ; @swab
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_swab+6, r12
	mov	&.L__profc_swab+4, r11
	mov	&.L__profc_swab+2, r14
	mov	&.L__profc_swab, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_swab
	mov	r14, &.L__profc_swab+2
	mov	r13, &.L__profc_swab+4
	mov	r12, &.L__profc_swab+6
	mov	8(r1), r12
	mov	r12, 2(r1)
	mov	6(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB13_1
.LBB13_1:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	cmp	#2, r12
	jl	.LBB13_4
	jmp	.LBB13_2
.LBB13_2:                               ;   in Loop: Header=BB13_1 Depth=1
	mov	&.L__profc_swab+14, r12
	mov	&.L__profc_swab+12, r11
	mov	&.L__profc_swab+10, r14
	mov	&.L__profc_swab+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_swab+8
	mov	r14, &.L__profc_swab+10
	mov	r13, &.L__profc_swab+12
	mov	r12, &.L__profc_swab+14
	mov	2(r1), r12
	mov.b	1(r12), r13
	mov	0(r1), r12
	mov.b	r13, 0(r12)
	mov	2(r1), r12
	mov.b	0(r12), r13
	mov	0(r1), r12
	mov.b	r13, 1(r12)
	mov	0(r1), r12
	incd	r12
	mov	r12, 0(r1)
	mov	2(r1), r12
	incd	r12
	mov	r12, 2(r1)
	jmp	.LBB13_3
.LBB13_3:                               ;   in Loop: Header=BB13_1 Depth=1
	mov	4(r1), r12
	add	#-2, r12
	mov	r12, 4(r1)
	jmp	.LBB13_1
.LBB13_4:
	add	#10, r1
	pop	r10
	ret
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        ; -- End function
	.globl	isalpha                         ; -- Begin function isalpha
	.p2align	1
	.type	isalpha,@function
isalpha:                                ; @isalpha
; %bb.0:
	push	r9
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_isalpha+6, r13
	mov	&.L__profc_isalpha+4, r12
	mov	&.L__profc_isalpha+2, r15
	mov	&.L__profc_isalpha, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isalpha
	mov	r15, &.L__profc_isalpha+2
	mov	r14, &.L__profc_isalpha+4
	mov	r13, &.L__profc_isalpha+6
	mov	0(r1), r13
	bis	#32, r13
	add	#-97, r13
	cmp	#26, r13
	mov	r2, r13
	bic	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        ; -- End function
	.globl	isascii                         ; -- Begin function isascii
	.p2align	1
	.type	isascii,@function
isascii:                                ; @isascii
; %bb.0:
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_isascii+6, r12
	mov	&.L__profc_isascii+4, r11
	mov	&.L__profc_isascii+2, r14
	mov	&.L__profc_isascii, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_isascii
	mov	r14, &.L__profc_isascii+2
	mov	r13, &.L__profc_isascii+4
	mov	r12, &.L__profc_isascii+6
	mov	0(r1), r12
	bit	#-128, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	#2, r1
	pop	r10
	ret
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        ; -- End function
	.globl	isblank                         ; -- Begin function isblank
	.p2align	1
	.type	isblank,@function
isblank:                                ; @isblank
; %bb.0:
	push	r9
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_isblank+6, r12
	mov	&.L__profc_isblank+4, r11
	mov	&.L__profc_isblank+2, r14
	mov	&.L__profc_isblank, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_isblank
	mov	r14, &.L__profc_isblank+2
	mov	r13, &.L__profc_isblank+4
	mov	r12, &.L__profc_isblank+6
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB16_3
	jmp	.LBB16_1
.LBB16_1:
	mov	&.L__profc_isblank+14, r12
	mov	&.L__profc_isblank+12, r11
	mov	&.L__profc_isblank+10, r14
	mov	&.L__profc_isblank+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_isblank+8
	mov	r14, &.L__profc_isblank+10
	mov	r13, &.L__profc_isblank+12
	mov	r12, &.L__profc_isblank+14
	mov	2(r1), r13
	cmp	#9, r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	#9, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB16_3
	jmp	.LBB16_2
.LBB16_2:
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_isblank+22, r13
	mov	&.L__profc_isblank+20, r10
	mov	&.L__profc_isblank+18, r15
	mov	&.L__profc_isblank+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isblank+16
	mov	r15, &.L__profc_isblank+18
	mov	r14, &.L__profc_isblank+20
	mov	r13, &.L__profc_isblank+22
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB16_3
.LBB16_3:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        ; -- End function
	.globl	iscntrl                         ; -- Begin function iscntrl
	.p2align	1
	.type	iscntrl,@function
iscntrl:                                ; @iscntrl
; %bb.0:
	push	r9
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_iscntrl+6, r12
	mov	&.L__profc_iscntrl+4, r11
	mov	&.L__profc_iscntrl+2, r14
	mov	&.L__profc_iscntrl, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iscntrl
	mov	r14, &.L__profc_iscntrl+2
	mov	r13, &.L__profc_iscntrl+4
	mov	r12, &.L__profc_iscntrl+6
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB17_3
	jmp	.LBB17_1
.LBB17_1:
	mov	&.L__profc_iscntrl+14, r12
	mov	&.L__profc_iscntrl+12, r11
	mov	&.L__profc_iscntrl+10, r14
	mov	&.L__profc_iscntrl+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iscntrl+8
	mov	r14, &.L__profc_iscntrl+10
	mov	r13, &.L__profc_iscntrl+12
	mov	r12, &.L__profc_iscntrl+14
	mov	2(r1), r13
	cmp	#127, r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	#127, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB17_3
	jmp	.LBB17_2
.LBB17_2:
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_iscntrl+22, r13
	mov	&.L__profc_iscntrl+20, r10
	mov	&.L__profc_iscntrl+18, r15
	mov	&.L__profc_iscntrl+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_iscntrl+16
	mov	r15, &.L__profc_iscntrl+18
	mov	r14, &.L__profc_iscntrl+20
	mov	r13, &.L__profc_iscntrl+22
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB17_3
.LBB17_3:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        ; -- End function
	.globl	isdigit                         ; -- Begin function isdigit
	.p2align	1
	.type	isdigit,@function
isdigit:                                ; @isdigit
; %bb.0:
	push	r9
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_isdigit+6, r13
	mov	&.L__profc_isdigit+4, r12
	mov	&.L__profc_isdigit+2, r15
	mov	&.L__profc_isdigit, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isdigit
	mov	r15, &.L__profc_isdigit+2
	mov	r14, &.L__profc_isdigit+4
	mov	r13, &.L__profc_isdigit+6
	mov	0(r1), r13
	add	#-48, r13
	cmp	#10, r13
	mov	r2, r13
	bic	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        ; -- End function
	.globl	isgraph                         ; -- Begin function isgraph
	.p2align	1
	.type	isgraph,@function
isgraph:                                ; @isgraph
; %bb.0:
	push	r9
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_isgraph+6, r13
	mov	&.L__profc_isgraph+4, r12
	mov	&.L__profc_isgraph+2, r15
	mov	&.L__profc_isgraph, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isgraph
	mov	r15, &.L__profc_isgraph+2
	mov	r14, &.L__profc_isgraph+4
	mov	r13, &.L__profc_isgraph+6
	mov	0(r1), r13
	add	#-33, r13
	cmp	#94, r13
	mov	r2, r13
	bic	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        ; -- End function
	.globl	islower                         ; -- Begin function islower
	.p2align	1
	.type	islower,@function
islower:                                ; @islower
; %bb.0:
	push	r9
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_islower+6, r13
	mov	&.L__profc_islower+4, r12
	mov	&.L__profc_islower+2, r15
	mov	&.L__profc_islower, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_islower
	mov	r15, &.L__profc_islower+2
	mov	r14, &.L__profc_islower+4
	mov	r13, &.L__profc_islower+6
	mov	0(r1), r13
	add	#-97, r13
	cmp	#26, r13
	mov	r2, r13
	bic	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        ; -- End function
	.globl	isprint                         ; -- Begin function isprint
	.p2align	1
	.type	isprint,@function
isprint:                                ; @isprint
; %bb.0:
	push	r9
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_isprint+6, r13
	mov	&.L__profc_isprint+4, r12
	mov	&.L__profc_isprint+2, r15
	mov	&.L__profc_isprint, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isprint
	mov	r15, &.L__profc_isprint+2
	mov	r14, &.L__profc_isprint+4
	mov	r13, &.L__profc_isprint+6
	mov	0(r1), r13
	add	#-32, r13
	cmp	#95, r13
	mov	r2, r13
	bic	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        ; -- End function
	.globl	isspace                         ; -- Begin function isspace
	.p2align	1
	.type	isspace,@function
isspace:                                ; @isspace
; %bb.0:
	push	r9
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_isspace+6, r12
	mov	&.L__profc_isspace+4, r11
	mov	&.L__profc_isspace+2, r14
	mov	&.L__profc_isspace, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_isspace
	mov	r14, &.L__profc_isspace+2
	mov	r13, &.L__profc_isspace+4
	mov	r12, &.L__profc_isspace+6
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB22_3
	jmp	.LBB22_1
.LBB22_1:
	mov	&.L__profc_isspace+14, r13
	mov	&.L__profc_isspace+12, r12
	mov	&.L__profc_isspace+10, r15
	mov	&.L__profc_isspace+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isspace+8
	mov	r15, &.L__profc_isspace+10
	mov	r14, &.L__profc_isspace+12
	mov	r13, &.L__profc_isspace+14
	mov	2(r1), r13
	add	#-9, r13
	cmp	#5, r13
	mov	r2, r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	#5, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB22_3
	jmp	.LBB22_2
.LBB22_2:
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_isspace+22, r13
	mov	&.L__profc_isspace+20, r10
	mov	&.L__profc_isspace+18, r15
	mov	&.L__profc_isspace+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isspace+16
	mov	r15, &.L__profc_isspace+18
	mov	r14, &.L__profc_isspace+20
	mov	r13, &.L__profc_isspace+22
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB22_3
.LBB22_3:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        ; -- End function
	.globl	isupper                         ; -- Begin function isupper
	.p2align	1
	.type	isupper,@function
isupper:                                ; @isupper
; %bb.0:
	push	r9
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_isupper+6, r13
	mov	&.L__profc_isupper+4, r12
	mov	&.L__profc_isupper+2, r15
	mov	&.L__profc_isupper, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_isupper
	mov	r15, &.L__profc_isupper+2
	mov	r14, &.L__profc_isupper+4
	mov	r13, &.L__profc_isupper+6
	mov	0(r1), r13
	add	#-65, r13
	cmp	#26, r13
	mov	r2, r13
	bic	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        ; -- End function
	.globl	iswcntrl                        ; -- Begin function iswcntrl
	.p2align	1
	.type	iswcntrl,@function
iswcntrl:                               ; @iswcntrl
; %bb.0:
	push	r9
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_iswcntrl+6, r12
	mov	&.L__profc_iswcntrl+4, r11
	mov	&.L__profc_iswcntrl+2, r14
	mov	&.L__profc_iswcntrl, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswcntrl
	mov	r14, &.L__profc_iswcntrl+2
	mov	r13, &.L__profc_iswcntrl+4
	mov	r12, &.L__profc_iswcntrl+6
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB24_7
	jmp	.LBB24_1
.LBB24_1:
	mov	&.L__profc_iswcntrl+46, r12
	mov	&.L__profc_iswcntrl+44, r11
	mov	&.L__profc_iswcntrl+42, r14
	mov	&.L__profc_iswcntrl+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswcntrl+40
	mov	r14, &.L__profc_iswcntrl+42
	mov	r13, &.L__profc_iswcntrl+44
	mov	r12, &.L__profc_iswcntrl+46
	mov	2(r1), r13
	add	#-127, r13
	mov.b	#1, r12
	cmp	#33, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB24_7
	jmp	.LBB24_2
.LBB24_2:
	mov	&.L__profc_iswcntrl+54, r12
	mov	&.L__profc_iswcntrl+52, r11
	mov	&.L__profc_iswcntrl+50, r14
	mov	&.L__profc_iswcntrl+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswcntrl+48
	mov	r14, &.L__profc_iswcntrl+50
	mov	r13, &.L__profc_iswcntrl+52
	mov	r12, &.L__profc_iswcntrl+54
	jmp	.LBB24_3
.LBB24_3:
	mov	&.L__profc_iswcntrl+30, r12
	mov	&.L__profc_iswcntrl+28, r11
	mov	&.L__profc_iswcntrl+26, r14
	mov	&.L__profc_iswcntrl+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswcntrl+24
	mov	r14, &.L__profc_iswcntrl+26
	mov	r13, &.L__profc_iswcntrl+28
	mov	r12, &.L__profc_iswcntrl+30
	mov	2(r1), r13
	add	#-8232, r13
	mov.b	#1, r12
	cmp	#2, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB24_7
	jmp	.LBB24_4
.LBB24_4:
	mov	&.L__profc_iswcntrl+38, r12
	mov	&.L__profc_iswcntrl+36, r11
	mov	&.L__profc_iswcntrl+34, r14
	mov	&.L__profc_iswcntrl+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswcntrl+32
	mov	r14, &.L__profc_iswcntrl+34
	mov	r13, &.L__profc_iswcntrl+36
	mov	r12, &.L__profc_iswcntrl+38
	jmp	.LBB24_5
.LBB24_5:
	mov	&.L__profc_iswcntrl+14, r13
	mov	&.L__profc_iswcntrl+12, r12
	mov	&.L__profc_iswcntrl+10, r15
	mov	&.L__profc_iswcntrl+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_iswcntrl+8
	mov	r15, &.L__profc_iswcntrl+10
	mov	r14, &.L__profc_iswcntrl+12
	mov	r13, &.L__profc_iswcntrl+14
	mov	2(r1), r13
	add	#7, r13
	cmp	#3, r13
	mov	r2, r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	#3, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB24_7
	jmp	.LBB24_6
.LBB24_6:
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_iswcntrl+22, r13
	mov	&.L__profc_iswcntrl+20, r10
	mov	&.L__profc_iswcntrl+18, r15
	mov	&.L__profc_iswcntrl+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_iswcntrl+16
	mov	r15, &.L__profc_iswcntrl+18
	mov	r14, &.L__profc_iswcntrl+20
	mov	r13, &.L__profc_iswcntrl+22
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB24_7
.LBB24_7:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        ; -- End function
	.globl	iswdigit                        ; -- Begin function iswdigit
	.p2align	1
	.type	iswdigit,@function
iswdigit:                               ; @iswdigit
; %bb.0:
	push	r9
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_iswdigit+6, r13
	mov	&.L__profc_iswdigit+4, r12
	mov	&.L__profc_iswdigit+2, r15
	mov	&.L__profc_iswdigit, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_iswdigit
	mov	r15, &.L__profc_iswdigit+2
	mov	r14, &.L__profc_iswdigit+4
	mov	r13, &.L__profc_iswdigit+6
	mov	0(r1), r13
	add	#-48, r13
	cmp	#10, r13
	mov	r2, r13
	bic	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        ; -- End function
	.globl	iswprint                        ; -- Begin function iswprint
	.p2align	1
	.type	iswprint,@function
iswprint:                               ; @iswprint
; %bb.0:
	push	r9
	push	r10
	sub	#8, r1
	mov	r12, 4(r1)
	mov	&.L__profc_iswprint+6, r12
	mov	&.L__profc_iswprint+4, r11
	mov	&.L__profc_iswprint+2, r14
	mov	&.L__profc_iswprint, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint
	mov	r14, &.L__profc_iswprint+2
	mov	r13, &.L__profc_iswprint+4
	mov	r12, &.L__profc_iswprint+6
	mov	4(r1), r12
	cmp	#255, r12
	jhs	.LBB26_4
	jmp	.LBB26_1
.LBB26_1:
	mov	&.L__profc_iswprint+14, r13
	mov	&.L__profc_iswprint+12, r12
	mov	&.L__profc_iswprint+10, r15
	mov	&.L__profc_iswprint+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_iswprint+8
	mov	r15, &.L__profc_iswprint+10
	mov	r14, &.L__profc_iswprint+12
	mov	r13, &.L__profc_iswprint+14
	mov	4(r1), r13
	inc	r13
	and	#127, r13
	clr	r14
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
	cmp	#33, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jge	.LBB26_3
; %bb.2:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB26_3:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)
	jmp	.LBB26_15
.LBB26_4:
	mov	4(r1), r12
	cmp	#8232, r12
	jlo	.LBB26_9
	jmp	.LBB26_5
.LBB26_5:
	mov	&.L__profc_iswprint+46, r12
	mov	&.L__profc_iswprint+44, r11
	mov	&.L__profc_iswprint+42, r14
	mov	&.L__profc_iswprint+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+40
	mov	r14, &.L__profc_iswprint+42
	mov	r13, &.L__profc_iswprint+44
	mov	r12, &.L__profc_iswprint+46
	mov	4(r1), r12
	add	#-8234, r12
	cmp	#-18474, r12
	jlo	.LBB26_9
	jmp	.LBB26_6
.LBB26_6:
	mov	&.L__profc_iswprint+54, r12
	mov	&.L__profc_iswprint+52, r11
	mov	&.L__profc_iswprint+50, r14
	mov	&.L__profc_iswprint+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+48
	mov	r14, &.L__profc_iswprint+50
	mov	r13, &.L__profc_iswprint+52
	mov	r12, &.L__profc_iswprint+54
	jmp	.LBB26_7
.LBB26_7:
	mov	&.L__profc_iswprint+30, r12
	mov	&.L__profc_iswprint+28, r11
	mov	&.L__profc_iswprint+26, r14
	mov	&.L__profc_iswprint+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+24
	mov	r14, &.L__profc_iswprint+26
	mov	r13, &.L__profc_iswprint+28
	mov	r12, &.L__profc_iswprint+30
	mov	4(r1), r12
	add	#8192, r12
	cmp	#8185, r12
	jlo	.LBB26_9
	jmp	.LBB26_8
.LBB26_8:
	mov	&.L__profc_iswprint+38, r12
	mov	&.L__profc_iswprint+36, r11
	mov	&.L__profc_iswprint+34, r14
	mov	&.L__profc_iswprint+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+32
	mov	r14, &.L__profc_iswprint+34
	mov	r13, &.L__profc_iswprint+36
	mov	r12, &.L__profc_iswprint+38
	jmp	.LBB26_10
.LBB26_9:
	mov	&.L__profc_iswprint+22, r12
	mov	&.L__profc_iswprint+20, r11
	mov	&.L__profc_iswprint+18, r14
	mov	&.L__profc_iswprint+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+16
	mov	r14, &.L__profc_iswprint+18
	mov	r13, &.L__profc_iswprint+20
	mov	r12, &.L__profc_iswprint+22
	mov	#1, 6(r1)
	jmp	.LBB26_15
.LBB26_10:
	clr	r12
	tst	r12
	jne	.LBB26_13
	jmp	.LBB26_11
.LBB26_11:
	mov	&.L__profc_iswprint+70, r12
	mov	&.L__profc_iswprint+68, r11
	mov	&.L__profc_iswprint+66, r14
	mov	&.L__profc_iswprint+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+64
	mov	r14, &.L__profc_iswprint+66
	mov	r13, &.L__profc_iswprint+68
	mov	r12, &.L__profc_iswprint+70
	mov	4(r1), r12
	and	#-2, r12
	cmp	#-2, r12
	jeq	.LBB26_13
	jmp	.LBB26_12
.LBB26_12:
	mov	&.L__profc_iswprint+78, r12
	mov	&.L__profc_iswprint+76, r11
	mov	&.L__profc_iswprint+74, r14
	mov	&.L__profc_iswprint+72, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+72
	mov	r14, &.L__profc_iswprint+74
	mov	r13, &.L__profc_iswprint+76
	mov	r12, &.L__profc_iswprint+78
	jmp	.LBB26_14
.LBB26_13:
	mov	&.L__profc_iswprint+62, r12
	mov	&.L__profc_iswprint+60, r11
	mov	&.L__profc_iswprint+58, r14
	mov	&.L__profc_iswprint+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswprint+56
	mov	r14, &.L__profc_iswprint+58
	mov	r13, &.L__profc_iswprint+60
	mov	r12, &.L__profc_iswprint+62
	clr	6(r1)
	jmp	.LBB26_15
.LBB26_14:
	mov	#1, 6(r1)
	jmp	.LBB26_15
.LBB26_15:
	mov	6(r1), r12
	add	#8, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        ; -- End function
	.globl	iswxdigit                       ; -- Begin function iswxdigit
	.p2align	1
	.type	iswxdigit,@function
iswxdigit:                              ; @iswxdigit
; %bb.0:
	push	r9
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_iswxdigit+6, r12
	mov	&.L__profc_iswxdigit+4, r11
	mov	&.L__profc_iswxdigit+2, r14
	mov	&.L__profc_iswxdigit, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_iswxdigit
	mov	r14, &.L__profc_iswxdigit+2
	mov	r13, &.L__profc_iswxdigit+4
	mov	r12, &.L__profc_iswxdigit+6
	mov	2(r1), r13
	add	#-48, r13
	mov.b	#1, r12
	cmp	#10, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB27_3
	jmp	.LBB27_1
.LBB27_1:
	mov	&.L__profc_iswxdigit+14, r13
	mov	&.L__profc_iswxdigit+12, r12
	mov	&.L__profc_iswxdigit+10, r15
	mov	&.L__profc_iswxdigit+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_iswxdigit+8
	mov	r15, &.L__profc_iswxdigit+10
	mov	r14, &.L__profc_iswxdigit+12
	mov	r13, &.L__profc_iswxdigit+14
	mov	2(r1), r13
	bis	#32, r13
	add	#-97, r13
	cmp	#6, r13
	mov	r2, r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	cmp	#6, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB27_3
	jmp	.LBB27_2
.LBB27_2:
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_iswxdigit+22, r13
	mov	&.L__profc_iswxdigit+20, r10
	mov	&.L__profc_iswxdigit+18, r15
	mov	&.L__profc_iswxdigit+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_iswxdigit+16
	mov	r15, &.L__profc_iswxdigit+18
	mov	r14, &.L__profc_iswxdigit+20
	mov	r13, &.L__profc_iswxdigit+22
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB27_3
.LBB27_3:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        ; -- End function
	.globl	toascii                         ; -- Begin function toascii
	.p2align	1
	.type	toascii,@function
toascii:                                ; @toascii
; %bb.0:
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_toascii+6, r12
	mov	&.L__profc_toascii+4, r11
	mov	&.L__profc_toascii+2, r14
	mov	&.L__profc_toascii, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_toascii
	mov	r14, &.L__profc_toascii+2
	mov	r13, &.L__profc_toascii+4
	mov	r12, &.L__profc_toascii+6
	mov	0(r1), r12
	and	#127, r12
	add	#2, r1
	pop	r10
	ret
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
                                        ; -- End function
	.globl	fdim                            ; -- Begin function fdim
	.p2align	1
	.type	fdim,@function
fdim:                                   ; @fdim
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#68, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	84(r1), r15
	mov	82(r1), r14
	mov	80(r1), r13
	mov	78(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 58(r1)
	mov	r9, 56(r1)
	mov	r10, 54(r1)
	mov	r11, 52(r1)
	mov	r15, 50(r1)
	mov	r14, 48(r1)
	mov	r13, 46(r1)
	mov	r12, 44(r1)
	mov	&.L__profc_fdim+6, r13
	mov	&.L__profc_fdim+4, r12
	mov	&.L__profc_fdim+2, r15
	mov	&.L__profc_fdim, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fdim
	mov	r15, &.L__profc_fdim+2
	mov	r14, &.L__profc_fdim+4
	mov	r13, &.L__profc_fdim+6
	mov	56(r1), r13
	mov	r13, 32(r1)                     ; 2-byte Folded Spill
	mov	54(r1), r13
	mov	r13, 34(r1)                     ; 2-byte Folded Spill
	mov	52(r1), r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	mov	58(r1), r13
	and	#32767, r13
	mov	r13, 38(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 40(r1)                     ; 2-byte Folded Spill
	cmp	#32752, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jl	.LBB29_2
; %bb.1:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB29_2:
	mov	34(r1), r13                     ; 2-byte Folded Reload
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	42(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	jeq	.LBB29_4
; %bb.3:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
.LBB29_4:
	mov	32(r1), r13                     ; 2-byte Folded Reload
	mov	38(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	jeq	.LBB29_6
; %bb.5:
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
.LBB29_6:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB29_8
	jmp	.LBB29_7
.LBB29_7:
	mov	&.L__profc_fdim+14, r12
	mov	&.L__profc_fdim+12, r11
	mov	&.L__profc_fdim+10, r14
	mov	&.L__profc_fdim+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fdim+8
	mov	r14, &.L__profc_fdim+10
	mov	r13, &.L__profc_fdim+12
	mov	r12, &.L__profc_fdim+14
	mov	52(r1), r12
	mov	54(r1), r13
	mov	56(r1), r14
	mov	58(r1), r15
	mov	r15, 66(r1)
	mov	r14, 64(r1)
	mov	r13, 62(r1)
	mov	r12, 60(r1)
	jmp	.LBB29_20
.LBB29_8:
	mov	48(r1), r12
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	mov	46(r1), r12
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r12
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	mov	50(r1), r13
	and	#32767, r13
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32752, r13
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	jl	.LBB29_10
; %bb.9:
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
.LBB29_10:
	mov	16(r1), r13                     ; 2-byte Folded Reload
	mov	18(r1), r12                     ; 2-byte Folded Reload
	mov	24(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	jeq	.LBB29_12
; %bb.11:
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
.LBB29_12:
	mov	14(r1), r13                     ; 2-byte Folded Reload
	mov	20(r1), r14                     ; 2-byte Folded Reload
	mov	12(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jeq	.LBB29_14
; %bb.13:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB29_14:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB29_16
	jmp	.LBB29_15
.LBB29_15:
	mov	&.L__profc_fdim+22, r12
	mov	&.L__profc_fdim+20, r11
	mov	&.L__profc_fdim+18, r14
	mov	&.L__profc_fdim+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fdim+16
	mov	r14, &.L__profc_fdim+18
	mov	r13, &.L__profc_fdim+20
	mov	r12, &.L__profc_fdim+22
	mov	44(r1), r12
	mov	46(r1), r13
	mov	48(r1), r14
	mov	50(r1), r15
	mov	r15, 66(r1)
	mov	r14, 64(r1)
	mov	r13, 62(r1)
	mov	r12, 60(r1)
	jmp	.LBB29_20
.LBB29_16:
	mov	52(r1), r8
	mov	54(r1), r9
	mov	56(r1), r10
	mov	58(r1), r11
	mov	44(r1), r12
	mov	46(r1), r13
	mov	48(r1), r14
	mov	50(r1), r15
	call	#__mspabi_cmpd
	cmp	#1, r12
	jl	.LBB29_18
	jmp	.LBB29_17
.LBB29_17:
	mov	&.L__profc_fdim+30, r12
	mov	&.L__profc_fdim+28, r11
	mov	&.L__profc_fdim+26, r14
	mov	&.L__profc_fdim+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fdim+24
	mov	r14, &.L__profc_fdim+26
	mov	r13, &.L__profc_fdim+28
	mov	r12, &.L__profc_fdim+30
	mov	52(r1), r8
	mov	54(r1), r9
	mov	56(r1), r10
	mov	58(r1), r11
	mov	44(r1), r12
	mov	46(r1), r13
	mov	48(r1), r14
	mov	50(r1), r15
	call	#__mspabi_subd
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	mov	r15, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB29_19
.LBB29_18:
	clr	r12
	mov	r12, r13
	mov	r12, r14
	mov	r12, r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB29_19
.LBB29_19:
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r15, 60(r1)
	mov	r14, 62(r1)
	mov	r13, 64(r1)
	mov	r12, 66(r1)
	jmp	.LBB29_20
.LBB29_20:
	mov	60(r1), r12
	mov	62(r1), r13
	mov	64(r1), r14
	mov	66(r1), r15
	add	#68, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
                                        ; -- End function
	.globl	fdimf                           ; -- Begin function fdimf
	.p2align	1
	.type	fdimf,@function
fdimf:                                  ; @fdimf
; %bb.0:
	push	r9
	push	r10
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	&.L__profc_fdimf+6, r13
	mov	&.L__profc_fdimf+4, r12
	mov	&.L__profc_fdimf+2, r15
	mov	&.L__profc_fdimf, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fdimf
	mov	r15, &.L__profc_fdimf+2
	mov	r14, &.L__profc_fdimf+4
	mov	r13, &.L__profc_fdimf+6
	mov	32(r1), r13
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	34(r1), r13
	and	#32767, r13
	mov	r13, 22(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 24(r1)                     ; 2-byte Folded Spill
	cmp	#32640, r13
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	jl	.LBB30_2
; %bb.1:
	mov	24(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
.LBB30_2:
	mov	22(r1), r13                     ; 2-byte Folded Reload
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	26(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 16(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	cmp	#32640, r13
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	jeq	.LBB30_4
; %bb.3:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
.LBB30_4:
	mov	18(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB30_6
	jmp	.LBB30_5
.LBB30_5:
	mov	&.L__profc_fdimf+14, r12
	mov	&.L__profc_fdimf+12, r11
	mov	&.L__profc_fdimf+10, r14
	mov	&.L__profc_fdimf+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fdimf+8
	mov	r14, &.L__profc_fdimf+10
	mov	r13, &.L__profc_fdimf+12
	mov	r12, &.L__profc_fdimf+14
	mov	32(r1), r12
	mov	34(r1), r13
	mov	r13, 38(r1)
	mov	r12, 36(r1)
	jmp	.LBB30_16
.LBB30_6:
	mov	28(r1), r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	30(r1), r13
	and	#32767, r13
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32640, r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jl	.LBB30_8
; %bb.7:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB30_8:
	mov	10(r1), r13                     ; 2-byte Folded Reload
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	14(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	cmp	#32640, r13
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jeq	.LBB30_10
; %bb.9:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
.LBB30_10:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB30_12
	jmp	.LBB30_11
.LBB30_11:
	mov	&.L__profc_fdimf+22, r12
	mov	&.L__profc_fdimf+20, r11
	mov	&.L__profc_fdimf+18, r14
	mov	&.L__profc_fdimf+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fdimf+16
	mov	r14, &.L__profc_fdimf+18
	mov	r13, &.L__profc_fdimf+20
	mov	r12, &.L__profc_fdimf+22
	mov	28(r1), r12
	mov	30(r1), r13
	mov	r13, 38(r1)
	mov	r12, 36(r1)
	jmp	.LBB30_16
.LBB30_12:
	mov	32(r1), r12
	mov	34(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	call	#__mspabi_cmpf
	cmp	#1, r12
	jl	.LBB30_14
	jmp	.LBB30_13
.LBB30_13:
	mov	&.L__profc_fdimf+30, r12
	mov	&.L__profc_fdimf+28, r11
	mov	&.L__profc_fdimf+26, r14
	mov	&.L__profc_fdimf+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fdimf+24
	mov	r14, &.L__profc_fdimf+26
	mov	r13, &.L__profc_fdimf+28
	mov	r12, &.L__profc_fdimf+30
	mov	32(r1), r12
	mov	34(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	call	#__mspabi_subf
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB30_15
.LBB30_14:
	clr	r12
	mov	r12, r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB30_15
.LBB30_15:
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 36(r1)
	mov	r12, 38(r1)
	jmp	.LBB30_16
.LBB30_16:
	mov	36(r1), r12
	mov	38(r1), r13
	add	#40, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
                                        ; -- End function
	.globl	fmax                            ; -- Begin function fmax
	.p2align	1
	.type	fmax,@function
fmax:                                   ; @fmax
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#86, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	102(r1), r15
	mov	100(r1), r14
	mov	98(r1), r13
	mov	96(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 76(r1)
	mov	r9, 74(r1)
	mov	r10, 72(r1)
	mov	r11, 70(r1)
	mov	r15, 68(r1)
	mov	r14, 66(r1)
	mov	r13, 64(r1)
	mov	r12, 62(r1)
	mov	&.L__profc_fmax+6, r13
	mov	&.L__profc_fmax+4, r12
	mov	&.L__profc_fmax+2, r15
	mov	&.L__profc_fmax, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fmax
	mov	r15, &.L__profc_fmax+2
	mov	r14, &.L__profc_fmax+4
	mov	r13, &.L__profc_fmax+6
	mov	74(r1), r13
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r13
	mov	r13, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r13
	mov	r13, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 58(r1)                     ; 2-byte Folded Spill
	cmp	#32752, r13
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
	jl	.LBB31_2
; %bb.1:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
.LBB31_2:
	mov	52(r1), r13                     ; 2-byte Folded Reload
	mov	54(r1), r12                     ; 2-byte Folded Reload
	mov	60(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 46(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
	jeq	.LBB31_4
; %bb.3:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
.LBB31_4:
	mov	50(r1), r13                     ; 2-byte Folded Reload
	mov	56(r1), r14                     ; 2-byte Folded Reload
	mov	48(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
	jeq	.LBB31_6
; %bb.5:
	mov	46(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
.LBB31_6:
	mov	44(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB31_8
	jmp	.LBB31_7
.LBB31_7:
	mov	&.L__profc_fmax+14, r12
	mov	&.L__profc_fmax+12, r11
	mov	&.L__profc_fmax+10, r14
	mov	&.L__profc_fmax+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmax+8
	mov	r14, &.L__profc_fmax+10
	mov	r13, &.L__profc_fmax+12
	mov	r12, &.L__profc_fmax+14
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB31_29
.LBB31_8:
	mov	66(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	64(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	62(r1), r12
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	and	#32767, r13
	mov	r13, 38(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32752, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jl	.LBB31_10
; %bb.9:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB31_10:
	mov	34(r1), r13                     ; 2-byte Folded Reload
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	42(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	jeq	.LBB31_12
; %bb.11:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
.LBB31_12:
	mov	32(r1), r13                     ; 2-byte Folded Reload
	mov	38(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	jeq	.LBB31_14
; %bb.13:
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
.LBB31_14:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB31_16
	jmp	.LBB31_15
.LBB31_15:
	mov	&.L__profc_fmax+22, r12
	mov	&.L__profc_fmax+20, r11
	mov	&.L__profc_fmax+18, r14
	mov	&.L__profc_fmax+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmax+16
	mov	r14, &.L__profc_fmax+18
	mov	r13, &.L__profc_fmax+20
	mov	r12, &.L__profc_fmax+22
	mov	70(r1), r12
	mov	72(r1), r13
	mov	74(r1), r14
	mov	76(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB31_29
.LBB31_16:
	mov	76(r1), r13
	clr	r12
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	jl	.LBB31_18
; %bb.17:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
.LBB31_18:
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	24(r1), r13                     ; 2-byte Folded Reload
	mov	r13, 16(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	tst	r13
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	jl	.LBB31_20
; %bb.19:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
.LBB31_20:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	18(r1), r13                     ; 2-byte Folded Reload
	cmp	r13, r12
	jeq	.LBB31_25
	jmp	.LBB31_21
.LBB31_21:
	mov	&.L__profc_fmax+30, r12
	mov	&.L__profc_fmax+28, r11
	mov	&.L__profc_fmax+26, r14
	mov	&.L__profc_fmax+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmax+24
	mov	r14, &.L__profc_fmax+26
	mov	r13, &.L__profc_fmax+28
	mov	r12, &.L__profc_fmax+30
	mov	76(r1), r12
	tst	r12
	jge	.LBB31_23
	jmp	.LBB31_22
.LBB31_22:
	mov	&.L__profc_fmax+38, r12
	mov	&.L__profc_fmax+36, r11
	mov	&.L__profc_fmax+34, r14
	mov	&.L__profc_fmax+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmax+32
	mov	r14, &.L__profc_fmax+34
	mov	r13, &.L__profc_fmax+36
	mov	r12, &.L__profc_fmax+38
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB31_24
.LBB31_23:
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB31_24
.LBB31_24:
	mov	8(r1), r15                      ; 2-byte Folded Reload
	mov	10(r1), r14                     ; 2-byte Folded Reload
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB31_29
.LBB31_25:
	mov	70(r1), r8
	mov	72(r1), r9
	mov	74(r1), r10
	mov	76(r1), r11
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB31_27
	jmp	.LBB31_26
.LBB31_26:
	mov	&.L__profc_fmax+46, r12
	mov	&.L__profc_fmax+44, r11
	mov	&.L__profc_fmax+42, r14
	mov	&.L__profc_fmax+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmax+40
	mov	r14, &.L__profc_fmax+42
	mov	r13, &.L__profc_fmax+44
	mov	r12, &.L__profc_fmax+46
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB31_28
.LBB31_27:
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB31_28
.LBB31_28:
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB31_29
.LBB31_29:
	mov	78(r1), r12
	mov	80(r1), r13
	mov	82(r1), r14
	mov	84(r1), r15
	add	#86, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
                                        ; -- End function
	.globl	fmaxf                           ; -- Begin function fmaxf
	.p2align	1
	.type	fmaxf,@function
fmaxf:                                  ; @fmaxf
; %bb.0:
	push	r9
	push	r10
	sub	#54, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	mov	r15, 44(r1)
	mov	r14, 42(r1)
	mov	&.L__profc_fmaxf+6, r13
	mov	&.L__profc_fmaxf+4, r12
	mov	&.L__profc_fmaxf+2, r15
	mov	&.L__profc_fmaxf, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fmaxf
	mov	r15, &.L__profc_fmaxf+2
	mov	r14, &.L__profc_fmaxf+4
	mov	r13, &.L__profc_fmaxf+6
	mov	46(r1), r13
	mov	r13, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	and	#32767, r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 38(r1)                     ; 2-byte Folded Spill
	cmp	#32640, r13
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	jl	.LBB32_2
; %bb.1:
	mov	38(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
.LBB32_2:
	mov	36(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	40(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 30(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	cmp	#32640, r13
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	jeq	.LBB32_4
; %bb.3:
	mov	30(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
.LBB32_4:
	mov	32(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB32_6
	jmp	.LBB32_5
.LBB32_5:
	mov	&.L__profc_fmaxf+14, r12
	mov	&.L__profc_fmaxf+12, r11
	mov	&.L__profc_fmaxf+10, r14
	mov	&.L__profc_fmaxf+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxf+8
	mov	r14, &.L__profc_fmaxf+10
	mov	r13, &.L__profc_fmaxf+12
	mov	r12, &.L__profc_fmaxf+14
	mov	42(r1), r12
	mov	44(r1), r13
	mov	r13, 52(r1)
	mov	r12, 50(r1)
	jmp	.LBB32_25
.LBB32_6:
	mov	42(r1), r12
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r13
	and	#32767, r13
	mov	r13, 24(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32640, r13
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
	jl	.LBB32_8
; %bb.7:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
.LBB32_8:
	mov	24(r1), r13                     ; 2-byte Folded Reload
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	28(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	cmp	#32640, r13
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	jeq	.LBB32_10
; %bb.9:
	mov	18(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
.LBB32_10:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB32_12
	jmp	.LBB32_11
.LBB32_11:
	mov	&.L__profc_fmaxf+22, r12
	mov	&.L__profc_fmaxf+20, r11
	mov	&.L__profc_fmaxf+18, r14
	mov	&.L__profc_fmaxf+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxf+16
	mov	r14, &.L__profc_fmaxf+18
	mov	r13, &.L__profc_fmaxf+20
	mov	r12, &.L__profc_fmaxf+22
	mov	46(r1), r12
	mov	48(r1), r13
	mov	r13, 52(r1)
	mov	r12, 50(r1)
	jmp	.LBB32_25
.LBB32_12:
	mov	48(r1), r13
	clr	r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	jl	.LBB32_14
; %bb.13:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
.LBB32_14:
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	16(r1), r13                     ; 2-byte Folded Reload
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	mov	44(r1), r13
	tst	r13
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	jl	.LBB32_16
; %bb.15:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
.LBB32_16:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	cmp	r13, r12
	jeq	.LBB32_21
	jmp	.LBB32_17
.LBB32_17:
	mov	&.L__profc_fmaxf+30, r12
	mov	&.L__profc_fmaxf+28, r11
	mov	&.L__profc_fmaxf+26, r14
	mov	&.L__profc_fmaxf+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxf+24
	mov	r14, &.L__profc_fmaxf+26
	mov	r13, &.L__profc_fmaxf+28
	mov	r12, &.L__profc_fmaxf+30
	mov	48(r1), r12
	tst	r12
	jge	.LBB32_19
	jmp	.LBB32_18
.LBB32_18:
	mov	&.L__profc_fmaxf+38, r12
	mov	&.L__profc_fmaxf+36, r11
	mov	&.L__profc_fmaxf+34, r14
	mov	&.L__profc_fmaxf+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxf+32
	mov	r14, &.L__profc_fmaxf+34
	mov	r13, &.L__profc_fmaxf+36
	mov	r12, &.L__profc_fmaxf+38
	mov	44(r1), r12
	mov	42(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB32_20
.LBB32_19:
	mov	48(r1), r12
	mov	46(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB32_20
.LBB32_20:
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 50(r1)
	mov	r12, 52(r1)
	jmp	.LBB32_25
.LBB32_21:
	mov	46(r1), r12
	mov	48(r1), r13
	mov	42(r1), r14
	mov	44(r1), r15
	call	#__mspabi_cmpf
	tst	r12
	jge	.LBB32_23
	jmp	.LBB32_22
.LBB32_22:
	mov	&.L__profc_fmaxf+46, r12
	mov	&.L__profc_fmaxf+44, r11
	mov	&.L__profc_fmaxf+42, r14
	mov	&.L__profc_fmaxf+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxf+40
	mov	r14, &.L__profc_fmaxf+42
	mov	r13, &.L__profc_fmaxf+44
	mov	r12, &.L__profc_fmaxf+46
	mov	44(r1), r12
	mov	42(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB32_24
.LBB32_23:
	mov	48(r1), r12
	mov	46(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB32_24
.LBB32_24:
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 50(r1)
	mov	r12, 52(r1)
	jmp	.LBB32_25
.LBB32_25:
	mov	50(r1), r12
	mov	52(r1), r13
	add	#54, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
                                        ; -- End function
	.globl	fmaxl                           ; -- Begin function fmaxl
	.p2align	1
	.type	fmaxl,@function
fmaxl:                                  ; @fmaxl
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#86, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	102(r1), r15
	mov	100(r1), r14
	mov	98(r1), r13
	mov	96(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 76(r1)
	mov	r9, 74(r1)
	mov	r10, 72(r1)
	mov	r11, 70(r1)
	mov	r15, 68(r1)
	mov	r14, 66(r1)
	mov	r13, 64(r1)
	mov	r12, 62(r1)
	mov	&.L__profc_fmaxl+6, r13
	mov	&.L__profc_fmaxl+4, r12
	mov	&.L__profc_fmaxl+2, r15
	mov	&.L__profc_fmaxl, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fmaxl
	mov	r15, &.L__profc_fmaxl+2
	mov	r14, &.L__profc_fmaxl+4
	mov	r13, &.L__profc_fmaxl+6
	mov	74(r1), r13
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r13
	mov	r13, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r13
	mov	r13, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 58(r1)                     ; 2-byte Folded Spill
	cmp	#32752, r13
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
	jl	.LBB33_2
; %bb.1:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
.LBB33_2:
	mov	52(r1), r13                     ; 2-byte Folded Reload
	mov	54(r1), r12                     ; 2-byte Folded Reload
	mov	60(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 46(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
	jeq	.LBB33_4
; %bb.3:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
.LBB33_4:
	mov	50(r1), r13                     ; 2-byte Folded Reload
	mov	56(r1), r14                     ; 2-byte Folded Reload
	mov	48(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
	jeq	.LBB33_6
; %bb.5:
	mov	46(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
.LBB33_6:
	mov	44(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB33_8
	jmp	.LBB33_7
.LBB33_7:
	mov	&.L__profc_fmaxl+14, r12
	mov	&.L__profc_fmaxl+12, r11
	mov	&.L__profc_fmaxl+10, r14
	mov	&.L__profc_fmaxl+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxl+8
	mov	r14, &.L__profc_fmaxl+10
	mov	r13, &.L__profc_fmaxl+12
	mov	r12, &.L__profc_fmaxl+14
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB33_29
.LBB33_8:
	mov	66(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	64(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	62(r1), r12
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	and	#32767, r13
	mov	r13, 38(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32752, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jl	.LBB33_10
; %bb.9:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB33_10:
	mov	34(r1), r13                     ; 2-byte Folded Reload
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	42(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	jeq	.LBB33_12
; %bb.11:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
.LBB33_12:
	mov	32(r1), r13                     ; 2-byte Folded Reload
	mov	38(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	jeq	.LBB33_14
; %bb.13:
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
.LBB33_14:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB33_16
	jmp	.LBB33_15
.LBB33_15:
	mov	&.L__profc_fmaxl+22, r12
	mov	&.L__profc_fmaxl+20, r11
	mov	&.L__profc_fmaxl+18, r14
	mov	&.L__profc_fmaxl+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxl+16
	mov	r14, &.L__profc_fmaxl+18
	mov	r13, &.L__profc_fmaxl+20
	mov	r12, &.L__profc_fmaxl+22
	mov	70(r1), r12
	mov	72(r1), r13
	mov	74(r1), r14
	mov	76(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB33_29
.LBB33_16:
	mov	76(r1), r13
	clr	r12
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	jl	.LBB33_18
; %bb.17:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
.LBB33_18:
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	24(r1), r13                     ; 2-byte Folded Reload
	mov	r13, 16(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	tst	r13
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	jl	.LBB33_20
; %bb.19:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
.LBB33_20:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	18(r1), r13                     ; 2-byte Folded Reload
	cmp	r13, r12
	jeq	.LBB33_25
	jmp	.LBB33_21
.LBB33_21:
	mov	&.L__profc_fmaxl+30, r12
	mov	&.L__profc_fmaxl+28, r11
	mov	&.L__profc_fmaxl+26, r14
	mov	&.L__profc_fmaxl+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxl+24
	mov	r14, &.L__profc_fmaxl+26
	mov	r13, &.L__profc_fmaxl+28
	mov	r12, &.L__profc_fmaxl+30
	mov	76(r1), r12
	tst	r12
	jge	.LBB33_23
	jmp	.LBB33_22
.LBB33_22:
	mov	&.L__profc_fmaxl+38, r12
	mov	&.L__profc_fmaxl+36, r11
	mov	&.L__profc_fmaxl+34, r14
	mov	&.L__profc_fmaxl+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxl+32
	mov	r14, &.L__profc_fmaxl+34
	mov	r13, &.L__profc_fmaxl+36
	mov	r12, &.L__profc_fmaxl+38
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB33_24
.LBB33_23:
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB33_24
.LBB33_24:
	mov	8(r1), r15                      ; 2-byte Folded Reload
	mov	10(r1), r14                     ; 2-byte Folded Reload
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB33_29
.LBB33_25:
	mov	70(r1), r8
	mov	72(r1), r9
	mov	74(r1), r10
	mov	76(r1), r11
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB33_27
	jmp	.LBB33_26
.LBB33_26:
	mov	&.L__profc_fmaxl+46, r12
	mov	&.L__profc_fmaxl+44, r11
	mov	&.L__profc_fmaxl+42, r14
	mov	&.L__profc_fmaxl+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmaxl+40
	mov	r14, &.L__profc_fmaxl+42
	mov	r13, &.L__profc_fmaxl+44
	mov	r12, &.L__profc_fmaxl+46
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB33_28
.LBB33_27:
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB33_28
.LBB33_28:
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB33_29
.LBB33_29:
	mov	78(r1), r12
	mov	80(r1), r13
	mov	82(r1), r14
	mov	84(r1), r15
	add	#86, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
                                        ; -- End function
	.globl	fmin                            ; -- Begin function fmin
	.p2align	1
	.type	fmin,@function
fmin:                                   ; @fmin
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#86, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	102(r1), r15
	mov	100(r1), r14
	mov	98(r1), r13
	mov	96(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 76(r1)
	mov	r9, 74(r1)
	mov	r10, 72(r1)
	mov	r11, 70(r1)
	mov	r15, 68(r1)
	mov	r14, 66(r1)
	mov	r13, 64(r1)
	mov	r12, 62(r1)
	mov	&.L__profc_fmin+6, r13
	mov	&.L__profc_fmin+4, r12
	mov	&.L__profc_fmin+2, r15
	mov	&.L__profc_fmin, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fmin
	mov	r15, &.L__profc_fmin+2
	mov	r14, &.L__profc_fmin+4
	mov	r13, &.L__profc_fmin+6
	mov	74(r1), r13
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r13
	mov	r13, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r13
	mov	r13, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 58(r1)                     ; 2-byte Folded Spill
	cmp	#32752, r13
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
	jl	.LBB34_2
; %bb.1:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
.LBB34_2:
	mov	52(r1), r13                     ; 2-byte Folded Reload
	mov	54(r1), r12                     ; 2-byte Folded Reload
	mov	60(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 46(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
	jeq	.LBB34_4
; %bb.3:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
.LBB34_4:
	mov	50(r1), r13                     ; 2-byte Folded Reload
	mov	56(r1), r14                     ; 2-byte Folded Reload
	mov	48(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
	jeq	.LBB34_6
; %bb.5:
	mov	46(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
.LBB34_6:
	mov	44(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB34_8
	jmp	.LBB34_7
.LBB34_7:
	mov	&.L__profc_fmin+14, r12
	mov	&.L__profc_fmin+12, r11
	mov	&.L__profc_fmin+10, r14
	mov	&.L__profc_fmin+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmin+8
	mov	r14, &.L__profc_fmin+10
	mov	r13, &.L__profc_fmin+12
	mov	r12, &.L__profc_fmin+14
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB34_29
.LBB34_8:
	mov	66(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	64(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	62(r1), r12
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	and	#32767, r13
	mov	r13, 38(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32752, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jl	.LBB34_10
; %bb.9:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB34_10:
	mov	34(r1), r13                     ; 2-byte Folded Reload
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	42(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	jeq	.LBB34_12
; %bb.11:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
.LBB34_12:
	mov	32(r1), r13                     ; 2-byte Folded Reload
	mov	38(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	jeq	.LBB34_14
; %bb.13:
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
.LBB34_14:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB34_16
	jmp	.LBB34_15
.LBB34_15:
	mov	&.L__profc_fmin+22, r12
	mov	&.L__profc_fmin+20, r11
	mov	&.L__profc_fmin+18, r14
	mov	&.L__profc_fmin+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmin+16
	mov	r14, &.L__profc_fmin+18
	mov	r13, &.L__profc_fmin+20
	mov	r12, &.L__profc_fmin+22
	mov	70(r1), r12
	mov	72(r1), r13
	mov	74(r1), r14
	mov	76(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB34_29
.LBB34_16:
	mov	76(r1), r13
	clr	r12
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	jl	.LBB34_18
; %bb.17:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
.LBB34_18:
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	24(r1), r13                     ; 2-byte Folded Reload
	mov	r13, 16(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	tst	r13
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	jl	.LBB34_20
; %bb.19:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
.LBB34_20:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	18(r1), r13                     ; 2-byte Folded Reload
	cmp	r13, r12
	jeq	.LBB34_25
	jmp	.LBB34_21
.LBB34_21:
	mov	&.L__profc_fmin+30, r12
	mov	&.L__profc_fmin+28, r11
	mov	&.L__profc_fmin+26, r14
	mov	&.L__profc_fmin+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmin+24
	mov	r14, &.L__profc_fmin+26
	mov	r13, &.L__profc_fmin+28
	mov	r12, &.L__profc_fmin+30
	mov	76(r1), r12
	tst	r12
	jge	.LBB34_23
	jmp	.LBB34_22
.LBB34_22:
	mov	&.L__profc_fmin+38, r12
	mov	&.L__profc_fmin+36, r11
	mov	&.L__profc_fmin+34, r14
	mov	&.L__profc_fmin+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmin+32
	mov	r14, &.L__profc_fmin+34
	mov	r13, &.L__profc_fmin+36
	mov	r12, &.L__profc_fmin+38
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB34_24
.LBB34_23:
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB34_24
.LBB34_24:
	mov	8(r1), r15                      ; 2-byte Folded Reload
	mov	10(r1), r14                     ; 2-byte Folded Reload
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB34_29
.LBB34_25:
	mov	70(r1), r8
	mov	72(r1), r9
	mov	74(r1), r10
	mov	76(r1), r11
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB34_27
	jmp	.LBB34_26
.LBB34_26:
	mov	&.L__profc_fmin+46, r12
	mov	&.L__profc_fmin+44, r11
	mov	&.L__profc_fmin+42, r14
	mov	&.L__profc_fmin+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fmin+40
	mov	r14, &.L__profc_fmin+42
	mov	r13, &.L__profc_fmin+44
	mov	r12, &.L__profc_fmin+46
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB34_28
.LBB34_27:
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB34_28
.LBB34_28:
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB34_29
.LBB34_29:
	mov	78(r1), r12
	mov	80(r1), r13
	mov	82(r1), r14
	mov	84(r1), r15
	add	#86, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
                                        ; -- End function
	.globl	fminf                           ; -- Begin function fminf
	.p2align	1
	.type	fminf,@function
fminf:                                  ; @fminf
; %bb.0:
	push	r9
	push	r10
	sub	#54, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	mov	r15, 44(r1)
	mov	r14, 42(r1)
	mov	&.L__profc_fminf+6, r13
	mov	&.L__profc_fminf+4, r12
	mov	&.L__profc_fminf+2, r15
	mov	&.L__profc_fminf, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fminf
	mov	r15, &.L__profc_fminf+2
	mov	r14, &.L__profc_fminf+4
	mov	r13, &.L__profc_fminf+6
	mov	46(r1), r13
	mov	r13, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	and	#32767, r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 38(r1)                     ; 2-byte Folded Spill
	cmp	#32640, r13
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	jl	.LBB35_2
; %bb.1:
	mov	38(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
.LBB35_2:
	mov	36(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	40(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 30(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	cmp	#32640, r13
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	jeq	.LBB35_4
; %bb.3:
	mov	30(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
.LBB35_4:
	mov	32(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB35_6
	jmp	.LBB35_5
.LBB35_5:
	mov	&.L__profc_fminf+14, r12
	mov	&.L__profc_fminf+12, r11
	mov	&.L__profc_fminf+10, r14
	mov	&.L__profc_fminf+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminf+8
	mov	r14, &.L__profc_fminf+10
	mov	r13, &.L__profc_fminf+12
	mov	r12, &.L__profc_fminf+14
	mov	42(r1), r12
	mov	44(r1), r13
	mov	r13, 52(r1)
	mov	r12, 50(r1)
	jmp	.LBB35_25
.LBB35_6:
	mov	42(r1), r12
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r13
	and	#32767, r13
	mov	r13, 24(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32640, r13
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
	jl	.LBB35_8
; %bb.7:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
.LBB35_8:
	mov	24(r1), r13                     ; 2-byte Folded Reload
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	28(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	cmp	#32640, r13
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	jeq	.LBB35_10
; %bb.9:
	mov	18(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
.LBB35_10:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB35_12
	jmp	.LBB35_11
.LBB35_11:
	mov	&.L__profc_fminf+22, r12
	mov	&.L__profc_fminf+20, r11
	mov	&.L__profc_fminf+18, r14
	mov	&.L__profc_fminf+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminf+16
	mov	r14, &.L__profc_fminf+18
	mov	r13, &.L__profc_fminf+20
	mov	r12, &.L__profc_fminf+22
	mov	46(r1), r12
	mov	48(r1), r13
	mov	r13, 52(r1)
	mov	r12, 50(r1)
	jmp	.LBB35_25
.LBB35_12:
	mov	48(r1), r13
	clr	r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	jl	.LBB35_14
; %bb.13:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
.LBB35_14:
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	16(r1), r13                     ; 2-byte Folded Reload
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	mov	44(r1), r13
	tst	r13
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	jl	.LBB35_16
; %bb.15:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
.LBB35_16:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	cmp	r13, r12
	jeq	.LBB35_21
	jmp	.LBB35_17
.LBB35_17:
	mov	&.L__profc_fminf+30, r12
	mov	&.L__profc_fminf+28, r11
	mov	&.L__profc_fminf+26, r14
	mov	&.L__profc_fminf+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminf+24
	mov	r14, &.L__profc_fminf+26
	mov	r13, &.L__profc_fminf+28
	mov	r12, &.L__profc_fminf+30
	mov	48(r1), r12
	tst	r12
	jge	.LBB35_19
	jmp	.LBB35_18
.LBB35_18:
	mov	&.L__profc_fminf+38, r12
	mov	&.L__profc_fminf+36, r11
	mov	&.L__profc_fminf+34, r14
	mov	&.L__profc_fminf+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminf+32
	mov	r14, &.L__profc_fminf+34
	mov	r13, &.L__profc_fminf+36
	mov	r12, &.L__profc_fminf+38
	mov	48(r1), r12
	mov	46(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB35_20
.LBB35_19:
	mov	44(r1), r12
	mov	42(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB35_20
.LBB35_20:
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 50(r1)
	mov	r12, 52(r1)
	jmp	.LBB35_25
.LBB35_21:
	mov	46(r1), r12
	mov	48(r1), r13
	mov	42(r1), r14
	mov	44(r1), r15
	call	#__mspabi_cmpf
	tst	r12
	jge	.LBB35_23
	jmp	.LBB35_22
.LBB35_22:
	mov	&.L__profc_fminf+46, r12
	mov	&.L__profc_fminf+44, r11
	mov	&.L__profc_fminf+42, r14
	mov	&.L__profc_fminf+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminf+40
	mov	r14, &.L__profc_fminf+42
	mov	r13, &.L__profc_fminf+44
	mov	r12, &.L__profc_fminf+46
	mov	48(r1), r12
	mov	46(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB35_24
.LBB35_23:
	mov	44(r1), r12
	mov	42(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB35_24
.LBB35_24:
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 50(r1)
	mov	r12, 52(r1)
	jmp	.LBB35_25
.LBB35_25:
	mov	50(r1), r12
	mov	52(r1), r13
	add	#54, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
                                        ; -- End function
	.globl	fminl                           ; -- Begin function fminl
	.p2align	1
	.type	fminl,@function
fminl:                                  ; @fminl
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#86, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	102(r1), r15
	mov	100(r1), r14
	mov	98(r1), r13
	mov	96(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 76(r1)
	mov	r9, 74(r1)
	mov	r10, 72(r1)
	mov	r11, 70(r1)
	mov	r15, 68(r1)
	mov	r14, 66(r1)
	mov	r13, 64(r1)
	mov	r12, 62(r1)
	mov	&.L__profc_fminl+6, r13
	mov	&.L__profc_fminl+4, r12
	mov	&.L__profc_fminl+2, r15
	mov	&.L__profc_fminl, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_fminl
	mov	r15, &.L__profc_fminl+2
	mov	r14, &.L__profc_fminl+4
	mov	r13, &.L__profc_fminl+6
	mov	74(r1), r13
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r13
	mov	r13, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r13
	mov	r13, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 58(r1)                     ; 2-byte Folded Spill
	cmp	#32752, r13
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
	jl	.LBB36_2
; %bb.1:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
.LBB36_2:
	mov	52(r1), r13                     ; 2-byte Folded Reload
	mov	54(r1), r12                     ; 2-byte Folded Reload
	mov	60(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 46(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
	jeq	.LBB36_4
; %bb.3:
	mov	58(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 48(r1)                     ; 2-byte Folded Spill
.LBB36_4:
	mov	50(r1), r13                     ; 2-byte Folded Reload
	mov	56(r1), r14                     ; 2-byte Folded Reload
	mov	48(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
	jeq	.LBB36_6
; %bb.5:
	mov	46(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
.LBB36_6:
	mov	44(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB36_8
	jmp	.LBB36_7
.LBB36_7:
	mov	&.L__profc_fminl+14, r12
	mov	&.L__profc_fminl+12, r11
	mov	&.L__profc_fminl+10, r14
	mov	&.L__profc_fminl+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminl+8
	mov	r14, &.L__profc_fminl+10
	mov	r13, &.L__profc_fminl+12
	mov	r12, &.L__profc_fminl+14
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB36_29
.LBB36_8:
	mov	66(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	64(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	62(r1), r12
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	and	#32767, r13
	mov	r13, 38(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#32752, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jl	.LBB36_10
; %bb.9:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB36_10:
	mov	34(r1), r13                     ; 2-byte Folded Reload
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	42(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	jeq	.LBB36_12
; %bb.11:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
.LBB36_12:
	mov	32(r1), r13                     ; 2-byte Folded Reload
	mov	38(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	jeq	.LBB36_14
; %bb.13:
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
.LBB36_14:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB36_16
	jmp	.LBB36_15
.LBB36_15:
	mov	&.L__profc_fminl+22, r12
	mov	&.L__profc_fminl+20, r11
	mov	&.L__profc_fminl+18, r14
	mov	&.L__profc_fminl+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminl+16
	mov	r14, &.L__profc_fminl+18
	mov	r13, &.L__profc_fminl+20
	mov	r12, &.L__profc_fminl+22
	mov	70(r1), r12
	mov	72(r1), r13
	mov	74(r1), r14
	mov	76(r1), r15
	mov	r15, 84(r1)
	mov	r14, 82(r1)
	mov	r13, 80(r1)
	mov	r12, 78(r1)
	jmp	.LBB36_29
.LBB36_16:
	mov	76(r1), r13
	clr	r12
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	jl	.LBB36_18
; %bb.17:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
.LBB36_18:
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	24(r1), r13                     ; 2-byte Folded Reload
	mov	r13, 16(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	tst	r13
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	jl	.LBB36_20
; %bb.19:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
.LBB36_20:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	18(r1), r13                     ; 2-byte Folded Reload
	cmp	r13, r12
	jeq	.LBB36_25
	jmp	.LBB36_21
.LBB36_21:
	mov	&.L__profc_fminl+30, r12
	mov	&.L__profc_fminl+28, r11
	mov	&.L__profc_fminl+26, r14
	mov	&.L__profc_fminl+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminl+24
	mov	r14, &.L__profc_fminl+26
	mov	r13, &.L__profc_fminl+28
	mov	r12, &.L__profc_fminl+30
	mov	76(r1), r12
	tst	r12
	jge	.LBB36_23
	jmp	.LBB36_22
.LBB36_22:
	mov	&.L__profc_fminl+38, r12
	mov	&.L__profc_fminl+36, r11
	mov	&.L__profc_fminl+34, r14
	mov	&.L__profc_fminl+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminl+32
	mov	r14, &.L__profc_fminl+34
	mov	r13, &.L__profc_fminl+36
	mov	r12, &.L__profc_fminl+38
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB36_24
.LBB36_23:
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	mov	r14, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jmp	.LBB36_24
.LBB36_24:
	mov	8(r1), r15                      ; 2-byte Folded Reload
	mov	10(r1), r14                     ; 2-byte Folded Reload
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB36_29
.LBB36_25:
	mov	70(r1), r8
	mov	72(r1), r9
	mov	74(r1), r10
	mov	76(r1), r11
	mov	62(r1), r12
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB36_27
	jmp	.LBB36_26
.LBB36_26:
	mov	&.L__profc_fminl+46, r12
	mov	&.L__profc_fminl+44, r11
	mov	&.L__profc_fminl+42, r14
	mov	&.L__profc_fminl+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_fminl+40
	mov	r14, &.L__profc_fminl+42
	mov	r13, &.L__profc_fminl+44
	mov	r12, &.L__profc_fminl+46
	mov	76(r1), r12
	mov	74(r1), r13
	mov	72(r1), r14
	mov	70(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB36_28
.LBB36_27:
	mov	68(r1), r12
	mov	66(r1), r13
	mov	64(r1), r14
	mov	62(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB36_28
.LBB36_28:
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r15, 78(r1)
	mov	r14, 80(r1)
	mov	r13, 82(r1)
	mov	r12, 84(r1)
	jmp	.LBB36_29
.LBB36_29:
	mov	78(r1), r12
	mov	80(r1), r13
	mov	82(r1), r14
	mov	84(r1), r15
	add	#86, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
                                        ; -- End function
	.globl	l64a                            ; -- Begin function l64a
	.p2align	1
	.type	l64a,@function
l64a:                                   ; @l64a
; %bb.0:
	push	r10
	sub	#10, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	mov	&.L__profc_l64a+6, r12
	mov	&.L__profc_l64a+4, r11
	mov	&.L__profc_l64a+2, r14
	mov	&.L__profc_l64a, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_l64a
	mov	r14, &.L__profc_l64a+2
	mov	r13, &.L__profc_l64a+4
	mov	r12, &.L__profc_l64a+6
	mov	6(r1), r12
	mov	8(r1), r13
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	#l64a.s, 4(r1)
	jmp	.LBB37_1
.LBB37_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r13
	mov	0(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB37_4
	jmp	.LBB37_2
.LBB37_2:                               ;   in Loop: Header=BB37_1 Depth=1
	mov	&.L__profc_l64a+14, r12
	mov	&.L__profc_l64a+12, r11
	mov	&.L__profc_l64a+10, r14
	mov	&.L__profc_l64a+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_l64a+8
	mov	r14, &.L__profc_l64a+10
	mov	r13, &.L__profc_l64a+12
	mov	r12, &.L__profc_l64a+14
	mov	0(r1), r12
	and	#63, r12
	mov.b	digits(r12), r13
	mov	4(r1), r12
	mov.b	r13, 0(r12)
	jmp	.LBB37_3
.LBB37_3:                               ;   in Loop: Header=BB37_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	mov	0(r1), r12
	mov	2(r1), r13
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	clrc
	rrc	r12
	rra	r12
	rra	r12
	rra	r12
	rra	r12
	rra	r12
	bis	r14, r12
	clrc
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	jmp	.LBB37_1
.LBB37_4:
	mov	4(r1), r12
	clr.b	0(r12)
	mov	#l64a.s, r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        ; -- End function
	.globl	srand                           ; -- Begin function srand
	.p2align	1
	.type	srand,@function
srand:                                  ; @srand
; %bb.0:
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc_srand+6, r12
	mov	&.L__profc_srand+4, r11
	mov	&.L__profc_srand+2, r14
	mov	&.L__profc_srand, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_srand
	mov	r14, &.L__profc_srand+2
	mov	r13, &.L__profc_srand+4
	mov	r12, &.L__profc_srand+6
	mov	0(r1), r12
	add	#-1, r12
	mov	r12, &seed
	clr	&seed+6
	clr	&seed+4
	clr	&seed+2
	add	#2, r1
	pop	r10
	ret
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
                                        ; -- End function
	.globl	rand                            ; -- Begin function rand
	.p2align	1
	.type	rand,@function
rand:                                   ; @rand
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#2, r1
	mov	&.L__profc_rand+6, r12
	mov	&.L__profc_rand+4, r11
	mov	&.L__profc_rand+2, r14
	mov	&.L__profc_rand, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rand
	mov	r14, &.L__profc_rand+2
	mov	r13, &.L__profc_rand+4
	mov	r12, &.L__profc_rand+6
	mov	&seed, r8
	mov	&seed+2, r9
	mov	&seed+4, r10
	mov	&seed+6, r11
	mov	#32557, r12
	mov	#19605, r13
	mov	#-3027, r14
	mov	#22609, r15
	call	#__mspabi_mpyll
	mov	0(r1), r11                      ; 2-byte Folded Reload
	mov	r14, r10
	inc	r12
	tst	r12
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r13
	mov	r12, r14
	bis	r13, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r10
	bic	r10, r11
	add	r11, r15
	mov	r12, &seed
	mov	r13, &seed+2
	mov	r14, &seed+4
	mov	r15, &seed+6
	mov.b	&seed+6, r13
	mov	&seed+4, r12
	clrc
	rrc	r12
	swpb	r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	bis	r13, r12
	add	#2, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
                                        ; -- End function
	.globl	insque                          ; -- Begin function insque
	.p2align	1
	.type	insque,@function
insque:                                 ; @insque
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	&.L__profc_insque+6, r12
	mov	&.L__profc_insque+4, r11
	mov	&.L__profc_insque+2, r14
	mov	&.L__profc_insque, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_insque
	mov	r14, &.L__profc_insque+2
	mov	r13, &.L__profc_insque+4
	mov	r12, &.L__profc_insque+6
	mov	6(r1), r12
	mov	r12, 2(r1)
	mov	4(r1), r12
	mov	r12, 0(r1)
	mov	0(r1), r12
	tst	r12
	jne	.LBB40_2
	jmp	.LBB40_1
.LBB40_1:
	mov	&.L__profc_insque+14, r12
	mov	&.L__profc_insque+12, r11
	mov	&.L__profc_insque+10, r14
	mov	&.L__profc_insque+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_insque+8
	mov	r14, &.L__profc_insque+10
	mov	r13, &.L__profc_insque+12
	mov	r12, &.L__profc_insque+14
	mov	2(r1), r12
	clr	2(r12)
	mov	2(r1), r12
	clr	0(r12)
	jmp	.LBB40_4
.LBB40_2:
	mov	0(r1), r12
	mov	0(r12), r13
	mov	2(r1), r12
	mov	r13, 0(r12)
	mov	0(r1), r13
	mov	2(r1), r12
	mov	r13, 2(r12)
	mov	2(r1), r13
	mov	0(r1), r12
	mov	r13, 0(r12)
	mov	2(r1), r12
	mov	0(r12), r12
	tst	r12
	jeq	.LBB40_4
	jmp	.LBB40_3
.LBB40_3:
	mov	&.L__profc_insque+22, r12
	mov	&.L__profc_insque+20, r11
	mov	&.L__profc_insque+18, r14
	mov	&.L__profc_insque+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_insque+16
	mov	r14, &.L__profc_insque+18
	mov	r13, &.L__profc_insque+20
	mov	r12, &.L__profc_insque+22
	mov	2(r1), r13
	mov	0(r13), r12
	mov	r13, 2(r12)
	jmp	.LBB40_4
.LBB40_4:
	add	#8, r1
	pop	r10
	ret
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
                                        ; -- End function
	.globl	remque                          ; -- Begin function remque
	.p2align	1
	.type	remque,@function
remque:                                 ; @remque
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_remque+6, r12
	mov	&.L__profc_remque+4, r11
	mov	&.L__profc_remque+2, r14
	mov	&.L__profc_remque, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_remque
	mov	r14, &.L__profc_remque+2
	mov	r13, &.L__profc_remque+4
	mov	r12, &.L__profc_remque+6
	mov	2(r1), r12
	mov	r12, 0(r1)
	mov	0(r1), r12
	mov	0(r12), r12
	tst	r12
	jeq	.LBB41_2
	jmp	.LBB41_1
.LBB41_1:
	mov	&.L__profc_remque+14, r12
	mov	&.L__profc_remque+12, r11
	mov	&.L__profc_remque+10, r14
	mov	&.L__profc_remque+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_remque+8
	mov	r14, &.L__profc_remque+10
	mov	r13, &.L__profc_remque+12
	mov	r12, &.L__profc_remque+14
	mov	0(r1), r12
	mov	2(r12), r13
	mov	0(r12), r12
	mov	r13, 2(r12)
	jmp	.LBB41_2
.LBB41_2:
	mov	0(r1), r12
	mov	2(r12), r12
	tst	r12
	jeq	.LBB41_4
	jmp	.LBB41_3
.LBB41_3:
	mov	&.L__profc_remque+22, r12
	mov	&.L__profc_remque+20, r11
	mov	&.L__profc_remque+18, r14
	mov	&.L__profc_remque+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_remque+16
	mov	r14, &.L__profc_remque+18
	mov	r13, &.L__profc_remque+20
	mov	r12, &.L__profc_remque+22
	mov	0(r1), r12
	mov	0(r12), r13
	mov	2(r12), r12
	mov	r13, 0(r12)
	jmp	.LBB41_4
.LBB41_4:
	add	#4, r1
	pop	r10
	ret
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
                                        ; -- End function
	.globl	lsearch                         ; -- Begin function lsearch
	.p2align	1
	.type	lsearch,@function
lsearch:                                ; @lsearch
; %bb.0:
	push	r9
	push	r10
	sub	#30, r1
	mov	36(r1), r11
	mov	r12, 26(r1)
	mov	r13, 24(r1)
	mov	r14, 22(r1)
	mov	r15, 20(r1)
	mov	&.L__profc_lsearch+6, r12
	mov	&.L__profc_lsearch+4, r11
	mov	&.L__profc_lsearch+2, r14
	mov	&.L__profc_lsearch, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_lsearch
	mov	r14, &.L__profc_lsearch+2
	mov	r13, &.L__profc_lsearch+4
	mov	r12, &.L__profc_lsearch+6
	mov	20(r1), r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	24(r1), r12
	mov	r12, 18(r1)
	mov	22(r1), r12
	mov	0(r12), r12
	mov	r12, 16(r1)
	clr	14(r1)
	jmp	.LBB42_1
.LBB42_1:                               ; =>This Inner Loop Header: Depth=1
	mov	14(r1), r12
	mov	16(r1), r13
	cmp	r13, r12
	jhs	.LBB42_6
	jmp	.LBB42_2
.LBB42_2:                               ;   in Loop: Header=BB42_1 Depth=1
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	&.L__profc_lsearch+14, r12
	mov	&.L__profc_lsearch+12, r10
	mov	&.L__profc_lsearch+10, r15
	mov	&.L__profc_lsearch+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_lsearch+8
	mov	r15, &.L__profc_lsearch+10
	mov	r14, &.L__profc_lsearch+12
	mov	r12, &.L__profc_lsearch+14
	mov	36(r1), r12
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	mov	26(r1), r12
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	mov	18(r1), r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r12
	call	#__mspabi_mpyi
	mov	6(r1), r14                      ; 2-byte Folded Reload
	mov	8(r1), r13                      ; 2-byte Folded Reload
	mov	r12, r15
	mov	10(r1), r12                     ; 2-byte Folded Reload
	add	r15, r13
	call	r14
	tst	r12
	jne	.LBB42_4
	jmp	.LBB42_3
.LBB42_3:
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	&.L__profc_lsearch+22, r12
	mov	&.L__profc_lsearch+20, r10
	mov	&.L__profc_lsearch+18, r15
	mov	&.L__profc_lsearch+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_lsearch+16
	mov	r15, &.L__profc_lsearch+18
	mov	r14, &.L__profc_lsearch+20
	mov	r12, &.L__profc_lsearch+22
	mov	18(r1), r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r12
	call	#__mspabi_mpyi
	mov	r12, r13
	mov	4(r1), r12                      ; 2-byte Folded Reload
	add	r13, r12
	mov	r12, 28(r1)
	jmp	.LBB42_7
.LBB42_4:                               ;   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_5
.LBB42_5:                               ;   in Loop: Header=BB42_1 Depth=1
	mov	14(r1), r12
	inc	r12
	mov	r12, 14(r1)
	jmp	.LBB42_1
.LBB42_6:
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	16(r1), r14
	inc	r14
	mov	22(r1), r12
	mov	r14, 0(r12)
	mov	18(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	16(r1), r12
	call	#__mspabi_mpyi
	mov	r12, r13
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	r13, r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	26(r1), r13
	mov	20(r1), r14
	call	#memcpy
                                        ; kill: def $r13 killed $r12
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 28(r1)
	jmp	.LBB42_7
.LBB42_7:
	mov	28(r1), r12
	add	#30, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
                                        ; -- End function
	.globl	lfind                           ; -- Begin function lfind
	.p2align	1
	.type	lfind,@function
lfind:                                  ; @lfind
; %bb.0:
	push	r9
	push	r10
	sub	#26, r1
	mov	32(r1), r11
	mov	r12, 22(r1)
	mov	r13, 20(r1)
	mov	r14, 18(r1)
	mov	r15, 16(r1)
	mov	&.L__profc_lfind+6, r12
	mov	&.L__profc_lfind+4, r11
	mov	&.L__profc_lfind+2, r14
	mov	&.L__profc_lfind, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_lfind
	mov	r14, &.L__profc_lfind+2
	mov	r13, &.L__profc_lfind+4
	mov	r12, &.L__profc_lfind+6
	mov	16(r1), r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	20(r1), r12
	mov	r12, 14(r1)
	mov	18(r1), r12
	mov	0(r12), r12
	mov	r12, 12(r1)
	clr	10(r1)
	jmp	.LBB43_1
.LBB43_1:                               ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r12
	mov	12(r1), r13
	cmp	r13, r12
	jhs	.LBB43_6
	jmp	.LBB43_2
.LBB43_2:                               ;   in Loop: Header=BB43_1 Depth=1
	mov	8(r1), r13                      ; 2-byte Folded Reload
	mov	&.L__profc_lfind+14, r12
	mov	&.L__profc_lfind+12, r10
	mov	&.L__profc_lfind+10, r15
	mov	&.L__profc_lfind+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_lfind+8
	mov	r15, &.L__profc_lfind+10
	mov	r14, &.L__profc_lfind+12
	mov	r12, &.L__profc_lfind+14
	mov	32(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	22(r1), r12
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	10(r1), r12
	call	#__mspabi_mpyi
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	r12, r15
	mov	6(r1), r12                      ; 2-byte Folded Reload
	add	r15, r13
	call	r14
	tst	r12
	jne	.LBB43_4
	jmp	.LBB43_3
.LBB43_3:
	mov	8(r1), r13                      ; 2-byte Folded Reload
	mov	&.L__profc_lfind+22, r12
	mov	&.L__profc_lfind+20, r10
	mov	&.L__profc_lfind+18, r15
	mov	&.L__profc_lfind+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_lfind+16
	mov	r15, &.L__profc_lfind+18
	mov	r14, &.L__profc_lfind+20
	mov	r12, &.L__profc_lfind+22
	mov	14(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	10(r1), r12
	call	#__mspabi_mpyi
	mov	r12, r13
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	r13, r12
	mov	r12, 24(r1)
	jmp	.LBB43_7
.LBB43_4:                               ;   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_5
.LBB43_5:                               ;   in Loop: Header=BB43_1 Depth=1
	mov	10(r1), r12
	inc	r12
	mov	r12, 10(r1)
	jmp	.LBB43_1
.LBB43_6:
	clr	24(r1)
	jmp	.LBB43_7
.LBB43_7:
	mov	24(r1), r12
	add	#26, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
                                        ; -- End function
	.globl	abs                             ; -- Begin function abs
	.p2align	1
	.type	abs,@function
abs:                                    ; @abs
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_abs+6, r12
	mov	&.L__profc_abs+4, r11
	mov	&.L__profc_abs+2, r14
	mov	&.L__profc_abs, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_abs
	mov	r14, &.L__profc_abs+2
	mov	r13, &.L__profc_abs+4
	mov	r12, &.L__profc_abs+6
	mov	2(r1), r12
	cmp	#1, r12
	jl	.LBB44_2
	jmp	.LBB44_1
.LBB44_1:
	mov	&.L__profc_abs+14, r12
	mov	&.L__profc_abs+12, r11
	mov	&.L__profc_abs+10, r14
	mov	&.L__profc_abs+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_abs+8
	mov	r14, &.L__profc_abs+10
	mov	r13, &.L__profc_abs+12
	mov	r12, &.L__profc_abs+14
	mov	2(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB44_3
.LBB44_2:
	mov	2(r1), r13
	clr	r12
	sub	r13, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB44_3
.LBB44_3:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#4, r1
	pop	r10
	ret
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
                                        ; -- End function
	.globl	atoi                            ; -- Begin function atoi
	.p2align	1
	.type	atoi,@function
atoi:                                   ; @atoi
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	&.L__profc_atoi+6, r12
	mov	&.L__profc_atoi+4, r11
	mov	&.L__profc_atoi+2, r14
	mov	&.L__profc_atoi, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoi
	mov	r14, &.L__profc_atoi+2
	mov	r13, &.L__profc_atoi+4
	mov	r12, &.L__profc_atoi+6
	clr	6(r1)
	clr	4(r1)
	jmp	.LBB45_1
.LBB45_1:                               ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isspace
	tst	r12
	jeq	.LBB45_3
	jmp	.LBB45_2
.LBB45_2:                               ;   in Loop: Header=BB45_1 Depth=1
	mov	&.L__profc_atoi+14, r12
	mov	&.L__profc_atoi+12, r11
	mov	&.L__profc_atoi+10, r14
	mov	&.L__profc_atoi+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoi+8
	mov	r14, &.L__profc_atoi+10
	mov	r13, &.L__profc_atoi+12
	mov	r12, &.L__profc_atoi+14
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB45_1
.LBB45_3:
	mov	8(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	cmp	#43, r12
	jeq	.LBB45_6
	jmp	.LBB45_4
.LBB45_4:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	cmp	#45, r12
	jne	.LBB45_8
	jmp	.LBB45_5
.LBB45_5:
	mov	&.L__profc_atoi+30, r12
	mov	&.L__profc_atoi+28, r11
	mov	&.L__profc_atoi+26, r14
	mov	&.L__profc_atoi+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoi+24
	mov	r14, &.L__profc_atoi+26
	mov	r13, &.L__profc_atoi+28
	mov	r12, &.L__profc_atoi+30
	mov	#1, 4(r1)
	jmp	.LBB45_7
.LBB45_6:
	mov	&.L__profc_atoi+38, r12
	mov	&.L__profc_atoi+36, r11
	mov	&.L__profc_atoi+34, r14
	mov	&.L__profc_atoi+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoi+32
	mov	r14, &.L__profc_atoi+34
	mov	r13, &.L__profc_atoi+36
	mov	r12, &.L__profc_atoi+38
	jmp	.LBB45_7
.LBB45_7:
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB45_8
.LBB45_8:
	mov	&.L__profc_atoi+22, r12
	mov	&.L__profc_atoi+20, r11
	mov	&.L__profc_atoi+18, r14
	mov	&.L__profc_atoi+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoi+16
	mov	r14, &.L__profc_atoi+18
	mov	r13, &.L__profc_atoi+20
	mov	r12, &.L__profc_atoi+22
	jmp	.LBB45_9
.LBB45_9:                               ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isdigit
	tst	r12
	jeq	.LBB45_11
	jmp	.LBB45_10
.LBB45_10:                              ;   in Loop: Header=BB45_9 Depth=1
	mov	&.L__profc_atoi+46, r12
	mov	&.L__profc_atoi+44, r11
	mov	&.L__profc_atoi+42, r14
	mov	&.L__profc_atoi+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoi+40
	mov	r14, &.L__profc_atoi+42
	mov	r13, &.L__profc_atoi+44
	mov	r12, &.L__profc_atoi+46
	mov	6(r1), r12
	mov	#10, r13
	call	#__mspabi_mpyi
	mov	8(r1), r13
	mov	r13, r14
	inc	r14
	mov	r14, 8(r1)
	mov.b	0(r13), r13
	sxt	r13
	sub	r13, r12
	add	#48, r12
	mov	r12, 6(r1)
	jmp	.LBB45_9
.LBB45_11:
	mov	4(r1), r12
	tst	r12
	jeq	.LBB45_13
	jmp	.LBB45_12
.LBB45_12:
	mov	&.L__profc_atoi+54, r12
	mov	&.L__profc_atoi+52, r11
	mov	&.L__profc_atoi+50, r14
	mov	&.L__profc_atoi+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoi+48
	mov	r14, &.L__profc_atoi+50
	mov	r13, &.L__profc_atoi+52
	mov	r12, &.L__profc_atoi+54
	mov	6(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB45_14
.LBB45_13:
	mov	6(r1), r13
	clr	r12
	sub	r13, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB45_14
.LBB45_14:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#10, r1
	pop	r10
	ret
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
                                        ; -- End function
	.globl	atol                            ; -- Begin function atol
	.p2align	1
	.type	atol,@function
atol:                                   ; @atol
; %bb.0:
	push	r10
	sub	#18, r1
	mov	r12, 16(r1)
	mov	&.L__profc_atol+6, r12
	mov	&.L__profc_atol+4, r11
	mov	&.L__profc_atol+2, r14
	mov	&.L__profc_atol, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atol
	mov	r14, &.L__profc_atol+2
	mov	r13, &.L__profc_atol+4
	mov	r12, &.L__profc_atol+6
	clr	14(r1)
	clr	12(r1)
	clr	10(r1)
	jmp	.LBB46_1
.LBB46_1:                               ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isspace
	tst	r12
	jeq	.LBB46_3
	jmp	.LBB46_2
.LBB46_2:                               ;   in Loop: Header=BB46_1 Depth=1
	mov	&.L__profc_atol+14, r12
	mov	&.L__profc_atol+12, r11
	mov	&.L__profc_atol+10, r14
	mov	&.L__profc_atol+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atol+8
	mov	r14, &.L__profc_atol+10
	mov	r13, &.L__profc_atol+12
	mov	r12, &.L__profc_atol+14
	mov	16(r1), r12
	inc	r12
	mov	r12, 16(r1)
	jmp	.LBB46_1
.LBB46_3:
	mov	16(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	cmp	#43, r12
	jeq	.LBB46_6
	jmp	.LBB46_4
.LBB46_4:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	cmp	#45, r12
	jne	.LBB46_8
	jmp	.LBB46_5
.LBB46_5:
	mov	&.L__profc_atol+30, r12
	mov	&.L__profc_atol+28, r11
	mov	&.L__profc_atol+26, r14
	mov	&.L__profc_atol+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atol+24
	mov	r14, &.L__profc_atol+26
	mov	r13, &.L__profc_atol+28
	mov	r12, &.L__profc_atol+30
	mov	#1, 10(r1)
	jmp	.LBB46_7
.LBB46_6:
	mov	&.L__profc_atol+38, r12
	mov	&.L__profc_atol+36, r11
	mov	&.L__profc_atol+34, r14
	mov	&.L__profc_atol+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atol+32
	mov	r14, &.L__profc_atol+34
	mov	r13, &.L__profc_atol+36
	mov	r12, &.L__profc_atol+38
	jmp	.LBB46_7
.LBB46_7:
	mov	16(r1), r12
	inc	r12
	mov	r12, 16(r1)
	jmp	.LBB46_8
.LBB46_8:
	mov	&.L__profc_atol+22, r12
	mov	&.L__profc_atol+20, r11
	mov	&.L__profc_atol+18, r14
	mov	&.L__profc_atol+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atol+16
	mov	r14, &.L__profc_atol+18
	mov	r13, &.L__profc_atol+20
	mov	r12, &.L__profc_atol+22
	jmp	.LBB46_9
.LBB46_9:                               ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isdigit
	tst	r12
	jeq	.LBB46_11
	jmp	.LBB46_10
.LBB46_10:                              ;   in Loop: Header=BB46_9 Depth=1
	mov	&.L__profc_atol+46, r12
	mov	&.L__profc_atol+44, r11
	mov	&.L__profc_atol+42, r14
	mov	&.L__profc_atol+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 4(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atol+40
	mov	r14, &.L__profc_atol+42
	mov	r13, &.L__profc_atol+44
	mov	r12, &.L__profc_atol+46
	mov	12(r1), r12
	mov	14(r1), r13
	mov	#10, r14
	clr	r15
	call	#__mspabi_mpyl
	mov	4(r1), r15                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	mov	r13, r12
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov	16(r1), r14
	mov	r14, r11
	inc	r11
	mov	r11, 16(r1)
	mov.b	0(r14), r14
	sxt	r14
	add	#-48, r14
	mov	r14, r11
	swpb	r11
	sxt	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	cmp	r14, r13
	mov	r2, r10
	bic	r10, r15
	sub	r11, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 12(r1)
	mov	r12, 14(r1)
	jmp	.LBB46_9
.LBB46_11:
	mov	10(r1), r12
	tst	r12
	jeq	.LBB46_13
	jmp	.LBB46_12
.LBB46_12:
	mov	&.L__profc_atol+54, r12
	mov	&.L__profc_atol+52, r11
	mov	&.L__profc_atol+50, r14
	mov	&.L__profc_atol+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atol+48
	mov	r14, &.L__profc_atol+50
	mov	r13, &.L__profc_atol+52
	mov	r12, &.L__profc_atol+54
	mov	14(r1), r12
	mov	12(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB46_14
.LBB46_13:
	mov	14(r1), r14
	mov	12(r1), r15
	clr	r12
	mov	r12, r13
	sub	r15, r13
	tst	r15
	mov	r2, r11
	rra	r11
	mov	#1, r15
	bic	r11, r15
	add	r15, r14
	sub	r14, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB46_14
.LBB46_14:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	#18, r1
	pop	r10
	ret
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
                                        ; -- End function
	.globl	atoll                           ; -- Begin function atoll
	.p2align	1
	.type	atoll,@function
atoll:                                  ; @atoll
; %bb.0:
	push	r4
	push	r5
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#58, r1
	mov	r12, 56(r1)
	mov	&.L__profc_atoll+6, r12
	mov	&.L__profc_atoll+4, r11
	mov	&.L__profc_atoll+2, r14
	mov	&.L__profc_atoll, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoll
	mov	r14, &.L__profc_atoll+2
	mov	r13, &.L__profc_atoll+4
	mov	r12, &.L__profc_atoll+6
	clr	54(r1)
	clr	52(r1)
	clr	50(r1)
	clr	48(r1)
	clr	46(r1)
	jmp	.LBB47_1
.LBB47_1:                               ; =>This Inner Loop Header: Depth=1
	mov	56(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isspace
	tst	r12
	jeq	.LBB47_3
	jmp	.LBB47_2
.LBB47_2:                               ;   in Loop: Header=BB47_1 Depth=1
	mov	&.L__profc_atoll+14, r12
	mov	&.L__profc_atoll+12, r11
	mov	&.L__profc_atoll+10, r14
	mov	&.L__profc_atoll+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoll+8
	mov	r14, &.L__profc_atoll+10
	mov	r13, &.L__profc_atoll+12
	mov	r12, &.L__profc_atoll+14
	mov	56(r1), r12
	inc	r12
	mov	r12, 56(r1)
	jmp	.LBB47_1
.LBB47_3:
	mov	56(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
	cmp	#43, r12
	jeq	.LBB47_6
	jmp	.LBB47_4
.LBB47_4:
	mov	44(r1), r12                     ; 2-byte Folded Reload
	cmp	#45, r12
	jne	.LBB47_8
	jmp	.LBB47_5
.LBB47_5:
	mov	&.L__profc_atoll+30, r12
	mov	&.L__profc_atoll+28, r11
	mov	&.L__profc_atoll+26, r14
	mov	&.L__profc_atoll+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoll+24
	mov	r14, &.L__profc_atoll+26
	mov	r13, &.L__profc_atoll+28
	mov	r12, &.L__profc_atoll+30
	mov	#1, 46(r1)
	jmp	.LBB47_7
.LBB47_6:
	mov	&.L__profc_atoll+38, r12
	mov	&.L__profc_atoll+36, r11
	mov	&.L__profc_atoll+34, r14
	mov	&.L__profc_atoll+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoll+32
	mov	r14, &.L__profc_atoll+34
	mov	r13, &.L__profc_atoll+36
	mov	r12, &.L__profc_atoll+38
	jmp	.LBB47_7
.LBB47_7:
	mov	56(r1), r12
	inc	r12
	mov	r12, 56(r1)
	jmp	.LBB47_8
.LBB47_8:
	mov	&.L__profc_atoll+22, r12
	mov	&.L__profc_atoll+20, r11
	mov	&.L__profc_atoll+18, r14
	mov	&.L__profc_atoll+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoll+16
	mov	r14, &.L__profc_atoll+18
	mov	r13, &.L__profc_atoll+20
	mov	r12, &.L__profc_atoll+22
	jmp	.LBB47_9
.LBB47_9:                               ; =>This Inner Loop Header: Depth=1
	mov	56(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isdigit
	tst	r12
	jeq	.LBB47_13
	jmp	.LBB47_10
.LBB47_10:                              ;   in Loop: Header=BB47_9 Depth=1
	mov	&.L__profc_atoll+46, r12
	mov	&.L__profc_atoll+44, r11
	mov	&.L__profc_atoll+42, r14
	mov	&.L__profc_atoll+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 30(r1)                     ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoll+40
	mov	r14, &.L__profc_atoll+42
	mov	r13, &.L__profc_atoll+44
	mov	r12, &.L__profc_atoll+46
	mov	48(r1), r8
	mov	50(r1), r9
	mov	52(r1), r10
	mov	54(r1), r11
	mov	#10, r12
	clr	r15
	mov	r15, r13
	mov	r15, r14
	call	#__mspabi_mpyll
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	mov	r13, 26(r1)                     ; 2-byte Folded Spill
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	mov	r15, r14
	mov	30(r1), r15                     ; 2-byte Folded Reload
	mov	r14, 32(r1)                     ; 2-byte Folded Spill
	mov	56(r1), r14
	mov	r14, r11
	inc	r11
	mov	r11, 56(r1)
	mov.b	0(r14), r11
	sxt	r11
	add	#-48, r11
	mov	r11, 34(r1)                     ; 2-byte Folded Spill
	mov	r11, r14
	swpb	r14
	sxt	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r14, 36(r1)                     ; 2-byte Folded Spill
	cmp	r11, r12
	mov	r2, r11
	mov	r15, r12
	bic	r11, r12
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	mov	r15, 40(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jeq	.LBB47_12
; %bb.11:                               ;   in Loop: Header=BB47_9 Depth=1
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB47_12:                              ;   in Loop: Header=BB47_9 Depth=1
	mov	34(r1), r11                     ; 2-byte Folded Reload
	mov	24(r1), r15                     ; 2-byte Folded Reload
	mov	38(r1), r10                     ; 2-byte Folded Reload
	mov	36(r1), r9                      ; 2-byte Folded Reload
	mov	26(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r6                      ; 2-byte Folded Reload
	mov	28(r1), r5                      ; 2-byte Folded Reload
	mov	32(r1), r12                     ; 2-byte Folded Reload
	mov	42(r1), r8                      ; 2-byte Folded Reload
	mov	r5, r13
	sub	r9, r13
	cmp	r8, r13
	mov	r2, r4
	mov	r6, r7
	bic	r4, r7
	sub	r9, r12
	cmp	r9, r5
	mov	r2, r5
	bic	r5, r6
	sub	r6, r12
	sub	r7, r12
	sub	r8, r13
	sub	r9, r14
	sub	r10, r14
	sub	r11, r15
	mov	r15, 48(r1)
	mov	r14, 50(r1)
	mov	r13, 52(r1)
	mov	r12, 54(r1)
	jmp	.LBB47_9
.LBB47_13:
	mov	46(r1), r12
	tst	r12
	jeq	.LBB47_15
	jmp	.LBB47_14
.LBB47_14:
	mov	&.L__profc_atoll+54, r12
	mov	&.L__profc_atoll+52, r11
	mov	&.L__profc_atoll+50, r14
	mov	&.L__profc_atoll+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_atoll+48
	mov	r14, &.L__profc_atoll+50
	mov	r13, &.L__profc_atoll+52
	mov	r12, &.L__profc_atoll+54
	mov	54(r1), r12
	mov	52(r1), r13
	mov	50(r1), r14
	mov	48(r1), r15
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jmp	.LBB47_18
.LBB47_15:
	mov	54(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	52(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	48(r1), r14
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	mov	50(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	#1, r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	r12, r15
	bic	r11, r15
	mov	r15, 10(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jeq	.LBB47_17
; %bb.16:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB47_17:
	mov	12(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r11                      ; 2-byte Folded Reload
	mov	4(r1), r9                       ; 2-byte Folded Reload
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	8(r1), r8                       ; 2-byte Folded Reload
	mov	2(r1), r7                       ; 2-byte Folded Reload
	mov	14(r1), r6                      ; 2-byte Folded Reload
	clr	r14
	mov	r14, r12
	sub	r7, r12
	mov	r12, r13
	sub	r6, r13
	cmp	r6, r12
	mov	r2, r6
	mov	r8, r12
	bic	r6, r12
	tst	r7
	mov	r2, r7
	rra	r7
	bic	r7, r8
	add	r8, r15
	add	r12, r15
	mov	r14, r12
	sub	r15, r12
	mov	r14, r15
	sub	r9, r15
	add	r10, r11
	sub	r11, r14
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jmp	.LBB47_18
.LBB47_18:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	18(r1), r13                     ; 2-byte Folded Reload
	mov	20(r1), r14                     ; 2-byte Folded Reload
	mov	22(r1), r15                     ; 2-byte Folded Reload
	add	#58, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	pop	r5
	pop	r4
	ret
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
                                        ; -- End function
	.globl	bsearch                         ; -- Begin function bsearch
	.p2align	1
	.type	bsearch,@function
bsearch:                                ; @bsearch
; %bb.0:
	push	r10
	sub	#16, r1
	mov	20(r1), r11
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
	mov	r15, 6(r1)
	mov	&.L__profc_bsearch+6, r12
	mov	&.L__profc_bsearch+4, r11
	mov	&.L__profc_bsearch+2, r14
	mov	&.L__profc_bsearch, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch
	mov	r14, &.L__profc_bsearch+2
	mov	r13, &.L__profc_bsearch+4
	mov	r12, &.L__profc_bsearch+6
	jmp	.LBB48_1
.LBB48_1:                               ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	tst	r12
	jeq	.LBB48_9
	jmp	.LBB48_2
.LBB48_2:                               ;   in Loop: Header=BB48_1 Depth=1
	mov	&.L__profc_bsearch+14, r12
	mov	&.L__profc_bsearch+12, r11
	mov	&.L__profc_bsearch+10, r14
	mov	&.L__profc_bsearch+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch+8
	mov	r14, &.L__profc_bsearch+10
	mov	r13, &.L__profc_bsearch+12
	mov	r12, &.L__profc_bsearch+14
	mov	10(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	6(r1), r12
	mov	8(r1), r13
	clrc
	rrc	r13
	call	#__mspabi_mpyi
	mov	r12, r13
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	r13, r12
	mov	r12, 4(r1)
	mov	20(r1), r14
	mov	12(r1), r12
	mov	4(r1), r13
	call	r14
	mov	r12, 2(r1)
	mov	2(r1), r12
	tst	r12
	jge	.LBB48_4
	jmp	.LBB48_3
.LBB48_3:                               ;   in Loop: Header=BB48_1 Depth=1
	mov	&.L__profc_bsearch+22, r12
	mov	&.L__profc_bsearch+20, r11
	mov	&.L__profc_bsearch+18, r14
	mov	&.L__profc_bsearch+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch+16
	mov	r14, &.L__profc_bsearch+18
	mov	r13, &.L__profc_bsearch+20
	mov	r12, &.L__profc_bsearch+22
	mov	8(r1), r12
	clrc
	rrc	r12
	mov	r12, 8(r1)
	jmp	.LBB48_8
.LBB48_4:                               ;   in Loop: Header=BB48_1 Depth=1
	mov	2(r1), r12
	cmp	#1, r12
	jl	.LBB48_6
	jmp	.LBB48_5
.LBB48_5:                               ;   in Loop: Header=BB48_1 Depth=1
	mov	&.L__profc_bsearch+30, r12
	mov	&.L__profc_bsearch+28, r11
	mov	&.L__profc_bsearch+26, r14
	mov	&.L__profc_bsearch+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch+24
	mov	r14, &.L__profc_bsearch+26
	mov	r13, &.L__profc_bsearch+28
	mov	r12, &.L__profc_bsearch+30
	mov	4(r1), r12
	mov	6(r1), r13
	add	r13, r12
	mov	r12, 10(r1)
	mov	8(r1), r13
	clrc
	mov	r13, r12
	rrc	r12
	inv	r12
	add	r13, r12
	mov	r12, 8(r1)
	jmp	.LBB48_7
.LBB48_6:
	mov	4(r1), r12
	mov	r12, 14(r1)
	jmp	.LBB48_10
.LBB48_7:                               ;   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_8
.LBB48_8:                               ;   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_1
.LBB48_9:
	clr	14(r1)
	jmp	.LBB48_10
.LBB48_10:
	mov	14(r1), r12
	add	#16, r1
	pop	r10
	ret
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
                                        ; -- End function
	.globl	bsearch_r                       ; -- Begin function bsearch_r
	.p2align	1
	.type	bsearch_r,@function
bsearch_r:                              ; @bsearch_r
; %bb.0:
	push	r10
	sub	#20, r1
	mov	26(r1), r11
	mov	24(r1), r11
	mov	r12, 16(r1)
	mov	r13, 14(r1)
	mov	r14, 12(r1)
	mov	r15, 10(r1)
	mov	&.L__profc_bsearch_r+6, r12
	mov	&.L__profc_bsearch_r+4, r11
	mov	&.L__profc_bsearch_r+2, r14
	mov	&.L__profc_bsearch_r, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch_r
	mov	r14, &.L__profc_bsearch_r+2
	mov	r13, &.L__profc_bsearch_r+4
	mov	r12, &.L__profc_bsearch_r+6
	mov	14(r1), r12
	mov	r12, 8(r1)
	mov	12(r1), r12
	mov	r12, 6(r1)
	jmp	.LBB49_1
.LBB49_1:                               ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r12
	tst	r12
	jeq	.LBB49_8
	jmp	.LBB49_2
.LBB49_2:                               ;   in Loop: Header=BB49_1 Depth=1
	mov	&.L__profc_bsearch_r+14, r12
	mov	&.L__profc_bsearch_r+12, r11
	mov	&.L__profc_bsearch_r+10, r14
	mov	&.L__profc_bsearch_r+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch_r+8
	mov	r14, &.L__profc_bsearch_r+10
	mov	r13, &.L__profc_bsearch_r+12
	mov	r12, &.L__profc_bsearch_r+14
	mov	8(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	6(r1), r12
	rra	r12
	mov	10(r1), r13
	call	#__mspabi_mpyi
	mov	r12, r13
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	r13, r12
	mov	r12, 2(r1)
	mov	24(r1), r15
	mov	16(r1), r12
	mov	2(r1), r13
	mov	26(r1), r14
	call	r15
	mov	r12, 4(r1)
	mov	4(r1), r12
	tst	r12
	jne	.LBB49_4
	jmp	.LBB49_3
.LBB49_3:
	mov	&.L__profc_bsearch_r+22, r12
	mov	&.L__profc_bsearch_r+20, r11
	mov	&.L__profc_bsearch_r+18, r14
	mov	&.L__profc_bsearch_r+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch_r+16
	mov	r14, &.L__profc_bsearch_r+18
	mov	r13, &.L__profc_bsearch_r+20
	mov	r12, &.L__profc_bsearch_r+22
	mov	2(r1), r12
	mov	r12, 18(r1)
	jmp	.LBB49_9
.LBB49_4:                               ;   in Loop: Header=BB49_1 Depth=1
	mov	4(r1), r12
	cmp	#1, r12
	jl	.LBB49_6
	jmp	.LBB49_5
.LBB49_5:                               ;   in Loop: Header=BB49_1 Depth=1
	mov	&.L__profc_bsearch_r+30, r12
	mov	&.L__profc_bsearch_r+28, r11
	mov	&.L__profc_bsearch_r+26, r14
	mov	&.L__profc_bsearch_r+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bsearch_r+24
	mov	r14, &.L__profc_bsearch_r+26
	mov	r13, &.L__profc_bsearch_r+28
	mov	r12, &.L__profc_bsearch_r+30
	mov	2(r1), r12
	mov	10(r1), r13
	add	r13, r12
	mov	r12, 8(r1)
	mov	6(r1), r12
	add	#-1, r12
	mov	r12, 6(r1)
	jmp	.LBB49_6
.LBB49_6:                               ;   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_7
.LBB49_7:                               ;   in Loop: Header=BB49_1 Depth=1
	mov	6(r1), r12
	rra	r12
	mov	r12, 6(r1)
	jmp	.LBB49_1
.LBB49_8:
	clr	18(r1)
	jmp	.LBB49_9
.LBB49_9:
	mov	18(r1), r12
	add	#20, r1
	pop	r10
	ret
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
                                        ; -- End function
	.globl	div                             ; -- Begin function div
	.p2align	1
	.type	div,@function
div:                                    ; @div
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_div+6, r12
	mov	&.L__profc_div+4, r11
	mov	&.L__profc_div+2, r14
	mov	&.L__profc_div, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_div
	mov	r14, &.L__profc_div+2
	mov	r13, &.L__profc_div+4
	mov	r12, &.L__profc_div+6
	mov	6(r1), r12
	mov	4(r1), r13
	call	#__mspabi_divi
	mov	r12, r13
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 0(r12)
	mov	6(r1), r12
	mov	4(r1), r13
	call	#__mspabi_remi
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	r12, r14
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r14, 2(r13)
	add	#8, r1
	pop	r10
	ret
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
                                        ; -- End function
	.globl	imaxabs                         ; -- Begin function imaxabs
	.p2align	1
	.type	imaxabs,@function
imaxabs:                                ; @imaxabs
; %bb.0:
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#50, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 48(r1)
	mov	r14, 46(r1)
	mov	r13, 44(r1)
	mov	r12, 42(r1)
	mov	&.L__profc_imaxabs+6, r13
	mov	&.L__profc_imaxabs+4, r12
	mov	&.L__profc_imaxabs+2, r15
	mov	&.L__profc_imaxabs, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_imaxabs
	mov	r15, &.L__profc_imaxabs+2
	mov	r14, &.L__profc_imaxabs+4
	mov	r13, &.L__profc_imaxabs+6
	mov	46(r1), r13
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r13
	mov	r13, 32(r1)                     ; 2-byte Folded Spill
	mov	42(r1), r13
	mov	r13, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 38(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	jl	.LBB51_2
; %bb.1:
	mov	38(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
.LBB51_2:
	mov	32(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	40(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 26(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
	jeq	.LBB51_4
; %bb.3:
	mov	38(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
.LBB51_4:
	mov	36(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r13                     ; 2-byte Folded Reload
	mov	28(r1), r12                     ; 2-byte Folded Reload
	bis	r14, r13
	tst	r13
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	jeq	.LBB51_6
; %bb.5:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
.LBB51_6:
	mov	24(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB51_8
	jmp	.LBB51_7
.LBB51_7:
	mov	&.L__profc_imaxabs+14, r12
	mov	&.L__profc_imaxabs+12, r11
	mov	&.L__profc_imaxabs+10, r14
	mov	&.L__profc_imaxabs+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_imaxabs+8
	mov	r14, &.L__profc_imaxabs+10
	mov	r13, &.L__profc_imaxabs+12
	mov	r12, &.L__profc_imaxabs+14
	mov	48(r1), r12
	mov	46(r1), r13
	mov	44(r1), r14
	mov	42(r1), r15
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jmp	.LBB51_11
.LBB51_8:
	mov	48(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	46(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	42(r1), r14
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	mov	44(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	#1, r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	r12, r15
	bic	r11, r15
	mov	r15, 10(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jeq	.LBB51_10
; %bb.9:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB51_10:
	mov	12(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r11                      ; 2-byte Folded Reload
	mov	4(r1), r9                       ; 2-byte Folded Reload
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	8(r1), r8                       ; 2-byte Folded Reload
	mov	2(r1), r7                       ; 2-byte Folded Reload
	mov	14(r1), r6                      ; 2-byte Folded Reload
	clr	r14
	mov	r14, r12
	sub	r7, r12
	mov	r12, r13
	sub	r6, r13
	cmp	r6, r12
	mov	r2, r6
	mov	r8, r12
	bic	r6, r12
	tst	r7
	mov	r2, r7
	rra	r7
	bic	r7, r8
	add	r8, r15
	add	r12, r15
	mov	r14, r12
	sub	r15, r12
	mov	r14, r15
	sub	r9, r15
	add	r10, r11
	sub	r11, r14
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jmp	.LBB51_11
.LBB51_11:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	18(r1), r13                     ; 2-byte Folded Reload
	mov	20(r1), r14                     ; 2-byte Folded Reload
	mov	22(r1), r15                     ; 2-byte Folded Reload
	add	#50, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	ret
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
                                        ; -- End function
	.globl	imaxdiv                         ; -- Begin function imaxdiv
	.p2align	1
	.type	imaxdiv,@function
imaxdiv:                                ; @imaxdiv
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#30, r1
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	mov	52(r1), r15
	mov	50(r1), r14
	mov	48(r1), r13
	mov	46(r1), r12
	mov	44(r1), r8
	mov	42(r1), r9
	mov	40(r1), r10
	mov	38(r1), r11
	mov	r8, 28(r1)
	mov	r9, 26(r1)
	mov	r10, 24(r1)
	mov	r11, 22(r1)
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	&.L__profc_imaxdiv+6, r12
	mov	&.L__profc_imaxdiv+4, r11
	mov	&.L__profc_imaxdiv+2, r14
	mov	&.L__profc_imaxdiv, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_imaxdiv
	mov	r14, &.L__profc_imaxdiv+2
	mov	r13, &.L__profc_imaxdiv+4
	mov	r12, &.L__profc_imaxdiv+6
	mov	22(r1), r8
	mov	24(r1), r9
	mov	26(r1), r10
	mov	28(r1), r11
	mov	14(r1), r12
	mov	16(r1), r13
	mov	18(r1), r14
	mov	20(r1), r15
	call	#__mspabi_divlli
	mov	r12, r11
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, r11
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	r11, 2(r1)                      ; 2-byte Folded Spill
	mov	r14, r11
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	r11, 4(r1)                      ; 2-byte Folded Spill
	mov	r15, r11
	mov	4(r1), r15                      ; 2-byte Folded Reload
	mov	r11, 6(r12)
	mov	r15, 4(r12)
	mov	r14, 2(r12)
	mov	r13, 0(r12)
	mov	22(r1), r8
	mov	24(r1), r9
	mov	26(r1), r10
	mov	28(r1), r11
	mov	14(r1), r12
	mov	16(r1), r13
	mov	18(r1), r14
	mov	20(r1), r15
	call	#__mspabi_remlli
	mov	r12, r11
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r11, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, r11
	mov	8(r1), r13                      ; 2-byte Folded Reload
	mov	r11, 12(r1)                     ; 2-byte Folded Spill
	mov	r14, r11
	mov	10(r1), r14                     ; 2-byte Folded Reload
	mov	r15, r10
	mov	12(r1), r15                     ; 2-byte Folded Reload
	mov	r10, 14(r13)
	mov	r11, 12(r13)
	mov	r15, 10(r13)
	mov	r14, 8(r13)
	add	#30, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
                                        ; -- End function
	.globl	labs                            ; -- Begin function labs
	.p2align	1
	.type	labs,@function
labs:                                   ; @labs
; %bb.0:
	push	r9
	push	r10
	sub	#20, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	mov	&.L__profc_labs+6, r13
	mov	&.L__profc_labs+4, r12
	mov	&.L__profc_labs+2, r15
	mov	&.L__profc_labs, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_labs
	mov	r15, &.L__profc_labs+2
	mov	r14, &.L__profc_labs+4
	mov	r13, &.L__profc_labs+6
	mov	16(r1), r13
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	mov	18(r1), r13
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 12(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jl	.LBB53_2
; %bb.1:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB53_2:
	mov	10(r1), r13                     ; 2-byte Folded Reload
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	14(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jeq	.LBB53_4
; %bb.3:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
.LBB53_4:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB53_6
	jmp	.LBB53_5
.LBB53_5:
	mov	&.L__profc_labs+14, r12
	mov	&.L__profc_labs+12, r11
	mov	&.L__profc_labs+10, r14
	mov	&.L__profc_labs+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_labs+8
	mov	r14, &.L__profc_labs+10
	mov	r13, &.L__profc_labs+12
	mov	r12, &.L__profc_labs+14
	mov	18(r1), r12
	mov	16(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB53_7
.LBB53_6:
	mov	18(r1), r14
	mov	16(r1), r15
	clr	r12
	mov	r12, r13
	sub	r15, r13
	tst	r15
	mov	r2, r11
	rra	r11
	mov	#1, r15
	bic	r11, r15
	add	r15, r14
	sub	r14, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB53_7
.LBB53_7:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	#20, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
                                        ; -- End function
	.globl	ldiv                            ; -- Begin function ldiv
	.p2align	1
	.type	ldiv,@function
ldiv:                                   ; @ldiv
; %bb.0:
	push	r10
	sub	#14, r1
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	18(r1), r12
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
	mov	r14, 12(r1)
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	r15, 6(r1)
	mov	&.L__profc_ldiv+6, r12
	mov	&.L__profc_ldiv+4, r11
	mov	&.L__profc_ldiv+2, r14
	mov	&.L__profc_ldiv, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldiv
	mov	r14, &.L__profc_ldiv+2
	mov	r13, &.L__profc_ldiv+4
	mov	r12, &.L__profc_ldiv+6
	mov	10(r1), r12
	mov	12(r1), r13
	mov	6(r1), r14
	mov	8(r1), r15
	call	#__mspabi_divli
	mov	r12, r14
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, r14
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	r14, 2(r12)
	mov	r13, 0(r12)
	mov	10(r1), r12
	mov	12(r1), r13
	mov	6(r1), r14
	mov	8(r1), r15
	call	#__mspabi_remli
	mov	r12, r14
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r15
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	r15, 6(r13)
	mov	r14, 4(r13)
	add	#14, r1
	pop	r10
	ret
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
                                        ; -- End function
	.globl	llabs                           ; -- Begin function llabs
	.p2align	1
	.type	llabs,@function
llabs:                                  ; @llabs
; %bb.0:
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#50, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 48(r1)
	mov	r14, 46(r1)
	mov	r13, 44(r1)
	mov	r12, 42(r1)
	mov	&.L__profc_llabs+6, r13
	mov	&.L__profc_llabs+4, r12
	mov	&.L__profc_llabs+2, r15
	mov	&.L__profc_llabs, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_llabs
	mov	r15, &.L__profc_llabs+2
	mov	r14, &.L__profc_llabs+4
	mov	r13, &.L__profc_llabs+6
	mov	46(r1), r13
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r13
	mov	r13, 32(r1)                     ; 2-byte Folded Spill
	mov	42(r1), r13
	mov	r13, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 38(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	jl	.LBB55_2
; %bb.1:
	mov	38(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
.LBB55_2:
	mov	32(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	40(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 26(r1)                     ; 2-byte Folded Spill
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	tst	r13
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
	jeq	.LBB55_4
; %bb.3:
	mov	38(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
.LBB55_4:
	mov	36(r1), r14                     ; 2-byte Folded Reload
	mov	30(r1), r13                     ; 2-byte Folded Reload
	mov	28(r1), r12                     ; 2-byte Folded Reload
	bis	r14, r13
	tst	r13
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	jeq	.LBB55_6
; %bb.5:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
.LBB55_6:
	mov	24(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB55_8
	jmp	.LBB55_7
.LBB55_7:
	mov	&.L__profc_llabs+14, r12
	mov	&.L__profc_llabs+12, r11
	mov	&.L__profc_llabs+10, r14
	mov	&.L__profc_llabs+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_llabs+8
	mov	r14, &.L__profc_llabs+10
	mov	r13, &.L__profc_llabs+12
	mov	r12, &.L__profc_llabs+14
	mov	48(r1), r12
	mov	46(r1), r13
	mov	44(r1), r14
	mov	42(r1), r15
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jmp	.LBB55_11
.LBB55_8:
	mov	48(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	46(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	42(r1), r14
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	mov	44(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	#1, r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	r12, r15
	bic	r11, r15
	mov	r15, 10(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jeq	.LBB55_10
; %bb.9:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB55_10:
	mov	12(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r11                      ; 2-byte Folded Reload
	mov	4(r1), r9                       ; 2-byte Folded Reload
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	8(r1), r8                       ; 2-byte Folded Reload
	mov	2(r1), r7                       ; 2-byte Folded Reload
	mov	14(r1), r6                      ; 2-byte Folded Reload
	clr	r14
	mov	r14, r12
	sub	r7, r12
	mov	r12, r13
	sub	r6, r13
	cmp	r6, r12
	mov	r2, r6
	mov	r8, r12
	bic	r6, r12
	tst	r7
	mov	r2, r7
	rra	r7
	bic	r7, r8
	add	r8, r15
	add	r12, r15
	mov	r14, r12
	sub	r15, r12
	mov	r14, r15
	sub	r9, r15
	add	r10, r11
	sub	r11, r14
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jmp	.LBB55_11
.LBB55_11:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	18(r1), r13                     ; 2-byte Folded Reload
	mov	20(r1), r14                     ; 2-byte Folded Reload
	mov	22(r1), r15                     ; 2-byte Folded Reload
	add	#50, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	ret
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
                                        ; -- End function
	.globl	lldiv                           ; -- Begin function lldiv
	.p2align	1
	.type	lldiv,@function
lldiv:                                  ; @lldiv
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#30, r1
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	mov	52(r1), r15
	mov	50(r1), r14
	mov	48(r1), r13
	mov	46(r1), r12
	mov	44(r1), r8
	mov	42(r1), r9
	mov	40(r1), r10
	mov	38(r1), r11
	mov	r8, 28(r1)
	mov	r9, 26(r1)
	mov	r10, 24(r1)
	mov	r11, 22(r1)
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	&.L__profc_lldiv+6, r12
	mov	&.L__profc_lldiv+4, r11
	mov	&.L__profc_lldiv+2, r14
	mov	&.L__profc_lldiv, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_lldiv
	mov	r14, &.L__profc_lldiv+2
	mov	r13, &.L__profc_lldiv+4
	mov	r12, &.L__profc_lldiv+6
	mov	22(r1), r8
	mov	24(r1), r9
	mov	26(r1), r10
	mov	28(r1), r11
	mov	14(r1), r12
	mov	16(r1), r13
	mov	18(r1), r14
	mov	20(r1), r15
	call	#__mspabi_divlli
	mov	r12, r11
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, r11
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	r11, 2(r1)                      ; 2-byte Folded Spill
	mov	r14, r11
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	r11, 4(r1)                      ; 2-byte Folded Spill
	mov	r15, r11
	mov	4(r1), r15                      ; 2-byte Folded Reload
	mov	r11, 6(r12)
	mov	r15, 4(r12)
	mov	r14, 2(r12)
	mov	r13, 0(r12)
	mov	22(r1), r8
	mov	24(r1), r9
	mov	26(r1), r10
	mov	28(r1), r11
	mov	14(r1), r12
	mov	16(r1), r13
	mov	18(r1), r14
	mov	20(r1), r15
	call	#__mspabi_remlli
	mov	r12, r11
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r11, 10(r1)                     ; 2-byte Folded Spill
	mov	r13, r11
	mov	8(r1), r13                      ; 2-byte Folded Reload
	mov	r11, 12(r1)                     ; 2-byte Folded Spill
	mov	r14, r11
	mov	10(r1), r14                     ; 2-byte Folded Reload
	mov	r15, r10
	mov	12(r1), r15                     ; 2-byte Folded Reload
	mov	r10, 14(r13)
	mov	r11, 12(r13)
	mov	r15, 10(r13)
	mov	r14, 8(r13)
	add	#30, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
                                        ; -- End function
	.globl	wcschr                          ; -- Begin function wcschr
	.p2align	1
	.type	wcschr,@function
wcschr:                                 ; @wcschr
; %bb.0:
	push	r9
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	&.L__profc_wcschr+6, r12
	mov	&.L__profc_wcschr+4, r11
	mov	&.L__profc_wcschr+2, r14
	mov	&.L__profc_wcschr, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcschr
	mov	r14, &.L__profc_wcschr+2
	mov	r13, &.L__profc_wcschr+4
	mov	r12, &.L__profc_wcschr+6
	jmp	.LBB57_1
.LBB57_1:                               ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r12
	mov	0(r12), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB57_4
	jmp	.LBB57_2
.LBB57_2:                               ;   in Loop: Header=BB57_1 Depth=1
	mov	&.L__profc_wcschr+22, r13
	mov	&.L__profc_wcschr+20, r12
	mov	&.L__profc_wcschr+18, r15
	mov	&.L__profc_wcschr+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wcschr+16
	mov	r15, &.L__profc_wcschr+18
	mov	r14, &.L__profc_wcschr+20
	mov	r13, &.L__profc_wcschr+22
	mov	6(r1), r13
	mov	0(r13), r13
	mov	4(r1), r14
	cmp	r14, r13
	mov	r2, r15
	rra	r15
	bic	r15, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 2(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB57_4
	jmp	.LBB57_3
.LBB57_3:                               ;   in Loop: Header=BB57_1 Depth=1
	mov.b	2(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_wcschr+30, r13
	mov	&.L__profc_wcschr+28, r10
	mov	&.L__profc_wcschr+26, r15
	mov	&.L__profc_wcschr+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wcschr+24
	mov	r15, &.L__profc_wcschr+26
	mov	r14, &.L__profc_wcschr+28
	mov	r13, &.L__profc_wcschr+30
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB57_4
.LBB57_4:                               ;   in Loop: Header=BB57_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB57_7
	jmp	.LBB57_5
.LBB57_5:                               ;   in Loop: Header=BB57_1 Depth=1
	mov	&.L__profc_wcschr+14, r12
	mov	&.L__profc_wcschr+12, r11
	mov	&.L__profc_wcschr+10, r14
	mov	&.L__profc_wcschr+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcschr+8
	mov	r14, &.L__profc_wcschr+10
	mov	r13, &.L__profc_wcschr+12
	mov	r12, &.L__profc_wcschr+14
	jmp	.LBB57_6
.LBB57_6:                               ;   in Loop: Header=BB57_1 Depth=1
	mov	6(r1), r12
	incd	r12
	mov	r12, 6(r1)
	jmp	.LBB57_1
.LBB57_7:
	mov	6(r1), r12
	mov	0(r12), r12
	tst	r12
	jeq	.LBB57_9
	jmp	.LBB57_8
.LBB57_8:
	mov	&.L__profc_wcschr+38, r12
	mov	&.L__profc_wcschr+36, r11
	mov	&.L__profc_wcschr+34, r14
	mov	&.L__profc_wcschr+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcschr+32
	mov	r14, &.L__profc_wcschr+34
	mov	r13, &.L__profc_wcschr+36
	mov	r12, &.L__profc_wcschr+38
	mov	6(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB57_10
.LBB57_9:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB57_10
.LBB57_10:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#8, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        ; -- End function
	.globl	wcscmp                          ; -- Begin function wcscmp
	.p2align	1
	.type	wcscmp,@function
wcscmp:                                 ; @wcscmp
; %bb.0:
	push	r9
	push	r10
	sub	#12, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	&.L__profc_wcscmp+6, r12
	mov	&.L__profc_wcscmp+4, r11
	mov	&.L__profc_wcscmp+2, r14
	mov	&.L__profc_wcscmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcscmp
	mov	r14, &.L__profc_wcscmp+2
	mov	r13, &.L__profc_wcscmp+4
	mov	r12, &.L__profc_wcscmp+6
	jmp	.LBB58_1
.LBB58_1:                               ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r12
	mov	0(r12), r13
	mov	8(r1), r12
	mov	0(r12), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 7(r1)                      ; 1-byte Folded Spill
	jne	.LBB58_6
	jmp	.LBB58_2
.LBB58_2:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	&.L__profc_wcscmp+38, r12
	mov	&.L__profc_wcscmp+36, r11
	mov	&.L__profc_wcscmp+34, r14
	mov	&.L__profc_wcscmp+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcscmp+32
	mov	r14, &.L__profc_wcscmp+34
	mov	r13, &.L__profc_wcscmp+36
	mov	r12, &.L__profc_wcscmp+38
	mov	10(r1), r12
	mov	0(r12), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 7(r1)                      ; 1-byte Folded Spill
	jeq	.LBB58_6
	jmp	.LBB58_3
.LBB58_3:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	&.L__profc_wcscmp+46, r12
	mov	&.L__profc_wcscmp+44, r11
	mov	&.L__profc_wcscmp+42, r14
	mov	&.L__profc_wcscmp+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcscmp+40
	mov	r14, &.L__profc_wcscmp+42
	mov	r13, &.L__profc_wcscmp+44
	mov	r12, &.L__profc_wcscmp+46
	jmp	.LBB58_4
.LBB58_4:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	&.L__profc_wcscmp+22, r13
	mov	&.L__profc_wcscmp+20, r12
	mov	&.L__profc_wcscmp+18, r15
	mov	&.L__profc_wcscmp+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wcscmp+16
	mov	r15, &.L__profc_wcscmp+18
	mov	r14, &.L__profc_wcscmp+20
	mov	r13, &.L__profc_wcscmp+22
	mov	8(r1), r13
	mov	0(r13), r13
	tst	r13
	mov	r2, r14
	rra	r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 6(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 7(r1)                      ; 1-byte Folded Spill
	jeq	.LBB58_6
	jmp	.LBB58_5
.LBB58_5:                               ;   in Loop: Header=BB58_1 Depth=1
	mov.b	6(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_wcscmp+30, r13
	mov	&.L__profc_wcscmp+28, r10
	mov	&.L__profc_wcscmp+26, r15
	mov	&.L__profc_wcscmp+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wcscmp+24
	mov	r15, &.L__profc_wcscmp+26
	mov	r14, &.L__profc_wcscmp+28
	mov	r13, &.L__profc_wcscmp+30
	mov.b	r12, 7(r1)                      ; 1-byte Folded Spill
	jmp	.LBB58_6
.LBB58_6:                               ;   in Loop: Header=BB58_1 Depth=1
	mov.b	7(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB58_9
	jmp	.LBB58_7
.LBB58_7:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	&.L__profc_wcscmp+14, r12
	mov	&.L__profc_wcscmp+12, r11
	mov	&.L__profc_wcscmp+10, r14
	mov	&.L__profc_wcscmp+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcscmp+8
	mov	r14, &.L__profc_wcscmp+10
	mov	r13, &.L__profc_wcscmp+12
	mov	r12, &.L__profc_wcscmp+14
	jmp	.LBB58_8
.LBB58_8:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	10(r1), r12
	incd	r12
	mov	r12, 10(r1)
	mov	8(r1), r12
	incd	r12
	mov	r12, 8(r1)
	jmp	.LBB58_1
.LBB58_9:
	mov	10(r1), r12
	mov	0(r12), r12
	mov	8(r1), r13
	mov	0(r13), r13
	cmp	r13, r12
	jge	.LBB58_11
	jmp	.LBB58_10
.LBB58_10:
	mov	&.L__profc_wcscmp+54, r12
	mov	&.L__profc_wcscmp+52, r11
	mov	&.L__profc_wcscmp+50, r14
	mov	&.L__profc_wcscmp+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcscmp+48
	mov	r14, &.L__profc_wcscmp+50
	mov	r13, &.L__profc_wcscmp+52
	mov	r12, &.L__profc_wcscmp+54
	mov	#-1, r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jmp	.LBB58_14
.LBB58_11:
	mov	10(r1), r12
	mov	0(r12), r14
	mov	8(r1), r12
	mov	0(r12), r13
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB58_13
; %bb.12:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB58_13:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jmp	.LBB58_14
.LBB58_14:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	add	#12, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
                                        ; -- End function
	.globl	wcscpy                          ; -- Begin function wcscpy
	.p2align	1
	.type	wcscpy,@function
wcscpy:                                 ; @wcscpy
; %bb.0:
	push	r10
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	mov	&.L__profc_wcscpy+6, r12
	mov	&.L__profc_wcscpy+4, r11
	mov	&.L__profc_wcscpy+2, r14
	mov	&.L__profc_wcscpy, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcscpy
	mov	r14, &.L__profc_wcscpy+2
	mov	r13, &.L__profc_wcscpy+4
	mov	r12, &.L__profc_wcscpy+6
	mov	4(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB59_1
.LBB59_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	r12, r13
	incd	r13
	mov	r13, 2(r1)
	mov	0(r12), r12
	mov	4(r1), r13
	mov	r13, r14
	incd	r14
	mov	r14, 4(r1)
	mov	r12, 0(r13)
	tst	r12
	jeq	.LBB59_3
	jmp	.LBB59_2
.LBB59_2:                               ;   in Loop: Header=BB59_1 Depth=1
	mov	&.L__profc_wcscpy+14, r12
	mov	&.L__profc_wcscpy+12, r11
	mov	&.L__profc_wcscpy+10, r14
	mov	&.L__profc_wcscpy+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcscpy+8
	mov	r14, &.L__profc_wcscpy+10
	mov	r13, &.L__profc_wcscpy+12
	mov	r12, &.L__profc_wcscpy+14
	jmp	.LBB59_1
.LBB59_3:
	mov	0(r1), r12
	add	#6, r1
	pop	r10
	ret
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
                                        ; -- End function
	.globl	wcslen                          ; -- Begin function wcslen
	.p2align	1
	.type	wcslen,@function
wcslen:                                 ; @wcslen
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_wcslen+6, r12
	mov	&.L__profc_wcslen+4, r11
	mov	&.L__profc_wcslen+2, r14
	mov	&.L__profc_wcslen, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcslen
	mov	r14, &.L__profc_wcslen+2
	mov	r13, &.L__profc_wcslen+4
	mov	r12, &.L__profc_wcslen+6
	mov	2(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB60_1
.LBB60_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	0(r12), r12
	tst	r12
	jeq	.LBB60_4
	jmp	.LBB60_2
.LBB60_2:                               ;   in Loop: Header=BB60_1 Depth=1
	mov	&.L__profc_wcslen+14, r12
	mov	&.L__profc_wcslen+12, r11
	mov	&.L__profc_wcslen+10, r14
	mov	&.L__profc_wcslen+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcslen+8
	mov	r14, &.L__profc_wcslen+10
	mov	r13, &.L__profc_wcslen+12
	mov	r12, &.L__profc_wcslen+14
	jmp	.LBB60_3
.LBB60_3:                               ;   in Loop: Header=BB60_1 Depth=1
	mov	2(r1), r12
	incd	r12
	mov	r12, 2(r1)
	jmp	.LBB60_1
.LBB60_4:
	mov	2(r1), r12
	mov	0(r1), r13
	sub	r13, r12
	rra	r12
	add	#4, r1
	pop	r10
	ret
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
                                        ; -- End function
	.globl	wcsncmp                         ; -- Begin function wcsncmp
	.p2align	1
	.type	wcsncmp,@function
wcsncmp:                                ; @wcsncmp
; %bb.0:
	push	r9
	push	r10
	sub	#16, r1
	mov	r12, 14(r1)
	mov	r13, 12(r1)
	mov	r14, 10(r1)
	mov	&.L__profc_wcsncmp+6, r12
	mov	&.L__profc_wcsncmp+4, r11
	mov	&.L__profc_wcsncmp+2, r14
	mov	&.L__profc_wcsncmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp
	mov	r14, &.L__profc_wcsncmp+2
	mov	r13, &.L__profc_wcsncmp+4
	mov	r12, &.L__profc_wcsncmp+6
	jmp	.LBB61_1
.LBB61_1:                               ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jeq	.LBB61_8
	jmp	.LBB61_2
.LBB61_2:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	&.L__profc_wcsncmp+54, r12
	mov	&.L__profc_wcsncmp+52, r11
	mov	&.L__profc_wcsncmp+50, r14
	mov	&.L__profc_wcsncmp+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp+48
	mov	r14, &.L__profc_wcsncmp+50
	mov	r13, &.L__profc_wcsncmp+52
	mov	r12, &.L__profc_wcsncmp+54
	mov	14(r1), r12
	mov	0(r12), r13
	mov	12(r1), r12
	mov	0(r12), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jne	.LBB61_8
	jmp	.LBB61_3
.LBB61_3:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	&.L__profc_wcsncmp+62, r12
	mov	&.L__profc_wcsncmp+60, r11
	mov	&.L__profc_wcsncmp+58, r14
	mov	&.L__profc_wcsncmp+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp+56
	mov	r14, &.L__profc_wcsncmp+58
	mov	r13, &.L__profc_wcsncmp+60
	mov	r12, &.L__profc_wcsncmp+62
	jmp	.LBB61_4
.LBB61_4:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	&.L__profc_wcsncmp+38, r12
	mov	&.L__profc_wcsncmp+36, r11
	mov	&.L__profc_wcsncmp+34, r14
	mov	&.L__profc_wcsncmp+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp+32
	mov	r14, &.L__profc_wcsncmp+34
	mov	r13, &.L__profc_wcsncmp+36
	mov	r12, &.L__profc_wcsncmp+38
	mov	14(r1), r12
	mov	0(r12), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jeq	.LBB61_8
	jmp	.LBB61_5
.LBB61_5:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	&.L__profc_wcsncmp+46, r12
	mov	&.L__profc_wcsncmp+44, r11
	mov	&.L__profc_wcsncmp+42, r14
	mov	&.L__profc_wcsncmp+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp+40
	mov	r14, &.L__profc_wcsncmp+42
	mov	r13, &.L__profc_wcsncmp+44
	mov	r12, &.L__profc_wcsncmp+46
	jmp	.LBB61_6
.LBB61_6:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	&.L__profc_wcsncmp+22, r13
	mov	&.L__profc_wcsncmp+20, r12
	mov	&.L__profc_wcsncmp+18, r15
	mov	&.L__profc_wcsncmp+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wcsncmp+16
	mov	r15, &.L__profc_wcsncmp+18
	mov	r14, &.L__profc_wcsncmp+20
	mov	r13, &.L__profc_wcsncmp+22
	mov	12(r1), r13
	mov	0(r13), r13
	tst	r13
	mov	r2, r14
	rra	r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 8(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jeq	.LBB61_8
	jmp	.LBB61_7
.LBB61_7:                               ;   in Loop: Header=BB61_1 Depth=1
	mov.b	8(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_wcsncmp+30, r13
	mov	&.L__profc_wcsncmp+28, r10
	mov	&.L__profc_wcsncmp+26, r15
	mov	&.L__profc_wcsncmp+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wcsncmp+24
	mov	r15, &.L__profc_wcsncmp+26
	mov	r14, &.L__profc_wcsncmp+28
	mov	r13, &.L__profc_wcsncmp+30
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jmp	.LBB61_8
.LBB61_8:                               ;   in Loop: Header=BB61_1 Depth=1
	mov.b	9(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB61_11
	jmp	.LBB61_9
.LBB61_9:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	&.L__profc_wcsncmp+14, r12
	mov	&.L__profc_wcsncmp+12, r11
	mov	&.L__profc_wcsncmp+10, r14
	mov	&.L__profc_wcsncmp+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp+8
	mov	r14, &.L__profc_wcsncmp+10
	mov	r13, &.L__profc_wcsncmp+12
	mov	r12, &.L__profc_wcsncmp+14
	jmp	.LBB61_10
.LBB61_10:                              ;   in Loop: Header=BB61_1 Depth=1
	mov	10(r1), r12
	add	#-1, r12
	mov	r12, 10(r1)
	mov	14(r1), r12
	incd	r12
	mov	r12, 14(r1)
	mov	12(r1), r12
	incd	r12
	mov	r12, 12(r1)
	jmp	.LBB61_1
.LBB61_11:
	mov	10(r1), r12
	tst	r12
	jeq	.LBB61_18
	jmp	.LBB61_12
.LBB61_12:
	mov	&.L__profc_wcsncmp+70, r12
	mov	&.L__profc_wcsncmp+68, r11
	mov	&.L__profc_wcsncmp+66, r14
	mov	&.L__profc_wcsncmp+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp+64
	mov	r14, &.L__profc_wcsncmp+66
	mov	r13, &.L__profc_wcsncmp+68
	mov	r12, &.L__profc_wcsncmp+70
	mov	14(r1), r12
	mov	0(r12), r12
	mov	12(r1), r13
	mov	0(r13), r13
	cmp	r13, r12
	jge	.LBB61_14
	jmp	.LBB61_13
.LBB61_13:
	mov	&.L__profc_wcsncmp+78, r12
	mov	&.L__profc_wcsncmp+76, r11
	mov	&.L__profc_wcsncmp+74, r14
	mov	&.L__profc_wcsncmp+72, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wcsncmp+72
	mov	r14, &.L__profc_wcsncmp+74
	mov	r13, &.L__profc_wcsncmp+76
	mov	r12, &.L__profc_wcsncmp+78
	mov	#-1, r12
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_17
.LBB61_14:
	mov	14(r1), r12
	mov	0(r12), r14
	mov	12(r1), r12
	mov	0(r12), r13
	clr	r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	r14, r13
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jl	.LBB61_16
; %bb.15:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
.LBB61_16:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_17
.LBB61_17:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_19
.LBB61_18:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_19
.LBB61_19:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#16, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        ; -- End function
	.globl	wmemchr                         ; -- Begin function wmemchr
	.p2align	1
	.type	wmemchr,@function
wmemchr:                                ; @wmemchr
; %bb.0:
	push	r9
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_wmemchr+6, r12
	mov	&.L__profc_wmemchr+4, r11
	mov	&.L__profc_wmemchr+2, r14
	mov	&.L__profc_wmemchr, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemchr
	mov	r14, &.L__profc_wmemchr+2
	mov	r13, &.L__profc_wmemchr+4
	mov	r12, &.L__profc_wmemchr+6
	jmp	.LBB62_1
.LBB62_1:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB62_4
	jmp	.LBB62_2
.LBB62_2:                               ;   in Loop: Header=BB62_1 Depth=1
	mov	&.L__profc_wmemchr+22, r13
	mov	&.L__profc_wmemchr+20, r12
	mov	&.L__profc_wmemchr+18, r15
	mov	&.L__profc_wmemchr+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wmemchr+16
	mov	r15, &.L__profc_wmemchr+18
	mov	r14, &.L__profc_wmemchr+20
	mov	r13, &.L__profc_wmemchr+22
	mov	8(r1), r13
	mov	0(r13), r13
	mov	6(r1), r14
	cmp	r14, r13
	mov	r2, r15
	rra	r15
	bic	r15, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 2(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB62_4
	jmp	.LBB62_3
.LBB62_3:                               ;   in Loop: Header=BB62_1 Depth=1
	mov.b	2(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_wmemchr+30, r13
	mov	&.L__profc_wmemchr+28, r10
	mov	&.L__profc_wmemchr+26, r15
	mov	&.L__profc_wmemchr+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wmemchr+24
	mov	r15, &.L__profc_wmemchr+26
	mov	r14, &.L__profc_wmemchr+28
	mov	r13, &.L__profc_wmemchr+30
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB62_4
.LBB62_4:                               ;   in Loop: Header=BB62_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB62_7
	jmp	.LBB62_5
.LBB62_5:                               ;   in Loop: Header=BB62_1 Depth=1
	mov	&.L__profc_wmemchr+14, r12
	mov	&.L__profc_wmemchr+12, r11
	mov	&.L__profc_wmemchr+10, r14
	mov	&.L__profc_wmemchr+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemchr+8
	mov	r14, &.L__profc_wmemchr+10
	mov	r13, &.L__profc_wmemchr+12
	mov	r12, &.L__profc_wmemchr+14
	jmp	.LBB62_6
.LBB62_6:                               ;   in Loop: Header=BB62_1 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	mov	8(r1), r12
	incd	r12
	mov	r12, 8(r1)
	jmp	.LBB62_1
.LBB62_7:
	mov	4(r1), r12
	tst	r12
	jeq	.LBB62_9
	jmp	.LBB62_8
.LBB62_8:
	mov	&.L__profc_wmemchr+38, r12
	mov	&.L__profc_wmemchr+36, r11
	mov	&.L__profc_wmemchr+34, r14
	mov	&.L__profc_wmemchr+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemchr+32
	mov	r14, &.L__profc_wmemchr+34
	mov	r13, &.L__profc_wmemchr+36
	mov	r12, &.L__profc_wmemchr+38
	mov	8(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB62_10
.LBB62_9:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB62_10
.LBB62_10:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#10, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        ; -- End function
	.globl	wmemcmp                         ; -- Begin function wmemcmp
	.p2align	1
	.type	wmemcmp,@function
wmemcmp:                                ; @wmemcmp
; %bb.0:
	push	r9
	push	r10
	sub	#16, r1
	mov	r12, 14(r1)
	mov	r13, 12(r1)
	mov	r14, 10(r1)
	mov	&.L__profc_wmemcmp+6, r12
	mov	&.L__profc_wmemcmp+4, r11
	mov	&.L__profc_wmemcmp+2, r14
	mov	&.L__profc_wmemcmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemcmp
	mov	r14, &.L__profc_wmemcmp+2
	mov	r13, &.L__profc_wmemcmp+4
	mov	r12, &.L__profc_wmemcmp+6
	jmp	.LBB63_1
.LBB63_1:                               ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jeq	.LBB63_4
	jmp	.LBB63_2
.LBB63_2:                               ;   in Loop: Header=BB63_1 Depth=1
	mov	&.L__profc_wmemcmp+22, r12
	mov	&.L__profc_wmemcmp+20, r11
	mov	&.L__profc_wmemcmp+18, r14
	mov	&.L__profc_wmemcmp+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemcmp+16
	mov	r14, &.L__profc_wmemcmp+18
	mov	r13, &.L__profc_wmemcmp+20
	mov	r12, &.L__profc_wmemcmp+22
	mov	14(r1), r12
	mov	0(r12), r13
	mov	12(r1), r12
	mov	0(r12), r14
	cmp	r14, r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 8(r1)                      ; 1-byte Folded Spill
	cmp	r14, r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jne	.LBB63_4
	jmp	.LBB63_3
.LBB63_3:                               ;   in Loop: Header=BB63_1 Depth=1
	mov.b	8(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_wmemcmp+30, r13
	mov	&.L__profc_wmemcmp+28, r10
	mov	&.L__profc_wmemcmp+26, r15
	mov	&.L__profc_wmemcmp+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_wmemcmp+24
	mov	r15, &.L__profc_wmemcmp+26
	mov	r14, &.L__profc_wmemcmp+28
	mov	r13, &.L__profc_wmemcmp+30
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jmp	.LBB63_4
.LBB63_4:                               ;   in Loop: Header=BB63_1 Depth=1
	mov.b	9(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB63_7
	jmp	.LBB63_5
.LBB63_5:                               ;   in Loop: Header=BB63_1 Depth=1
	mov	&.L__profc_wmemcmp+14, r12
	mov	&.L__profc_wmemcmp+12, r11
	mov	&.L__profc_wmemcmp+10, r14
	mov	&.L__profc_wmemcmp+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemcmp+8
	mov	r14, &.L__profc_wmemcmp+10
	mov	r13, &.L__profc_wmemcmp+12
	mov	r12, &.L__profc_wmemcmp+14
	jmp	.LBB63_6
.LBB63_6:                               ;   in Loop: Header=BB63_1 Depth=1
	mov	10(r1), r12
	add	#-1, r12
	mov	r12, 10(r1)
	mov	14(r1), r12
	incd	r12
	mov	r12, 14(r1)
	mov	12(r1), r12
	incd	r12
	mov	r12, 12(r1)
	jmp	.LBB63_1
.LBB63_7:
	mov	10(r1), r12
	tst	r12
	jeq	.LBB63_14
	jmp	.LBB63_8
.LBB63_8:
	mov	&.L__profc_wmemcmp+38, r12
	mov	&.L__profc_wmemcmp+36, r11
	mov	&.L__profc_wmemcmp+34, r14
	mov	&.L__profc_wmemcmp+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemcmp+32
	mov	r14, &.L__profc_wmemcmp+34
	mov	r13, &.L__profc_wmemcmp+36
	mov	r12, &.L__profc_wmemcmp+38
	mov	14(r1), r12
	mov	0(r12), r12
	mov	12(r1), r13
	mov	0(r13), r13
	cmp	r13, r12
	jge	.LBB63_10
	jmp	.LBB63_9
.LBB63_9:
	mov	&.L__profc_wmemcmp+46, r12
	mov	&.L__profc_wmemcmp+44, r11
	mov	&.L__profc_wmemcmp+42, r14
	mov	&.L__profc_wmemcmp+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemcmp+40
	mov	r14, &.L__profc_wmemcmp+42
	mov	r13, &.L__profc_wmemcmp+44
	mov	r12, &.L__profc_wmemcmp+46
	mov	#-1, r12
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_13
.LBB63_10:
	mov	14(r1), r12
	mov	0(r12), r14
	mov	12(r1), r12
	mov	0(r12), r13
	clr	r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	r14, r13
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jl	.LBB63_12
; %bb.11:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
.LBB63_12:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_13
.LBB63_13:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_15
.LBB63_14:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_15
.LBB63_15:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#16, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
                                        ; -- End function
	.globl	wmemcpy                         ; -- Begin function wmemcpy
	.p2align	1
	.type	wmemcpy,@function
wmemcpy:                                ; @wmemcpy
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
	mov	&.L__profc_wmemcpy+6, r12
	mov	&.L__profc_wmemcpy+4, r11
	mov	&.L__profc_wmemcpy+2, r14
	mov	&.L__profc_wmemcpy, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemcpy
	mov	r14, &.L__profc_wmemcpy+2
	mov	r13, &.L__profc_wmemcpy+4
	mov	r12, &.L__profc_wmemcpy+6
	mov	6(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB64_1
.LBB64_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 2(r1)
	tst	r12
	jeq	.LBB64_3
	jmp	.LBB64_2
.LBB64_2:                               ;   in Loop: Header=BB64_1 Depth=1
	mov	&.L__profc_wmemcpy+14, r12
	mov	&.L__profc_wmemcpy+12, r11
	mov	&.L__profc_wmemcpy+10, r14
	mov	&.L__profc_wmemcpy+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemcpy+8
	mov	r14, &.L__profc_wmemcpy+10
	mov	r13, &.L__profc_wmemcpy+12
	mov	r12, &.L__profc_wmemcpy+14
	mov	4(r1), r12
	mov	r12, r13
	incd	r13
	mov	r13, 4(r1)
	mov	0(r12), r13
	mov	6(r1), r12
	mov	r12, r14
	incd	r14
	mov	r14, 6(r1)
	mov	r13, 0(r12)
	jmp	.LBB64_1
.LBB64_3:
	mov	0(r1), r12
	add	#8, r1
	pop	r10
	ret
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
                                        ; -- End function
	.globl	wmemmove                        ; -- Begin function wmemmove
	.p2align	1
	.type	wmemmove,@function
wmemmove:                               ; @wmemmove
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
	mov	&.L__profc_wmemmove+6, r12
	mov	&.L__profc_wmemmove+4, r11
	mov	&.L__profc_wmemmove+2, r14
	mov	&.L__profc_wmemmove, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemmove
	mov	r14, &.L__profc_wmemmove+2
	mov	r13, &.L__profc_wmemmove+4
	mov	r12, &.L__profc_wmemmove+6
	mov	6(r1), r12
	mov	r12, 0(r1)
	mov	6(r1), r12
	mov	4(r1), r13
	cmp	r13, r12
	jne	.LBB65_2
	jmp	.LBB65_1
.LBB65_1:
	mov	&.L__profc_wmemmove+14, r12
	mov	&.L__profc_wmemmove+12, r11
	mov	&.L__profc_wmemmove+10, r14
	mov	&.L__profc_wmemmove+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemmove+8
	mov	r14, &.L__profc_wmemmove+10
	mov	r13, &.L__profc_wmemmove+12
	mov	r12, &.L__profc_wmemmove+14
	mov	6(r1), r12
	mov	r12, 8(r1)
	jmp	.LBB65_12
.LBB65_2:
	mov	6(r1), r12
	mov	4(r1), r13
	sub	r13, r12
	mov	2(r1), r13
	add	r13, r13
	cmp	r13, r12
	jhs	.LBB65_7
	jmp	.LBB65_3
.LBB65_3:
	mov	&.L__profc_wmemmove+22, r12
	mov	&.L__profc_wmemmove+20, r11
	mov	&.L__profc_wmemmove+18, r14
	mov	&.L__profc_wmemmove+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemmove+16
	mov	r14, &.L__profc_wmemmove+18
	mov	r13, &.L__profc_wmemmove+20
	mov	r12, &.L__profc_wmemmove+22
	jmp	.LBB65_4
.LBB65_4:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 2(r1)
	tst	r12
	jeq	.LBB65_6
	jmp	.LBB65_5
.LBB65_5:                               ;   in Loop: Header=BB65_4 Depth=1
	mov	&.L__profc_wmemmove+30, r12
	mov	&.L__profc_wmemmove+28, r11
	mov	&.L__profc_wmemmove+26, r14
	mov	&.L__profc_wmemmove+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemmove+24
	mov	r14, &.L__profc_wmemmove+26
	mov	r13, &.L__profc_wmemmove+28
	mov	r12, &.L__profc_wmemmove+30
	mov	4(r1), r12
	mov	2(r1), r14
	add	r14, r14
	add	r14, r12
	mov	0(r12), r13
	mov	6(r1), r12
	add	r14, r12
	mov	r13, 0(r12)
	jmp	.LBB65_4
.LBB65_6:
	jmp	.LBB65_11
.LBB65_7:
	jmp	.LBB65_8
.LBB65_8:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 2(r1)
	tst	r12
	jeq	.LBB65_10
	jmp	.LBB65_9
.LBB65_9:                               ;   in Loop: Header=BB65_8 Depth=1
	mov	&.L__profc_wmemmove+38, r12
	mov	&.L__profc_wmemmove+36, r11
	mov	&.L__profc_wmemmove+34, r14
	mov	&.L__profc_wmemmove+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemmove+32
	mov	r14, &.L__profc_wmemmove+34
	mov	r13, &.L__profc_wmemmove+36
	mov	r12, &.L__profc_wmemmove+38
	mov	4(r1), r12
	mov	r12, r13
	incd	r13
	mov	r13, 4(r1)
	mov	0(r12), r13
	mov	6(r1), r12
	mov	r12, r14
	incd	r14
	mov	r14, 6(r1)
	mov	r13, 0(r12)
	jmp	.LBB65_8
.LBB65_10:
	jmp	.LBB65_11
.LBB65_11:
	mov	0(r1), r12
	mov	r12, 8(r1)
	jmp	.LBB65_12
.LBB65_12:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
                                        ; -- End function
	.globl	wmemset                         ; -- Begin function wmemset
	.p2align	1
	.type	wmemset,@function
wmemset:                                ; @wmemset
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
	mov	&.L__profc_wmemset+6, r12
	mov	&.L__profc_wmemset+4, r11
	mov	&.L__profc_wmemset+2, r14
	mov	&.L__profc_wmemset, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemset
	mov	r14, &.L__profc_wmemset+2
	mov	r13, &.L__profc_wmemset+4
	mov	r12, &.L__profc_wmemset+6
	mov	6(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB66_1
.LBB66_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 2(r1)
	tst	r12
	jeq	.LBB66_3
	jmp	.LBB66_2
.LBB66_2:                               ;   in Loop: Header=BB66_1 Depth=1
	mov	&.L__profc_wmemset+14, r12
	mov	&.L__profc_wmemset+12, r11
	mov	&.L__profc_wmemset+10, r14
	mov	&.L__profc_wmemset+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_wmemset+8
	mov	r14, &.L__profc_wmemset+10
	mov	r13, &.L__profc_wmemset+12
	mov	r12, &.L__profc_wmemset+14
	mov	4(r1), r13
	mov	6(r1), r12
	mov	r12, r14
	incd	r14
	mov	r14, 6(r1)
	mov	r13, 0(r12)
	jmp	.LBB66_1
.LBB66_3:
	mov	0(r1), r12
	add	#8, r1
	pop	r10
	ret
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
                                        ; -- End function
	.globl	bcopy                           ; -- Begin function bcopy
	.p2align	1
	.type	bcopy,@function
bcopy:                                  ; @bcopy
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_bcopy+6, r12
	mov	&.L__profc_bcopy+4, r11
	mov	&.L__profc_bcopy+2, r14
	mov	&.L__profc_bcopy, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bcopy
	mov	r14, &.L__profc_bcopy+2
	mov	r13, &.L__profc_bcopy+4
	mov	r12, &.L__profc_bcopy+6
	mov	8(r1), r12
	mov	r12, 2(r1)
	mov	6(r1), r12
	mov	r12, 0(r1)
	mov	2(r1), r12
	mov	0(r1), r13
	cmp	r13, r12
	jhs	.LBB67_6
	jmp	.LBB67_1
.LBB67_1:
	mov	&.L__profc_bcopy+14, r12
	mov	&.L__profc_bcopy+12, r11
	mov	&.L__profc_bcopy+10, r14
	mov	&.L__profc_bcopy+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bcopy+8
	mov	r14, &.L__profc_bcopy+10
	mov	r13, &.L__profc_bcopy+12
	mov	r12, &.L__profc_bcopy+14
	mov	4(r1), r13
	mov	2(r1), r12
	add	r13, r12
	mov	r12, 2(r1)
	mov	4(r1), r13
	mov	0(r1), r12
	add	r13, r12
	mov	r12, 0(r1)
	jmp	.LBB67_2
.LBB67_2:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB67_5
	jmp	.LBB67_3
.LBB67_3:                               ;   in Loop: Header=BB67_2 Depth=1
	mov	&.L__profc_bcopy+22, r12
	mov	&.L__profc_bcopy+20, r11
	mov	&.L__profc_bcopy+18, r14
	mov	&.L__profc_bcopy+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bcopy+16
	mov	r14, &.L__profc_bcopy+18
	mov	r13, &.L__profc_bcopy+20
	mov	r12, &.L__profc_bcopy+22
	mov	2(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 2(r1)
	mov.b	-1(r12), r13
	mov	0(r1), r12
	mov	r12, r14
	add	#-1, r14
	mov	r14, 0(r1)
	mov.b	r13, -1(r12)
	jmp	.LBB67_4
.LBB67_4:                               ;   in Loop: Header=BB67_2 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	jmp	.LBB67_2
.LBB67_5:
	jmp	.LBB67_13
.LBB67_6:
	mov	2(r1), r12
	mov	0(r1), r13
	cmp	r13, r12
	jeq	.LBB67_12
	jmp	.LBB67_7
.LBB67_7:
	mov	&.L__profc_bcopy+30, r12
	mov	&.L__profc_bcopy+28, r11
	mov	&.L__profc_bcopy+26, r14
	mov	&.L__profc_bcopy+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bcopy+24
	mov	r14, &.L__profc_bcopy+26
	mov	r13, &.L__profc_bcopy+28
	mov	r12, &.L__profc_bcopy+30
	jmp	.LBB67_8
.LBB67_8:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB67_11
	jmp	.LBB67_9
.LBB67_9:                               ;   in Loop: Header=BB67_8 Depth=1
	mov	&.L__profc_bcopy+38, r12
	mov	&.L__profc_bcopy+36, r11
	mov	&.L__profc_bcopy+34, r14
	mov	&.L__profc_bcopy+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bcopy+32
	mov	r14, &.L__profc_bcopy+34
	mov	r13, &.L__profc_bcopy+36
	mov	r12, &.L__profc_bcopy+38
	mov	2(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 2(r1)
	mov.b	0(r12), r13
	mov	0(r1), r12
	mov	r12, r14
	inc	r14
	mov	r14, 0(r1)
	mov.b	r13, 0(r12)
	jmp	.LBB67_10
.LBB67_10:                              ;   in Loop: Header=BB67_8 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	jmp	.LBB67_8
.LBB67_11:
	jmp	.LBB67_12
.LBB67_12:
	jmp	.LBB67_13
.LBB67_13:
	add	#10, r1
	pop	r10
	ret
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
                                        ; -- End function
	.globl	rotl64                          ; -- Begin function rotl64
	.p2align	1
	.type	rotl64,@function
rotl64:                                 ; @rotl64
; %bb.0:
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#156, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	168(r1), r11
	mov	r15, 154(r1)
	mov	r14, 152(r1)
	mov	r13, 150(r1)
	mov	r12, 148(r1)
	mov	&.L__profc_rotl64+6, r12
	mov	&.L__profc_rotl64+4, r11
	mov	&.L__profc_rotl64+2, r14
	mov	&.L__profc_rotl64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotl64
	mov	r14, &.L__profc_rotl64+2
	mov	r13, &.L__profc_rotl64+4
	mov	r12, &.L__profc_rotl64+6
	mov	148(r1), r13
	mov	150(r1), r14
	mov	152(r1), r15
	mov	154(r1), r11
	mov.b	168(r1), r12
	mov.b	r12, 99(r1)                     ; 1-byte Folded Spill
	mov.b	r11, r10
	mov.b	r10, 100(r1)                    ; 1-byte Folded Spill
	mov.b	r10, 146(r1)
	swpb	r11
                                        ; kill: def $r11b killed $r11b killed $r11
	mov.b	r11, 101(r1)                    ; 1-byte Folded Spill
	mov.b	r11, 147(r1)
	mov.b	r15, r11
	mov.b	r11, 102(r1)                    ; 1-byte Folded Spill
	mov.b	r11, 144(r1)
	swpb	r15
                                        ; kill: def $r15b killed $r15b killed $r15
	mov.b	r15, 103(r1)                    ; 1-byte Folded Spill
	mov.b	r15, 145(r1)
	mov.b	r14, r15
	mov.b	r15, 104(r1)                    ; 1-byte Folded Spill
	mov.b	r15, 142(r1)
	swpb	r14
                                        ; kill: def $r14b killed $r14b killed $r14
	mov.b	r14, 105(r1)                    ; 1-byte Folded Spill
	mov.b	r14, 143(r1)
	mov.b	r13, r14
	mov.b	r14, 106(r1)                    ; 1-byte Folded Spill
	mov.b	r14, 140(r1)
	swpb	r13
                                        ; kill: def $r13b killed $r13b killed $r13
	mov.b	r13, 107(r1)                    ; 1-byte Folded Spill
	mov.b	r13, 141(r1)
	clrc
	mov.b	r12, r14
	rrc.b	r14
	rra.b	r14
	rra.b	r14
	and.b	#7, r14
	clr.b	r13
	sub.b	r14, r13
	mov.b	r13, r14
	sxt	r14
	mov	r1, r13
	add	#132, r13
	add	#8, r13
	add	r14, r13
	mov	r13, 108(r1)                    ; 2-byte Folded Spill
	clr.b	139(r1)
	clr.b	138(r1)
	clr.b	137(r1)
	clr.b	136(r1)
	clr.b	135(r1)
	clr.b	134(r1)
	clr.b	133(r1)
	clr.b	132(r1)
	mov.b	6(r13), r14
	mov.b	7(r13), r13
	swpb	r13
	bis	r14, r13
	and.b	#7, r12
	mov.b	r12, 111(r1)                    ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 112(r1)                    ; 2-byte Folded Spill
	mov.b	r12, 115(r1)                    ; 1-byte Folded Spill
	jeq	.LBB68_2
.LBB68_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	115(r1), r12                    ; 1-byte Folded Reload
	mov	112(r1), r13                    ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 112(r1)                    ; 2-byte Folded Spill
	mov.b	r12, 115(r1)                    ; 1-byte Folded Spill
	jne	.LBB68_1
.LBB68_2:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	108(r1), r13                    ; 2-byte Folded Reload
	mov	112(r1), r14                    ; 2-byte Folded Reload
	mov	r14, 90(r1)                     ; 2-byte Folded Spill
	mov.b	4(r13), r14
	mov.b	5(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 92(r1)                     ; 2-byte Folded Spill
	clrc
	rrc	r13
	xor.b	#15, r12
	mov.b	r12, 95(r1)                     ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 96(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 98(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_4
.LBB68_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	98(r1), r12                     ; 1-byte Folded Reload
	mov	96(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 96(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 98(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_3
.LBB68_4:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	92(r1), r13                     ; 2-byte Folded Reload
	mov	90(r1), r14                     ; 2-byte Folded Reload
	mov	96(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 84(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 86(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 89(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_6
.LBB68_5:                               ; =>This Inner Loop Header: Depth=1
	mov.b	89(r1), r12                     ; 1-byte Folded Reload
	mov	86(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 86(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 89(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_5
.LBB68_6:
	mov.b	111(r1), r14                    ; 1-byte Folded Reload
	mov	108(r1), r13                    ; 2-byte Folded Reload
	mov	86(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 74(r1)                     ; 2-byte Folded Spill
	mov.b	2(r13), r12
	mov.b	3(r13), r13
	swpb	r13
	bis	r12, r13
	mov	r13, 76(r1)                     ; 2-byte Folded Spill
	clrc
	rrc	r13
	mov.b	#15, r12
	mov.b	r12, 79(r1)                     ; 1-byte Folded Spill
	bic.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 80(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 83(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_8
.LBB68_7:                               ; =>This Inner Loop Header: Depth=1
	mov.b	83(r1), r12                     ; 1-byte Folded Reload
	mov	80(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 80(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 83(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_7
.LBB68_8:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	76(r1), r13                     ; 2-byte Folded Reload
	mov	74(r1), r14                     ; 2-byte Folded Reload
	mov	80(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 68(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 70(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 73(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_10
.LBB68_9:                               ; =>This Inner Loop Header: Depth=1
	mov.b	73(r1), r12                     ; 1-byte Folded Reload
	mov	70(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 70(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 73(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_9
.LBB68_10:
	mov.b	95(r1), r12                     ; 1-byte Folded Reload
	mov	108(r1), r13                    ; 2-byte Folded Reload
	mov	70(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 60(r1)                     ; 2-byte Folded Spill
	mov.b	0(r13), r14
	mov.b	1(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 62(r1)                     ; 2-byte Folded Spill
	clrc
	rrc	r13
	cmp.b	#0, r12
	mov	r13, 64(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 67(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_12
.LBB68_11:                              ; =>This Inner Loop Header: Depth=1
	mov.b	67(r1), r12                     ; 1-byte Folded Reload
	mov	64(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 64(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 67(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_11
.LBB68_12:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	62(r1), r13                     ; 2-byte Folded Reload
	mov	60(r1), r14                     ; 2-byte Folded Reload
	mov	64(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 54(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 59(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_14
.LBB68_13:                              ; =>This Inner Loop Header: Depth=1
	mov.b	59(r1), r12                     ; 1-byte Folded Reload
	mov	56(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 59(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_13
.LBB68_14:
	mov.b	99(r1), r13                     ; 1-byte Folded Reload
	mov.b	107(r1), r12                    ; 1-byte Folded Reload
	mov.b	106(r1), r14                    ; 1-byte Folded Reload
	mov.b	105(r1), r15                    ; 1-byte Folded Reload
	mov.b	104(r1), r11                    ; 1-byte Folded Reload
	mov.b	103(r1), r10                    ; 1-byte Folded Reload
	mov.b	102(r1), r9                     ; 1-byte Folded Reload
	mov.b	101(r1), r8                     ; 1-byte Folded Reload
	mov.b	100(r1), r7                     ; 1-byte Folded Reload
	mov	56(r1), r6                      ; 2-byte Folded Reload
	mov	r6, 44(r1)                      ; 2-byte Folded Spill
	mov.b	r7, 122(r1)
	mov.b	r8, 123(r1)
	mov.b	r9, 120(r1)
	mov.b	r10, 121(r1)
	mov.b	r11, 118(r1)
	mov.b	r15, 119(r1)
	mov.b	r14, 116(r1)
	mov.b	r12, 117(r1)
	mov.b	#64, r12
	sub.b	r13, r12
	clrc
	mov.b	r12, r13
	rrc.b	r13
	rra.b	r13
	rra.b	r13
	and.b	#7, r13
	mov.b	r13, r14
	mov	r1, r13
	add	#116, r13
	add	r14, r13
	mov	r13, 46(r1)                     ; 2-byte Folded Spill
	clr.b	131(r1)
	clr.b	130(r1)
	clr.b	129(r1)
	clr.b	128(r1)
	clr.b	127(r1)
	clr.b	126(r1)
	clr.b	125(r1)
	clr.b	124(r1)
	mov.b	0(r13), r14
	mov.b	1(r13), r13
	swpb	r13
	bis	r14, r13
	and.b	#7, r12
	mov.b	r12, 49(r1)                     ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 53(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_16
.LBB68_15:                              ; =>This Inner Loop Header: Depth=1
	mov.b	53(r1), r12                     ; 1-byte Folded Reload
	mov	50(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 53(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_15
.LBB68_16:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	46(r1), r13                     ; 2-byte Folded Reload
	mov	50(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 34(r1)                     ; 2-byte Folded Spill
	mov.b	2(r13), r14
	mov.b	3(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	add	r13, r13
	xor.b	#15, r12
	mov.b	r12, 39(r1)                     ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 40(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 43(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_18
.LBB68_17:                              ; =>This Inner Loop Header: Depth=1
	mov.b	43(r1), r12                     ; 1-byte Folded Reload
	mov	40(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 40(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 43(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_17
.LBB68_18:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	46(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r14                     ; 2-byte Folded Reload
	mov	40(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 26(r1)                     ; 2-byte Folded Spill
	mov.b	4(r13), r14
	mov.b	5(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 28(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 33(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_20
.LBB68_19:                              ; =>This Inner Loop Header: Depth=1
	mov.b	33(r1), r12                     ; 1-byte Folded Reload
	mov	30(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 33(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_19
.LBB68_20:
	mov.b	39(r1), r12                     ; 1-byte Folded Reload
	mov	46(r1), r13                     ; 2-byte Folded Reload
	mov	30(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov.b	6(r13), r14
	mov.b	7(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	add	r13, r13
	cmp.b	#0, r12
	mov	r13, 22(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 25(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_22
.LBB68_21:                              ; =>This Inner Loop Header: Depth=1
	mov.b	25(r1), r12                     ; 1-byte Folded Reload
	mov	22(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 22(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 25(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_21
.LBB68_22:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	36(r1), r13                     ; 2-byte Folded Reload
	mov	18(r1), r14                     ; 2-byte Folded Reload
	mov	22(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 12(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 14(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 17(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_24
.LBB68_23:                              ; =>This Inner Loop Header: Depth=1
	mov.b	17(r1), r12                     ; 1-byte Folded Reload
	mov	14(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 14(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 17(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_23
.LBB68_24:
	mov.b	49(r1), r14                     ; 1-byte Folded Reload
	mov.b	79(r1), r12                     ; 1-byte Folded Reload
	mov	28(r1), r13                     ; 2-byte Folded Reload
	mov	14(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 6(r1)                      ; 2-byte Folded Spill
	add	r13, r13
	bic.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jeq	.LBB68_26
.LBB68_25:                              ; =>This Inner Loop Header: Depth=1
	mov.b	11(r1), r12                     ; 1-byte Folded Reload
	mov	8(r1), r13                      ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jne	.LBB68_25
.LBB68_26:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	20(r1), r13                     ; 2-byte Folded Reload
	mov	6(r1), r14                      ; 2-byte Folded Reload
	mov	8(r1), r15                      ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB68_28
.LBB68_27:                              ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB68_27
.LBB68_28:
	mov	84(r1), r15                     ; 2-byte Folded Reload
	mov	26(r1), r10                     ; 2-byte Folded Reload
	mov	44(r1), r12                     ; 2-byte Folded Reload
	mov	12(r1), r9                      ; 2-byte Folded Reload
	mov	68(r1), r14                     ; 2-byte Folded Reload
	mov	0(r1), r8                       ; 2-byte Folded Reload
	mov	54(r1), r13                     ; 2-byte Folded Reload
	mov	2(r1), r11                      ; 2-byte Folded Reload
	bis	r8, r13
	bis	r9, r14
	bis	r10, r12
	bis	r11, r15
	add	#156, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	ret
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
                                        ; -- End function
	.globl	rotr64                          ; -- Begin function rotr64
	.p2align	1
	.type	rotr64,@function
rotr64:                                 ; @rotr64
; %bb.0:
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#156, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	168(r1), r11
	mov	r15, 154(r1)
	mov	r14, 152(r1)
	mov	r13, 150(r1)
	mov	r12, 148(r1)
	mov	&.L__profc_rotr64+6, r12
	mov	&.L__profc_rotr64+4, r11
	mov	&.L__profc_rotr64+2, r14
	mov	&.L__profc_rotr64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotr64
	mov	r14, &.L__profc_rotr64+2
	mov	r13, &.L__profc_rotr64+4
	mov	r12, &.L__profc_rotr64+6
	mov	148(r1), r13
	mov	150(r1), r14
	mov	152(r1), r15
	mov	154(r1), r11
	mov.b	168(r1), r12
	mov.b	r12, 99(r1)                     ; 1-byte Folded Spill
	mov.b	r11, r10
	mov.b	r10, 100(r1)                    ; 1-byte Folded Spill
	mov.b	r10, 138(r1)
	swpb	r11
                                        ; kill: def $r11b killed $r11b killed $r11
	mov.b	r11, 101(r1)                    ; 1-byte Folded Spill
	mov.b	r11, 139(r1)
	mov.b	r15, r11
	mov.b	r11, 102(r1)                    ; 1-byte Folded Spill
	mov.b	r11, 136(r1)
	swpb	r15
                                        ; kill: def $r15b killed $r15b killed $r15
	mov.b	r15, 103(r1)                    ; 1-byte Folded Spill
	mov.b	r15, 137(r1)
	mov.b	r14, r15
	mov.b	r15, 104(r1)                    ; 1-byte Folded Spill
	mov.b	r15, 134(r1)
	swpb	r14
                                        ; kill: def $r14b killed $r14b killed $r14
	mov.b	r14, 105(r1)                    ; 1-byte Folded Spill
	mov.b	r14, 135(r1)
	mov.b	r13, r14
	mov.b	r14, 106(r1)                    ; 1-byte Folded Spill
	mov.b	r14, 132(r1)
	swpb	r13
                                        ; kill: def $r13b killed $r13b killed $r13
	mov.b	r13, 107(r1)                    ; 1-byte Folded Spill
	mov.b	r13, 133(r1)
	clrc
	mov.b	r12, r13
	rrc.b	r13
	rra.b	r13
	rra.b	r13
	and.b	#7, r13
	mov.b	r13, r14
	mov	r1, r13
	add	#132, r13
	add	r14, r13
	mov	r13, 108(r1)                    ; 2-byte Folded Spill
	clr.b	147(r1)
	clr.b	146(r1)
	clr.b	145(r1)
	clr.b	144(r1)
	clr.b	143(r1)
	clr.b	142(r1)
	clr.b	141(r1)
	clr.b	140(r1)
	mov.b	0(r13), r14
	mov.b	1(r13), r13
	swpb	r13
	bis	r14, r13
	and.b	#7, r12
	mov.b	r12, 111(r1)                    ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 112(r1)                    ; 2-byte Folded Spill
	mov.b	r12, 115(r1)                    ; 1-byte Folded Spill
	jeq	.LBB69_2
.LBB69_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	115(r1), r12                    ; 1-byte Folded Reload
	mov	112(r1), r13                    ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 112(r1)                    ; 2-byte Folded Spill
	mov.b	r12, 115(r1)                    ; 1-byte Folded Spill
	jne	.LBB69_1
.LBB69_2:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	108(r1), r13                    ; 2-byte Folded Reload
	mov	112(r1), r14                    ; 2-byte Folded Reload
	mov	r14, 90(r1)                     ; 2-byte Folded Spill
	mov.b	2(r13), r14
	mov.b	3(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 92(r1)                     ; 2-byte Folded Spill
	add	r13, r13
	xor.b	#15, r12
	mov.b	r12, 95(r1)                     ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 96(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 98(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_4
.LBB69_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	98(r1), r12                     ; 1-byte Folded Reload
	mov	96(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 96(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 98(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_3
.LBB69_4:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	108(r1), r13                    ; 2-byte Folded Reload
	mov	90(r1), r14                     ; 2-byte Folded Reload
	mov	96(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 82(r1)                     ; 2-byte Folded Spill
	mov.b	4(r13), r14
	mov.b	5(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 84(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 86(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 89(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_6
.LBB69_5:                               ; =>This Inner Loop Header: Depth=1
	mov.b	89(r1), r12                     ; 1-byte Folded Reload
	mov	86(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 86(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 89(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_5
.LBB69_6:
	mov.b	95(r1), r12                     ; 1-byte Folded Reload
	mov	108(r1), r13                    ; 2-byte Folded Reload
	mov	86(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 74(r1)                     ; 2-byte Folded Spill
	mov.b	6(r13), r14
	mov.b	7(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 76(r1)                     ; 2-byte Folded Spill
	add	r13, r13
	cmp.b	#0, r12
	mov	r13, 78(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 81(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_8
.LBB69_7:                               ; =>This Inner Loop Header: Depth=1
	mov.b	81(r1), r12                     ; 1-byte Folded Reload
	mov	78(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 78(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 81(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_7
.LBB69_8:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	92(r1), r13                     ; 2-byte Folded Reload
	mov	74(r1), r14                     ; 2-byte Folded Reload
	mov	78(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 68(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 70(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 73(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_10
.LBB69_9:                               ; =>This Inner Loop Header: Depth=1
	mov.b	73(r1), r12                     ; 1-byte Folded Reload
	mov	70(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 70(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 73(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_9
.LBB69_10:
	mov.b	111(r1), r14                    ; 1-byte Folded Reload
	mov	84(r1), r13                     ; 2-byte Folded Reload
	mov	70(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 60(r1)                     ; 2-byte Folded Spill
	add	r13, r13
	mov.b	#15, r12
	mov.b	r12, 63(r1)                     ; 1-byte Folded Spill
	bic.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 64(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 67(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_12
.LBB69_11:                              ; =>This Inner Loop Header: Depth=1
	mov.b	67(r1), r12                     ; 1-byte Folded Reload
	mov	64(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 64(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 67(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_11
.LBB69_12:
	mov.b	111(r1), r12                    ; 1-byte Folded Reload
	mov	76(r1), r13                     ; 2-byte Folded Reload
	mov	60(r1), r14                     ; 2-byte Folded Reload
	mov	64(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 54(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 59(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_14
.LBB69_13:                              ; =>This Inner Loop Header: Depth=1
	mov.b	59(r1), r12                     ; 1-byte Folded Reload
	mov	56(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 59(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_13
.LBB69_14:
	mov.b	99(r1), r13                     ; 1-byte Folded Reload
	mov.b	107(r1), r12                    ; 1-byte Folded Reload
	mov.b	106(r1), r14                    ; 1-byte Folded Reload
	mov.b	105(r1), r15                    ; 1-byte Folded Reload
	mov.b	104(r1), r11                    ; 1-byte Folded Reload
	mov.b	103(r1), r10                    ; 1-byte Folded Reload
	mov.b	102(r1), r9                     ; 1-byte Folded Reload
	mov.b	101(r1), r8                     ; 1-byte Folded Reload
	mov.b	100(r1), r7                     ; 1-byte Folded Reload
	mov	56(r1), r6                      ; 2-byte Folded Reload
	mov	r6, 44(r1)                      ; 2-byte Folded Spill
	mov.b	r7, 130(r1)
	mov.b	r8, 131(r1)
	mov.b	r9, 128(r1)
	mov.b	r10, 129(r1)
	mov.b	r11, 126(r1)
	mov.b	r15, 127(r1)
	mov.b	r14, 124(r1)
	mov.b	r12, 125(r1)
	mov.b	#64, r12
	sub.b	r13, r12
	clrc
	mov.b	r12, r14
	rrc.b	r14
	rra.b	r14
	rra.b	r14
	and.b	#7, r14
	clr.b	r13
	sub.b	r14, r13
	mov.b	r13, r14
	sxt	r14
	mov	r1, r13
	add	#116, r13
	add	#8, r13
	add	r14, r13
	mov	r13, 46(r1)                     ; 2-byte Folded Spill
	clr.b	123(r1)
	clr.b	122(r1)
	clr.b	121(r1)
	clr.b	120(r1)
	clr.b	119(r1)
	clr.b	118(r1)
	clr.b	117(r1)
	clr.b	116(r1)
	mov.b	6(r13), r14
	mov.b	7(r13), r13
	swpb	r13
	bis	r14, r13
	and.b	#7, r12
	mov.b	r12, 49(r1)                     ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 53(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_16
.LBB69_15:                              ; =>This Inner Loop Header: Depth=1
	mov.b	53(r1), r12                     ; 1-byte Folded Reload
	mov	50(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 53(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_15
.LBB69_16:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	46(r1), r13                     ; 2-byte Folded Reload
	mov	50(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 34(r1)                     ; 2-byte Folded Spill
	mov.b	4(r13), r14
	mov.b	5(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clrc
	rrc	r13
	xor.b	#15, r12
	mov.b	r12, 39(r1)                     ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 40(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 43(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_18
.LBB69_17:                              ; =>This Inner Loop Header: Depth=1
	mov.b	43(r1), r12                     ; 1-byte Folded Reload
	mov	40(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 40(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 43(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_17
.LBB69_18:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	36(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r14                     ; 2-byte Folded Reload
	mov	40(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 33(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_20
.LBB69_19:                              ; =>This Inner Loop Header: Depth=1
	mov.b	33(r1), r12                     ; 1-byte Folded Reload
	mov	30(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 33(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_19
.LBB69_20:
	mov.b	49(r1), r14                     ; 1-byte Folded Reload
	mov.b	63(r1), r12                     ; 1-byte Folded Reload
	mov	46(r1), r13                     ; 2-byte Folded Reload
	mov	30(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 20(r1)                     ; 2-byte Folded Spill
	mov.b	2(r13), r15
	mov.b	3(r13), r13
	swpb	r13
	bis	r15, r13
	mov	r13, 22(r1)                     ; 2-byte Folded Spill
	clrc
	rrc	r13
	bic.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 24(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 27(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_22
.LBB69_21:                              ; =>This Inner Loop Header: Depth=1
	mov.b	27(r1), r12                     ; 1-byte Folded Reload
	mov	24(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 24(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 27(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_21
.LBB69_22:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	22(r1), r13                     ; 2-byte Folded Reload
	mov	20(r1), r14                     ; 2-byte Folded Reload
	mov	24(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 14(r1)                     ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 16(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 19(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_24
.LBB69_23:                              ; =>This Inner Loop Header: Depth=1
	mov.b	19(r1), r12                     ; 1-byte Folded Reload
	mov	16(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 16(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 19(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_23
.LBB69_24:
	mov.b	39(r1), r12                     ; 1-byte Folded Reload
	mov	46(r1), r13                     ; 2-byte Folded Reload
	mov	16(r1), r14                     ; 2-byte Folded Reload
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	mov.b	0(r13), r14
	mov.b	1(r13), r13
	swpb	r13
	bis	r14, r13
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	clrc
	rrc	r13
	cmp.b	#0, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jeq	.LBB69_26
.LBB69_25:                              ; =>This Inner Loop Header: Depth=1
	mov.b	13(r1), r12                     ; 1-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jne	.LBB69_25
.LBB69_26:
	mov.b	49(r1), r12                     ; 1-byte Folded Reload
	mov	8(r1), r13                      ; 2-byte Folded Reload
	mov	6(r1), r14                      ; 2-byte Folded Reload
	mov	10(r1), r15                     ; 2-byte Folded Reload
	bis	r15, r14
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB69_28
.LBB69_27:                              ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB69_27
.LBB69_28:
	mov	28(r1), r11                     ; 2-byte Folded Reload
	mov	44(r1), r15                     ; 2-byte Folded Reload
	mov	82(r1), r12                     ; 2-byte Folded Reload
	mov	14(r1), r9                      ; 2-byte Folded Reload
	mov	68(r1), r14                     ; 2-byte Folded Reload
	mov	0(r1), r8                       ; 2-byte Folded Reload
	mov	54(r1), r13                     ; 2-byte Folded Reload
	mov	2(r1), r10                      ; 2-byte Folded Reload
	bis	r8, r13
	bis	r9, r14
	bis	r10, r12
	bis	r11, r15
	add	#156, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	ret
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
                                        ; -- End function
	.globl	rotl32                          ; -- Begin function rotl32
	.p2align	1
	.type	rotl32,@function
rotl32:                                 ; @rotl32
; %bb.0:
	push	r10
	sub	#16, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r14, 10(r1)
	mov	&.L__profc_rotl32+6, r12
	mov	&.L__profc_rotl32+4, r11
	mov	&.L__profc_rotl32+2, r14
	mov	&.L__profc_rotl32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotl32
	mov	r14, &.L__profc_rotl32+2
	mov	r13, &.L__profc_rotl32+4
	mov	r12, &.L__profc_rotl32+6
	mov	12(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov.b	10(r1), r14
	mov.b	r14, r15
	mov.b	r15, 1(r1)                      ; 1-byte Folded Spill
	call	#__mspabi_slll
	mov.b	1(r1), r15                      ; 1-byte Folded Reload
	mov	r12, r14
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	mov	r13, r14
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	r14, 8(r1)                      ; 2-byte Folded Spill
	mov.b	#32, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	r12, r15
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r14
	mov	8(r1), r13                      ; 2-byte Folded Reload
	bis	r15, r12
	bis	r14, r13
	add	#16, r1
	pop	r10
	ret
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
                                        ; -- End function
	.globl	rotr32                          ; -- Begin function rotr32
	.p2align	1
	.type	rotr32,@function
rotr32:                                 ; @rotr32
; %bb.0:
	push	r10
	sub	#16, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r14, 10(r1)
	mov	&.L__profc_rotr32+6, r12
	mov	&.L__profc_rotr32+4, r11
	mov	&.L__profc_rotr32+2, r14
	mov	&.L__profc_rotr32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotr32
	mov	r14, &.L__profc_rotr32+2
	mov	r13, &.L__profc_rotr32+4
	mov	r12, &.L__profc_rotr32+6
	mov	12(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov.b	10(r1), r14
	mov.b	r14, r15
	mov.b	r15, 1(r1)                      ; 1-byte Folded Spill
	call	#__mspabi_srll
	mov.b	1(r1), r15                      ; 1-byte Folded Reload
	mov	r12, r14
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	mov	r13, r14
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	r14, 8(r1)                      ; 2-byte Folded Spill
	mov.b	#32, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_slll
	mov	r12, r15
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r14
	mov	8(r1), r13                      ; 2-byte Folded Reload
	bis	r15, r12
	bis	r14, r13
	add	#16, r1
	pop	r10
	ret
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
                                        ; -- End function
	.globl	rotl_sz                         ; -- Begin function rotl_sz
	.p2align	1
	.type	rotl_sz,@function
rotl_sz:                                ; @rotl_sz
; %bb.0:
	push	r10
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
	mov	&.L__profc_rotl_sz+6, r12
	mov	&.L__profc_rotl_sz+4, r11
	mov	&.L__profc_rotl_sz+2, r14
	mov	&.L__profc_rotl_sz, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotl_sz
	mov	r14, &.L__profc_rotl_sz+2
	mov	r13, &.L__profc_rotl_sz+4
	mov	r12, &.L__profc_rotl_sz+6
	mov	16(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov.b	14(r1), r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jeq	.LBB72_2
.LBB72_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	13(r1), r12                     ; 1-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jne	.LBB72_1
.LBB72_2:
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov.b	9(r1), r14                      ; 1-byte Folded Reload
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov.b	#16, r12
	sub.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB72_4
.LBB72_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB72_3
.LBB72_4:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	bis	r13, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
                                        ; -- End function
	.globl	rotr_sz                         ; -- Begin function rotr_sz
	.p2align	1
	.type	rotr_sz,@function
rotr_sz:                                ; @rotr_sz
; %bb.0:
	push	r10
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
	mov	&.L__profc_rotr_sz+6, r12
	mov	&.L__profc_rotr_sz+4, r11
	mov	&.L__profc_rotr_sz+2, r14
	mov	&.L__profc_rotr_sz, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotr_sz
	mov	r14, &.L__profc_rotr_sz+2
	mov	r13, &.L__profc_rotr_sz+4
	mov	r12, &.L__profc_rotr_sz+6
	mov	16(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov.b	14(r1), r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jeq	.LBB73_2
.LBB73_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	13(r1), r12                     ; 1-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jne	.LBB73_1
.LBB73_2:
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov.b	9(r1), r14                      ; 1-byte Folded Reload
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov.b	#16, r12
	sub.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB73_4
.LBB73_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB73_3
.LBB73_4:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	bis	r13, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
                                        ; -- End function
	.globl	rotl16                          ; -- Begin function rotl16
	.p2align	1
	.type	rotl16,@function
rotl16:                                 ; @rotl16
; %bb.0:
	push	r10
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
	mov	&.L__profc_rotl16+6, r12
	mov	&.L__profc_rotl16+4, r11
	mov	&.L__profc_rotl16+2, r14
	mov	&.L__profc_rotl16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotl16
	mov	r14, &.L__profc_rotl16+2
	mov	r13, &.L__profc_rotl16+4
	mov	r12, &.L__profc_rotl16+6
	mov	16(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov.b	14(r1), r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jeq	.LBB74_2
.LBB74_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	13(r1), r12                     ; 1-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jne	.LBB74_1
.LBB74_2:
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov.b	9(r1), r14                      ; 1-byte Folded Reload
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov.b	#16, r12
	sub.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB74_4
.LBB74_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB74_3
.LBB74_4:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	bis	r13, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
                                        ; -- End function
	.globl	rotr16                          ; -- Begin function rotr16
	.p2align	1
	.type	rotr16,@function
rotr16:                                 ; @rotr16
; %bb.0:
	push	r10
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
	mov	&.L__profc_rotr16+6, r12
	mov	&.L__profc_rotr16+4, r11
	mov	&.L__profc_rotr16+2, r14
	mov	&.L__profc_rotr16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotr16
	mov	r14, &.L__profc_rotr16+2
	mov	r13, &.L__profc_rotr16+4
	mov	r12, &.L__profc_rotr16+6
	mov	16(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov.b	14(r1), r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jeq	.LBB75_2
.LBB75_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	13(r1), r12                     ; 1-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jne	.LBB75_1
.LBB75_2:
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov.b	9(r1), r14                      ; 1-byte Folded Reload
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov.b	#16, r12
	sub.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB75_4
.LBB75_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB75_3
.LBB75_4:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	bis	r13, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
                                        ; -- End function
	.globl	rotl8                           ; -- Begin function rotl8
	.p2align	1
	.type	rotl8,@function
rotl8:                                  ; @rotl8
; %bb.0:
	push	r10
	sub	#18, r1
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 17(r1)
	mov	r13, 14(r1)
	mov	&.L__profc_rotl8+6, r12
	mov	&.L__profc_rotl8+4, r11
	mov	&.L__profc_rotl8+2, r14
	mov	&.L__profc_rotl8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotl8
	mov	r14, &.L__profc_rotl8+2
	mov	r13, &.L__profc_rotl8+4
	mov	r12, &.L__profc_rotl8+6
	mov.b	17(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov.b	14(r1), r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jeq	.LBB76_2
.LBB76_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	13(r1), r12                     ; 1-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jne	.LBB76_1
.LBB76_2:
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov.b	9(r1), r14                      ; 1-byte Folded Reload
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov.b	#8, r12
	sub.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB76_4
.LBB76_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB76_3
.LBB76_4:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	bis	r13, r12
	mov.b	r12, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
                                        ; -- End function
	.globl	rotr8                           ; -- Begin function rotr8
	.p2align	1
	.type	rotr8,@function
rotr8:                                  ; @rotr8
; %bb.0:
	push	r10
	sub	#18, r1
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 17(r1)
	mov	r13, 14(r1)
	mov	&.L__profc_rotr8+6, r12
	mov	&.L__profc_rotr8+4, r11
	mov	&.L__profc_rotr8+2, r14
	mov	&.L__profc_rotr8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_rotr8
	mov	r14, &.L__profc_rotr8+2
	mov	r13, &.L__profc_rotr8+4
	mov	r12, &.L__profc_rotr8+6
	mov.b	17(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov.b	14(r1), r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	cmp.b	#0, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jeq	.LBB77_2
.LBB77_1:                               ; =>This Inner Loop Header: Depth=1
	mov.b	13(r1), r12                     ; 1-byte Folded Reload
	mov	10(r1), r13                     ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	mov.b	r12, 13(r1)                     ; 1-byte Folded Spill
	jne	.LBB77_1
.LBB77_2:
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov.b	9(r1), r14                      ; 1-byte Folded Reload
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov.b	#8, r12
	sub.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB77_4
.LBB77_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	r13, r13
	sub.b	#1, r12
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB77_3
.LBB77_4:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	bis	r13, r12
	mov.b	r12, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
                                        ; -- End function
	.globl	bswap_16                        ; -- Begin function bswap_16
	.p2align	1
	.type	bswap_16,@function
bswap_16:                               ; @bswap_16
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	&.L__profc_bswap_16+6, r12
	mov	&.L__profc_bswap_16+4, r11
	mov	&.L__profc_bswap_16+2, r14
	mov	&.L__profc_bswap_16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bswap_16
	mov	r14, &.L__profc_bswap_16+2
	mov	r13, &.L__profc_bswap_16+4
	mov	r12, &.L__profc_bswap_16+6
	mov	#255, 0(r1)
	mov	2(r1), r14
	mov.b	0(r1), r13
	mov	r14, r12
	swpb	r12
	and	r13, r12
	and	r14, r13
	swpb	r13
	bis	r13, r12
	add	#4, r1
	pop	r10
	ret
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
                                        ; -- End function
	.globl	bswap_32                        ; -- Begin function bswap_32
	.p2align	1
	.type	bswap_32,@function
bswap_32:                               ; @bswap_32
; %bb.0:
	push	r9
	push	r10
	sub	#8, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	&.L__profc_bswap_32+6, r12
	mov	&.L__profc_bswap_32+4, r11
	mov	&.L__profc_bswap_32+2, r14
	mov	&.L__profc_bswap_32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bswap_32
	mov	r14, &.L__profc_bswap_32+2
	mov	r13, &.L__profc_bswap_32+4
	mov	r12, &.L__profc_bswap_32+6
	clr	2(r1)
	mov	#255, 0(r1)
	mov	4(r1), r15
	mov	6(r1), r10
	mov	0(r1), r11
	mov	r11, r14
	mov.b	r14, r14
	mov	r10, r12
	swpb	r12
	and	r14, r12
	mov	r10, r9
	and	r11, r9
	mov	r9, r13
	swpb	r13
	mov.b	r13, r13
	mov.b	r9, r9
	swpb	r9
	bis	r9, r12
	mov	r15, r9
	swpb	r9
	mov.b	r9, r9
	mov.b	r10, r10
	swpb	r10
	bis	r9, r10
	and	r10, r11
	bis	r11, r13
	and	r15, r14
	swpb	r14
	bis	r14, r13
	add	#8, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
                                        ; -- End function
	.globl	bswap_64                        ; -- Begin function bswap_64
	.p2align	1
	.type	bswap_64,@function
bswap_64:                               ; @bswap_64
; %bb.0:
	push	r4
	push	r5
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#26, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 24(r1)
	mov	r14, 22(r1)
	mov	r13, 20(r1)
	mov	r12, 18(r1)
	mov	&.L__profc_bswap_64+6, r12
	mov	&.L__profc_bswap_64+4, r11
	mov	&.L__profc_bswap_64+2, r14
	mov	&.L__profc_bswap_64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_bswap_64
	mov	r14, &.L__profc_bswap_64+2
	mov	r13, &.L__profc_bswap_64+4
	mov	r12, &.L__profc_bswap_64+6
	clr	16(r1)
	clr	14(r1)
	clr	12(r1)
	mov	#255, 10(r1)
	mov	18(r1), r10
	mov	20(r1), r8
	mov	22(r1), r5
	mov	24(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	12(r1), r4
	mov	10(r1), r9
	mov	r9, r11
	mov.b	r11, r11
	mov	r11, r7
	swpb	r7
	mov	r13, r12
	and	r7, r12
	mov	r13, r14
	and	r9, r14
	mov	r9, r15
	swpb	r15
	mov.b	r15, r15
	mov	r4, r6
	mov.b	r6, r6
	swpb	r6
	bis	r15, r6
	and	r6, r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r5, r13
	and	r7, r13
	mov	r14, r15
	mov.b	r15, r15
	bis	r12, r15
	mov	4(r1), r12                      ; 2-byte Folded Reload
	swpb	r15
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	bis	r14, r13
	swpb	r13
	mov.b	r13, r13
	mov	r5, r14
	and	r9, r14
	and	r4, r12
	mov	r12, r15
	swpb	r15
	mov.b	r15, r15
	mov.b	r12, r12
	swpb	r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	0(r1), r12                      ; 2-byte Folded Reload
	bis	r12, r14
	mov	r14, r12
	mov.b	r12, r12
	swpb	r12
	bis	r13, r12
	mov	2(r1), r13                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	mov	4(r1), r12                      ; 2-byte Folded Reload
	swpb	r14
	mov.b	r14, r14
	bis	r13, r14
	mov	r5, r13
	swpb	r13
	mov.b	r13, r13
	mov.b	r12, r12
	swpb	r12
	bis	r13, r12
	mov	6(r1), r13                      ; 2-byte Folded Reload
	and	r12, r4
	mov	r8, r12
	swpb	r12
	mov.b	r12, r12
	mov.b	r5, r5
	swpb	r5
	bis	r12, r5
	mov	r9, r12
	and	r5, r12
	bis	r12, r14
	mov	8(r1), r12                      ; 2-byte Folded Reload
	bis	r4, r15
	and	r5, r6
	mov	r10, r5
	swpb	r5
	mov.b	r5, r5
	mov.b	r8, r8
	swpb	r8
	bis	r5, r8
	and	r8, r7
	bis	r6, r15
	bis	r7, r14
	and	r8, r9
	bis	r9, r15
	and	r10, r11
	swpb	r11
	bis	r11, r15
	add	#26, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	pop	r5
	pop	r4
	ret
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
                                        ; -- End function
	.globl	ffs                             ; -- Begin function ffs
	.p2align	1
	.type	ffs,@function
ffs:                                    ; @ffs
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 6(r1)
	mov	&.L__profc_ffs+6, r12
	mov	&.L__profc_ffs+4, r11
	mov	&.L__profc_ffs+2, r14
	mov	&.L__profc_ffs, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ffs
	mov	r14, &.L__profc_ffs+2
	mov	r13, &.L__profc_ffs+4
	mov	r12, &.L__profc_ffs+6
	clr	4(r1)
	jmp	.LBB81_1
.LBB81_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB81_3 Depth 2
	mov	4(r1), r12
	cmp	#16, r12
	jhs	.LBB81_8
	jmp	.LBB81_2
.LBB81_2:                               ;   in Loop: Header=BB81_1 Depth=1
	mov	&.L__profc_ffs+14, r12
	mov	&.L__profc_ffs+12, r11
	mov	&.L__profc_ffs+10, r14
	mov	&.L__profc_ffs+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ffs+8
	mov	r14, &.L__profc_ffs+10
	mov	r13, &.L__profc_ffs+12
	mov	r12, &.L__profc_ffs+14
	mov	6(r1), r13
	mov.b	4(r1), r12
	cmp.b	#0, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB81_4
.LBB81_3:                               ;   Parent Loop BB81_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
	mov	0(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB81_3
.LBB81_4:                               ;   in Loop: Header=BB81_1 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jeq	.LBB81_6
	jmp	.LBB81_5
.LBB81_5:
	mov	&.L__profc_ffs+22, r12
	mov	&.L__profc_ffs+20, r11
	mov	&.L__profc_ffs+18, r14
	mov	&.L__profc_ffs+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ffs+16
	mov	r14, &.L__profc_ffs+18
	mov	r13, &.L__profc_ffs+20
	mov	r12, &.L__profc_ffs+22
	mov	4(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB81_9
.LBB81_6:                               ;   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_7
.LBB81_7:                               ;   in Loop: Header=BB81_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB81_1
.LBB81_8:
	clr	8(r1)
	jmp	.LBB81_9
.LBB81_9:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
                                        ; -- End function
	.globl	libiberty_ffs                   ; -- Begin function libiberty_ffs
	.p2align	1
	.type	libiberty_ffs,@function
libiberty_ffs:                          ; @libiberty_ffs
; %bb.0:
	push	r10
	sub	#6, r1
	mov	r12, 2(r1)
	mov	&.L__profc_libiberty_ffs+6, r12
	mov	&.L__profc_libiberty_ffs+4, r11
	mov	&.L__profc_libiberty_ffs+2, r14
	mov	&.L__profc_libiberty_ffs, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_libiberty_ffs
	mov	r14, &.L__profc_libiberty_ffs+2
	mov	r13, &.L__profc_libiberty_ffs+4
	mov	r12, &.L__profc_libiberty_ffs+6
	mov	2(r1), r12
	tst	r12
	jne	.LBB82_2
	jmp	.LBB82_1
.LBB82_1:
	mov	&.L__profc_libiberty_ffs+14, r12
	mov	&.L__profc_libiberty_ffs+12, r11
	mov	&.L__profc_libiberty_ffs+10, r14
	mov	&.L__profc_libiberty_ffs+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_libiberty_ffs+8
	mov	r14, &.L__profc_libiberty_ffs+10
	mov	r13, &.L__profc_libiberty_ffs+12
	mov	r12, &.L__profc_libiberty_ffs+14
	clr	4(r1)
	jmp	.LBB82_7
.LBB82_2:
	mov	#1, 0(r1)
	jmp	.LBB82_3
.LBB82_3:                               ; =>This Inner Loop Header: Depth=1
	mov.b	2(r1), r12
	bit.b	#1, r12
	jne	.LBB82_6
	jmp	.LBB82_4
.LBB82_4:                               ;   in Loop: Header=BB82_3 Depth=1
	mov	&.L__profc_libiberty_ffs+22, r12
	mov	&.L__profc_libiberty_ffs+20, r11
	mov	&.L__profc_libiberty_ffs+18, r14
	mov	&.L__profc_libiberty_ffs+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_libiberty_ffs+16
	mov	r14, &.L__profc_libiberty_ffs+18
	mov	r13, &.L__profc_libiberty_ffs+20
	mov	r12, &.L__profc_libiberty_ffs+22
	mov	2(r1), r12
	rra	r12
	mov	r12, 2(r1)
	jmp	.LBB82_5
.LBB82_5:                               ;   in Loop: Header=BB82_3 Depth=1
	mov	0(r1), r12
	inc	r12
	mov	r12, 0(r1)
	jmp	.LBB82_3
.LBB82_6:
	mov	0(r1), r12
	mov	r12, 4(r1)
	jmp	.LBB82_7
.LBB82_7:
	mov	4(r1), r12
	add	#6, r1
	pop	r10
	ret
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
                                        ; -- End function
	.globl	gl_isinff                       ; -- Begin function gl_isinff
	.p2align	1
	.type	gl_isinff,@function
gl_isinff:                              ; @gl_isinff
; %bb.0:
	push	r9
	push	r10
	sub	#16, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	&.L__profc_gl_isinff+6, r12
	mov	&.L__profc_gl_isinff+4, r11
	mov	&.L__profc_gl_isinff+2, r14
	mov	&.L__profc_gl_isinff, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_gl_isinff
	mov	r14, &.L__profc_gl_isinff+2
	mov	r13, &.L__profc_gl_isinff+4
	mov	r12, &.L__profc_gl_isinff+6
	mov	12(r1), r12
	mov	14(r1), r13
	mov	#-1, r14
	mov	#-129, r15
	call	#__mspabi_cmpf
	mov	r12, r13
	mov.b	#1, r12
	tst	r13
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jl	.LBB83_5
	jmp	.LBB83_1
.LBB83_1:
	mov	&.L__profc_gl_isinff+14, r12
	mov	&.L__profc_gl_isinff+12, r11
	mov	&.L__profc_gl_isinff+10, r14
	mov	&.L__profc_gl_isinff+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 2(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_gl_isinff+8
	mov	r14, &.L__profc_gl_isinff+10
	mov	r13, &.L__profc_gl_isinff+12
	mov	r12, &.L__profc_gl_isinff+14
	mov	12(r1), r12
	mov	14(r1), r13
	mov	#-1, r14
	mov	#32639, r15
	call	#__mspabi_cmpf
	mov	r12, r13
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	clr	r14
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	cmp	#1, r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jge	.LBB83_3
; %bb.2:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB83_3:
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	8(r1), r12                      ; 2-byte Folded Reload
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	cmp	#1, r13
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jge	.LBB83_5
	jmp	.LBB83_4
.LBB83_4:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_gl_isinff+22, r13
	mov	&.L__profc_gl_isinff+20, r10
	mov	&.L__profc_gl_isinff+18, r15
	mov	&.L__profc_gl_isinff+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_gl_isinff+16
	mov	r15, &.L__profc_gl_isinff+18
	mov	r14, &.L__profc_gl_isinff+20
	mov	r13, &.L__profc_gl_isinff+22
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jmp	.LBB83_5
.LBB83_5:
	mov.b	11(r1), r12                     ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#16, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
                                        ; -- End function
	.globl	gl_isinfd                       ; -- Begin function gl_isinfd
	.p2align	1
	.type	gl_isinfd,@function
gl_isinfd:                              ; @gl_isinfd
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#20, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 18(r1)
	mov	r14, 16(r1)
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	&.L__profc_gl_isinfd+6, r12
	mov	&.L__profc_gl_isinfd+4, r11
	mov	&.L__profc_gl_isinfd+2, r14
	mov	&.L__profc_gl_isinfd, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_gl_isinfd
	mov	r14, &.L__profc_gl_isinfd+2
	mov	r13, &.L__profc_gl_isinfd+4
	mov	r12, &.L__profc_gl_isinfd+6
	mov	12(r1), r8
	mov	14(r1), r9
	mov	16(r1), r10
	mov	18(r1), r11
	mov	#-1, r14
	mov	#-17, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	mov.b	#1, r12
	tst	r13
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jl	.LBB84_5
	jmp	.LBB84_1
.LBB84_1:
	mov	&.L__profc_gl_isinfd+14, r12
	mov	&.L__profc_gl_isinfd+12, r11
	mov	&.L__profc_gl_isinfd+10, r14
	mov	&.L__profc_gl_isinfd+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 2(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_gl_isinfd+8
	mov	r14, &.L__profc_gl_isinfd+10
	mov	r13, &.L__profc_gl_isinfd+12
	mov	r12, &.L__profc_gl_isinfd+14
	mov	12(r1), r8
	mov	14(r1), r9
	mov	16(r1), r10
	mov	18(r1), r11
	mov	#-1, r14
	mov	#32751, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	clr	r14
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	cmp	#1, r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jge	.LBB84_3
; %bb.2:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB84_3:
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	8(r1), r12                      ; 2-byte Folded Reload
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	cmp	#1, r13
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jge	.LBB84_5
	jmp	.LBB84_4
.LBB84_4:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_gl_isinfd+22, r13
	mov	&.L__profc_gl_isinfd+20, r10
	mov	&.L__profc_gl_isinfd+18, r15
	mov	&.L__profc_gl_isinfd+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_gl_isinfd+16
	mov	r15, &.L__profc_gl_isinfd+18
	mov	r14, &.L__profc_gl_isinfd+20
	mov	r13, &.L__profc_gl_isinfd+22
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jmp	.LBB84_5
.LBB84_5:
	mov.b	11(r1), r12                     ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#20, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
                                        ; -- End function
	.globl	gl_isinfl                       ; -- Begin function gl_isinfl
	.p2align	1
	.type	gl_isinfl,@function
gl_isinfl:                              ; @gl_isinfl
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#20, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 18(r1)
	mov	r14, 16(r1)
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	&.L__profc_gl_isinfl+6, r12
	mov	&.L__profc_gl_isinfl+4, r11
	mov	&.L__profc_gl_isinfl+2, r14
	mov	&.L__profc_gl_isinfl, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_gl_isinfl
	mov	r14, &.L__profc_gl_isinfl+2
	mov	r13, &.L__profc_gl_isinfl+4
	mov	r12, &.L__profc_gl_isinfl+6
	mov	12(r1), r8
	mov	14(r1), r9
	mov	16(r1), r10
	mov	18(r1), r11
	mov	#-1, r14
	mov	#-17, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	mov.b	#1, r12
	tst	r13
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jl	.LBB85_5
	jmp	.LBB85_1
.LBB85_1:
	mov	&.L__profc_gl_isinfl+14, r12
	mov	&.L__profc_gl_isinfl+12, r11
	mov	&.L__profc_gl_isinfl+10, r14
	mov	&.L__profc_gl_isinfl+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 2(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_gl_isinfl+8
	mov	r14, &.L__profc_gl_isinfl+10
	mov	r13, &.L__profc_gl_isinfl+12
	mov	r12, &.L__profc_gl_isinfl+14
	mov	12(r1), r8
	mov	14(r1), r9
	mov	16(r1), r10
	mov	18(r1), r11
	mov	#-1, r14
	mov	#32751, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	clr	r14
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	cmp	#1, r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jge	.LBB85_3
; %bb.2:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB85_3:
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	8(r1), r12                      ; 2-byte Folded Reload
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	cmp	#1, r13
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jge	.LBB85_5
	jmp	.LBB85_4
.LBB85_4:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_gl_isinfl+22, r13
	mov	&.L__profc_gl_isinfl+20, r10
	mov	&.L__profc_gl_isinfl+18, r15
	mov	&.L__profc_gl_isinfl+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_gl_isinfl+16
	mov	r15, &.L__profc_gl_isinfl+18
	mov	r14, &.L__profc_gl_isinfl+20
	mov	r13, &.L__profc_gl_isinfl+22
	mov.b	r12, 11(r1)                     ; 1-byte Folded Spill
	jmp	.LBB85_5
.LBB85_5:
	mov.b	11(r1), r12                     ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#20, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
                                        ; -- End function
	.globl	_Qp_itoq                        ; -- Begin function _Qp_itoq
	.p2align	1
	.type	_Qp_itoq,@function
_Qp_itoq:                               ; @_Qp_itoq
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	&.L__profc__Qp_itoq+6, r12
	mov	&.L__profc__Qp_itoq+4, r11
	mov	&.L__profc__Qp_itoq+2, r14
	mov	&.L__profc__Qp_itoq, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc__Qp_itoq
	mov	r14, &.L__profc__Qp_itoq+2
	mov	r13, &.L__profc__Qp_itoq+4
	mov	r12, &.L__profc__Qp_itoq+6
	mov	6(r1), r12
	mov	r12, r13
	swpb	r13
	sxt	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	call	#__mspabi_fltlid
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, r12
	mov	0(r1), r13                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	r14, r12
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	r15, r11
	mov	4(r1), r15                      ; 2-byte Folded Reload
	mov	8(r1), r12
	mov	r11, 6(r12)
	mov	r15, 4(r12)
	mov	r14, 2(r12)
	mov	r13, 0(r12)
	add	#10, r1
	pop	r10
	ret
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
                                        ; -- End function
	.globl	ldexpf                          ; -- Begin function ldexpf
	.p2align	1
	.type	ldexpf,@function
ldexpf:                                 ; @ldexpf
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#52, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 50(r1)
	mov	r12, 48(r1)
	mov	r14, 46(r1)
	mov	&.L__profc_ldexpf+6, r13
	mov	&.L__profc_ldexpf+4, r12
	mov	&.L__profc_ldexpf+2, r15
	mov	&.L__profc_ldexpf, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_ldexpf
	mov	r15, &.L__profc_ldexpf+2
	mov	r14, &.L__profc_ldexpf+4
	mov	r13, &.L__profc_ldexpf+6
	mov	48(r1), r13
	mov	r13, 34(r1)                     ; 2-byte Folded Spill
	mov	50(r1), r13
	and	#32767, r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 38(r1)                     ; 2-byte Folded Spill
	cmp	#32641, r13
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	jge	.LBB87_2
; %bb.1:
	mov	38(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
.LBB87_2:
	mov	36(r1), r13                     ; 2-byte Folded Reload
	mov	32(r1), r12                     ; 2-byte Folded Reload
	mov	34(r1), r14                     ; 2-byte Folded Reload
	mov	40(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 28(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	cmp	#32640, r13
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	jeq	.LBB87_4
; %bb.3:
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
.LBB87_4:
	mov	30(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB87_20
	jmp	.LBB87_5
.LBB87_5:
	mov	&.L__profc_ldexpf+22, r12
	mov	&.L__profc_ldexpf+20, r11
	mov	&.L__profc_ldexpf+18, r14
	mov	&.L__profc_ldexpf+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpf+16
	mov	r14, &.L__profc_ldexpf+18
	mov	r13, &.L__profc_ldexpf+20
	mov	r12, &.L__profc_ldexpf+22
	mov	48(r1), r14
	mov	r14, 26(r1)                     ; 2-byte Folded Spill
	mov	50(r1), r15
	mov	r15, 24(r1)                     ; 2-byte Folded Spill
	mov	r14, r12
	mov	r15, r13
	call	#__mspabi_addf
	mov	24(r1), r15                     ; 2-byte Folded Reload
	mov	26(r1), r14                     ; 2-byte Folded Reload
	call	#__mspabi_cmpf
	tst	r12
	jeq	.LBB87_20
	jmp	.LBB87_6
.LBB87_6:
	mov	&.L__profc_ldexpf+30, r12
	mov	&.L__profc_ldexpf+28, r11
	mov	&.L__profc_ldexpf+26, r14
	mov	&.L__profc_ldexpf+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpf+24
	mov	r14, &.L__profc_ldexpf+26
	mov	r13, &.L__profc_ldexpf+28
	mov	r12, &.L__profc_ldexpf+30
	jmp	.LBB87_7
.LBB87_7:
	mov	&.L__profc_ldexpf+14, r13
	mov	&.L__profc_ldexpf+12, r12
	mov	&.L__profc_ldexpf+10, r15
	mov	&.L__profc_ldexpf+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_ldexpf+8
	mov	r15, &.L__profc_ldexpf+10
	mov	r14, &.L__profc_ldexpf+12
	mov	r13, &.L__profc_ldexpf+14
	mov	46(r1), r13
	mov	r13, 18(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 20(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jl	.LBB87_9
; %bb.8:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
.LBB87_9:
	mov	16(r1), r15                     ; 2-byte Folded Reload
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	&.L__profc_ldexpf+38, r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	&.L__profc_ldexpf+36, r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	&.L__profc_ldexpf+34, r10
	mov	&.L__profc_ldexpf+32, r14
	mov	r14, r13
	add	r12, r13
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	mov	r15, r12
	bic	r11, r12
	mov	r10, r11
	add	r12, r11
	mov	r11, 10(r1)                     ; 2-byte Folded Spill
	cmp	r10, r11
	mov	r2, r11
	bic	r11, r15
	mov	r15, 12(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jhs	.LBB87_11
; %bb.10:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB87_11:
	mov	18(r1), r13                     ; 2-byte Folded Reload
	mov	10(r1), r15                     ; 2-byte Folded Reload
	mov	8(r1), r11                      ; 2-byte Folded Reload
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	16(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r9                       ; 2-byte Folded Reload
	mov	14(r1), r8                      ; 2-byte Folded Reload
	mov	r9, r14
	add	r8, r14
	cmp	r9, r14
	mov	r2, r9
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_ldexpf+32
	mov	r15, &.L__profc_ldexpf+34
	mov	r14, &.L__profc_ldexpf+36
	mov	r12, &.L__profc_ldexpf+38
	mov	#16384, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#16128, r12
	tst	r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB87_13
; %bb.12:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB87_13:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 44(r1)
	clr	42(r1)
	jmp	.LBB87_14
.LBB87_14:                              ; =>This Inner Loop Header: Depth=1
	mov	&.L__profc_ldexpf+46, r12
	mov	&.L__profc_ldexpf+44, r11
	mov	&.L__profc_ldexpf+42, r14
	mov	&.L__profc_ldexpf+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpf+40
	mov	r14, &.L__profc_ldexpf+42
	mov	r13, &.L__profc_ldexpf+44
	mov	r12, &.L__profc_ldexpf+46
	mov	46(r1), r12
	mov	r12, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r12, r13
	add	r14, r13
	and	#-2, r13
	sub	r13, r12
	tst	r12
	jeq	.LBB87_16
	jmp	.LBB87_15
.LBB87_15:                              ;   in Loop: Header=BB87_14 Depth=1
	mov	&.L__profc_ldexpf+54, r12
	mov	&.L__profc_ldexpf+52, r11
	mov	&.L__profc_ldexpf+50, r14
	mov	&.L__profc_ldexpf+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpf+48
	mov	r14, &.L__profc_ldexpf+50
	mov	r13, &.L__profc_ldexpf+52
	mov	r12, &.L__profc_ldexpf+54
	mov	42(r1), r14
	mov	44(r1), r15
	mov	48(r1), r12
	mov	50(r1), r13
	call	#__mspabi_mpyf
	mov	r13, 50(r1)
	mov	r12, 48(r1)
	jmp	.LBB87_16
.LBB87_16:                              ;   in Loop: Header=BB87_14 Depth=1
	mov	46(r1), r12
	mov	r12, r13
	swpb	r13
	mov.b	r13, r13
	clrc
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	add	r13, r12
	rra	r12
	mov	r12, 46(r1)
	mov	46(r1), r12
	tst	r12
	jne	.LBB87_18
	jmp	.LBB87_17
.LBB87_17:
	mov	&.L__profc_ldexpf+62, r12
	mov	&.L__profc_ldexpf+60, r11
	mov	&.L__profc_ldexpf+58, r14
	mov	&.L__profc_ldexpf+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpf+56
	mov	r14, &.L__profc_ldexpf+58
	mov	r13, &.L__profc_ldexpf+60
	mov	r12, &.L__profc_ldexpf+62
	jmp	.LBB87_19
.LBB87_18:                              ;   in Loop: Header=BB87_14 Depth=1
	mov	42(r1), r14
	mov	44(r1), r15
	mov	r14, r12
	mov	r15, r13
	call	#__mspabi_mpyf
	mov	r13, 44(r1)
	mov	r12, 42(r1)
	jmp	.LBB87_14
.LBB87_19:
	jmp	.LBB87_20
.LBB87_20:
	mov	48(r1), r12
	mov	50(r1), r13
	add	#52, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
                                        ; -- End function
	.globl	ldexp                           ; -- Begin function ldexp
	.p2align	1
	.type	ldexp,@function
ldexp:                                  ; @ldexp
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#74, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	82(r1), r11
	mov	r15, 72(r1)
	mov	r14, 70(r1)
	mov	r13, 68(r1)
	mov	r12, 66(r1)
	mov	&.L__profc_ldexp+6, r13
	mov	&.L__profc_ldexp+4, r12
	mov	&.L__profc_ldexp+2, r15
	mov	&.L__profc_ldexp, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_ldexp
	mov	r15, &.L__profc_ldexp+2
	mov	r14, &.L__profc_ldexp+4
	mov	r13, &.L__profc_ldexp+6
	mov	66(r1), r13
	mov	r13, 46(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	mov	r13, 48(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r13
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r13
	and	#32767, r13
	mov	r13, 52(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 54(r1)                     ; 2-byte Folded Spill
	cmp	#32753, r13
	mov	r12, 56(r1)                     ; 2-byte Folded Spill
	jge	.LBB88_2
; %bb.1:
	mov	54(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 56(r1)                     ; 2-byte Folded Spill
.LBB88_2:
	mov	52(r1), r13                     ; 2-byte Folded Reload
	mov	44(r1), r12                     ; 2-byte Folded Reload
	mov	50(r1), r14                     ; 2-byte Folded Reload
	mov	56(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 40(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	cmp	#32752, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jeq	.LBB88_4
; %bb.3:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB88_4:
	mov	48(r1), r13                     ; 2-byte Folded Reload
	mov	44(r1), r12                     ; 2-byte Folded Reload
	mov	46(r1), r14                     ; 2-byte Folded Reload
	mov	42(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 34(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	r12, r15
	bic	r11, r15
	mov	r15, 36(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	tst	r13
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	jeq	.LBB88_6
; %bb.5:
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
.LBB88_6:
	mov	50(r1), r13                     ; 2-byte Folded Reload
	mov	52(r1), r14                     ; 2-byte Folded Reload
	mov	38(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	jeq	.LBB88_8
; %bb.7:
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
.LBB88_8:
	mov	32(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB88_24
	jmp	.LBB88_9
.LBB88_9:
	mov	&.L__profc_ldexp+22, r12
	mov	&.L__profc_ldexp+20, r11
	mov	&.L__profc_ldexp+18, r14
	mov	&.L__profc_ldexp+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexp+16
	mov	r14, &.L__profc_ldexp+18
	mov	r13, &.L__profc_ldexp+20
	mov	r12, &.L__profc_ldexp+22
	mov	66(r1), r12
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	mov	r13, 26(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r14
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r15
	mov	r15, 30(r1)                     ; 2-byte Folded Spill
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_addd
	mov	r12, r8
	mov	24(r1), r12                     ; 2-byte Folded Reload
	mov	r13, r9
	mov	26(r1), r13                     ; 2-byte Folded Reload
	mov	r14, r10
	mov	28(r1), r14                     ; 2-byte Folded Reload
	mov	r15, r11
	mov	30(r1), r15                     ; 2-byte Folded Reload
	call	#__mspabi_cmpd
	tst	r12
	jeq	.LBB88_24
	jmp	.LBB88_10
.LBB88_10:
	mov	&.L__profc_ldexp+30, r12
	mov	&.L__profc_ldexp+28, r11
	mov	&.L__profc_ldexp+26, r14
	mov	&.L__profc_ldexp+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexp+24
	mov	r14, &.L__profc_ldexp+26
	mov	r13, &.L__profc_ldexp+28
	mov	r12, &.L__profc_ldexp+30
	jmp	.LBB88_11
.LBB88_11:
	mov	&.L__profc_ldexp+14, r13
	mov	&.L__profc_ldexp+12, r12
	mov	&.L__profc_ldexp+10, r15
	mov	&.L__profc_ldexp+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_ldexp+8
	mov	r15, &.L__profc_ldexp+10
	mov	r14, &.L__profc_ldexp+12
	mov	r13, &.L__profc_ldexp+14
	mov	82(r1), r13
	mov	r13, 18(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 20(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jl	.LBB88_13
; %bb.12:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
.LBB88_13:
	mov	16(r1), r15                     ; 2-byte Folded Reload
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	&.L__profc_ldexp+38, r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	&.L__profc_ldexp+36, r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	&.L__profc_ldexp+34, r10
	mov	&.L__profc_ldexp+32, r14
	mov	r14, r13
	add	r12, r13
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	mov	r15, r12
	bic	r11, r12
	mov	r10, r11
	add	r12, r11
	mov	r11, 10(r1)                     ; 2-byte Folded Spill
	cmp	r10, r11
	mov	r2, r11
	bic	r11, r15
	mov	r15, 12(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jhs	.LBB88_15
; %bb.14:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB88_15:
	mov	18(r1), r13                     ; 2-byte Folded Reload
	mov	10(r1), r15                     ; 2-byte Folded Reload
	mov	8(r1), r11                      ; 2-byte Folded Reload
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	16(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r9                       ; 2-byte Folded Reload
	mov	14(r1), r8                      ; 2-byte Folded Reload
	mov	r9, r14
	add	r8, r14
	cmp	r9, r14
	mov	r2, r9
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_ldexp+32
	mov	r15, &.L__profc_ldexp+34
	mov	r14, &.L__profc_ldexp+36
	mov	r12, &.L__profc_ldexp+38
	mov	#16384, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#16352, r12
	tst	r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB88_17
; %bb.16:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB88_17:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 64(r1)
	clr	62(r1)
	clr	60(r1)
	clr	58(r1)
	jmp	.LBB88_18
.LBB88_18:                              ; =>This Inner Loop Header: Depth=1
	mov	&.L__profc_ldexp+46, r12
	mov	&.L__profc_ldexp+44, r11
	mov	&.L__profc_ldexp+42, r14
	mov	&.L__profc_ldexp+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexp+40
	mov	r14, &.L__profc_ldexp+42
	mov	r13, &.L__profc_ldexp+44
	mov	r12, &.L__profc_ldexp+46
	mov	82(r1), r12
	mov	r12, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r12, r13
	add	r14, r13
	and	#-2, r13
	sub	r13, r12
	tst	r12
	jeq	.LBB88_20
	jmp	.LBB88_19
.LBB88_19:                              ;   in Loop: Header=BB88_18 Depth=1
	mov	&.L__profc_ldexp+54, r12
	mov	&.L__profc_ldexp+52, r11
	mov	&.L__profc_ldexp+50, r14
	mov	&.L__profc_ldexp+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexp+48
	mov	r14, &.L__profc_ldexp+50
	mov	r13, &.L__profc_ldexp+52
	mov	r12, &.L__profc_ldexp+54
	mov	58(r1), r12
	mov	60(r1), r13
	mov	62(r1), r14
	mov	64(r1), r15
	mov	66(r1), r8
	mov	68(r1), r9
	mov	70(r1), r10
	mov	72(r1), r11
	call	#__mspabi_mpyd
	mov	r15, 72(r1)
	mov	r14, 70(r1)
	mov	r13, 68(r1)
	mov	r12, 66(r1)
	jmp	.LBB88_20
.LBB88_20:                              ;   in Loop: Header=BB88_18 Depth=1
	mov	82(r1), r12
	mov	r12, r13
	swpb	r13
	mov.b	r13, r13
	clrc
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	add	r13, r12
	rra	r12
	mov	r12, 82(r1)
	mov	82(r1), r12
	tst	r12
	jne	.LBB88_22
	jmp	.LBB88_21
.LBB88_21:
	mov	&.L__profc_ldexp+62, r12
	mov	&.L__profc_ldexp+60, r11
	mov	&.L__profc_ldexp+58, r14
	mov	&.L__profc_ldexp+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexp+56
	mov	r14, &.L__profc_ldexp+58
	mov	r13, &.L__profc_ldexp+60
	mov	r12, &.L__profc_ldexp+62
	jmp	.LBB88_23
.LBB88_22:                              ;   in Loop: Header=BB88_18 Depth=1
	mov	58(r1), r12
	mov	60(r1), r13
	mov	62(r1), r14
	mov	64(r1), r15
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_mpyd
	mov	r15, 64(r1)
	mov	r14, 62(r1)
	mov	r13, 60(r1)
	mov	r12, 58(r1)
	jmp	.LBB88_18
.LBB88_23:
	jmp	.LBB88_24
.LBB88_24:
	mov	66(r1), r12
	mov	68(r1), r13
	mov	70(r1), r14
	mov	72(r1), r15
	add	#74, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
                                        ; -- End function
	.globl	ldexpl                          ; -- Begin function ldexpl
	.p2align	1
	.type	ldexpl,@function
ldexpl:                                 ; @ldexpl
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#74, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	82(r1), r11
	mov	r15, 72(r1)
	mov	r14, 70(r1)
	mov	r13, 68(r1)
	mov	r12, 66(r1)
	mov	&.L__profc_ldexpl+6, r13
	mov	&.L__profc_ldexpl+4, r12
	mov	&.L__profc_ldexpl+2, r15
	mov	&.L__profc_ldexpl, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_ldexpl
	mov	r15, &.L__profc_ldexpl+2
	mov	r14, &.L__profc_ldexpl+4
	mov	r13, &.L__profc_ldexpl+6
	mov	66(r1), r13
	mov	r13, 46(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	mov	r13, 48(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r13
	mov	r13, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r13
	and	#32767, r13
	mov	r13, 52(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 54(r1)                     ; 2-byte Folded Spill
	cmp	#32753, r13
	mov	r12, 56(r1)                     ; 2-byte Folded Spill
	jge	.LBB89_2
; %bb.1:
	mov	54(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 56(r1)                     ; 2-byte Folded Spill
.LBB89_2:
	mov	52(r1), r13                     ; 2-byte Folded Reload
	mov	44(r1), r12                     ; 2-byte Folded Reload
	mov	50(r1), r14                     ; 2-byte Folded Reload
	mov	56(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 40(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	cmp	#32752, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jeq	.LBB89_4
; %bb.3:
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB89_4:
	mov	48(r1), r13                     ; 2-byte Folded Reload
	mov	44(r1), r12                     ; 2-byte Folded Reload
	mov	46(r1), r14                     ; 2-byte Folded Reload
	mov	42(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 34(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	r12, r15
	bic	r11, r15
	mov	r15, 36(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	tst	r13
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	jeq	.LBB89_6
; %bb.5:
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
.LBB89_6:
	mov	50(r1), r13                     ; 2-byte Folded Reload
	mov	52(r1), r14                     ; 2-byte Folded Reload
	mov	38(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	jeq	.LBB89_8
; %bb.7:
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
.LBB89_8:
	mov	32(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB89_24
	jmp	.LBB89_9
.LBB89_9:
	mov	&.L__profc_ldexpl+22, r12
	mov	&.L__profc_ldexpl+20, r11
	mov	&.L__profc_ldexpl+18, r14
	mov	&.L__profc_ldexpl+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpl+16
	mov	r14, &.L__profc_ldexpl+18
	mov	r13, &.L__profc_ldexpl+20
	mov	r12, &.L__profc_ldexpl+22
	mov	66(r1), r12
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	mov	68(r1), r13
	mov	r13, 26(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r14
	mov	r14, 28(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r15
	mov	r15, 30(r1)                     ; 2-byte Folded Spill
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_addd
	mov	r12, r8
	mov	24(r1), r12                     ; 2-byte Folded Reload
	mov	r13, r9
	mov	26(r1), r13                     ; 2-byte Folded Reload
	mov	r14, r10
	mov	28(r1), r14                     ; 2-byte Folded Reload
	mov	r15, r11
	mov	30(r1), r15                     ; 2-byte Folded Reload
	call	#__mspabi_cmpd
	tst	r12
	jeq	.LBB89_24
	jmp	.LBB89_10
.LBB89_10:
	mov	&.L__profc_ldexpl+30, r12
	mov	&.L__profc_ldexpl+28, r11
	mov	&.L__profc_ldexpl+26, r14
	mov	&.L__profc_ldexpl+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpl+24
	mov	r14, &.L__profc_ldexpl+26
	mov	r13, &.L__profc_ldexpl+28
	mov	r12, &.L__profc_ldexpl+30
	jmp	.LBB89_11
.LBB89_11:
	mov	&.L__profc_ldexpl+14, r13
	mov	&.L__profc_ldexpl+12, r12
	mov	&.L__profc_ldexpl+10, r15
	mov	&.L__profc_ldexpl+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_ldexpl+8
	mov	r15, &.L__profc_ldexpl+10
	mov	r14, &.L__profc_ldexpl+12
	mov	r13, &.L__profc_ldexpl+14
	mov	82(r1), r13
	mov	r13, 18(r1)                     ; 2-byte Folded Spill
	clr	r14
	mov	r14, 20(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jl	.LBB89_13
; %bb.12:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
.LBB89_13:
	mov	16(r1), r15                     ; 2-byte Folded Reload
	mov	22(r1), r12                     ; 2-byte Folded Reload
	mov	&.L__profc_ldexpl+38, r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	&.L__profc_ldexpl+36, r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	&.L__profc_ldexpl+34, r10
	mov	&.L__profc_ldexpl+32, r14
	mov	r14, r13
	add	r12, r13
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	mov	r15, r12
	bic	r11, r12
	mov	r10, r11
	add	r12, r11
	mov	r11, 10(r1)                     ; 2-byte Folded Spill
	cmp	r10, r11
	mov	r2, r11
	bic	r11, r15
	mov	r15, 12(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jhs	.LBB89_15
; %bb.14:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB89_15:
	mov	18(r1), r13                     ; 2-byte Folded Reload
	mov	10(r1), r15                     ; 2-byte Folded Reload
	mov	8(r1), r11                      ; 2-byte Folded Reload
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	16(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r9                       ; 2-byte Folded Reload
	mov	14(r1), r8                      ; 2-byte Folded Reload
	mov	r9, r14
	add	r8, r14
	cmp	r9, r14
	mov	r2, r9
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_ldexpl+32
	mov	r15, &.L__profc_ldexpl+34
	mov	r14, &.L__profc_ldexpl+36
	mov	r12, &.L__profc_ldexpl+38
	mov	#16384, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#16352, r12
	tst	r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB89_17
; %bb.16:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB89_17:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 64(r1)
	clr	62(r1)
	clr	60(r1)
	clr	58(r1)
	jmp	.LBB89_18
.LBB89_18:                              ; =>This Inner Loop Header: Depth=1
	mov	&.L__profc_ldexpl+46, r12
	mov	&.L__profc_ldexpl+44, r11
	mov	&.L__profc_ldexpl+42, r14
	mov	&.L__profc_ldexpl+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpl+40
	mov	r14, &.L__profc_ldexpl+42
	mov	r13, &.L__profc_ldexpl+44
	mov	r12, &.L__profc_ldexpl+46
	mov	82(r1), r12
	mov	r12, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r12, r13
	add	r14, r13
	and	#-2, r13
	sub	r13, r12
	tst	r12
	jeq	.LBB89_20
	jmp	.LBB89_19
.LBB89_19:                              ;   in Loop: Header=BB89_18 Depth=1
	mov	&.L__profc_ldexpl+54, r12
	mov	&.L__profc_ldexpl+52, r11
	mov	&.L__profc_ldexpl+50, r14
	mov	&.L__profc_ldexpl+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpl+48
	mov	r14, &.L__profc_ldexpl+50
	mov	r13, &.L__profc_ldexpl+52
	mov	r12, &.L__profc_ldexpl+54
	mov	58(r1), r12
	mov	60(r1), r13
	mov	62(r1), r14
	mov	64(r1), r15
	mov	66(r1), r8
	mov	68(r1), r9
	mov	70(r1), r10
	mov	72(r1), r11
	call	#__mspabi_mpyd
	mov	r15, 72(r1)
	mov	r14, 70(r1)
	mov	r13, 68(r1)
	mov	r12, 66(r1)
	jmp	.LBB89_20
.LBB89_20:                              ;   in Loop: Header=BB89_18 Depth=1
	mov	82(r1), r12
	mov	r12, r13
	swpb	r13
	mov.b	r13, r13
	clrc
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	add	r13, r12
	rra	r12
	mov	r12, 82(r1)
	mov	82(r1), r12
	tst	r12
	jne	.LBB89_22
	jmp	.LBB89_21
.LBB89_21:
	mov	&.L__profc_ldexpl+62, r12
	mov	&.L__profc_ldexpl+60, r11
	mov	&.L__profc_ldexpl+58, r14
	mov	&.L__profc_ldexpl+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_ldexpl+56
	mov	r14, &.L__profc_ldexpl+58
	mov	r13, &.L__profc_ldexpl+60
	mov	r12, &.L__profc_ldexpl+62
	jmp	.LBB89_23
.LBB89_22:                              ;   in Loop: Header=BB89_18 Depth=1
	mov	58(r1), r12
	mov	60(r1), r13
	mov	62(r1), r14
	mov	64(r1), r15
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_mpyd
	mov	r15, 64(r1)
	mov	r14, 62(r1)
	mov	r13, 60(r1)
	mov	r12, 58(r1)
	jmp	.LBB89_18
.LBB89_23:
	jmp	.LBB89_24
.LBB89_24:
	mov	66(r1), r12
	mov	68(r1), r13
	mov	70(r1), r14
	mov	72(r1), r15
	add	#74, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
                                        ; -- End function
	.globl	memxor                          ; -- Begin function memxor
	.p2align	1
	.type	memxor,@function
memxor:                                 ; @memxor
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc_memxor+6, r12
	mov	&.L__profc_memxor+4, r11
	mov	&.L__profc_memxor+2, r14
	mov	&.L__profc_memxor, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memxor
	mov	r14, &.L__profc_memxor+2
	mov	r13, &.L__profc_memxor+4
	mov	r12, &.L__profc_memxor+6
	mov	6(r1), r12
	mov	r12, 2(r1)
	mov	8(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB90_1
.LBB90_1:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB90_4
	jmp	.LBB90_2
.LBB90_2:                               ;   in Loop: Header=BB90_1 Depth=1
	mov	&.L__profc_memxor+14, r12
	mov	&.L__profc_memxor+12, r11
	mov	&.L__profc_memxor+10, r14
	mov	&.L__profc_memxor+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memxor+8
	mov	r14, &.L__profc_memxor+10
	mov	r13, &.L__profc_memxor+12
	mov	r12, &.L__profc_memxor+14
	mov	2(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 2(r1)
	mov.b	0(r12), r14
	mov	0(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 0(r1)
	mov.b	0(r12), r13
	xor	r14, r13
                                        ; kill: def $r13b killed $r13b killed $r13
	mov.b	r13, 0(r12)
	jmp	.LBB90_3
.LBB90_3:                               ;   in Loop: Header=BB90_1 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	jmp	.LBB90_1
.LBB90_4:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
                                        ; -- End function
	.globl	strncat                         ; -- Begin function strncat
	.p2align	1
	.type	strncat,@function
strncat:                                ; @strncat
; %bb.0:
	push	r9
	push	r10
	sub	#12, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
	mov	&.L__profc_strncat+6, r12
	mov	&.L__profc_strncat+4, r11
	mov	&.L__profc_strncat+2, r14
	mov	&.L__profc_strncat, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncat
	mov	r14, &.L__profc_strncat+2
	mov	r13, &.L__profc_strncat+4
	mov	r12, &.L__profc_strncat+6
	mov	10(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	call	#strlen
	mov	r12, r13
	mov	2(r1), r12                      ; 2-byte Folded Reload
	add	r13, r12
	mov	r12, 4(r1)
	jmp	.LBB91_1
.LBB91_1:                               ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB91_4
	jmp	.LBB91_2
.LBB91_2:                               ;   in Loop: Header=BB91_1 Depth=1
	mov	&.L__profc_strncat+22, r13
	mov	&.L__profc_strncat+20, r12
	mov	&.L__profc_strncat+18, r15
	mov	&.L__profc_strncat+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strncat+16
	mov	r15, &.L__profc_strncat+18
	mov	r14, &.L__profc_strncat+20
	mov	r13, &.L__profc_strncat+22
	mov	8(r1), r13
	mov.b	0(r13), r14
	mov	r14, r13
	sxt	r13
	mov.b	r14, r15
	mov	4(r1), r14
	mov.b	r15, 0(r14)
	tst	r13
	mov	r2, r14
	rra	r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB91_4
	jmp	.LBB91_3
.LBB91_3:                               ;   in Loop: Header=BB91_1 Depth=1
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_strncat+30, r13
	mov	&.L__profc_strncat+28, r10
	mov	&.L__profc_strncat+26, r15
	mov	&.L__profc_strncat+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strncat+24
	mov	r15, &.L__profc_strncat+26
	mov	r14, &.L__profc_strncat+28
	mov	r13, &.L__profc_strncat+30
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB91_4
.LBB91_4:                               ;   in Loop: Header=BB91_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB91_7
	jmp	.LBB91_5
.LBB91_5:                               ;   in Loop: Header=BB91_1 Depth=1
	mov	&.L__profc_strncat+14, r12
	mov	&.L__profc_strncat+12, r11
	mov	&.L__profc_strncat+10, r14
	mov	&.L__profc_strncat+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncat+8
	mov	r14, &.L__profc_strncat+10
	mov	r13, &.L__profc_strncat+12
	mov	r12, &.L__profc_strncat+14
	jmp	.LBB91_6
.LBB91_6:                               ;   in Loop: Header=BB91_1 Depth=1
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	mov	6(r1), r12
	add	#-1, r12
	mov	r12, 6(r1)
	jmp	.LBB91_1
.LBB91_7:
	mov	6(r1), r12
	tst	r12
	jne	.LBB91_9
	jmp	.LBB91_8
.LBB91_8:
	mov	&.L__profc_strncat+38, r12
	mov	&.L__profc_strncat+36, r11
	mov	&.L__profc_strncat+34, r14
	mov	&.L__profc_strncat+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strncat+32
	mov	r14, &.L__profc_strncat+34
	mov	r13, &.L__profc_strncat+36
	mov	r12, &.L__profc_strncat+38
	mov	4(r1), r12
	clr.b	0(r12)
	jmp	.LBB91_9
.LBB91_9:
	mov	10(r1), r12
	add	#12, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        ; -- End function
	.globl	strnlen                         ; -- Begin function strnlen
	.p2align	1
	.type	strnlen,@function
strnlen:                                ; @strnlen
; %bb.0:
	push	r9
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	&.L__profc_strnlen+6, r12
	mov	&.L__profc_strnlen+4, r11
	mov	&.L__profc_strnlen+2, r14
	mov	&.L__profc_strnlen, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strnlen
	mov	r14, &.L__profc_strnlen+2
	mov	r13, &.L__profc_strnlen+4
	mov	r12, &.L__profc_strnlen+6
	clr	2(r1)
	jmp	.LBB92_1
.LBB92_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r13
	mov	4(r1), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jhs	.LBB92_4
	jmp	.LBB92_2
.LBB92_2:                               ;   in Loop: Header=BB92_1 Depth=1
	mov	&.L__profc_strnlen+22, r13
	mov	&.L__profc_strnlen+20, r12
	mov	&.L__profc_strnlen+18, r15
	mov	&.L__profc_strnlen+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strnlen+16
	mov	r15, &.L__profc_strnlen+18
	mov	r14, &.L__profc_strnlen+20
	mov	r13, &.L__profc_strnlen+22
	mov	6(r1), r13
	mov	2(r1), r14
	add	r14, r13
	mov.b	0(r13), r13
	sxt	r13
	tst	r13
	mov	r2, r14
	rra	r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB92_4
	jmp	.LBB92_3
.LBB92_3:                               ;   in Loop: Header=BB92_1 Depth=1
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_strnlen+30, r13
	mov	&.L__profc_strnlen+28, r10
	mov	&.L__profc_strnlen+26, r15
	mov	&.L__profc_strnlen+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_strnlen+24
	mov	r15, &.L__profc_strnlen+26
	mov	r14, &.L__profc_strnlen+28
	mov	r13, &.L__profc_strnlen+30
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB92_4
.LBB92_4:                               ;   in Loop: Header=BB92_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB92_7
	jmp	.LBB92_5
.LBB92_5:                               ;   in Loop: Header=BB92_1 Depth=1
	mov	&.L__profc_strnlen+14, r12
	mov	&.L__profc_strnlen+12, r11
	mov	&.L__profc_strnlen+10, r14
	mov	&.L__profc_strnlen+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strnlen+8
	mov	r14, &.L__profc_strnlen+10
	mov	r13, &.L__profc_strnlen+12
	mov	r12, &.L__profc_strnlen+14
	jmp	.LBB92_6
.LBB92_6:                               ;   in Loop: Header=BB92_1 Depth=1
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB92_1
.LBB92_7:
	mov	2(r1), r12
	add	#8, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
                                        ; -- End function
	.globl	strpbrk                         ; -- Begin function strpbrk
	.p2align	1
	.type	strpbrk,@function
strpbrk:                                ; @strpbrk
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	mov	&.L__profc_strpbrk+6, r12
	mov	&.L__profc_strpbrk+4, r11
	mov	&.L__profc_strpbrk+2, r14
	mov	&.L__profc_strpbrk, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strpbrk
	mov	r14, &.L__profc_strpbrk+2
	mov	r13, &.L__profc_strpbrk+4
	mov	r12, &.L__profc_strpbrk+6
	jmp	.LBB93_1
.LBB93_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB93_3 Depth 2
	mov	4(r1), r12
	mov.b	0(r12), r12
	tst.b	r12
	jeq	.LBB93_8
	jmp	.LBB93_2
.LBB93_2:                               ;   in Loop: Header=BB93_1 Depth=1
	mov	&.L__profc_strpbrk+14, r12
	mov	&.L__profc_strpbrk+12, r11
	mov	&.L__profc_strpbrk+10, r14
	mov	&.L__profc_strpbrk+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strpbrk+8
	mov	r14, &.L__profc_strpbrk+10
	mov	r13, &.L__profc_strpbrk+12
	mov	r12, &.L__profc_strpbrk+14
	mov	2(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB93_3
.LBB93_3:                               ;   Parent Loop BB93_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	0(r1), r12
	mov.b	0(r12), r12
	tst.b	r12
	jeq	.LBB93_7
	jmp	.LBB93_4
.LBB93_4:                               ;   in Loop: Header=BB93_3 Depth=2
	mov	&.L__profc_strpbrk+22, r12
	mov	&.L__profc_strpbrk+20, r11
	mov	&.L__profc_strpbrk+18, r14
	mov	&.L__profc_strpbrk+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strpbrk+16
	mov	r14, &.L__profc_strpbrk+18
	mov	r13, &.L__profc_strpbrk+20
	mov	r12, &.L__profc_strpbrk+22
	mov	0(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 0(r1)
	mov.b	0(r12), r12
	sxt	r12
	mov	4(r1), r13
	mov.b	0(r13), r13
	sxt	r13
	cmp	r13, r12
	jne	.LBB93_6
	jmp	.LBB93_5
.LBB93_5:
	mov	&.L__profc_strpbrk+30, r12
	mov	&.L__profc_strpbrk+28, r11
	mov	&.L__profc_strpbrk+26, r14
	mov	&.L__profc_strpbrk+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strpbrk+24
	mov	r14, &.L__profc_strpbrk+26
	mov	r13, &.L__profc_strpbrk+28
	mov	r12, &.L__profc_strpbrk+30
	mov	4(r1), r12
	mov	r12, 6(r1)
	jmp	.LBB93_9
.LBB93_6:                               ;   in Loop: Header=BB93_3 Depth=2
	jmp	.LBB93_3
.LBB93_7:                               ;   in Loop: Header=BB93_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB93_1
.LBB93_8:
	clr	6(r1)
	jmp	.LBB93_9
.LBB93_9:
	mov	6(r1), r12
	add	#8, r1
	pop	r10
	ret
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
                                        ; -- End function
	.globl	strrchr                         ; -- Begin function strrchr
	.p2align	1
	.type	strrchr,@function
strrchr:                                ; @strrchr
; %bb.0:
	push	r10
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	mov	&.L__profc_strrchr+6, r12
	mov	&.L__profc_strrchr+4, r11
	mov	&.L__profc_strrchr+2, r14
	mov	&.L__profc_strrchr, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strrchr
	mov	r14, &.L__profc_strrchr+2
	mov	r13, &.L__profc_strrchr+4
	mov	r12, &.L__profc_strrchr+6
	clr	0(r1)
	jmp	.LBB94_2
.LBB94_1:                               ;   in Loop: Header=BB94_2 Depth=1
	mov	&.L__profc_strrchr+14, r12
	mov	&.L__profc_strrchr+12, r11
	mov	&.L__profc_strrchr+10, r14
	mov	&.L__profc_strrchr+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strrchr+8
	mov	r14, &.L__profc_strrchr+10
	mov	r13, &.L__profc_strrchr+12
	mov	r12, &.L__profc_strrchr+14
	jmp	.LBB94_2
.LBB94_2:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	2(r1), r13
	cmp	r13, r12
	jne	.LBB94_4
	jmp	.LBB94_3
.LBB94_3:                               ;   in Loop: Header=BB94_2 Depth=1
	mov	&.L__profc_strrchr+22, r12
	mov	&.L__profc_strrchr+20, r11
	mov	&.L__profc_strrchr+18, r14
	mov	&.L__profc_strrchr+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strrchr+16
	mov	r14, &.L__profc_strrchr+18
	mov	r13, &.L__profc_strrchr+20
	mov	r12, &.L__profc_strrchr+22
	mov	4(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB94_4
.LBB94_4:                               ;   in Loop: Header=BB94_2 Depth=1
	jmp	.LBB94_5
.LBB94_5:                               ;   in Loop: Header=BB94_2 Depth=1
	mov	4(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 4(r1)
	mov.b	0(r12), r12
	tst.b	r12
	jne	.LBB94_1
	jmp	.LBB94_6
.LBB94_6:
	mov	0(r1), r12
	add	#6, r1
	pop	r10
	ret
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
                                        ; -- End function
	.globl	strstr                          ; -- Begin function strstr
	.p2align	1
	.type	strstr,@function
strstr:                                 ; @strstr
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	&.L__profc_strstr+6, r12
	mov	&.L__profc_strstr+4, r11
	mov	&.L__profc_strstr+2, r14
	mov	&.L__profc_strstr, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strstr
	mov	r14, &.L__profc_strstr+2
	mov	r13, &.L__profc_strstr+4
	mov	r12, &.L__profc_strstr+6
	mov	6(r1), r12
	mov	r12, 2(r1)
	mov	4(r1), r12
	call	#strlen
	mov	r12, 0(r1)
	mov	0(r1), r12
	tst	r12
	jne	.LBB95_2
	jmp	.LBB95_1
.LBB95_1:
	mov	&.L__profc_strstr+14, r12
	mov	&.L__profc_strstr+12, r11
	mov	&.L__profc_strstr+10, r14
	mov	&.L__profc_strstr+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strstr+8
	mov	r14, &.L__profc_strstr+10
	mov	r13, &.L__profc_strstr+12
	mov	r12, &.L__profc_strstr+14
	mov	6(r1), r12
	mov	r12, 8(r1)
	jmp	.LBB95_9
.LBB95_2:
	jmp	.LBB95_3
.LBB95_3:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov	4(r1), r13
	mov.b	0(r13), r13
	sxt	r13
	call	#strchr
	mov	r12, 2(r1)
	tst	r12
	jeq	.LBB95_8
	jmp	.LBB95_4
.LBB95_4:                               ;   in Loop: Header=BB95_3 Depth=1
	mov	&.L__profc_strstr+22, r12
	mov	&.L__profc_strstr+20, r11
	mov	&.L__profc_strstr+18, r14
	mov	&.L__profc_strstr+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strstr+16
	mov	r14, &.L__profc_strstr+18
	mov	r13, &.L__profc_strstr+20
	mov	r12, &.L__profc_strstr+22
	mov	2(r1), r12
	mov	4(r1), r13
	mov	0(r1), r14
	call	#strncmp
	tst	r12
	jne	.LBB95_6
	jmp	.LBB95_5
.LBB95_5:
	mov	&.L__profc_strstr+30, r12
	mov	&.L__profc_strstr+28, r11
	mov	&.L__profc_strstr+26, r14
	mov	&.L__profc_strstr+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_strstr+24
	mov	r14, &.L__profc_strstr+26
	mov	r13, &.L__profc_strstr+28
	mov	r12, &.L__profc_strstr+30
	mov	2(r1), r12
	mov	r12, 8(r1)
	jmp	.LBB95_9
.LBB95_6:                               ;   in Loop: Header=BB95_3 Depth=1
	jmp	.LBB95_7
.LBB95_7:                               ;   in Loop: Header=BB95_3 Depth=1
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB95_3
.LBB95_8:
	clr	8(r1)
	jmp	.LBB95_9
.LBB95_9:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
                                        ; -- End function
	.globl	copysign                        ; -- Begin function copysign
	.p2align	1
	.type	copysign,@function
copysign:                               ; @copysign
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#24, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	40(r1), r15
	mov	38(r1), r14
	mov	36(r1), r13
	mov	34(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 14(r1)
	mov	r9, 12(r1)
	mov	r10, 10(r1)
	mov	r11, 8(r1)
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	&.L__profc_copysign+6, r12
	mov	&.L__profc_copysign+4, r11
	mov	&.L__profc_copysign+2, r14
	mov	&.L__profc_copysign, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_copysign
	mov	r14, &.L__profc_copysign+2
	mov	r13, &.L__profc_copysign+4
	mov	r12, &.L__profc_copysign+6
	mov	8(r1), r8
	mov	10(r1), r9
	mov	12(r1), r10
	mov	14(r1), r11
	clr	r15
	mov	r15, r12
	mov	r15, r13
	mov	r15, r14
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB96_3
	jmp	.LBB96_1
.LBB96_1:
	mov	&.L__profc_copysign+30, r12
	mov	&.L__profc_copysign+28, r11
	mov	&.L__profc_copysign+26, r14
	mov	&.L__profc_copysign+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_copysign+24
	mov	r14, &.L__profc_copysign+26
	mov	r13, &.L__profc_copysign+28
	mov	r12, &.L__profc_copysign+30
	mov	0(r1), r8
	mov	2(r1), r9
	mov	4(r1), r10
	mov	6(r1), r11
	clr	r15
	mov	r15, r12
	mov	r15, r13
	mov	r15, r14
	call	#__mspabi_cmpd
	cmp	#1, r12
	jl	.LBB96_3
	jmp	.LBB96_2
.LBB96_2:
	mov	&.L__profc_copysign+38, r12
	mov	&.L__profc_copysign+36, r11
	mov	&.L__profc_copysign+34, r14
	mov	&.L__profc_copysign+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_copysign+32
	mov	r14, &.L__profc_copysign+34
	mov	r13, &.L__profc_copysign+36
	mov	r12, &.L__profc_copysign+38
	jmp	.LBB96_6
.LBB96_3:
	mov	&.L__profc_copysign+22, r12
	mov	&.L__profc_copysign+20, r11
	mov	&.L__profc_copysign+18, r14
	mov	&.L__profc_copysign+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_copysign+16
	mov	r14, &.L__profc_copysign+18
	mov	r13, &.L__profc_copysign+20
	mov	r12, &.L__profc_copysign+22
	mov	8(r1), r8
	mov	10(r1), r9
	mov	12(r1), r10
	mov	14(r1), r11
	clr	r15
	mov	r15, r12
	mov	r15, r13
	mov	r15, r14
	call	#__mspabi_cmpd
	cmp	#1, r12
	jl	.LBB96_7
	jmp	.LBB96_4
.LBB96_4:
	mov	&.L__profc_copysign+46, r12
	mov	&.L__profc_copysign+44, r11
	mov	&.L__profc_copysign+42, r14
	mov	&.L__profc_copysign+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_copysign+40
	mov	r14, &.L__profc_copysign+42
	mov	r13, &.L__profc_copysign+44
	mov	r12, &.L__profc_copysign+46
	mov	0(r1), r8
	mov	2(r1), r9
	mov	4(r1), r10
	mov	6(r1), r11
	clr	r15
	mov	r15, r12
	mov	r15, r13
	mov	r15, r14
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB96_7
	jmp	.LBB96_5
.LBB96_5:
	mov	&.L__profc_copysign+54, r12
	mov	&.L__profc_copysign+52, r11
	mov	&.L__profc_copysign+50, r14
	mov	&.L__profc_copysign+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_copysign+48
	mov	r14, &.L__profc_copysign+50
	mov	r13, &.L__profc_copysign+52
	mov	r12, &.L__profc_copysign+54
	jmp	.LBB96_6
.LBB96_6:
	mov	&.L__profc_copysign+14, r12
	mov	&.L__profc_copysign+12, r11
	mov	&.L__profc_copysign+10, r14
	mov	&.L__profc_copysign+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_copysign+8
	mov	r14, &.L__profc_copysign+10
	mov	r13, &.L__profc_copysign+12
	mov	r12, &.L__profc_copysign+14
	mov	12(r1), r13
	mov	8(r1), r14
	mov	10(r1), r15
	mov	14(r1), r12
	xor	#-32768, r12
	mov	r15, 18(r1)
	mov	r14, 16(r1)
	mov	r13, 20(r1)
	mov	r12, 22(r1)
	jmp	.LBB96_8
.LBB96_7:
	mov	8(r1), r12
	mov	10(r1), r13
	mov	12(r1), r14
	mov	14(r1), r15
	mov	r15, 22(r1)
	mov	r14, 20(r1)
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	jmp	.LBB96_8
.LBB96_8:
	mov	16(r1), r12
	mov	18(r1), r13
	mov	20(r1), r14
	mov	22(r1), r15
	add	#24, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
                                        ; -- End function
	.globl	memmem                          ; -- Begin function memmem
	.p2align	1
	.type	memmem,@function
memmem:                                 ; @memmem
; %bb.0:
	push	r10
	sub	#14, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
	mov	r15, 4(r1)
	mov	&.L__profc_memmem+6, r12
	mov	&.L__profc_memmem+4, r11
	mov	&.L__profc_memmem+2, r14
	mov	&.L__profc_memmem, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmem
	mov	r14, &.L__profc_memmem+2
	mov	r13, &.L__profc_memmem+4
	mov	r12, &.L__profc_memmem+6
	mov	10(r1), r12
	mov	8(r1), r13
	add	r13, r12
	mov	4(r1), r13
	sub	r13, r12
	mov	r12, 0(r1)
	mov	4(r1), r12
	tst	r12
	jne	.LBB97_2
	jmp	.LBB97_1
.LBB97_1:
	mov	&.L__profc_memmem+14, r12
	mov	&.L__profc_memmem+12, r11
	mov	&.L__profc_memmem+10, r14
	mov	&.L__profc_memmem+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmem+8
	mov	r14, &.L__profc_memmem+10
	mov	r13, &.L__profc_memmem+12
	mov	r12, &.L__profc_memmem+14
	mov	10(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB97_13
.LBB97_2:
	mov	8(r1), r12
	mov	4(r1), r13
	cmp	r13, r12
	jhs	.LBB97_4
	jmp	.LBB97_3
.LBB97_3:
	mov	&.L__profc_memmem+22, r12
	mov	&.L__profc_memmem+20, r11
	mov	&.L__profc_memmem+18, r14
	mov	&.L__profc_memmem+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmem+16
	mov	r14, &.L__profc_memmem+18
	mov	r13, &.L__profc_memmem+20
	mov	r12, &.L__profc_memmem+22
	clr	12(r1)
	jmp	.LBB97_13
.LBB97_4:
	mov	10(r1), r12
	mov	r12, 2(r1)
	jmp	.LBB97_5
.LBB97_5:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r13
	mov	0(r1), r12
	cmp	r13, r12
	jlo	.LBB97_12
	jmp	.LBB97_6
.LBB97_6:                               ;   in Loop: Header=BB97_5 Depth=1
	mov	&.L__profc_memmem+30, r12
	mov	&.L__profc_memmem+28, r11
	mov	&.L__profc_memmem+26, r14
	mov	&.L__profc_memmem+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmem+24
	mov	r14, &.L__profc_memmem+26
	mov	r13, &.L__profc_memmem+28
	mov	r12, &.L__profc_memmem+30
	mov	2(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	6(r1), r13
	mov.b	0(r13), r13
	sxt	r13
	cmp	r13, r12
	jne	.LBB97_10
	jmp	.LBB97_7
.LBB97_7:                               ;   in Loop: Header=BB97_5 Depth=1
	mov	&.L__profc_memmem+46, r12
	mov	&.L__profc_memmem+44, r11
	mov	&.L__profc_memmem+42, r14
	mov	&.L__profc_memmem+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmem+40
	mov	r14, &.L__profc_memmem+42
	mov	r13, &.L__profc_memmem+44
	mov	r12, &.L__profc_memmem+46
	mov	2(r1), r12
	inc	r12
	mov	6(r1), r13
	inc	r13
	mov	4(r1), r14
	add	#-1, r14
	call	#memcmp
	tst	r12
	jne	.LBB97_10
	jmp	.LBB97_8
.LBB97_8:
	mov	&.L__profc_memmem+54, r12
	mov	&.L__profc_memmem+52, r11
	mov	&.L__profc_memmem+50, r14
	mov	&.L__profc_memmem+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmem+48
	mov	r14, &.L__profc_memmem+50
	mov	r13, &.L__profc_memmem+52
	mov	r12, &.L__profc_memmem+54
	jmp	.LBB97_9
.LBB97_9:
	mov	&.L__profc_memmem+38, r12
	mov	&.L__profc_memmem+36, r11
	mov	&.L__profc_memmem+34, r14
	mov	&.L__profc_memmem+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_memmem+32
	mov	r14, &.L__profc_memmem+34
	mov	r13, &.L__profc_memmem+36
	mov	r12, &.L__profc_memmem+38
	mov	2(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB97_13
.LBB97_10:                              ;   in Loop: Header=BB97_5 Depth=1
	jmp	.LBB97_11
.LBB97_11:                              ;   in Loop: Header=BB97_5 Depth=1
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB97_5
.LBB97_12:
	clr	12(r1)
	jmp	.LBB97_13
.LBB97_13:
	mov	12(r1), r12
	add	#14, r1
	pop	r10
	ret
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
                                        ; -- End function
	.globl	mempcpy                         ; -- Begin function mempcpy
	.p2align	1
	.type	mempcpy,@function
mempcpy:                                ; @mempcpy
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
	mov	&.L__profc_mempcpy+6, r12
	mov	&.L__profc_mempcpy+4, r11
	mov	&.L__profc_mempcpy+2, r14
	mov	&.L__profc_mempcpy, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_mempcpy
	mov	r14, &.L__profc_mempcpy+2
	mov	r13, &.L__profc_mempcpy+4
	mov	r12, &.L__profc_mempcpy+6
	mov	6(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	4(r1), r13
	mov	2(r1), r14
	call	#memcpy
                                        ; kill: def $r13 killed $r12
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13
	add	r13, r12
	add	#8, r1
	pop	r10
	ret
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
                                        ; -- End function
	.globl	frexp                           ; -- Begin function frexp
	.p2align	1
	.type	frexp,@function
frexp:                                  ; @frexp
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#12, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	20(r1), r11
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	&.L__profc_frexp+6, r12
	mov	&.L__profc_frexp+4, r11
	mov	&.L__profc_frexp+2, r14
	mov	&.L__profc_frexp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp
	mov	r14, &.L__profc_frexp+2
	mov	r13, &.L__profc_frexp+4
	mov	r12, &.L__profc_frexp+6
	clr	0(r1)
	clr	2(r1)
	mov	4(r1), r8
	mov	6(r1), r9
	mov	8(r1), r10
	mov	10(r1), r11
	clr	r15
	mov	r15, r12
	mov	r15, r13
	mov	r15, r14
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB99_2
	jmp	.LBB99_1
.LBB99_1:
	mov	&.L__profc_frexp+14, r12
	mov	&.L__profc_frexp+12, r11
	mov	&.L__profc_frexp+10, r14
	mov	&.L__profc_frexp+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+8
	mov	r14, &.L__profc_frexp+10
	mov	r13, &.L__profc_frexp+12
	mov	r12, &.L__profc_frexp+14
	mov	8(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	mov	10(r1), r12
	xor	#-32768, r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 8(r1)
	mov	r12, 10(r1)
	mov	#1, 2(r1)
	jmp	.LBB99_2
.LBB99_2:
	mov	4(r1), r8
	mov	6(r1), r9
	mov	8(r1), r10
	mov	10(r1), r11
	clr	r14
	mov	#16368, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	tst	r12
	jl	.LBB99_7
	jmp	.LBB99_3
.LBB99_3:
	mov	&.L__profc_frexp+22, r12
	mov	&.L__profc_frexp+20, r11
	mov	&.L__profc_frexp+18, r14
	mov	&.L__profc_frexp+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+16
	mov	r14, &.L__profc_frexp+18
	mov	r13, &.L__profc_frexp+20
	mov	r12, &.L__profc_frexp+22
	jmp	.LBB99_4
.LBB99_4:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r8
	mov	6(r1), r9
	mov	8(r1), r10
	mov	10(r1), r11
	clr	r14
	mov	#16368, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	tst	r12
	jl	.LBB99_6
	jmp	.LBB99_5
.LBB99_5:                               ;   in Loop: Header=BB99_4 Depth=1
	mov	&.L__profc_frexp+30, r12
	mov	&.L__profc_frexp+28, r11
	mov	&.L__profc_frexp+26, r14
	mov	&.L__profc_frexp+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+24
	mov	r14, &.L__profc_frexp+26
	mov	r13, &.L__profc_frexp+28
	mov	r12, &.L__profc_frexp+30
	mov	0(r1), r12
	inc	r12
	mov	r12, 0(r1)
	mov	4(r1), r8
	mov	6(r1), r9
	mov	8(r1), r10
	mov	10(r1), r11
	clr	r14
	mov	#16352, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_mpyd
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	jmp	.LBB99_4
.LBB99_6:
	jmp	.LBB99_15
.LBB99_7:
	mov	4(r1), r8
	mov	6(r1), r9
	mov	8(r1), r10
	mov	10(r1), r11
	clr	r14
	mov	#16352, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB99_14
	jmp	.LBB99_8
.LBB99_8:
	mov	&.L__profc_frexp+46, r12
	mov	&.L__profc_frexp+44, r11
	mov	&.L__profc_frexp+42, r14
	mov	&.L__profc_frexp+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+40
	mov	r14, &.L__profc_frexp+42
	mov	r13, &.L__profc_frexp+44
	mov	r12, &.L__profc_frexp+46
	mov	4(r1), r8
	mov	6(r1), r9
	mov	8(r1), r10
	mov	10(r1), r11
	clr	r15
	mov	r15, r12
	mov	r15, r13
	mov	r15, r14
	call	#__mspabi_cmpd
	tst	r12
	jeq	.LBB99_14
	jmp	.LBB99_9
.LBB99_9:
	mov	&.L__profc_frexp+54, r12
	mov	&.L__profc_frexp+52, r11
	mov	&.L__profc_frexp+50, r14
	mov	&.L__profc_frexp+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+48
	mov	r14, &.L__profc_frexp+50
	mov	r13, &.L__profc_frexp+52
	mov	r12, &.L__profc_frexp+54
	jmp	.LBB99_10
.LBB99_10:
	mov	&.L__profc_frexp+38, r12
	mov	&.L__profc_frexp+36, r11
	mov	&.L__profc_frexp+34, r14
	mov	&.L__profc_frexp+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+32
	mov	r14, &.L__profc_frexp+34
	mov	r13, &.L__profc_frexp+36
	mov	r12, &.L__profc_frexp+38
	jmp	.LBB99_11
.LBB99_11:                              ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r8
	mov	6(r1), r9
	mov	8(r1), r10
	mov	10(r1), r11
	clr	r14
	mov	#16352, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB99_13
	jmp	.LBB99_12
.LBB99_12:                              ;   in Loop: Header=BB99_11 Depth=1
	mov	&.L__profc_frexp+62, r12
	mov	&.L__profc_frexp+60, r11
	mov	&.L__profc_frexp+58, r14
	mov	&.L__profc_frexp+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+56
	mov	r14, &.L__profc_frexp+58
	mov	r13, &.L__profc_frexp+60
	mov	r12, &.L__profc_frexp+62
	mov	0(r1), r12
	add	#-1, r12
	mov	r12, 0(r1)
	mov	4(r1), r12
	mov	6(r1), r13
	mov	8(r1), r14
	mov	10(r1), r15
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_addd
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	jmp	.LBB99_11
.LBB99_13:
	jmp	.LBB99_14
.LBB99_14:
	jmp	.LBB99_15
.LBB99_15:
	mov	0(r1), r13
	mov	20(r1), r12
	mov	r13, 0(r12)
	mov	2(r1), r12
	tst	r12
	jeq	.LBB99_17
	jmp	.LBB99_16
.LBB99_16:
	mov	&.L__profc_frexp+70, r12
	mov	&.L__profc_frexp+68, r11
	mov	&.L__profc_frexp+66, r14
	mov	&.L__profc_frexp+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_frexp+64
	mov	r14, &.L__profc_frexp+66
	mov	r13, &.L__profc_frexp+68
	mov	r12, &.L__profc_frexp+70
	mov	8(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	mov	10(r1), r12
	xor	#-32768, r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 8(r1)
	mov	r12, 10(r1)
	jmp	.LBB99_17
.LBB99_17:
	mov	4(r1), r12
	mov	6(r1), r13
	mov	8(r1), r14
	mov	10(r1), r15
	add	#12, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
                                        ; -- End function
	.globl	__muldi3                        ; -- Begin function __muldi3
	.p2align	1
	.type	__muldi3,@function
__muldi3:                               ; @__muldi3
; %bb.0:
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#50, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	68(r1), r15
	mov	66(r1), r14
	mov	64(r1), r13
	mov	62(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 48(r1)
	mov	r9, 46(r1)
	mov	r10, 44(r1)
	mov	r11, 42(r1)
	mov	r15, 40(r1)
	mov	r14, 38(r1)
	mov	r13, 36(r1)
	mov	r12, 34(r1)
	mov	&.L__profc___muldi3+6, r12
	mov	&.L__profc___muldi3+4, r11
	mov	&.L__profc___muldi3+2, r14
	mov	&.L__profc___muldi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___muldi3
	mov	r14, &.L__profc___muldi3+2
	mov	r13, &.L__profc___muldi3+4
	mov	r12, &.L__profc___muldi3+6
	clr	32(r1)
	clr	30(r1)
	clr	28(r1)
	clr	26(r1)
	mov	42(r1), r12
	mov	44(r1), r13
	mov	46(r1), r14
	mov	48(r1), r15
	mov	r15, 24(r1)
	mov	r14, 22(r1)
	mov	r13, 20(r1)
	mov	r12, 18(r1)
	jmp	.LBB100_1
.LBB100_1:                              ; =>This Inner Loop Header: Depth=1
	mov	22(r1), r14
	mov	18(r1), r12
	mov	24(r1), r15
	mov	20(r1), r13
	bis	r15, r13
	bis	r14, r12
	bis	r13, r12
	tst	r12
	jeq	.LBB100_7
	jmp	.LBB100_2
.LBB100_2:                              ;   in Loop: Header=BB100_1 Depth=1
	mov	&.L__profc___muldi3+14, r12
	mov	&.L__profc___muldi3+12, r11
	mov	&.L__profc___muldi3+10, r14
	mov	&.L__profc___muldi3+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___muldi3+8
	mov	r14, &.L__profc___muldi3+10
	mov	r13, &.L__profc___muldi3+12
	mov	r12, &.L__profc___muldi3+14
	mov.b	18(r1), r12
	bit.b	#1, r12
	jeq	.LBB100_6
	jmp	.LBB100_3
.LBB100_3:                              ;   in Loop: Header=BB100_1 Depth=1
	mov	&.L__profc___muldi3+22, r12
	mov	&.L__profc___muldi3+20, r15
	mov	&.L__profc___muldi3+18, r14
	mov	&.L__profc___muldi3+16, r11
	inc	r11
	tst	r11
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r11, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r15, r13
	add	r10, r13
	cmp	r15, r13
	mov	r2, r9
	mov	#1, r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r15, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc___muldi3+16
	mov	r14, &.L__profc___muldi3+18
	mov	r13, &.L__profc___muldi3+20
	mov	r12, &.L__profc___muldi3+22
	mov	40(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	38(r1), r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	34(r1), r10
	mov	36(r1), r12
	mov	32(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	30(r1), r13
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	mov	26(r1), r11
	mov	28(r1), r14
	mov	r14, r13
	add	r12, r13
	mov	r11, r12
	add	r10, r12
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	cmp	r11, r12
	mov	r2, r11
	mov	r15, r12
	bic	r11, r12
	add	r12, r13
	mov	r13, 12(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	mov	r15, 14(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	jeq	.LBB100_5
; %bb.4:                                ;   in Loop: Header=BB100_1 Depth=1
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
.LBB100_5:                              ;   in Loop: Header=BB100_1 Depth=1
	mov	12(r1), r14                     ; 2-byte Folded Reload
	mov	10(r1), r15                     ; 2-byte Folded Reload
	mov	0(r1), r10                      ; 2-byte Folded Reload
	mov	8(r1), r8                       ; 2-byte Folded Reload
	mov	2(r1), r7                       ; 2-byte Folded Reload
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	16(r1), r11                     ; 2-byte Folded Reload
	mov	r8, r9
	add	r13, r9
	mov	r9, r13
	add	r11, r13
	cmp	r9, r13
	mov	r2, r6
	mov	r10, r11
	bic	r6, r11
	add	r7, r12
	cmp	r8, r9
	mov	r2, r9
	bic	r9, r10
	add	r10, r12
	add	r11, r12
	mov	r15, 26(r1)
	mov	r14, 28(r1)
	mov	r13, 30(r1)
	mov	r12, 32(r1)
	jmp	.LBB100_6
.LBB100_6:                              ;   in Loop: Header=BB100_1 Depth=1
	mov	40(r1), r15
	mov	38(r1), r11
	mov	34(r1), r13
	mov	36(r1), r10
	mov	r10, r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	mov	r11, r14
	add	r14, r14
	swpb	r10
	mov.b	r10, r10
	clrc
	rrc	r10
	rra	r10
	rra	r10
	rra	r10
	rra	r10
	rra	r10
	rra	r10
	bis	r10, r14
	add	r15, r15
	swpb	r11
	mov.b	r11, r11
	clrc
	rrc	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	bis	r11, r15
	add	r13, r13
	mov	r15, 40(r1)
	mov	r14, 38(r1)
	mov	r13, 34(r1)
	mov	r12, 36(r1)
	mov	24(r1), r15
	mov	22(r1), r14
	mov	20(r1), r13
	mov	18(r1), r12
	clrc
	rrc	r12
	mov	r13, r11
	mov.b	r11, r11
	swpb	r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	bis	r11, r12
	clrc
	rrc	r13
	mov	r14, r11
	mov.b	r11, r11
	swpb	r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	bis	r11, r13
	clrc
	rrc	r14
	mov	r15, r11
	mov.b	r11, r11
	swpb	r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	add	r11, r11
	bis	r11, r14
	clrc
	rrc	r15
	mov	r15, 24(r1)
	mov	r14, 22(r1)
	mov	r13, 20(r1)
	mov	r12, 18(r1)
	jmp	.LBB100_1
.LBB100_7:
	mov	26(r1), r12
	mov	28(r1), r13
	mov	30(r1), r14
	mov	32(r1), r15
	add	#50, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	ret
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
                                        ; -- End function
	.globl	udivmodsi4                      ; -- Begin function udivmodsi4
	.p2align	1
	.type	udivmodsi4,@function
udivmodsi4:                             ; @udivmodsi4
; %bb.0:
	push	r9
	push	r10
	sub	#30, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	36(r1), r11
	mov	r13, 24(r1)
	mov	r12, 22(r1)
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	&.L__profc_udivmodsi4+6, r12
	mov	&.L__profc_udivmodsi4+4, r11
	mov	&.L__profc_udivmodsi4+2, r14
	mov	&.L__profc_udivmodsi4, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_udivmodsi4
	mov	r14, &.L__profc_udivmodsi4+2
	mov	r13, &.L__profc_udivmodsi4+4
	mov	r12, &.L__profc_udivmodsi4+6
	clr	16(r1)
	mov	#1, 14(r1)
	clr	12(r1)
	clr	10(r1)
	jmp	.LBB101_1
.LBB101_1:                              ; =>This Inner Loop Header: Depth=1
	mov	18(r1), r12
	mov	20(r1), r13
	mov	22(r1), r15
	mov	24(r1), r14
	cmp	r14, r13
	mov	r2, r11
	and	#1, r11
	mov	r11, 6(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jeq	.LBB101_3
; %bb.2:                                ;   in Loop: Header=BB101_1 Depth=1
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB101_3:                              ;   in Loop: Header=BB101_1 Depth=1
	mov	8(r1), r13                      ; 2-byte Folded Reload
	clr.b	r12
	bit	#1, r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB101_8
	jmp	.LBB101_4
.LBB101_4:                              ;   in Loop: Header=BB101_1 Depth=1
	mov	&.L__profc_udivmodsi4+38, r12
	mov	&.L__profc_udivmodsi4+36, r11
	mov	&.L__profc_udivmodsi4+34, r14
	mov	&.L__profc_udivmodsi4+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_udivmodsi4+32
	mov	r14, &.L__profc_udivmodsi4+34
	mov	r13, &.L__profc_udivmodsi4+36
	mov	r12, &.L__profc_udivmodsi4+38
	mov	16(r1), r12
	mov	14(r1), r13
	bis	r12, r13
	clr.b	r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB101_8
	jmp	.LBB101_5
.LBB101_5:                              ;   in Loop: Header=BB101_1 Depth=1
	mov	&.L__profc_udivmodsi4+46, r12
	mov	&.L__profc_udivmodsi4+44, r11
	mov	&.L__profc_udivmodsi4+42, r14
	mov	&.L__profc_udivmodsi4+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_udivmodsi4+40
	mov	r14, &.L__profc_udivmodsi4+42
	mov	r13, &.L__profc_udivmodsi4+44
	mov	r12, &.L__profc_udivmodsi4+46
	jmp	.LBB101_6
.LBB101_6:                              ;   in Loop: Header=BB101_1 Depth=1
	mov	&.L__profc_udivmodsi4+22, r12
	mov	&.L__profc_udivmodsi4+20, r11
	mov	&.L__profc_udivmodsi4+18, r14
	mov	&.L__profc_udivmodsi4+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_udivmodsi4+16
	mov	r14, &.L__profc_udivmodsi4+18
	mov	r13, &.L__profc_udivmodsi4+20
	mov	r12, &.L__profc_udivmodsi4+22
	mov	20(r1), r13
	and	#-32768, r13
	tst	r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 4(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB101_8
	jmp	.LBB101_7
.LBB101_7:                              ;   in Loop: Header=BB101_1 Depth=1
	mov.b	4(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc_udivmodsi4+30, r13
	mov	&.L__profc_udivmodsi4+28, r10
	mov	&.L__profc_udivmodsi4+26, r15
	mov	&.L__profc_udivmodsi4+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_udivmodsi4+24
	mov	r15, &.L__profc_udivmodsi4+26
	mov	r14, &.L__profc_udivmodsi4+28
	mov	r13, &.L__profc_udivmodsi4+30
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB101_8
.LBB101_8:                              ;   in Loop: Header=BB101_1 Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB101_10
	jmp	.LBB101_9
.LBB101_9:                              ;   in Loop: Header=BB101_1 Depth=1
	mov	&.L__profc_udivmodsi4+14, r12
	mov	&.L__profc_udivmodsi4+12, r11
	mov	&.L__profc_udivmodsi4+10, r14
	mov	&.L__profc_udivmodsi4+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_udivmodsi4+8
	mov	r14, &.L__profc_udivmodsi4+10
	mov	r13, &.L__profc_udivmodsi4+12
	mov	r12, &.L__profc_udivmodsi4+14
	mov	18(r1), r13
	mov	20(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 18(r1)
	mov	r12, 20(r1)
	mov	14(r1), r13
	mov	16(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 14(r1)
	mov	r12, 16(r1)
	jmp	.LBB101_1
.LBB101_10:
	jmp	.LBB101_11
.LBB101_11:                             ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB101_17
	jmp	.LBB101_12
.LBB101_12:                             ;   in Loop: Header=BB101_11 Depth=1
	mov	&.L__profc_udivmodsi4+54, r13
	mov	&.L__profc_udivmodsi4+52, r12
	mov	&.L__profc_udivmodsi4+50, r15
	mov	&.L__profc_udivmodsi4+48, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc_udivmodsi4+48
	mov	r15, &.L__profc_udivmodsi4+50
	mov	r14, &.L__profc_udivmodsi4+52
	mov	r13, &.L__profc_udivmodsi4+54
	mov	22(r1), r15
	mov	24(r1), r13
	mov	18(r1), r11
	mov	20(r1), r14
	cmp	r14, r13
	mov	r2, r9
	mov	r12, r10
	bic	r9, r10
	mov	r10, 0(r1)                      ; 2-byte Folded Spill
	cmp	r11, r15
	mov	r2, r15
	bic	r15, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB101_14
; %bb.13:                               ;   in Loop: Header=BB101_11 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB101_14:                             ;   in Loop: Header=BB101_11 Depth=1
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB101_16
	jmp	.LBB101_15
.LBB101_15:                             ;   in Loop: Header=BB101_11 Depth=1
	mov	&.L__profc_udivmodsi4+62, r12
	mov	&.L__profc_udivmodsi4+60, r15
	mov	&.L__profc_udivmodsi4+58, r14
	mov	&.L__profc_udivmodsi4+56, r11
	inc	r11
	tst	r11
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r11, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r15, r13
	add	r10, r13
	cmp	r15, r13
	mov	r2, r9
	mov	#1, r15
	mov	r15, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc_udivmodsi4+56
	mov	r14, &.L__profc_udivmodsi4+58
	mov	r13, &.L__profc_udivmodsi4+60
	mov	r12, &.L__profc_udivmodsi4+62
	mov	18(r1), r14
	mov	20(r1), r11
	mov	22(r1), r13
	mov	24(r1), r12
	sub	r11, r12
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	sub	r15, r12
	sub	r14, r13
	mov	r13, 22(r1)
	mov	r12, 24(r1)
	mov	16(r1), r14
	mov	14(r1), r15
	mov	12(r1), r13
	mov	10(r1), r12
	bis	r15, r12
	bis	r14, r13
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	jmp	.LBB101_16
.LBB101_16:                             ;   in Loop: Header=BB101_11 Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	20(r1), r13
	mov	18(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 20(r1)
	mov	r12, 18(r1)
	jmp	.LBB101_11
.LBB101_17:
	mov	36(r1), r12
	tst	r12
	jeq	.LBB101_19
	jmp	.LBB101_18
.LBB101_18:
	mov	&.L__profc_udivmodsi4+70, r12
	mov	&.L__profc_udivmodsi4+68, r11
	mov	&.L__profc_udivmodsi4+66, r14
	mov	&.L__profc_udivmodsi4+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc_udivmodsi4+64
	mov	r14, &.L__profc_udivmodsi4+66
	mov	r13, &.L__profc_udivmodsi4+68
	mov	r12, &.L__profc_udivmodsi4+70
	mov	22(r1), r12
	mov	24(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB101_20
.LBB101_19:
	mov	10(r1), r12
	mov	12(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB101_20
.LBB101_20:
	mov	26(r1), r12
	mov	28(r1), r13
	add	#30, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
                                        ; -- End function
	.globl	__clrsbqi2                      ; -- Begin function __clrsbqi2
	.p2align	1
	.type	__clrsbqi2,@function
__clrsbqi2:                             ; @__clrsbqi2
; %bb.0:
	push	r10
	sub	#6, r1
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 3(r1)
	mov	&.L__profc___clrsbqi2+6, r12
	mov	&.L__profc___clrsbqi2+4, r11
	mov	&.L__profc___clrsbqi2+2, r14
	mov	&.L__profc___clrsbqi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clrsbqi2
	mov	r14, &.L__profc___clrsbqi2+2
	mov	r13, &.L__profc___clrsbqi2+4
	mov	r12, &.L__profc___clrsbqi2+6
	mov.b	3(r1), r12
	sxt	r12
	tst	r12
	jge	.LBB102_2
	jmp	.LBB102_1
.LBB102_1:
	mov	&.L__profc___clrsbqi2+14, r12
	mov	&.L__profc___clrsbqi2+12, r11
	mov	&.L__profc___clrsbqi2+10, r14
	mov	&.L__profc___clrsbqi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clrsbqi2+8
	mov	r14, &.L__profc___clrsbqi2+10
	mov	r13, &.L__profc___clrsbqi2+12
	mov	r12, &.L__profc___clrsbqi2+14
	mov.b	3(r1), r12
	inv.b	r12
	mov.b	r12, 3(r1)
	jmp	.LBB102_2
.LBB102_2:
	mov.b	3(r1), r12
	tst.b	r12
	jne	.LBB102_4
	jmp	.LBB102_3
.LBB102_3:
	mov	&.L__profc___clrsbqi2+22, r12
	mov	&.L__profc___clrsbqi2+20, r11
	mov	&.L__profc___clrsbqi2+18, r14
	mov	&.L__profc___clrsbqi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clrsbqi2+16
	mov	r14, &.L__profc___clrsbqi2+18
	mov	r13, &.L__profc___clrsbqi2+20
	mov	r12, &.L__profc___clrsbqi2+22
	mov	#7, 4(r1)
	jmp	.LBB102_5
.LBB102_4:
	mov.b	3(r1), r13
	swpb	r13
	clrc
	mov	r13, r12
	rrc	r12
	bis	r12, r13
	clrc
	mov	r13, r12
	rrc	r12
	rra	r12
	bis	r12, r13
	clrc
	mov	r13, r12
	rrc	r12
	rra	r12
	rra	r12
	rra	r12
	bis	r12, r13
	mov	r13, r12
	swpb	r12
	mov.b	r12, r12
	bis	r12, r13
	inv	r13
	clrc
	mov	r13, r12
	rrc	r12
	and	#21845, r12
	sub	r12, r13
	mov	r13, r12
	and	#13107, r12
	clrc
	rrc	r13
	rra	r13
	and	#13107, r13
	add	r13, r12
	clrc
	mov	r12, r13
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	add	r13, r12
	and	#3855, r12
	mov	r12, r13
	swpb	r13
	add	r13, r12
	mov.b	r12, r12
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	jmp	.LBB102_5
.LBB102_5:
	mov	4(r1), r12
	add	#6, r1
	pop	r10
	ret
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
                                        ; -- End function
	.globl	__clrsbdi2                      ; -- Begin function __clrsbdi2
	.p2align	1
	.type	__clrsbdi2,@function
__clrsbdi2:                             ; @__clrsbdi2
; %bb.0:
	push	r10
	sub	#34, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	&.L__profc___clrsbdi2+6, r12
	mov	&.L__profc___clrsbdi2+4, r11
	mov	&.L__profc___clrsbdi2+2, r14
	mov	&.L__profc___clrsbdi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clrsbdi2
	mov	r14, &.L__profc___clrsbdi2+2
	mov	r13, &.L__profc___clrsbdi2+4
	mov	r12, &.L__profc___clrsbdi2+6
	mov	30(r1), r12
	tst	r12
	jge	.LBB103_2
	jmp	.LBB103_1
.LBB103_1:
	mov	&.L__profc___clrsbdi2+14, r12
	mov	&.L__profc___clrsbdi2+12, r11
	mov	&.L__profc___clrsbdi2+10, r14
	mov	&.L__profc___clrsbdi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clrsbdi2+8
	mov	r14, &.L__profc___clrsbdi2+10
	mov	r13, &.L__profc___clrsbdi2+12
	mov	r12, &.L__profc___clrsbdi2+14
	mov	30(r1), r15
	mov	28(r1), r14
	mov	26(r1), r13
	mov	24(r1), r12
	inv	r12
	inv	r13
	inv	r14
	inv	r15
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	jmp	.LBB103_2
.LBB103_2:
	mov	28(r1), r14
	mov	24(r1), r12
	mov	30(r1), r15
	mov	26(r1), r13
	bis	r15, r13
	bis	r14, r12
	bis	r13, r12
	tst	r12
	jne	.LBB103_4
	jmp	.LBB103_3
.LBB103_3:
	mov	&.L__profc___clrsbdi2+22, r12
	mov	&.L__profc___clrsbdi2+20, r11
	mov	&.L__profc___clrsbdi2+18, r14
	mov	&.L__profc___clrsbdi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clrsbdi2+16
	mov	r14, &.L__profc___clrsbdi2+18
	mov	r13, &.L__profc___clrsbdi2+20
	mov	r12, &.L__profc___clrsbdi2+22
	mov	#63, 32(r1)
	jmp	.LBB103_11
.LBB103_4:
	mov	24(r1), r12
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	mov	26(r1), r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	28(r1), r15
	mov	r15, 14(r1)                     ; 2-byte Folded Spill
	mov	30(r1), r13
	mov	r13, 16(r1)                     ; 2-byte Folded Spill
	clrc
	mov	r13, r12
	rrc	r12
	mov	r13, r14
	bis	r12, r14
	clrc
	mov	r14, r12
	rrc	r12
	rra	r12
	bis	r12, r14
	clrc
	mov	r14, r12
	rrc	r12
	rra	r12
	rra	r12
	rra	r12
	bis	r12, r14
	mov	r14, r12
	swpb	r12
	mov.b	r12, r12
	bis	r12, r14
	inv	r14
	clrc
	mov	r14, r12
	rrc	r12
	and	#21845, r12
	sub	r12, r14
	mov	r14, r12
	and	#13107, r12
	clrc
	rrc	r14
	rra	r14
	and	#13107, r14
	add	r14, r12
	clrc
	mov	r12, r14
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	add	r14, r12
	and	#3855, r12
	mov	r12, r14
	swpb	r14
	add	r14, r12
	mov.b	r12, r12
	clrc
	mov	r15, r14
	rrc	r14
	bis	r14, r15
	clrc
	mov	r15, r14
	rrc	r14
	rra	r14
	bis	r14, r15
	clrc
	mov	r15, r14
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r15
	mov	r15, r14
	swpb	r14
	mov.b	r14, r14
	bis	r14, r15
	inv	r15
	clrc
	mov	r15, r14
	rrc	r14
	and	#21845, r14
	sub	r14, r15
	mov	r15, r14
	and	#13107, r14
	clrc
	rrc	r15
	rra	r15
	and	#13107, r15
	add	r15, r14
	clrc
	mov	r14, r15
	rrc	r15
	rra	r15
	rra	r15
	rra	r15
	add	r15, r14
	and	#3855, r14
	mov	r14, r15
	swpb	r15
	add	r15, r14
	mov.b	r14, r14
	add	#16, r14
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	jne	.LBB103_6
; %bb.5:
	mov	18(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
.LBB103_6:
	mov	12(r1), r13                     ; 2-byte Folded Reload
	mov	10(r1), r15                     ; 2-byte Folded Reload
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	clrc
	mov	r13, r12
	rrc	r12
	mov	r13, r14
	bis	r12, r14
	clrc
	mov	r14, r12
	rrc	r12
	rra	r12
	bis	r12, r14
	clrc
	mov	r14, r12
	rrc	r12
	rra	r12
	rra	r12
	rra	r12
	bis	r12, r14
	mov	r14, r12
	swpb	r12
	mov.b	r12, r12
	bis	r12, r14
	inv	r14
	clrc
	mov	r14, r12
	rrc	r12
	and	#21845, r12
	sub	r12, r14
	mov	r14, r12
	and	#13107, r12
	clrc
	rrc	r14
	rra	r14
	and	#13107, r14
	add	r14, r12
	clrc
	mov	r12, r14
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	add	r14, r12
	and	#3855, r12
	mov	r12, r14
	swpb	r14
	add	r14, r12
	mov.b	r12, r12
	clrc
	mov	r15, r14
	rrc	r14
	bis	r14, r15
	clrc
	mov	r15, r14
	rrc	r14
	rra	r14
	bis	r14, r15
	clrc
	mov	r15, r14
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r15
	mov	r15, r14
	swpb	r14
	mov.b	r14, r14
	bis	r14, r15
	inv	r15
	clrc
	mov	r15, r14
	rrc	r14
	and	#21845, r14
	sub	r14, r15
	mov	r15, r14
	and	#13107, r14
	clrc
	rrc	r15
	rra	r15
	and	#13107, r15
	add	r15, r14
	clrc
	mov	r14, r15
	rrc	r15
	rra	r15
	rra	r15
	rra	r15
	add	r15, r14
	and	#3855, r14
	mov	r14, r15
	swpb	r15
	add	r15, r14
	mov.b	r14, r14
	add	#16, r14
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	tst	r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jne	.LBB103_8
; %bb.7:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB103_8:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	16(r1), r14                     ; 2-byte Folded Reload
	mov	14(r1), r13                     ; 2-byte Folded Reload
	mov	8(r1), r15                      ; 2-byte Folded Reload
	add	#32, r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	bis	r14, r13
	tst	r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jne	.LBB103_10
; %bb.9:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB103_10:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 22(r1)
	mov	22(r1), r12
	add	#-1, r12
	mov	r12, 32(r1)
	jmp	.LBB103_11
.LBB103_11:
	mov	32(r1), r12
	add	#34, r1
	pop	r10
	ret
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
                                        ; -- End function
	.globl	__mulsi3                        ; -- Begin function __mulsi3
	.p2align	1
	.type	__mulsi3,@function
__mulsi3:                               ; @__mulsi3
; %bb.0:
	push	r10
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	mov	&.L__profc___mulsi3+6, r12
	mov	&.L__profc___mulsi3+4, r11
	mov	&.L__profc___mulsi3+2, r14
	mov	&.L__profc___mulsi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3
	mov	r14, &.L__profc___mulsi3+2
	mov	r13, &.L__profc___mulsi3+4
	mov	r12, &.L__profc___mulsi3+6
	clr	0(r1)
	jmp	.LBB104_1
.LBB104_1:                              ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB104_5
	jmp	.LBB104_2
.LBB104_2:                              ;   in Loop: Header=BB104_1 Depth=1
	mov	&.L__profc___mulsi3+14, r12
	mov	&.L__profc___mulsi3+12, r11
	mov	&.L__profc___mulsi3+10, r14
	mov	&.L__profc___mulsi3+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3+8
	mov	r14, &.L__profc___mulsi3+10
	mov	r13, &.L__profc___mulsi3+12
	mov	r12, &.L__profc___mulsi3+14
	mov.b	4(r1), r12
	bit.b	#1, r12
	jeq	.LBB104_4
	jmp	.LBB104_3
.LBB104_3:                              ;   in Loop: Header=BB104_1 Depth=1
	mov	&.L__profc___mulsi3+22, r12
	mov	&.L__profc___mulsi3+20, r11
	mov	&.L__profc___mulsi3+18, r14
	mov	&.L__profc___mulsi3+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3+16
	mov	r14, &.L__profc___mulsi3+18
	mov	r13, &.L__profc___mulsi3+20
	mov	r12, &.L__profc___mulsi3+22
	mov	2(r1), r13
	mov	0(r1), r12
	add	r13, r12
	mov	r12, 0(r1)
	jmp	.LBB104_4
.LBB104_4:                              ;   in Loop: Header=BB104_1 Depth=1
	mov	4(r1), r12
	clrc
	rrc	r12
	mov	r12, 4(r1)
	mov	2(r1), r12
	add	r12, r12
	mov	r12, 2(r1)
	jmp	.LBB104_1
.LBB104_5:
	mov	0(r1), r12
	add	#6, r1
	pop	r10
	ret
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
                                        ; -- End function
	.globl	__cmovd                         ; -- Begin function __cmovd
	.p2align	1
	.type	__cmovd,@function
__cmovd:                                ; @__cmovd
; %bb.0:
	push	r10
	sub	#16, r1
	mov	r12, 14(r1)
	mov	r13, 12(r1)
	mov	r14, 10(r1)
	mov	&.L__profc___cmovd+6, r12
	mov	&.L__profc___cmovd+4, r11
	mov	&.L__profc___cmovd+2, r14
	mov	&.L__profc___cmovd, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovd
	mov	r14, &.L__profc___cmovd+2
	mov	r13, &.L__profc___cmovd+4
	mov	r12, &.L__profc___cmovd+6
	mov	10(r1), r12
	clrc
	rrc	r12
	rra	r12
	rra	r12
	mov	r12, 6(r1)
	mov	10(r1), r12
	and	#-8, r12
	mov	r12, 4(r1)
	mov	14(r1), r12
	mov	r12, 2(r1)
	mov	12(r1), r12
	mov	r12, 0(r1)
	mov	2(r1), r12
	mov	0(r1), r13
	cmp	r13, r12
	jlo	.LBB105_3
	jmp	.LBB105_1
.LBB105_1:
	mov	&.L__profc___cmovd+22, r12
	mov	&.L__profc___cmovd+20, r11
	mov	&.L__profc___cmovd+18, r14
	mov	&.L__profc___cmovd+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovd+16
	mov	r14, &.L__profc___cmovd+18
	mov	r13, &.L__profc___cmovd+20
	mov	r12, &.L__profc___cmovd+22
	mov	2(r1), r13
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	cmp	r13, r12
	jlo	.LBB105_3
	jmp	.LBB105_2
.LBB105_2:
	mov	&.L__profc___cmovd+30, r12
	mov	&.L__profc___cmovd+28, r11
	mov	&.L__profc___cmovd+26, r14
	mov	&.L__profc___cmovd+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovd+24
	mov	r14, &.L__profc___cmovd+26
	mov	r13, &.L__profc___cmovd+28
	mov	r12, &.L__profc___cmovd+30
	jmp	.LBB105_11
.LBB105_3:
	mov	&.L__profc___cmovd+14, r12
	mov	&.L__profc___cmovd+12, r11
	mov	&.L__profc___cmovd+10, r14
	mov	&.L__profc___cmovd+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovd+8
	mov	r14, &.L__profc___cmovd+10
	mov	r13, &.L__profc___cmovd+12
	mov	r12, &.L__profc___cmovd+14
	clr	8(r1)
	jmp	.LBB105_4
.LBB105_4:                              ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov	6(r1), r13
	cmp	r13, r12
	jhs	.LBB105_7
	jmp	.LBB105_5
.LBB105_5:                              ;   in Loop: Header=BB105_4 Depth=1
	mov	&.L__profc___cmovd+38, r12
	mov	&.L__profc___cmovd+36, r11
	mov	&.L__profc___cmovd+34, r14
	mov	&.L__profc___cmovd+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovd+32
	mov	r14, &.L__profc___cmovd+34
	mov	r13, &.L__profc___cmovd+36
	mov	r12, &.L__profc___cmovd+38
	mov	12(r1), r12
	mov	8(r1), r10
	add	r10, r10
	add	r10, r10
	add	r10, r10
	add	r10, r12
	mov	0(r12), r13
	mov	2(r12), r14
	mov	4(r12), r15
	mov	6(r12), r11
	mov	14(r1), r12
	add	r10, r12
	mov	r11, 6(r12)
	mov	r15, 4(r12)
	mov	r14, 2(r12)
	mov	r13, 0(r12)
	jmp	.LBB105_6
.LBB105_6:                              ;   in Loop: Header=BB105_4 Depth=1
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB105_4
.LBB105_7:
	jmp	.LBB105_8
.LBB105_8:                              ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	mov	4(r1), r12
	cmp	r13, r12
	jhs	.LBB105_10
	jmp	.LBB105_9
.LBB105_9:                              ;   in Loop: Header=BB105_8 Depth=1
	mov	&.L__profc___cmovd+46, r12
	mov	&.L__profc___cmovd+44, r11
	mov	&.L__profc___cmovd+42, r14
	mov	&.L__profc___cmovd+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovd+40
	mov	r14, &.L__profc___cmovd+42
	mov	r13, &.L__profc___cmovd+44
	mov	r12, &.L__profc___cmovd+46
	mov	0(r1), r12
	mov	4(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB105_8
.LBB105_10:
	jmp	.LBB105_15
.LBB105_11:
	jmp	.LBB105_12
.LBB105_12:                             ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 10(r1)
	tst	r12
	jeq	.LBB105_14
	jmp	.LBB105_13
.LBB105_13:                             ;   in Loop: Header=BB105_12 Depth=1
	mov	&.L__profc___cmovd+54, r12
	mov	&.L__profc___cmovd+52, r11
	mov	&.L__profc___cmovd+50, r14
	mov	&.L__profc___cmovd+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovd+48
	mov	r14, &.L__profc___cmovd+50
	mov	r13, &.L__profc___cmovd+52
	mov	r12, &.L__profc___cmovd+54
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB105_12
.LBB105_14:
	jmp	.LBB105_15
.LBB105_15:
	add	#16, r1
	pop	r10
	ret
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
                                        ; -- End function
	.globl	__cmovh                         ; -- Begin function __cmovh
	.p2align	1
	.type	__cmovh,@function
__cmovh:                                ; @__cmovh
; %bb.0:
	push	r10
	sub	#14, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
	mov	&.L__profc___cmovh+6, r12
	mov	&.L__profc___cmovh+4, r11
	mov	&.L__profc___cmovh+2, r14
	mov	&.L__profc___cmovh, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovh
	mov	r14, &.L__profc___cmovh+2
	mov	r13, &.L__profc___cmovh+4
	mov	r12, &.L__profc___cmovh+6
	mov	8(r1), r12
	clrc
	rrc	r12
	mov	r12, 4(r1)
	mov	12(r1), r12
	mov	r12, 2(r1)
	mov	10(r1), r12
	mov	r12, 0(r1)
	mov	2(r1), r12
	mov	0(r1), r13
	cmp	r13, r12
	jlo	.LBB106_3
	jmp	.LBB106_1
.LBB106_1:
	mov	&.L__profc___cmovh+22, r12
	mov	&.L__profc___cmovh+20, r11
	mov	&.L__profc___cmovh+18, r14
	mov	&.L__profc___cmovh+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovh+16
	mov	r14, &.L__profc___cmovh+18
	mov	r13, &.L__profc___cmovh+20
	mov	r12, &.L__profc___cmovh+22
	mov	2(r1), r13
	mov	0(r1), r12
	mov	8(r1), r14
	add	r14, r12
	cmp	r13, r12
	jlo	.LBB106_3
	jmp	.LBB106_2
.LBB106_2:
	mov	&.L__profc___cmovh+30, r12
	mov	&.L__profc___cmovh+28, r11
	mov	&.L__profc___cmovh+26, r14
	mov	&.L__profc___cmovh+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovh+24
	mov	r14, &.L__profc___cmovh+26
	mov	r13, &.L__profc___cmovh+28
	mov	r12, &.L__profc___cmovh+30
	jmp	.LBB106_10
.LBB106_3:
	mov	&.L__profc___cmovh+14, r12
	mov	&.L__profc___cmovh+12, r11
	mov	&.L__profc___cmovh+10, r14
	mov	&.L__profc___cmovh+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovh+8
	mov	r14, &.L__profc___cmovh+10
	mov	r13, &.L__profc___cmovh+12
	mov	r12, &.L__profc___cmovh+14
	clr	6(r1)
	jmp	.LBB106_4
.LBB106_4:                              ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r12
	mov	4(r1), r13
	cmp	r13, r12
	jhs	.LBB106_7
	jmp	.LBB106_5
.LBB106_5:                              ;   in Loop: Header=BB106_4 Depth=1
	mov	&.L__profc___cmovh+38, r12
	mov	&.L__profc___cmovh+36, r11
	mov	&.L__profc___cmovh+34, r14
	mov	&.L__profc___cmovh+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovh+32
	mov	r14, &.L__profc___cmovh+34
	mov	r13, &.L__profc___cmovh+36
	mov	r12, &.L__profc___cmovh+38
	mov	10(r1), r12
	mov	6(r1), r14
	add	r14, r14
	add	r14, r12
	mov	0(r12), r13
	mov	12(r1), r12
	add	r14, r12
	mov	r13, 0(r12)
	jmp	.LBB106_6
.LBB106_6:                              ;   in Loop: Header=BB106_4 Depth=1
	mov	6(r1), r12
	inc	r12
	mov	r12, 6(r1)
	jmp	.LBB106_4
.LBB106_7:
	mov.b	8(r1), r12
	bit.b	#1, r12
	jeq	.LBB106_9
	jmp	.LBB106_8
.LBB106_8:
	mov	&.L__profc___cmovh+46, r12
	mov	&.L__profc___cmovh+44, r11
	mov	&.L__profc___cmovh+42, r14
	mov	&.L__profc___cmovh+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovh+40
	mov	r14, &.L__profc___cmovh+42
	mov	r13, &.L__profc___cmovh+44
	mov	r12, &.L__profc___cmovh+46
	mov	0(r1), r12
	mov	8(r1), r14
	add	#-1, r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB106_9
.LBB106_9:
	jmp	.LBB106_14
.LBB106_10:
	jmp	.LBB106_11
.LBB106_11:                             ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 8(r1)
	tst	r12
	jeq	.LBB106_13
	jmp	.LBB106_12
.LBB106_12:                             ;   in Loop: Header=BB106_11 Depth=1
	mov	&.L__profc___cmovh+54, r12
	mov	&.L__profc___cmovh+52, r11
	mov	&.L__profc___cmovh+50, r14
	mov	&.L__profc___cmovh+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovh+48
	mov	r14, &.L__profc___cmovh+50
	mov	r13, &.L__profc___cmovh+52
	mov	r12, &.L__profc___cmovh+54
	mov	0(r1), r12
	mov	8(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB106_11
.LBB106_13:
	jmp	.LBB106_14
.LBB106_14:
	add	#14, r1
	pop	r10
	ret
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
                                        ; -- End function
	.globl	__cmovw                         ; -- Begin function __cmovw
	.p2align	1
	.type	__cmovw,@function
__cmovw:                                ; @__cmovw
; %bb.0:
	push	r10
	sub	#16, r1
	mov	r12, 14(r1)
	mov	r13, 12(r1)
	mov	r14, 10(r1)
	mov	&.L__profc___cmovw+6, r12
	mov	&.L__profc___cmovw+4, r11
	mov	&.L__profc___cmovw+2, r14
	mov	&.L__profc___cmovw, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovw
	mov	r14, &.L__profc___cmovw+2
	mov	r13, &.L__profc___cmovw+4
	mov	r12, &.L__profc___cmovw+6
	mov	10(r1), r12
	clrc
	rrc	r12
	rra	r12
	mov	r12, 6(r1)
	mov	10(r1), r12
	and	#-4, r12
	mov	r12, 4(r1)
	mov	14(r1), r12
	mov	r12, 2(r1)
	mov	12(r1), r12
	mov	r12, 0(r1)
	mov	2(r1), r12
	mov	0(r1), r13
	cmp	r13, r12
	jlo	.LBB107_3
	jmp	.LBB107_1
.LBB107_1:
	mov	&.L__profc___cmovw+22, r12
	mov	&.L__profc___cmovw+20, r11
	mov	&.L__profc___cmovw+18, r14
	mov	&.L__profc___cmovw+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovw+16
	mov	r14, &.L__profc___cmovw+18
	mov	r13, &.L__profc___cmovw+20
	mov	r12, &.L__profc___cmovw+22
	mov	2(r1), r13
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	cmp	r13, r12
	jlo	.LBB107_3
	jmp	.LBB107_2
.LBB107_2:
	mov	&.L__profc___cmovw+30, r12
	mov	&.L__profc___cmovw+28, r11
	mov	&.L__profc___cmovw+26, r14
	mov	&.L__profc___cmovw+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovw+24
	mov	r14, &.L__profc___cmovw+26
	mov	r13, &.L__profc___cmovw+28
	mov	r12, &.L__profc___cmovw+30
	jmp	.LBB107_11
.LBB107_3:
	mov	&.L__profc___cmovw+14, r12
	mov	&.L__profc___cmovw+12, r11
	mov	&.L__profc___cmovw+10, r14
	mov	&.L__profc___cmovw+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovw+8
	mov	r14, &.L__profc___cmovw+10
	mov	r13, &.L__profc___cmovw+12
	mov	r12, &.L__profc___cmovw+14
	clr	8(r1)
	jmp	.LBB107_4
.LBB107_4:                              ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov	6(r1), r13
	cmp	r13, r12
	jhs	.LBB107_7
	jmp	.LBB107_5
.LBB107_5:                              ;   in Loop: Header=BB107_4 Depth=1
	mov	&.L__profc___cmovw+38, r12
	mov	&.L__profc___cmovw+36, r11
	mov	&.L__profc___cmovw+34, r14
	mov	&.L__profc___cmovw+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovw+32
	mov	r14, &.L__profc___cmovw+34
	mov	r13, &.L__profc___cmovw+36
	mov	r12, &.L__profc___cmovw+38
	mov	12(r1), r12
	mov	8(r1), r14
	add	r14, r14
	add	r14, r12
	mov	0(r12), r13
	mov	14(r1), r12
	add	r14, r12
	mov	r13, 0(r12)
	jmp	.LBB107_6
.LBB107_6:                              ;   in Loop: Header=BB107_4 Depth=1
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB107_4
.LBB107_7:
	jmp	.LBB107_8
.LBB107_8:                              ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	mov	4(r1), r12
	cmp	r13, r12
	jhs	.LBB107_10
	jmp	.LBB107_9
.LBB107_9:                              ;   in Loop: Header=BB107_8 Depth=1
	mov	&.L__profc___cmovw+46, r12
	mov	&.L__profc___cmovw+44, r11
	mov	&.L__profc___cmovw+42, r14
	mov	&.L__profc___cmovw+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovw+40
	mov	r14, &.L__profc___cmovw+42
	mov	r13, &.L__profc___cmovw+44
	mov	r12, &.L__profc___cmovw+46
	mov	0(r1), r12
	mov	4(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB107_8
.LBB107_10:
	jmp	.LBB107_15
.LBB107_11:
	jmp	.LBB107_12
.LBB107_12:                             ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 10(r1)
	tst	r12
	jeq	.LBB107_14
	jmp	.LBB107_13
.LBB107_13:                             ;   in Loop: Header=BB107_12 Depth=1
	mov	&.L__profc___cmovw+54, r12
	mov	&.L__profc___cmovw+52, r11
	mov	&.L__profc___cmovw+50, r14
	mov	&.L__profc___cmovw+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmovw+48
	mov	r14, &.L__profc___cmovw+50
	mov	r13, &.L__profc___cmovw+52
	mov	r12, &.L__profc___cmovw+54
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB107_12
.LBB107_14:
	jmp	.LBB107_15
.LBB107_15:
	add	#16, r1
	pop	r10
	ret
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
                                        ; -- End function
	.globl	__modi                          ; -- Begin function __modi
	.p2align	1
	.type	__modi,@function
__modi:                                 ; @__modi
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
	mov	&.L__profc___modi+6, r12
	mov	&.L__profc___modi+4, r11
	mov	&.L__profc___modi+2, r14
	mov	&.L__profc___modi, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___modi
	mov	r14, &.L__profc___modi+2
	mov	r13, &.L__profc___modi+4
	mov	r12, &.L__profc___modi+6
	mov	2(r1), r12
	mov	0(r1), r13
	call	#__mspabi_remi
	add	#4, r1
	pop	r10
	ret
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
                                        ; -- End function
	.globl	__uitod                         ; -- Begin function __uitod
	.p2align	1
	.type	__uitod,@function
__uitod:                                ; @__uitod
; %bb.0:
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc___uitod+6, r12
	mov	&.L__profc___uitod+4, r11
	mov	&.L__profc___uitod+2, r14
	mov	&.L__profc___uitod, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___uitod
	mov	r14, &.L__profc___uitod+2
	mov	r13, &.L__profc___uitod+4
	mov	r12, &.L__profc___uitod+6
	mov	0(r1), r12
	clr	r13
	call	#__mspabi_fltuld
	add	#2, r1
	pop	r10
	ret
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
                                        ; -- End function
	.globl	__uitof                         ; -- Begin function __uitof
	.p2align	1
	.type	__uitof,@function
__uitof:                                ; @__uitof
; %bb.0:
	push	r10
	sub	#2, r1
	mov	r12, 0(r1)
	mov	&.L__profc___uitof+6, r12
	mov	&.L__profc___uitof+4, r11
	mov	&.L__profc___uitof+2, r14
	mov	&.L__profc___uitof, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___uitof
	mov	r14, &.L__profc___uitof+2
	mov	r13, &.L__profc___uitof+4
	mov	r12, &.L__profc___uitof+6
	mov	0(r1), r12
	clr	r13
	call	#__mspabi_fltulf
	add	#2, r1
	pop	r10
	ret
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
                                        ; -- End function
	.globl	__ulltod                        ; -- Begin function __ulltod
	.p2align	1
	.type	__ulltod,@function
__ulltod:                               ; @__ulltod
; %bb.0:
	push	r10
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	&.L__profc___ulltod+6, r12
	mov	&.L__profc___ulltod+4, r11
	mov	&.L__profc___ulltod+2, r14
	mov	&.L__profc___ulltod, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ulltod
	mov	r14, &.L__profc___ulltod+2
	mov	r13, &.L__profc___ulltod+4
	mov	r12, &.L__profc___ulltod+6
	mov	0(r1), r12
	mov	2(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	call	#__mspabi_fltulld
	add	#8, r1
	pop	r10
	ret
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
                                        ; -- End function
	.globl	__ulltof                        ; -- Begin function __ulltof
	.p2align	1
	.type	__ulltof,@function
__ulltof:                               ; @__ulltof
; %bb.0:
	push	r10
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	&.L__profc___ulltof+6, r12
	mov	&.L__profc___ulltof+4, r11
	mov	&.L__profc___ulltof+2, r14
	mov	&.L__profc___ulltof, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ulltof
	mov	r14, &.L__profc___ulltof+2
	mov	r13, &.L__profc___ulltof+4
	mov	r12, &.L__profc___ulltof+6
	mov	0(r1), r12
	mov	2(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	call	#__mspabi_fltullf
	add	#8, r1
	pop	r10
	ret
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
                                        ; -- End function
	.globl	__umodi                         ; -- Begin function __umodi
	.p2align	1
	.type	__umodi,@function
__umodi:                                ; @__umodi
; %bb.0:
	push	r10
	sub	#4, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
	mov	&.L__profc___umodi+6, r12
	mov	&.L__profc___umodi+4, r11
	mov	&.L__profc___umodi+2, r14
	mov	&.L__profc___umodi, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___umodi
	mov	r14, &.L__profc___umodi+2
	mov	r13, &.L__profc___umodi+4
	mov	r12, &.L__profc___umodi+6
	mov	2(r1), r12
	mov	0(r1), r13
	call	#__mspabi_remu
	add	#4, r1
	pop	r10
	ret
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
                                        ; -- End function
	.globl	__clzhi2                        ; -- Begin function __clzhi2
	.p2align	1
	.type	__clzhi2,@function
__clzhi2:                               ; @__clzhi2
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	&.L__profc___clzhi2+6, r12
	mov	&.L__profc___clzhi2+4, r11
	mov	&.L__profc___clzhi2+2, r14
	mov	&.L__profc___clzhi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clzhi2
	mov	r14, &.L__profc___clzhi2+2
	mov	r13, &.L__profc___clzhi2+4
	mov	r12, &.L__profc___clzhi2+6
	clr	4(r1)
	jmp	.LBB114_1
.LBB114_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB114_3 Depth 2
	mov	4(r1), r12
	cmp	#16, r12
	jge	.LBB114_8
	jmp	.LBB114_2
.LBB114_2:                              ;   in Loop: Header=BB114_1 Depth=1
	mov	&.L__profc___clzhi2+14, r12
	mov	&.L__profc___clzhi2+12, r11
	mov	&.L__profc___clzhi2+10, r14
	mov	&.L__profc___clzhi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clzhi2+8
	mov	r14, &.L__profc___clzhi2+10
	mov	r13, &.L__profc___clzhi2+12
	mov	r12, &.L__profc___clzhi2+14
	mov	6(r1), r13
	mov.b	4(r1), r14
	mov.b	#15, r12
	sub.b	r14, r12
	cmp.b	#0, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB114_4
.LBB114_3:                              ;   Parent Loop BB114_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
	mov	0(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB114_3
.LBB114_4:                              ;   in Loop: Header=BB114_1 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jeq	.LBB114_6
	jmp	.LBB114_5
.LBB114_5:
	mov	&.L__profc___clzhi2+22, r12
	mov	&.L__profc___clzhi2+20, r11
	mov	&.L__profc___clzhi2+18, r14
	mov	&.L__profc___clzhi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clzhi2+16
	mov	r14, &.L__profc___clzhi2+18
	mov	r13, &.L__profc___clzhi2+20
	mov	r12, &.L__profc___clzhi2+22
	jmp	.LBB114_8
.LBB114_6:                              ;   in Loop: Header=BB114_1 Depth=1
	jmp	.LBB114_7
.LBB114_7:                              ;   in Loop: Header=BB114_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB114_1
.LBB114_8:
	mov	4(r1), r12
	add	#8, r1
	pop	r10
	ret
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
                                        ; -- End function
	.globl	__ctzhi2                        ; -- Begin function __ctzhi2
	.p2align	1
	.type	__ctzhi2,@function
__ctzhi2:                               ; @__ctzhi2
; %bb.0:
	push	r10
	sub	#8, r1
	mov	r12, 6(r1)
	mov	&.L__profc___ctzhi2+6, r12
	mov	&.L__profc___ctzhi2+4, r11
	mov	&.L__profc___ctzhi2+2, r14
	mov	&.L__profc___ctzhi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ctzhi2
	mov	r14, &.L__profc___ctzhi2+2
	mov	r13, &.L__profc___ctzhi2+4
	mov	r12, &.L__profc___ctzhi2+6
	clr	4(r1)
	jmp	.LBB115_1
.LBB115_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB115_3 Depth 2
	mov	4(r1), r12
	cmp	#16, r12
	jge	.LBB115_8
	jmp	.LBB115_2
.LBB115_2:                              ;   in Loop: Header=BB115_1 Depth=1
	mov	&.L__profc___ctzhi2+14, r12
	mov	&.L__profc___ctzhi2+12, r11
	mov	&.L__profc___ctzhi2+10, r14
	mov	&.L__profc___ctzhi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ctzhi2+8
	mov	r14, &.L__profc___ctzhi2+10
	mov	r13, &.L__profc___ctzhi2+12
	mov	r12, &.L__profc___ctzhi2+14
	mov	6(r1), r13
	mov.b	4(r1), r12
	cmp.b	#0, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB115_4
.LBB115_3:                              ;   Parent Loop BB115_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
	mov	0(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB115_3
.LBB115_4:                              ;   in Loop: Header=BB115_1 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jeq	.LBB115_6
	jmp	.LBB115_5
.LBB115_5:
	mov	&.L__profc___ctzhi2+22, r12
	mov	&.L__profc___ctzhi2+20, r11
	mov	&.L__profc___ctzhi2+18, r14
	mov	&.L__profc___ctzhi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ctzhi2+16
	mov	r14, &.L__profc___ctzhi2+18
	mov	r13, &.L__profc___ctzhi2+20
	mov	r12, &.L__profc___ctzhi2+22
	jmp	.LBB115_8
.LBB115_6:                              ;   in Loop: Header=BB115_1 Depth=1
	jmp	.LBB115_7
.LBB115_7:                              ;   in Loop: Header=BB115_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB115_1
.LBB115_8:
	mov	4(r1), r12
	add	#8, r1
	pop	r10
	ret
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
                                        ; -- End function
	.globl	__fixunssfsi                    ; -- Begin function __fixunssfsi
	.p2align	1
	.type	__fixunssfsi,@function
__fixunssfsi:                           ; @__fixunssfsi
; %bb.0:
	push	r10
	sub	#10, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 4(r1)
	mov	r12, 2(r1)
	mov	&.L__profc___fixunssfsi+6, r12
	mov	&.L__profc___fixunssfsi+4, r11
	mov	&.L__profc___fixunssfsi+2, r14
	mov	&.L__profc___fixunssfsi, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___fixunssfsi
	mov	r14, &.L__profc___fixunssfsi+2
	mov	r13, &.L__profc___fixunssfsi+4
	mov	r12, &.L__profc___fixunssfsi+6
	mov	2(r1), r12
	mov	4(r1), r13
	clr	r14
	mov	#18176, r15
	call	#__mspabi_cmpf
	tst	r12
	jl	.LBB116_2
	jmp	.LBB116_1
.LBB116_1:
	mov	&.L__profc___fixunssfsi+14, r12
	mov	&.L__profc___fixunssfsi+12, r11
	mov	&.L__profc___fixunssfsi+10, r14
	mov	&.L__profc___fixunssfsi+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___fixunssfsi+8
	mov	r14, &.L__profc___fixunssfsi+10
	mov	r13, &.L__profc___fixunssfsi+12
	mov	r12, &.L__profc___fixunssfsi+14
	mov	2(r1), r12
	mov	4(r1), r13
	clr	r14
	mov	#-14592, r15
	call	#__mspabi_addf
	call	#__mspabi_fixfli
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r12, r15
	mov	r15, r12
	add	#-32768, r12
	cmp	r15, r12
	mov	r2, r15
	bic	r15, r14
	add	r14, r13
	mov	r12, 6(r1)
	mov	r13, 8(r1)
	jmp	.LBB116_3
.LBB116_2:
	mov	2(r1), r12
	mov	4(r1), r13
	call	#__mspabi_fixfli
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	jmp	.LBB116_3
.LBB116_3:
	mov	6(r1), r12
	mov	8(r1), r13
	add	#10, r1
	pop	r10
	ret
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
                                        ; -- End function
	.globl	__parityhi2                     ; -- Begin function __parityhi2
	.p2align	1
	.type	__parityhi2,@function
__parityhi2:                            ; @__parityhi2
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	&.L__profc___parityhi2+6, r12
	mov	&.L__profc___parityhi2+4, r11
	mov	&.L__profc___parityhi2+2, r14
	mov	&.L__profc___parityhi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___parityhi2
	mov	r14, &.L__profc___parityhi2+2
	mov	r13, &.L__profc___parityhi2+4
	mov	r12, &.L__profc___parityhi2+6
	clr	4(r1)
	clr	6(r1)
	jmp	.LBB117_1
.LBB117_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB117_3 Depth 2
	mov	6(r1), r12
	cmp	#16, r12
	jge	.LBB117_8
	jmp	.LBB117_2
.LBB117_2:                              ;   in Loop: Header=BB117_1 Depth=1
	mov	&.L__profc___parityhi2+14, r12
	mov	&.L__profc___parityhi2+12, r11
	mov	&.L__profc___parityhi2+10, r14
	mov	&.L__profc___parityhi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___parityhi2+8
	mov	r14, &.L__profc___parityhi2+10
	mov	r13, &.L__profc___parityhi2+12
	mov	r12, &.L__profc___parityhi2+14
	mov	8(r1), r13
	mov.b	6(r1), r12
	cmp.b	#0, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB117_4
.LBB117_3:                              ;   Parent Loop BB117_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
	mov	0(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB117_3
.LBB117_4:                              ;   in Loop: Header=BB117_1 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jeq	.LBB117_6
	jmp	.LBB117_5
.LBB117_5:                              ;   in Loop: Header=BB117_1 Depth=1
	mov	&.L__profc___parityhi2+22, r12
	mov	&.L__profc___parityhi2+20, r11
	mov	&.L__profc___parityhi2+18, r14
	mov	&.L__profc___parityhi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___parityhi2+16
	mov	r14, &.L__profc___parityhi2+18
	mov	r13, &.L__profc___parityhi2+20
	mov	r12, &.L__profc___parityhi2+22
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB117_6
.LBB117_6:                              ;   in Loop: Header=BB117_1 Depth=1
	jmp	.LBB117_7
.LBB117_7:                              ;   in Loop: Header=BB117_1 Depth=1
	mov	6(r1), r12
	inc	r12
	mov	r12, 6(r1)
	jmp	.LBB117_1
.LBB117_8:
	mov	4(r1), r12
	and	#1, r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
                                        ; -- End function
	.globl	__popcounthi2                   ; -- Begin function __popcounthi2
	.p2align	1
	.type	__popcounthi2,@function
__popcounthi2:                          ; @__popcounthi2
; %bb.0:
	push	r10
	sub	#10, r1
	mov	r12, 8(r1)
	mov	&.L__profc___popcounthi2+6, r12
	mov	&.L__profc___popcounthi2+4, r11
	mov	&.L__profc___popcounthi2+2, r14
	mov	&.L__profc___popcounthi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___popcounthi2
	mov	r14, &.L__profc___popcounthi2+2
	mov	r13, &.L__profc___popcounthi2+4
	mov	r12, &.L__profc___popcounthi2+6
	clr	4(r1)
	clr	6(r1)
	jmp	.LBB118_1
.LBB118_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB118_3 Depth 2
	mov	6(r1), r12
	cmp	#16, r12
	jge	.LBB118_8
	jmp	.LBB118_2
.LBB118_2:                              ;   in Loop: Header=BB118_1 Depth=1
	mov	&.L__profc___popcounthi2+14, r12
	mov	&.L__profc___popcounthi2+12, r11
	mov	&.L__profc___popcounthi2+10, r14
	mov	&.L__profc___popcounthi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___popcounthi2+8
	mov	r14, &.L__profc___popcounthi2+10
	mov	r13, &.L__profc___popcounthi2+12
	mov	r12, &.L__profc___popcounthi2+14
	mov	8(r1), r13
	mov.b	6(r1), r12
	cmp.b	#0, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB118_4
.LBB118_3:                              ;   Parent Loop BB118_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
	mov	0(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB118_3
.LBB118_4:                              ;   in Loop: Header=BB118_1 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jeq	.LBB118_6
	jmp	.LBB118_5
.LBB118_5:                              ;   in Loop: Header=BB118_1 Depth=1
	mov	&.L__profc___popcounthi2+22, r12
	mov	&.L__profc___popcounthi2+20, r11
	mov	&.L__profc___popcounthi2+18, r14
	mov	&.L__profc___popcounthi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___popcounthi2+16
	mov	r14, &.L__profc___popcounthi2+18
	mov	r13, &.L__profc___popcounthi2+20
	mov	r12, &.L__profc___popcounthi2+22
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB118_6
.LBB118_6:                              ;   in Loop: Header=BB118_1 Depth=1
	jmp	.LBB118_7
.LBB118_7:                              ;   in Loop: Header=BB118_1 Depth=1
	mov	6(r1), r12
	inc	r12
	mov	r12, 6(r1)
	jmp	.LBB118_1
.LBB118_8:
	mov	4(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
                                        ; -- End function
	.globl	__mulsi3_iq2000                 ; -- Begin function __mulsi3_iq2000
	.p2align	1
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        ; @__mulsi3_iq2000
; %bb.0:
	push	r9
	push	r10
	sub	#12, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc___mulsi3_iq2000+6, r12
	mov	&.L__profc___mulsi3_iq2000+4, r11
	mov	&.L__profc___mulsi3_iq2000+2, r14
	mov	&.L__profc___mulsi3_iq2000, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3_iq2000
	mov	r14, &.L__profc___mulsi3_iq2000+2
	mov	r13, &.L__profc___mulsi3_iq2000+4
	mov	r12, &.L__profc___mulsi3_iq2000+6
	clr	2(r1)
	clr	0(r1)
	jmp	.LBB119_1
.LBB119_1:                              ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	mov	8(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB119_5
	jmp	.LBB119_2
.LBB119_2:                              ;   in Loop: Header=BB119_1 Depth=1
	mov	&.L__profc___mulsi3_iq2000+14, r12
	mov	&.L__profc___mulsi3_iq2000+12, r11
	mov	&.L__profc___mulsi3_iq2000+10, r14
	mov	&.L__profc___mulsi3_iq2000+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3_iq2000+8
	mov	r14, &.L__profc___mulsi3_iq2000+10
	mov	r13, &.L__profc___mulsi3_iq2000+12
	mov	r12, &.L__profc___mulsi3_iq2000+14
	mov.b	8(r1), r12
	bit.b	#1, r12
	jeq	.LBB119_4
	jmp	.LBB119_3
.LBB119_3:                              ;   in Loop: Header=BB119_1 Depth=1
	mov	&.L__profc___mulsi3_iq2000+22, r12
	mov	&.L__profc___mulsi3_iq2000+20, r14
	mov	&.L__profc___mulsi3_iq2000+18, r15
	mov	&.L__profc___mulsi3_iq2000+16, r11
	inc	r11
	tst	r11
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r15
	mov	r11, r13
	bis	r15, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r14, r13
	add	r10, r13
	cmp	r14, r13
	mov	r2, r9
	mov	#1, r14
	mov	r14, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc___mulsi3_iq2000+16
	mov	r15, &.L__profc___mulsi3_iq2000+18
	mov	r13, &.L__profc___mulsi3_iq2000+20
	mov	r12, &.L__profc___mulsi3_iq2000+22
	mov	4(r1), r11
	mov	6(r1), r13
	mov	0(r1), r15
	mov	2(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 0(r1)
	mov	r12, 2(r1)
	jmp	.LBB119_4
.LBB119_4:                              ;   in Loop: Header=BB119_1 Depth=1
	mov	10(r1), r13
	mov	8(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	4(r1), r13
	mov	6(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 4(r1)
	mov	r12, 6(r1)
	jmp	.LBB119_1
.LBB119_5:
	mov	0(r1), r12
	mov	2(r1), r13
	add	#12, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
                                        ; -- End function
	.globl	__mulsi3_lm32                   ; -- Begin function __mulsi3_lm32
	.p2align	1
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          ; @__mulsi3_lm32
; %bb.0:
	push	r9
	push	r10
	sub	#16, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	&.L__profc___mulsi3_lm32+6, r12
	mov	&.L__profc___mulsi3_lm32+4, r11
	mov	&.L__profc___mulsi3_lm32+2, r14
	mov	&.L__profc___mulsi3_lm32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3_lm32
	mov	r14, &.L__profc___mulsi3_lm32+2
	mov	r13, &.L__profc___mulsi3_lm32+4
	mov	r12, &.L__profc___mulsi3_lm32+6
	clr	2(r1)
	clr	0(r1)
	mov	10(r1), r13
	mov	8(r1), r12
	bis	r13, r12
	tst	r12
	jne	.LBB120_2
	jmp	.LBB120_1
.LBB120_1:
	mov	&.L__profc___mulsi3_lm32+14, r12
	mov	&.L__profc___mulsi3_lm32+12, r11
	mov	&.L__profc___mulsi3_lm32+10, r14
	mov	&.L__profc___mulsi3_lm32+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3_lm32+8
	mov	r14, &.L__profc___mulsi3_lm32+10
	mov	r13, &.L__profc___mulsi3_lm32+12
	mov	r12, &.L__profc___mulsi3_lm32+14
	clr	14(r1)
	clr	12(r1)
	jmp	.LBB120_8
.LBB120_2:
	jmp	.LBB120_3
.LBB120_3:                              ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r13
	mov	4(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB120_7
	jmp	.LBB120_4
.LBB120_4:                              ;   in Loop: Header=BB120_3 Depth=1
	mov	&.L__profc___mulsi3_lm32+22, r12
	mov	&.L__profc___mulsi3_lm32+20, r11
	mov	&.L__profc___mulsi3_lm32+18, r14
	mov	&.L__profc___mulsi3_lm32+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulsi3_lm32+16
	mov	r14, &.L__profc___mulsi3_lm32+18
	mov	r13, &.L__profc___mulsi3_lm32+20
	mov	r12, &.L__profc___mulsi3_lm32+22
	mov.b	4(r1), r12
	bit.b	#1, r12
	jeq	.LBB120_6
	jmp	.LBB120_5
.LBB120_5:                              ;   in Loop: Header=BB120_3 Depth=1
	mov	&.L__profc___mulsi3_lm32+30, r12
	mov	&.L__profc___mulsi3_lm32+28, r14
	mov	&.L__profc___mulsi3_lm32+26, r15
	mov	&.L__profc___mulsi3_lm32+24, r11
	inc	r11
	tst	r11
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r15
	mov	r11, r13
	bis	r15, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r14, r13
	add	r10, r13
	cmp	r14, r13
	mov	r2, r9
	mov	#1, r14
	mov	r14, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc___mulsi3_lm32+24
	mov	r15, &.L__profc___mulsi3_lm32+26
	mov	r13, &.L__profc___mulsi3_lm32+28
	mov	r12, &.L__profc___mulsi3_lm32+30
	mov	8(r1), r11
	mov	10(r1), r13
	mov	0(r1), r15
	mov	2(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 0(r1)
	mov	r12, 2(r1)
	jmp	.LBB120_6
.LBB120_6:                              ;   in Loop: Header=BB120_3 Depth=1
	mov	8(r1), r13
	mov	10(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 8(r1)
	mov	r12, 10(r1)
	mov	6(r1), r13
	mov	4(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	jmp	.LBB120_3
.LBB120_7:
	mov	0(r1), r12
	mov	2(r1), r13
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	jmp	.LBB120_8
.LBB120_8:
	mov	12(r1), r12
	mov	14(r1), r13
	add	#16, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
                                        ; -- End function
	.globl	__udivmodsi4                    ; -- Begin function __udivmodsi4
	.p2align	1
	.type	__udivmodsi4,@function
__udivmodsi4:                           ; @__udivmodsi4
; %bb.0:
	push	r9
	push	r10
	sub	#30, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	36(r1), r11
	mov	r13, 24(r1)
	mov	r12, 22(r1)
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	&.L__profc___udivmodsi4+6, r12
	mov	&.L__profc___udivmodsi4+4, r11
	mov	&.L__profc___udivmodsi4+2, r14
	mov	&.L__profc___udivmodsi4, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4
	mov	r14, &.L__profc___udivmodsi4+2
	mov	r13, &.L__profc___udivmodsi4+4
	mov	r12, &.L__profc___udivmodsi4+6
	clr	16(r1)
	mov	#1, 14(r1)
	clr	12(r1)
	clr	10(r1)
	jmp	.LBB121_1
.LBB121_1:                              ; =>This Inner Loop Header: Depth=1
	mov	18(r1), r12
	mov	20(r1), r13
	mov	22(r1), r15
	mov	24(r1), r14
	cmp	r14, r13
	mov	r2, r11
	and	#1, r11
	mov	r11, 6(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jeq	.LBB121_3
; %bb.2:                                ;   in Loop: Header=BB121_1 Depth=1
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB121_3:                              ;   in Loop: Header=BB121_1 Depth=1
	mov	8(r1), r13                      ; 2-byte Folded Reload
	clr.b	r12
	bit	#1, r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB121_8
	jmp	.LBB121_4
.LBB121_4:                              ;   in Loop: Header=BB121_1 Depth=1
	mov	&.L__profc___udivmodsi4+38, r12
	mov	&.L__profc___udivmodsi4+36, r11
	mov	&.L__profc___udivmodsi4+34, r14
	mov	&.L__profc___udivmodsi4+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4+32
	mov	r14, &.L__profc___udivmodsi4+34
	mov	r13, &.L__profc___udivmodsi4+36
	mov	r12, &.L__profc___udivmodsi4+38
	mov	16(r1), r12
	mov	14(r1), r13
	bis	r12, r13
	clr.b	r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB121_8
	jmp	.LBB121_5
.LBB121_5:                              ;   in Loop: Header=BB121_1 Depth=1
	mov	&.L__profc___udivmodsi4+46, r12
	mov	&.L__profc___udivmodsi4+44, r11
	mov	&.L__profc___udivmodsi4+42, r14
	mov	&.L__profc___udivmodsi4+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4+40
	mov	r14, &.L__profc___udivmodsi4+42
	mov	r13, &.L__profc___udivmodsi4+44
	mov	r12, &.L__profc___udivmodsi4+46
	jmp	.LBB121_6
.LBB121_6:                              ;   in Loop: Header=BB121_1 Depth=1
	mov	&.L__profc___udivmodsi4+22, r12
	mov	&.L__profc___udivmodsi4+20, r11
	mov	&.L__profc___udivmodsi4+18, r14
	mov	&.L__profc___udivmodsi4+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4+16
	mov	r14, &.L__profc___udivmodsi4+18
	mov	r13, &.L__profc___udivmodsi4+20
	mov	r12, &.L__profc___udivmodsi4+22
	mov	20(r1), r13
	and	#-32768, r13
	tst	r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 4(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB121_8
	jmp	.LBB121_7
.LBB121_7:                              ;   in Loop: Header=BB121_1 Depth=1
	mov.b	4(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc___udivmodsi4+30, r13
	mov	&.L__profc___udivmodsi4+28, r10
	mov	&.L__profc___udivmodsi4+26, r15
	mov	&.L__profc___udivmodsi4+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___udivmodsi4+24
	mov	r15, &.L__profc___udivmodsi4+26
	mov	r14, &.L__profc___udivmodsi4+28
	mov	r13, &.L__profc___udivmodsi4+30
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB121_8
.LBB121_8:                              ;   in Loop: Header=BB121_1 Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB121_10
	jmp	.LBB121_9
.LBB121_9:                              ;   in Loop: Header=BB121_1 Depth=1
	mov	&.L__profc___udivmodsi4+14, r12
	mov	&.L__profc___udivmodsi4+12, r11
	mov	&.L__profc___udivmodsi4+10, r14
	mov	&.L__profc___udivmodsi4+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4+8
	mov	r14, &.L__profc___udivmodsi4+10
	mov	r13, &.L__profc___udivmodsi4+12
	mov	r12, &.L__profc___udivmodsi4+14
	mov	18(r1), r13
	mov	20(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 18(r1)
	mov	r12, 20(r1)
	mov	14(r1), r13
	mov	16(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 14(r1)
	mov	r12, 16(r1)
	jmp	.LBB121_1
.LBB121_10:
	jmp	.LBB121_11
.LBB121_11:                             ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB121_17
	jmp	.LBB121_12
.LBB121_12:                             ;   in Loop: Header=BB121_11 Depth=1
	mov	&.L__profc___udivmodsi4+54, r13
	mov	&.L__profc___udivmodsi4+52, r12
	mov	&.L__profc___udivmodsi4+50, r15
	mov	&.L__profc___udivmodsi4+48, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___udivmodsi4+48
	mov	r15, &.L__profc___udivmodsi4+50
	mov	r14, &.L__profc___udivmodsi4+52
	mov	r13, &.L__profc___udivmodsi4+54
	mov	22(r1), r15
	mov	24(r1), r13
	mov	18(r1), r11
	mov	20(r1), r14
	cmp	r14, r13
	mov	r2, r9
	mov	r12, r10
	bic	r9, r10
	mov	r10, 0(r1)                      ; 2-byte Folded Spill
	cmp	r11, r15
	mov	r2, r15
	bic	r15, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB121_14
; %bb.13:                               ;   in Loop: Header=BB121_11 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB121_14:                             ;   in Loop: Header=BB121_11 Depth=1
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB121_16
	jmp	.LBB121_15
.LBB121_15:                             ;   in Loop: Header=BB121_11 Depth=1
	mov	&.L__profc___udivmodsi4+62, r12
	mov	&.L__profc___udivmodsi4+60, r15
	mov	&.L__profc___udivmodsi4+58, r14
	mov	&.L__profc___udivmodsi4+56, r11
	inc	r11
	tst	r11
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r11, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r15, r13
	add	r10, r13
	cmp	r15, r13
	mov	r2, r9
	mov	#1, r15
	mov	r15, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc___udivmodsi4+56
	mov	r14, &.L__profc___udivmodsi4+58
	mov	r13, &.L__profc___udivmodsi4+60
	mov	r12, &.L__profc___udivmodsi4+62
	mov	18(r1), r14
	mov	20(r1), r11
	mov	22(r1), r13
	mov	24(r1), r12
	sub	r11, r12
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	sub	r15, r12
	sub	r14, r13
	mov	r13, 22(r1)
	mov	r12, 24(r1)
	mov	16(r1), r14
	mov	14(r1), r15
	mov	12(r1), r13
	mov	10(r1), r12
	bis	r15, r12
	bis	r14, r13
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	jmp	.LBB121_16
.LBB121_16:                             ;   in Loop: Header=BB121_11 Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	20(r1), r13
	mov	18(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 20(r1)
	mov	r12, 18(r1)
	jmp	.LBB121_11
.LBB121_17:
	mov	36(r1), r12
	tst	r12
	jeq	.LBB121_19
	jmp	.LBB121_18
.LBB121_18:
	mov	&.L__profc___udivmodsi4+70, r12
	mov	&.L__profc___udivmodsi4+68, r11
	mov	&.L__profc___udivmodsi4+66, r14
	mov	&.L__profc___udivmodsi4+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4+64
	mov	r14, &.L__profc___udivmodsi4+66
	mov	r13, &.L__profc___udivmodsi4+68
	mov	r12, &.L__profc___udivmodsi4+70
	mov	22(r1), r12
	mov	24(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB121_20
.LBB121_19:
	mov	10(r1), r12
	mov	12(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB121_20
.LBB121_20:
	mov	26(r1), r12
	mov	28(r1), r13
	add	#30, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
                                        ; -- End function
	.globl	__mspabi_cmpf                   ; -- Begin function __mspabi_cmpf
	.p2align	1
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          ; @__mspabi_cmpf
; %bb.0:
	push	r10
	sub	#10, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	r15, 2(r1)
	mov	r14, 0(r1)
	mov	&.L__profc___mspabi_cmpf+6, r12
	mov	&.L__profc___mspabi_cmpf+4, r11
	mov	&.L__profc___mspabi_cmpf+2, r14
	mov	&.L__profc___mspabi_cmpf, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_cmpf
	mov	r14, &.L__profc___mspabi_cmpf+2
	mov	r13, &.L__profc___mspabi_cmpf+4
	mov	r12, &.L__profc___mspabi_cmpf+6
	mov	4(r1), r12
	mov	6(r1), r13
	mov	0(r1), r14
	mov	2(r1), r15
	call	#__mspabi_cmpf
	tst	r12
	jge	.LBB122_2
	jmp	.LBB122_1
.LBB122_1:
	mov	&.L__profc___mspabi_cmpf+14, r12
	mov	&.L__profc___mspabi_cmpf+12, r11
	mov	&.L__profc___mspabi_cmpf+10, r14
	mov	&.L__profc___mspabi_cmpf+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_cmpf+8
	mov	r14, &.L__profc___mspabi_cmpf+10
	mov	r13, &.L__profc___mspabi_cmpf+12
	mov	r12, &.L__profc___mspabi_cmpf+14
	mov	#-1, 8(r1)
	jmp	.LBB122_5
.LBB122_2:
	mov	4(r1), r12
	mov	6(r1), r13
	mov	0(r1), r14
	mov	2(r1), r15
	call	#__mspabi_cmpf
	cmp	#1, r12
	jl	.LBB122_4
	jmp	.LBB122_3
.LBB122_3:
	mov	&.L__profc___mspabi_cmpf+22, r12
	mov	&.L__profc___mspabi_cmpf+20, r11
	mov	&.L__profc___mspabi_cmpf+18, r14
	mov	&.L__profc___mspabi_cmpf+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_cmpf+16
	mov	r14, &.L__profc___mspabi_cmpf+18
	mov	r13, &.L__profc___mspabi_cmpf+20
	mov	r12, &.L__profc___mspabi_cmpf+22
	mov	#1, 8(r1)
	jmp	.LBB122_5
.LBB122_4:
	clr	8(r1)
	jmp	.LBB122_5
.LBB122_5:
	mov	8(r1), r12
	add	#10, r1
	pop	r10
	ret
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
                                        ; -- End function
	.globl	__mspabi_cmpd                   ; -- Begin function __mspabi_cmpd
	.p2align	1
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          ; @__mspabi_cmpd
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#18, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	34(r1), r15
	mov	32(r1), r14
	mov	30(r1), r13
	mov	28(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 14(r1)
	mov	r9, 12(r1)
	mov	r10, 10(r1)
	mov	r11, 8(r1)
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	&.L__profc___mspabi_cmpd+6, r12
	mov	&.L__profc___mspabi_cmpd+4, r11
	mov	&.L__profc___mspabi_cmpd+2, r14
	mov	&.L__profc___mspabi_cmpd, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_cmpd
	mov	r14, &.L__profc___mspabi_cmpd+2
	mov	r13, &.L__profc___mspabi_cmpd+4
	mov	r12, &.L__profc___mspabi_cmpd+6
	mov	8(r1), r8
	mov	10(r1), r9
	mov	12(r1), r10
	mov	14(r1), r11
	mov	0(r1), r12
	mov	2(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	call	#__mspabi_cmpd
	tst	r12
	jge	.LBB123_2
	jmp	.LBB123_1
.LBB123_1:
	mov	&.L__profc___mspabi_cmpd+14, r12
	mov	&.L__profc___mspabi_cmpd+12, r11
	mov	&.L__profc___mspabi_cmpd+10, r14
	mov	&.L__profc___mspabi_cmpd+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_cmpd+8
	mov	r14, &.L__profc___mspabi_cmpd+10
	mov	r13, &.L__profc___mspabi_cmpd+12
	mov	r12, &.L__profc___mspabi_cmpd+14
	mov	#-1, 16(r1)
	jmp	.LBB123_5
.LBB123_2:
	mov	8(r1), r8
	mov	10(r1), r9
	mov	12(r1), r10
	mov	14(r1), r11
	mov	0(r1), r12
	mov	2(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	call	#__mspabi_cmpd
	cmp	#1, r12
	jl	.LBB123_4
	jmp	.LBB123_3
.LBB123_3:
	mov	&.L__profc___mspabi_cmpd+22, r12
	mov	&.L__profc___mspabi_cmpd+20, r11
	mov	&.L__profc___mspabi_cmpd+18, r14
	mov	&.L__profc___mspabi_cmpd+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_cmpd+16
	mov	r14, &.L__profc___mspabi_cmpd+18
	mov	r13, &.L__profc___mspabi_cmpd+20
	mov	r12, &.L__profc___mspabi_cmpd+22
	mov	#1, 16(r1)
	jmp	.LBB123_5
.LBB123_4:
	clr	16(r1)
	jmp	.LBB123_5
.LBB123_5:
	mov	16(r1), r12
	add	#18, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
                                        ; -- End function
	.globl	__mspabi_mpysll                 ; -- Begin function __mspabi_mpysll
	.p2align	1
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        ; @__mspabi_mpysll
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	r15, 2(r1)
	mov	r14, 0(r1)
	mov	&.L__profc___mspabi_mpysll+6, r12
	mov	&.L__profc___mspabi_mpysll+4, r11
	mov	&.L__profc___mspabi_mpysll+2, r14
	mov	&.L__profc___mspabi_mpysll, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_mpysll
	mov	r14, &.L__profc___mspabi_mpysll+2
	mov	r13, &.L__profc___mspabi_mpysll+4
	mov	r12, &.L__profc___mspabi_mpysll+6
	mov	6(r1), r9
	mov	r9, r11
	swpb	r11
	sxt	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	rra	r11
	mov	4(r1), r8
	mov	2(r1), r13
	mov	r13, r15
	swpb	r15
	sxt	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	rra	r15
	mov	0(r1), r12
	mov	r11, r10
	mov	r15, r14
	call	#__mspabi_mpyll
	add	#8, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
                                        ; -- End function
	.globl	__mspabi_mpyull                 ; -- Begin function __mspabi_mpyull
	.p2align	1
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        ; @__mspabi_mpyull
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	r15, 2(r1)
	mov	r14, 0(r1)
	mov	&.L__profc___mspabi_mpyull+6, r12
	mov	&.L__profc___mspabi_mpyull+4, r11
	mov	&.L__profc___mspabi_mpyull+2, r14
	mov	&.L__profc___mspabi_mpyull, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mspabi_mpyull
	mov	r14, &.L__profc___mspabi_mpyull+2
	mov	r13, &.L__profc___mspabi_mpyull+4
	mov	r12, &.L__profc___mspabi_mpyull+6
	mov	4(r1), r8
	mov	6(r1), r9
	mov	0(r1), r12
	mov	2(r1), r13
	clr	r15
	mov	r15, r10
	mov	r15, r11
	mov	r15, r14
	call	#__mspabi_mpyll
	add	#8, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
                                        ; -- End function
	.globl	__mulhi3                        ; -- Begin function __mulhi3
	.p2align	1
	.type	__mulhi3,@function
__mulhi3:                               ; @__mulhi3
; %bb.0:
	push	r9
	push	r10
	sub	#14, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	&.L__profc___mulhi3+6, r12
	mov	&.L__profc___mulhi3+4, r11
	mov	&.L__profc___mulhi3+2, r14
	mov	&.L__profc___mulhi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulhi3
	mov	r14, &.L__profc___mulhi3+2
	mov	r13, &.L__profc___mulhi3+4
	mov	r12, &.L__profc___mulhi3+6
	clr	6(r1)
	clr	4(r1)
	mov	10(r1), r12
	tst	r12
	jge	.LBB126_2
	jmp	.LBB126_1
.LBB126_1:
	mov	&.L__profc___mulhi3+14, r12
	mov	&.L__profc___mulhi3+12, r11
	mov	&.L__profc___mulhi3+10, r14
	mov	&.L__profc___mulhi3+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulhi3+8
	mov	r14, &.L__profc___mulhi3+10
	mov	r13, &.L__profc___mulhi3+12
	mov	r12, &.L__profc___mulhi3+14
	mov	10(r1), r13
	clr	r12
	sub	r13, r12
	mov	r12, 10(r1)
	mov	#1, 6(r1)
	jmp	.LBB126_2
.LBB126_2:
	clr.b	9(r1)
	jmp	.LBB126_3
.LBB126_3:                              ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB126_6
	jmp	.LBB126_4
.LBB126_4:                              ;   in Loop: Header=BB126_3 Depth=1
	mov	&.L__profc___mulhi3+30, r13
	mov	&.L__profc___mulhi3+28, r12
	mov	&.L__profc___mulhi3+26, r15
	mov	&.L__profc___mulhi3+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___mulhi3+24
	mov	r15, &.L__profc___mulhi3+26
	mov	r14, &.L__profc___mulhi3+28
	mov	r13, &.L__profc___mulhi3+30
	mov.b	9(r1), r13
	sxt	r13
	cmp	#16, r13
	mov	r2, r14
	bic	r14, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 2(r1)                      ; 1-byte Folded Spill
	cmp	#16, r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jhs	.LBB126_6
	jmp	.LBB126_5
.LBB126_5:                              ;   in Loop: Header=BB126_3 Depth=1
	mov.b	2(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc___mulhi3+38, r13
	mov	&.L__profc___mulhi3+36, r10
	mov	&.L__profc___mulhi3+34, r15
	mov	&.L__profc___mulhi3+32, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___mulhi3+32
	mov	r15, &.L__profc___mulhi3+34
	mov	r14, &.L__profc___mulhi3+36
	mov	r13, &.L__profc___mulhi3+38
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB126_6
.LBB126_6:                              ;   in Loop: Header=BB126_3 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB126_11
	jmp	.LBB126_7
.LBB126_7:                              ;   in Loop: Header=BB126_3 Depth=1
	mov	&.L__profc___mulhi3+22, r12
	mov	&.L__profc___mulhi3+20, r11
	mov	&.L__profc___mulhi3+18, r14
	mov	&.L__profc___mulhi3+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulhi3+16
	mov	r14, &.L__profc___mulhi3+18
	mov	r13, &.L__profc___mulhi3+20
	mov	r12, &.L__profc___mulhi3+22
	mov.b	10(r1), r12
	bit.b	#1, r12
	jeq	.LBB126_9
	jmp	.LBB126_8
.LBB126_8:                              ;   in Loop: Header=BB126_3 Depth=1
	mov	&.L__profc___mulhi3+46, r12
	mov	&.L__profc___mulhi3+44, r11
	mov	&.L__profc___mulhi3+42, r14
	mov	&.L__profc___mulhi3+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulhi3+40
	mov	r14, &.L__profc___mulhi3+42
	mov	r13, &.L__profc___mulhi3+44
	mov	r12, &.L__profc___mulhi3+46
	mov	12(r1), r13
	mov	4(r1), r12
	add	r13, r12
	mov	r12, 4(r1)
	jmp	.LBB126_9
.LBB126_9:                              ;   in Loop: Header=BB126_3 Depth=1
	mov	12(r1), r12
	add	r12, r12
	mov	r12, 12(r1)
	mov	10(r1), r12
	rra	r12
	mov	r12, 10(r1)
	jmp	.LBB126_10
.LBB126_10:                             ;   in Loop: Header=BB126_3 Depth=1
	mov.b	9(r1), r12
	inc.b	r12
	mov.b	r12, 9(r1)
	jmp	.LBB126_3
.LBB126_11:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB126_13
	jmp	.LBB126_12
.LBB126_12:
	mov	&.L__profc___mulhi3+54, r12
	mov	&.L__profc___mulhi3+52, r11
	mov	&.L__profc___mulhi3+50, r14
	mov	&.L__profc___mulhi3+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___mulhi3+48
	mov	r14, &.L__profc___mulhi3+50
	mov	r13, &.L__profc___mulhi3+52
	mov	r12, &.L__profc___mulhi3+54
	mov	4(r1), r13
	clr	r12
	sub	r13, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB126_14
.LBB126_13:
	mov	4(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB126_14
.LBB126_14:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#14, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
                                        ; -- End function
	.globl	__divsi3                        ; -- Begin function __divsi3
	.p2align	1
	.type	__divsi3,@function
__divsi3:                               ; @__divsi3
; %bb.0:
	push	r9
	push	r10
	sub	#16, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	mov	&.L__profc___divsi3+6, r12
	mov	&.L__profc___divsi3+4, r11
	mov	&.L__profc___divsi3+2, r14
	mov	&.L__profc___divsi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___divsi3
	mov	r14, &.L__profc___divsi3+2
	mov	r13, &.L__profc___divsi3+4
	mov	r12, &.L__profc___divsi3+6
	clr	6(r1)
	mov	14(r1), r12
	tst	r12
	jge	.LBB127_2
	jmp	.LBB127_1
.LBB127_1:
	mov	&.L__profc___divsi3+14, r13
	mov	&.L__profc___divsi3+12, r12
	mov	&.L__profc___divsi3+10, r15
	mov	&.L__profc___divsi3+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___divsi3+8
	mov	r15, &.L__profc___divsi3+10
	mov	r14, &.L__profc___divsi3+12
	mov	r13, &.L__profc___divsi3+14
	mov	14(r1), r15
	mov	12(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	bic	r13, r12
	add	r12, r15
	clr	r13
	mov	r13, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 12(r1)
	mov	r12, 14(r1)
	mov	6(r1), r12
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	mov	r12, 6(r1)
	jmp	.LBB127_2
.LBB127_2:
	mov	10(r1), r12
	tst	r12
	jge	.LBB127_4
	jmp	.LBB127_3
.LBB127_3:
	mov	&.L__profc___divsi3+22, r13
	mov	&.L__profc___divsi3+20, r12
	mov	&.L__profc___divsi3+18, r15
	mov	&.L__profc___divsi3+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___divsi3+16
	mov	r15, &.L__profc___divsi3+18
	mov	r14, &.L__profc___divsi3+20
	mov	r13, &.L__profc___divsi3+22
	mov	10(r1), r15
	mov	8(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	bic	r13, r12
	add	r12, r15
	clr	r13
	mov	r13, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 8(r1)
	mov	r12, 10(r1)
	mov	6(r1), r12
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	mov	r12, 6(r1)
	jmp	.LBB127_4
.LBB127_4:
	mov	14(r1), r13
	mov	12(r1), r12
	mov	10(r1), r15
	mov	8(r1), r14
	mov	r1, r11
	clr	0(r11)
	call	#__udivmodsi4
	mov	r13, 4(r1)
	mov	r12, 2(r1)
	mov	6(r1), r12
	tst	r12
	jeq	.LBB127_6
	jmp	.LBB127_5
.LBB127_5:
	mov	&.L__profc___divsi3+30, r13
	mov	&.L__profc___divsi3+28, r12
	mov	&.L__profc___divsi3+26, r15
	mov	&.L__profc___divsi3+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___divsi3+24
	mov	r15, &.L__profc___divsi3+26
	mov	r14, &.L__profc___divsi3+28
	mov	r13, &.L__profc___divsi3+30
	mov	4(r1), r15
	mov	2(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	bic	r13, r12
	add	r12, r15
	clr	r13
	mov	r13, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	jmp	.LBB127_6
.LBB127_6:
	mov	2(r1), r12
	mov	4(r1), r13
	add	#16, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
                                        ; -- End function
	.globl	__modsi3                        ; -- Begin function __modsi3
	.p2align	1
	.type	__modsi3,@function
__modsi3:                               ; @__modsi3
; %bb.0:
	push	r9
	push	r10
	sub	#16, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	mov	&.L__profc___modsi3+6, r12
	mov	&.L__profc___modsi3+4, r11
	mov	&.L__profc___modsi3+2, r14
	mov	&.L__profc___modsi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___modsi3
	mov	r14, &.L__profc___modsi3+2
	mov	r13, &.L__profc___modsi3+4
	mov	r12, &.L__profc___modsi3+6
	clr	6(r1)
	mov	14(r1), r12
	tst	r12
	jge	.LBB128_2
	jmp	.LBB128_1
.LBB128_1:
	mov	&.L__profc___modsi3+14, r13
	mov	&.L__profc___modsi3+12, r12
	mov	&.L__profc___modsi3+10, r15
	mov	&.L__profc___modsi3+8, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___modsi3+8
	mov	r15, &.L__profc___modsi3+10
	mov	r14, &.L__profc___modsi3+12
	mov	r13, &.L__profc___modsi3+14
	mov	14(r1), r15
	mov	12(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	bic	r13, r12
	add	r12, r15
	clr	r13
	mov	r13, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 12(r1)
	mov	r12, 14(r1)
	mov	#1, 6(r1)
	jmp	.LBB128_2
.LBB128_2:
	mov	10(r1), r12
	tst	r12
	jge	.LBB128_4
	jmp	.LBB128_3
.LBB128_3:
	mov	&.L__profc___modsi3+22, r13
	mov	&.L__profc___modsi3+20, r12
	mov	&.L__profc___modsi3+18, r15
	mov	&.L__profc___modsi3+16, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___modsi3+16
	mov	r15, &.L__profc___modsi3+18
	mov	r14, &.L__profc___modsi3+20
	mov	r13, &.L__profc___modsi3+22
	mov	10(r1), r15
	mov	8(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	bic	r13, r12
	add	r12, r15
	clr	r13
	mov	r13, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 8(r1)
	mov	r12, 10(r1)
	jmp	.LBB128_4
.LBB128_4:
	mov	14(r1), r13
	mov	12(r1), r12
	mov	10(r1), r15
	mov	8(r1), r14
	mov	r1, r11
	mov	#1, 0(r11)
	call	#__udivmodsi4
	mov	r13, 4(r1)
	mov	r12, 2(r1)
	mov	6(r1), r12
	tst	r12
	jeq	.LBB128_6
	jmp	.LBB128_5
.LBB128_5:
	mov	&.L__profc___modsi3+30, r13
	mov	&.L__profc___modsi3+28, r12
	mov	&.L__profc___modsi3+26, r15
	mov	&.L__profc___modsi3+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___modsi3+24
	mov	r15, &.L__profc___modsi3+26
	mov	r14, &.L__profc___modsi3+28
	mov	r13, &.L__profc___modsi3+30
	mov	4(r1), r15
	mov	2(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	bic	r13, r12
	add	r12, r15
	clr	r13
	mov	r13, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	jmp	.LBB128_6
.LBB128_6:
	mov	2(r1), r12
	mov	4(r1), r13
	add	#16, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
                                        ; -- End function
	.globl	__udivmodhi4                    ; -- Begin function __udivmodhi4
	.p2align	1
	.type	__udivmodhi4,@function
__udivmodhi4:                           ; @__udivmodhi4
; %bb.0:
	push	r9
	push	r10
	sub	#14, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
	mov	&.L__profc___udivmodhi4+6, r12
	mov	&.L__profc___udivmodhi4+4, r11
	mov	&.L__profc___udivmodhi4+2, r14
	mov	&.L__profc___udivmodhi4, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4
	mov	r14, &.L__profc___udivmodhi4+2
	mov	r13, &.L__profc___udivmodhi4+4
	mov	r12, &.L__profc___udivmodhi4+6
	mov	#1, 4(r1)
	clr	2(r1)
	jmp	.LBB129_1
.LBB129_1:                              ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r13
	mov	10(r1), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jhs	.LBB129_6
	jmp	.LBB129_2
.LBB129_2:                              ;   in Loop: Header=BB129_1 Depth=1
	mov	&.L__profc___udivmodhi4+38, r12
	mov	&.L__profc___udivmodhi4+36, r11
	mov	&.L__profc___udivmodhi4+34, r14
	mov	&.L__profc___udivmodhi4+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4+32
	mov	r14, &.L__profc___udivmodhi4+34
	mov	r13, &.L__profc___udivmodhi4+36
	mov	r12, &.L__profc___udivmodhi4+38
	mov	4(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB129_6
	jmp	.LBB129_3
.LBB129_3:                              ;   in Loop: Header=BB129_1 Depth=1
	mov	&.L__profc___udivmodhi4+46, r12
	mov	&.L__profc___udivmodhi4+44, r11
	mov	&.L__profc___udivmodhi4+42, r14
	mov	&.L__profc___udivmodhi4+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4+40
	mov	r14, &.L__profc___udivmodhi4+42
	mov	r13, &.L__profc___udivmodhi4+44
	mov	r12, &.L__profc___udivmodhi4+46
	jmp	.LBB129_4
.LBB129_4:                              ;   in Loop: Header=BB129_1 Depth=1
	mov	&.L__profc___udivmodhi4+22, r12
	mov	&.L__profc___udivmodhi4+20, r11
	mov	&.L__profc___udivmodhi4+18, r14
	mov	&.L__profc___udivmodhi4+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4+16
	mov	r14, &.L__profc___udivmodhi4+18
	mov	r13, &.L__profc___udivmodhi4+20
	mov	r12, &.L__profc___udivmodhi4+22
	mov	8(r1), r13
	and	#-32768, r13
	tst	r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 0(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jne	.LBB129_6
	jmp	.LBB129_5
.LBB129_5:                              ;   in Loop: Header=BB129_1 Depth=1
	mov.b	0(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc___udivmodhi4+30, r13
	mov	&.L__profc___udivmodhi4+28, r10
	mov	&.L__profc___udivmodhi4+26, r15
	mov	&.L__profc___udivmodhi4+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___udivmodhi4+24
	mov	r15, &.L__profc___udivmodhi4+26
	mov	r14, &.L__profc___udivmodhi4+28
	mov	r13, &.L__profc___udivmodhi4+30
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB129_6
.LBB129_6:                              ;   in Loop: Header=BB129_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB129_8
	jmp	.LBB129_7
.LBB129_7:                              ;   in Loop: Header=BB129_1 Depth=1
	mov	&.L__profc___udivmodhi4+14, r12
	mov	&.L__profc___udivmodhi4+12, r11
	mov	&.L__profc___udivmodhi4+10, r14
	mov	&.L__profc___udivmodhi4+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4+8
	mov	r14, &.L__profc___udivmodhi4+10
	mov	r13, &.L__profc___udivmodhi4+12
	mov	r12, &.L__profc___udivmodhi4+14
	mov	8(r1), r12
	add	r12, r12
	mov	r12, 8(r1)
	mov	4(r1), r12
	add	r12, r12
	mov	r12, 4(r1)
	jmp	.LBB129_1
.LBB129_8:
	jmp	.LBB129_9
.LBB129_9:                              ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB129_13
	jmp	.LBB129_10
.LBB129_10:                             ;   in Loop: Header=BB129_9 Depth=1
	mov	&.L__profc___udivmodhi4+54, r12
	mov	&.L__profc___udivmodhi4+52, r11
	mov	&.L__profc___udivmodhi4+50, r14
	mov	&.L__profc___udivmodhi4+48, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4+48
	mov	r14, &.L__profc___udivmodhi4+50
	mov	r13, &.L__profc___udivmodhi4+52
	mov	r12, &.L__profc___udivmodhi4+54
	mov	10(r1), r12
	mov	8(r1), r13
	cmp	r13, r12
	jlo	.LBB129_12
	jmp	.LBB129_11
.LBB129_11:                             ;   in Loop: Header=BB129_9 Depth=1
	mov	&.L__profc___udivmodhi4+62, r12
	mov	&.L__profc___udivmodhi4+60, r11
	mov	&.L__profc___udivmodhi4+58, r14
	mov	&.L__profc___udivmodhi4+56, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4+56
	mov	r14, &.L__profc___udivmodhi4+58
	mov	r13, &.L__profc___udivmodhi4+60
	mov	r12, &.L__profc___udivmodhi4+62
	mov	8(r1), r13
	mov	10(r1), r12
	sub	r13, r12
	mov	r12, 10(r1)
	mov	4(r1), r13
	mov	2(r1), r12
	bis	r13, r12
	mov	r12, 2(r1)
	jmp	.LBB129_12
.LBB129_12:                             ;   in Loop: Header=BB129_9 Depth=1
	mov	4(r1), r12
	clrc
	rrc	r12
	mov	r12, 4(r1)
	mov	8(r1), r12
	clrc
	rrc	r12
	mov	r12, 8(r1)
	jmp	.LBB129_9
.LBB129_13:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB129_15
	jmp	.LBB129_14
.LBB129_14:
	mov	&.L__profc___udivmodhi4+70, r12
	mov	&.L__profc___udivmodhi4+68, r11
	mov	&.L__profc___udivmodhi4+66, r14
	mov	&.L__profc___udivmodhi4+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodhi4+64
	mov	r14, &.L__profc___udivmodhi4+66
	mov	r13, &.L__profc___udivmodhi4+68
	mov	r12, &.L__profc___udivmodhi4+70
	mov	10(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB129_16
.LBB129_15:
	mov	2(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB129_16
.LBB129_16:
	mov	12(r1), r12
	add	#14, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
                                        ; -- End function
	.globl	__udivmodsi4_libgcc             ; -- Begin function __udivmodsi4_libgcc
	.p2align	1
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    ; @__udivmodsi4_libgcc
; %bb.0:
	push	r9
	push	r10
	sub	#30, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	36(r1), r11
	mov	r13, 24(r1)
	mov	r12, 22(r1)
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	&.L__profc___udivmodsi4_libgcc+6, r12
	mov	&.L__profc___udivmodsi4_libgcc+4, r11
	mov	&.L__profc___udivmodsi4_libgcc+2, r14
	mov	&.L__profc___udivmodsi4_libgcc, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4_libgcc
	mov	r14, &.L__profc___udivmodsi4_libgcc+2
	mov	r13, &.L__profc___udivmodsi4_libgcc+4
	mov	r12, &.L__profc___udivmodsi4_libgcc+6
	clr	16(r1)
	mov	#1, 14(r1)
	clr	12(r1)
	clr	10(r1)
	jmp	.LBB130_1
.LBB130_1:                              ; =>This Inner Loop Header: Depth=1
	mov	18(r1), r12
	mov	20(r1), r13
	mov	22(r1), r15
	mov	24(r1), r14
	cmp	r14, r13
	mov	r2, r11
	and	#1, r11
	mov	r11, 6(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	jeq	.LBB130_3
; %bb.2:                                ;   in Loop: Header=BB130_1 Depth=1
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
.LBB130_3:                              ;   in Loop: Header=BB130_1 Depth=1
	mov	8(r1), r13                      ; 2-byte Folded Reload
	clr.b	r12
	bit	#1, r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB130_8
	jmp	.LBB130_4
.LBB130_4:                              ;   in Loop: Header=BB130_1 Depth=1
	mov	&.L__profc___udivmodsi4_libgcc+38, r12
	mov	&.L__profc___udivmodsi4_libgcc+36, r11
	mov	&.L__profc___udivmodsi4_libgcc+34, r14
	mov	&.L__profc___udivmodsi4_libgcc+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4_libgcc+32
	mov	r14, &.L__profc___udivmodsi4_libgcc+34
	mov	r13, &.L__profc___udivmodsi4_libgcc+36
	mov	r12, &.L__profc___udivmodsi4_libgcc+38
	mov	16(r1), r12
	mov	14(r1), r13
	bis	r12, r13
	clr.b	r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB130_8
	jmp	.LBB130_5
.LBB130_5:                              ;   in Loop: Header=BB130_1 Depth=1
	mov	&.L__profc___udivmodsi4_libgcc+46, r12
	mov	&.L__profc___udivmodsi4_libgcc+44, r11
	mov	&.L__profc___udivmodsi4_libgcc+42, r14
	mov	&.L__profc___udivmodsi4_libgcc+40, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4_libgcc+40
	mov	r14, &.L__profc___udivmodsi4_libgcc+42
	mov	r13, &.L__profc___udivmodsi4_libgcc+44
	mov	r12, &.L__profc___udivmodsi4_libgcc+46
	jmp	.LBB130_6
.LBB130_6:                              ;   in Loop: Header=BB130_1 Depth=1
	mov	&.L__profc___udivmodsi4_libgcc+22, r12
	mov	&.L__profc___udivmodsi4_libgcc+20, r11
	mov	&.L__profc___udivmodsi4_libgcc+18, r14
	mov	&.L__profc___udivmodsi4_libgcc+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4_libgcc+16
	mov	r14, &.L__profc___udivmodsi4_libgcc+18
	mov	r13, &.L__profc___udivmodsi4_libgcc+20
	mov	r12, &.L__profc___udivmodsi4_libgcc+22
	mov	20(r1), r13
	and	#-32768, r13
	tst	r13
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 4(r1)                      ; 1-byte Folded Spill
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jne	.LBB130_8
	jmp	.LBB130_7
.LBB130_7:                              ;   in Loop: Header=BB130_1 Depth=1
	mov.b	4(r1), r12                      ; 1-byte Folded Reload
	mov	&.L__profc___udivmodsi4_libgcc+30, r13
	mov	&.L__profc___udivmodsi4_libgcc+28, r10
	mov	&.L__profc___udivmodsi4_libgcc+26, r15
	mov	&.L__profc___udivmodsi4_libgcc+24, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r9
	rra	r9
	and	#1, r9
	mov	r10, r14
	add	r9, r14
	cmp	r10, r14
	mov	r2, r9
	mov	#1, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___udivmodsi4_libgcc+24
	mov	r15, &.L__profc___udivmodsi4_libgcc+26
	mov	r14, &.L__profc___udivmodsi4_libgcc+28
	mov	r13, &.L__profc___udivmodsi4_libgcc+30
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB130_8
.LBB130_8:                              ;   in Loop: Header=BB130_1 Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB130_10
	jmp	.LBB130_9
.LBB130_9:                              ;   in Loop: Header=BB130_1 Depth=1
	mov	&.L__profc___udivmodsi4_libgcc+14, r12
	mov	&.L__profc___udivmodsi4_libgcc+12, r11
	mov	&.L__profc___udivmodsi4_libgcc+10, r14
	mov	&.L__profc___udivmodsi4_libgcc+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4_libgcc+8
	mov	r14, &.L__profc___udivmodsi4_libgcc+10
	mov	r13, &.L__profc___udivmodsi4_libgcc+12
	mov	r12, &.L__profc___udivmodsi4_libgcc+14
	mov	18(r1), r13
	mov	20(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 18(r1)
	mov	r12, 20(r1)
	mov	14(r1), r13
	mov	16(r1), r12
	add	r12, r12
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	clrc
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	bis	r14, r12
	add	r13, r13
	mov	r13, 14(r1)
	mov	r12, 16(r1)
	jmp	.LBB130_1
.LBB130_10:
	jmp	.LBB130_11
.LBB130_11:                             ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB130_17
	jmp	.LBB130_12
.LBB130_12:                             ;   in Loop: Header=BB130_11 Depth=1
	mov	&.L__profc___udivmodsi4_libgcc+54, r13
	mov	&.L__profc___udivmodsi4_libgcc+52, r12
	mov	&.L__profc___udivmodsi4_libgcc+50, r15
	mov	&.L__profc___udivmodsi4_libgcc+48, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___udivmodsi4_libgcc+48
	mov	r15, &.L__profc___udivmodsi4_libgcc+50
	mov	r14, &.L__profc___udivmodsi4_libgcc+52
	mov	r13, &.L__profc___udivmodsi4_libgcc+54
	mov	22(r1), r15
	mov	24(r1), r13
	mov	18(r1), r11
	mov	20(r1), r14
	cmp	r14, r13
	mov	r2, r9
	mov	r12, r10
	bic	r9, r10
	mov	r10, 0(r1)                      ; 2-byte Folded Spill
	cmp	r11, r15
	mov	r2, r15
	bic	r15, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB130_14
; %bb.13:                               ;   in Loop: Header=BB130_11 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB130_14:                             ;   in Loop: Header=BB130_11 Depth=1
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB130_16
	jmp	.LBB130_15
.LBB130_15:                             ;   in Loop: Header=BB130_11 Depth=1
	mov	&.L__profc___udivmodsi4_libgcc+62, r12
	mov	&.L__profc___udivmodsi4_libgcc+60, r15
	mov	&.L__profc___udivmodsi4_libgcc+58, r14
	mov	&.L__profc___udivmodsi4_libgcc+56, r11
	inc	r11
	tst	r11
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r11, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r15, r13
	add	r10, r13
	cmp	r15, r13
	mov	r2, r9
	mov	#1, r15
	mov	r15, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc___udivmodsi4_libgcc+56
	mov	r14, &.L__profc___udivmodsi4_libgcc+58
	mov	r13, &.L__profc___udivmodsi4_libgcc+60
	mov	r12, &.L__profc___udivmodsi4_libgcc+62
	mov	18(r1), r14
	mov	20(r1), r11
	mov	22(r1), r13
	mov	24(r1), r12
	sub	r11, r12
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	sub	r15, r12
	sub	r14, r13
	mov	r13, 22(r1)
	mov	r12, 24(r1)
	mov	16(r1), r14
	mov	14(r1), r15
	mov	12(r1), r13
	mov	10(r1), r12
	bis	r15, r12
	bis	r14, r13
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	jmp	.LBB130_16
.LBB130_16:                             ;   in Loop: Header=BB130_11 Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	20(r1), r13
	mov	18(r1), r12
	clrc
	rrc	r12
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r12
	clrc
	rrc	r13
	mov	r13, 20(r1)
	mov	r12, 18(r1)
	jmp	.LBB130_11
.LBB130_17:
	mov	36(r1), r12
	tst	r12
	jeq	.LBB130_19
	jmp	.LBB130_18
.LBB130_18:
	mov	&.L__profc___udivmodsi4_libgcc+70, r12
	mov	&.L__profc___udivmodsi4_libgcc+68, r11
	mov	&.L__profc___udivmodsi4_libgcc+66, r14
	mov	&.L__profc___udivmodsi4_libgcc+64, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___udivmodsi4_libgcc+64
	mov	r14, &.L__profc___udivmodsi4_libgcc+66
	mov	r13, &.L__profc___udivmodsi4_libgcc+68
	mov	r12, &.L__profc___udivmodsi4_libgcc+70
	mov	22(r1), r12
	mov	24(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB130_20
.LBB130_19:
	mov	10(r1), r12
	mov	12(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB130_20
.LBB130_20:
	mov	26(r1), r12
	mov	28(r1), r13
	add	#30, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
                                        ; -- End function
	.globl	__ashldi3                       ; -- Begin function __ashldi3
	.p2align	1
	.type	__ashldi3,@function
__ashldi3:                              ; @__ashldi3
; %bb.0:
	push	r10
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	44(r1), r11
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	&.L__profc___ashldi3+6, r12
	mov	&.L__profc___ashldi3+4, r11
	mov	&.L__profc___ashldi3+2, r14
	mov	&.L__profc___ashldi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ashldi3
	mov	r14, &.L__profc___ashldi3+2
	mov	r13, &.L__profc___ashldi3+4
	mov	r12, &.L__profc___ashldi3+6
	mov	#32, 22(r1)
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov.b	44(r1), r12
	bit.b	#32, r12
	jeq	.LBB131_2
	jmp	.LBB131_1
.LBB131_1:
	mov	&.L__profc___ashldi3+14, r12
	mov	&.L__profc___ashldi3+12, r11
	mov	&.L__profc___ashldi3+10, r14
	mov	&.L__profc___ashldi3+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ashldi3+8
	mov	r14, &.L__profc___ashldi3+10
	mov	r13, &.L__profc___ashldi3+12
	mov	r12, &.L__profc___ashldi3+14
	clr	8(r1)
	clr	6(r1)
	mov	14(r1), r12
	mov	16(r1), r13
	mov.b	44(r1), r14
	add.b	#-32, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_slll
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	jmp	.LBB131_5
.LBB131_2:
	mov	44(r1), r12
	tst	r12
	jne	.LBB131_4
	jmp	.LBB131_3
.LBB131_3:
	mov	&.L__profc___ashldi3+22, r12
	mov	&.L__profc___ashldi3+20, r11
	mov	&.L__profc___ashldi3+18, r14
	mov	&.L__profc___ashldi3+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ashldi3+16
	mov	r14, &.L__profc___ashldi3+18
	mov	r13, &.L__profc___ashldi3+20
	mov	r12, &.L__profc___ashldi3+22
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 38(r1)
	mov	r14, 36(r1)
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	jmp	.LBB131_6
.LBB131_4:
	mov	14(r1), r12
	mov	16(r1), r13
	mov.b	44(r1), r14
	call	#__mspabi_slll
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	44(r1), r14
	mov.b	r14, r15
	mov.b	r15, 1(r1)                      ; 1-byte Folded Spill
	call	#__mspabi_slll
	mov.b	1(r1), r15                      ; 1-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r12
	mov	16(r1), r13
	mov.b	#32, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	r12, r15
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r14
	mov	4(r1), r13                      ; 2-byte Folded Reload
	bis	r15, r12
	bis	r14, r13
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	jmp	.LBB131_5
.LBB131_5:
	mov	6(r1), r12
	mov	8(r1), r13
	mov	10(r1), r14
	mov	12(r1), r15
	mov	r15, 38(r1)
	mov	r14, 36(r1)
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	jmp	.LBB131_6
.LBB131_6:
	mov	32(r1), r12
	mov	34(r1), r13
	mov	36(r1), r14
	mov	38(r1), r15
	add	#40, r1
	pop	r10
	ret
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
                                        ; -- End function
	.globl	__ashrdi3                       ; -- Begin function __ashrdi3
	.p2align	1
	.type	__ashrdi3,@function
__ashrdi3:                              ; @__ashrdi3
; %bb.0:
	push	r10
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	44(r1), r11
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	&.L__profc___ashrdi3+6, r12
	mov	&.L__profc___ashrdi3+4, r11
	mov	&.L__profc___ashrdi3+2, r14
	mov	&.L__profc___ashrdi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ashrdi3
	mov	r14, &.L__profc___ashrdi3+2
	mov	r13, &.L__profc___ashrdi3+4
	mov	r12, &.L__profc___ashrdi3+6
	mov	#32, 22(r1)
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov.b	44(r1), r12
	bit.b	#32, r12
	jeq	.LBB132_2
	jmp	.LBB132_1
.LBB132_1:
	mov	&.L__profc___ashrdi3+14, r12
	mov	&.L__profc___ashrdi3+12, r11
	mov	&.L__profc___ashrdi3+10, r14
	mov	&.L__profc___ashrdi3+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ashrdi3+8
	mov	r14, &.L__profc___ashrdi3+10
	mov	r13, &.L__profc___ashrdi3+12
	mov	r12, &.L__profc___ashrdi3+14
	mov	20(r1), r12
	swpb	r12
	sxt	r12
	rra	r12
	rra	r12
	rra	r12
	rra	r12
	rra	r12
	rra	r12
	rra	r12
	mov	r12, 12(r1)
	mov	r12, 10(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	44(r1), r14
	add.b	#-32, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_sral
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	jmp	.LBB132_5
.LBB132_2:
	mov	44(r1), r12
	tst	r12
	jne	.LBB132_4
	jmp	.LBB132_3
.LBB132_3:
	mov	&.L__profc___ashrdi3+22, r12
	mov	&.L__profc___ashrdi3+20, r11
	mov	&.L__profc___ashrdi3+18, r14
	mov	&.L__profc___ashrdi3+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ashrdi3+16
	mov	r14, &.L__profc___ashrdi3+18
	mov	r13, &.L__profc___ashrdi3+20
	mov	r12, &.L__profc___ashrdi3+22
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 38(r1)
	mov	r14, 36(r1)
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	jmp	.LBB132_6
.LBB132_4:
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	44(r1), r14
	call	#__mspabi_sral
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	44(r1), r14
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r14, r15
	mov.b	#32, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_slll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r12
	mov	16(r1), r13
	call	#__mspabi_srll
	mov	r12, r15
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r14
	mov	4(r1), r13                      ; 2-byte Folded Reload
	bis	r15, r12
	bis	r14, r13
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	jmp	.LBB132_5
.LBB132_5:
	mov	6(r1), r12
	mov	8(r1), r13
	mov	10(r1), r14
	mov	12(r1), r15
	mov	r15, 38(r1)
	mov	r14, 36(r1)
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	jmp	.LBB132_6
.LBB132_6:
	mov	32(r1), r12
	mov	34(r1), r13
	mov	36(r1), r14
	mov	38(r1), r15
	add	#40, r1
	pop	r10
	ret
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
                                        ; -- End function
	.globl	__bswapdi2                      ; -- Begin function __bswapdi2
	.p2align	1
	.type	__bswapdi2,@function
__bswapdi2:                             ; @__bswapdi2
; %bb.0:
	push	r10
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	&.L__profc___bswapdi2+6, r12
	mov	&.L__profc___bswapdi2+4, r11
	mov	&.L__profc___bswapdi2+2, r14
	mov	&.L__profc___bswapdi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___bswapdi2
	mov	r14, &.L__profc___bswapdi2+2
	mov	r13, &.L__profc___bswapdi2+4
	mov	r12, &.L__profc___bswapdi2+6
	mov	0(r1), r15
	mov	2(r1), r14
	mov	4(r1), r13
	mov	6(r1), r12
	swpb	r12
	swpb	r13
	swpb	r14
	swpb	r15
	add	#8, r1
	pop	r10
	ret
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
                                        ; -- End function
	.globl	__bswapsi2                      ; -- Begin function __bswapsi2
	.p2align	1
	.type	__bswapsi2,@function
__bswapsi2:                             ; @__bswapsi2
; %bb.0:
	push	r10
	sub	#4, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	&.L__profc___bswapsi2+6, r12
	mov	&.L__profc___bswapsi2+4, r11
	mov	&.L__profc___bswapsi2+2, r14
	mov	&.L__profc___bswapsi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___bswapsi2
	mov	r14, &.L__profc___bswapsi2+2
	mov	r13, &.L__profc___bswapsi2+4
	mov	r12, &.L__profc___bswapsi2+6
	mov	0(r1), r13
	mov	2(r1), r12
	swpb	r12
	swpb	r13
	add	#4, r1
	pop	r10
	ret
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
                                        ; -- End function
	.globl	__clzsi2                        ; -- Begin function __clzsi2
	.p2align	1
	.type	__clzsi2,@function
__clzsi2:                               ; @__clzsi2
; %bb.0:
	push	r10
	sub	#18, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	&.L__profc___clzsi2+6, r12
	mov	&.L__profc___clzsi2+4, r11
	mov	&.L__profc___clzsi2+2, r14
	mov	&.L__profc___clzsi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___clzsi2
	mov	r14, &.L__profc___clzsi2+2
	mov	r13, &.L__profc___clzsi2+4
	mov	r12, &.L__profc___clzsi2+6
	mov	14(r1), r12
	mov	16(r1), r13
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	12(r1), r12
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r15
	mov	10(r1), r12
	mov	12(r1), r13
	mov.b	#16, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r12
	mov	8(r1), r13
	mov	r13, 4(r1)
	mov	r12, 2(r1)
	mov.b	11(r1), r12
	swpb	r12
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r15
	mov	10(r1), r12
	mov	12(r1), r13
	mov.b	#8, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r11
	mov	8(r1), r13
	mov	2(r1), r15
	mov	4(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	mov	10(r1), r12
	bit	#240, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r15
	mov	10(r1), r12
	mov	12(r1), r13
	mov.b	#4, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r11
	mov	8(r1), r13
	mov	2(r1), r15
	mov	4(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	mov	10(r1), r12
	bit	#12, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r15
	mov	10(r1), r12
	mov	12(r1), r13
	mov.b	#2, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r11
	mov	8(r1), r13
	mov	2(r1), r15
	mov	4(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	mov	2(r1), r12
	mov	10(r1), r14
	mov	#2, r13
	sub	r14, r13
	bit	#2, r14
	mov	r2, r15
	rra	r15
	and	#1, r15
	clr	r14
	sub	r15, r14
	and	r14, r13
	add	r13, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
                                        ; -- End function
	.globl	__cmpdi2                        ; -- Begin function __cmpdi2
	.p2align	1
	.type	__cmpdi2,@function
__cmpdi2:                               ; @__cmpdi2
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#76, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	92(r1), r15
	mov	90(r1), r14
	mov	88(r1), r13
	mov	86(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 70(r1)
	mov	r9, 68(r1)
	mov	r10, 66(r1)
	mov	r11, 64(r1)
	mov	r15, 62(r1)
	mov	r14, 60(r1)
	mov	r13, 58(r1)
	mov	r12, 56(r1)
	mov	&.L__profc___cmpdi2+6, r13
	mov	&.L__profc___cmpdi2+4, r12
	mov	&.L__profc___cmpdi2+2, r15
	mov	&.L__profc___cmpdi2, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___cmpdi2
	mov	r15, &.L__profc___cmpdi2+2
	mov	r14, &.L__profc___cmpdi2+4
	mov	r13, &.L__profc___cmpdi2+6
	mov	64(r1), r13
	mov	66(r1), r14
	mov	68(r1), r15
	mov	70(r1), r11
	mov	r11, 54(r1)
	mov	r15, 52(r1)
	mov	r14, 50(r1)
	mov	r13, 48(r1)
	mov	56(r1), r13
	mov	58(r1), r14
	mov	60(r1), r15
	mov	62(r1), r11
	mov	r11, 46(r1)
	mov	r15, 44(r1)
	mov	r14, 42(r1)
	mov	r13, 40(r1)
	mov	52(r1), r13
	mov	r13, 28(r1)                     ; 2-byte Folded Spill
	mov	54(r1), r13
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r14
	mov	r14, 32(r1)                     ; 2-byte Folded Spill
	mov	46(r1), r14
	mov	r14, 34(r1)                     ; 2-byte Folded Spill
	clr	r15
	mov	r15, 36(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	jge	.LBB136_2
; %bb.1:
	mov	36(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
.LBB136_2:
	mov	30(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r14                     ; 2-byte Folded Reload
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	32(r1), r15                     ; 2-byte Folded Reload
	mov	38(r1), r11                     ; 2-byte Folded Reload
	mov	r11, 24(r1)                     ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	jeq	.LBB136_4
; %bb.3:
	mov	24(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
.LBB136_4:
	mov	26(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB136_6
	jmp	.LBB136_5
.LBB136_5:
	mov	&.L__profc___cmpdi2+14, r12
	mov	&.L__profc___cmpdi2+12, r11
	mov	&.L__profc___cmpdi2+10, r14
	mov	&.L__profc___cmpdi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmpdi2+8
	mov	r14, &.L__profc___cmpdi2+10
	mov	r13, &.L__profc___cmpdi2+12
	mov	r12, &.L__profc___cmpdi2+14
	clr	74(r1)
	clr	72(r1)
	jmp	.LBB136_21
.LBB136_6:
	mov	52(r1), r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	54(r1), r14
	mov	r14, 14(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r12
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	mov	46(r1), r13
	mov	r13, 18(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	cmp	r14, r13
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jge	.LBB136_8
; %bb.7:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
.LBB136_8:
	mov	14(r1), r13                     ; 2-byte Folded Reload
	mov	18(r1), r14                     ; 2-byte Folded Reload
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	12(r1), r15                     ; 2-byte Folded Reload
	mov	22(r1), r11                     ; 2-byte Folded Reload
	mov	r11, 8(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	jeq	.LBB136_10
; %bb.9:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
.LBB136_10:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB136_12
	jmp	.LBB136_11
.LBB136_11:
	mov	&.L__profc___cmpdi2+22, r12
	mov	&.L__profc___cmpdi2+20, r11
	mov	&.L__profc___cmpdi2+18, r14
	mov	&.L__profc___cmpdi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmpdi2+16
	mov	r14, &.L__profc___cmpdi2+18
	mov	r13, &.L__profc___cmpdi2+20
	mov	r12, &.L__profc___cmpdi2+22
	clr	74(r1)
	mov	#2, 72(r1)
	jmp	.LBB136_21
.LBB136_12:
	mov	48(r1), r12
	mov	50(r1), r13
	mov	40(r1), r15
	mov	42(r1), r14
	cmp	r14, r13
	mov	r2, r11
	and	#1, r11
	mov	r11, 4(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jeq	.LBB136_14
; %bb.13:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
.LBB136_14:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB136_16
	jmp	.LBB136_15
.LBB136_15:
	mov	&.L__profc___cmpdi2+30, r12
	mov	&.L__profc___cmpdi2+28, r11
	mov	&.L__profc___cmpdi2+26, r14
	mov	&.L__profc___cmpdi2+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmpdi2+24
	mov	r14, &.L__profc___cmpdi2+26
	mov	r13, &.L__profc___cmpdi2+28
	mov	r12, &.L__profc___cmpdi2+30
	clr	74(r1)
	clr	72(r1)
	jmp	.LBB136_21
.LBB136_16:
	mov	48(r1), r15
	mov	50(r1), r13
	mov	40(r1), r12
	mov	42(r1), r14
	cmp	r13, r14
	mov	r2, r11
	and	#1, r11
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB136_18
; %bb.17:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB136_18:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB136_20
	jmp	.LBB136_19
.LBB136_19:
	mov	&.L__profc___cmpdi2+38, r12
	mov	&.L__profc___cmpdi2+36, r11
	mov	&.L__profc___cmpdi2+34, r14
	mov	&.L__profc___cmpdi2+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___cmpdi2+32
	mov	r14, &.L__profc___cmpdi2+34
	mov	r13, &.L__profc___cmpdi2+36
	mov	r12, &.L__profc___cmpdi2+38
	clr	74(r1)
	mov	#2, 72(r1)
	jmp	.LBB136_21
.LBB136_20:
	clr	74(r1)
	mov	#1, 72(r1)
	jmp	.LBB136_21
.LBB136_21:
	mov	72(r1), r12
	mov	74(r1), r13
	add	#76, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
                                        ; -- End function
	.globl	__aeabi_lcmp                    ; -- Begin function __aeabi_lcmp
	.p2align	1
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           ; @__aeabi_lcmp
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#24, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	40(r1), r15
	mov	38(r1), r14
	mov	36(r1), r13
	mov	34(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 22(r1)
	mov	r9, 20(r1)
	mov	r10, 18(r1)
	mov	r11, 16(r1)
	mov	r15, 14(r1)
	mov	r14, 12(r1)
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	&.L__profc___aeabi_lcmp+6, r12
	mov	&.L__profc___aeabi_lcmp+4, r11
	mov	&.L__profc___aeabi_lcmp+2, r14
	mov	&.L__profc___aeabi_lcmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___aeabi_lcmp
	mov	r14, &.L__profc___aeabi_lcmp+2
	mov	r13, &.L__profc___aeabi_lcmp+4
	mov	r12, &.L__profc___aeabi_lcmp+6
	mov	22(r1), r15
	mov	20(r1), r14
	mov	18(r1), r13
	mov	16(r1), r12
	mov	8(r1), r10
	mov	10(r1), r9
	mov	12(r1), r8
	mov	14(r1), r7
	mov	r1, r11
	mov	r7, 6(r11)
	mov	r8, 4(r11)
	mov	r9, 2(r11)
	mov	r10, 0(r11)
	call	#__cmpdi2
	tst	r12
	mov	r2, r14
	rra	r14
	and	#1, r14
	sub	r14, r13
	add	#-1, r12
	add	#24, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
                                        ; -- End function
	.globl	__ctzsi2                        ; -- Begin function __ctzsi2
	.p2align	1
	.type	__ctzsi2,@function
__ctzsi2:                               ; @__ctzsi2
; %bb.0:
	push	r10
	sub	#18, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	&.L__profc___ctzsi2+6, r12
	mov	&.L__profc___ctzsi2+4, r11
	mov	&.L__profc___ctzsi2+2, r14
	mov	&.L__profc___ctzsi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ctzsi2
	mov	r14, &.L__profc___ctzsi2+2
	mov	r13, &.L__profc___ctzsi2+4
	mov	r12, &.L__profc___ctzsi2+6
	mov	14(r1), r12
	mov	16(r1), r13
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	10(r1), r12
	tst	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r14
	mov	10(r1), r12
	mov	12(r1), r13
	call	#__mspabi_srll
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r12
	mov	8(r1), r13
	mov	r13, 4(r1)
	mov	r12, 2(r1)
	mov.b	10(r1), r12
	tst.b	r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r14
	mov	10(r1), r12
	mov	12(r1), r13
	call	#__mspabi_srll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r11
	mov	8(r1), r13
	mov	2(r1), r15
	mov	4(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	mov	10(r1), r12
	bit	#15, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r14
	mov	10(r1), r12
	mov	12(r1), r13
	call	#__mspabi_srll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r11
	mov	8(r1), r13
	mov	2(r1), r15
	mov	4(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	mov	10(r1), r12
	bit	#3, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	r12, r12
	mov	r12, 6(r1)
	clr	8(r1)
	mov.b	6(r1), r14
	mov	10(r1), r12
	mov	12(r1), r13
	call	#__mspabi_srll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	10(r1), r12
	and	#3, r12
	mov	r12, 10(r1)
	clr	12(r1)
	mov	6(r1), r11
	mov	8(r1), r13
	mov	2(r1), r15
	mov	4(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 2(r1)
	mov	r12, 4(r1)
	mov	2(r1), r12
	mov.b	12(r1), r13
	mov	10(r1), r14
	clrc
	mov	r14, r15
	rrc	r15
	swpb	r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	bis	r13, r15
	mov	#2, r13
	sub	r15, r13
	and	#1, r14
	add	#-1, r14
	and	r14, r13
	add	r13, r12
	add	#18, r1
	pop	r10
	ret
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
                                        ; -- End function
	.globl	__lshrdi3                       ; -- Begin function __lshrdi3
	.p2align	1
	.type	__lshrdi3,@function
__lshrdi3:                              ; @__lshrdi3
; %bb.0:
	push	r10
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	44(r1), r11
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	&.L__profc___lshrdi3+6, r12
	mov	&.L__profc___lshrdi3+4, r11
	mov	&.L__profc___lshrdi3+2, r14
	mov	&.L__profc___lshrdi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___lshrdi3
	mov	r14, &.L__profc___lshrdi3+2
	mov	r13, &.L__profc___lshrdi3+4
	mov	r12, &.L__profc___lshrdi3+6
	mov	#32, 22(r1)
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov.b	44(r1), r12
	bit.b	#32, r12
	jeq	.LBB139_2
	jmp	.LBB139_1
.LBB139_1:
	mov	&.L__profc___lshrdi3+14, r12
	mov	&.L__profc___lshrdi3+12, r11
	mov	&.L__profc___lshrdi3+10, r14
	mov	&.L__profc___lshrdi3+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___lshrdi3+8
	mov	r14, &.L__profc___lshrdi3+10
	mov	r13, &.L__profc___lshrdi3+12
	mov	r12, &.L__profc___lshrdi3+14
	clr	12(r1)
	clr	10(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	44(r1), r14
	add.b	#-32, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	jmp	.LBB139_5
.LBB139_2:
	mov	44(r1), r12
	tst	r12
	jne	.LBB139_4
	jmp	.LBB139_3
.LBB139_3:
	mov	&.L__profc___lshrdi3+22, r12
	mov	&.L__profc___lshrdi3+20, r11
	mov	&.L__profc___lshrdi3+18, r14
	mov	&.L__profc___lshrdi3+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___lshrdi3+16
	mov	r14, &.L__profc___lshrdi3+18
	mov	r13, &.L__profc___lshrdi3+20
	mov	r12, &.L__profc___lshrdi3+22
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 38(r1)
	mov	r14, 36(r1)
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	jmp	.LBB139_6
.LBB139_4:
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	44(r1), r14
	call	#__mspabi_srll
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	44(r1), r14
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r14, r15
	mov.b	#32, r14
	sub.b	r15, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_slll
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	14(r1), r12
	mov	16(r1), r13
	call	#__mspabi_srll
	mov	r12, r15
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r14
	mov	4(r1), r13                      ; 2-byte Folded Reload
	bis	r15, r12
	bis	r14, r13
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	jmp	.LBB139_5
.LBB139_5:
	mov	6(r1), r12
	mov	8(r1), r13
	mov	10(r1), r14
	mov	12(r1), r15
	mov	r15, 38(r1)
	mov	r14, 36(r1)
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	jmp	.LBB139_6
.LBB139_6:
	mov	32(r1), r12
	mov	34(r1), r13
	mov	36(r1), r14
	mov	38(r1), r15
	add	#40, r1
	pop	r10
	ret
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
                                        ; -- End function
	.globl	__muldsi3                       ; -- Begin function __muldsi3
	.p2align	1
	.type	__muldsi3,@function
__muldsi3:                              ; @__muldsi3
; %bb.0:
	push	r10
	sub	#30, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	mov	r15, 24(r1)
	mov	r14, 22(r1)
	mov	&.L__profc___muldsi3+6, r12
	mov	&.L__profc___muldsi3+4, r11
	mov	&.L__profc___muldsi3+2, r14
	mov	&.L__profc___muldsi3, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 2(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___muldsi3
	mov	r14, &.L__profc___muldsi3+2
	mov	r13, &.L__profc___muldsi3+4
	mov	r12, &.L__profc___muldsi3+6
	mov	#16, 12(r1)
	clr	10(r1)
	mov	#-1, 8(r1)
	mov	26(r1), r12
	mov	22(r1), r14
	clr	r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r15, r13
	call	#__mspabi_mpyl
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	16(r1), r12
	mov	r12, 4(r1)
	clr	6(r1)
	clr	16(r1)
	mov	28(r1), r12
	mov	22(r1), r14
	mov	r15, r13
	call	#__mspabi_mpyl
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	r12, r10
	mov	4(r1), r11
	mov	6(r1), r12
	add	r13, r12
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r11
	bic	r11, r14
	add	r14, r12
	mov	r13, 4(r1)
	mov	r12, 6(r1)
	mov	4(r1), r14
	mov	14(r1), r13
	mov	16(r1), r12
	add	r14, r12
	mov	r13, 14(r1)
	mov	r12, 16(r1)
	mov	6(r1), r12
	mov	r12, 18(r1)
	clr	20(r1)
	mov	16(r1), r12
	mov	r12, 4(r1)
	clr	6(r1)
	clr	16(r1)
	mov	24(r1), r12
	mov	26(r1), r14
	mov	r15, r13
	call	#__mspabi_mpyl
	mov	0(r1), r15                      ; 2-byte Folded Reload
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	r12, r10
	mov	4(r1), r11
	mov	6(r1), r12
	add	r13, r12
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	r14, r11
	bic	r10, r11
	add	r11, r12
	mov	r13, 4(r1)
	mov	r12, 6(r1)
	mov	4(r1), r11
	mov	14(r1), r13
	mov	16(r1), r12
	add	r11, r12
	mov	r13, 14(r1)
	mov	r12, 16(r1)
	mov	6(r1), r10
	mov	20(r1), r12
	mov	18(r1), r11
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r11
	bic	r11, r14
	add	r14, r12
	mov	r13, 18(r1)
	mov	r12, 20(r1)
	mov	28(r1), r12
	mov	24(r1), r14
	mov	r15, r13
	call	#__mspabi_mpyl
	mov	2(r1), r14                      ; 2-byte Folded Reload
	mov	r12, r11
	mov	18(r1), r15
	mov	20(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 18(r1)
	mov	r12, 20(r1)
	mov	14(r1), r12
	mov	16(r1), r13
	mov	18(r1), r14
	mov	20(r1), r15
	add	#30, r1
	pop	r10
	ret
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
                                        ; -- End function
	.globl	__muldi3_compiler_rt            ; -- Begin function __muldi3_compiler_rt
	.p2align	1
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   ; @__muldi3_compiler_rt
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#46, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	62(r1), r15
	mov	60(r1), r14
	mov	58(r1), r13
	mov	56(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 44(r1)
	mov	r9, 42(r1)
	mov	r10, 40(r1)
	mov	r11, 38(r1)
	mov	r15, 36(r1)
	mov	r14, 34(r1)
	mov	r13, 32(r1)
	mov	r12, 30(r1)
	mov	&.L__profc___muldi3_compiler_rt+6, r12
	mov	&.L__profc___muldi3_compiler_rt+4, r11
	mov	&.L__profc___muldi3_compiler_rt+2, r14
	mov	&.L__profc___muldi3_compiler_rt, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___muldi3_compiler_rt
	mov	r14, &.L__profc___muldi3_compiler_rt+2
	mov	r13, &.L__profc___muldi3_compiler_rt+4
	mov	r12, &.L__profc___muldi3_compiler_rt+6
	mov	38(r1), r12
	mov	40(r1), r13
	mov	42(r1), r14
	mov	44(r1), r15
	mov	r15, 28(r1)
	mov	r14, 26(r1)
	mov	r13, 24(r1)
	mov	r12, 22(r1)
	mov	30(r1), r12
	mov	32(r1), r13
	mov	34(r1), r14
	mov	36(r1), r15
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov	24(r1), r13
	mov	22(r1), r12
	mov	16(r1), r15
	mov	14(r1), r14
	call	#__muldsi3
	mov	r15, 12(r1)
	mov	r14, 10(r1)
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	mov	26(r1), r12
	mov	28(r1), r13
	mov	14(r1), r14
	mov	16(r1), r15
	call	#__mspabi_mpyl
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	22(r1), r12
	mov	24(r1), r13
	mov	18(r1), r14
	mov	20(r1), r15
	call	#__mspabi_mpyl
	mov	0(r1), r14                      ; 2-byte Folded Reload
	mov	r12, r15
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r11
	mov	4(r1), r13                      ; 2-byte Folded Reload
	add	r11, r13
	mov	r12, r11
	add	r15, r11
	cmp	r12, r11
	mov	r2, r15
	mov	r14, r12
	bic	r15, r12
	add	r12, r13
	mov	10(r1), r15
	mov	12(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 10(r1)
	mov	r12, 12(r1)
	mov	6(r1), r12
	mov	8(r1), r13
	mov	10(r1), r14
	mov	12(r1), r15
	add	#46, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
                                        ; -- End function
	.globl	__negdi2                        ; -- Begin function __negdi2
	.p2align	1
	.type	__negdi2,@function
__negdi2:                               ; @__negdi2
; %bb.0:
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#24, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 22(r1)
	mov	r14, 20(r1)
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	mov	&.L__profc___negdi2+6, r13
	mov	&.L__profc___negdi2+4, r12
	mov	&.L__profc___negdi2+2, r15
	mov	&.L__profc___negdi2, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___negdi2
	mov	r15, &.L__profc___negdi2+2
	mov	r14, &.L__profc___negdi2+4
	mov	r13, &.L__profc___negdi2+6
	mov	22(r1), r13
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov	20(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	16(r1), r14
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	mov	18(r1), r13
	mov	r13, 8(r1)                      ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	r12, r15
	bic	r11, r15
	mov	r15, 10(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jeq	.LBB142_2
; %bb.1:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB142_2:
	mov	12(r1), r10                     ; 2-byte Folded Reload
	mov	8(r1), r11                      ; 2-byte Folded Reload
	mov	6(r1), r9                       ; 2-byte Folded Reload
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	0(r1), r8                       ; 2-byte Folded Reload
	mov	4(r1), r7                       ; 2-byte Folded Reload
	mov	14(r1), r6                      ; 2-byte Folded Reload
	clr	r13
	mov	r13, r15
	sub	r7, r15
	mov	r15, r14
	sub	r6, r14
	cmp	r6, r15
	mov	r2, r6
	mov	r8, r15
	bic	r6, r15
	tst	r7
	mov	r2, r7
	rra	r7
	bic	r7, r8
	add	r8, r12
	add	r15, r12
	mov	r13, r15
	sub	r12, r15
	mov	r13, r12
	sub	r9, r12
	add	r10, r11
	sub	r11, r13
	add	#24, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	ret
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
                                        ; -- End function
	.globl	__paritydi2                     ; -- Begin function __paritydi2
	.p2align	1
	.type	__paritydi2,@function
__paritydi2:                            ; @__paritydi2
; %bb.0:
	push	r10
	sub	#24, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 22(r1)
	mov	r14, 20(r1)
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	mov	&.L__profc___paritydi2+6, r12
	mov	&.L__profc___paritydi2+4, r11
	mov	&.L__profc___paritydi2+2, r14
	mov	&.L__profc___paritydi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___paritydi2
	mov	r14, &.L__profc___paritydi2+2
	mov	r13, &.L__profc___paritydi2+4
	mov	r12, &.L__profc___paritydi2+6
	mov	16(r1), r12
	mov	18(r1), r13
	mov	20(r1), r14
	mov	22(r1), r15
	mov	r15, 14(r1)
	mov	r14, 12(r1)
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	14(r1), r13
	mov	12(r1), r12
	mov	10(r1), r14
	mov	8(r1), r15
	xor	r15, r12
	xor	r14, r13
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	6(r1), r13
	mov	4(r1), r12
	xor	r13, r12
	mov	r12, 4(r1)
	mov	4(r1), r12
	mov	6(r1), r13
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	mov	r12, r15
	swpb	r15
	mov.b	r15, r15
	bis	r14, r15
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	xor	r15, r12
	xor	r14, r13
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	6(r1), r13
	mov	4(r1), r12
	clrc
	mov	r12, r15
	rrc	r15
	rra	r15
	rra	r15
	rra	r15
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r15
	clrc
	mov	r13, r14
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	xor	r15, r12
	xor	r14, r13
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov.b	4(r1), r12
	and.b	#15, r12
	mov	#27030, r13
	cmp.b	#0, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB143_2
.LBB143_1:                              ; =>This Inner Loop Header: Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
	mov	0(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB143_1
.LBB143_2:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	and	#1, r12
	add	#24, r1
	pop	r10
	ret
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
                                        ; -- End function
	.globl	__paritysi2                     ; -- Begin function __paritysi2
	.p2align	1
	.type	__paritysi2,@function
__paritysi2:                            ; @__paritysi2
; %bb.0:
	push	r10
	sub	#12, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	&.L__profc___paritysi2+6, r12
	mov	&.L__profc___paritysi2+4, r11
	mov	&.L__profc___paritysi2+2, r14
	mov	&.L__profc___paritysi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___paritysi2
	mov	r14, &.L__profc___paritysi2+2
	mov	r13, &.L__profc___paritysi2+4
	mov	r12, &.L__profc___paritysi2+6
	mov	8(r1), r12
	mov	10(r1), r13
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	6(r1), r13
	mov	4(r1), r12
	xor	r13, r12
	mov	r12, 4(r1)
	mov	4(r1), r12
	mov	6(r1), r13
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	mov	r12, r15
	swpb	r15
	mov.b	r15, r15
	bis	r14, r15
	mov	r13, r14
	swpb	r14
	mov.b	r14, r14
	xor	r15, r12
	xor	r14, r13
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	6(r1), r13
	mov	4(r1), r12
	clrc
	mov	r12, r15
	rrc	r15
	rra	r15
	rra	r15
	rra	r15
	mov	r13, r14
	mov.b	r14, r14
	swpb	r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	add	r14, r14
	bis	r14, r15
	clrc
	mov	r13, r14
	rrc	r14
	rra	r14
	rra	r14
	rra	r14
	xor	r15, r12
	xor	r14, r13
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov.b	4(r1), r12
	and.b	#15, r12
	mov	#27030, r13
	cmp.b	#0, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB144_2
.LBB144_1:                              ; =>This Inner Loop Header: Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
	mov	0(r1), r13                      ; 2-byte Folded Reload
	clrc
	rrc	r13
	sub.b	#1, r12
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jne	.LBB144_1
.LBB144_2:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	and	#1, r12
	add	#12, r1
	pop	r10
	ret
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
                                        ; -- End function
	.globl	__popcountdi2                   ; -- Begin function __popcountdi2
	.p2align	1
	.type	__popcountdi2,@function
__popcountdi2:                          ; @__popcountdi2
; %bb.0:
	push	r5
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#74, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 72(r1)
	mov	r14, 70(r1)
	mov	r13, 68(r1)
	mov	r12, 66(r1)
	mov	&.L__profc___popcountdi2+6, r13
	mov	&.L__profc___popcountdi2+4, r12
	mov	&.L__profc___popcountdi2+2, r15
	mov	&.L__profc___popcountdi2, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___popcountdi2
	mov	r15, &.L__profc___popcountdi2+2
	mov	r14, &.L__profc___popcountdi2+4
	mov	r13, &.L__profc___popcountdi2+6
	mov	66(r1), r13
	mov	68(r1), r14
	mov	70(r1), r15
	mov	72(r1), r11
	mov	r11, 64(r1)
	mov	r15, 62(r1)
	mov	r14, 60(r1)
	mov	r13, 58(r1)
	mov	58(r1), r15
	mov	r15, 34(r1)                     ; 2-byte Folded Spill
	mov	60(r1), r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	mov	62(r1), r9
	mov	r9, 38(r1)                      ; 2-byte Folded Spill
	mov	64(r1), r10
	clrc
	mov	r10, r7
	rrc	r7
	clrc
	mov	r9, r8
	rrc	r8
	clrc
	mov	r13, r14
	rrc	r14
	clrc
	mov	r15, r11
	rrc	r11
	and	#21845, r11
	mov	r11, 40(r1)                     ; 2-byte Folded Spill
	and	#21845, r14
	mov	r14, 42(r1)                     ; 2-byte Folded Spill
	and	#21845, r8
	mov	r8, 44(r1)                      ; 2-byte Folded Spill
	and	#21845, r7
	sub	r7, r10
	cmp	r8, r9
	mov	r2, r8
	mov	r12, r9
	bic	r8, r9
	sub	r9, r10
	mov	r10, 46(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r9
	mov	r12, r10
	bic	r9, r10
	mov	r10, 48(r1)                     ; 2-byte Folded Spill
	cmp	r11, r15
	mov	r2, r15
	bic	r15, r12
	mov	r12, 50(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 52(r1)                     ; 2-byte Folded Spill
	jeq	.LBB145_2
; %bb.1:
	mov	48(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 52(r1)                     ; 2-byte Folded Spill
.LBB145_2:
	mov	32(r1), r15                     ; 2-byte Folded Reload
	mov	40(r1), r10                     ; 2-byte Folded Reload
	mov	34(r1), r11                     ; 2-byte Folded Reload
	mov	50(r1), r9                      ; 2-byte Folded Reload
	mov	42(r1), r8                      ; 2-byte Folded Reload
	mov	36(r1), r14                     ; 2-byte Folded Reload
	mov	46(r1), r12                     ; 2-byte Folded Reload
	mov	44(r1), r6                      ; 2-byte Folded Reload
	mov	38(r1), r13                     ; 2-byte Folded Reload
	mov	52(r1), r7                      ; 2-byte Folded Reload
	sub	r6, r13
	cmp	r7, r13
	mov	r2, r5
	mov	r15, r6
	bic	r5, r6
	sub	r6, r12
	sub	r7, r13
	sub	r8, r14
	sub	r9, r14
	sub	r10, r11
	mov	r11, 58(r1)
	mov	r14, 60(r1)
	mov	r13, 62(r1)
	mov	r12, 64(r1)
	mov	64(r1), r9
	mov	62(r1), r13
	mov	58(r1), r10
	mov	60(r1), r12
	clrc
	mov	r12, r14
	rrc	r14
	rra	r14
	clrc
	mov	r10, r11
	rrc	r11
	rra	r11
	clrc
	mov	r13, r8
	rrc	r8
	rra	r8
	clrc
	mov	r9, r7
	rrc	r7
	rra	r7
	and	#13107, r7
	mov	r7, 16(r1)                      ; 2-byte Folded Spill
	and	#13107, r8
	mov	r8, 18(r1)                      ; 2-byte Folded Spill
	and	#13107, r11
	and	#13107, r14
	and	#13107, r9
	mov	r9, 20(r1)                      ; 2-byte Folded Spill
	and	#13107, r13
	mov	r13, 22(r1)                     ; 2-byte Folded Spill
	and	#13107, r10
	and	#13107, r12
	mov	r14, r13
	add	r12, r13
	mov	r11, r12
	add	r10, r12
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	cmp	r11, r12
	mov	r2, r11
	mov	r15, r12
	bic	r11, r12
	add	r12, r13
	mov	r13, 26(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	mov	r15, 28(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	jeq	.LBB145_4
; %bb.3:
	mov	28(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
.LBB145_4:
	mov	32(r1), r15                     ; 2-byte Folded Reload
	mov	26(r1), r14                     ; 2-byte Folded Reload
	mov	24(r1), r11                     ; 2-byte Folded Reload
	mov	18(r1), r8                      ; 2-byte Folded Reload
	mov	20(r1), r7                      ; 2-byte Folded Reload
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	22(r1), r13                     ; 2-byte Folded Reload
	mov	30(r1), r10                     ; 2-byte Folded Reload
	mov	r8, r9
	add	r13, r9
	mov	r9, r13
	add	r10, r13
	cmp	r9, r13
	mov	r2, r6
	mov	r15, r10
	bic	r6, r10
	add	r7, r12
	cmp	r8, r9
	mov	r2, r8
	mov	r15, r9
	bic	r8, r9
	add	r9, r12
	add	r10, r12
	mov	r11, 58(r1)
	mov	r14, 60(r1)
	mov	r13, 62(r1)
	mov	r12, 64(r1)
	mov	60(r1), r14
	mov	58(r1), r11
	mov	64(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	62(r1), r9
	mov	r9, 2(r1)                       ; 2-byte Folded Spill
	clrc
	mov	r9, r12
	rrc	r12
	rra	r12
	rra	r12
	rra	r12
	mov	r13, r10
	mov.b	r10, r10
	swpb	r10
	add	r10, r10
	add	r10, r10
	add	r10, r10
	add	r10, r10
	bis	r10, r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	clrc
	mov	r11, r10
	rrc	r10
	rra	r10
	rra	r10
	rra	r10
	mov	r14, r12
	mov.b	r12, r12
	swpb	r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	add	r12, r12
	bis	r12, r10
	clrc
	mov	r14, r12
	rrc	r12
	rra	r12
	rra	r12
	rra	r12
	mov.b	r9, r9
	swpb	r9
	add	r9, r9
	add	r9, r9
	add	r9, r9
	add	r9, r9
	bis	r9, r12
	clrc
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	r14, r13
	add	r12, r13
	mov	r11, r12
	add	r10, r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	cmp	r11, r12
	mov	r2, r11
	mov	r15, r12
	bic	r11, r12
	add	r12, r13
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	mov	r15, 12(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jeq	.LBB145_6
; %bb.5:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB145_6:
	mov	32(r1), r14                     ; 2-byte Folded Reload
	mov	8(r1), r11                      ; 2-byte Folded Reload
	mov	10(r1), r15                     ; 2-byte Folded Reload
	mov	2(r1), r8                       ; 2-byte Folded Reload
	mov	6(r1), r7                       ; 2-byte Folded Reload
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	14(r1), r10                     ; 2-byte Folded Reload
	mov	r8, r9
	add	r13, r9
	mov	r9, r13
	add	r10, r13
	cmp	r9, r13
	mov	r2, r6
	mov	r14, r10
	bic	r6, r10
	add	r7, r12
	cmp	r8, r9
	mov	r2, r8
	mov	r14, r9
	bic	r8, r9
	add	r9, r12
	add	r10, r12
	and	#3855, r12
	and	#3855, r13
	and	#3855, r15
	and	#3855, r11
	mov	r11, 58(r1)
	mov	r15, 60(r1)
	mov	r13, 62(r1)
	mov	r12, 64(r1)
	mov	62(r1), r11
	mov	58(r1), r15
	mov	64(r1), r13
	mov	60(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r11
	mov	r14, r15
	bic	r11, r15
	add	r15, r12
	mov	r13, 54(r1)
	mov	r12, 56(r1)
	mov	56(r1), r12
	mov	54(r1), r15
	mov	r15, r13
	add	r12, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 54(r1)
	mov	r12, 56(r1)
	mov	54(r1), r12
	mov	r12, r13
	swpb	r13
	add	r13, r12
	and	#127, r12
	add	#74, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	pop	r5
	ret
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
                                        ; -- End function
	.globl	__popcountsi2                   ; -- Begin function __popcountsi2
	.p2align	1
	.type	__popcountsi2,@function
__popcountsi2:                          ; @__popcountsi2
; %bb.0:
	push	r9
	push	r10
	sub	#8, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	&.L__profc___popcountsi2+6, r12
	mov	&.L__profc___popcountsi2+4, r14
	mov	&.L__profc___popcountsi2+2, r15
	mov	&.L__profc___popcountsi2, r11
	inc	r11
	tst	r11
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r15
	mov	r11, r13
	bis	r15, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r14, r13
	add	r10, r13
	cmp	r14, r13
	mov	r2, r9
	mov	#1, r14
	mov	r14, r10
	bic	r9, r10
	add	r10, r12
	mov	r11, &.L__profc___popcountsi2
	mov	r15, &.L__profc___popcountsi2+2
	mov	r13, &.L__profc___popcountsi2+4
	mov	r12, &.L__profc___popcountsi2+6
	mov	4(r1), r12
	mov	6(r1), r13
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	0(r1), r13
	mov	2(r1), r12
	clrc
	mov	r12, r11
	rrc	r11
	clrc
	mov	r13, r15
	rrc	r15
	and	#21845, r15
	and	#21845, r11
	sub	r11, r12
	cmp	r15, r13
	mov	r2, r10
	mov	r14, r11
	bic	r10, r11
	sub	r11, r12
	sub	r15, r13
	mov	r13, 0(r1)
	mov	r12, 2(r1)
	mov	0(r1), r11
	mov	2(r1), r13
	clrc
	mov	r13, r12
	rrc	r12
	rra	r12
	clrc
	mov	r11, r15
	rrc	r15
	rra	r15
	and	#13107, r15
	and	#13107, r12
	and	#13107, r11
	and	#13107, r13
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r11
	mov	r14, r15
	bic	r11, r15
	add	r15, r12
	mov	r13, 0(r1)
	mov	r12, 2(r1)
	mov	2(r1), r12
	mov	0(r1), r15
	clrc
	mov	r15, r11
	rrc	r11
	rra	r11
	rra	r11
	rra	r11
	mov	r12, r13
	mov.b	r13, r13
	swpb	r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	add	r13, r13
	bis	r13, r11
	clrc
	mov	r12, r13
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r11
	mov	r14, r15
	bic	r11, r15
	add	r15, r12
	and	#3855, r12
	and	#3855, r13
	mov	r13, 0(r1)
	mov	r12, 2(r1)
	mov	2(r1), r12
	mov	0(r1), r15
	mov	r15, r13
	add	r12, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 0(r1)
	mov	r12, 2(r1)
	mov	0(r1), r12
	mov	r12, r13
	swpb	r13
	add	r13, r12
	and	#63, r12
	add	#8, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
                                        ; -- End function
	.globl	__powidf2                       ; -- Begin function __powidf2
	.p2align	1
	.type	__powidf2,@function
__powidf2:                              ; @__powidf2
; %bb.0:
	push	r8
	push	r9
	push	r10
	sub	#30, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	38(r1), r11
	mov	r15, 28(r1)
	mov	r14, 26(r1)
	mov	r13, 24(r1)
	mov	r12, 22(r1)
	mov	&.L__profc___powidf2+6, r13
	mov	&.L__profc___powidf2+4, r12
	mov	&.L__profc___powidf2+2, r15
	mov	&.L__profc___powidf2, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___powidf2
	mov	r15, &.L__profc___powidf2+2
	mov	r14, &.L__profc___powidf2+4
	mov	r13, &.L__profc___powidf2+6
	mov	38(r1), r13
	clr	r14
	mov	r14, 8(r1)                      ; 2-byte Folded Spill
	tst	r13
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	jl	.LBB147_2
; %bb.1:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
.LBB147_2:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 20(r1)
	mov	#16368, 18(r1)
	clr	16(r1)
	clr	14(r1)
	clr	12(r1)
	jmp	.LBB147_3
.LBB147_3:                              ; =>This Inner Loop Header: Depth=1
	mov	&.L__profc___powidf2+14, r12
	mov	&.L__profc___powidf2+12, r11
	mov	&.L__profc___powidf2+10, r14
	mov	&.L__profc___powidf2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powidf2+8
	mov	r14, &.L__profc___powidf2+10
	mov	r13, &.L__profc___powidf2+12
	mov	r12, &.L__profc___powidf2+14
	mov.b	38(r1), r12
	bit.b	#1, r12
	jeq	.LBB147_5
	jmp	.LBB147_4
.LBB147_4:                              ;   in Loop: Header=BB147_3 Depth=1
	mov	&.L__profc___powidf2+22, r12
	mov	&.L__profc___powidf2+20, r11
	mov	&.L__profc___powidf2+18, r14
	mov	&.L__profc___powidf2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powidf2+16
	mov	r14, &.L__profc___powidf2+18
	mov	r13, &.L__profc___powidf2+20
	mov	r12, &.L__profc___powidf2+22
	mov	22(r1), r12
	mov	24(r1), r13
	mov	26(r1), r14
	mov	28(r1), r15
	mov	12(r1), r8
	mov	14(r1), r9
	mov	16(r1), r10
	mov	18(r1), r11
	call	#__mspabi_mpyd
	mov	r15, 18(r1)
	mov	r14, 16(r1)
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	jmp	.LBB147_5
.LBB147_5:                              ;   in Loop: Header=BB147_3 Depth=1
	mov	38(r1), r12
	mov	r12, r13
	swpb	r13
	mov.b	r13, r13
	clrc
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	add	r13, r12
	rra	r12
	mov	r12, 38(r1)
	mov	38(r1), r12
	tst	r12
	jne	.LBB147_7
	jmp	.LBB147_6
.LBB147_6:
	mov	&.L__profc___powidf2+30, r12
	mov	&.L__profc___powidf2+28, r11
	mov	&.L__profc___powidf2+26, r14
	mov	&.L__profc___powidf2+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powidf2+24
	mov	r14, &.L__profc___powidf2+26
	mov	r13, &.L__profc___powidf2+28
	mov	r12, &.L__profc___powidf2+30
	jmp	.LBB147_8
.LBB147_7:                              ;   in Loop: Header=BB147_3 Depth=1
	mov	22(r1), r12
	mov	24(r1), r13
	mov	26(r1), r14
	mov	28(r1), r15
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_mpyd
	mov	r15, 28(r1)
	mov	r14, 26(r1)
	mov	r13, 24(r1)
	mov	r12, 22(r1)
	jmp	.LBB147_3
.LBB147_8:
	mov	20(r1), r12
	tst	r12
	jeq	.LBB147_10
	jmp	.LBB147_9
.LBB147_9:
	mov	&.L__profc___powidf2+38, r12
	mov	&.L__profc___powidf2+36, r11
	mov	&.L__profc___powidf2+34, r14
	mov	&.L__profc___powidf2+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powidf2+32
	mov	r14, &.L__profc___powidf2+34
	mov	r13, &.L__profc___powidf2+36
	mov	r12, &.L__profc___powidf2+38
	mov	12(r1), r12
	mov	14(r1), r13
	mov	16(r1), r14
	mov	18(r1), r15
	clr	r10
	mov	#16368, r11
	mov	r10, r8
	mov	r10, r9
	call	#__mspabi_divd
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	mov	r15, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB147_11
.LBB147_10:
	mov	18(r1), r12
	mov	16(r1), r13
	mov	14(r1), r14
	mov	12(r1), r15
	mov	r15, 0(r1)                      ; 2-byte Folded Spill
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB147_11
.LBB147_11:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	mov	4(r1), r14                      ; 2-byte Folded Reload
	mov	6(r1), r15                      ; 2-byte Folded Reload
	add	#30, r1
	pop	r10
	pop	r9
	pop	r8
	ret
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
                                        ; -- End function
	.globl	__powisf2                       ; -- Begin function __powisf2
	.p2align	1
	.type	__powisf2,@function
__powisf2:                              ; @__powisf2
; %bb.0:
	push	r9
	push	r10
	sub	#20, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	mov	r14, 14(r1)
	mov	&.L__profc___powisf2+6, r13
	mov	&.L__profc___powisf2+4, r12
	mov	&.L__profc___powisf2+2, r15
	mov	&.L__profc___powisf2, r11
	inc	r11
	tst	r11
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r15
	mov	r11, r14
	bis	r15, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r12, r14
	add	r10, r14
	cmp	r12, r14
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	add	r10, r13
	mov	r11, &.L__profc___powisf2
	mov	r15, &.L__profc___powisf2+2
	mov	r14, &.L__profc___powisf2+4
	mov	r13, &.L__profc___powisf2+6
	mov	14(r1), r13
	clr	r14
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	tst	r13
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jl	.LBB148_2
; %bb.1:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
.LBB148_2:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 12(r1)
	mov	#16256, 10(r1)
	clr	8(r1)
	jmp	.LBB148_3
.LBB148_3:                              ; =>This Inner Loop Header: Depth=1
	mov	&.L__profc___powisf2+14, r12
	mov	&.L__profc___powisf2+12, r11
	mov	&.L__profc___powisf2+10, r14
	mov	&.L__profc___powisf2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powisf2+8
	mov	r14, &.L__profc___powisf2+10
	mov	r13, &.L__profc___powisf2+12
	mov	r12, &.L__profc___powisf2+14
	mov.b	14(r1), r12
	bit.b	#1, r12
	jeq	.LBB148_5
	jmp	.LBB148_4
.LBB148_4:                              ;   in Loop: Header=BB148_3 Depth=1
	mov	&.L__profc___powisf2+22, r12
	mov	&.L__profc___powisf2+20, r11
	mov	&.L__profc___powisf2+18, r14
	mov	&.L__profc___powisf2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powisf2+16
	mov	r14, &.L__profc___powisf2+18
	mov	r13, &.L__profc___powisf2+20
	mov	r12, &.L__profc___powisf2+22
	mov	16(r1), r14
	mov	18(r1), r15
	mov	8(r1), r12
	mov	10(r1), r13
	call	#__mspabi_mpyf
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	jmp	.LBB148_5
.LBB148_5:                              ;   in Loop: Header=BB148_3 Depth=1
	mov	14(r1), r12
	mov	r12, r13
	swpb	r13
	mov.b	r13, r13
	clrc
	rrc	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	rra	r13
	add	r13, r12
	rra	r12
	mov	r12, 14(r1)
	mov	14(r1), r12
	tst	r12
	jne	.LBB148_7
	jmp	.LBB148_6
.LBB148_6:
	mov	&.L__profc___powisf2+30, r12
	mov	&.L__profc___powisf2+28, r11
	mov	&.L__profc___powisf2+26, r14
	mov	&.L__profc___powisf2+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powisf2+24
	mov	r14, &.L__profc___powisf2+26
	mov	r13, &.L__profc___powisf2+28
	mov	r12, &.L__profc___powisf2+30
	jmp	.LBB148_8
.LBB148_7:                              ;   in Loop: Header=BB148_3 Depth=1
	mov	16(r1), r14
	mov	18(r1), r15
	mov	r14, r12
	mov	r15, r13
	call	#__mspabi_mpyf
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	jmp	.LBB148_3
.LBB148_8:
	mov	12(r1), r12
	tst	r12
	jeq	.LBB148_10
	jmp	.LBB148_9
.LBB148_9:
	mov	&.L__profc___powisf2+38, r12
	mov	&.L__profc___powisf2+36, r11
	mov	&.L__profc___powisf2+34, r14
	mov	&.L__profc___powisf2+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___powisf2+32
	mov	r14, &.L__profc___powisf2+34
	mov	r13, &.L__profc___powisf2+36
	mov	r12, &.L__profc___powisf2+38
	mov	8(r1), r14
	mov	10(r1), r15
	clr	r12
	mov	#16256, r13
	call	#__mspabi_divf
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB148_11
.LBB148_10:
	mov	10(r1), r12
	mov	8(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB148_11
.LBB148_11:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	#20, r1
	pop	r10
	pop	r9
	ret
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
                                        ; -- End function
	.globl	__ucmpdi2                       ; -- Begin function __ucmpdi2
	.p2align	1
	.type	__ucmpdi2,@function
__ucmpdi2:                              ; @__ucmpdi2
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#52, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	68(r1), r15
	mov	66(r1), r14
	mov	64(r1), r13
	mov	62(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 46(r1)
	mov	r9, 44(r1)
	mov	r10, 42(r1)
	mov	r11, 40(r1)
	mov	r15, 38(r1)
	mov	r14, 36(r1)
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	mov	&.L__profc___ucmpdi2+6, r12
	mov	&.L__profc___ucmpdi2+4, r11
	mov	&.L__profc___ucmpdi2+2, r14
	mov	&.L__profc___ucmpdi2, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ucmpdi2
	mov	r14, &.L__profc___ucmpdi2+2
	mov	r13, &.L__profc___ucmpdi2+4
	mov	r12, &.L__profc___ucmpdi2+6
	mov	40(r1), r12
	mov	42(r1), r13
	mov	44(r1), r14
	mov	46(r1), r15
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	32(r1), r12
	mov	34(r1), r13
	mov	36(r1), r14
	mov	38(r1), r15
	mov	r15, 22(r1)
	mov	r14, 20(r1)
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	mov	28(r1), r12
	mov	30(r1), r13
	mov	20(r1), r15
	mov	22(r1), r14
	cmp	r14, r13
	mov	r2, r11
	and	#1, r11
	mov	r11, 12(r1)                     ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
	jeq	.LBB149_2
; %bb.1:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB149_2:
	mov	14(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB149_4
	jmp	.LBB149_3
.LBB149_3:
	mov	&.L__profc___ucmpdi2+14, r12
	mov	&.L__profc___ucmpdi2+12, r11
	mov	&.L__profc___ucmpdi2+10, r14
	mov	&.L__profc___ucmpdi2+8, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ucmpdi2+8
	mov	r14, &.L__profc___ucmpdi2+10
	mov	r13, &.L__profc___ucmpdi2+12
	mov	r12, &.L__profc___ucmpdi2+14
	clr	50(r1)
	clr	48(r1)
	jmp	.LBB149_17
.LBB149_4:
	mov	28(r1), r15
	mov	30(r1), r13
	mov	20(r1), r12
	mov	22(r1), r14
	cmp	r13, r14
	mov	r2, r11
	and	#1, r11
	mov	r11, 8(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	jeq	.LBB149_6
; %bb.5:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
.LBB149_6:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB149_8
	jmp	.LBB149_7
.LBB149_7:
	mov	&.L__profc___ucmpdi2+22, r12
	mov	&.L__profc___ucmpdi2+20, r11
	mov	&.L__profc___ucmpdi2+18, r14
	mov	&.L__profc___ucmpdi2+16, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ucmpdi2+16
	mov	r14, &.L__profc___ucmpdi2+18
	mov	r13, &.L__profc___ucmpdi2+20
	mov	r12, &.L__profc___ucmpdi2+22
	clr	50(r1)
	mov	#2, 48(r1)
	jmp	.LBB149_17
.LBB149_8:
	mov	24(r1), r12
	mov	26(r1), r13
	mov	16(r1), r15
	mov	18(r1), r14
	cmp	r14, r13
	mov	r2, r11
	and	#1, r11
	mov	r11, 4(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jeq	.LBB149_10
; %bb.9:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
.LBB149_10:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB149_12
	jmp	.LBB149_11
.LBB149_11:
	mov	&.L__profc___ucmpdi2+30, r12
	mov	&.L__profc___ucmpdi2+28, r11
	mov	&.L__profc___ucmpdi2+26, r14
	mov	&.L__profc___ucmpdi2+24, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ucmpdi2+24
	mov	r14, &.L__profc___ucmpdi2+26
	mov	r13, &.L__profc___ucmpdi2+28
	mov	r12, &.L__profc___ucmpdi2+30
	clr	50(r1)
	clr	48(r1)
	jmp	.LBB149_17
.LBB149_12:
	mov	24(r1), r15
	mov	26(r1), r13
	mov	16(r1), r12
	mov	18(r1), r14
	cmp	r13, r14
	mov	r2, r11
	and	#1, r11
	mov	r11, 0(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r12
	and	#1, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB149_14
; %bb.13:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB149_14:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB149_16
	jmp	.LBB149_15
.LBB149_15:
	mov	&.L__profc___ucmpdi2+38, r12
	mov	&.L__profc___ucmpdi2+36, r11
	mov	&.L__profc___ucmpdi2+34, r14
	mov	&.L__profc___ucmpdi2+32, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___ucmpdi2+32
	mov	r14, &.L__profc___ucmpdi2+34
	mov	r13, &.L__profc___ucmpdi2+36
	mov	r12, &.L__profc___ucmpdi2+38
	clr	50(r1)
	mov	#2, 48(r1)
	jmp	.LBB149_17
.LBB149_16:
	clr	50(r1)
	mov	#1, 48(r1)
	jmp	.LBB149_17
.LBB149_17:
	mov	48(r1), r12
	mov	50(r1), r13
	add	#52, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
                                        ; -- End function
	.globl	__aeabi_ulcmp                   ; -- Begin function __aeabi_ulcmp
	.p2align	1
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          ; @__aeabi_ulcmp
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	sub	#24, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	40(r1), r15
	mov	38(r1), r14
	mov	36(r1), r13
	mov	34(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 22(r1)
	mov	r9, 20(r1)
	mov	r10, 18(r1)
	mov	r11, 16(r1)
	mov	r15, 14(r1)
	mov	r14, 12(r1)
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	&.L__profc___aeabi_ulcmp+6, r12
	mov	&.L__profc___aeabi_ulcmp+4, r11
	mov	&.L__profc___aeabi_ulcmp+2, r14
	mov	&.L__profc___aeabi_ulcmp, r15
	inc	r15
	tst	r15
	mov	r2, r13
	rra	r13
	and	#1, r13
	add	r13, r14
	mov	r15, r13
	bis	r14, r13
	tst	r13
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r13
	add	r10, r13
	cmp	r11, r13
	mov	r2, r10
	mov	#1, r11
	bic	r10, r11
	add	r11, r12
	mov	r15, &.L__profc___aeabi_ulcmp
	mov	r14, &.L__profc___aeabi_ulcmp+2
	mov	r13, &.L__profc___aeabi_ulcmp+4
	mov	r12, &.L__profc___aeabi_ulcmp+6
	mov	22(r1), r15
	mov	20(r1), r14
	mov	18(r1), r13
	mov	16(r1), r12
	mov	8(r1), r10
	mov	10(r1), r9
	mov	12(r1), r8
	mov	14(r1), r7
	mov	r1, r11
	mov	r7, 6(r11)
	mov	r8, 4(r11)
	mov	r9, 2(r11)
	mov	r10, 0(r11)
	call	#__ucmpdi2
	tst	r12
	mov	r2, r14
	rra	r14
	and	#1, r14
	sub	r14, r13
	add	#-1, r12
	add	#24, r1
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
                                        ; -- End function
	.type	l64a.s,@object                  ; @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1
	.type	digits,@object                  ; @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    ; @seed
	.local	seed
	.comm	seed,8,2
	.hidden	__llvm_profile_runtime
	.type	.L__profc_memmove,@object       ; @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.zero	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       ; @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.quad	-306081897096246147             ; 0xfbc09422e3668c7d
	.quad	-4061701397412038936            ; 0xc7a1f0194f8c36e8
	.short	.L__profc_memmove-.L__profd_memmove
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memmove, 38

	.type	.L__profc_memccpy,@object       ; @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.zero	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       ; @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.quad	-1590863763861247346            ; 0xe9ec1dd5e5026a8e
	.quad	1189690007454808                ; 0x43a044a498458
	.short	.L__profc_memccpy-.L__profd_memccpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memccpy, 38

	.type	.L__profc_memchr,@object        ; @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.zero	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        ; @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.quad	5708666158622859656             ; 0x4f3941a01e026188
	.quad	4538308109                      ; 0x10e81160d
	.short	.L__profc_memchr-.L__profd_memchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memchr, 38

	.type	.L__profc_memcmp,@object        ; @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.zero	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        ; @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.quad	-4679550853048924350            ; 0xbf0ee54adfa48742
	.quad	4538045965                      ; 0x10e7d160d
	.short	.L__profc_memcmp-.L__profd_memcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memcmp, 38

	.type	.L__profc_memcpy,@object        ; @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.zero	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        ; @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.quad	3893303423671325810             ; 0x3607cad612bdd472
	.quad	17496                           ; 0x4458
	.short	.L__profc_memcpy-.L__profd_memcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memcpy, 38

	.type	.L__profc_memrchr,@object       ; @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.zero	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       ; @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.quad	-548334422562728352             ; 0xf863ecbf75079660
	.quad	9516882138200                   ; 0x8a7d2611458
	.short	.L__profc_memrchr-.L__profd_memrchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memrchr, 38

	.type	.L__profc_memset,@object        ; @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.zero	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        ; @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.quad	-2741574704065975695            ; 0xd9f3f85506f36a71
	.quad	17496                           ; 0x4458
	.short	.L__profc_memset-.L__profd_memset
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memset, 38

	.type	.L__profc_stpcpy,@object        ; @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.zero	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        ; @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.quad	4454833295779690053             ; 0x3dd2bf47a087f645
	.quad	17496                           ; 0x4458
	.short	.L__profc_stpcpy-.L__profd_stpcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_stpcpy, 38

	.type	.L__profc_strchrnul,@object     ; @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.zero	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     ; @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.quad	5039208642683934005             ; 0x45eedd8fc8411535
	.quad	70911064                        ; 0x43a0458
	.short	.L__profc_strchrnul-.L__profd_strchrnul
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strchrnul, 38

	.type	.L__profc_strchr,@object        ; @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.zero	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        ; @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.quad	-5671522429266412413            ; 0xb14ab4664bea3c83
	.quad	13914928649304                  ; 0xca7d2611458
	.short	.L__profc_strchr-.L__profd_strchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strchr, 38

	.type	.L__profc_strcmp,@object        ; @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.zero	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        ; @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.quad	1013198891307352868             ; 0xe0f9b060331c324
	.quad	70906968                        ; 0x439f458
	.short	.L__profc_strcmp-.L__profd_strcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strcmp, 38

	.type	.L__profc_strlen,@object        ; @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.zero	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        ; @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.quad	2965136410638013299             ; 0x292647db02a7d373
	.quad	17496                           ; 0x4458
	.short	.L__profc_strlen-.L__profd_strlen
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strlen, 38

	.type	.L__profc_strncmp,@object       ; @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.zero	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       ; @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.quad	-6058495834680104774            ; 0xabebe6233cb568ba
	.quad	7207353986825238351             ; 0x6405aa43cb36b74f
	.short	.L__profc_strncmp-.L__profd_strncmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strncmp, 38

	.type	.L__profc_swab,@object          ; @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.zero	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          ; @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.quad	-1619950660557759641            ; 0xe984c77503cb9b67
	.quad	18193                           ; 0x4711
	.short	.L__profc_swab-.L__profd_swab
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_swab, 38

	.type	.L__profc_isalpha,@object       ; @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.zero	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       ; @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.quad	-1429966999967671460            ; 0xec27bc96fe655b5c
	.quad	1563                            ; 0x61b
	.short	.L__profc_isalpha-.L__profd_isalpha
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isalpha, 38

	.type	.L__profc_isascii,@object       ; @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.zero	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       ; @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.quad	-4792250000779744687            ; 0xbd7e8203c4a86a51
	.quad	1562                            ; 0x61a
	.short	.L__profc_isascii-.L__profd_isascii
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isascii, 38

	.type	.L__profc_isblank,@object       ; @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.zero	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       ; @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.quad	2465200613623135234             ; 0x223626e59b14fc02
	.quad	6354911                         ; 0x60f7df
	.short	.L__profc_isblank-.L__profd_isblank
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isblank, 38

	.type	.L__profc_iscntrl,@object       ; @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.zero	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       ; @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.quad	8897732069425577183             ; 0x7b7b182cc8b67cdf
	.quad	6354655                         ; 0x60f6df
	.short	.L__profc_iscntrl-.L__profd_iscntrl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_iscntrl, 38

	.type	.L__profc_isdigit,@object       ; @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.zero	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       ; @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.quad	3483985654529092453             ; 0x30599a7e6cc36b65
	.quad	1563                            ; 0x61b
	.short	.L__profc_isdigit-.L__profd_isdigit
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isdigit, 38

	.type	.L__profc_isgraph,@object       ; @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.zero	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       ; @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.quad	-127227288456547236             ; 0xfe3bff7489cfb45c
	.quad	1563                            ; 0x61b
	.short	.L__profc_isgraph-.L__profd_isgraph
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isgraph, 38

	.type	.L__profc_islower,@object       ; @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.zero	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       ; @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.quad	7501983819047161697             ; 0x681c66894508cf61
	.quad	1563                            ; 0x61b
	.short	.L__profc_islower-.L__profd_islower
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_islower, 38

	.type	.L__profc_isprint,@object       ; @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.zero	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       ; @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.quad	-7275761640889424986            ; 0x9b074d56145f63a6
	.quad	1563                            ; 0x61b
	.short	.L__profc_isprint-.L__profd_isprint
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isprint, 38

	.type	.L__profc_isspace,@object       ; @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.zero	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       ; @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.quad	9032360604355461395             ; 0x7d59641d39d70113
	.quad	6354907                         ; 0x60f7db
	.short	.L__profc_isspace-.L__profd_isspace
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isspace, 38

	.type	.L__profc_isupper,@object       ; @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.zero	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       ; @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.quad	4174714232255583053             ; 0x39ef9079c45c934d
	.quad	1563                            ; 0x61b
	.short	.L__profc_isupper-.L__profd_isupper
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_isupper, 38

	.type	.L__profc_iswcntrl,@object      ; @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.zero	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      ; @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.quad	7000259844681188668             ; 0x6125eb3d61a7453c
	.quad	106600273393371                 ; 0x60f3cf6db6db
	.short	.L__profc_iswcntrl-.L__profd_iswcntrl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_iswcntrl, 38

	.type	.L__profc_iswdigit,@object      ; @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.zero	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      ; @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.quad	8583753245428091608             ; 0x771f9e1919590ad8
	.quad	1563                            ; 0x61b
	.short	.L__profc_iswdigit-.L__profd_iswdigit
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_iswdigit, 38

	.type	.L__profc_iswprint,@object      ; @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.zero	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      ; @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.quad	-719555261641779946             ; 0xf603a04d49941516
	.quad	-2566119187471392224            ; 0xdc635031e3742220
	.short	.L__profc_iswprint-.L__profd_iswprint
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	10                              ; 0xa
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_iswprint, 38

	.type	.L__profc_iswxdigit,@object     ; @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.zero	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     ; @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.quad	624771703830219826              ; 0x8aba28df0840c32
	.quad	6354651                         ; 0x60f6db
	.short	.L__profc_iswxdigit-.L__profd_iswxdigit
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_iswxdigit, 38

	.type	.L__profc_toascii,@object       ; @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.zero	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       ; @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.quad	4548159975983457080             ; 0x3f1e4f66a624a338
	.quad	24                              ; 0x18
	.short	.L__profc_toascii-.L__profd_toascii
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_toascii, 38

	.type	.L__profc_fdim,@object          ; @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.zero	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          ; @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.quad	-3545869933759497925            ; 0xceca8a150286f93b
	.quad	7369846577040809592             ; 0x6646f46a29a55e78
	.short	.L__profc_fdim-.L__profd_fdim
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fdim, 38

	.type	.L__profc_fdimf,@object         ; @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.zero	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         ; @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.quad	-1547869627280940664            ; 0xea84dcc6634da188
	.quad	7369846577040809592             ; 0x6646f46a29a55e78
	.short	.L__profc_fdimf-.L__profd_fdimf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fdimf, 38

	.type	.L__profc_fmax,@object          ; @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.zero	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          ; @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.quad	-2423801789625842334            ; 0xde5ced1d3b654562
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	.L__profc_fmax-.L__profd_fmax
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fmax, 38

	.type	.L__profc_fmaxf,@object         ; @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.zero	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         ; @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.quad	-5134209104457391460            ; 0xb8bfa0058e3da29c
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	.L__profc_fmaxf-.L__profd_fmaxf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fmaxf, 38

	.type	.L__profc_fmaxl,@object         ; @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.zero	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         ; @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.quad	-3138580006960380340            ; 0xd471861cd1fbc64c
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	.L__profc_fmaxl-.L__profd_fmaxl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fmaxl, 38

	.type	.L__profc_fmin,@object          ; @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.zero	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          ; @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.quad	965427315610335377              ; 0xd65e3074b69b891
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	.L__profc_fmin-.L__profd_fmin
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fmin, 38

	.type	.L__profc_fminf,@object         ; @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.zero	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         ; @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.quad	7710199602704325723             ; 0x6b0021b0328c9c5b
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	.L__profc_fminf-.L__profd_fminf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fminf, 38

	.type	.L__profc_fminl,@object         ; @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.zero	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         ; @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.quad	2487418697363824514             ; 0x2285162058091f82
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	.L__profc_fminl-.L__profd_fminl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_fminl, 38

	.type	.L__profc_l64a,@object          ; @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.zero	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          ; @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.quad	-6158745991357604691            ; 0xaa87bd26bb44dcad
	.quad	17496                           ; 0x4458
	.short	.L__profc_l64a-.L__profd_l64a
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_l64a, 38

	.type	.L__profc_srand,@object         ; @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.zero	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         ; @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.quad	-2085616837322687880            ; 0xe30e668959ceba78
	.quad	0                               ; 0x0
	.short	.L__profc_srand-.L__profd_srand
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_srand, 38

	.type	.L__profc_rand,@object          ; @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.zero	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          ; @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.quad	7206085285791387956             ; 0x6401286350c3d134
	.quad	24                              ; 0x18
	.short	.L__profc_rand-.L__profd_rand
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rand, 38

	.type	.L__profc_insque,@object        ; @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.zero	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        ; @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.quad	-5080349535175464041            ; 0xb97ef903bd0bab97
	.quad	45786906010769                  ; 0x29a49844a491
	.short	.L__profc_insque-.L__profd_insque
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_insque, 38

	.type	.L__profc_remque,@object        ; @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.zero	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        ; @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.quad	-7214219538753974334            ; 0x9be1f18d54e30fc2
	.quad	11043906705                     ; 0x29244a491
	.short	.L__profc_remque-.L__profd_remque
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_remque, 38

	.type	.L__profc_lsearch,@object       ; @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.zero	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       ; @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.quad	-7032153342590886098            ; 0x9e68c5caf8cb5f2e
	.quad	1245367951758424                ; 0x46ca7d2611458
	.short	.L__profc_lsearch-.L__profd_lsearch
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_lsearch, 38

	.type	.L__profc_lfind,@object         ; @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.zero	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         ; @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.quad	-6350214982902907667            ; 0xa7df811e30b57ced
	.quad	1245367951758424                ; 0x46ca7d2611458
	.short	.L__profc_lfind-.L__profd_lfind
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_lfind, 38

	.type	.L__profc_abs,@object           ; @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.zero	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           ; @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.quad	-238465663743841031             ; 0xfcb0ccbe056bacf9
	.quad	99164                           ; 0x1835c
	.short	.L__profc_abs-.L__profd_abs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_abs, 38

	.type	.L__profc_atoi,@object          ; @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.zero	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          ; @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.quad	-6544211519801369139            ; 0xa52e4a4ba3385dcd
	.quad	638206505195021                 ; 0x244720809160d
	.short	.L__profc_atoi-.L__profd_atoi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_atoi, 38

	.type	.L__profc_atol,@object          ; @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.zero	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          ; @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.quad	8236175749196770609             ; 0x724cc634ee8f6d31
	.quad	638206505195021                 ; 0x244720809160d
	.short	.L__profc_atol-.L__profd_atol
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_atol, 38

	.type	.L__profc_atoll,@object         ; @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.zero	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         ; @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.quad	3653807471789013357             ; 0x32b4ee8971a6f96d
	.quad	638206505195021                 ; 0x244720809160d
	.short	.L__profc_atoll-.L__profd_atoll
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_atoll, 38

	.type	.L__profc_bsearch,@object       ; @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.zero	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       ; @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.quad	8750110911118262334             ; 0x796ea3837a79403e
	.quad	-852542619444921222             ; 0xf42b29012c1abc7a
	.short	.L__profc_bsearch-.L__profd_bsearch
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_bsearch, 38

	.type	.L__profc_bsearch_r,@object     ; @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.zero	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     ; @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.quad	1417097008757763708             ; 0x13aa8a38ab466e7c
	.quad	1259382983000112142             ; 0x117a3a2689e4bc0e
	.short	.L__profc_bsearch_r-.L__profd_bsearch_r
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_bsearch_r, 38

	.type	.L__profc_div,@object           ; @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.zero	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           ; @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.quad	5497092892325669176             ; 0x4c4998dc58656938
	.quad	24                              ; 0x18
	.short	.L__profc_div-.L__profd_div
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_div, 38

	.type	.L__profc_imaxabs,@object       ; @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.zero	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       ; @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.quad	8946668544180752025             ; 0x7c28f3a3b30e0e99
	.quad	99164                           ; 0x1835c
	.short	.L__profc_imaxabs-.L__profd_imaxabs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_imaxabs, 38

	.type	.L__profc_imaxdiv,@object       ; @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.zero	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       ; @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.quad	-3928426486442246988            ; 0xc97b6cec9d5fbcb4
	.quad	24                              ; 0x18
	.short	.L__profc_imaxdiv-.L__profd_imaxdiv
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_imaxdiv, 38

	.type	.L__profc_labs,@object          ; @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.zero	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          ; @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.quad	-7118441263952323418            ; 0x9d363762b3a39ca6
	.quad	99164                           ; 0x1835c
	.short	.L__profc_labs-.L__profd_labs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_labs, 38

	.type	.L__profc_ldiv,@object          ; @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.zero	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          ; @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.quad	7149836041034155625             ; 0x633951ff74204669
	.quad	24                              ; 0x18
	.short	.L__profc_ldiv-.L__profd_ldiv
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_ldiv, 38

	.type	.L__profc_llabs,@object         ; @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.zero	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         ; @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.quad	7684789126781046466             ; 0x6aa5dafebb918ec2
	.quad	99164                           ; 0x1835c
	.short	.L__profc_llabs-.L__profd_llabs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_llabs, 38

	.type	.L__profc_lldiv,@object         ; @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.zero	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         ; @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.quad	-5329156747615108898            ; 0xb60b082c520680de
	.quad	24                              ; 0x18
	.short	.L__profc_lldiv-.L__profd_lldiv
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_lldiv, 38

	.type	.L__profc_wcschr,@object        ; @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.zero	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        ; @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.quad	-2279810736707830048            ; 0xe05c7c36c3687ee0
	.quad	4538308109                      ; 0x10e81160d
	.short	.L__profc_wcschr-.L__profd_wcschr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wcschr, 38

	.type	.L__profc_wcscmp,@object        ; @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.zero	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        ; @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.quad	-3710185595167438704            ; 0xcc82c5dbcd460890
	.quad	1188468208228060                ; 0x438e7d160d6dc
	.short	.L__profc_wcscmp-.L__profd_wcscmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wcscmp, 38

	.type	.L__profc_wcscpy,@object        ; @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.zero	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        ; @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.quad	-8381368184235816342            ; 0x8baf660af6dd0a6a
	.quad	9304                            ; 0x2458
	.short	.L__profc_wcscpy-.L__profd_wcscpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wcscpy, 38

	.type	.L__profc_wcslen,@object        ; @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.zero	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        ; @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.quad	3988408974905483574             ; 0x3759acd4c838a136
	.quad	17496                           ; 0x4458
	.short	.L__profc_wcslen-.L__profd_wcslen
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wcslen, 38

	.type	.L__profc_wcsncmp,@object       ; @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.zero	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       ; @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.quad	-5425166749483878188            ; 0xb4b5ef95c9c0b8d4
	.quad	6710790269995215964             ; 0x5d218431fd366c5c
	.short	.L__profc_wcsncmp-.L__profd_wcsncmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	10                              ; 0xa
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wcsncmp, 38

	.type	.L__profc_wmemchr,@object       ; @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.zero	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       ; @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.quad	-150916099757221660             ; 0xfde7d69b5b1558e4
	.quad	4538308109                      ; 0x10e81160d
	.short	.L__profc_wmemchr-.L__profd_wmemchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wmemchr, 38

	.type	.L__profc_wmemcmp,@object       ; @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.zero	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       ; @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.quad	5386172057678365784             ; 0x4abf86f3050dc458
	.quad	1189621521503964                ; 0x439f45834d6dc
	.short	.L__profc_wmemcmp-.L__profd_wmemcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wmemcmp, 38

	.type	.L__profc_wmemcpy,@object       ; @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.zero	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       ; @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.quad	7326050423799855187             ; 0x65ab5c0b9d30b853
	.quad	9304                            ; 0x2458
	.short	.L__profc_wmemcpy-.L__profd_wmemcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wmemcpy, 38

	.type	.L__profc_wmemmove,@object      ; @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.zero	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      ; @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.quad	-4659407939446788683            ; 0xbf56752a69a3adb5
	.quad	-1500206092990891740            ; 0xeb2e3281c166b924
	.short	.L__profc_wmemmove-.L__profd_wmemmove
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wmemmove, 38

	.type	.L__profc_wmemset,@object       ; @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.zero	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       ; @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.quad	-8291142148468431281            ; 0x8ceff224f245264f
	.quad	9304                            ; 0x2458
	.short	.L__profc_wmemset-.L__profd_wmemset
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_wmemset, 38

	.type	.L__profc_bcopy,@object         ; @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.zero	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         ; @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.quad	-8407331144368071880            ; 0x8b5328de3edcdb38
	.quad	5234109875325077019             ; 0x48a34b333a1d861b
	.short	.L__profc_bcopy-.L__profd_bcopy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_bcopy, 38

	.type	.L__profc_rotl64,@object        ; @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.zero	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        ; @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.quad	4714666614722164144             ; 0x416ddc4e84e875b0
	.quad	24                              ; 0x18
	.short	.L__profc_rotl64-.L__profd_rotl64
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotl64, 38

	.type	.L__profc_rotr64,@object        ; @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.zero	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        ; @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.quad	-8427642833712987187            ; 0x8b0aff7e8aabc3cd
	.quad	24                              ; 0x18
	.short	.L__profc_rotr64-.L__profd_rotr64
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotr64, 38

	.type	.L__profc_rotl32,@object        ; @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.zero	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        ; @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.quad	6417704780586152324             ; 0x5910447ed829f184
	.quad	24                              ; 0x18
	.short	.L__profc_rotl32-.L__profd_rotl32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotl32, 38

	.type	.L__profc_rotr32,@object        ; @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.zero	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        ; @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.quad	-5668908084823466940            ; 0xb153fe21cbc1dc44
	.quad	24                              ; 0x18
	.short	.L__profc_rotr32-.L__profd_rotr32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotr32, 38

	.type	.L__profc_rotl_sz,@object       ; @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.zero	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       ; @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.quad	-3686623714176605670            ; 0xccd67b43b7f8e21a
	.quad	24                              ; 0x18
	.short	.L__profc_rotl_sz-.L__profd_rotl_sz
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotl_sz, 38

	.type	.L__profc_rotr_sz,@object       ; @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.zero	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       ; @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.quad	3415499704483829380             ; 0x2f664ae29835d684
	.quad	24                              ; 0x18
	.short	.L__profc_rotr_sz-.L__profd_rotr_sz
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotr_sz, 38

	.type	.L__profc_rotl16,@object        ; @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.zero	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        ; @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.quad	7327166975465201445             ; 0x65af538b0e939f25
	.quad	24                              ; 0x18
	.short	.L__profc_rotl16-.L__profd_rotl16
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotl16, 38

	.type	.L__profc_rotr16,@object        ; @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.zero	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        ; @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.quad	5274763753728838268             ; 0x4933b9afe71d0a7c
	.quad	24                              ; 0x18
	.short	.L__profc_rotr16-.L__profd_rotr16
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotr16, 38

	.type	.L__profc_rotl8,@object         ; @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.zero	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         ; @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.quad	4408423234350850624             ; 0x3d2ddd93270fa240
	.quad	24                              ; 0x18
	.short	.L__profc_rotl8-.L__profd_rotl8
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotl8, 38

	.type	.L__profc_rotr8,@object         ; @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.zero	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         ; @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.quad	-6535801773217052896            ; 0xa54c2aea59078720
	.quad	24                              ; 0x18
	.short	.L__profc_rotr8-.L__profd_rotr8
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_rotr8, 38

	.type	.L__profc_bswap_16,@object      ; @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.zero	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      ; @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.quad	-8870828063230114195            ; 0x84e47ce04b9a466d
	.quad	24                              ; 0x18
	.short	.L__profc_bswap_16-.L__profd_bswap_16
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_bswap_16, 38

	.type	.L__profc_bswap_32,@object      ; @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.zero	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      ; @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.quad	7304833549461180700             ; 0x655ffb691afd511c
	.quad	24                              ; 0x18
	.short	.L__profc_bswap_32-.L__profd_bswap_32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_bswap_32, 38

	.type	.L__profc_bswap_64,@object      ; @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.zero	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      ; @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.quad	2873856403134720854             ; 0x27e1fd2c1c53ab56
	.quad	24                              ; 0x18
	.short	.L__profc_bswap_64-.L__profd_bswap_64
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_bswap_64, 38

	.type	.L__profc_ffs,@object           ; @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.zero	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           ; @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.quad	9222170723057548859             ; 0x7ffbbb6955da3e3b
	.quad	19458657686616                  ; 0x11b292611458
	.short	.L__profc_ffs-.L__profd_ffs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_ffs, 38

	.type	.L__profc_libiberty_ffs,@object ; @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.zero	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object ; @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.quad	65216057573358521               ; 0xe7b1a8a94fbbb9
	.quad	2952352215704664                ; 0xa7d261111a458
	.short	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_libiberty_ffs, 38

	.type	.L__profc_gl_isinff,@object     ; @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.zero	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     ; @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.quad	6535010584615638394             ; 0x5ab10580b36ed57a
	.quad	6354652                         ; 0x60f6dc
	.short	.L__profc_gl_isinff-.L__profd_gl_isinff
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_gl_isinff, 38

	.type	.L__profc_gl_isinfd,@object     ; @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.zero	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     ; @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.quad	-9165907066207032774            ; 0x80cc28161a7caa3a
	.quad	6354652                         ; 0x60f6dc
	.short	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_gl_isinfd, 38

	.type	.L__profc_gl_isinfl,@object     ; @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.zero	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     ; @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.quad	4731159788068304891             ; 0x41a874c2af6c77fb
	.quad	6354652                         ; 0x60f6dc
	.short	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_gl_isinfl, 38

	.type	.L__profc__Qp_itoq,@object      ; @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.zero	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      ; @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.quad	-3858125999267273921            ; 0xca752ed84af9a33f
	.quad	0                               ; 0x0
	.short	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd__Qp_itoq, 38

	.type	.L__profc_ldexpf,@object        ; @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.zero	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        ; @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.quad	-2560632889718296859            ; 0xdc76cdf42028aee5
	.quad	-2048372819454505383            ; 0xe392b7c600d94e59
	.short	.L__profc_ldexpf-.L__profd_ldexpf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	8                               ; 0x8
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_ldexpf, 38

	.type	.L__profc_ldexp,@object         ; @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.zero	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         ; @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.quad	-240549059163932437             ; 0xfca965e7b97ab8eb
	.quad	-2048372819454505383            ; 0xe392b7c600d94e59
	.short	.L__profc_ldexp-.L__profd_ldexp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	8                               ; 0x8
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_ldexp, 38

	.type	.L__profc_ldexpl,@object        ; @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.zero	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        ; @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.quad	-5097262943286299417            ; 0xb942e25c0aa874e7
	.quad	-2048372819454505383            ; 0xe392b7c600d94e59
	.short	.L__profc_ldexpl-.L__profd_ldexpl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	8                               ; 0x8
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_ldexpl, 38

	.type	.L__profc_memxor,@object        ; @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.zero	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        ; @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.quad	-8368025376422999318            ; 0x8bdecd417eda4aea
	.quad	1164376                         ; 0x11c458
	.short	.L__profc_memxor-.L__profd_memxor
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memxor, 38

	.type	.L__profc_strncat,@object       ; @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.zero	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       ; @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.quad	-3582483947543505905            ; 0xce4875d49d21540f
	.quad	76123606467028056               ; 0x10e72044a7d2458
	.short	.L__profc_strncat-.L__profd_strncat
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strncat, 38

	.type	.L__profc_strnlen,@object       ; @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.zero	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       ; @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.quad	517590790318988421              ; 0x72eda14dbfa1c85
	.quad	4537021528                      ; 0x10e6d7458
	.short	.L__profc_strnlen-.L__profd_strnlen
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strnlen, 38

	.type	.L__profc_strpbrk,@object       ; @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.zero	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       ; @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.quad	-6867074718569872870            ; 0xa0b33fed4193c21a
	.quad	-4444802448421279214            ; 0xc250e3b905102a12
	.short	.L__profc_strpbrk-.L__profd_strpbrk
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strpbrk, 38

	.type	.L__profc_strrchr,@object       ; @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.zero	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       ; @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.quad	5307837722043833871             ; 0x49a93a493bd75e0f
	.quad	217420731480                    ; 0x329f491458
	.short	.L__profc_strrchr-.L__profd_strrchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strrchr, 38

	.type	.L__profc_strstr,@object        ; @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.zero	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        ; @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.quad	3560562421867190603             ; 0x3169a8a873ff994b
	.quad	-7798267876297541628            ; 0x93c6fcaef9f1f804
	.short	.L__profc_strstr-.L__profd_strstr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_strstr, 38

	.type	.L__profc_copysign,@object      ; @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.zero	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      ; @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.quad	-9076603418344796971            ; 0x82096d47ea764cd5
	.quad	4200982705386070127             ; 0x3a4ce3834618a06f
	.short	.L__profc_copysign-.L__profd_copysign
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_copysign, 38

	.type	.L__profc_memmem,@object        ; @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.zero	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        ; @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.quad	-7485463843177831536            ; 0x981e4a4b585ae390
	.quad	5508063777036862020             ; 0x4c7092d27e7a8244
	.short	.L__profc_memmem-.L__profd_memmem
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_memmem, 38

	.type	.L__profc_mempcpy,@object       ; @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.zero	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       ; @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.quad	-722907995699078206             ; 0xf5f7b7020f111bc2
	.quad	24                              ; 0x18
	.short	.L__profc_mempcpy-.L__profd_mempcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_mempcpy, 38

	.type	.L__profc_frexp,@object         ; @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.zero	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         ; @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.quad	-2997169543230593137            ; 0xd667ea2e1c1ee78f
	.quad	-2373782428686282824            ; 0xdf0ea1753c170fb8
	.short	.L__profc_frexp-.L__profd_frexp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_frexp, 38

	.type	.L__profc___muldi3,@object      ; @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.zero	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      ; @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.quad	3987271357918321816             ; 0x3755a22cafcf9c98
	.quad	2320045144                      ; 0x8a491458
	.short	.L__profc___muldi3-.L__profd___muldi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___muldi3, 38

	.type	.L__profc_udivmodsi4,@object    ; @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.zero	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    ; @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.quad	4670832108574850701             ; 0x40d2210e3d17be8d
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd_udivmodsi4, 38

	.type	.L__profc___clrsbqi2,@object    ; @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.zero	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    ; @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.quad	-7858138078702729622            ; 0x92f2490d36f4066a
	.quad	187824153796641880              ; 0x29b49129f498458
	.short	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___clrsbqi2, 38

	.type	.L__profc___clrsbdi2,@object    ; @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.zero	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    ; @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.quad	-1533375985051215657            ; 0xeab85aaa6fe858d7
	.quad	187824153796641880              ; 0x29b49129f498458
	.short	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___clrsbdi2, 38

	.type	.L__profc___mulsi3,@object      ; @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.zero	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      ; @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.quad	5127670123023436031             ; 0x472924cf303208ff
	.quad	2320045144                      ; 0x8a491458
	.short	.L__profc___mulsi3-.L__profd___mulsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mulsi3, 38

	.type	.L__profc___cmovd,@object       ; @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.zero	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       ; @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.quad	1458405851566781960             ; 0x143d4c6520fd3608
	.quad	-6411111704588201945            ; 0xa70727df48abd027
	.short	.L__profc___cmovd-.L__profd___cmovd
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___cmovd, 38

	.type	.L__profc___cmovh,@object       ; @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.zero	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       ; @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.quad	-1240290101804783090            ; 0xeec99ab9477e2a0e
	.quad	3130117398598530023             ; 0x2b706930a0bc33e7
	.short	.L__profc___cmovh-.L__profd___cmovh
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___cmovh, 38

	.type	.L__profc___cmovw,@object       ; @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.zero	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       ; @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.quad	-6631700889337257300            ; 0xa3f7772d6a6922ac
	.quad	-6411111704588201945            ; 0xa70727df48abd027
	.short	.L__profc___cmovw-.L__profd___cmovw
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___cmovw, 38

	.type	.L__profc___modi,@object        ; @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.zero	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        ; @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.quad	4130297501716739761             ; 0x3951c3b1ce8276b1
	.quad	24                              ; 0x18
	.short	.L__profc___modi-.L__profd___modi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___modi, 38

	.type	.L__profc___uitod,@object       ; @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.zero	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       ; @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.quad	-3793169221884876252            ; 0xcb5bf4b0949b6a24
	.quad	24                              ; 0x18
	.short	.L__profc___uitod-.L__profd___uitod
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___uitod, 38

	.type	.L__profc___uitof,@object       ; @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.zero	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       ; @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.quad	2684105554667313846             ; 0x253fdbc7ed991ab6
	.quad	24                              ; 0x18
	.short	.L__profc___uitof-.L__profd___uitof
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___uitof, 38

	.type	.L__profc___ulltod,@object      ; @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.zero	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      ; @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.quad	3995277539005434566             ; 0x377213c0fb840ac6
	.quad	24                              ; 0x18
	.short	.L__profc___ulltod-.L__profd___ulltod
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___ulltod, 38

	.type	.L__profc___ulltof,@object      ; @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.zero	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      ; @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.quad	-1906554817873249395            ; 0xe58a8e7e97dafb8d
	.quad	24                              ; 0x18
	.short	.L__profc___ulltof-.L__profd___ulltof
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___ulltof, 38

	.type	.L__profc___umodi,@object       ; @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.zero	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       ; @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.quad	6154071623751134202             ; 0x5567a7893fff6bfa
	.quad	24                              ; 0x18
	.short	.L__profc___umodi-.L__profd___umodi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___umodi, 38

	.type	.L__profc___clzhi2,@object      ; @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.zero	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      ; @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.quad	-9221703320275173474            ; 0x8005edb05af53f9e
	.quad	19458657162328                  ; 0x11b292591458
	.short	.L__profc___clzhi2-.L__profd___clzhi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___clzhi2, 38

	.type	.L__profc___ctzhi2,@object      ; @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.zero	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      ; @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.quad	-1569202989881991136            ; 0xea391231d79a6020
	.quad	19458657162328                  ; 0x11b292591458
	.short	.L__profc___ctzhi2-.L__profd___ctzhi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___ctzhi2, 38

	.type	.L__profc___fixunssfsi,@object  ; @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.zero	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  ; @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.quad	-7800469359816066749            ; 0x93bf2a7226d83943
	.quad	11245552728                     ; 0x29e498458
	.short	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___fixunssfsi, 38

	.type	.L__profc___parityhi2,@object   ; @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.zero	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   ; @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.quad	1203893203113466329             ; 0x10b5167d5f15d9d9
	.quad	304041497688                    ; 0x46ca491458
	.short	.L__profc___parityhi2-.L__profd___parityhi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___parityhi2, 38

	.type	.L__profc___popcounthi2,@object ; @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.zero	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object ; @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.quad	3943219574947026310             ; 0x36b9214fb4159586
	.quad	304041497688                    ; 0x46ca491458
	.short	.L__profc___popcounthi2-.L__profd___popcounthi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___popcounthi2, 38

	.type	.L__profc___mulsi3_iq2000,@object ; @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.zero	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object ; @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.quad	-3976353352410196972            ; 0xc8d127b190281414
	.quad	171971253336                    ; 0x280a491458
	.short	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mulsi3_iq2000, 38

	.type	.L__profc___mulsi3_lm32,@object ; @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.zero	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object ; @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.quad	2775651425054705869             ; 0x26851843dab148cd
	.quad	-6210685127595396365            ; 0xa9cf36c835dff2f3
	.short	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mulsi3_lm32, 38

	.type	.L__profc___udivmodsi4,@object  ; @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.zero	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  ; @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.quad	-6720389007632434094            ; 0xa2bc61cdbfa0fc52
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___udivmodsi4, 38

	.type	.L__profc___mspabi_cmpf,@object ; @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.zero	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object ; @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.quad	6399771733438470391             ; 0x58d08e7bef2f98f7
	.quad	1352614535537600836             ; 0x12c573c0ecbfa944
	.short	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mspabi_cmpf, 38

	.type	.L__profc___mspabi_cmpd,@object ; @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.zero	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object ; @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.quad	-5775354270414500759            ; 0xafd9d1e3e3e88c69
	.quad	1352614535537600836             ; 0x12c573c0ecbfa944
	.short	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mspabi_cmpd, 38

	.type	.L__profc___mspabi_mpysll,@object ; @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.zero	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object ; @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.quad	-359228324547500507             ; 0xfb03c3bdfa166625
	.quad	24                              ; 0x18
	.short	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mspabi_mpysll, 38

	.type	.L__profc___mspabi_mpyull,@object ; @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.zero	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object ; @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.quad	6629829186354316853             ; 0x5c01e284c62a8635
	.quad	24                              ; 0x18
	.short	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mspabi_mpyull, 38

	.type	.L__profc___mulhi3,@object      ; @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.zero	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      ; @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.quad	-4671748085078636676            ; 0xbf2a9dde5cc6c77c
	.quad	-5374843387156864121            ; 0xb568b86aa1286387
	.short	.L__profc___mulhi3-.L__profd___mulhi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___mulhi3, 38

	.type	.L__profc___divsi3,@object      ; @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.zero	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      ; @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.quad	5631431475223784324             ; 0x4e26dd1711aaeb84
	.quad	510575534943447681              ; 0x715edbe6f4f2a81
	.short	.L__profc___divsi3-.L__profd___divsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___divsi3, 38

	.type	.L__profc___modsi3,@object      ; @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.zero	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      ; @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.quad	-8995696579390192574            ; 0x8328dd9f4e404442
	.quad	2121116644152358499             ; 0x1d6fb85985deb663
	.short	.L__profc___modsi3-.L__profd___modsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___modsi3, 38

	.type	.L__profc___udivmodhi4,@object  ; @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.zero	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  ; @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.quad	2241631039268115874             ; 0x1f1bdf8db510d5a2
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___udivmodhi4, 38

	.type	.L__profc___udivmodsi4_libgcc,@object ; @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.zero	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object ; @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.quad	-1484205535638993157            ; 0xeb670aedd291c6fb
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___udivmodsi4_libgcc, 38

	.type	.L__profc___ashldi3,@object     ; @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.zero	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     ; @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.quad	3719210884952086607             ; 0x339d4a983a55d84f
	.quad	185294818348438616              ; 0x2924ca7d2611458
	.short	.L__profc___ashldi3-.L__profd___ashldi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___ashldi3, 38

	.type	.L__profc___ashrdi3,@object     ; @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.zero	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     ; @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.quad	-1855717345837424946            ; 0xe63f2ae7edd45ece
	.quad	185294818348438616              ; 0x2924ca7d2611458
	.short	.L__profc___ashrdi3-.L__profd___ashrdi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___ashrdi3, 38

	.type	.L__profc___bswapdi2,@object    ; @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.zero	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    ; @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.quad	9149352740892555196             ; 0x7ef907d7ada5b7bc
	.quad	24                              ; 0x18
	.short	.L__profc___bswapdi2-.L__profd___bswapdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___bswapdi2, 38

	.type	.L__profc___bswapsi2,@object    ; @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.zero	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    ; @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.quad	-3374945843358245974            ; 0xd129c8a2fe735baa
	.quad	24                              ; 0x18
	.short	.L__profc___bswapsi2-.L__profd___bswapsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___bswapsi2, 38

	.type	.L__profc___clzsi2,@object      ; @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.zero	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      ; @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.quad	1382681549752930563             ; 0x1330458b32829103
	.quad	33814345247                     ; 0x7df7df61f
	.short	.L__profc___clzsi2-.L__profd___clzsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___clzsi2, 38

	.type	.L__profc___cmpdi2,@object      ; @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.zero	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      ; @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.quad	-5499644794300757496            ; 0xb3ad5632ace08a08
	.quad	-7406659272189927428            ; 0x993642a254c41ffc
	.short	.L__profc___cmpdi2-.L__profd___cmpdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___cmpdi2, 38

	.type	.L__profc___aeabi_lcmp,@object  ; @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.zero	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  ; @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.quad	7067747365298492588             ; 0x6215aec83ed1d4ac
	.quad	24                              ; 0x18
	.short	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___aeabi_lcmp, 38

	.type	.L__profc___ctzsi2,@object      ; @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.zero	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      ; @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.quad	-5501728155980453225            ; 0xb3a5ef643c052a97
	.quad	33814345247                     ; 0x7df7df61f
	.short	.L__profc___ctzsi2-.L__profd___ctzsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___ctzsi2, 38

	.type	.L__profc___lshrdi3,@object     ; @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.zero	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     ; @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.quad	10441766047587925               ; 0x2518bb1c181e55
	.quad	185294818348438616              ; 0x2924ca7d2611458
	.short	.L__profc___lshrdi3-.L__profd___lshrdi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___lshrdi3, 38

	.type	.L__profc___muldsi3,@object     ; @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.zero	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     ; @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.quad	4756674255824047264             ; 0x42031a08a2a34ca0
	.quad	24                              ; 0x18
	.short	.L__profc___muldsi3-.L__profd___muldsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___muldsi3, 38

	.type	.L__profc___muldi3_compiler_rt,@object ; @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.zero	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object ; @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.quad	-737717619142303851             ; 0xf5c319bbe679df95
	.quad	24                              ; 0x18
	.short	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___muldi3_compiler_rt, 38

	.type	.L__profc___negdi2,@object      ; @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.zero	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      ; @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.quad	-2796404983763388037            ; 0xd9312c7bb6a6b97b
	.quad	24                              ; 0x18
	.short	.L__profc___negdi2-.L__profd___negdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___negdi2, 38

	.type	.L__profc___paritydi2,@object   ; @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.zero	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   ; @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.quad	-5102883611502574357            ; 0xb92eea643e3a04eb
	.quad	24                              ; 0x18
	.short	.L__profc___paritydi2-.L__profd___paritydi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___paritydi2, 38

	.type	.L__profc___paritysi2,@object   ; @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.zero	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   ; @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.quad	8495812714014201054             ; 0x75e730a6911054de
	.quad	24                              ; 0x18
	.short	.L__profc___paritysi2-.L__profd___paritysi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___paritysi2, 38

	.type	.L__profc___popcountdi2,@object ; @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.zero	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object ; @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.quad	4342496508124198892             ; 0x3c43a5910d1df7ec
	.quad	24                              ; 0x18
	.short	.L__profc___popcountdi2-.L__profd___popcountdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___popcountdi2, 38

	.type	.L__profc___popcountsi2,@object ; @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.zero	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object ; @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.quad	-2149276146439341705            ; 0xe22c3cbb6f433977
	.quad	24                              ; 0x18
	.short	.L__profc___popcountsi2-.L__profd___popcountsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___popcountsi2, 38

	.type	.L__profc___powidf2,@object     ; @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.zero	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     ; @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.quad	-1752541073601039051            ; 0xe7adb92dcdba7535
	.quad	-4868838055443737378            ; 0xbc6e6995b45f54de
	.short	.L__profc___powidf2-.L__profd___powidf2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___powidf2, 38

	.type	.L__profc___powisf2,@object     ; @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.zero	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     ; @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.quad	-3807360110918407144            ; 0xcb298a26c0b76c18
	.quad	-4868838055443737378            ; 0xbc6e6995b45f54de
	.short	.L__profc___powisf2-.L__profd___powisf2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___powisf2, 38

	.type	.L__profc___ucmpdi2,@object     ; @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.zero	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     ; @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.quad	-2044349310657886323            ; 0xe3a10322256c078d
	.quad	-7406659272189927428            ; 0x993642a254c41ffc
	.short	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___ucmpdi2, 38

	.type	.L__profc___aeabi_ulcmp,@object ; @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.zero	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object ; @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.quad	448670595368434735              ; 0x639ff8782193c2f
	.quad	24                              ; 0x18
	.short	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	.L__profd___aeabi_ulcmp, 38

	.type	.L__llvm_prf_nm,@object         ; @__llvm_prf_nm
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
