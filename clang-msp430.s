	.text
	.file	"mini-libc.c"
	.globl	memmove                         ; -- Begin function memmove
	.p2align	1
	.type	memmove,@function
memmove:                                ; @memmove
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
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
	jmp	.LBB0_8
.LBB0_8:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB0_11
	jmp	.LBB0_9
.LBB0_9:                                ;   in Loop: Header=BB0_8 Depth=1
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
	ret
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        ; -- End function
	.globl	memccpy                         ; -- Begin function memccpy
	.p2align	1
	.type	memccpy,@function
memccpy:                                ; @memccpy
; %bb.0:
	sub	#16, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
	mov	r15, 6(r1)
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
	jeq	.LBB1_3
	jmp	.LBB1_2
.LBB1_2:                                ;   in Loop: Header=BB1_1 Depth=1
	mov	2(r1), r12
	mov.b	0(r12), r12
	mov.b	r12, r14
	mov	4(r1), r13
	mov.b	r14, 0(r13)
	mov	8(r1), r13
	cmp	r13, r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB1_3
.LBB1_3:                                ;   in Loop: Header=BB1_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB1_6
	jmp	.LBB1_4
.LBB1_4:                                ;   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                ;   in Loop: Header=BB1_1 Depth=1
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
.LBB1_6:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB1_8
	jmp	.LBB1_7
.LBB1_7:
	mov	4(r1), r12
	inc	r12
	mov	r12, 14(r1)
	jmp	.LBB1_9
.LBB1_8:
	clr	14(r1)
	jmp	.LBB1_9
.LBB1_9:
	mov	14(r1), r12
	add	#16, r1
	ret
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        ; -- End function
	.globl	memchr                          ; -- Begin function memchr
	.p2align	1
	.type	memchr,@function
memchr:                                 ; @memchr
; %bb.0:
	sub	#12, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
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
	jeq	.LBB2_3
	jmp	.LBB2_2
.LBB2_2:                                ;   in Loop: Header=BB2_1 Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r12
	mov	8(r1), r13
	cmp	r13, r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB2_3
.LBB2_3:                                ;   in Loop: Header=BB2_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB2_6
	jmp	.LBB2_4
.LBB2_4:                                ;   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                ;   in Loop: Header=BB2_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	mov	6(r1), r12
	add	#-1, r12
	mov	r12, 6(r1)
	jmp	.LBB2_1
.LBB2_6:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB2_8
	jmp	.LBB2_7
.LBB2_7:
	mov	4(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB2_9
.LBB2_8:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB2_9
.LBB2_9:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#12, r1
	ret
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        ; -- End function
	.globl	memcmp                          ; -- Begin function memcmp
	.p2align	1
	.type	memcmp,@function
memcmp:                                 ; @memcmp
; %bb.0:
	sub	#14, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
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
	jeq	.LBB3_3
	jmp	.LBB3_2
.LBB3_2:                                ;   in Loop: Header=BB3_1 Depth=1
	mov	6(r1), r12
	mov.b	0(r12), r12
	mov	4(r1), r13
	mov.b	0(r13), r13
	cmp	r13, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB3_3
.LBB3_3:                                ;   in Loop: Header=BB3_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB3_6
	jmp	.LBB3_4
.LBB3_4:                                ;   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                ;   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	mov	8(r1), r12
	tst	r12
	jeq	.LBB3_8
	jmp	.LBB3_7
.LBB3_7:
	mov	6(r1), r12
	mov.b	0(r12), r12
	mov	4(r1), r13
	mov.b	0(r13), r13
	sub	r13, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB3_9
.LBB3_8:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB3_9
.LBB3_9:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#14, r1
	ret
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        ; -- End function
	.globl	memcpy                          ; -- Begin function memcpy
	.p2align	1
	.type	memcpy,@function
memcpy:                                 ; @memcpy
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
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
	ret
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        ; -- End function
	.globl	memrchr                         ; -- Begin function memrchr
	.p2align	1
	.type	memrchr,@function
memrchr:                                ; @memrchr
; %bb.0:
	sub	#10, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
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
	mov	0(r1), r12
	mov	2(r1), r13
	add	r13, r12
	mov.b	0(r12), r12
	mov	4(r1), r13
	cmp	r13, r12
	jne	.LBB5_4
	jmp	.LBB5_3
.LBB5_3:
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
	ret
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        ; -- End function
	.globl	memset                          ; -- Begin function memset
	.p2align	1
	.type	memset,@function
memset:                                 ; @memset
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	mov	8(r1), r12
	mov	r12, 2(r1)
	jmp	.LBB6_1
.LBB6_1:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB6_4
	jmp	.LBB6_2
.LBB6_2:                                ;   in Loop: Header=BB6_1 Depth=1
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
	ret
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        ; -- End function
	.globl	stpcpy                          ; -- Begin function stpcpy
	.p2align	1
	.type	stpcpy,@function
stpcpy:                                 ; @stpcpy
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
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
	ret
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        ; -- End function
	.globl	strchrnul                       ; -- Begin function strchrnul
	.p2align	1
	.type	strchrnul,@function
strchrnul:                              ; @strchrnul
; %bb.0:
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	mov.b	2(r1), r12
	mov	r12, 2(r1)
	jmp	.LBB8_1
.LBB8_1:                                ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r13
	clr.b	r12
	tst.b	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB8_3
	jmp	.LBB8_2
.LBB8_2:                                ;   in Loop: Header=BB8_1 Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r12
	mov	2(r1), r13
	cmp	r13, r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB8_3
.LBB8_3:                                ;   in Loop: Header=BB8_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB8_6
	jmp	.LBB8_4
.LBB8_4:                                ;   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                ;   in Loop: Header=BB8_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	jmp	.LBB8_1
.LBB8_6:
	mov	4(r1), r12
	add	#6, r1
	ret
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        ; -- End function
	.globl	strchr                          ; -- Begin function strchr
	.p2align	1
	.type	strchr,@function
strchr:                                 ; @strchr
; %bb.0:
	sub	#6, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
	jmp	.LBB9_1
.LBB9_1:                                ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	0(r1), r13
	cmp	r13, r12
	jne	.LBB9_3
	jmp	.LBB9_2
.LBB9_2:
	mov	2(r1), r12
	mov	r12, 4(r1)
	jmp	.LBB9_6
.LBB9_3:                                ;   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_4
.LBB9_4:                                ;   in Loop: Header=BB9_1 Depth=1
	mov	2(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 2(r1)
	mov.b	0(r12), r12
	tst.b	r12
	jne	.LBB9_1
	jmp	.LBB9_5
.LBB9_5:
	clr	4(r1)
	jmp	.LBB9_6
.LBB9_6:
	mov	4(r1), r12
	add	#6, r1
	ret
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        ; -- End function
	.globl	strcmp                          ; -- Begin function strcmp
	.p2align	1
	.type	strcmp,@function
strcmp:                                 ; @strcmp
; %bb.0:
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
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
	jne	.LBB10_3
	jmp	.LBB10_2
.LBB10_2:                               ;   in Loop: Header=BB10_1 Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r12
	tst.b	r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB10_3
.LBB10_3:                               ;   in Loop: Header=BB10_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB10_6
	jmp	.LBB10_4
.LBB10_4:                               ;   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_5
.LBB10_5:                               ;   in Loop: Header=BB10_1 Depth=1
	mov	4(r1), r12
	inc	r12
	mov	r12, 4(r1)
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB10_1
.LBB10_6:
	mov	4(r1), r12
	mov.b	0(r12), r12
	mov	2(r1), r13
	mov.b	0(r13), r13
	sub	r13, r12
	add	#6, r1
	ret
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        ; -- End function
	.globl	strlen                          ; -- Begin function strlen
	.p2align	1
	.type	strlen,@function
strlen:                                 ; @strlen
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
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
	ret
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        ; -- End function
	.globl	strncmp                         ; -- Begin function strncmp
	.p2align	1
	.type	strncmp,@function
strncmp:                                ; @strncmp
; %bb.0:
	sub	#14, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
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
	clr	12(r1)
	jmp	.LBB12_11
.LBB12_2:
	jmp	.LBB12_3
.LBB12_3:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r13
	clr.b	r12
	tst.b	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB12_7
	jmp	.LBB12_4
.LBB12_4:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	2(r1), r12
	mov.b	0(r12), r13
	clr.b	r12
	tst.b	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB12_7
	jmp	.LBB12_5
.LBB12_5:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	6(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB12_7
	jmp	.LBB12_6
.LBB12_6:                               ;   in Loop: Header=BB12_3 Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r12
	mov	2(r1), r13
	mov.b	0(r13), r13
	cmp	r13, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB12_7
.LBB12_7:                               ;   in Loop: Header=BB12_3 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB12_10
	jmp	.LBB12_8
.LBB12_8:                               ;   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               ;   in Loop: Header=BB12_3 Depth=1
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
.LBB12_10:
	mov	4(r1), r12
	mov.b	0(r12), r12
	mov	2(r1), r13
	mov.b	0(r13), r13
	sub	r13, r12
	mov	r12, 12(r1)
	jmp	.LBB12_11
.LBB12_11:
	mov	12(r1), r12
	add	#14, r1
	ret
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        ; -- End function
	.globl	swab                            ; -- Begin function swab
	.p2align	1
	.type	swab,@function
swab:                                   ; @swab
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
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
	ret
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        ; -- End function
	.globl	isalpha                         ; -- Begin function isalpha
	.p2align	1
	.type	isalpha,@function
isalpha:                                ; @isalpha
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	bis	#32, r12
	add	#-97, r12
	cmp	#26, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
	add	#2, r1
	ret
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        ; -- End function
	.globl	isascii                         ; -- Begin function isascii
	.p2align	1
	.type	isascii,@function
isascii:                                ; @isascii
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	bit	#-128, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
	add	#2, r1
	ret
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        ; -- End function
	.globl	isblank                         ; -- Begin function isblank
	.p2align	1
	.type	isblank,@function
isblank:                                ; @isblank
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB16_2
	jmp	.LBB16_1
.LBB16_1:
	mov	2(r1), r12
	cmp	#9, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB16_2
.LBB16_2:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	ret
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        ; -- End function
	.globl	iscntrl                         ; -- Begin function iscntrl
	.p2align	1
	.type	iscntrl,@function
iscntrl:                                ; @iscntrl
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB17_2
	jmp	.LBB17_1
.LBB17_1:
	mov	2(r1), r12
	cmp	#127, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB17_2
.LBB17_2:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	ret
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        ; -- End function
	.globl	isdigit                         ; -- Begin function isdigit
	.p2align	1
	.type	isdigit,@function
isdigit:                                ; @isdigit
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-48, r12
	cmp	#10, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
	add	#2, r1
	ret
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        ; -- End function
	.globl	isgraph                         ; -- Begin function isgraph
	.p2align	1
	.type	isgraph,@function
isgraph:                                ; @isgraph
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-33, r12
	cmp	#94, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
	add	#2, r1
	ret
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        ; -- End function
	.globl	islower                         ; -- Begin function islower
	.p2align	1
	.type	islower,@function
islower:                                ; @islower
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-97, r12
	cmp	#26, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
	add	#2, r1
	ret
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        ; -- End function
	.globl	isprint                         ; -- Begin function isprint
	.p2align	1
	.type	isprint,@function
isprint:                                ; @isprint
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-32, r12
	cmp	#95, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
	add	#2, r1
	ret
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        ; -- End function
	.globl	isspace                         ; -- Begin function isspace
	.p2align	1
	.type	isspace,@function
isspace:                                ; @isspace
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB22_2
	jmp	.LBB22_1
.LBB22_1:
	mov	2(r1), r12
	add	#-9, r12
	cmp	#5, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB22_2
.LBB22_2:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	ret
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        ; -- End function
	.globl	isupper                         ; -- Begin function isupper
	.p2align	1
	.type	isupper,@function
isupper:                                ; @isupper
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-65, r12
	cmp	#26, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
	add	#2, r1
	ret
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        ; -- End function
	.globl	iswcntrl                        ; -- Begin function iswcntrl
	.p2align	1
	.type	iswcntrl,@function
iswcntrl:                               ; @iswcntrl
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	2(r1), r13
	mov.b	#1, r12
	cmp	#32, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB24_4
	jmp	.LBB24_1
.LBB24_1:
	mov	2(r1), r13
	add	#-127, r13
	mov.b	#1, r12
	cmp	#33, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB24_4
	jmp	.LBB24_2
.LBB24_2:
	mov	2(r1), r13
	add	#-8232, r13
	mov.b	#1, r12
	cmp	#2, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB24_4
	jmp	.LBB24_3
.LBB24_3:
	mov	2(r1), r12
	add	#7, r12
	cmp	#3, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB24_4
.LBB24_4:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	ret
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        ; -- End function
	.globl	iswdigit                        ; -- Begin function iswdigit
	.p2align	1
	.type	iswdigit,@function
iswdigit:                               ; @iswdigit
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-48, r12
	cmp	#10, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
	add	#2, r1
	ret
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        ; -- End function
	.globl	iswprint                        ; -- Begin function iswprint
	.p2align	1
	.type	iswprint,@function
iswprint:                               ; @iswprint
; %bb.0:
	sub	#8, r1
	mov	r12, 4(r1)
	mov	4(r1), r12
	cmp	#255, r12
	jhs	.LBB26_4
	jmp	.LBB26_1
.LBB26_1:
	mov	4(r1), r13
	inc	r13
	and	#127, r13
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#33, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jge	.LBB26_3
; %bb.2:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB26_3:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)
	jmp	.LBB26_12
.LBB26_4:
	mov	4(r1), r12
	cmp	#8232, r12
	jlo	.LBB26_7
	jmp	.LBB26_5
.LBB26_5:
	mov	4(r1), r12
	add	#-8234, r12
	cmp	#-18474, r12
	jlo	.LBB26_7
	jmp	.LBB26_6
.LBB26_6:
	mov	4(r1), r12
	add	#8192, r12
	cmp	#8185, r12
	jhs	.LBB26_8
	jmp	.LBB26_7
.LBB26_7:
	mov	#1, 6(r1)
	jmp	.LBB26_12
.LBB26_8:
	clr	r12
	tst	r12
	jne	.LBB26_10
	jmp	.LBB26_9
.LBB26_9:
	mov	4(r1), r12
	and	#-2, r12
	cmp	#-2, r12
	jne	.LBB26_11
	jmp	.LBB26_10
.LBB26_10:
	clr	6(r1)
	jmp	.LBB26_12
.LBB26_11:
	mov	#1, 6(r1)
	jmp	.LBB26_12
.LBB26_12:
	mov	6(r1), r12
	add	#8, r1
	ret
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        ; -- End function
	.globl	iswxdigit                       ; -- Begin function iswxdigit
	.p2align	1
	.type	iswxdigit,@function
iswxdigit:                              ; @iswxdigit
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	2(r1), r13
	add	#-48, r13
	mov.b	#1, r12
	cmp	#10, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jlo	.LBB27_2
	jmp	.LBB27_1
.LBB27_1:
	mov	2(r1), r12
	bis	#32, r12
	add	#-97, r12
	cmp	#6, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB27_2
.LBB27_2:
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#4, r1
	ret
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        ; -- End function
	.globl	toascii                         ; -- Begin function toascii
	.p2align	1
	.type	toascii,@function
toascii:                                ; @toascii
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	and	#127, r12
	add	#2, r1
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
	mov	56(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	54(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	52(r1), r12
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	mov	58(r1), r13
	and	#32767, r13
	mov	r13, 38(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 40(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 34(r1)
	mov	r12, 32(r1)
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	32(r1), r12
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	mov	34(r1), r13
	and	#32767, r13
	mov	r13, 22(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	mov	74(r1), r12
	mov	r12, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r12
	mov	r12, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r12
	mov	r12, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 58(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	mov	76(r1), r12
	tst	r12
	jge	.LBB31_23
	jmp	.LBB31_22
.LBB31_22:
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
	sub	#54, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	mov	r15, 44(r1)
	mov	r14, 42(r1)
	mov	46(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	and	#32767, r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	mov	48(r1), r12
	tst	r12
	jge	.LBB32_19
	jmp	.LBB32_18
.LBB32_18:
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
	mov	74(r1), r12
	mov	r12, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r12
	mov	r12, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r12
	mov	r12, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 58(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	mov	76(r1), r12
	tst	r12
	jge	.LBB33_23
	jmp	.LBB33_22
.LBB33_22:
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
	mov	74(r1), r12
	mov	r12, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r12
	mov	r12, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r12
	mov	r12, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 58(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	mov	76(r1), r12
	tst	r12
	jge	.LBB34_23
	jmp	.LBB34_22
.LBB34_22:
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
	sub	#54, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	mov	r15, 44(r1)
	mov	r14, 42(r1)
	mov	46(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	and	#32767, r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	mov	48(r1), r12
	tst	r12
	jge	.LBB35_19
	jmp	.LBB35_18
.LBB35_18:
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
	mov	74(r1), r12
	mov	r12, 50(r1)                     ; 2-byte Folded Spill
	mov	72(r1), r12
	mov	r12, 52(r1)                     ; 2-byte Folded Spill
	mov	70(r1), r12
	mov	r12, 54(r1)                     ; 2-byte Folded Spill
	mov	76(r1), r13
	and	#32767, r13
	mov	r13, 56(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 58(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	mov	76(r1), r12
	tst	r12
	jge	.LBB36_23
	jmp	.LBB36_22
.LBB36_22:
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
	sub	#10, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 8(r1)
	mov	r12, 6(r1)
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
	ret
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        ; -- End function
	.globl	srand                           ; -- Begin function srand
	.p2align	1
	.type	srand,@function
srand:                                  ; @srand
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	add	#-1, r12
	mov	r12, &seed
	clr	&seed+6
	clr	&seed+4
	clr	&seed+2
	add	#2, r1
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
	mov	&seed, r8
	mov	&seed+2, r9
	mov	&seed+4, r10
	mov	&seed+6, r11
	mov	#32557, r12
	mov	#19605, r13
	mov	#-3027, r14
	mov	#22609, r15
	call	#__mspabi_mpyll
	mov	r14, r11
	inc	r12
	tst	r12
	mov	r2, r14
	rra	r14
	and	#1, r14
	add	r14, r13
	mov	r12, r14
	bis	r13, r14
	tst	r14
	mov	r2, r10
	rra	r10
	and	#1, r10
	mov	r11, r14
	add	r10, r14
	cmp	r11, r14
	mov	r2, r10
	mov	#1, r11
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
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	6(r1), r12
	mov	r12, 2(r1)
	mov	4(r1), r12
	mov	r12, 0(r1)
	mov	0(r1), r12
	tst	r12
	jne	.LBB40_2
	jmp	.LBB40_1
.LBB40_1:
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
	mov	2(r1), r13
	mov	0(r13), r12
	mov	r13, 2(r12)
	jmp	.LBB40_4
.LBB40_4:
	add	#8, r1
	ret
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
                                        ; -- End function
	.globl	remque                          ; -- Begin function remque
	.p2align	1
	.type	remque,@function
remque:                                 ; @remque
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	2(r1), r12
	mov	r12, 0(r1)
	mov	0(r1), r12
	mov	0(r12), r12
	tst	r12
	jeq	.LBB41_2
	jmp	.LBB41_1
.LBB41_1:
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
	mov	0(r1), r12
	mov	0(r12), r13
	mov	2(r12), r12
	mov	r13, 0(r12)
	jmp	.LBB41_4
.LBB41_4:
	add	#4, r1
	ret
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
                                        ; -- End function
	.globl	lsearch                         ; -- Begin function lsearch
	.p2align	1
	.type	lsearch,@function
lsearch:                                ; @lsearch
; %bb.0:
	sub	#30, r1
	mov	32(r1), r11
	mov	r12, 26(r1)
	mov	r13, 24(r1)
	mov	r14, 22(r1)
	mov	r15, 20(r1)
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
	mov	32(r1), r12
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
	ret
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
                                        ; -- End function
	.globl	lfind                           ; -- Begin function lfind
	.p2align	1
	.type	lfind,@function
lfind:                                  ; @lfind
; %bb.0:
	sub	#26, r1
	mov	28(r1), r11
	mov	r12, 22(r1)
	mov	r13, 20(r1)
	mov	r14, 18(r1)
	mov	r15, 16(r1)
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
	mov	28(r1), r12
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
	ret
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
                                        ; -- End function
	.globl	abs                             ; -- Begin function abs
	.p2align	1
	.type	abs,@function
abs:                                    ; @abs
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	2(r1), r12
	cmp	#1, r12
	jl	.LBB44_2
	jmp	.LBB44_1
.LBB44_1:
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
	ret
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
                                        ; -- End function
	.globl	atoi                            ; -- Begin function atoi
	.p2align	1
	.type	atoi,@function
atoi:                                   ; @atoi
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
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
	jne	.LBB45_7
	jmp	.LBB45_5
.LBB45_5:
	mov	#1, 4(r1)
	jmp	.LBB45_6
.LBB45_6:
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB45_7
.LBB45_7:
	jmp	.LBB45_8
.LBB45_8:                               ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isdigit
	tst	r12
	jeq	.LBB45_10
	jmp	.LBB45_9
.LBB45_9:                               ;   in Loop: Header=BB45_8 Depth=1
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
	jmp	.LBB45_8
.LBB45_10:
	mov	4(r1), r12
	tst	r12
	jeq	.LBB45_12
	jmp	.LBB45_11
.LBB45_11:
	mov	6(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB45_13
.LBB45_12:
	mov	6(r1), r13
	clr	r12
	sub	r13, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB45_13
.LBB45_13:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#10, r1
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
	sub	#16, r1
	mov	r12, 14(r1)
	clr	12(r1)
	clr	10(r1)
	clr	8(r1)
	jmp	.LBB46_1
.LBB46_1:                               ; =>This Inner Loop Header: Depth=1
	mov	14(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isspace
	tst	r12
	jeq	.LBB46_3
	jmp	.LBB46_2
.LBB46_2:                               ;   in Loop: Header=BB46_1 Depth=1
	mov	14(r1), r12
	inc	r12
	mov	r12, 14(r1)
	jmp	.LBB46_1
.LBB46_3:
	mov	14(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	cmp	#43, r12
	jeq	.LBB46_6
	jmp	.LBB46_4
.LBB46_4:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	cmp	#45, r12
	jne	.LBB46_7
	jmp	.LBB46_5
.LBB46_5:
	mov	#1, 8(r1)
	jmp	.LBB46_6
.LBB46_6:
	mov	14(r1), r12
	inc	r12
	mov	r12, 14(r1)
	jmp	.LBB46_7
.LBB46_7:
	jmp	.LBB46_8
.LBB46_8:                               ; =>This Inner Loop Header: Depth=1
	mov	14(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isdigit
	tst	r12
	jeq	.LBB46_10
	jmp	.LBB46_9
.LBB46_9:                               ;   in Loop: Header=BB46_8 Depth=1
	mov	10(r1), r12
	mov	12(r1), r13
	mov	#10, r14
	clr	r15
	call	#__mspabi_mpyl
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	r13, r12
	mov	4(r1), r13                      ; 2-byte Folded Reload
	mov	14(r1), r14
	mov	r14, r15
	inc	r15
	mov	r15, 14(r1)
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
	mov	#1, r15
	bic	r10, r15
	sub	r11, r12
	sub	r15, r12
	sub	r14, r13
	mov	r13, 10(r1)
	mov	r12, 12(r1)
	jmp	.LBB46_8
.LBB46_10:
	mov	8(r1), r12
	tst	r12
	jeq	.LBB46_12
	jmp	.LBB46_11
.LBB46_11:
	mov	12(r1), r12
	mov	10(r1), r13
	mov	r13, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jmp	.LBB46_13
.LBB46_12:
	mov	12(r1), r14
	mov	10(r1), r15
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
	jmp	.LBB46_13
.LBB46_13:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	#16, r1
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
	jne	.LBB47_7
	jmp	.LBB47_5
.LBB47_5:
	mov	#1, 46(r1)
	jmp	.LBB47_6
.LBB47_6:
	mov	56(r1), r12
	inc	r12
	mov	r12, 56(r1)
	jmp	.LBB47_7
.LBB47_7:
	jmp	.LBB47_8
.LBB47_8:                               ; =>This Inner Loop Header: Depth=1
	mov	56(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	call	#isdigit
	tst	r12
	jeq	.LBB47_12
	jmp	.LBB47_9
.LBB47_9:                               ;   in Loop: Header=BB47_8 Depth=1
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
	mov	r15, 30(r1)                     ; 2-byte Folded Spill
	mov	56(r1), r14
	mov	r14, r15
	inc	r15
	mov	r15, 56(r1)
	mov.b	0(r14), r15
	sxt	r15
	add	#-48, r15
	mov	r15, 32(r1)                     ; 2-byte Folded Spill
	mov	r15, r14
	swpb	r14
	sxt	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	rra	r14
	mov	r14, 34(r1)                     ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r11
	mov	#1, r15
	mov	r15, 36(r1)                     ; 2-byte Folded Spill
	mov	r15, r12
	bic	r11, r12
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r2, r11
	bic	r11, r15
	mov	r15, 40(r1)                     ; 2-byte Folded Spill
	cmp	r14, r13
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
	jeq	.LBB47_11
; %bb.10:                               ;   in Loop: Header=BB47_8 Depth=1
	mov	40(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 42(r1)                     ; 2-byte Folded Spill
.LBB47_11:                              ;   in Loop: Header=BB47_8 Depth=1
	mov	32(r1), r11                     ; 2-byte Folded Reload
	mov	24(r1), r15                     ; 2-byte Folded Reload
	mov	38(r1), r10                     ; 2-byte Folded Reload
	mov	34(r1), r9                      ; 2-byte Folded Reload
	mov	26(r1), r14                     ; 2-byte Folded Reload
	mov	36(r1), r6                      ; 2-byte Folded Reload
	mov	28(r1), r5                      ; 2-byte Folded Reload
	mov	30(r1), r12                     ; 2-byte Folded Reload
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
	jmp	.LBB47_8
.LBB47_12:
	mov	46(r1), r12
	tst	r12
	jeq	.LBB47_14
	jmp	.LBB47_13
.LBB47_13:
	mov	54(r1), r12
	mov	52(r1), r13
	mov	50(r1), r14
	mov	48(r1), r15
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	mov	r14, 18(r1)                     ; 2-byte Folded Spill
	mov	r13, 20(r1)                     ; 2-byte Folded Spill
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jmp	.LBB47_17
.LBB47_14:
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
	jeq	.LBB47_16
; %bb.15:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB47_16:
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
	jmp	.LBB47_17
.LBB47_17:
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
	sub	#16, r1
	mov	18(r1), r11
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
	mov	r15, 6(r1)
	jmp	.LBB48_1
.LBB48_1:                               ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	tst	r12
	jeq	.LBB48_9
	jmp	.LBB48_2
.LBB48_2:                               ;   in Loop: Header=BB48_1 Depth=1
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
	mov	18(r1), r14
	mov	12(r1), r12
	mov	4(r1), r13
	call	r14
	mov	r12, 2(r1)
	mov	2(r1), r12
	tst	r12
	jge	.LBB48_4
	jmp	.LBB48_3
.LBB48_3:                               ;   in Loop: Header=BB48_1 Depth=1
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
	ret
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
                                        ; -- End function
	.globl	bsearch_r                       ; -- Begin function bsearch_r
	.p2align	1
	.type	bsearch_r,@function
bsearch_r:                              ; @bsearch_r
; %bb.0:
	sub	#20, r1
	mov	24(r1), r11
	mov	22(r1), r11
	mov	r12, 16(r1)
	mov	r13, 14(r1)
	mov	r14, 12(r1)
	mov	r15, 10(r1)
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
	mov	22(r1), r15
	mov	16(r1), r12
	mov	2(r1), r13
	mov	24(r1), r14
	call	r15
	mov	r12, 4(r1)
	mov	4(r1), r12
	tst	r12
	jne	.LBB49_4
	jmp	.LBB49_3
.LBB49_3:
	mov	2(r1), r12
	mov	r12, 18(r1)
	jmp	.LBB49_9
.LBB49_4:                               ;   in Loop: Header=BB49_1 Depth=1
	mov	4(r1), r12
	cmp	#1, r12
	jl	.LBB49_6
	jmp	.LBB49_5
.LBB49_5:                               ;   in Loop: Header=BB49_1 Depth=1
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
	ret
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
                                        ; -- End function
	.globl	div                             ; -- Begin function div
	.p2align	1
	.type	div,@function
div:                                    ; @div
; %bb.0:
	sub	#8, r1
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	r13, 6(r1)
	mov	r14, 4(r1)
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
	mov	46(r1), r12
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	42(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	sub	#20, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	mov	16(r1), r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	18(r1), r13
	mov	r13, 10(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	ret
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
                                        ; -- End function
	.globl	ldiv                            ; -- Begin function ldiv
	.p2align	1
	.type	ldiv,@function
ldiv:                                   ; @ldiv
; %bb.0:
	sub	#14, r1
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	16(r1), r12
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
	mov	r14, 12(r1)
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	r15, 6(r1)
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
	mov	46(r1), r12
	mov	r12, 30(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	42(r1), r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r13
	mov	r13, 36(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 38(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	jmp	.LBB57_1
.LBB57_1:                               ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r12
	mov	0(r12), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB57_3
	jmp	.LBB57_2
.LBB57_2:                               ;   in Loop: Header=BB57_1 Depth=1
	mov	6(r1), r12
	mov	0(r12), r12
	mov	4(r1), r13
	cmp	r13, r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB57_3
.LBB57_3:                               ;   in Loop: Header=BB57_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB57_6
	jmp	.LBB57_4
.LBB57_4:                               ;   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_5
.LBB57_5:                               ;   in Loop: Header=BB57_1 Depth=1
	mov	6(r1), r12
	incd	r12
	mov	r12, 6(r1)
	jmp	.LBB57_1
.LBB57_6:
	mov	6(r1), r12
	mov	0(r12), r12
	tst	r12
	jeq	.LBB57_8
	jmp	.LBB57_7
.LBB57_7:
	mov	6(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB57_9
.LBB57_8:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB57_9
.LBB57_9:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#8, r1
	ret
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        ; -- End function
	.globl	wcscmp                          ; -- Begin function wcscmp
	.p2align	1
	.type	wcscmp,@function
wcscmp:                                 ; @wcscmp
; %bb.0:
	sub	#12, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	jmp	.LBB58_1
.LBB58_1:                               ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r12
	mov	0(r12), r13
	mov	8(r1), r12
	mov	0(r12), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 7(r1)                      ; 1-byte Folded Spill
	jne	.LBB58_4
	jmp	.LBB58_2
.LBB58_2:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	10(r1), r12
	mov	0(r12), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 7(r1)                      ; 1-byte Folded Spill
	jeq	.LBB58_4
	jmp	.LBB58_3
.LBB58_3:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	8(r1), r12
	mov	0(r12), r12
	tst	r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 7(r1)                      ; 1-byte Folded Spill
	jmp	.LBB58_4
.LBB58_4:                               ;   in Loop: Header=BB58_1 Depth=1
	mov.b	7(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB58_7
	jmp	.LBB58_5
.LBB58_5:                               ;   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_6
.LBB58_6:                               ;   in Loop: Header=BB58_1 Depth=1
	mov	10(r1), r12
	incd	r12
	mov	r12, 10(r1)
	mov	8(r1), r12
	incd	r12
	mov	r12, 8(r1)
	jmp	.LBB58_1
.LBB58_7:
	mov	10(r1), r12
	mov	0(r12), r12
	mov	8(r1), r13
	mov	0(r13), r13
	cmp	r13, r12
	jge	.LBB58_9
	jmp	.LBB58_8
.LBB58_8:
	mov	#-1, r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jmp	.LBB58_12
.LBB58_9:
	mov	10(r1), r12
	mov	0(r12), r14
	mov	8(r1), r12
	mov	0(r12), r13
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB58_11
; %bb.10:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB58_11:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jmp	.LBB58_12
.LBB58_12:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	add	#12, r1
	ret
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
                                        ; -- End function
	.globl	wcscpy                          ; -- Begin function wcscpy
	.p2align	1
	.type	wcscpy,@function
wcscpy:                                 ; @wcscpy
; %bb.0:
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
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
	jmp	.LBB59_1
.LBB59_3:
	mov	0(r1), r12
	add	#6, r1
	ret
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
                                        ; -- End function
	.globl	wcslen                          ; -- Begin function wcslen
	.p2align	1
	.type	wcslen,@function
wcslen:                                 ; @wcslen
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
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
	ret
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
                                        ; -- End function
	.globl	wcsncmp                         ; -- Begin function wcsncmp
	.p2align	1
	.type	wcsncmp,@function
wcsncmp:                                ; @wcsncmp
; %bb.0:
	sub	#16, r1
	mov	r12, 14(r1)
	mov	r13, 12(r1)
	mov	r14, 10(r1)
	jmp	.LBB61_1
.LBB61_1:                               ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jeq	.LBB61_5
	jmp	.LBB61_2
.LBB61_2:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	14(r1), r12
	mov	0(r12), r13
	mov	12(r1), r12
	mov	0(r12), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jne	.LBB61_5
	jmp	.LBB61_3
.LBB61_3:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	14(r1), r12
	mov	0(r12), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jeq	.LBB61_5
	jmp	.LBB61_4
.LBB61_4:                               ;   in Loop: Header=BB61_1 Depth=1
	mov	12(r1), r12
	mov	0(r12), r12
	tst	r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jmp	.LBB61_5
.LBB61_5:                               ;   in Loop: Header=BB61_1 Depth=1
	mov.b	9(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB61_8
	jmp	.LBB61_6
.LBB61_6:                               ;   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_7
.LBB61_7:                               ;   in Loop: Header=BB61_1 Depth=1
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
.LBB61_8:
	mov	10(r1), r12
	tst	r12
	jeq	.LBB61_15
	jmp	.LBB61_9
.LBB61_9:
	mov	14(r1), r12
	mov	0(r12), r12
	mov	12(r1), r13
	mov	0(r13), r13
	cmp	r13, r12
	jge	.LBB61_11
	jmp	.LBB61_10
.LBB61_10:
	mov	#-1, r12
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_14
.LBB61_11:
	mov	14(r1), r12
	mov	0(r12), r14
	mov	12(r1), r12
	mov	0(r12), r13
	clr	r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	r14, r13
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jl	.LBB61_13
; %bb.12:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
.LBB61_13:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_14
.LBB61_14:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_16
.LBB61_15:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB61_16
.LBB61_16:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#16, r1
	ret
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        ; -- End function
	.globl	wmemchr                         ; -- Begin function wmemchr
	.p2align	1
	.type	wmemchr,@function
wmemchr:                                ; @wmemchr
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
	jmp	.LBB62_1
.LBB62_1:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jeq	.LBB62_3
	jmp	.LBB62_2
.LBB62_2:                               ;   in Loop: Header=BB62_1 Depth=1
	mov	8(r1), r12
	mov	0(r12), r12
	mov	6(r1), r13
	cmp	r13, r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB62_3
.LBB62_3:                               ;   in Loop: Header=BB62_1 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB62_6
	jmp	.LBB62_4
.LBB62_4:                               ;   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_5
.LBB62_5:                               ;   in Loop: Header=BB62_1 Depth=1
	mov	4(r1), r12
	add	#-1, r12
	mov	r12, 4(r1)
	mov	8(r1), r12
	incd	r12
	mov	r12, 8(r1)
	jmp	.LBB62_1
.LBB62_6:
	mov	4(r1), r12
	tst	r12
	jeq	.LBB62_8
	jmp	.LBB62_7
.LBB62_7:
	mov	8(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB62_9
.LBB62_8:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB62_9
.LBB62_9:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#10, r1
	ret
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        ; -- End function
	.globl	wmemcmp                         ; -- Begin function wmemcmp
	.p2align	1
	.type	wmemcmp,@function
wmemcmp:                                ; @wmemcmp
; %bb.0:
	sub	#16, r1
	mov	r12, 14(r1)
	mov	r13, 12(r1)
	mov	r14, 10(r1)
	jmp	.LBB63_1
.LBB63_1:                               ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jeq	.LBB63_3
	jmp	.LBB63_2
.LBB63_2:                               ;   in Loop: Header=BB63_1 Depth=1
	mov	14(r1), r12
	mov	0(r12), r12
	mov	12(r1), r13
	mov	0(r13), r13
	cmp	r13, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 9(r1)                      ; 1-byte Folded Spill
	jmp	.LBB63_3
.LBB63_3:                               ;   in Loop: Header=BB63_1 Depth=1
	mov.b	9(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB63_6
	jmp	.LBB63_4
.LBB63_4:                               ;   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_5
.LBB63_5:                               ;   in Loop: Header=BB63_1 Depth=1
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
.LBB63_6:
	mov	10(r1), r12
	tst	r12
	jeq	.LBB63_13
	jmp	.LBB63_7
.LBB63_7:
	mov	14(r1), r12
	mov	0(r12), r12
	mov	12(r1), r13
	mov	0(r13), r13
	cmp	r13, r12
	jge	.LBB63_9
	jmp	.LBB63_8
.LBB63_8:
	mov	#-1, r12
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_12
.LBB63_9:
	mov	14(r1), r12
	mov	0(r12), r14
	mov	12(r1), r12
	mov	0(r12), r13
	clr	r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	r14, r13
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	jl	.LBB63_11
; %bb.10:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
.LBB63_11:
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 6(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_12
.LBB63_12:
	mov	6(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_14
.LBB63_13:
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB63_14
.LBB63_14:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#16, r1
	ret
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
                                        ; -- End function
	.globl	wmemcpy                         ; -- Begin function wmemcpy
	.p2align	1
	.type	wmemcpy,@function
wmemcpy:                                ; @wmemcpy
; %bb.0:
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
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
	ret
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
                                        ; -- End function
	.globl	wmemmove                        ; -- Begin function wmemmove
	.p2align	1
	.type	wmemmove,@function
wmemmove:                               ; @wmemmove
; %bb.0:
	sub	#10, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
	mov	6(r1), r12
	mov	r12, 0(r1)
	mov	6(r1), r12
	mov	4(r1), r13
	cmp	r13, r12
	jne	.LBB65_2
	jmp	.LBB65_1
.LBB65_1:
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
	ret
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
                                        ; -- End function
	.globl	wmemset                         ; -- Begin function wmemset
	.p2align	1
	.type	wmemset,@function
wmemset:                                ; @wmemset
; %bb.0:
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
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
	ret
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
                                        ; -- End function
	.globl	bcopy                           ; -- Begin function bcopy
	.p2align	1
	.type	bcopy,@function
bcopy:                                  ; @bcopy
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
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
	jmp	.LBB67_8
.LBB67_8:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB67_11
	jmp	.LBB67_9
.LBB67_9:                               ;   in Loop: Header=BB67_8 Depth=1
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
	sub	#16, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r14, 10(r1)
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
	ret
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
                                        ; -- End function
	.globl	rotr32                          ; -- Begin function rotr32
	.p2align	1
	.type	rotr32,@function
rotr32:                                 ; @rotr32
; %bb.0:
	sub	#16, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r14, 10(r1)
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
	ret
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
                                        ; -- End function
	.globl	rotl_sz                         ; -- Begin function rotl_sz
	.p2align	1
	.type	rotl_sz,@function
rotl_sz:                                ; @rotl_sz
; %bb.0:
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
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
	ret
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
                                        ; -- End function
	.globl	rotr_sz                         ; -- Begin function rotr_sz
	.p2align	1
	.type	rotr_sz,@function
rotr_sz:                                ; @rotr_sz
; %bb.0:
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
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
	ret
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
                                        ; -- End function
	.globl	rotl16                          ; -- Begin function rotl16
	.p2align	1
	.type	rotl16,@function
rotl16:                                 ; @rotl16
; %bb.0:
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
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
	ret
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
                                        ; -- End function
	.globl	rotr16                          ; -- Begin function rotr16
	.p2align	1
	.type	rotr16,@function
rotr16:                                 ; @rotr16
; %bb.0:
	sub	#18, r1
	mov	r12, 16(r1)
	mov	r13, 14(r1)
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
	ret
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
                                        ; -- End function
	.globl	rotl8                           ; -- Begin function rotl8
	.p2align	1
	.type	rotl8,@function
rotl8:                                  ; @rotl8
; %bb.0:
	sub	#18, r1
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 17(r1)
	mov	r13, 14(r1)
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
	ret
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
                                        ; -- End function
	.globl	rotr8                           ; -- Begin function rotr8
	.p2align	1
	.type	rotr8,@function
rotr8:                                  ; @rotr8
; %bb.0:
	sub	#18, r1
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 17(r1)
	mov	r13, 14(r1)
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
	ret
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
                                        ; -- End function
	.globl	bswap_16                        ; -- Begin function bswap_16
	.p2align	1
	.type	bswap_16,@function
bswap_16:                               ; @bswap_16
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
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
	sub	#10, r1
	mov	r12, 6(r1)
	clr	4(r1)
	jmp	.LBB81_1
.LBB81_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB81_3 Depth 2
	mov	4(r1), r12
	cmp	#16, r12
	jhs	.LBB81_8
	jmp	.LBB81_2
.LBB81_2:                               ;   in Loop: Header=BB81_1 Depth=1
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
	ret
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
                                        ; -- End function
	.globl	libiberty_ffs                   ; -- Begin function libiberty_ffs
	.p2align	1
	.type	libiberty_ffs,@function
libiberty_ffs:                          ; @libiberty_ffs
; %bb.0:
	sub	#6, r1
	mov	r12, 2(r1)
	mov	2(r1), r12
	tst	r12
	jne	.LBB82_2
	jmp	.LBB82_1
.LBB82_1:
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
	ret
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
                                        ; -- End function
	.globl	gl_isinff                       ; -- Begin function gl_isinff
	.p2align	1
	.type	gl_isinff,@function
gl_isinff:                              ; @gl_isinff
; %bb.0:
	sub	#10, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	mov	6(r1), r12
	mov	8(r1), r13
	mov	#-1, r14
	mov	#-129, r15
	call	#__mspabi_cmpf
	mov	r12, r13
	mov.b	#1, r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jl	.LBB83_4
	jmp	.LBB83_1
.LBB83_1:
	mov	6(r1), r12
	mov	8(r1), r13
	mov	#-1, r14
	mov	#32639, r15
	call	#__mspabi_cmpf
	mov	r12, r13
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#1, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jge	.LBB83_3
; %bb.2:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB83_3:
	mov	2(r1), r12                      ; 2-byte Folded Reload
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB83_4
.LBB83_4:
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#10, r1
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
	sub	#14, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 12(r1)
	mov	r14, 10(r1)
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	mov	6(r1), r8
	mov	8(r1), r9
	mov	10(r1), r10
	mov	12(r1), r11
	mov	#-1, r14
	mov	#-17, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	mov.b	#1, r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jl	.LBB84_4
	jmp	.LBB84_1
.LBB84_1:
	mov	6(r1), r8
	mov	8(r1), r9
	mov	10(r1), r10
	mov	12(r1), r11
	mov	#-1, r14
	mov	#32751, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#1, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jge	.LBB84_3
; %bb.2:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB84_3:
	mov	2(r1), r12                      ; 2-byte Folded Reload
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB84_4
.LBB84_4:
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#14, r1
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
	sub	#14, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 12(r1)
	mov	r14, 10(r1)
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	mov	6(r1), r8
	mov	8(r1), r9
	mov	10(r1), r10
	mov	12(r1), r11
	mov	#-1, r14
	mov	#-17, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	mov.b	#1, r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jl	.LBB85_4
	jmp	.LBB85_1
.LBB85_1:
	mov	6(r1), r8
	mov	8(r1), r9
	mov	10(r1), r10
	mov	12(r1), r11
	mov	#-1, r14
	mov	#32751, r15
	mov	r14, r12
	mov	r14, r13
	call	#__mspabi_cmpd
	mov	r12, r13
	clr	r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
	cmp	#1, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jge	.LBB85_3
; %bb.2:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB85_3:
	mov	2(r1), r12                      ; 2-byte Folded Reload
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB85_4
.LBB85_4:
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	and	#1, r12
	add	#14, r1
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
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
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
	ret
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
                                        ; -- End function
	.globl	ldexpf                          ; -- Begin function ldexpf
	.p2align	1
	.type	ldexpf,@function
ldexpf:                                 ; @ldexpf
; %bb.0:
	sub	#32, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 30(r1)
	mov	r12, 28(r1)
	mov	r14, 26(r1)
	mov	28(r1), r12
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	mov	30(r1), r13
	and	#32767, r13
	mov	r13, 14(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 16(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	cmp	#32641, r13
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
	jge	.LBB87_2
; %bb.1:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 20(r1)                     ; 2-byte Folded Spill
.LBB87_2:
	mov	14(r1), r13                     ; 2-byte Folded Reload
	mov	18(r1), r12                     ; 2-byte Folded Reload
	mov	12(r1), r14                     ; 2-byte Folded Reload
	mov	20(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 8(r1)                      ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	cmp	#32640, r13
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
	jeq	.LBB87_4
; %bb.3:
	mov	8(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 10(r1)                     ; 2-byte Folded Spill
.LBB87_4:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB87_15
	jmp	.LBB87_5
.LBB87_5:
	mov	28(r1), r14
	mov	r14, 6(r1)                      ; 2-byte Folded Spill
	mov	30(r1), r15
	mov	r15, 4(r1)                      ; 2-byte Folded Spill
	mov	r14, r12
	mov	r15, r13
	call	#__mspabi_addf
	mov	4(r1), r15                      ; 2-byte Folded Reload
	mov	6(r1), r14                      ; 2-byte Folded Reload
	call	#__mspabi_cmpf
	tst	r12
	jeq	.LBB87_15
	jmp	.LBB87_6
.LBB87_6:
	mov	26(r1), r13
	mov	#16384, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#16128, r12
	tst	r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB87_8
; %bb.7:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB87_8:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 24(r1)
	clr	22(r1)
	jmp	.LBB87_9
.LBB87_9:                               ; =>This Inner Loop Header: Depth=1
	mov	26(r1), r12
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
	jeq	.LBB87_11
	jmp	.LBB87_10
.LBB87_10:                              ;   in Loop: Header=BB87_9 Depth=1
	mov	22(r1), r14
	mov	24(r1), r15
	mov	28(r1), r12
	mov	30(r1), r13
	call	#__mspabi_mpyf
	mov	r13, 30(r1)
	mov	r12, 28(r1)
	jmp	.LBB87_11
.LBB87_11:                              ;   in Loop: Header=BB87_9 Depth=1
	mov	26(r1), r12
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
	mov	r12, 26(r1)
	mov	26(r1), r12
	tst	r12
	jne	.LBB87_13
	jmp	.LBB87_12
.LBB87_12:
	jmp	.LBB87_14
.LBB87_13:                              ;   in Loop: Header=BB87_9 Depth=1
	mov	22(r1), r14
	mov	24(r1), r15
	mov	r14, r12
	mov	r15, r13
	call	#__mspabi_mpyf
	mov	r13, 24(r1)
	mov	r12, 22(r1)
	jmp	.LBB87_9
.LBB87_14:
	jmp	.LBB87_15
.LBB87_15:
	mov	28(r1), r12
	mov	30(r1), r13
	add	#32, r1
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
	sub	#54, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	62(r1), r11
	mov	r15, 52(r1)
	mov	r14, 50(r1)
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	mov	46(r1), r12
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r12
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	mov	50(r1), r12
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
	mov	52(r1), r13
	and	#32767, r13
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	cmp	#32753, r13
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	jge	.LBB88_2
; %bb.1:
	mov	32(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
.LBB88_2:
	mov	30(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	28(r1), r14                     ; 2-byte Folded Reload
	mov	36(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 20(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	cmp	#32752, r13
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jeq	.LBB88_4
; %bb.3:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
.LBB88_4:
	mov	26(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	24(r1), r14                     ; 2-byte Folded Reload
	mov	22(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 14(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	r12, r15
	bic	r11, r15
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	tst	r13
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	jeq	.LBB88_6
; %bb.5:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
.LBB88_6:
	mov	28(r1), r13                     ; 2-byte Folded Reload
	mov	30(r1), r14                     ; 2-byte Folded Reload
	mov	18(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	jeq	.LBB88_8
; %bb.7:
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
.LBB88_8:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB88_19
	jmp	.LBB88_9
.LBB88_9:
	mov	46(r1), r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	48(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	50(r1), r14
	mov	r14, 8(r1)                      ; 2-byte Folded Spill
	mov	52(r1), r15
	mov	r15, 10(r1)                     ; 2-byte Folded Spill
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_addd
	mov	r12, r8
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r9
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov	r14, r10
	mov	8(r1), r14                      ; 2-byte Folded Reload
	mov	r15, r11
	mov	10(r1), r15                     ; 2-byte Folded Reload
	call	#__mspabi_cmpd
	tst	r12
	jeq	.LBB88_19
	jmp	.LBB88_10
.LBB88_10:
	mov	62(r1), r13
	mov	#16384, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#16352, r12
	tst	r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB88_12
; %bb.11:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB88_12:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 44(r1)
	clr	40(r1)
	clr	38(r1)
	clr	42(r1)
	jmp	.LBB88_13
.LBB88_13:                              ; =>This Inner Loop Header: Depth=1
	mov	62(r1), r12
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
	jeq	.LBB88_15
	jmp	.LBB88_14
.LBB88_14:                              ;   in Loop: Header=BB88_13 Depth=1
	mov	38(r1), r12
	mov	40(r1), r13
	mov	42(r1), r14
	mov	44(r1), r15
	mov	46(r1), r8
	mov	48(r1), r9
	mov	50(r1), r10
	mov	52(r1), r11
	call	#__mspabi_mpyd
	mov	r15, 52(r1)
	mov	r14, 50(r1)
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	jmp	.LBB88_15
.LBB88_15:                              ;   in Loop: Header=BB88_13 Depth=1
	mov	62(r1), r12
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
	mov	r12, 62(r1)
	mov	62(r1), r12
	tst	r12
	jne	.LBB88_17
	jmp	.LBB88_16
.LBB88_16:
	jmp	.LBB88_18
.LBB88_17:                              ;   in Loop: Header=BB88_13 Depth=1
	mov	38(r1), r12
	mov	40(r1), r13
	mov	42(r1), r14
	mov	44(r1), r15
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_mpyd
	mov	r15, 44(r1)
	mov	r14, 42(r1)
	mov	r13, 40(r1)
	mov	r12, 38(r1)
	jmp	.LBB88_13
.LBB88_18:
	jmp	.LBB88_19
.LBB88_19:
	mov	46(r1), r12
	mov	48(r1), r13
	mov	50(r1), r14
	mov	52(r1), r15
	add	#54, r1
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
	sub	#54, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	62(r1), r11
	mov	r15, 52(r1)
	mov	r14, 50(r1)
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	mov	46(r1), r12
	mov	r12, 24(r1)                     ; 2-byte Folded Spill
	mov	48(r1), r12
	mov	r12, 26(r1)                     ; 2-byte Folded Spill
	mov	50(r1), r12
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
	mov	52(r1), r13
	and	#32767, r13
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
	mov	r12, 34(r1)                     ; 2-byte Folded Spill
	cmp	#32753, r13
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	jge	.LBB89_2
; %bb.1:
	mov	32(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
.LBB89_2:
	mov	30(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	28(r1), r14                     ; 2-byte Folded Reload
	mov	36(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 20(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	cmp	#32752, r13
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
	jeq	.LBB89_4
; %bb.3:
	mov	20(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 22(r1)                     ; 2-byte Folded Spill
.LBB89_4:
	mov	26(r1), r13                     ; 2-byte Folded Reload
	mov	34(r1), r12                     ; 2-byte Folded Reload
	mov	24(r1), r14                     ; 2-byte Folded Reload
	mov	22(r1), r15                     ; 2-byte Folded Reload
	mov	r15, 14(r1)                     ; 2-byte Folded Spill
	tst	r13
	mov	r2, r11
	rra	r11
	mov	r12, r15
	bic	r11, r15
	mov	r15, 16(r1)                     ; 2-byte Folded Spill
	tst	r14
	mov	r2, r14
	rra	r14
	bic	r14, r12
	tst	r13
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
	jeq	.LBB89_6
; %bb.5:
	mov	16(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 18(r1)                     ; 2-byte Folded Spill
.LBB89_6:
	mov	28(r1), r13                     ; 2-byte Folded Reload
	mov	30(r1), r14                     ; 2-byte Folded Reload
	mov	18(r1), r12                     ; 2-byte Folded Reload
	xor	#32752, r14
	bis	r14, r13
	tst	r13
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
	jeq	.LBB89_8
; %bb.7:
	mov	14(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 12(r1)                     ; 2-byte Folded Spill
.LBB89_8:
	mov	12(r1), r12                     ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB89_19
	jmp	.LBB89_9
.LBB89_9:
	mov	46(r1), r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	48(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	50(r1), r14
	mov	r14, 8(r1)                      ; 2-byte Folded Spill
	mov	52(r1), r15
	mov	r15, 10(r1)                     ; 2-byte Folded Spill
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_addd
	mov	r12, r8
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r9
	mov	6(r1), r13                      ; 2-byte Folded Reload
	mov	r14, r10
	mov	8(r1), r14                      ; 2-byte Folded Reload
	mov	r15, r11
	mov	10(r1), r15                     ; 2-byte Folded Reload
	call	#__mspabi_cmpd
	tst	r12
	jeq	.LBB89_19
	jmp	.LBB89_10
.LBB89_10:
	mov	62(r1), r13
	mov	#16384, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	#16352, r12
	tst	r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jl	.LBB89_12
; %bb.11:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB89_12:
	mov	2(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 44(r1)
	clr	40(r1)
	clr	38(r1)
	clr	42(r1)
	jmp	.LBB89_13
.LBB89_13:                              ; =>This Inner Loop Header: Depth=1
	mov	62(r1), r12
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
	jeq	.LBB89_15
	jmp	.LBB89_14
.LBB89_14:                              ;   in Loop: Header=BB89_13 Depth=1
	mov	38(r1), r12
	mov	40(r1), r13
	mov	42(r1), r14
	mov	44(r1), r15
	mov	46(r1), r8
	mov	48(r1), r9
	mov	50(r1), r10
	mov	52(r1), r11
	call	#__mspabi_mpyd
	mov	r15, 52(r1)
	mov	r14, 50(r1)
	mov	r13, 48(r1)
	mov	r12, 46(r1)
	jmp	.LBB89_15
.LBB89_15:                              ;   in Loop: Header=BB89_13 Depth=1
	mov	62(r1), r12
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
	mov	r12, 62(r1)
	mov	62(r1), r12
	tst	r12
	jne	.LBB89_17
	jmp	.LBB89_16
.LBB89_16:
	jmp	.LBB89_18
.LBB89_17:                              ;   in Loop: Header=BB89_13 Depth=1
	mov	38(r1), r12
	mov	40(r1), r13
	mov	42(r1), r14
	mov	44(r1), r15
	mov	r12, r8
	mov	r13, r9
	mov	r14, r10
	mov	r15, r11
	call	#__mspabi_mpyd
	mov	r15, 44(r1)
	mov	r14, 42(r1)
	mov	r13, 40(r1)
	mov	r12, 38(r1)
	jmp	.LBB89_13
.LBB89_18:
	jmp	.LBB89_19
.LBB89_19:
	mov	46(r1), r12
	mov	48(r1), r13
	mov	50(r1), r14
	mov	52(r1), r15
	add	#54, r1
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
	sub	#10, r1
	mov	r12, 8(r1)
	mov	r13, 6(r1)
	mov	r14, 4(r1)
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
	ret
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
                                        ; -- End function
	.globl	strncat                         ; -- Begin function strncat
	.p2align	1
	.type	strncat,@function
strncat:                                ; @strncat
; %bb.0:
	sub	#12, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
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
	jeq	.LBB91_3
	jmp	.LBB91_2
.LBB91_2:                               ;   in Loop: Header=BB91_1 Depth=1
	mov	8(r1), r12
	mov.b	0(r12), r12
	mov	4(r1), r13
	mov.b	r12, 0(r13)
	tst.b	r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB91_3
.LBB91_3:                               ;   in Loop: Header=BB91_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB91_6
	jmp	.LBB91_4
.LBB91_4:                               ;   in Loop: Header=BB91_1 Depth=1
	jmp	.LBB91_5
.LBB91_5:                               ;   in Loop: Header=BB91_1 Depth=1
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
.LBB91_6:
	mov	6(r1), r12
	tst	r12
	jne	.LBB91_8
	jmp	.LBB91_7
.LBB91_7:
	mov	4(r1), r12
	clr.b	0(r12)
	jmp	.LBB91_8
.LBB91_8:
	mov	10(r1), r12
	add	#12, r1
	ret
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        ; -- End function
	.globl	strnlen                         ; -- Begin function strnlen
	.p2align	1
	.type	strnlen,@function
strnlen:                                ; @strnlen
; %bb.0:
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	clr	2(r1)
	jmp	.LBB92_1
.LBB92_1:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r13
	mov	4(r1), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jhs	.LBB92_3
	jmp	.LBB92_2
.LBB92_2:                               ;   in Loop: Header=BB92_1 Depth=1
	mov	6(r1), r12
	mov	2(r1), r13
	add	r13, r12
	mov.b	0(r12), r12
	tst.b	r12
	mov	r2, r13
	rra	r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB92_3
.LBB92_3:                               ;   in Loop: Header=BB92_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB92_6
	jmp	.LBB92_4
.LBB92_4:                               ;   in Loop: Header=BB92_1 Depth=1
	jmp	.LBB92_5
.LBB92_5:                               ;   in Loop: Header=BB92_1 Depth=1
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB92_1
.LBB92_6:
	mov	2(r1), r12
	add	#8, r1
	ret
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
                                        ; -- End function
	.globl	strpbrk                         ; -- Begin function strpbrk
	.p2align	1
	.type	strpbrk,@function
strpbrk:                                ; @strpbrk
; %bb.0:
	sub	#8, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	jmp	.LBB93_1
.LBB93_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB93_3 Depth 2
	mov	4(r1), r12
	mov.b	0(r12), r12
	tst.b	r12
	jeq	.LBB93_8
	jmp	.LBB93_2
.LBB93_2:                               ;   in Loop: Header=BB93_1 Depth=1
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
	ret
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
                                        ; -- End function
	.globl	strrchr                         ; -- Begin function strrchr
	.p2align	1
	.type	strrchr,@function
strrchr:                                ; @strrchr
; %bb.0:
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	clr	0(r1)
	jmp	.LBB94_1
.LBB94_1:                               ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	2(r1), r13
	cmp	r13, r12
	jne	.LBB94_3
	jmp	.LBB94_2
.LBB94_2:                               ;   in Loop: Header=BB94_1 Depth=1
	mov	4(r1), r12
	mov	r12, 0(r1)
	jmp	.LBB94_3
.LBB94_3:                               ;   in Loop: Header=BB94_1 Depth=1
	jmp	.LBB94_4
.LBB94_4:                               ;   in Loop: Header=BB94_1 Depth=1
	mov	4(r1), r12
	mov	r12, r13
	inc	r13
	mov	r13, 4(r1)
	mov.b	0(r12), r12
	tst.b	r12
	jne	.LBB94_1
	jmp	.LBB94_5
.LBB94_5:
	mov	0(r1), r12
	add	#6, r1
	ret
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
                                        ; -- End function
	.globl	strstr                          ; -- Begin function strstr
	.p2align	1
	.type	strstr,@function
strstr:                                 ; @strstr
; %bb.0:
	sub	#10, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
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
	mov	2(r1), r12
	mov	4(r1), r13
	mov	0(r1), r14
	call	#strncmp
	tst	r12
	jne	.LBB95_6
	jmp	.LBB95_5
.LBB95_5:
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
	jge	.LBB96_2
	jmp	.LBB96_1
.LBB96_1:
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
	jge	.LBB96_4
	jmp	.LBB96_2
.LBB96_2:
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
	jl	.LBB96_5
	jmp	.LBB96_3
.LBB96_3:
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
	jge	.LBB96_5
	jmp	.LBB96_4
.LBB96_4:
	mov	12(r1), r13
	mov	8(r1), r14
	mov	10(r1), r15
	mov	14(r1), r12
	xor	#-32768, r12
	mov	r15, 18(r1)
	mov	r14, 16(r1)
	mov	r13, 20(r1)
	mov	r12, 22(r1)
	jmp	.LBB96_6
.LBB96_5:
	mov	8(r1), r12
	mov	10(r1), r13
	mov	12(r1), r14
	mov	14(r1), r15
	mov	r15, 22(r1)
	mov	r14, 20(r1)
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	jmp	.LBB96_6
.LBB96_6:
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
	sub	#14, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
	mov	r15, 4(r1)
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
	mov	10(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB97_12
.LBB97_2:
	mov	8(r1), r12
	mov	4(r1), r13
	cmp	r13, r12
	jhs	.LBB97_4
	jmp	.LBB97_3
.LBB97_3:
	clr	12(r1)
	jmp	.LBB97_12
.LBB97_4:
	mov	10(r1), r12
	mov	r12, 2(r1)
	jmp	.LBB97_5
.LBB97_5:                               ; =>This Inner Loop Header: Depth=1
	mov	2(r1), r13
	mov	0(r1), r12
	cmp	r13, r12
	jlo	.LBB97_11
	jmp	.LBB97_6
.LBB97_6:                               ;   in Loop: Header=BB97_5 Depth=1
	mov	2(r1), r12
	mov.b	0(r12), r12
	sxt	r12
	mov	6(r1), r13
	mov.b	0(r13), r13
	sxt	r13
	cmp	r13, r12
	jne	.LBB97_9
	jmp	.LBB97_7
.LBB97_7:                               ;   in Loop: Header=BB97_5 Depth=1
	mov	2(r1), r12
	inc	r12
	mov	6(r1), r13
	inc	r13
	mov	4(r1), r14
	add	#-1, r14
	call	#memcmp
	tst	r12
	jne	.LBB97_9
	jmp	.LBB97_8
.LBB97_8:
	mov	2(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB97_12
.LBB97_9:                               ;   in Loop: Header=BB97_5 Depth=1
	jmp	.LBB97_10
.LBB97_10:                              ;   in Loop: Header=BB97_5 Depth=1
	mov	2(r1), r12
	inc	r12
	mov	r12, 2(r1)
	jmp	.LBB97_5
.LBB97_11:
	clr	12(r1)
	jmp	.LBB97_12
.LBB97_12:
	mov	12(r1), r12
	add	#14, r1
	ret
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
                                        ; -- End function
	.globl	mempcpy                         ; -- Begin function mempcpy
	.p2align	1
	.type	mempcpy,@function
mempcpy:                                ; @mempcpy
; %bb.0:
	sub	#8, r1
	mov	r12, 6(r1)
	mov	r13, 4(r1)
	mov	r14, 2(r1)
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
	jmp	.LBB99_14
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
	jge	.LBB99_13
	jmp	.LBB99_8
.LBB99_8:
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
	jeq	.LBB99_13
	jmp	.LBB99_9
.LBB99_9:
	jmp	.LBB99_10
.LBB99_10:                              ; =>This Inner Loop Header: Depth=1
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
	jge	.LBB99_12
	jmp	.LBB99_11
.LBB99_11:                              ;   in Loop: Header=BB99_10 Depth=1
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
	jmp	.LBB99_10
.LBB99_12:
	jmp	.LBB99_13
.LBB99_13:
	jmp	.LBB99_14
.LBB99_14:
	mov	0(r1), r13
	mov	20(r1), r12
	mov	r13, 0(r12)
	mov	2(r1), r12
	tst	r12
	jeq	.LBB99_16
	jmp	.LBB99_15
.LBB99_15:
	mov	8(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	mov	10(r1), r12
	xor	#-32768, r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 8(r1)
	mov	r12, 10(r1)
	jmp	.LBB99_16
.LBB99_16:
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
	mov.b	18(r1), r12
	bit.b	#1, r12
	jeq	.LBB100_6
	jmp	.LBB100_3
.LBB100_3:                              ;   in Loop: Header=BB100_1 Depth=1
	mov	40(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	38(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	34(r1), r11
	mov	36(r1), r12
	mov	32(r1), r13
	mov	r13, 4(r1)                      ; 2-byte Folded Spill
	mov	30(r1), r13
	mov	r13, 6(r1)                      ; 2-byte Folded Spill
	mov	26(r1), r15
	mov	28(r1), r14
	mov	r14, r13
	add	r12, r13
	mov	r15, r12
	add	r11, r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	cmp	r15, r12
	mov	r2, r11
	mov	#1, r15
	mov	r15, 10(r1)                     ; 2-byte Folded Spill
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
	mov	8(r1), r15                      ; 2-byte Folded Reload
	mov	10(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r8                       ; 2-byte Folded Reload
	mov	0(r1), r7                       ; 2-byte Folded Reload
	mov	4(r1), r12                      ; 2-byte Folded Reload
	mov	2(r1), r13                      ; 2-byte Folded Reload
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
	jne	.LBB101_6
	jmp	.LBB101_4
.LBB101_4:                              ;   in Loop: Header=BB101_1 Depth=1
	mov	16(r1), r12
	mov	14(r1), r13
	bis	r12, r13
	clr.b	r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB101_6
	jmp	.LBB101_5
.LBB101_5:                              ;   in Loop: Header=BB101_1 Depth=1
	mov.b	21(r1), r12
	bit.b	#-128, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB101_6
.LBB101_6:                              ;   in Loop: Header=BB101_1 Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB101_8
	jmp	.LBB101_7
.LBB101_7:                              ;   in Loop: Header=BB101_1 Depth=1
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
.LBB101_8:
	jmp	.LBB101_9
.LBB101_9:                              ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB101_15
	jmp	.LBB101_10
.LBB101_10:                             ;   in Loop: Header=BB101_9 Depth=1
	mov	22(r1), r15
	mov	24(r1), r13
	mov	18(r1), r11
	mov	20(r1), r14
	cmp	r14, r13
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	mov	r10, 0(r1)                      ; 2-byte Folded Spill
	cmp	r11, r15
	mov	r2, r15
	bic	r15, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB101_12
; %bb.11:                               ;   in Loop: Header=BB101_9 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB101_12:                             ;   in Loop: Header=BB101_9 Depth=1
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB101_14
	jmp	.LBB101_13
.LBB101_13:                             ;   in Loop: Header=BB101_9 Depth=1
	mov	18(r1), r14
	mov	20(r1), r15
	mov	22(r1), r13
	mov	24(r1), r12
	sub	r15, r12
	cmp	r14, r13
	mov	r2, r11
	mov	#1, r15
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
	jmp	.LBB101_14
.LBB101_14:                             ;   in Loop: Header=BB101_9 Depth=1
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
	jmp	.LBB101_9
.LBB101_15:
	mov	36(r1), r12
	tst	r12
	jeq	.LBB101_17
	jmp	.LBB101_16
.LBB101_16:
	mov	22(r1), r12
	mov	24(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB101_18
.LBB101_17:
	mov	10(r1), r12
	mov	12(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB101_18
.LBB101_18:
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
	sub	#6, r1
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 3(r1)
	mov.b	3(r1), r12
	sxt	r12
	tst	r12
	jge	.LBB102_2
	jmp	.LBB102_1
.LBB102_1:
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
	ret
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
                                        ; -- End function
	.globl	__clrsbdi2                      ; -- Begin function __clrsbdi2
	.p2align	1
	.type	__clrsbdi2,@function
__clrsbdi2:                             ; @__clrsbdi2
; %bb.0:
	sub	#34, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	30(r1), r12
	tst	r12
	jge	.LBB103_2
	jmp	.LBB103_1
.LBB103_1:
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
	ret
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
                                        ; -- End function
	.globl	__mulsi3                        ; -- Begin function __mulsi3
	.p2align	1
	.type	__mulsi3,@function
__mulsi3:                               ; @__mulsi3
; %bb.0:
	sub	#6, r1
	mov	r12, 4(r1)
	mov	r13, 2(r1)
	clr	0(r1)
	jmp	.LBB104_1
.LBB104_1:                              ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB104_5
	jmp	.LBB104_2
.LBB104_2:                              ;   in Loop: Header=BB104_1 Depth=1
	mov.b	4(r1), r12
	bit.b	#1, r12
	jeq	.LBB104_4
	jmp	.LBB104_3
.LBB104_3:                              ;   in Loop: Header=BB104_1 Depth=1
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
	jlo	.LBB105_2
	jmp	.LBB105_1
.LBB105_1:
	mov	2(r1), r13
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	cmp	r13, r12
	jhs	.LBB105_10
	jmp	.LBB105_2
.LBB105_2:
	clr	8(r1)
	jmp	.LBB105_3
.LBB105_3:                              ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov	6(r1), r13
	cmp	r13, r12
	jhs	.LBB105_6
	jmp	.LBB105_4
.LBB105_4:                              ;   in Loop: Header=BB105_3 Depth=1
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
	jmp	.LBB105_5
.LBB105_5:                              ;   in Loop: Header=BB105_3 Depth=1
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB105_3
.LBB105_6:
	jmp	.LBB105_7
.LBB105_7:                              ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	mov	4(r1), r12
	cmp	r13, r12
	jhs	.LBB105_9
	jmp	.LBB105_8
.LBB105_8:                              ;   in Loop: Header=BB105_7 Depth=1
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
	jmp	.LBB105_7
.LBB105_9:
	jmp	.LBB105_14
.LBB105_10:
	jmp	.LBB105_11
.LBB105_11:                             ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 10(r1)
	tst	r12
	jeq	.LBB105_13
	jmp	.LBB105_12
.LBB105_12:                             ;   in Loop: Header=BB105_11 Depth=1
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB105_11
.LBB105_13:
	jmp	.LBB105_14
.LBB105_14:
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
	sub	#14, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	mov	r14, 8(r1)
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
	jlo	.LBB106_2
	jmp	.LBB106_1
.LBB106_1:
	mov	2(r1), r13
	mov	0(r1), r12
	mov	8(r1), r14
	add	r14, r12
	cmp	r13, r12
	jhs	.LBB106_9
	jmp	.LBB106_2
.LBB106_2:
	clr	6(r1)
	jmp	.LBB106_3
.LBB106_3:                              ; =>This Inner Loop Header: Depth=1
	mov	6(r1), r12
	mov	4(r1), r13
	cmp	r13, r12
	jhs	.LBB106_6
	jmp	.LBB106_4
.LBB106_4:                              ;   in Loop: Header=BB106_3 Depth=1
	mov	10(r1), r12
	mov	6(r1), r14
	add	r14, r14
	add	r14, r12
	mov	0(r12), r13
	mov	12(r1), r12
	add	r14, r12
	mov	r13, 0(r12)
	jmp	.LBB106_5
.LBB106_5:                              ;   in Loop: Header=BB106_3 Depth=1
	mov	6(r1), r12
	inc	r12
	mov	r12, 6(r1)
	jmp	.LBB106_3
.LBB106_6:
	mov.b	8(r1), r12
	bit.b	#1, r12
	jeq	.LBB106_8
	jmp	.LBB106_7
.LBB106_7:
	mov	0(r1), r12
	mov	8(r1), r14
	add	#-1, r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB106_8
.LBB106_8:
	jmp	.LBB106_13
.LBB106_9:
	jmp	.LBB106_10
.LBB106_10:                             ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 8(r1)
	tst	r12
	jeq	.LBB106_12
	jmp	.LBB106_11
.LBB106_11:                             ;   in Loop: Header=BB106_10 Depth=1
	mov	0(r1), r12
	mov	8(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB106_10
.LBB106_12:
	jmp	.LBB106_13
.LBB106_13:
	add	#14, r1
	ret
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
                                        ; -- End function
	.globl	__cmovw                         ; -- Begin function __cmovw
	.p2align	1
	.type	__cmovw,@function
__cmovw:                                ; @__cmovw
; %bb.0:
	sub	#16, r1
	mov	r12, 14(r1)
	mov	r13, 12(r1)
	mov	r14, 10(r1)
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
	jlo	.LBB107_2
	jmp	.LBB107_1
.LBB107_1:
	mov	2(r1), r13
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	cmp	r13, r12
	jhs	.LBB107_10
	jmp	.LBB107_2
.LBB107_2:
	clr	8(r1)
	jmp	.LBB107_3
.LBB107_3:                              ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r12
	mov	6(r1), r13
	cmp	r13, r12
	jhs	.LBB107_6
	jmp	.LBB107_4
.LBB107_4:                              ;   in Loop: Header=BB107_3 Depth=1
	mov	12(r1), r12
	mov	8(r1), r14
	add	r14, r14
	add	r14, r12
	mov	0(r12), r13
	mov	14(r1), r12
	add	r14, r12
	mov	r13, 0(r12)
	jmp	.LBB107_5
.LBB107_5:                              ;   in Loop: Header=BB107_3 Depth=1
	mov	8(r1), r12
	inc	r12
	mov	r12, 8(r1)
	jmp	.LBB107_3
.LBB107_6:
	jmp	.LBB107_7
.LBB107_7:                              ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r13
	mov	4(r1), r12
	cmp	r13, r12
	jhs	.LBB107_9
	jmp	.LBB107_8
.LBB107_8:                              ;   in Loop: Header=BB107_7 Depth=1
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
	jmp	.LBB107_7
.LBB107_9:
	jmp	.LBB107_14
.LBB107_10:
	jmp	.LBB107_11
.LBB107_11:                             ; =>This Inner Loop Header: Depth=1
	mov	10(r1), r12
	mov	r12, r13
	add	#-1, r13
	mov	r13, 10(r1)
	tst	r12
	jeq	.LBB107_13
	jmp	.LBB107_12
.LBB107_12:                             ;   in Loop: Header=BB107_11 Depth=1
	mov	0(r1), r12
	mov	10(r1), r14
	add	r14, r12
	mov.b	0(r12), r13
	mov	2(r1), r12
	add	r14, r12
	mov.b	r13, 0(r12)
	jmp	.LBB107_11
.LBB107_13:
	jmp	.LBB107_14
.LBB107_14:
	add	#16, r1
	ret
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
                                        ; -- End function
	.globl	__modi                          ; -- Begin function __modi
	.p2align	1
	.type	__modi,@function
__modi:                                 ; @__modi
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
	mov	2(r1), r12
	mov	0(r1), r13
	call	#__mspabi_remi
	add	#4, r1
	ret
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
                                        ; -- End function
	.globl	__uitod                         ; -- Begin function __uitod
	.p2align	1
	.type	__uitod,@function
__uitod:                                ; @__uitod
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	clr	r13
	call	#__mspabi_fltuld
	add	#2, r1
	ret
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
                                        ; -- End function
	.globl	__uitof                         ; -- Begin function __uitof
	.p2align	1
	.type	__uitof,@function
__uitof:                                ; @__uitof
; %bb.0:
	sub	#2, r1
	mov	r12, 0(r1)
	mov	0(r1), r12
	clr	r13
	call	#__mspabi_fltulf
	add	#2, r1
	ret
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
                                        ; -- End function
	.globl	__ulltod                        ; -- Begin function __ulltod
	.p2align	1
	.type	__ulltod,@function
__ulltod:                               ; @__ulltod
; %bb.0:
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	0(r1), r12
	mov	2(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	call	#__mspabi_fltulld
	add	#8, r1
	ret
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
                                        ; -- End function
	.globl	__ulltof                        ; -- Begin function __ulltof
	.p2align	1
	.type	__ulltof,@function
__ulltof:                               ; @__ulltof
; %bb.0:
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	0(r1), r12
	mov	2(r1), r13
	mov	4(r1), r14
	mov	6(r1), r15
	call	#__mspabi_fltullf
	add	#8, r1
	ret
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
                                        ; -- End function
	.globl	__umodi                         ; -- Begin function __umodi
	.p2align	1
	.type	__umodi,@function
__umodi:                                ; @__umodi
; %bb.0:
	sub	#4, r1
	mov	r12, 2(r1)
	mov	r13, 0(r1)
	mov	2(r1), r12
	mov	0(r1), r13
	call	#__mspabi_remu
	add	#4, r1
	ret
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
                                        ; -- End function
	.globl	__clzhi2                        ; -- Begin function __clzhi2
	.p2align	1
	.type	__clzhi2,@function
__clzhi2:                               ; @__clzhi2
; %bb.0:
	sub	#8, r1
	mov	r12, 6(r1)
	clr	4(r1)
	jmp	.LBB114_1
.LBB114_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB114_3 Depth 2
	mov	4(r1), r12
	cmp	#16, r12
	jge	.LBB114_8
	jmp	.LBB114_2
.LBB114_2:                              ;   in Loop: Header=BB114_1 Depth=1
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
	ret
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
                                        ; -- End function
	.globl	__ctzhi2                        ; -- Begin function __ctzhi2
	.p2align	1
	.type	__ctzhi2,@function
__ctzhi2:                               ; @__ctzhi2
; %bb.0:
	sub	#8, r1
	mov	r12, 6(r1)
	clr	4(r1)
	jmp	.LBB115_1
.LBB115_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB115_3 Depth 2
	mov	4(r1), r12
	cmp	#16, r12
	jge	.LBB115_8
	jmp	.LBB115_2
.LBB115_2:                              ;   in Loop: Header=BB115_1 Depth=1
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
	ret
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
                                        ; -- End function
	.globl	__fixunssfsi                    ; -- Begin function __fixunssfsi
	.p2align	1
	.type	__fixunssfsi,@function
__fixunssfsi:                           ; @__fixunssfsi
; %bb.0:
	sub	#8, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	0(r1), r12
	mov	2(r1), r13
	clr	r14
	mov	#18176, r15
	call	#__mspabi_cmpf
	tst	r12
	jl	.LBB116_2
	jmp	.LBB116_1
.LBB116_1:
	mov	0(r1), r12
	mov	2(r1), r13
	clr	r14
	mov	#-14592, r15
	call	#__mspabi_addf
	call	#__mspabi_fixfli
	mov	r12, r14
	mov	r14, r12
	add	#-32768, r12
	cmp	r14, r12
	mov	r2, r15
	mov	#1, r14
	bic	r15, r14
	add	r14, r13
	mov	r12, 4(r1)
	mov	r13, 6(r1)
	jmp	.LBB116_3
.LBB116_2:
	mov	0(r1), r12
	mov	2(r1), r13
	call	#__mspabi_fixfli
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	jmp	.LBB116_3
.LBB116_3:
	mov	4(r1), r12
	mov	6(r1), r13
	add	#8, r1
	ret
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
                                        ; -- End function
	.globl	__parityhi2                     ; -- Begin function __parityhi2
	.p2align	1
	.type	__parityhi2,@function
__parityhi2:                            ; @__parityhi2
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
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
	ret
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
                                        ; -- End function
	.globl	__popcounthi2                   ; -- Begin function __popcounthi2
	.p2align	1
	.type	__popcounthi2,@function
__popcounthi2:                          ; @__popcounthi2
; %bb.0:
	sub	#10, r1
	mov	r12, 8(r1)
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
	ret
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
                                        ; -- End function
	.globl	__mulsi3_iq2000                 ; -- Begin function __mulsi3_iq2000
	.p2align	1
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        ; @__mulsi3_iq2000
; %bb.0:
	sub	#12, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	r15, 6(r1)
	mov	r14, 4(r1)
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
	mov.b	8(r1), r12
	bit.b	#1, r12
	jeq	.LBB119_4
	jmp	.LBB119_3
.LBB119_3:                              ;   in Loop: Header=BB119_1 Depth=1
	mov	4(r1), r15
	mov	6(r1), r13
	mov	0(r1), r14
	mov	2(r1), r12
	add	r13, r12
	mov	r14, r13
	add	r15, r13
	cmp	r14, r13
	mov	r2, r15
	mov	#1, r14
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
	ret
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
                                        ; -- End function
	.globl	__mulsi3_lm32                   ; -- Begin function __mulsi3_lm32
	.p2align	1
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          ; @__mulsi3_lm32
; %bb.0:
	sub	#16, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 10(r1)
	mov	r12, 8(r1)
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	clr	2(r1)
	clr	0(r1)
	mov	10(r1), r13
	mov	8(r1), r12
	bis	r13, r12
	tst	r12
	jne	.LBB120_2
	jmp	.LBB120_1
.LBB120_1:
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
	mov.b	4(r1), r12
	bit.b	#1, r12
	jeq	.LBB120_6
	jmp	.LBB120_5
.LBB120_5:                              ;   in Loop: Header=BB120_3 Depth=1
	mov	8(r1), r15
	mov	10(r1), r13
	mov	0(r1), r14
	mov	2(r1), r12
	add	r13, r12
	mov	r14, r13
	add	r15, r13
	cmp	r14, r13
	mov	r2, r15
	mov	#1, r14
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
	jne	.LBB121_6
	jmp	.LBB121_4
.LBB121_4:                              ;   in Loop: Header=BB121_1 Depth=1
	mov	16(r1), r12
	mov	14(r1), r13
	bis	r12, r13
	clr.b	r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB121_6
	jmp	.LBB121_5
.LBB121_5:                              ;   in Loop: Header=BB121_1 Depth=1
	mov.b	21(r1), r12
	bit.b	#-128, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB121_6
.LBB121_6:                              ;   in Loop: Header=BB121_1 Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB121_8
	jmp	.LBB121_7
.LBB121_7:                              ;   in Loop: Header=BB121_1 Depth=1
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
.LBB121_8:
	jmp	.LBB121_9
.LBB121_9:                              ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB121_15
	jmp	.LBB121_10
.LBB121_10:                             ;   in Loop: Header=BB121_9 Depth=1
	mov	22(r1), r15
	mov	24(r1), r13
	mov	18(r1), r11
	mov	20(r1), r14
	cmp	r14, r13
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	mov	r10, 0(r1)                      ; 2-byte Folded Spill
	cmp	r11, r15
	mov	r2, r15
	bic	r15, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB121_12
; %bb.11:                               ;   in Loop: Header=BB121_9 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB121_12:                             ;   in Loop: Header=BB121_9 Depth=1
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB121_14
	jmp	.LBB121_13
.LBB121_13:                             ;   in Loop: Header=BB121_9 Depth=1
	mov	18(r1), r14
	mov	20(r1), r15
	mov	22(r1), r13
	mov	24(r1), r12
	sub	r15, r12
	cmp	r14, r13
	mov	r2, r11
	mov	#1, r15
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
	jmp	.LBB121_14
.LBB121_14:                             ;   in Loop: Header=BB121_9 Depth=1
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
	jmp	.LBB121_9
.LBB121_15:
	mov	36(r1), r12
	tst	r12
	jeq	.LBB121_17
	jmp	.LBB121_16
.LBB121_16:
	mov	22(r1), r12
	mov	24(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB121_18
.LBB121_17:
	mov	10(r1), r12
	mov	12(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB121_18
.LBB121_18:
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
	sub	#10, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	r15, 2(r1)
	mov	r14, 0(r1)
	mov	4(r1), r12
	mov	6(r1), r13
	mov	0(r1), r14
	mov	2(r1), r15
	call	#__mspabi_cmpf
	tst	r12
	jge	.LBB122_2
	jmp	.LBB122_1
.LBB122_1:
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
	mov	#1, 8(r1)
	jmp	.LBB122_5
.LBB122_4:
	clr	8(r1)
	jmp	.LBB122_5
.LBB122_5:
	mov	8(r1), r12
	add	#10, r1
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
	sub	#14, r1
	mov	r12, 12(r1)
	mov	r13, 10(r1)
	clr	6(r1)
	clr	4(r1)
	mov	10(r1), r12
	tst	r12
	jge	.LBB126_2
	jmp	.LBB126_1
.LBB126_1:
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
	jeq	.LBB126_5
	jmp	.LBB126_4
.LBB126_4:                              ;   in Loop: Header=BB126_3 Depth=1
	mov.b	9(r1), r12
	sxt	r12
	cmp	#16, r12
	mov	r2, r13
	mov	#1, r12
	bic	r13, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 3(r1)                      ; 1-byte Folded Spill
	jmp	.LBB126_5
.LBB126_5:                              ;   in Loop: Header=BB126_3 Depth=1
	mov.b	3(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB126_10
	jmp	.LBB126_6
.LBB126_6:                              ;   in Loop: Header=BB126_3 Depth=1
	mov.b	10(r1), r12
	bit.b	#1, r12
	jeq	.LBB126_8
	jmp	.LBB126_7
.LBB126_7:                              ;   in Loop: Header=BB126_3 Depth=1
	mov	12(r1), r13
	mov	4(r1), r12
	add	r13, r12
	mov	r12, 4(r1)
	jmp	.LBB126_8
.LBB126_8:                              ;   in Loop: Header=BB126_3 Depth=1
	mov	12(r1), r12
	add	r12, r12
	mov	r12, 12(r1)
	mov	10(r1), r12
	rra	r12
	mov	r12, 10(r1)
	jmp	.LBB126_9
.LBB126_9:                              ;   in Loop: Header=BB126_3 Depth=1
	mov.b	9(r1), r12
	inc.b	r12
	mov.b	r12, 9(r1)
	jmp	.LBB126_3
.LBB126_10:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB126_12
	jmp	.LBB126_11
.LBB126_11:
	mov	4(r1), r13
	clr	r12
	sub	r13, r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB126_13
.LBB126_12:
	mov	4(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	jmp	.LBB126_13
.LBB126_13:
	mov	0(r1), r12                      ; 2-byte Folded Reload
	add	#14, r1
	ret
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
                                        ; -- End function
	.globl	__divsi3                        ; -- Begin function __divsi3
	.p2align	1
	.type	__divsi3,@function
__divsi3:                               ; @__divsi3
; %bb.0:
	sub	#16, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	clr	6(r1)
	mov	14(r1), r12
	tst	r12
	jge	.LBB127_2
	jmp	.LBB127_1
.LBB127_1:
	mov	14(r1), r15
	mov	12(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	mov	#1, r12
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
	mov	10(r1), r15
	mov	8(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	mov	#1, r12
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
	mov	4(r1), r15
	mov	2(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	mov	#1, r12
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
	ret
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
                                        ; -- End function
	.globl	__modsi3                        ; -- Begin function __modsi3
	.p2align	1
	.type	__modsi3,@function
__modsi3:                               ; @__modsi3
; %bb.0:
	sub	#16, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	clr	6(r1)
	mov	14(r1), r12
	tst	r12
	jge	.LBB128_2
	jmp	.LBB128_1
.LBB128_1:
	mov	14(r1), r15
	mov	12(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	mov	#1, r12
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
	mov	10(r1), r15
	mov	8(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	mov	#1, r12
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
	mov	4(r1), r15
	mov	2(r1), r14
	tst	r14
	mov	r2, r13
	rra	r13
	mov	#1, r12
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
	ret
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
                                        ; -- End function
	.globl	__udivmodhi4                    ; -- Begin function __udivmodhi4
	.p2align	1
	.type	__udivmodhi4,@function
__udivmodhi4:                           ; @__udivmodhi4
; %bb.0:
	sub	#14, r1
	mov	r12, 10(r1)
	mov	r13, 8(r1)
	mov	r14, 6(r1)
	mov	#1, 4(r1)
	clr	2(r1)
	jmp	.LBB129_1
.LBB129_1:                              ; =>This Inner Loop Header: Depth=1
	mov	8(r1), r13
	mov	10(r1), r14
	clr.b	r12
	cmp	r14, r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jhs	.LBB129_4
	jmp	.LBB129_2
.LBB129_2:                              ;   in Loop: Header=BB129_1 Depth=1
	mov	4(r1), r13
	clr.b	r12
	tst	r13
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jeq	.LBB129_4
	jmp	.LBB129_3
.LBB129_3:                              ;   in Loop: Header=BB129_1 Depth=1
	mov.b	9(r1), r12
	bit.b	#-128, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 1(r1)                      ; 1-byte Folded Spill
	jmp	.LBB129_4
.LBB129_4:                              ;   in Loop: Header=BB129_1 Depth=1
	mov.b	1(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB129_6
	jmp	.LBB129_5
.LBB129_5:                              ;   in Loop: Header=BB129_1 Depth=1
	mov	8(r1), r12
	add	r12, r12
	mov	r12, 8(r1)
	mov	4(r1), r12
	add	r12, r12
	mov	r12, 4(r1)
	jmp	.LBB129_1
.LBB129_6:
	jmp	.LBB129_7
.LBB129_7:                              ; =>This Inner Loop Header: Depth=1
	mov	4(r1), r12
	tst	r12
	jeq	.LBB129_11
	jmp	.LBB129_8
.LBB129_8:                              ;   in Loop: Header=BB129_7 Depth=1
	mov	10(r1), r12
	mov	8(r1), r13
	cmp	r13, r12
	jlo	.LBB129_10
	jmp	.LBB129_9
.LBB129_9:                              ;   in Loop: Header=BB129_7 Depth=1
	mov	8(r1), r13
	mov	10(r1), r12
	sub	r13, r12
	mov	r12, 10(r1)
	mov	4(r1), r13
	mov	2(r1), r12
	bis	r13, r12
	mov	r12, 2(r1)
	jmp	.LBB129_10
.LBB129_10:                             ;   in Loop: Header=BB129_7 Depth=1
	mov	4(r1), r12
	clrc
	rrc	r12
	mov	r12, 4(r1)
	mov	8(r1), r12
	clrc
	rrc	r12
	mov	r12, 8(r1)
	jmp	.LBB129_7
.LBB129_11:
	mov	6(r1), r12
	tst	r12
	jeq	.LBB129_13
	jmp	.LBB129_12
.LBB129_12:
	mov	10(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB129_14
.LBB129_13:
	mov	2(r1), r12
	mov	r12, 12(r1)
	jmp	.LBB129_14
.LBB129_14:
	mov	12(r1), r12
	add	#14, r1
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
	jne	.LBB130_6
	jmp	.LBB130_4
.LBB130_4:                              ;   in Loop: Header=BB130_1 Depth=1
	mov	16(r1), r12
	mov	14(r1), r13
	bis	r12, r13
	clr.b	r12
	tst	r13
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jeq	.LBB130_6
	jmp	.LBB130_5
.LBB130_5:                              ;   in Loop: Header=BB130_1 Depth=1
	mov.b	21(r1), r12
	bit.b	#-128, r12
	mov	r2, r12
	rra	r12
	and	#1, r12
                                        ; kill: def $r12b killed $r12b killed $r12
	mov.b	r12, 5(r1)                      ; 1-byte Folded Spill
	jmp	.LBB130_6
.LBB130_6:                              ;   in Loop: Header=BB130_1 Depth=1
	mov.b	5(r1), r12                      ; 1-byte Folded Reload
                                        ; kill: def $r12 killed $r12b
	bit	#1, r12
	jeq	.LBB130_8
	jmp	.LBB130_7
.LBB130_7:                              ;   in Loop: Header=BB130_1 Depth=1
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
.LBB130_8:
	jmp	.LBB130_9
.LBB130_9:                              ; =>This Inner Loop Header: Depth=1
	mov	16(r1), r13
	mov	14(r1), r12
	bis	r13, r12
	tst	r12
	jeq	.LBB130_15
	jmp	.LBB130_10
.LBB130_10:                             ;   in Loop: Header=BB130_9 Depth=1
	mov	22(r1), r15
	mov	24(r1), r13
	mov	18(r1), r11
	mov	20(r1), r14
	cmp	r14, r13
	mov	r2, r9
	mov	#1, r12
	mov	r12, r10
	bic	r9, r10
	mov	r10, 0(r1)                      ; 2-byte Folded Spill
	cmp	r11, r15
	mov	r2, r15
	bic	r15, r12
	cmp	r14, r13
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	jeq	.LBB130_12
; %bb.11:                               ;   in Loop: Header=BB130_9 Depth=1
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
.LBB130_12:                             ;   in Loop: Header=BB130_9 Depth=1
	mov	2(r1), r12                      ; 2-byte Folded Reload
	bit	#1, r12
	jne	.LBB130_14
	jmp	.LBB130_13
.LBB130_13:                             ;   in Loop: Header=BB130_9 Depth=1
	mov	18(r1), r14
	mov	20(r1), r15
	mov	22(r1), r13
	mov	24(r1), r12
	sub	r15, r12
	cmp	r14, r13
	mov	r2, r11
	mov	#1, r15
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
	jmp	.LBB130_14
.LBB130_14:                             ;   in Loop: Header=BB130_9 Depth=1
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
	jmp	.LBB130_9
.LBB130_15:
	mov	36(r1), r12
	tst	r12
	jeq	.LBB130_17
	jmp	.LBB130_16
.LBB130_16:
	mov	22(r1), r12
	mov	24(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB130_18
.LBB130_17:
	mov	10(r1), r12
	mov	12(r1), r13
	mov	r13, 28(r1)
	mov	r12, 26(r1)
	jmp	.LBB130_18
.LBB130_18:
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
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	42(r1), r11
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	#32, 22(r1)
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov.b	42(r1), r12
	bit.b	#32, r12
	jeq	.LBB131_2
	jmp	.LBB131_1
.LBB131_1:
	clr	8(r1)
	clr	6(r1)
	mov	14(r1), r12
	mov	16(r1), r13
	mov.b	42(r1), r14
	add.b	#-32, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_slll
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	jmp	.LBB131_5
.LBB131_2:
	mov	42(r1), r12
	tst	r12
	jne	.LBB131_4
	jmp	.LBB131_3
.LBB131_3:
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
	mov.b	42(r1), r14
	call	#__mspabi_slll
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	42(r1), r14
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
	ret
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
                                        ; -- End function
	.globl	__ashrdi3                       ; -- Begin function __ashrdi3
	.p2align	1
	.type	__ashrdi3,@function
__ashrdi3:                              ; @__ashrdi3
; %bb.0:
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	42(r1), r11
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	#32, 22(r1)
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov.b	42(r1), r12
	bit.b	#32, r12
	jeq	.LBB132_2
	jmp	.LBB132_1
.LBB132_1:
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
	mov.b	42(r1), r14
	add.b	#-32, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_sral
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	jmp	.LBB132_5
.LBB132_2:
	mov	42(r1), r12
	tst	r12
	jne	.LBB132_4
	jmp	.LBB132_3
.LBB132_3:
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
	mov.b	42(r1), r14
	call	#__mspabi_sral
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	42(r1), r14
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
	ret
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
                                        ; -- End function
	.globl	__bswapdi2                      ; -- Begin function __bswapdi2
	.p2align	1
	.type	__bswapdi2,@function
__bswapdi2:                             ; @__bswapdi2
; %bb.0:
	sub	#8, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 6(r1)
	mov	r14, 4(r1)
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	0(r1), r15
	mov	2(r1), r14
	mov	4(r1), r13
	mov	6(r1), r12
	swpb	r12
	swpb	r13
	swpb	r14
	swpb	r15
	add	#8, r1
	ret
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
                                        ; -- End function
	.globl	__bswapsi2                      ; -- Begin function __bswapsi2
	.p2align	1
	.type	__bswapsi2,@function
__bswapsi2:                             ; @__bswapsi2
; %bb.0:
	sub	#4, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	0(r1), r13
	mov	2(r1), r12
	swpb	r12
	swpb	r13
	add	#4, r1
	ret
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
                                        ; -- End function
	.globl	__clzsi2                        ; -- Begin function __clzsi2
	.p2align	1
	.type	__clzsi2,@function
__clzsi2:                               ; @__clzsi2
; %bb.0:
	sub	#18, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 16(r1)
	mov	r12, 14(r1)
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
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r15
	mov	8(r1), r13
	mov	2(r1), r14
	mov	4(r1), r12
	add	r13, r12
	mov	r14, r13
	add	r15, r13
	cmp	r14, r13
	mov	r2, r15
	mov	#1, r14
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
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
	mov	64(r1), r12
	mov	66(r1), r13
	mov	68(r1), r14
	mov	70(r1), r15
	mov	r15, 54(r1)
	mov	r14, 52(r1)
	mov	r13, 50(r1)
	mov	r12, 48(r1)
	mov	56(r1), r12
	mov	58(r1), r13
	mov	60(r1), r14
	mov	62(r1), r15
	mov	r15, 46(r1)
	mov	r14, 44(r1)
	mov	r13, 42(r1)
	mov	r12, 40(r1)
	mov	52(r1), r12
	mov	r12, 28(r1)                     ; 2-byte Folded Spill
	mov	54(r1), r13
	mov	r13, 30(r1)                     ; 2-byte Folded Spill
	mov	44(r1), r12
	mov	r12, 32(r1)                     ; 2-byte Folded Spill
	mov	46(r1), r14
	mov	r14, 34(r1)                     ; 2-byte Folded Spill
	clr	r12
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	mov	#1, r12
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
	sub	#18, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 16(r1)
	mov	r12, 14(r1)
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
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	6(r1), r15
	mov	8(r1), r13
	mov	2(r1), r14
	mov	4(r1), r12
	add	r13, r12
	mov	r14, r13
	add	r15, r13
	cmp	r14, r13
	mov	r2, r15
	mov	#1, r14
	mov	r14, 0(r1)                      ; 2-byte Folded Spill
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
	ret
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
                                        ; -- End function
	.globl	__lshrdi3                       ; -- Begin function __lshrdi3
	.p2align	1
	.type	__lshrdi3,@function
__lshrdi3:                              ; @__lshrdi3
; %bb.0:
	sub	#40, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	42(r1), r11
	mov	r15, 30(r1)
	mov	r14, 28(r1)
	mov	r13, 26(r1)
	mov	r12, 24(r1)
	mov	#32, 22(r1)
	mov	24(r1), r12
	mov	26(r1), r13
	mov	28(r1), r14
	mov	30(r1), r15
	mov	r15, 20(r1)
	mov	r14, 18(r1)
	mov	r13, 16(r1)
	mov	r12, 14(r1)
	mov.b	42(r1), r12
	bit.b	#32, r12
	jeq	.LBB139_2
	jmp	.LBB139_1
.LBB139_1:
	clr	12(r1)
	clr	10(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	42(r1), r14
	add.b	#-32, r14
                                        ; kill: def $r14 killed $r14b
	call	#__mspabi_srll
	mov	r13, 8(r1)
	mov	r12, 6(r1)
	jmp	.LBB139_5
.LBB139_2:
	mov	42(r1), r12
	tst	r12
	jne	.LBB139_4
	jmp	.LBB139_3
.LBB139_3:
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
	mov.b	42(r1), r14
	call	#__mspabi_srll
	mov	r13, 12(r1)
	mov	r12, 10(r1)
	mov	18(r1), r12
	mov	20(r1), r13
	mov.b	42(r1), r14
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
	mov	r12, r11
	mov	4(r1), r14
	mov	6(r1), r12
	add	r13, r12
	mov	r14, r13
	add	r11, r13
	cmp	r14, r13
	mov	r2, r11
	mov	#1, r14
	mov	r14, 2(r1)                      ; 2-byte Folded Spill
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
	sub	#44, r1
	mov	r15, r8
	mov	r14, r9
	mov	r13, r10
	mov	r12, r11
	mov	60(r1), r15
	mov	58(r1), r14
	mov	56(r1), r13
	mov	54(r1), r12
                                        ; kill: def $r7 killed $r8
                                        ; kill: def $r7 killed $r9
                                        ; kill: def $r7 killed $r10
                                        ; kill: def $r7 killed $r11
	mov	r8, 42(r1)
	mov	r9, 40(r1)
	mov	r10, 38(r1)
	mov	r11, 36(r1)
	mov	r15, 34(r1)
	mov	r14, 32(r1)
	mov	r13, 30(r1)
	mov	r12, 28(r1)
	mov	36(r1), r12
	mov	38(r1), r13
	mov	40(r1), r14
	mov	42(r1), r15
	mov	r15, 26(r1)
	mov	r14, 24(r1)
	mov	r13, 22(r1)
	mov	r12, 20(r1)
	mov	28(r1), r12
	mov	30(r1), r13
	mov	32(r1), r14
	mov	34(r1), r15
	mov	r15, 18(r1)
	mov	r14, 16(r1)
	mov	r13, 14(r1)
	mov	r12, 12(r1)
	mov	22(r1), r13
	mov	20(r1), r12
	mov	14(r1), r15
	mov	12(r1), r14
	call	#__muldsi3
	mov	r15, 10(r1)
	mov	r14, 8(r1)
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	24(r1), r12
	mov	26(r1), r13
	mov	12(r1), r14
	mov	14(r1), r15
	call	#__mspabi_mpyl
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	r13, 2(r1)                      ; 2-byte Folded Spill
	mov	20(r1), r12
	mov	22(r1), r13
	mov	16(r1), r14
	mov	18(r1), r15
	call	#__mspabi_mpyl
	mov	r12, r14
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	r13, r15
	mov	2(r1), r13                      ; 2-byte Folded Reload
	add	r15, r13
	mov	r12, r11
	add	r14, r11
	cmp	r12, r11
	mov	r2, r15
	mov	#1, r14
	mov	r14, r12
	bic	r15, r12
	add	r12, r13
	mov	8(r1), r15
	mov	10(r1), r12
	add	r13, r12
	mov	r15, r13
	add	r11, r13
	cmp	r15, r13
	mov	r2, r15
	bic	r15, r14
	add	r14, r12
	mov	r13, 8(r1)
	mov	r12, 10(r1)
	mov	4(r1), r12
	mov	6(r1), r13
	mov	8(r1), r14
	mov	10(r1), r15
	add	#44, r1
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
	mov	22(r1), r12
	mov	r12, 0(r1)                      ; 2-byte Folded Spill
	mov	20(r1), r12
	mov	r12, 2(r1)                      ; 2-byte Folded Spill
	mov	16(r1), r14
	mov	r14, 4(r1)                      ; 2-byte Folded Spill
	mov	18(r1), r13
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
	jeq	.LBB142_2
; %bb.1:
	mov	10(r1), r12                     ; 2-byte Folded Reload
	mov	r12, 14(r1)                     ; 2-byte Folded Spill
.LBB142_2:
	mov	12(r1), r10                     ; 2-byte Folded Reload
	mov	6(r1), r11                      ; 2-byte Folded Reload
	mov	4(r1), r9                       ; 2-byte Folded Reload
	mov	0(r1), r12                      ; 2-byte Folded Reload
	mov	8(r1), r8                       ; 2-byte Folded Reload
	mov	2(r1), r7                       ; 2-byte Folded Reload
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
	sub	#24, r1
                                        ; kill: def $r11 killed $r15
                                        ; kill: def $r11 killed $r14
                                        ; kill: def $r11 killed $r13
                                        ; kill: def $r11 killed $r12
	mov	r15, 22(r1)
	mov	r14, 20(r1)
	mov	r13, 18(r1)
	mov	r12, 16(r1)
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
	ret
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
                                        ; -- End function
	.globl	__paritysi2                     ; -- Begin function __paritysi2
	.p2align	1
	.type	__paritysi2,@function
__paritysi2:                            ; @__paritysi2
; %bb.0:
	sub	#12, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 10(r1)
	mov	r12, 8(r1)
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
	mov	66(r1), r12
	mov	68(r1), r13
	mov	70(r1), r14
	mov	72(r1), r15
	mov	r15, 64(r1)
	mov	r14, 62(r1)
	mov	r13, 60(r1)
	mov	r12, 58(r1)
	mov	58(r1), r15
	mov	r15, 32(r1)                     ; 2-byte Folded Spill
	mov	60(r1), r13
	mov	r13, 34(r1)                     ; 2-byte Folded Spill
	mov	62(r1), r12
	mov	r12, 36(r1)                     ; 2-byte Folded Spill
	mov	64(r1), r10
	clrc
	mov	r10, r8
	rrc	r8
	clrc
	mov	r12, r9
	rrc	r9
	clrc
	mov	r13, r14
	rrc	r14
	clrc
	mov	r15, r11
	rrc	r11
	and	#21845, r11
	mov	r11, 38(r1)                     ; 2-byte Folded Spill
	and	#21845, r14
	mov	r14, 40(r1)                     ; 2-byte Folded Spill
	and	#21845, r9
	mov	r9, 42(r1)                      ; 2-byte Folded Spill
	and	#21845, r8
	sub	r8, r10
	cmp	r9, r12
	mov	r2, r8
	mov	#1, r12
	mov	r12, 44(r1)                     ; 2-byte Folded Spill
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
	mov	44(r1), r15                     ; 2-byte Folded Reload
	mov	38(r1), r10                     ; 2-byte Folded Reload
	mov	32(r1), r11                     ; 2-byte Folded Reload
	mov	50(r1), r9                      ; 2-byte Folded Reload
	mov	40(r1), r8                      ; 2-byte Folded Reload
	mov	34(r1), r14                     ; 2-byte Folded Reload
	mov	46(r1), r12                     ; 2-byte Folded Reload
	mov	42(r1), r6                      ; 2-byte Folded Reload
	mov	36(r1), r13                     ; 2-byte Folded Reload
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
	mov	44(r1), r15                     ; 2-byte Folded Reload
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
	mov	44(r1), r14                     ; 2-byte Folded Reload
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
	push	r10
	sub	#8, r1
                                        ; kill: def $r14 killed $r13
                                        ; kill: def $r14 killed $r12
	mov	r13, 6(r1)
	mov	r12, 4(r1)
	mov	4(r1), r12
	mov	6(r1), r13
	mov	r13, 2(r1)
	mov	r12, 0(r1)
	mov	0(r1), r13
	mov	2(r1), r12
	clrc
	mov	r12, r14
	rrc	r14
	clrc
	mov	r13, r15
	rrc	r15
	and	#21845, r15
	and	#21845, r14
	sub	r14, r12
	cmp	r15, r13
	mov	r2, r10
	mov	#1, r14
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
	mov	38(r1), r13
	clr	r12
	mov	r12, 8(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
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
	mov.b	38(r1), r12
	bit.b	#1, r12
	jeq	.LBB147_5
	jmp	.LBB147_4
.LBB147_4:                              ;   in Loop: Header=BB147_3 Depth=1
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
	sub	#20, r1
                                        ; kill: def $r15 killed $r13
                                        ; kill: def $r15 killed $r12
	mov	r13, 18(r1)
	mov	r12, 16(r1)
	mov	r14, 14(r1)
	mov	14(r1), r13
	clr	r12
	mov	r12, 4(r1)                      ; 2-byte Folded Spill
	mov	#1, r12
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
	mov.b	14(r1), r12
	bit.b	#1, r12
	jeq	.LBB148_5
	jmp	.LBB148_4
.LBB148_4:                              ;   in Loop: Header=BB148_3 Depth=1
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
