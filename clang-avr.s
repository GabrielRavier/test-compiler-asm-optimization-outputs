	.text
.set __tmp_reg__, 0
.set __zero_reg__, 1
.set __SREG__, 63
.set __SP_H__, 62
.set __SP_L__, 61
	.file	"mini-libc.c"
	.globl	memmove                         ; -- Begin function memmove
	.p2align	1
	.type	memmove,@function
memmove:                                ; @memmove
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	std	Y+6, r21
	std	Y+5, r20
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+1
	ldd	r25, Y+2
	ldd	r18, Y+3
	ldd	r19, Y+4
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB0_1
	rjmp	.LBB0_6
.LBB0_1:
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r24, Y+1
	ldd	r25, Y+2
	add	r24, r18
	adc	r25, r19
	std	Y+2, r25
	std	Y+1, r24
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r24, Y+3
	ldd	r25, Y+4
	add	r24, r18
	adc	r25, r19
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB0_2
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB0_5
	rjmp	.LBB0_3
.LBB0_3:                                ;   in Loop: Header=BB0_2 Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	sbiw	r26, 1
	std	Y+2, r27
	std	Y+1, r26
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	sbiw	r26, 1
	std	Y+4, r27
	std	Y+3, r26
	st	X, r24
	rjmp	.LBB0_4
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB0_2
.LBB0_5:
	rjmp	.LBB0_13
.LBB0_6:
	ldd	r24, Y+1
	ldd	r25, Y+2
	ldd	r18, Y+3
	ldd	r19, Y+4
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB0_7
	rjmp	.LBB0_12
.LBB0_7:
	rjmp	.LBB0_8
.LBB0_8:                                ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB0_11
	rjmp	.LBB0_9
.LBB0_9:                                ;   in Loop: Header=BB0_8 Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+2, r25
	std	Y+1, r24
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	mov	r30, r26
	mov	r31, r27
	adiw	r30, 1
	std	Y+4, r31
	std	Y+3, r30
	st	X, r24
	rjmp	.LBB0_10
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB0_8
.LBB0_11:
	rjmp	.LBB0_12
.LBB0_12:
	rjmp	.LBB0_13
.LBB0_13:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        ; -- End function
	.globl	memccpy                         ; -- Begin function memccpy
	.p2align	1
	.type	memccpy,@function
memccpy:                                ; @memccpy
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 17
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+15, r25
	std	Y+14, r24
	std	Y+13, r23
	std	Y+12, r22
	std	Y+11, r21
	std	Y+10, r20
	std	Y+9, r19
	std	Y+8, r18
	ldd	r24, Y+14
	ldd	r25, Y+15
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+12
	ldd	r25, Y+13
	std	Y+5, r25
	std	Y+4, r24
	ldd	r24, Y+10
	clr	r25
	std	Y+11, r25
	std	Y+10, r24
	rjmp	.LBB1_1
.LBB1_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+8
	ldd	r21, Y+9
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	breq	.LBB1_5
	rjmp	.LBB1_2
.LBB1_2:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r26, Y+4
	ldd	r27, Y+5
	ld	r24, X
	ldd	r26, Y+6
	ldd	r27, Y+7
	st	X, r24
	mov	r18, r24
	clr	r19
	ldd	r20, Y+10
	ldd	r21, Y+11
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brne	.LBB1_3
	rjmp	.LBB1_4
.LBB1_3:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB1_5
	rjmp	.LBB1_5
.LBB1_4:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB1_3
.LBB1_5:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB1_8
	rjmp	.LBB1_6
.LBB1_6:                                ;   in Loop: Header=BB1_1 Depth=1
	rjmp	.LBB1_7
.LBB1_7:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+8
	ldd	r25, Y+9
	sbiw	r24, 1
	std	Y+9, r25
	std	Y+8, r24
	ldd	r24, Y+4
	ldd	r25, Y+5
	adiw	r24, 1
	std	Y+5, r25
	std	Y+4, r24
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	rjmp	.LBB1_1
.LBB1_8:
	ldd	r18, Y+8
	ldd	r19, Y+9
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB1_10
	rjmp	.LBB1_9
.LBB1_9:
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+17, r25
	std	Y+16, r24
	rjmp	.LBB1_11
.LBB1_10:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+17, r25
	std	Y+16, r24
	rjmp	.LBB1_11
.LBB1_11:
	ldd	r24, Y+16
	ldd	r25, Y+17
	adiw	r28, 17
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        ; -- End function
	.globl	memchr                          ; -- Begin function memchr
	.p2align	1
	.type	memchr,@function
memchr:                                 ; @memchr
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 13
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+13, r25
	std	Y+12, r24
	std	Y+11, r23
	std	Y+10, r22
	std	Y+9, r21
	std	Y+8, r20
	ldd	r24, Y+12
	ldd	r25, Y+13
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+10
	clr	r25
	std	Y+11, r25
	std	Y+10, r24
	rjmp	.LBB2_1
.LBB2_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+8
	ldd	r21, Y+9
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB2_5
	rjmp	.LBB2_2
.LBB2_2:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r24, X
	mov	r18, r24
	clr	r19
	ldd	r20, Y+10
	ldd	r21, Y+11
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brne	.LBB2_3
	rjmp	.LBB2_4
.LBB2_3:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB2_5
	rjmp	.LBB2_5
.LBB2_4:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB2_3
.LBB2_5:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB2_8
	rjmp	.LBB2_6
.LBB2_6:                                ;   in Loop: Header=BB2_1 Depth=1
	rjmp	.LBB2_7
.LBB2_7:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+8
	ldd	r25, Y+9
	sbiw	r24, 1
	std	Y+9, r25
	std	Y+8, r24
	rjmp	.LBB2_1
.LBB2_8:
	ldd	r18, Y+8
	ldd	r19, Y+9
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB2_10
	rjmp	.LBB2_9
.LBB2_9:
	ldd	r24, Y+6
	ldd	r25, Y+7
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB2_11
.LBB2_10:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB2_11
.LBB2_11:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 13
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        ; -- End function
	.globl	memcmp                          ; -- Begin function memcmp
	.p2align	1
	.type	memcmp,@function
memcmp:                                 ; @memcmp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+15, r25
	std	Y+14, r24
	std	Y+13, r23
	std	Y+12, r22
	std	Y+11, r21
	std	Y+10, r20
	ldd	r24, Y+14
	ldd	r25, Y+15
	std	Y+9, r25
	std	Y+8, r24
	ldd	r24, Y+12
	ldd	r25, Y+13
	std	Y+7, r25
	std	Y+6, r24
	rjmp	.LBB3_1
.LBB3_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+10
	ldd	r21, Y+11
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB3_5
	rjmp	.LBB3_2
.LBB3_2:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r26, Y+8
	ldd	r27, Y+9
	ld	r24, X
	mov	r18, r24
	clr	r19
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r24, X
	mov	r20, r24
	clr	r21
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	breq	.LBB3_3
	rjmp	.LBB3_4
.LBB3_3:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB3_5
	rjmp	.LBB3_5
.LBB3_4:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB3_3
.LBB3_5:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB3_8
	rjmp	.LBB3_6
.LBB3_6:                                ;   in Loop: Header=BB3_1 Depth=1
	rjmp	.LBB3_7
.LBB3_7:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+10
	ldd	r25, Y+11
	sbiw	r24, 1
	std	Y+11, r25
	std	Y+10, r24
	ldd	r24, Y+8
	ldd	r25, Y+9
	adiw	r24, 1
	std	Y+9, r25
	std	Y+8, r24
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	rjmp	.LBB3_1
.LBB3_8:
	ldd	r18, Y+10
	ldd	r19, Y+11
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB3_10
	rjmp	.LBB3_9
.LBB3_9:
	ldd	r26, Y+8
	ldd	r27, Y+9
	ld	r24, X
	clr	r25
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r18, X
	clr	r19
	sub	r24, r18
	sbc	r25, r19
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB3_11
.LBB3_10:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB3_11
.LBB3_11:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        ; -- End function
	.globl	memcpy                          ; -- Begin function memcpy
	.p2align	1
	.type	memcpy,@function
memcpy:                                 ; @memcpy
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	std	Y+6, r21
	std	Y+5, r20
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB4_1
.LBB4_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB4_4
	rjmp	.LBB4_2
.LBB4_2:                                ;   in Loop: Header=BB4_1 Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+2, r25
	std	Y+1, r24
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	mov	r30, r26
	mov	r31, r27
	adiw	r30, 1
	std	Y+4, r31
	std	Y+3, r30
	st	X, r24
	rjmp	.LBB4_3
.LBB4_3:                                ;   in Loop: Header=BB4_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB4_1
.LBB4_4:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        ; -- End function
	.globl	memrchr                         ; -- Begin function memrchr
	.p2align	1
	.type	memrchr,@function
memrchr:                                ; @memrchr
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+5
	clr	r25
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB5_1
.LBB5_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB5_5
	rjmp	.LBB5_2
.LBB5_2:                                ;   in Loop: Header=BB5_1 Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	ldd	r24, Y+3
	ldd	r25, Y+4
	add	r26, r24
	adc	r27, r25
	ld	r24, X
	clr	r25
	ldd	r18, Y+5
	ldd	r19, Y+6
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB5_4
	rjmp	.LBB5_3
.LBB5_3:
	ldd	r24, Y+1
	ldd	r25, Y+2
	ldd	r18, Y+3
	ldd	r19, Y+4
	add	r24, r18
	adc	r25, r19
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB5_6
.LBB5_4:                                ;   in Loop: Header=BB5_1 Depth=1
	rjmp	.LBB5_1
.LBB5_5:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB5_6
.LBB5_6:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        ; -- End function
	.globl	memset                          ; -- Begin function memset
	.p2align	1
	.type	memset,@function
memset:                                 ; @memset
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	std	Y+6, r21
	std	Y+5, r20
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB6_1
.LBB6_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB6_4
	rjmp	.LBB6_2
.LBB6_2:                                ;   in Loop: Header=BB6_1 Depth=1
	ldd	r24, Y+7
	ldd	r26, Y+3
	ldd	r27, Y+4
	st	X, r24
	rjmp	.LBB6_3
.LBB6_3:                                ;   in Loop: Header=BB6_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB6_1
.LBB6_4:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        ; -- End function
	.globl	stpcpy                          ; -- Begin function stpcpy
	.p2align	1
	.type	stpcpy,@function
stpcpy:                                 ; @stpcpy
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	std	Y+2, r23
	std	Y+1, r22
	rjmp	.LBB7_1
.LBB7_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	st	X, r24
	cpi	r24, 0
	breq	.LBB7_4
	rjmp	.LBB7_2
.LBB7_2:                                ;   in Loop: Header=BB7_1 Depth=1
	rjmp	.LBB7_3
.LBB7_3:                                ;   in Loop: Header=BB7_1 Depth=1
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r24, 1
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB7_1
.LBB7_4:
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        ; -- End function
	.globl	strchrnul                       ; -- Begin function strchrnul
	.p2align	1
	.type	strchrnul,@function
strchrnul:                              ; @strchrnul
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+7, r25
	std	Y+6, r24
	std	Y+5, r23
	std	Y+4, r22
	ldd	r24, Y+4
	clr	r25
	std	Y+5, r25
	std	Y+4, r24
	rjmp	.LBB8_1
.LBB8_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r25, X
	mov	r24, r1
	cpi	r25, 0
	std	Y+3, r24                        ; 1-byte Folded Spill
	breq	.LBB8_5
	rjmp	.LBB8_2
.LBB8_2:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r24, X
	mov	r18, r24
	clr	r19
	ldd	r20, Y+4
	ldd	r21, Y+5
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brne	.LBB8_3
	rjmp	.LBB8_4
.LBB8_3:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB8_5
	rjmp	.LBB8_5
.LBB8_4:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB8_3
.LBB8_5:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB8_8
	rjmp	.LBB8_6
.LBB8_6:                                ;   in Loop: Header=BB8_1 Depth=1
	rjmp	.LBB8_7
.LBB8_7:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	rjmp	.LBB8_1
.LBB8_8:
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        ; -- End function
	.globl	strchr                          ; -- Begin function strchr
	.p2align	1
	.type	strchr,@function
strchr:                                 ; @strchr
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	std	Y+2, r23
	std	Y+1, r22
	rjmp	.LBB9_1
.LBB9_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	ldd	r18, Y+1
	ldd	r19, Y+2
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB9_3
	rjmp	.LBB9_2
.LBB9_2:
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB9_6
.LBB9_3:                                ;   in Loop: Header=BB9_1 Depth=1
	rjmp	.LBB9_4
.LBB9_4:                                ;   in Loop: Header=BB9_1 Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	ld	r24, X
	cpi	r24, 0
	brne	.LBB9_1
	rjmp	.LBB9_5
.LBB9_5:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB9_6
.LBB9_6:
	ldd	r24, Y+5
	ldd	r25, Y+6
	adiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        ; -- End function
	.globl	strcmp                          ; -- Begin function strcmp
	.p2align	1
	.type	strcmp,@function
strcmp:                                 ; @strcmp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+7, r25
	std	Y+6, r24
	std	Y+5, r23
	std	Y+4, r22
	rjmp	.LBB10_1
.LBB10_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r24, X
	mov	r18, r24
	mov	r19, r24
	lsl	r19
	sbc	r19, r19
	ldd	r26, Y+4
	ldd	r27, Y+5
	ld	r24, X
	mov	r20, r24
	mov	r21, r24
	lsl	r21
	sbc	r21, r21
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+3, r24                        ; 1-byte Folded Spill
	brne	.LBB10_5
	rjmp	.LBB10_2
.LBB10_2:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r25, X
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+2, r24                        ; 1-byte Folded Spill
	brne	.LBB10_3
	rjmp	.LBB10_4
.LBB10_3:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB10_5
	rjmp	.LBB10_5
.LBB10_4:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB10_3
.LBB10_5:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB10_8
	rjmp	.LBB10_6
.LBB10_6:                               ;   in Loop: Header=BB10_1 Depth=1
	rjmp	.LBB10_7
.LBB10_7:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+4
	ldd	r25, Y+5
	adiw	r24, 1
	std	Y+5, r25
	std	Y+4, r24
	rjmp	.LBB10_1
.LBB10_8:
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r24, X
	clr	r25
	ldd	r26, Y+4
	ldd	r27, Y+5
	ld	r18, X
	clr	r19
	sub	r24, r18
	sbc	r25, r19
	adiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        ; -- End function
	.globl	strlen                          ; -- Begin function strlen
	.p2align	1
	.type	strlen,@function
strlen:                                 ; @strlen
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB11_1
.LBB11_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	ld	r24, X
	cpi	r24, 0
	breq	.LBB11_4
	rjmp	.LBB11_2
.LBB11_2:                               ;   in Loop: Header=BB11_1 Depth=1
	rjmp	.LBB11_3
.LBB11_3:                               ;   in Loop: Header=BB11_1 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB11_1
.LBB11_4:
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+1
	ldd	r19, Y+2
	sub	r24, r18
	sbc	r25, r19
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        ; -- End function
	.globl	strncmp                         ; -- Begin function strncmp
	.p2align	1
	.type	strncmp,@function
strncmp:                                ; @strncmp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+13, r25
	std	Y+12, r24
	std	Y+11, r23
	std	Y+10, r22
	std	Y+9, r21
	std	Y+8, r20
	ldd	r24, Y+12
	ldd	r25, Y+13
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+10
	ldd	r25, Y+11
	std	Y+5, r25
	std	Y+4, r24
	ldd	r30, Y+8
	ldd	r31, Y+9
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+9, r25
	std	Y+8, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB12_2
	rjmp	.LBB12_1
.LBB12_1:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+15, r25
	std	Y+14, r24
	rjmp	.LBB12_13
.LBB12_2:
	rjmp	.LBB12_3
.LBB12_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r25, X
	mov	r24, r1
	cpi	r25, 0
	std	Y+3, r24                        ; 1-byte Folded Spill
	brne	.LBB12_4
	rjmp	.LBB12_9
.LBB12_4:                               ;   in Loop: Header=BB12_3 Depth=1
	ldd	r26, Y+4
	ldd	r27, Y+5
	ld	r25, X
	mov	r24, r1
	cpi	r25, 0
	std	Y+3, r24                        ; 1-byte Folded Spill
	brne	.LBB12_5
	rjmp	.LBB12_9
.LBB12_5:                               ;   in Loop: Header=BB12_3 Depth=1
	ldd	r20, Y+8
	ldd	r21, Y+9
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	breq	.LBB12_9
	rjmp	.LBB12_6
.LBB12_6:                               ;   in Loop: Header=BB12_3 Depth=1
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r24, X
	mov	r18, r24
	clr	r19
	ldd	r26, Y+4
	ldd	r27, Y+5
	ld	r24, X
	mov	r20, r24
	clr	r21
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB12_7
	rjmp	.LBB12_8
.LBB12_7:                               ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB12_9
	rjmp	.LBB12_9
.LBB12_8:                               ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB12_7
.LBB12_9:                               ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB12_12
	rjmp	.LBB12_10
.LBB12_10:                              ;   in Loop: Header=BB12_3 Depth=1
	rjmp	.LBB12_11
.LBB12_11:                              ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+4
	ldd	r25, Y+5
	adiw	r24, 1
	std	Y+5, r25
	std	Y+4, r24
	ldd	r24, Y+8
	ldd	r25, Y+9
	sbiw	r24, 1
	std	Y+9, r25
	std	Y+8, r24
	rjmp	.LBB12_3
.LBB12_12:
	ldd	r26, Y+6
	ldd	r27, Y+7
	ld	r24, X
	clr	r25
	ldd	r26, Y+4
	ldd	r27, Y+5
	ld	r18, X
	clr	r19
	sub	r24, r18
	sbc	r25, r19
	std	Y+15, r25
	std	Y+14, r24
	rjmp	.LBB12_13
.LBB12_13:
	ldd	r24, Y+14
	ldd	r25, Y+15
	adiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        ; -- End function
	.globl	swab                            ; -- Begin function swab
	.p2align	1
	.type	swab,@function
swab:                                   ; @swab
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	std	Y+6, r21
	std	Y+5, r20
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB13_1
.LBB13_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 2
	cpc	r24, r1
	brlt	.LBB13_4
	rjmp	.LBB13_2
.LBB13_2:                               ;   in Loop: Header=BB13_1 Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	ldd	r24, Z+1
	ldd	r26, Y+1
	ldd	r27, Y+2
	st	X, r24
	ldd	r26, Y+3
	ldd	r27, Y+4
	ld	r24, X
	ldd	r30, Y+1
	ldd	r31, Y+2
	std	Z+1, r24
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r24, 2
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 2
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB13_3
.LBB13_3:                               ;   in Loop: Header=BB13_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 2
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB13_1
.LBB13_4:
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        ; -- End function
	.globl	isalpha                         ; -- Begin function isalpha
	.p2align	1
	.type	isalpha,@function
isalpha:                                ; @isalpha
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	ori	r24, 32
	subi	r24, 97
	sbci	r25, 0
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 26
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB14_1
	rjmp	.LBB14_2
.LBB14_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB14_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB14_1
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        ; -- End function
	.globl	isascii                         ; -- Begin function isascii
	.p2align	1
	.type	isascii,@function
isascii:                                ; @isascii
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	andi	r24, 128
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB15_1
	rjmp	.LBB15_2
.LBB15_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB15_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB15_1
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        ; -- End function
	.globl	isblank                         ; -- Begin function isblank
	.p2align	1
	.type	isblank,@function
isblank:                                ; @isblank
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+5, r25
	std	Y+4, r24
	ldd	r20, Y+4
	ldd	r21, Y+5
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	breq	.LBB16_4
	rjmp	.LBB16_1
.LBB16_1:
	ldd	r24, Y+4
	ldd	r25, Y+5
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 9
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB16_2
	rjmp	.LBB16_3
.LBB16_2:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB16_4
	rjmp	.LBB16_4
.LBB16_3:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB16_2
.LBB16_4:
	ldd	r18, Y+3                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        ; -- End function
	.globl	iscntrl                         ; -- Begin function iscntrl
	.p2align	1
	.type	iscntrl,@function
iscntrl:                                ; @iscntrl
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+5, r25
	std	Y+4, r24
	ldd	r20, Y+4
	ldd	r21, Y+5
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	brlo	.LBB17_4
	rjmp	.LBB17_1
.LBB17_1:
	ldd	r24, Y+4
	ldd	r25, Y+5
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 127
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB17_2
	rjmp	.LBB17_3
.LBB17_2:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB17_4
	rjmp	.LBB17_4
.LBB17_3:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB17_2
.LBB17_4:
	ldd	r18, Y+3                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        ; -- End function
	.globl	isdigit                         ; -- Begin function isdigit
	.p2align	1
	.type	isdigit,@function
isdigit:                                ; @isdigit
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	sbiw	r24, 48
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 10
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB18_1
	rjmp	.LBB18_2
.LBB18_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB18_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB18_1
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        ; -- End function
	.globl	isgraph                         ; -- Begin function isgraph
	.p2align	1
	.type	isgraph,@function
isgraph:                                ; @isgraph
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	sbiw	r24, 33
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 94
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB19_1
	rjmp	.LBB19_2
.LBB19_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB19_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB19_1
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        ; -- End function
	.globl	islower                         ; -- Begin function islower
	.p2align	1
	.type	islower,@function
islower:                                ; @islower
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	subi	r24, 97
	sbci	r25, 0
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 26
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB20_1
	rjmp	.LBB20_2
.LBB20_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB20_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB20_1
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        ; -- End function
	.globl	isprint                         ; -- Begin function isprint
	.p2align	1
	.type	isprint,@function
isprint:                                ; @isprint
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	sbiw	r24, 32
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 95
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB21_1
	rjmp	.LBB21_2
.LBB21_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB21_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB21_1
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        ; -- End function
	.globl	isspace                         ; -- Begin function isspace
	.p2align	1
	.type	isspace,@function
isspace:                                ; @isspace
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+5, r25
	std	Y+4, r24
	ldd	r20, Y+4
	ldd	r21, Y+5
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	breq	.LBB22_4
	rjmp	.LBB22_1
.LBB22_1:
	ldd	r24, Y+4
	ldd	r25, Y+5
	sbiw	r24, 9
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 5
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB22_2
	rjmp	.LBB22_3
.LBB22_2:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB22_4
	rjmp	.LBB22_4
.LBB22_3:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB22_2
.LBB22_4:
	ldd	r18, Y+3                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        ; -- End function
	.globl	isupper                         ; -- Begin function isupper
	.p2align	1
	.type	isupper,@function
isupper:                                ; @isupper
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	subi	r24, 65
	sbci	r25, 0
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 26
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB23_1
	rjmp	.LBB23_2
.LBB23_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB23_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB23_1
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        ; -- End function
	.globl	iswcntrl                        ; -- Begin function iswcntrl
	.p2align	1
	.type	iswcntrl,@function
iswcntrl:                               ; @iswcntrl
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+5, r25
	std	Y+4, r24
	ldd	r20, Y+4
	ldd	r21, Y+5
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	brsh	.LBB24_1
	rjmp	.LBB24_6
.LBB24_1:
	ldd	r20, Y+4
	ldd	r21, Y+5
	subi	r20, 127
	sbci	r21, 0
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 33
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	brsh	.LBB24_2
	rjmp	.LBB24_6
.LBB24_2:
	ldd	r20, Y+4
	ldd	r21, Y+5
	subi	r20, 40
	sbci	r21, 32
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 2
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	brlo	.LBB24_6
	rjmp	.LBB24_3
.LBB24_3:
	ldd	r24, Y+4
	ldd	r25, Y+5
	adiw	r24, 7
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 3
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB24_4
	rjmp	.LBB24_5
.LBB24_4:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB24_6
	rjmp	.LBB24_6
.LBB24_5:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB24_4
.LBB24_6:
	ldd	r18, Y+3                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        ; -- End function
	.globl	iswdigit                        ; -- Begin function iswdigit
	.p2align	1
	.type	iswdigit,@function
iswdigit:                               ; @iswdigit
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	sbiw	r24, 48
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 10
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB25_1
	rjmp	.LBB25_2
.LBB25_1:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB25_2:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB25_1
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        ; -- End function
	.globl	iswprint                        ; -- Begin function iswprint
	.p2align	1
	.type	iswprint,@function
iswprint:                               ; @iswprint
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r25, r18
	mov	r24, r19
	cpi	r25, -1
	cpc	r24, r1
	brsh	.LBB26_4
	rjmp	.LBB26_1
.LBB26_1:
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	andi	r24, 127
	andi	r25, 0
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 33
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brge	.LBB26_2
	rjmp	.LBB26_3
.LBB26_2:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB26_12
.LBB26_3:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB26_2
.LBB26_4:
	ldd	r24, Y+3
	ldd	r25, Y+4
	mov	r18, r24
	mov	r24, r25
	ldi	r25, 32
	cpi	r18, 40
	cpc	r24, r25
	brlo	.LBB26_7
	rjmp	.LBB26_5
.LBB26_5:
	ldd	r24, Y+3
	ldd	r25, Y+4
	subi	r24, 42
	sbci	r25, 32
	mov	r18, r24
	mov	r24, r25
	ldi	r25, -73
	cpi	r18, -42
	cpc	r24, r25
	brlo	.LBB26_7
	rjmp	.LBB26_6
.LBB26_6:
	ldd	r24, Y+3
	ldd	r25, Y+4
	subi	r24, 0
	sbci	r25, 224
	mov	r18, r24
	mov	r24, r25
	ldi	r25, 31
	cpi	r18, -7
	cpc	r24, r25
	brsh	.LBB26_8
	rjmp	.LBB26_7
.LBB26_7:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB26_12
.LBB26_8:
	mov	r24, r1
	cpi	r24, 0
	brne	.LBB26_10
	rjmp	.LBB26_9
.LBB26_9:
	ldd	r24, Y+3
	ldd	r25, Y+4
	andi	r24, 254
	mov	r18, r24
	mov	r24, r25
	ldi	r25, -1
	cpi	r18, -2
	cpc	r24, r25
	brne	.LBB26_11
	rjmp	.LBB26_10
.LBB26_10:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB26_12
.LBB26_11:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB26_12
.LBB26_12:
	ldd	r24, Y+5
	ldd	r25, Y+6
	adiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        ; -- End function
	.globl	iswxdigit                       ; -- Begin function iswxdigit
	.p2align	1
	.type	iswxdigit,@function
iswxdigit:                              ; @iswxdigit
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+5, r25
	std	Y+4, r24
	ldd	r30, Y+4
	ldd	r31, Y+5
	sbiw	r30, 48
	ldi	r24, 1
	mov	r18, r30
	mov	r25, r31
	cpi	r18, 10
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	brlo	.LBB27_4
	rjmp	.LBB27_1
.LBB27_1:
	ldd	r24, Y+4
	ldd	r25, Y+5
	ori	r24, 32
	subi	r24, 97
	sbci	r25, 0
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 6
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB27_2
	rjmp	.LBB27_3
.LBB27_2:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB27_4
	rjmp	.LBB27_4
.LBB27_3:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB27_2
.LBB27_4:
	ldd	r18, Y+3                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        ; -- End function
	.globl	toascii                         ; -- Begin function toascii
	.p2align	1
	.type	toascii,@function
toascii:                                ; @toascii
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+1
	ldd	r25, Y+2
	andi	r24, 127
	andi	r25, 0
	adiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
                                        ; -- End function
	.globl	fdim                            ; -- Begin function fdim
	.p2align	1
	.type	fdim,@function
fdim:                                   ; @fdim
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	brlt	.LBB29_1
	rjmp	.LBB29_2
.LBB29_1:
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB29_4
	rjmp	.LBB29_3
	rjmp	.LBB29_3
.LBB29_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB29_1
.LBB29_3:
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB29_12
.LBB29_4:
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+9
	ldd	r25, Y+10
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brlt	.LBB29_5
	rjmp	.LBB29_6
.LBB29_5:
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB29_8
	rjmp	.LBB29_7
	rjmp	.LBB29_7
.LBB29_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB29_5
.LBB29_7:
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+11
	ldd	r19, Y+12
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB29_12
.LBB29_8:
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	rcall	__gtsf2
	mov	r25, r24
	mov	r24, r1
	cp	r24, r25
	brge	.LBB29_10
	rjmp	.LBB29_9
.LBB29_9:
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	rcall	__subsf3
	std	Y+2, r23                        ; 2-byte Folded Spill
	std	Y+1, r22                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB29_11
.LBB29_10:
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB29_11
.LBB29_11:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+18, r19
	std	Y+17, r18
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB29_12
.LBB29_12:
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
                                        ; -- End function
	.globl	fdimf                           ; -- Begin function fdimf
	.p2align	1
	.type	fdimf,@function
fdimf:                                  ; @fdimf
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	brlt	.LBB30_1
	rjmp	.LBB30_2
.LBB30_1:
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB30_4
	rjmp	.LBB30_3
	rjmp	.LBB30_3
.LBB30_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB30_1
.LBB30_3:
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB30_12
.LBB30_4:
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+9
	ldd	r25, Y+10
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brlt	.LBB30_5
	rjmp	.LBB30_6
.LBB30_5:
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB30_8
	rjmp	.LBB30_7
	rjmp	.LBB30_7
.LBB30_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB30_5
.LBB30_7:
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+11
	ldd	r19, Y+12
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB30_12
.LBB30_8:
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	rcall	__gtsf2
	mov	r25, r24
	mov	r24, r1
	cp	r24, r25
	brge	.LBB30_10
	rjmp	.LBB30_9
.LBB30_9:
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	rcall	__subsf3
	std	Y+2, r23                        ; 2-byte Folded Spill
	std	Y+1, r22                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB30_11
.LBB30_10:
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB30_11
.LBB30_11:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+18, r19
	std	Y+17, r18
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB30_12
.LBB30_12:
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
                                        ; -- End function
	.globl	fmax                            ; -- Begin function fmax
	.p2align	1
	.type	fmax,@function
fmax:                                   ; @fmax
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r21
	std	Y+19, r20
	std	Y+18, r19
	std	Y+17, r18
	ldd	r18, Y+23
	ldd	r19, Y+24
	ldd	r24, Y+21
	ldd	r25, Y+22
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+15, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+16, r24                       ; 1-byte Folded Spill
	brlt	.LBB31_1
	rjmp	.LBB31_2
.LBB31_1:
	ldd	r24, Y+16                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB31_4
	rjmp	.LBB31_3
	rjmp	.LBB31_3
.LBB31_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB31_1
.LBB31_3:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+28, r19
	std	Y+27, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB31_19
.LBB31_4:
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+13, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+14, r24                       ; 1-byte Folded Spill
	brlt	.LBB31_5
	rjmp	.LBB31_6
.LBB31_5:
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB31_8
	rjmp	.LBB31_7
	rjmp	.LBB31_7
.LBB31_6:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB31_5
.LBB31_7:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+23
	ldd	r19, Y+24
	std	Y+28, r19
	std	Y+27, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB31_19
.LBB31_8:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	mov	r20, r1
                                        ; kill: def $r18 killed $r1
	mov	r24, r25
	lsl	r24
	mov	r24, r20
	rol	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r20
	mov	r18, r20
                                        ; kill: def $r19 killed $r20
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r20, Y+17
	ldd	r21, Y+18
	mov	r22, r1
                                        ; kill: def $r20 killed $r1
	mov	r18, r19
	lsl	r18
	mov	r18, r22
	rol	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r22
	mov	r20, r22
                                        ; kill: def $r21 killed $r22
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB31_9
	rjmp	.LBB31_15
.LBB31_9:
	ldd	r24, Y+23
	ldd	r25, Y+24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+12, r24                       ; 1-byte Folded Spill
	brpl	.LBB31_10
	rjmp	.LBB31_11
.LBB31_10:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB31_13
	rjmp	.LBB31_12
	rjmp	.LBB31_12
.LBB31_11:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB31_10
.LBB31_12:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB31_14
.LBB31_13:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB31_14
.LBB31_14:
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r24, Y+9                        ; 2-byte Folded Reload
	ldd	r25, Y+10                       ; 2-byte Folded Reload
	std	Y+26, r19
	std	Y+25, r18
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB31_19
.LBB31_15:
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	rcall	__ltsf2
	tst	r24
	brpl	.LBB31_17
	rjmp	.LBB31_16
.LBB31_16:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB31_18
.LBB31_17:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB31_18
.LBB31_18:
	ldd	r18, Y+3                        ; 2-byte Folded Reload
	ldd	r19, Y+4                        ; 2-byte Folded Reload
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	std	Y+26, r19
	std	Y+25, r18
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB31_19
.LBB31_19:
	ldd	r22, Y+25
	ldd	r23, Y+26
	ldd	r24, Y+27
	ldd	r25, Y+28
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
                                        ; -- End function
	.globl	fmaxf                           ; -- Begin function fmaxf
	.p2align	1
	.type	fmaxf,@function
fmaxf:                                  ; @fmaxf
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	std	Y+16, r19
	std	Y+15, r18
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r24, Y+19
	ldd	r25, Y+20
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+13, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+14, r24                       ; 1-byte Folded Spill
	brlt	.LBB32_1
	rjmp	.LBB32_2
.LBB32_1:
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB32_4
	rjmp	.LBB32_3
	rjmp	.LBB32_3
.LBB32_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB32_1
.LBB32_3:
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB32_19
.LBB32_4:
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	brlt	.LBB32_5
	rjmp	.LBB32_6
.LBB32_5:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB32_8
	rjmp	.LBB32_7
	rjmp	.LBB32_7
.LBB32_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB32_5
.LBB32_7:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB32_19
.LBB32_8:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	mov	r20, r1
                                        ; kill: def $r18 killed $r1
	mov	r24, r25
	lsl	r24
	mov	r24, r20
	rol	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r20
	mov	r18, r20
                                        ; kill: def $r19 killed $r20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r22, r1
                                        ; kill: def $r20 killed $r1
	mov	r18, r19
	lsl	r18
	mov	r18, r22
	rol	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r22
	mov	r20, r22
                                        ; kill: def $r21 killed $r22
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB32_9
	rjmp	.LBB32_15
.LBB32_9:
	ldd	r24, Y+21
	ldd	r25, Y+22
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+10, r24                       ; 1-byte Folded Spill
	brpl	.LBB32_10
	rjmp	.LBB32_11
.LBB32_10:
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB32_13
	rjmp	.LBB32_12
	rjmp	.LBB32_12
.LBB32_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB32_10
.LBB32_12:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB32_14
.LBB32_13:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB32_14
.LBB32_14:
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB32_19
.LBB32_15:
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r20, Y+17
	ldd	r21, Y+18
	rcall	__ltsf2
	tst	r24
	brpl	.LBB32_17
	rjmp	.LBB32_16
.LBB32_16:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB32_18
.LBB32_17:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB32_18
.LBB32_18:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB32_19
.LBB32_19:
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r24, Y+25
	ldd	r25, Y+26
	adiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
                                        ; -- End function
	.globl	fmaxl                           ; -- Begin function fmaxl
	.p2align	1
	.type	fmaxl,@function
fmaxl:                                  ; @fmaxl
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	std	Y+16, r19
	std	Y+15, r18
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r24, Y+19
	ldd	r25, Y+20
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+13, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+14, r24                       ; 1-byte Folded Spill
	brlt	.LBB33_1
	rjmp	.LBB33_2
.LBB33_1:
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB33_4
	rjmp	.LBB33_3
	rjmp	.LBB33_3
.LBB33_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB33_1
.LBB33_3:
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB33_19
.LBB33_4:
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	brlt	.LBB33_5
	rjmp	.LBB33_6
.LBB33_5:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB33_8
	rjmp	.LBB33_7
	rjmp	.LBB33_7
.LBB33_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB33_5
.LBB33_7:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB33_19
.LBB33_8:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	mov	r20, r1
                                        ; kill: def $r18 killed $r1
	mov	r24, r25
	lsl	r24
	mov	r24, r20
	rol	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r20
	mov	r18, r20
                                        ; kill: def $r19 killed $r20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r22, r1
                                        ; kill: def $r20 killed $r1
	mov	r18, r19
	lsl	r18
	mov	r18, r22
	rol	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r22
	mov	r20, r22
                                        ; kill: def $r21 killed $r22
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB33_9
	rjmp	.LBB33_15
.LBB33_9:
	ldd	r24, Y+21
	ldd	r25, Y+22
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+10, r24                       ; 1-byte Folded Spill
	brpl	.LBB33_10
	rjmp	.LBB33_11
.LBB33_10:
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB33_13
	rjmp	.LBB33_12
	rjmp	.LBB33_12
.LBB33_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB33_10
.LBB33_12:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB33_14
.LBB33_13:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB33_14
.LBB33_14:
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB33_19
.LBB33_15:
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r20, Y+17
	ldd	r21, Y+18
	rcall	__ltsf2
	tst	r24
	brpl	.LBB33_17
	rjmp	.LBB33_16
.LBB33_16:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB33_18
.LBB33_17:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB33_18
.LBB33_18:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB33_19
.LBB33_19:
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r24, Y+25
	ldd	r25, Y+26
	adiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
                                        ; -- End function
	.globl	fmin                            ; -- Begin function fmin
	.p2align	1
	.type	fmin,@function
fmin:                                   ; @fmin
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r21
	std	Y+19, r20
	std	Y+18, r19
	std	Y+17, r18
	ldd	r18, Y+23
	ldd	r19, Y+24
	ldd	r24, Y+21
	ldd	r25, Y+22
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+15, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+16, r24                       ; 1-byte Folded Spill
	brlt	.LBB34_1
	rjmp	.LBB34_2
.LBB34_1:
	ldd	r24, Y+16                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB34_4
	rjmp	.LBB34_3
	rjmp	.LBB34_3
.LBB34_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB34_1
.LBB34_3:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+28, r19
	std	Y+27, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB34_19
.LBB34_4:
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+13, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+14, r24                       ; 1-byte Folded Spill
	brlt	.LBB34_5
	rjmp	.LBB34_6
.LBB34_5:
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB34_8
	rjmp	.LBB34_7
	rjmp	.LBB34_7
.LBB34_6:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB34_5
.LBB34_7:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+23
	ldd	r19, Y+24
	std	Y+28, r19
	std	Y+27, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB34_19
.LBB34_8:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	mov	r20, r1
                                        ; kill: def $r18 killed $r1
	mov	r24, r25
	lsl	r24
	mov	r24, r20
	rol	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r20
	mov	r18, r20
                                        ; kill: def $r19 killed $r20
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r20, Y+17
	ldd	r21, Y+18
	mov	r22, r1
                                        ; kill: def $r20 killed $r1
	mov	r18, r19
	lsl	r18
	mov	r18, r22
	rol	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r22
	mov	r20, r22
                                        ; kill: def $r21 killed $r22
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB34_9
	rjmp	.LBB34_15
.LBB34_9:
	ldd	r24, Y+23
	ldd	r25, Y+24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+12, r24                       ; 1-byte Folded Spill
	brpl	.LBB34_10
	rjmp	.LBB34_11
.LBB34_10:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB34_13
	rjmp	.LBB34_12
	rjmp	.LBB34_12
.LBB34_11:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB34_10
.LBB34_12:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB34_14
.LBB34_13:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB34_14
.LBB34_14:
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r24, Y+9                        ; 2-byte Folded Reload
	ldd	r25, Y+10                       ; 2-byte Folded Reload
	std	Y+26, r19
	std	Y+25, r18
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB34_19
.LBB34_15:
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	rcall	__ltsf2
	tst	r24
	brpl	.LBB34_17
	rjmp	.LBB34_16
.LBB34_16:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB34_18
.LBB34_17:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB34_18
.LBB34_18:
	ldd	r18, Y+3                        ; 2-byte Folded Reload
	ldd	r19, Y+4                        ; 2-byte Folded Reload
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	std	Y+26, r19
	std	Y+25, r18
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB34_19
.LBB34_19:
	ldd	r22, Y+25
	ldd	r23, Y+26
	ldd	r24, Y+27
	ldd	r25, Y+28
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
                                        ; -- End function
	.globl	fminf                           ; -- Begin function fminf
	.p2align	1
	.type	fminf,@function
fminf:                                  ; @fminf
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	std	Y+16, r19
	std	Y+15, r18
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r24, Y+19
	ldd	r25, Y+20
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+13, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+14, r24                       ; 1-byte Folded Spill
	brlt	.LBB35_1
	rjmp	.LBB35_2
.LBB35_1:
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB35_4
	rjmp	.LBB35_3
	rjmp	.LBB35_3
.LBB35_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB35_1
.LBB35_3:
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB35_19
.LBB35_4:
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	brlt	.LBB35_5
	rjmp	.LBB35_6
.LBB35_5:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB35_8
	rjmp	.LBB35_7
	rjmp	.LBB35_7
.LBB35_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB35_5
.LBB35_7:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB35_19
.LBB35_8:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	mov	r20, r1
                                        ; kill: def $r18 killed $r1
	mov	r24, r25
	lsl	r24
	mov	r24, r20
	rol	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r20
	mov	r18, r20
                                        ; kill: def $r19 killed $r20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r22, r1
                                        ; kill: def $r20 killed $r1
	mov	r18, r19
	lsl	r18
	mov	r18, r22
	rol	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r22
	mov	r20, r22
                                        ; kill: def $r21 killed $r22
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB35_9
	rjmp	.LBB35_15
.LBB35_9:
	ldd	r24, Y+21
	ldd	r25, Y+22
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+10, r24                       ; 1-byte Folded Spill
	brpl	.LBB35_10
	rjmp	.LBB35_11
.LBB35_10:
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB35_13
	rjmp	.LBB35_12
	rjmp	.LBB35_12
.LBB35_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB35_10
.LBB35_12:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB35_14
.LBB35_13:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB35_14
.LBB35_14:
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB35_19
.LBB35_15:
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r20, Y+17
	ldd	r21, Y+18
	rcall	__ltsf2
	tst	r24
	brpl	.LBB35_17
	rjmp	.LBB35_16
.LBB35_16:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB35_18
.LBB35_17:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB35_18
.LBB35_18:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB35_19
.LBB35_19:
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r24, Y+25
	ldd	r25, Y+26
	adiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
                                        ; -- End function
	.globl	fminl                           ; -- Begin function fminl
	.p2align	1
	.type	fminl,@function
fminl:                                  ; @fminl
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	std	Y+16, r19
	std	Y+15, r18
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r24, Y+19
	ldd	r25, Y+20
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+13, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+14, r24                       ; 1-byte Folded Spill
	brlt	.LBB36_1
	rjmp	.LBB36_2
.LBB36_1:
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB36_4
	rjmp	.LBB36_3
	rjmp	.LBB36_3
.LBB36_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB36_1
.LBB36_3:
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB36_19
.LBB36_4:
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	brlt	.LBB36_5
	rjmp	.LBB36_6
.LBB36_5:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB36_8
	rjmp	.LBB36_7
	rjmp	.LBB36_7
.LBB36_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB36_5
.LBB36_7:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB36_19
.LBB36_8:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	mov	r20, r1
                                        ; kill: def $r18 killed $r1
	mov	r24, r25
	lsl	r24
	mov	r24, r20
	rol	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r20
	mov	r18, r20
                                        ; kill: def $r19 killed $r20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r22, r1
                                        ; kill: def $r20 killed $r1
	mov	r18, r19
	lsl	r18
	mov	r18, r22
	rol	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r22
	mov	r20, r22
                                        ; kill: def $r21 killed $r22
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB36_9
	rjmp	.LBB36_15
.LBB36_9:
	ldd	r24, Y+21
	ldd	r25, Y+22
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+10, r24                       ; 1-byte Folded Spill
	brpl	.LBB36_10
	rjmp	.LBB36_11
.LBB36_10:
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB36_13
	rjmp	.LBB36_12
	rjmp	.LBB36_12
.LBB36_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB36_10
.LBB36_12:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB36_14
.LBB36_13:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB36_14
.LBB36_14:
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB36_19
.LBB36_15:
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r20, Y+17
	ldd	r21, Y+18
	rcall	__ltsf2
	tst	r24
	brpl	.LBB36_17
	rjmp	.LBB36_16
.LBB36_16:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB36_18
.LBB36_17:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB36_18
.LBB36_18:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+24, r19
	std	Y+23, r18
	std	Y+26, r25
	std	Y+25, r24
	rjmp	.LBB36_19
.LBB36_19:
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r24, Y+25
	ldd	r25, Y+26
	adiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
                                        ; -- End function
	.globl	l64a                            ; -- Begin function l64a
	.p2align	1
	.type	l64a,@function
l64a:                                   ; @l64a
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+11
	ldd	r19, Y+12
	std	Y+6, r19
	std	Y+5, r18
	std	Y+4, r25
	std	Y+3, r24
	ldi	r24, lo8(l64a.s)
	ldi	r25, hi8(l64a.s)
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB37_1
.LBB37_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r24, Y+3
	ldd	r25, Y+4
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB37_2
	rjmp	.LBB37_3
.LBB37_2:                               ;   in Loop: Header=BB37_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB37_4
	rjmp	.LBB37_6
.LBB37_3:                               ;   in Loop: Header=BB37_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB37_2
.LBB37_4:                               ;   in Loop: Header=BB37_1 Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	andi	r26, 63
	andi	r27, 0
	subi	r26, lo8(-(digits))
	sbci	r27, hi8(-(digits))
	ld	r24, X
	ldd	r26, Y+7
	ldd	r27, Y+8
	st	X, r24
	rjmp	.LBB37_5
.LBB37_5:                               ;   in Loop: Header=BB37_1 Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r24, 1
	std	Y+8, r25
	std	Y+7, r24
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r20, r1
                                        ; kill: def $r24 killed $r1
	mov	r25, r18
	lsl	r25
	mov	r24, r19
	rol	r24
	mov	r19, r22
	rol	r19
	mov	r18, r23
	rol	r18
	rol	r20
                                        ; kill: def $r21 killed $r1
	lsl	r25
	rol	r24
	rol	r19
	rol	r18
	rol	r20
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+6, r19
	std	Y+5, r18
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB37_1
.LBB37_6:
	ldd	r26, Y+7
	ldd	r27, Y+8
	mov	r24, r1
	st	X, r24
	ldi	r24, lo8(l64a.s)
	ldi	r25, hi8(l64a.s)
	adiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        ; -- End function
	.globl	srand                           ; -- Begin function srand
	.p2align	1
	.type	srand,@function
srand:                                  ; @srand
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+1
	ldd	r25, Y+2
	sbiw	r24, 1
	ldi	r18, 0
	ldi	r19, 0
	sts	seed+7, r19
	sts	seed+6, r18
	sts	seed+5, r19
	sts	seed+4, r18
	sts	seed+3, r19
	sts	seed+2, r18
	sts	seed+1, r25
	sts	seed, r24
	adiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
                                        ; -- End function
	.globl	rand                            ; -- Begin function rand
	.p2align	1
	.type	rand,@function
rand:                                   ; @rand
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	lds	r18, seed
	lds	r19, seed+1
	lds	r20, seed+2
	lds	r21, seed+3
	lds	r22, seed+4
	lds	r23, seed+5
	lds	r24, seed+6
	lds	r25, seed+7
	ldi	r30, 45
	ldi	r31, 127
	ldi	r26, 149
	ldi	r27, 76
	ldi	r16, 45
	ldi	r17, 244
	std	Y+2, r17                        ; 2-byte Folded Spill
	std	Y+1, r16                        ; 2-byte Folded Spill
	ldi	r16, 81
	ldi	r17, 88
	mov	r10, r30
	mov	r11, r31
	ldd	r30, Y+1                        ; 2-byte Folded Reload
	ldd	r31, Y+2                        ; 2-byte Folded Reload
	mov	r12, r26
	mov	r13, r27
	mov	r14, r30
	mov	r15, r31
	rcall	__muldi3
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r24, 255
	sbci	r25, 255
	sts	seed+7, r25
	sts	seed+6, r24
	sts	seed+5, r23
	sts	seed+4, r22
	sts	seed+3, r21
	sts	seed+2, r20
	sts	seed+1, r19
	sts	seed, r18
	lds	r18, seed+6
	lds	r19, seed+7
	lds	r24, seed+4
	lds	r25, seed+5
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
                                        ; kill: def $r19 killed $r20
	adiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
                                        ; -- End function
	.globl	lsearch                         ; -- Begin function lsearch
	.p2align	1
	.type	lsearch,@function
lsearch:                                ; @lsearch
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 32
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+30, r25
	std	Y+29, r24
	std	Y+28, r23
	std	Y+27, r22
	std	Y+26, r21
	std	Y+25, r20
	std	Y+24, r19
	std	Y+23, r18
	std	Y+22, r17
	std	Y+21, r16
	ldd	r24, Y+23
	ldd	r25, Y+24
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	ldd	r24, Y+27
	ldd	r25, Y+28
	std	Y+20, r25
	std	Y+19, r24
	ldd	r30, Y+25
	ldd	r31, Y+26
	ld	r24, Z
	ldd	r25, Z+1
	std	Y+18, r25
	std	Y+17, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB40_1
.LBB40_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+17
	ldd	r19, Y+18
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB40_2
	rjmp	.LBB40_6
.LBB40_2:                               ;   in Loop: Header=BB40_1 Depth=1
	ldd	r22, Y+13                       ; 2-byte Folded Reload
	ldd	r23, Y+14                       ; 2-byte Folded Reload
	ldd	r24, Y+21
	ldd	r25, Y+22
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+29
	ldd	r25, Y+30
	std	Y+12, r25                       ; 2-byte Folded Spill
	std	Y+11, r24                       ; 2-byte Folded Spill
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+15
	ldd	r25, Y+16
	rcall	__mulhi3
	ldd	r22, Y+7                        ; 2-byte Folded Reload
	ldd	r23, Y+8                        ; 2-byte Folded Reload
	ldd	r30, Y+9                        ; 2-byte Folded Reload
	ldd	r31, Y+10                       ; 2-byte Folded Reload
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	add	r22, r18
	adc	r23, r19
	icall
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB40_4
	rjmp	.LBB40_3
.LBB40_3:
	ldd	r22, Y+13                       ; 2-byte Folded Reload
	ldd	r23, Y+14                       ; 2-byte Folded Reload
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+15
	ldd	r25, Y+16
	rcall	__mulhi3
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	add	r24, r18
	adc	r25, r19
	std	Y+32, r25
	std	Y+31, r24
	rjmp	.LBB40_7
.LBB40_4:                               ;   in Loop: Header=BB40_1 Depth=1
	rjmp	.LBB40_5
.LBB40_5:                               ;   in Loop: Header=BB40_1 Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	adiw	r24, 1
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB40_1
.LBB40_6:
	ldd	r22, Y+13                       ; 2-byte Folded Reload
	ldd	r23, Y+14                       ; 2-byte Folded Reload
	ldd	r24, Y+17
	ldd	r25, Y+18
	adiw	r24, 1
	ldd	r30, Y+25
	ldd	r31, Y+26
	std	Z+1, r25
	st	Z, r24
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+17
	ldd	r25, Y+18
	rcall	__mulhi3
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	add	r24, r18
	adc	r25, r19
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r20, Y+23
	ldd	r21, Y+24
	rcall	memcpy
                                        ; kill: def $r19r18 killed $r25r24
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+32, r25
	std	Y+31, r24
	rjmp	.LBB40_7
.LBB40_7:
	ldd	r24, Y+31
	ldd	r25, Y+32
	adiw	r28, 32
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end40:
	.size	lsearch, .Lfunc_end40-lsearch
                                        ; -- End function
	.globl	lfind                           ; -- Begin function lfind
	.p2align	1
	.type	lfind,@function
lfind:                                  ; @lfind
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+26, r25
	std	Y+25, r24
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r17
	std	Y+17, r16
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+23
	ldd	r25, Y+24
	std	Y+16, r25
	std	Y+15, r24
	ldd	r30, Y+21
	ldd	r31, Y+22
	ld	r24, Z
	ldd	r25, Z+1
	std	Y+14, r25
	std	Y+13, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB41_1
.LBB41_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldd	r18, Y+13
	ldd	r19, Y+14
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB41_2
	rjmp	.LBB41_6
.LBB41_2:                               ;   in Loop: Header=BB41_1 Depth=1
	ldd	r22, Y+9                        ; 2-byte Folded Reload
	ldd	r23, Y+10                       ; 2-byte Folded Reload
	ldd	r24, Y+17
	ldd	r25, Y+18
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+25
	ldd	r25, Y+26
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+11
	ldd	r25, Y+12
	rcall	__mulhi3
	ldd	r22, Y+3                        ; 2-byte Folded Reload
	ldd	r23, Y+4                        ; 2-byte Folded Reload
	ldd	r30, Y+5                        ; 2-byte Folded Reload
	ldd	r31, Y+6                        ; 2-byte Folded Reload
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	add	r22, r18
	adc	r23, r19
	icall
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB41_4
	rjmp	.LBB41_3
.LBB41_3:
	ldd	r22, Y+9                        ; 2-byte Folded Reload
	ldd	r23, Y+10                       ; 2-byte Folded Reload
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+11
	ldd	r25, Y+12
	rcall	__mulhi3
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	add	r24, r18
	adc	r25, r19
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB41_7
.LBB41_4:                               ;   in Loop: Header=BB41_1 Depth=1
	rjmp	.LBB41_5
.LBB41_5:                               ;   in Loop: Header=BB41_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB41_1
.LBB41_6:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB41_7
.LBB41_7:
	ldd	r24, Y+27
	ldd	r25, Y+28
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end41:
	.size	lfind, .Lfunc_end41-lfind
                                        ; -- End function
	.globl	abs                             ; -- Begin function abs
	.p2align	1
	.type	abs,@function
abs:                                    ; @abs
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r25, r18
	mov	r24, r19
	cp	r1, r25
	cpc	r1, r24
	brge	.LBB42_2
	rjmp	.LBB42_1
.LBB42_1:
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB42_3
.LBB42_2:
	ldd	r24, Y+3
	ldd	r25, Y+4
	mov	r18, r1
	neg	r25
	neg	r24
	sbc	r25, r18
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB42_3
.LBB42_3:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end42:
	.size	abs, .Lfunc_end42-abs
                                        ; -- End function
	.globl	atoi                            ; -- Begin function atoi
	.p2align	1
	.type	atoi,@function
atoi:                                   ; @atoi
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+10, r25
	std	Y+9, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB43_1
.LBB43_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	rcall	isspace
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB43_3
	rjmp	.LBB43_2
.LBB43_2:                               ;   in Loop: Header=BB43_1 Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB43_1
.LBB43_3:
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r25, X
	mov	r18, r25
	mov	r19, r25
	lsl	r19
	sbc	r19, r19
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	mov	r24, r19
	cpi	r25, 43
	cpc	r24, r1
	breq	.LBB43_6
	rjmp	.LBB43_4
.LBB43_4:
	ldd	r18, Y+3                        ; 2-byte Folded Reload
	ldd	r19, Y+4                        ; 2-byte Folded Reload
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 45
	cpc	r24, r1
	brne	.LBB43_7
	rjmp	.LBB43_5
.LBB43_5:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB43_6
.LBB43_6:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB43_7
.LBB43_7:
	rjmp	.LBB43_8
.LBB43_8:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	rcall	isdigit
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB43_10
	rjmp	.LBB43_9
.LBB43_9:                               ;   in Loop: Header=BB43_8 Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldi	r22, 10
	ldi	r23, 0
	rcall	__mulhi3
	ldd	r26, Y+9
	ldd	r27, Y+10
	mov	r30, r26
	mov	r31, r27
	adiw	r30, 1
	std	Y+10, r31
	std	Y+9, r30
	ld	r18, X
	mov	r19, r18
	lsl	r19
	sbc	r19, r19
	sub	r24, r18
	sbc	r25, r19
	adiw	r24, 48
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB43_8
.LBB43_10:
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB43_12
	rjmp	.LBB43_11
.LBB43_11:
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB43_13
.LBB43_12:
	ldd	r24, Y+7
	ldd	r25, Y+8
	mov	r18, r1
	neg	r25
	neg	r24
	sbc	r25, r18
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB43_13
.LBB43_13:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end43:
	.size	atoi, .Lfunc_end43-atoi
                                        ; -- End function
	.globl	atol                            ; -- Begin function atol
	.p2align	1
	.type	atol,@function
atol:                                   ; @atol
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+14, r25
	std	Y+13, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB44_1
.LBB44_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+13
	ldd	r27, Y+14
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	rcall	isspace
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB44_3
	rjmp	.LBB44_2
.LBB44_2:                               ;   in Loop: Header=BB44_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB44_1
.LBB44_3:
	ldd	r26, Y+13
	ldd	r27, Y+14
	ld	r25, X
	mov	r18, r25
	mov	r19, r25
	lsl	r19
	sbc	r19, r19
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	mov	r24, r19
	cpi	r25, 43
	cpc	r24, r1
	breq	.LBB44_6
	rjmp	.LBB44_4
.LBB44_4:
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 45
	cpc	r24, r1
	brne	.LBB44_7
	rjmp	.LBB44_5
.LBB44_5:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB44_6
.LBB44_6:
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB44_7
.LBB44_7:
	rjmp	.LBB44_8
.LBB44_8:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+13
	ldd	r27, Y+14
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	rcall	isdigit
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB44_9
	rjmp	.LBB44_10
.LBB44_9:                               ;   in Loop: Header=BB44_8 Depth=1
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 10
	ldi	r19, 0
	ldi	r20, 0
	ldi	r21, 0
	rcall	__mulsi3
	ldd	r26, Y+13
	ldd	r27, Y+14
	mov	r30, r26
	mov	r31, r27
	adiw	r30, 1
	std	Y+14, r31
	std	Y+13, r30
	ld	r18, X
	mov	r26, r18
	mov	r27, r18
	lsl	r27
	sbc	r27, r27
	sbiw	r26, 48
	mov	r30, r26
	mov	r31, r27
	lsl	r31
	sbc	r31, r31
	mov	r30, r31
	sub	r22, r26
	sbc	r23, r27
	sbc	r24, r30
	sbc	r25, r31
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	rjmp	.LBB44_8
.LBB44_10:
	ldd	r18, Y+7
	ldd	r19, Y+8
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB44_12
	rjmp	.LBB44_11
.LBB44_11:
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldd	r18, Y+9
	ldd	r19, Y+10
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB44_13
.LBB44_12:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	ldi	r24, 0
	ldi	r25, 0
	mov	r18, r24
	mov	r19, r25
	sub	r18, r22
	sbc	r19, r23
	sbc	r24, r20
	sbc	r25, r21
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB44_13
.LBB44_13:
	ldd	r22, Y+1                        ; 2-byte Folded Reload
	ldd	r23, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	adiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end44:
	.size	atol, .Lfunc_end44-atol
                                        ; -- End function
	.globl	atoll                           ; -- Begin function atoll
	.p2align	1
	.type	atoll,@function
atoll:                                  ; @atoll
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+28, r25
	std	Y+27, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r25
	std	Y+17, r24
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB45_1
.LBB45_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+27
	ldd	r27, Y+28
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	rcall	isspace
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB45_3
	rjmp	.LBB45_2
.LBB45_2:                               ;   in Loop: Header=BB45_1 Depth=1
	ldd	r24, Y+27
	ldd	r25, Y+28
	adiw	r24, 1
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB45_1
.LBB45_3:
	ldd	r26, Y+27
	ldd	r27, Y+28
	ld	r25, X
	mov	r18, r25
	mov	r19, r25
	lsl	r19
	sbc	r19, r19
	std	Y+14, r19                       ; 2-byte Folded Spill
	std	Y+13, r18                       ; 2-byte Folded Spill
	mov	r24, r19
	cpi	r25, 43
	cpc	r24, r1
	breq	.LBB45_6
	rjmp	.LBB45_4
.LBB45_4:
	ldd	r18, Y+13                       ; 2-byte Folded Reload
	ldd	r19, Y+14                       ; 2-byte Folded Reload
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 45
	cpc	r24, r1
	brne	.LBB45_7
	rjmp	.LBB45_5
.LBB45_5:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB45_6
.LBB45_6:
	ldd	r24, Y+27
	ldd	r25, Y+28
	adiw	r24, 1
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB45_7
.LBB45_7:
	rjmp	.LBB45_8
.LBB45_8:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+27
	ldd	r27, Y+28
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	rcall	isdigit
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB45_9
	rjmp	.LBB45_10
.LBB45_9:                               ;   in Loop: Header=BB45_8 Depth=1
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldi	r30, 10
	ldi	r31, 0
	ldi	r16, 0
	ldi	r17, 0
	mov	r10, r30
	mov	r11, r31
	mov	r12, r16
	mov	r13, r17
	mov	r14, r16
	mov	r15, r17
	rcall	__muldi3
	std	Y+12, r25                       ; 2-byte Folded Spill
	std	Y+11, r24                       ; 2-byte Folded Spill
	ldd	r26, Y+27
	ldd	r27, Y+28
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+28, r25
	std	Y+27, r24
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	sbiw	r24, 48
	mov	r30, r24
	mov	r31, r25
	lsl	r31
	sbc	r31, r31
	mov	r30, r31
	std	Y+10, r31                       ; 2-byte Folded Spill
	std	Y+9, r30                        ; 2-byte Folded Spill
                                        ; kill: def $r26 killed $r1
                                        ; kill: def $r26 killed $r1
	mov	r30, r31
	lsl	r30
	sbc	r17, r24
	mov	r26, r17
	mov	r27, r17
	mov	r30, r17
	mov	r31, r17
	sub	r18, r24
	sbc	r19, r25
	ldd	r24, Y+9                        ; 2-byte Folded Reload
	ldd	r25, Y+10                       ; 2-byte Folded Reload
	sbc	r20, r24
	sbc	r21, r25
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	sbc	r22, r26
	sbc	r23, r27
	sbc	r24, r30
	sbc	r25, r31
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r21
	std	Y+19, r20
	std	Y+18, r19
	std	Y+17, r18
	rjmp	.LBB45_8
.LBB45_10:
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB45_12
	rjmp	.LBB45_11
.LBB45_11:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+17
	ldd	r23, Y+18
	std	Y+2, r23                        ; 2-byte Folded Spill
	std	Y+1, r22                        ; 2-byte Folded Spill
	std	Y+4, r21                        ; 2-byte Folded Spill
	std	Y+3, r20                        ; 2-byte Folded Spill
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB45_13
.LBB45_12:
	ldd	r20, Y+17
	ldd	r21, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r26, Y+21
	ldd	r27, Y+22
	ldd	r30, Y+23
	ldd	r31, Y+24
	ldi	r24, 0
	ldi	r25, 0
	mov	r22, r24
	mov	r23, r25
	sub	r22, r20
	sbc	r23, r21
	mov	r20, r24
	mov	r21, r25
	sbc	r20, r18
	sbc	r21, r19
	mov	r18, r24
	mov	r19, r25
	sbc	r18, r26
	sbc	r19, r27
	sbc	r24, r30
	sbc	r25, r31
	std	Y+2, r23                        ; 2-byte Folded Spill
	std	Y+1, r22                        ; 2-byte Folded Spill
	std	Y+4, r21                        ; 2-byte Folded Spill
	std	Y+3, r20                        ; 2-byte Folded Spill
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rjmp	.LBB45_13
.LBB45_13:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r20, Y+3                        ; 2-byte Folded Reload
	ldd	r21, Y+4                        ; 2-byte Folded Reload
	ldd	r22, Y+5                        ; 2-byte Folded Reload
	ldd	r23, Y+6                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end45:
	.size	atoll, .Lfunc_end45-atoll
                                        ; -- End function
	.globl	bsearch                         ; -- Begin function bsearch
	.p2align	1
	.type	bsearch,@function
bsearch:                                ; @bsearch
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	std	Y+8, r17
	std	Y+7, r16
	rjmp	.LBB46_1
.LBB46_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB46_2
	rjmp	.LBB46_9
.LBB46_2:                               ;   in Loop: Header=BB46_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r22, Y+11
	ldd	r23, Y+12
	lsr	r23
	ror	r22
	rcall	__mulhi3
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	add	r24, r18
	adc	r25, r19
	std	Y+6, r25
	std	Y+5, r24
	ldd	r30, Y+7
	ldd	r31, Y+8
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r22, Y+5
	ldd	r23, Y+6
	icall
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	mov	r24, r25
	tst	r24
	brpl	.LBB46_4
	rjmp	.LBB46_3
.LBB46_3:                               ;   in Loop: Header=BB46_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	lsr	r25
	ror	r24
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB46_8
.LBB46_4:                               ;   in Loop: Header=BB46_1 Depth=1
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r25, r18
	mov	r24, r19
	cp	r1, r25
	cpc	r1, r24
	brge	.LBB46_6
	rjmp	.LBB46_5
.LBB46_5:                               ;   in Loop: Header=BB46_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r18, Y+9
	ldd	r19, Y+10
	add	r24, r18
	adc	r25, r19
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r24, r18
	mov	r25, r19
	lsr	r25
	ror	r24
	com	r24
	com	r25
	add	r24, r18
	adc	r25, r19
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB46_7
.LBB46_6:
	ldd	r24, Y+5
	ldd	r25, Y+6
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB46_10
.LBB46_7:                               ;   in Loop: Header=BB46_1 Depth=1
	rjmp	.LBB46_8
.LBB46_8:                               ;   in Loop: Header=BB46_1 Depth=1
	rjmp	.LBB46_1
.LBB46_9:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB46_10
.LBB46_10:
	ldd	r24, Y+17
	ldd	r25, Y+18
	adiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end46:
	.size	bsearch, .Lfunc_end46-bsearch
                                        ; -- End function
	.globl	bsearch_r                       ; -- Begin function bsearch_r
	.p2align	1
	.type	bsearch_r,@function
bsearch_r:                              ; @bsearch_r
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 24
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r17
	std	Y+13, r16
	std	Y+12, r15
	std	Y+11, r14
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB47_1
.LBB47_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+7
	ldd	r19, Y+8
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB47_2
	rjmp	.LBB47_8
.LBB47_2:                               ;   in Loop: Header=BB47_1 Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+7
	ldd	r25, Y+8
	asr	r25
	ror	r24
	ldd	r22, Y+15
	ldd	r23, Y+16
	rcall	__mulhi3
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	add	r24, r18
	adc	r25, r19
	std	Y+4, r25
	std	Y+3, r24
	ldd	r30, Y+13
	ldd	r31, Y+14
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r22, Y+3
	ldd	r23, Y+4
	ldd	r20, Y+11
	ldd	r21, Y+12
	icall
	std	Y+6, r25
	std	Y+5, r24
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB47_4
	rjmp	.LBB47_3
.LBB47_3:
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB47_9
.LBB47_4:                               ;   in Loop: Header=BB47_1 Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r1, r25
	cpc	r1, r24
	brge	.LBB47_6
	rjmp	.LBB47_5
.LBB47_5:                               ;   in Loop: Header=BB47_1 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+15
	ldd	r19, Y+16
	add	r24, r18
	adc	r25, r19
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	sbiw	r24, 1
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB47_6
.LBB47_6:                               ;   in Loop: Header=BB47_1 Depth=1
	rjmp	.LBB47_7
.LBB47_7:                               ;   in Loop: Header=BB47_1 Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	asr	r25
	ror	r24
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB47_1
.LBB47_8:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB47_9
.LBB47_9:
	ldd	r24, Y+23
	ldd	r25, Y+24
	adiw	r28, 24
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end47:
	.size	bsearch_r, .Lfunc_end47-bsearch_r
                                        ; -- End function
	.globl	div                             ; -- Begin function div
	.p2align	1
	.type	div,@function
div:                                    ; @div
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	std	Y+2, r23
	std	Y+1, r22
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r22, Y+1
	ldd	r23, Y+2
	rcall	__divmodhi4
	std	Y+6, r23
	std	Y+5, r22
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r22, Y+1
	ldd	r23, Y+2
	rcall	__divmodhi4
	std	Y+8, r25
	std	Y+7, r24
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end48:
	.size	div, .Lfunc_end48-div
                                        ; -- End function
	.globl	imaxabs                         ; -- Begin function imaxabs
	.p2align	1
	.type	imaxabs,@function
imaxabs:                                ; @imaxabs
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r21
	std	Y+19, r20
	std	Y+18, r19
	std	Y+17, r18
	ldd	r30, Y+19
	ldd	r31, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r20, Y+23
	ldd	r21, Y+24
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r26, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r1
	std	Y+15, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r1, r26
	cpc	r1, r25
	cpc	r18, r30
	cpc	r19, r31
	cpc	r18, r22
	cpc	r19, r23
	cpc	r18, r20
	cpc	r19, r21
	std	Y+16, r24                       ; 1-byte Folded Spill
	brge	.LBB49_1
	rjmp	.LBB49_2
.LBB49_1:
	ldd	r24, Y+16                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB49_4
	rjmp	.LBB49_3
	rjmp	.LBB49_3
.LBB49_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB49_1
.LBB49_3:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+17
	ldd	r23, Y+18
	std	Y+8, r23                        ; 2-byte Folded Spill
	std	Y+7, r22                        ; 2-byte Folded Spill
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	rjmp	.LBB49_5
.LBB49_4:
	ldd	r20, Y+17
	ldd	r21, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r26, Y+21
	ldd	r27, Y+22
	ldd	r30, Y+23
	ldd	r31, Y+24
	ldi	r24, 0
	ldi	r25, 0
	mov	r22, r24
	mov	r23, r25
	sub	r22, r20
	sbc	r23, r21
	mov	r20, r24
	mov	r21, r25
	sbc	r20, r18
	sbc	r21, r19
	mov	r18, r24
	mov	r19, r25
	sbc	r18, r26
	sbc	r19, r27
	sbc	r24, r30
	sbc	r25, r31
	std	Y+8, r23                        ; 2-byte Folded Spill
	std	Y+7, r22                        ; 2-byte Folded Spill
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	rjmp	.LBB49_5
.LBB49_5:
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	ldd	r22, Y+11                       ; 2-byte Folded Reload
	ldd	r23, Y+12                       ; 2-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end49:
	.size	imaxabs, .Lfunc_end49-imaxabs
                                        ; -- End function
	.globl	imaxdiv                         ; -- Begin function imaxdiv
	.p2align	1
	.type	imaxdiv,@function
imaxdiv:                                ; @imaxdiv
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
                                        ; kill: def $r25r24 killed $r15r14
                                        ; kill: def $r25r24 killed $r13r12
                                        ; kill: def $r25r24 killed $r11r10
                                        ; kill: def $r25r24 killed $r9r8
                                        ; kill: def $r25r24 killed $r23r22
                                        ; kill: def $r25r24 killed $r21r20
                                        ; kill: def $r25r24 killed $r19r18
                                        ; kill: def $r25r24 killed $r17r16
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r17
	std	Y+17, r16
	std	Y+16, r15
	std	Y+15, r14
	std	Y+14, r13
	std	Y+13, r12
	std	Y+12, r11
	std	Y+11, r10
	std	Y+10, r9
	std	Y+9, r8
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r10, Y+9
	ldd	r11, Y+10
	ldd	r12, Y+11
	ldd	r13, Y+12
	ldd	r14, Y+13
	ldd	r15, Y+14
	ldd	r16, Y+15
	ldd	r17, Y+16
	rcall	__divdi3
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+7, r25
	std	Z+6, r24
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+5, r23
	std	Z+4, r22
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+3, r21
	std	Z+2, r20
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+1, r19
	st	Z, r18
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r10, Y+9
	ldd	r11, Y+10
	ldd	r12, Y+11
	ldd	r13, Y+12
	ldd	r14, Y+13
	ldd	r15, Y+14
	ldd	r16, Y+15
	ldd	r17, Y+16
	rcall	__moddi3
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+15, r25
	std	Z+14, r24
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+13, r23
	std	Z+12, r22
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+11, r21
	std	Z+10, r20
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+9, r19
	std	Z+8, r18
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end50:
	.size	imaxdiv, .Lfunc_end50-imaxdiv
                                        ; -- End function
	.globl	labs                            ; -- Begin function labs
	.p2align	1
	.type	labs,@function
labs:                                   ; @labs
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	ldd	r20, Y+9
	ldd	r21, Y+10
	ldd	r24, Y+7
	ldd	r25, Y+8
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r1, r22
	cpc	r1, r25
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brge	.LBB51_1
	rjmp	.LBB51_2
.LBB51_1:
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB51_4
	rjmp	.LBB51_3
	rjmp	.LBB51_3
.LBB51_2:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB51_1
.LBB51_3:
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+7
	ldd	r19, Y+8
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB51_5
.LBB51_4:
	ldd	r22, Y+7
	ldd	r23, Y+8
	ldd	r20, Y+9
	ldd	r21, Y+10
	ldi	r24, 0
	ldi	r25, 0
	mov	r18, r24
	mov	r19, r25
	sub	r18, r22
	sbc	r19, r23
	sbc	r24, r20
	sbc	r25, r21
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB51_5
.LBB51_5:
	ldd	r22, Y+1                        ; 2-byte Folded Reload
	ldd	r23, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end51:
	.size	labs, .Lfunc_end51-labs
                                        ; -- End function
	.globl	ldiv                            ; -- Begin function ldiv
	.p2align	1
	.type	ldiv,@function
ldiv:                                   ; @ldiv
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	rcall	__divmodsi4
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	rcall	__divmodsi4
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end52:
	.size	ldiv, .Lfunc_end52-ldiv
                                        ; -- End function
	.globl	llabs                           ; -- Begin function llabs
	.p2align	1
	.type	llabs,@function
llabs:                                  ; @llabs
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r21
	std	Y+19, r20
	std	Y+18, r19
	std	Y+17, r18
	ldd	r30, Y+19
	ldd	r31, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r20, Y+23
	ldd	r21, Y+24
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r26, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r1
	std	Y+15, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r1, r26
	cpc	r1, r25
	cpc	r18, r30
	cpc	r19, r31
	cpc	r18, r22
	cpc	r19, r23
	cpc	r18, r20
	cpc	r19, r21
	std	Y+16, r24                       ; 1-byte Folded Spill
	brge	.LBB53_1
	rjmp	.LBB53_2
.LBB53_1:
	ldd	r24, Y+16                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB53_4
	rjmp	.LBB53_3
	rjmp	.LBB53_3
.LBB53_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB53_1
.LBB53_3:
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+17
	ldd	r23, Y+18
	std	Y+8, r23                        ; 2-byte Folded Spill
	std	Y+7, r22                        ; 2-byte Folded Spill
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	rjmp	.LBB53_5
.LBB53_4:
	ldd	r20, Y+17
	ldd	r21, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r26, Y+21
	ldd	r27, Y+22
	ldd	r30, Y+23
	ldd	r31, Y+24
	ldi	r24, 0
	ldi	r25, 0
	mov	r22, r24
	mov	r23, r25
	sub	r22, r20
	sbc	r23, r21
	mov	r20, r24
	mov	r21, r25
	sbc	r20, r18
	sbc	r21, r19
	mov	r18, r24
	mov	r19, r25
	sbc	r18, r26
	sbc	r19, r27
	sbc	r24, r30
	sbc	r25, r31
	std	Y+8, r23                        ; 2-byte Folded Spill
	std	Y+7, r22                        ; 2-byte Folded Spill
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	rjmp	.LBB53_5
.LBB53_5:
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	ldd	r22, Y+11                       ; 2-byte Folded Reload
	ldd	r23, Y+12                       ; 2-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end53:
	.size	llabs, .Lfunc_end53-llabs
                                        ; -- End function
	.globl	lldiv                           ; -- Begin function lldiv
	.p2align	1
	.type	lldiv,@function
lldiv:                                  ; @lldiv
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
                                        ; kill: def $r25r24 killed $r15r14
                                        ; kill: def $r25r24 killed $r13r12
                                        ; kill: def $r25r24 killed $r11r10
                                        ; kill: def $r25r24 killed $r9r8
                                        ; kill: def $r25r24 killed $r23r22
                                        ; kill: def $r25r24 killed $r21r20
                                        ; kill: def $r25r24 killed $r19r18
                                        ; kill: def $r25r24 killed $r17r16
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r17
	std	Y+17, r16
	std	Y+16, r15
	std	Y+15, r14
	std	Y+14, r13
	std	Y+13, r12
	std	Y+12, r11
	std	Y+11, r10
	std	Y+10, r9
	std	Y+9, r8
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r10, Y+9
	ldd	r11, Y+10
	ldd	r12, Y+11
	ldd	r13, Y+12
	ldd	r14, Y+13
	ldd	r15, Y+14
	ldd	r16, Y+15
	ldd	r17, Y+16
	rcall	__divdi3
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+7, r25
	std	Z+6, r24
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+5, r23
	std	Z+4, r22
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+3, r21
	std	Z+2, r20
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+1, r19
	st	Z, r18
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	ldd	r10, Y+9
	ldd	r11, Y+10
	ldd	r12, Y+11
	ldd	r13, Y+12
	ldd	r14, Y+13
	ldd	r15, Y+14
	ldd	r16, Y+15
	ldd	r17, Y+16
	rcall	__moddi3
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+15, r25
	std	Z+14, r24
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+13, r23
	std	Z+12, r22
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+11, r21
	std	Z+10, r20
	ldd	r30, Y+7                        ; 2-byte Folded Reload
	ldd	r31, Y+8                        ; 2-byte Folded Reload
	std	Z+9, r19
	std	Z+8, r18
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end54:
	.size	lldiv, .Lfunc_end54-lldiv
                                        ; -- End function
	.globl	wcschr                          ; -- Begin function wcschr
	.p2align	1
	.type	wcschr,@function
wcschr:                                 ; @wcschr
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 9
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+9, r25
	std	Y+8, r24
	std	Y+7, r23
	std	Y+6, r22
	rjmp	.LBB55_1
.LBB55_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+8
	ldd	r31, Y+9
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB55_5
	rjmp	.LBB55_2
.LBB55_2:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r30, Y+8
	ldd	r31, Y+9
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r20, Y+6
	ldd	r21, Y+7
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brne	.LBB55_3
	rjmp	.LBB55_4
.LBB55_3:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB55_5
	rjmp	.LBB55_5
.LBB55_4:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB55_3
.LBB55_5:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB55_8
	rjmp	.LBB55_6
.LBB55_6:                               ;   in Loop: Header=BB55_1 Depth=1
	rjmp	.LBB55_7
.LBB55_7:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+8
	ldd	r25, Y+9
	adiw	r24, 2
	std	Y+9, r25
	std	Y+8, r24
	rjmp	.LBB55_1
.LBB55_8:
	ldd	r30, Y+8
	ldd	r31, Y+9
	ld	r18, Z
	ldd	r19, Z+1
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB55_10
	rjmp	.LBB55_9
.LBB55_9:
	ldd	r24, Y+8
	ldd	r25, Y+9
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB55_11
.LBB55_10:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB55_11
.LBB55_11:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 9
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end55:
	.size	wcschr, .Lfunc_end55-wcschr
                                        ; -- End function
	.globl	wcscmp                          ; -- Begin function wcscmp
	.p2align	1
	.type	wcscmp,@function
wcscmp:                                 ; @wcscmp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 11
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+11, r25
	std	Y+10, r24
	std	Y+9, r23
	std	Y+8, r22
	rjmp	.LBB56_1
.LBB56_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+10
	ldd	r31, Y+11
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r30, Y+8
	ldd	r31, Y+9
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+7, r24                        ; 1-byte Folded Spill
	breq	.LBB56_2
	rjmp	.LBB56_6
.LBB56_2:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r30, Y+10
	ldd	r31, Y+11
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	breq	.LBB56_6
	rjmp	.LBB56_3
.LBB56_3:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r30, Y+8
	ldd	r31, Y+9
	ld	r24, Z
	ldd	r25, Z+1
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB56_4
	rjmp	.LBB56_5
.LBB56_4:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	rjmp	.LBB56_6
	rjmp	.LBB56_6
.LBB56_5:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB56_4
.LBB56_6:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB56_9
	rjmp	.LBB56_7
.LBB56_7:                               ;   in Loop: Header=BB56_1 Depth=1
	rjmp	.LBB56_8
.LBB56_8:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+10
	ldd	r25, Y+11
	adiw	r24, 2
	std	Y+11, r25
	std	Y+10, r24
	ldd	r24, Y+8
	ldd	r25, Y+9
	adiw	r24, 2
	std	Y+9, r25
	std	Y+8, r24
	rjmp	.LBB56_1
.LBB56_9:
	ldd	r30, Y+10
	ldd	r31, Y+11
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+8
	ldd	r31, Y+9
	ld	r18, Z
	ldd	r19, Z+1
	cp	r24, r18
	cpc	r25, r19
	brge	.LBB56_11
	rjmp	.LBB56_10
.LBB56_10:
	ldi	r24, 255
	ldi	r25, 255
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB56_14
.LBB56_11:
	ldd	r30, Y+10
	ldd	r31, Y+11
	ld	r20, Z
	ldd	r21, Z+1
	ldd	r30, Y+8
	ldd	r31, Y+9
	ld	r18, Z
	ldd	r19, Z+1
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlt	.LBB56_12
	rjmp	.LBB56_13
.LBB56_12:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB56_14
	rjmp	.LBB56_14
.LBB56_13:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB56_12
.LBB56_14:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	adiw	r28, 11
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end56:
	.size	wcscmp, .Lfunc_end56-wcscmp
                                        ; -- End function
	.globl	wcscpy                          ; -- Begin function wcscpy
	.p2align	1
	.type	wcscpy,@function
wcscpy:                                 ; @wcscpy
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+6, r25
	std	Y+5, r24
	std	Y+4, r23
	std	Y+3, r22
	ldd	r24, Y+5
	ldd	r25, Y+6
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB57_1
.LBB57_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	mov	r24, r30
	mov	r25, r31
	adiw	r24, 2
	std	Y+4, r25
	std	Y+3, r24
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r30, Y+5
	ldd	r31, Y+6
	mov	r24, r30
	mov	r25, r31
	adiw	r24, 2
	std	Y+6, r25
	std	Y+5, r24
	std	Z+1, r19
	st	Z, r18
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB57_3
	rjmp	.LBB57_2
.LBB57_2:                               ;   in Loop: Header=BB57_1 Depth=1
	rjmp	.LBB57_1
.LBB57_3:
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end57:
	.size	wcscpy, .Lfunc_end57-wcscpy
                                        ; -- End function
	.globl	wcslen                          ; -- Begin function wcslen
	.p2align	1
	.type	wcslen,@function
wcslen:                                 ; @wcslen
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB58_1
.LBB58_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	ld	r18, Z
	ldd	r19, Z+1
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB58_4
	rjmp	.LBB58_2
.LBB58_2:                               ;   in Loop: Header=BB58_1 Depth=1
	rjmp	.LBB58_3
.LBB58_3:                               ;   in Loop: Header=BB58_1 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 2
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB58_1
.LBB58_4:
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+1
	ldd	r19, Y+2
	sub	r24, r18
	sbc	r25, r19
	asr	r25
	ror	r24
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end58:
	.size	wcslen, .Lfunc_end58-wcslen
                                        ; -- End function
	.globl	wcsncmp                         ; -- Begin function wcsncmp
	.p2align	1
	.type	wcsncmp,@function
wcsncmp:                                ; @wcsncmp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+15, r25
	std	Y+14, r24
	std	Y+13, r23
	std	Y+12, r22
	std	Y+11, r21
	std	Y+10, r20
	rjmp	.LBB59_1
.LBB59_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+10
	ldd	r21, Y+11
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB59_2
	rjmp	.LBB59_7
.LBB59_2:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r30, Y+14
	ldd	r31, Y+15
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r30, Y+12
	ldd	r31, Y+13
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB59_3
	rjmp	.LBB59_7
.LBB59_3:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r30, Y+14
	ldd	r31, Y+15
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB59_7
	rjmp	.LBB59_4
.LBB59_4:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r30, Y+12
	ldd	r31, Y+13
	ld	r24, Z
	ldd	r25, Z+1
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB59_5
	rjmp	.LBB59_6
.LBB59_5:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB59_7
	rjmp	.LBB59_7
.LBB59_6:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB59_5
.LBB59_7:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB59_10
	rjmp	.LBB59_8
.LBB59_8:                               ;   in Loop: Header=BB59_1 Depth=1
	rjmp	.LBB59_9
.LBB59_9:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+10
	ldd	r25, Y+11
	sbiw	r24, 1
	std	Y+11, r25
	std	Y+10, r24
	ldd	r24, Y+14
	ldd	r25, Y+15
	adiw	r24, 2
	std	Y+15, r25
	std	Y+14, r24
	ldd	r24, Y+12
	ldd	r25, Y+13
	adiw	r24, 2
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB59_1
.LBB59_10:
	ldd	r18, Y+10
	ldd	r19, Y+11
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB59_11
	rjmp	.LBB59_17
.LBB59_11:
	ldd	r30, Y+14
	ldd	r31, Y+15
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+12
	ldd	r31, Y+13
	ld	r18, Z
	ldd	r19, Z+1
	cp	r24, r18
	cpc	r25, r19
	brge	.LBB59_13
	rjmp	.LBB59_12
.LBB59_12:
	ldi	r24, 255
	ldi	r25, 255
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_16
.LBB59_13:
	ldd	r30, Y+14
	ldd	r31, Y+15
	ld	r20, Z
	ldd	r21, Z+1
	ldd	r30, Y+12
	ldd	r31, Y+13
	ld	r18, Z
	ldd	r19, Z+1
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brlt	.LBB59_14
	rjmp	.LBB59_15
.LBB59_14:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	clr	r25
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_16
	rjmp	.LBB59_16
.LBB59_15:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB59_14
.LBB59_16:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_18
.LBB59_17:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_18
.LBB59_18:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end59:
	.size	wcsncmp, .Lfunc_end59-wcsncmp
                                        ; -- End function
	.globl	wmemchr                         ; -- Begin function wmemchr
	.p2align	1
	.type	wmemchr,@function
wmemchr:                                ; @wmemchr
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 11
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+11, r25
	std	Y+10, r24
	std	Y+9, r23
	std	Y+8, r22
	std	Y+7, r21
	std	Y+6, r20
	rjmp	.LBB60_1
.LBB60_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+6
	ldd	r21, Y+7
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB60_5
	rjmp	.LBB60_2
.LBB60_2:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r30, Y+10
	ldd	r31, Y+11
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r20, Y+8
	ldd	r21, Y+9
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brne	.LBB60_3
	rjmp	.LBB60_4
.LBB60_3:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB60_5
	rjmp	.LBB60_5
.LBB60_4:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB60_3
.LBB60_5:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB60_8
	rjmp	.LBB60_6
.LBB60_6:                               ;   in Loop: Header=BB60_1 Depth=1
	rjmp	.LBB60_7
.LBB60_7:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+6
	ldd	r25, Y+7
	sbiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+10
	ldd	r25, Y+11
	adiw	r24, 2
	std	Y+11, r25
	std	Y+10, r24
	rjmp	.LBB60_1
.LBB60_8:
	ldd	r18, Y+6
	ldd	r19, Y+7
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB60_10
	rjmp	.LBB60_9
.LBB60_9:
	ldd	r24, Y+10
	ldd	r25, Y+11
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB60_11
.LBB60_10:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB60_11
.LBB60_11:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 11
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end60:
	.size	wmemchr, .Lfunc_end60-wmemchr
                                        ; -- End function
	.globl	wmemcmp                         ; -- Begin function wmemcmp
	.p2align	1
	.type	wmemcmp,@function
wmemcmp:                                ; @wmemcmp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+15, r25
	std	Y+14, r24
	std	Y+13, r23
	std	Y+12, r22
	std	Y+11, r21
	std	Y+10, r20
	rjmp	.LBB61_1
.LBB61_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+10
	ldd	r21, Y+11
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB61_5
	rjmp	.LBB61_2
.LBB61_2:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r30, Y+14
	ldd	r31, Y+15
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r30, Y+12
	ldd	r31, Y+13
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	breq	.LBB61_3
	rjmp	.LBB61_4
.LBB61_3:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB61_5
	rjmp	.LBB61_5
.LBB61_4:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB61_3
.LBB61_5:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB61_8
	rjmp	.LBB61_6
.LBB61_6:                               ;   in Loop: Header=BB61_1 Depth=1
	rjmp	.LBB61_7
.LBB61_7:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+10
	ldd	r25, Y+11
	sbiw	r24, 1
	std	Y+11, r25
	std	Y+10, r24
	ldd	r24, Y+14
	ldd	r25, Y+15
	adiw	r24, 2
	std	Y+15, r25
	std	Y+14, r24
	ldd	r24, Y+12
	ldd	r25, Y+13
	adiw	r24, 2
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB61_1
.LBB61_8:
	ldd	r18, Y+10
	ldd	r19, Y+11
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB61_9
	rjmp	.LBB61_15
.LBB61_9:
	ldd	r30, Y+14
	ldd	r31, Y+15
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+12
	ldd	r31, Y+13
	ld	r18, Z
	ldd	r19, Z+1
	cp	r24, r18
	cpc	r25, r19
	brge	.LBB61_11
	rjmp	.LBB61_10
.LBB61_10:
	ldi	r24, 255
	ldi	r25, 255
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_14
.LBB61_11:
	ldd	r30, Y+14
	ldd	r31, Y+15
	ld	r20, Z
	ldd	r21, Z+1
	ldd	r30, Y+12
	ldd	r31, Y+13
	ld	r18, Z
	ldd	r19, Z+1
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brlt	.LBB61_12
	rjmp	.LBB61_13
.LBB61_12:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	clr	r25
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_14
	rjmp	.LBB61_14
.LBB61_13:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB61_12
.LBB61_14:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_16
.LBB61_15:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_16
.LBB61_16:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 15
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end61:
	.size	wmemcmp, .Lfunc_end61-wmemcmp
                                        ; -- End function
	.globl	wmemcpy                         ; -- Begin function wmemcpy
	.p2align	1
	.type	wmemcpy,@function
wmemcpy:                                ; @wmemcpy
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB62_1
.LBB62_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB62_3
	rjmp	.LBB62_2
.LBB62_2:                               ;   in Loop: Header=BB62_1 Depth=1
	ldd	r30, Y+5
	ldd	r31, Y+6
	mov	r24, r30
	mov	r25, r31
	adiw	r24, 2
	std	Y+6, r25
	std	Y+5, r24
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+7
	ldd	r31, Y+8
	mov	r26, r30
	mov	r27, r31
	adiw	r26, 2
	std	Y+8, r27
	std	Y+7, r26
	std	Z+1, r25
	st	Z, r24
	rjmp	.LBB62_1
.LBB62_3:
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end62:
	.size	wmemcpy, .Lfunc_end62-wmemcpy
                                        ; -- End function
	.globl	wmemmove                        ; -- Begin function wmemmove
	.p2align	1
	.type	wmemmove,@function
wmemmove:                               ; @wmemmove
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB63_2
	rjmp	.LBB63_1
.LBB63_1:
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB63_12
.LBB63_2:
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
	sub	r24, r18
	sbc	r25, r19
	ldd	r18, Y+3
	ldd	r19, Y+4
	lsl	r18
	rol	r19
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB63_3
	rjmp	.LBB63_7
.LBB63_3:
	rjmp	.LBB63_4
.LBB63_4:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB63_6
	rjmp	.LBB63_5
.LBB63_5:                               ;   in Loop: Header=BB63_4 Depth=1
	ldd	r30, Y+5
	ldd	r31, Y+6
	ldd	r18, Y+3
	ldd	r19, Y+4
	lsl	r18
	rol	r19
	add	r30, r18
	adc	r31, r19
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+7
	ldd	r31, Y+8
	add	r30, r18
	adc	r31, r19
	std	Z+1, r25
	st	Z, r24
	rjmp	.LBB63_4
.LBB63_6:
	rjmp	.LBB63_11
.LBB63_7:
	rjmp	.LBB63_8
.LBB63_8:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB63_10
	rjmp	.LBB63_9
.LBB63_9:                               ;   in Loop: Header=BB63_8 Depth=1
	ldd	r30, Y+5
	ldd	r31, Y+6
	mov	r24, r30
	mov	r25, r31
	adiw	r24, 2
	std	Y+6, r25
	std	Y+5, r24
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+7
	ldd	r31, Y+8
	mov	r26, r30
	mov	r27, r31
	adiw	r26, 2
	std	Y+8, r27
	std	Y+7, r26
	std	Z+1, r25
	st	Z, r24
	rjmp	.LBB63_8
.LBB63_10:
	rjmp	.LBB63_11
.LBB63_11:
	ldd	r24, Y+1
	ldd	r25, Y+2
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB63_12
.LBB63_12:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end63:
	.size	wmemmove, .Lfunc_end63-wmemmove
                                        ; -- End function
	.globl	wmemset                         ; -- Begin function wmemset
	.p2align	1
	.type	wmemset,@function
wmemset:                                ; @wmemset
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB64_1
.LBB64_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+3
	ldd	r31, Y+4
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB64_3
	rjmp	.LBB64_2
.LBB64_2:                               ;   in Loop: Header=BB64_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r30, Y+7
	ldd	r31, Y+8
	mov	r26, r30
	mov	r27, r31
	adiw	r26, 2
	std	Y+8, r27
	std	Y+7, r26
	std	Z+1, r25
	st	Z, r24
	rjmp	.LBB64_1
.LBB64_3:
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end64:
	.size	wmemset, .Lfunc_end64-wmemset
                                        ; -- End function
	.globl	bcopy                           ; -- Begin function bcopy
	.p2align	1
	.type	bcopy,@function
bcopy:                                  ; @bcopy
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	std	Y+6, r21
	std	Y+5, r20
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+1
	ldd	r19, Y+2
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB65_1
	rjmp	.LBB65_6
.LBB65_1:
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r24, Y+3
	ldd	r25, Y+4
	add	r24, r18
	adc	r25, r19
	std	Y+4, r25
	std	Y+3, r24
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r24, Y+1
	ldd	r25, Y+2
	add	r24, r18
	adc	r25, r19
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB65_2
.LBB65_2:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB65_5
	rjmp	.LBB65_3
.LBB65_3:                               ;   in Loop: Header=BB65_2 Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	sbiw	r26, 1
	std	Y+4, r27
	std	Y+3, r26
	ld	r24, X
	ldd	r26, Y+1
	ldd	r27, Y+2
	sbiw	r26, 1
	std	Y+2, r27
	std	Y+1, r26
	st	X, r24
	rjmp	.LBB65_4
.LBB65_4:                               ;   in Loop: Header=BB65_2 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB65_2
.LBB65_5:
	rjmp	.LBB65_13
.LBB65_6:
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+1
	ldd	r19, Y+2
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB65_7
	rjmp	.LBB65_12
.LBB65_7:
	rjmp	.LBB65_8
.LBB65_8:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB65_11
	rjmp	.LBB65_9
.LBB65_9:                               ;   in Loop: Header=BB65_8 Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	ld	r24, X
	ldd	r26, Y+1
	ldd	r27, Y+2
	mov	r30, r26
	mov	r31, r27
	adiw	r30, 1
	std	Y+2, r31
	std	Y+1, r30
	st	X, r24
	rjmp	.LBB65_10
.LBB65_10:                              ;   in Loop: Header=BB65_8 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB65_8
.LBB65_11:
	rjmp	.LBB65_12
.LBB65_12:
	rjmp	.LBB65_13
.LBB65_13:
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end65:
	.size	bcopy, .Lfunc_end65-bcopy
                                        ; -- End function
	.globl	rotl64                          ; -- Begin function rotl64
	.p2align	1
	.type	rotl64,@function
rotl64:                                 ; @rotl64
; %bb.0:
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+40, r25
	std	Y+39, r24
	std	Y+38, r23
	std	Y+37, r22
	std	Y+36, r21
	std	Y+35, r20
	std	Y+34, r19
	std	Y+33, r18
	std	Y+32, r17
	std	Y+31, r16
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r20, Y+35
	ldd	r21, Y+36
	ldd	r22, Y+33
	ldd	r23, Y+34
	ldd	r30, Y+31
	cpi	r30, 0
	std	Y+22, r30                       ; 1-byte Folded Spill
	std	Y+24, r23                       ; 2-byte Folded Spill
	std	Y+23, r22                       ; 2-byte Folded Spill
	std	Y+26, r21                       ; 2-byte Folded Spill
	std	Y+25, r20                       ; 2-byte Folded Spill
	std	Y+28, r19                       ; 2-byte Folded Spill
	std	Y+27, r18                       ; 2-byte Folded Spill
	std	Y+30, r25                       ; 2-byte Folded Spill
	std	Y+29, r24                       ; 2-byte Folded Spill
	brne	.LBB66_1
	rjmp	.LBB66_2
.LBB66_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+29                       ; 2-byte Folded Reload
	ldd	r25, Y+30                       ; 2-byte Folded Reload
	ldd	r18, Y+27                       ; 2-byte Folded Reload
	ldd	r19, Y+28                       ; 2-byte Folded Reload
	ldd	r20, Y+25                       ; 2-byte Folded Reload
	ldd	r21, Y+26                       ; 2-byte Folded Reload
	ldd	r22, Y+23                       ; 2-byte Folded Reload
	ldd	r23, Y+24                       ; 2-byte Folded Reload
	ldd	r30, Y+22                       ; 1-byte Folded Reload
	dec	r30
	mov	r31, r1
                                        ; kill: def $r26 killed $r1
	mov	r26, r21
	lsl	r26
	mov	r26, r31
	rol	r26
                                        ; kill: def $r26 killed $r26 def $r27r26
	mov	r27, r31
	mov	r16, r31
	mov	r17, r31
                                        ; kill: def $r31 killed $r1
	mov	r31, r18
	lsl	r31
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r31
	or	r24, r16
	or	r25, r17
	or	r18, r26
	or	r19, r27
                                        ; kill: def $r31 killed $r1
	mov	r31, r22
	lsl	r31
                                        ; kill: def $r23 killed $r23 killed $r23r22
	rol	r23
	mov	r22, r20
	rol	r22
                                        ; kill: def $r21 killed $r21 killed $r21r20
	rol	r21
                                        ; kill: def $r21 killed $r21 def $r21r20
	mov	r20, r22
                                        ; kill: def $r23 killed $r23 def $r23r22
	mov	r22, r31
	cpi	r30, 0
	std	Y+22, r30                       ; 1-byte Folded Spill
	std	Y+24, r23                       ; 2-byte Folded Spill
	std	Y+23, r22                       ; 2-byte Folded Spill
	std	Y+26, r21                       ; 2-byte Folded Spill
	std	Y+25, r20                       ; 2-byte Folded Spill
	std	Y+28, r19                       ; 2-byte Folded Spill
	std	Y+27, r18                       ; 2-byte Folded Spill
	std	Y+30, r25                       ; 2-byte Folded Spill
	std	Y+29, r24                       ; 2-byte Folded Spill
	breq	.LBB66_2
	rjmp	.LBB66_1
.LBB66_2:
	ldd	r24, Y+23                       ; 2-byte Folded Reload
	ldd	r25, Y+24                       ; 2-byte Folded Reload
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r20, Y+27                       ; 2-byte Folded Reload
	ldd	r21, Y+28                       ; 2-byte Folded Reload
	ldd	r22, Y+29                       ; 2-byte Folded Reload
	ldd	r23, Y+30                       ; 2-byte Folded Reload
	std	Y+6, r23                        ; 2-byte Folded Spill
	std	Y+5, r22                        ; 2-byte Folded Spill
	std	Y+8, r21                        ; 2-byte Folded Spill
	std	Y+7, r20                        ; 2-byte Folded Spill
	std	Y+10, r19                       ; 2-byte Folded Spill
	std	Y+9, r18                        ; 2-byte Folded Spill
	std	Y+12, r25                       ; 2-byte Folded Spill
	std	Y+11, r24                       ; 2-byte Folded Spill
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r20, Y+35
	ldd	r21, Y+36
	ldd	r22, Y+33
	ldd	r23, Y+34
	ldd	r31, Y+31
	ldi	r30, 64
	sub	r30, r31
	cpi	r30, 0
	std	Y+13, r30                       ; 1-byte Folded Spill
	std	Y+15, r23                       ; 2-byte Folded Spill
	std	Y+14, r22                       ; 2-byte Folded Spill
	std	Y+17, r21                       ; 2-byte Folded Spill
	std	Y+16, r20                       ; 2-byte Folded Spill
	std	Y+19, r19                       ; 2-byte Folded Spill
	std	Y+18, r18                       ; 2-byte Folded Spill
	std	Y+21, r25                       ; 2-byte Folded Spill
	std	Y+20, r24                       ; 2-byte Folded Spill
	brne	.LBB66_3
	rjmp	.LBB66_4
.LBB66_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+20                       ; 2-byte Folded Reload
	ldd	r25, Y+21                       ; 2-byte Folded Reload
	ldd	r18, Y+18                       ; 2-byte Folded Reload
	ldd	r19, Y+19                       ; 2-byte Folded Reload
	ldd	r20, Y+16                       ; 2-byte Folded Reload
	ldd	r21, Y+17                       ; 2-byte Folded Reload
	ldd	r22, Y+14                       ; 2-byte Folded Reload
	ldd	r23, Y+15                       ; 2-byte Folded Reload
	ldd	r30, Y+13                       ; 1-byte Folded Reload
	dec	r30
                                        ; kill: def $r31 killed $r1
	mov	r31, r21
	lsr	r31
                                        ; kill: def $r20 killed $r20 killed $r21r20
	ror	r20
	mov	r21, r23
	ror	r21
                                        ; kill: def $r22 killed $r22 killed $r23r22
	ror	r22
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r21
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r31
	mov	r31, r1
                                        ; kill: def $r26 killed $r1
	mov	r26, r18
	lsr	r26
	mov	r17, r31
	ror	r17
                                        ; kill: def $r17 killed $r17 def $r17r16
	mov	r16, r31
	mov	r27, r31
	mov	r26, r31
	or	r20, r16
	or	r21, r17
	or	r22, r26
	or	r23, r27
                                        ; kill: def $r31 killed $r1
	mov	r31, r25
	lsr	r31
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r31
	cpi	r30, 0
	std	Y+13, r30                       ; 1-byte Folded Spill
	std	Y+15, r23                       ; 2-byte Folded Spill
	std	Y+14, r22                       ; 2-byte Folded Spill
	std	Y+17, r21                       ; 2-byte Folded Spill
	std	Y+16, r20                       ; 2-byte Folded Spill
	std	Y+19, r19                       ; 2-byte Folded Spill
	std	Y+18, r18                       ; 2-byte Folded Spill
	std	Y+21, r25                       ; 2-byte Folded Spill
	std	Y+20, r24                       ; 2-byte Folded Spill
	breq	.LBB66_4
	rjmp	.LBB66_3
.LBB66_4:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	ldd	r22, Y+7                        ; 2-byte Folded Reload
	ldd	r23, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	ldd	r18, Y+11                       ; 2-byte Folded Reload
	ldd	r19, Y+12                       ; 2-byte Folded Reload
	ldd	r14, Y+14                       ; 2-byte Folded Reload
	ldd	r15, Y+15                       ; 2-byte Folded Reload
	ldd	r16, Y+16                       ; 2-byte Folded Reload
	ldd	r17, Y+17                       ; 2-byte Folded Reload
	ldd	r26, Y+18                       ; 2-byte Folded Reload
	ldd	r27, Y+19                       ; 2-byte Folded Reload
	ldd	r30, Y+20                       ; 2-byte Folded Reload
	ldd	r31, Y+21                       ; 2-byte Folded Reload
	or	r18, r14
	or	r19, r15
	or	r20, r16
	or	r21, r17
	or	r22, r26
	or	r23, r27
	or	r24, r30
	or	r25, r31
	adiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	ret
.Lfunc_end66:
	.size	rotl64, .Lfunc_end66-rotl64
                                        ; -- End function
	.globl	rotr64                          ; -- Begin function rotr64
	.p2align	1
	.type	rotr64,@function
rotr64:                                 ; @rotr64
; %bb.0:
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+40, r25
	std	Y+39, r24
	std	Y+38, r23
	std	Y+37, r22
	std	Y+36, r21
	std	Y+35, r20
	std	Y+34, r19
	std	Y+33, r18
	std	Y+32, r17
	std	Y+31, r16
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r20, Y+35
	ldd	r21, Y+36
	ldd	r22, Y+33
	ldd	r23, Y+34
	ldd	r30, Y+31
	cpi	r30, 0
	std	Y+22, r30                       ; 1-byte Folded Spill
	std	Y+24, r23                       ; 2-byte Folded Spill
	std	Y+23, r22                       ; 2-byte Folded Spill
	std	Y+26, r21                       ; 2-byte Folded Spill
	std	Y+25, r20                       ; 2-byte Folded Spill
	std	Y+28, r19                       ; 2-byte Folded Spill
	std	Y+27, r18                       ; 2-byte Folded Spill
	std	Y+30, r25                       ; 2-byte Folded Spill
	std	Y+29, r24                       ; 2-byte Folded Spill
	brne	.LBB67_1
	rjmp	.LBB67_2
.LBB67_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+29                       ; 2-byte Folded Reload
	ldd	r25, Y+30                       ; 2-byte Folded Reload
	ldd	r18, Y+27                       ; 2-byte Folded Reload
	ldd	r19, Y+28                       ; 2-byte Folded Reload
	ldd	r20, Y+25                       ; 2-byte Folded Reload
	ldd	r21, Y+26                       ; 2-byte Folded Reload
	ldd	r22, Y+23                       ; 2-byte Folded Reload
	ldd	r23, Y+24                       ; 2-byte Folded Reload
	ldd	r30, Y+22                       ; 1-byte Folded Reload
	dec	r30
                                        ; kill: def $r31 killed $r1
	mov	r31, r21
	lsr	r31
                                        ; kill: def $r20 killed $r20 killed $r21r20
	ror	r20
	mov	r21, r23
	ror	r21
                                        ; kill: def $r22 killed $r22 killed $r23r22
	ror	r22
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r21
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r31
	mov	r31, r1
                                        ; kill: def $r26 killed $r1
	mov	r26, r18
	lsr	r26
	mov	r17, r31
	ror	r17
                                        ; kill: def $r17 killed $r17 def $r17r16
	mov	r16, r31
	mov	r27, r31
	mov	r26, r31
	or	r20, r16
	or	r21, r17
	or	r22, r26
	or	r23, r27
                                        ; kill: def $r31 killed $r1
	mov	r31, r25
	lsr	r31
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r31
	cpi	r30, 0
	std	Y+22, r30                       ; 1-byte Folded Spill
	std	Y+24, r23                       ; 2-byte Folded Spill
	std	Y+23, r22                       ; 2-byte Folded Spill
	std	Y+26, r21                       ; 2-byte Folded Spill
	std	Y+25, r20                       ; 2-byte Folded Spill
	std	Y+28, r19                       ; 2-byte Folded Spill
	std	Y+27, r18                       ; 2-byte Folded Spill
	std	Y+30, r25                       ; 2-byte Folded Spill
	std	Y+29, r24                       ; 2-byte Folded Spill
	breq	.LBB67_2
	rjmp	.LBB67_1
.LBB67_2:
	ldd	r24, Y+23                       ; 2-byte Folded Reload
	ldd	r25, Y+24                       ; 2-byte Folded Reload
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r20, Y+27                       ; 2-byte Folded Reload
	ldd	r21, Y+28                       ; 2-byte Folded Reload
	ldd	r22, Y+29                       ; 2-byte Folded Reload
	ldd	r23, Y+30                       ; 2-byte Folded Reload
	std	Y+6, r23                        ; 2-byte Folded Spill
	std	Y+5, r22                        ; 2-byte Folded Spill
	std	Y+8, r21                        ; 2-byte Folded Spill
	std	Y+7, r20                        ; 2-byte Folded Spill
	std	Y+10, r19                       ; 2-byte Folded Spill
	std	Y+9, r18                        ; 2-byte Folded Spill
	std	Y+12, r25                       ; 2-byte Folded Spill
	std	Y+11, r24                       ; 2-byte Folded Spill
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r20, Y+35
	ldd	r21, Y+36
	ldd	r22, Y+33
	ldd	r23, Y+34
	ldd	r31, Y+31
	ldi	r30, 64
	sub	r30, r31
	cpi	r30, 0
	std	Y+13, r30                       ; 1-byte Folded Spill
	std	Y+15, r23                       ; 2-byte Folded Spill
	std	Y+14, r22                       ; 2-byte Folded Spill
	std	Y+17, r21                       ; 2-byte Folded Spill
	std	Y+16, r20                       ; 2-byte Folded Spill
	std	Y+19, r19                       ; 2-byte Folded Spill
	std	Y+18, r18                       ; 2-byte Folded Spill
	std	Y+21, r25                       ; 2-byte Folded Spill
	std	Y+20, r24                       ; 2-byte Folded Spill
	brne	.LBB67_3
	rjmp	.LBB67_4
.LBB67_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+20                       ; 2-byte Folded Reload
	ldd	r25, Y+21                       ; 2-byte Folded Reload
	ldd	r18, Y+18                       ; 2-byte Folded Reload
	ldd	r19, Y+19                       ; 2-byte Folded Reload
	ldd	r20, Y+16                       ; 2-byte Folded Reload
	ldd	r21, Y+17                       ; 2-byte Folded Reload
	ldd	r22, Y+14                       ; 2-byte Folded Reload
	ldd	r23, Y+15                       ; 2-byte Folded Reload
	ldd	r30, Y+13                       ; 1-byte Folded Reload
	dec	r30
	mov	r31, r1
                                        ; kill: def $r26 killed $r1
	mov	r26, r21
	lsl	r26
	mov	r26, r31
	rol	r26
                                        ; kill: def $r26 killed $r26 def $r27r26
	mov	r27, r31
	mov	r16, r31
	mov	r17, r31
                                        ; kill: def $r31 killed $r1
	mov	r31, r18
	lsl	r31
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r31
	or	r24, r16
	or	r25, r17
	or	r18, r26
	or	r19, r27
                                        ; kill: def $r31 killed $r1
	mov	r31, r22
	lsl	r31
                                        ; kill: def $r23 killed $r23 killed $r23r22
	rol	r23
	mov	r22, r20
	rol	r22
                                        ; kill: def $r21 killed $r21 killed $r21r20
	rol	r21
                                        ; kill: def $r21 killed $r21 def $r21r20
	mov	r20, r22
                                        ; kill: def $r23 killed $r23 def $r23r22
	mov	r22, r31
	cpi	r30, 0
	std	Y+13, r30                       ; 1-byte Folded Spill
	std	Y+15, r23                       ; 2-byte Folded Spill
	std	Y+14, r22                       ; 2-byte Folded Spill
	std	Y+17, r21                       ; 2-byte Folded Spill
	std	Y+16, r20                       ; 2-byte Folded Spill
	std	Y+19, r19                       ; 2-byte Folded Spill
	std	Y+18, r18                       ; 2-byte Folded Spill
	std	Y+21, r25                       ; 2-byte Folded Spill
	std	Y+20, r24                       ; 2-byte Folded Spill
	breq	.LBB67_4
	rjmp	.LBB67_3
.LBB67_4:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	ldd	r22, Y+7                        ; 2-byte Folded Reload
	ldd	r23, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	ldd	r18, Y+11                       ; 2-byte Folded Reload
	ldd	r19, Y+12                       ; 2-byte Folded Reload
	ldd	r14, Y+14                       ; 2-byte Folded Reload
	ldd	r15, Y+15                       ; 2-byte Folded Reload
	ldd	r16, Y+16                       ; 2-byte Folded Reload
	ldd	r17, Y+17                       ; 2-byte Folded Reload
	ldd	r26, Y+18                       ; 2-byte Folded Reload
	ldd	r27, Y+19                       ; 2-byte Folded Reload
	ldd	r30, Y+20                       ; 2-byte Folded Reload
	ldd	r31, Y+21                       ; 2-byte Folded Reload
	or	r18, r14
	or	r19, r15
	or	r20, r16
	or	r21, r17
	or	r22, r26
	or	r23, r27
	or	r24, r30
	or	r25, r31
	adiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	ret
.Lfunc_end67:
	.size	rotr64, .Lfunc_end67-rotr64
                                        ; -- End function
	.globl	rotl32                          ; -- Begin function rotl32
	.p2align	1
	.type	rotl32,@function
rotl32:                                 ; @rotl32
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r23
	std	Y+17, r22
	std	Y+16, r21
	std	Y+15, r20
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+15
	cpi	r20, 0
	std	Y+10, r20                       ; 1-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	breq	.LBB68_2
	rjmp	.LBB68_1
.LBB68_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	ldd	r18, Y+11                       ; 2-byte Folded Reload
	ldd	r19, Y+12                       ; 2-byte Folded Reload
	ldd	r20, Y+10                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r18
	lsl	r21
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r21
	cpi	r20, 0
	std	Y+10, r20                       ; 1-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	brne	.LBB68_1
	rjmp	.LBB68_2
.LBB68_2:
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	ldd	r18, Y+13                       ; 2-byte Folded Reload
	ldd	r19, Y+14                       ; 2-byte Folded Reload
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r21, Y+15
	ldi	r20, 32
	sub	r20, r21
	cpi	r20, 0
	std	Y+5, r20                        ; 1-byte Folded Spill
	std	Y+7, r19                        ; 2-byte Folded Spill
	std	Y+6, r18                        ; 2-byte Folded Spill
	std	Y+9, r25                        ; 2-byte Folded Spill
	std	Y+8, r24                        ; 2-byte Folded Spill
	breq	.LBB68_4
	rjmp	.LBB68_3
.LBB68_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+8                        ; 2-byte Folded Reload
	ldd	r25, Y+9                        ; 2-byte Folded Reload
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r20, Y+5                        ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+5, r20                        ; 1-byte Folded Spill
	std	Y+7, r19                        ; 2-byte Folded Spill
	std	Y+6, r18                        ; 2-byte Folded Spill
	std	Y+9, r25                        ; 2-byte Folded Spill
	std	Y+8, r24                        ; 2-byte Folded Spill
	brne	.LBB68_3
	rjmp	.LBB68_4
.LBB68_4:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	ldd	r22, Y+3                        ; 2-byte Folded Reload
	ldd	r23, Y+4                        ; 2-byte Folded Reload
	ldd	r20, Y+6                        ; 2-byte Folded Reload
	ldd	r21, Y+7                        ; 2-byte Folded Reload
	ldd	r18, Y+8                        ; 2-byte Folded Reload
	ldd	r19, Y+9                        ; 2-byte Folded Reload
	or	r22, r20
	or	r23, r21
	or	r24, r18
	or	r25, r19
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end68:
	.size	rotl32, .Lfunc_end68-rotl32
                                        ; -- End function
	.globl	rotr32                          ; -- Begin function rotr32
	.p2align	1
	.type	rotr32,@function
rotr32:                                 ; @rotr32
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r23
	std	Y+17, r22
	std	Y+16, r21
	std	Y+15, r20
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+15
	cpi	r20, 0
	std	Y+10, r20                       ; 1-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	breq	.LBB69_2
	rjmp	.LBB69_1
.LBB69_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	ldd	r18, Y+11                       ; 2-byte Folded Reload
	ldd	r19, Y+12                       ; 2-byte Folded Reload
	ldd	r20, Y+10                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+10, r20                       ; 1-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	brne	.LBB69_1
	rjmp	.LBB69_2
.LBB69_2:
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	ldd	r18, Y+13                       ; 2-byte Folded Reload
	ldd	r19, Y+14                       ; 2-byte Folded Reload
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r21, Y+15
	ldi	r20, 32
	sub	r20, r21
	cpi	r20, 0
	std	Y+5, r20                        ; 1-byte Folded Spill
	std	Y+7, r19                        ; 2-byte Folded Spill
	std	Y+6, r18                        ; 2-byte Folded Spill
	std	Y+9, r25                        ; 2-byte Folded Spill
	std	Y+8, r24                        ; 2-byte Folded Spill
	breq	.LBB69_4
	rjmp	.LBB69_3
.LBB69_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+8                        ; 2-byte Folded Reload
	ldd	r25, Y+9                        ; 2-byte Folded Reload
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r20, Y+5                        ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r18
	lsl	r21
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r21
	cpi	r20, 0
	std	Y+5, r20                        ; 1-byte Folded Spill
	std	Y+7, r19                        ; 2-byte Folded Spill
	std	Y+6, r18                        ; 2-byte Folded Spill
	std	Y+9, r25                        ; 2-byte Folded Spill
	std	Y+8, r24                        ; 2-byte Folded Spill
	brne	.LBB69_3
	rjmp	.LBB69_4
.LBB69_4:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	ldd	r22, Y+3                        ; 2-byte Folded Reload
	ldd	r23, Y+4                        ; 2-byte Folded Reload
	ldd	r20, Y+6                        ; 2-byte Folded Reload
	ldd	r21, Y+7                        ; 2-byte Folded Reload
	ldd	r18, Y+8                        ; 2-byte Folded Reload
	ldd	r19, Y+9                        ; 2-byte Folded Reload
	or	r22, r20
	or	r23, r21
	or	r24, r18
	or	r25, r19
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end69:
	.size	rotr32, .Lfunc_end69-rotr32
                                        ; -- End function
	.globl	rotl_sz                         ; -- Begin function rotl_sz
	.p2align	1
	.type	rotl_sz,@function
rotl_sz:                                ; @rotl_sz
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+27, r25
	std	Y+26, r24
	std	Y+25, r23
	std	Y+24, r22
	ldd	r24, Y+26
	ldd	r25, Y+27
	std	Y+17, r25                       ; 2-byte Folded Spill
	std	Y+16, r24                       ; 2-byte Folded Spill
	ldd	r18, Y+24
	std	Y+18, r18                       ; 1-byte Folded Spill
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	rjmp	.LBB70_2
.LBB70_1:                               ;   in Loop: Header=BB70_2 Depth=1
	ldd	r18, Y+15                       ; 1-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	lsl	r24
	rol	r25
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
.LBB70_2:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+19                       ; 2-byte Folded Reload
	ldd	r19, Y+20                       ; 2-byte Folded Reload
	ldd	r24, Y+21                       ; 1-byte Folded Reload
	ldd	r20, Y+22                       ; 2-byte Folded Reload
	ldd	r21, Y+23                       ; 2-byte Folded Reload
	std	Y+12, r21                       ; 2-byte Folded Spill
	std	Y+11, r20                       ; 2-byte Folded Spill
	std	Y+14, r19                       ; 2-byte Folded Spill
	std	Y+13, r18                       ; 2-byte Folded Spill
	dec	r24
	std	Y+15, r24                       ; 1-byte Folded Spill
	brpl	.LBB70_1
; %bb.3:
	ldd	r24, Y+16                       ; 2-byte Folded Reload
	ldd	r25, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 1-byte Folded Reload
	ldi	r18, 16
	sub	r18, r19
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB70_5
.LBB70_4:                               ;   in Loop: Header=BB70_5 Depth=1
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB70_5:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB70_4
; %bb.6:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	or	r24, r18
	or	r25, r19
	adiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end70:
	.size	rotl_sz, .Lfunc_end70-rotl_sz
                                        ; -- End function
	.globl	rotr_sz                         ; -- Begin function rotr_sz
	.p2align	1
	.type	rotr_sz,@function
rotr_sz:                                ; @rotr_sz
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+27, r25
	std	Y+26, r24
	std	Y+25, r23
	std	Y+24, r22
	ldd	r24, Y+26
	ldd	r25, Y+27
	std	Y+17, r25                       ; 2-byte Folded Spill
	std	Y+16, r24                       ; 2-byte Folded Spill
	ldd	r18, Y+24
	std	Y+18, r18                       ; 1-byte Folded Spill
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	rjmp	.LBB71_2
.LBB71_1:                               ;   in Loop: Header=BB71_2 Depth=1
	ldd	r18, Y+15                       ; 1-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
.LBB71_2:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+19                       ; 2-byte Folded Reload
	ldd	r19, Y+20                       ; 2-byte Folded Reload
	ldd	r24, Y+21                       ; 1-byte Folded Reload
	ldd	r20, Y+22                       ; 2-byte Folded Reload
	ldd	r21, Y+23                       ; 2-byte Folded Reload
	std	Y+12, r21                       ; 2-byte Folded Spill
	std	Y+11, r20                       ; 2-byte Folded Spill
	std	Y+14, r19                       ; 2-byte Folded Spill
	std	Y+13, r18                       ; 2-byte Folded Spill
	dec	r24
	std	Y+15, r24                       ; 1-byte Folded Spill
	brpl	.LBB71_1
; %bb.3:
	ldd	r24, Y+16                       ; 2-byte Folded Reload
	ldd	r25, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 1-byte Folded Reload
	ldi	r18, 16
	sub	r18, r19
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB71_5
.LBB71_4:                               ;   in Loop: Header=BB71_5 Depth=1
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsl	r24
	rol	r25
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB71_5:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB71_4
; %bb.6:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	or	r24, r18
	or	r25, r19
	adiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end71:
	.size	rotr_sz, .Lfunc_end71-rotr_sz
                                        ; -- End function
	.globl	rotl16                          ; -- Begin function rotl16
	.p2align	1
	.type	rotl16,@function
rotl16:                                 ; @rotl16
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+27, r25
	std	Y+26, r24
	std	Y+25, r23
	std	Y+24, r22
	ldd	r24, Y+26
	ldd	r25, Y+27
	std	Y+17, r25                       ; 2-byte Folded Spill
	std	Y+16, r24                       ; 2-byte Folded Spill
	ldd	r18, Y+24
	std	Y+18, r18                       ; 1-byte Folded Spill
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	rjmp	.LBB72_2
.LBB72_1:                               ;   in Loop: Header=BB72_2 Depth=1
	ldd	r18, Y+15                       ; 1-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	lsl	r24
	rol	r25
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
.LBB72_2:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+19                       ; 2-byte Folded Reload
	ldd	r19, Y+20                       ; 2-byte Folded Reload
	ldd	r24, Y+21                       ; 1-byte Folded Reload
	ldd	r20, Y+22                       ; 2-byte Folded Reload
	ldd	r21, Y+23                       ; 2-byte Folded Reload
	std	Y+12, r21                       ; 2-byte Folded Spill
	std	Y+11, r20                       ; 2-byte Folded Spill
	std	Y+14, r19                       ; 2-byte Folded Spill
	std	Y+13, r18                       ; 2-byte Folded Spill
	dec	r24
	std	Y+15, r24                       ; 1-byte Folded Spill
	brpl	.LBB72_1
; %bb.3:
	ldd	r24, Y+16                       ; 2-byte Folded Reload
	ldd	r25, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 1-byte Folded Reload
	ldi	r18, 16
	sub	r18, r19
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB72_5
.LBB72_4:                               ;   in Loop: Header=BB72_5 Depth=1
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB72_5:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB72_4
; %bb.6:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	or	r24, r18
	or	r25, r19
	adiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end72:
	.size	rotl16, .Lfunc_end72-rotl16
                                        ; -- End function
	.globl	rotr16                          ; -- Begin function rotr16
	.p2align	1
	.type	rotr16,@function
rotr16:                                 ; @rotr16
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+27, r25
	std	Y+26, r24
	std	Y+25, r23
	std	Y+24, r22
	ldd	r24, Y+26
	ldd	r25, Y+27
	std	Y+17, r25                       ; 2-byte Folded Spill
	std	Y+16, r24                       ; 2-byte Folded Spill
	ldd	r18, Y+24
	std	Y+18, r18                       ; 1-byte Folded Spill
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	rjmp	.LBB73_2
.LBB73_1:                               ;   in Loop: Header=BB73_2 Depth=1
	ldd	r18, Y+15                       ; 1-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
.LBB73_2:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+19                       ; 2-byte Folded Reload
	ldd	r19, Y+20                       ; 2-byte Folded Reload
	ldd	r24, Y+21                       ; 1-byte Folded Reload
	ldd	r20, Y+22                       ; 2-byte Folded Reload
	ldd	r21, Y+23                       ; 2-byte Folded Reload
	std	Y+12, r21                       ; 2-byte Folded Spill
	std	Y+11, r20                       ; 2-byte Folded Spill
	std	Y+14, r19                       ; 2-byte Folded Spill
	std	Y+13, r18                       ; 2-byte Folded Spill
	dec	r24
	std	Y+15, r24                       ; 1-byte Folded Spill
	brpl	.LBB73_1
; %bb.3:
	ldd	r24, Y+16                       ; 2-byte Folded Reload
	ldd	r25, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 1-byte Folded Reload
	ldi	r18, 16
	sub	r18, r19
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB73_5
.LBB73_4:                               ;   in Loop: Header=BB73_5 Depth=1
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsl	r24
	rol	r25
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB73_5:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB73_4
; %bb.6:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	or	r24, r18
	or	r25, r19
	adiw	r28, 27
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end73:
	.size	rotr16, .Lfunc_end73-rotr16
                                        ; -- End function
	.globl	rotl8                           ; -- Begin function rotl8
	.p2align	1
	.type	rotl8,@function
rotl8:                                  ; @rotl8
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+26, r24
	std	Y+25, r23
	std	Y+24, r22
	ldd	r24, Y+26
	clr	r25
	std	Y+17, r25                       ; 2-byte Folded Spill
	std	Y+16, r24                       ; 2-byte Folded Spill
	ldd	r18, Y+24
	std	Y+18, r18                       ; 1-byte Folded Spill
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	rjmp	.LBB74_2
.LBB74_1:                               ;   in Loop: Header=BB74_2 Depth=1
	ldd	r18, Y+15                       ; 1-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	lsl	r24
	rol	r25
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
.LBB74_2:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+19                       ; 2-byte Folded Reload
	ldd	r19, Y+20                       ; 2-byte Folded Reload
	ldd	r24, Y+21                       ; 1-byte Folded Reload
	ldd	r20, Y+22                       ; 2-byte Folded Reload
	ldd	r21, Y+23                       ; 2-byte Folded Reload
	std	Y+12, r21                       ; 2-byte Folded Spill
	std	Y+11, r20                       ; 2-byte Folded Spill
	std	Y+14, r19                       ; 2-byte Folded Spill
	std	Y+13, r18                       ; 2-byte Folded Spill
	dec	r24
	std	Y+15, r24                       ; 1-byte Folded Spill
	brpl	.LBB74_1
; %bb.3:
	ldd	r24, Y+16                       ; 2-byte Folded Reload
	ldd	r25, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 1-byte Folded Reload
	ldi	r18, 8
	sub	r18, r19
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB74_5
.LBB74_4:                               ;   in Loop: Header=BB74_5 Depth=1
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB74_5:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB74_4
; %bb.6:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	or	r24, r18
	or	r25, r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	adiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end74:
	.size	rotl8, .Lfunc_end74-rotl8
                                        ; -- End function
	.globl	rotr8                           ; -- Begin function rotr8
	.p2align	1
	.type	rotr8,@function
rotr8:                                  ; @rotr8
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+26, r24
	std	Y+25, r23
	std	Y+24, r22
	ldd	r24, Y+26
	clr	r25
	std	Y+17, r25                       ; 2-byte Folded Spill
	std	Y+16, r24                       ; 2-byte Folded Spill
	ldd	r18, Y+24
	std	Y+18, r18                       ; 1-byte Folded Spill
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	rjmp	.LBB75_2
.LBB75_1:                               ;   in Loop: Header=BB75_2 Depth=1
	ldd	r18, Y+15                       ; 1-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+20, r21                       ; 2-byte Folded Spill
	std	Y+19, r20                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 1-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
.LBB75_2:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+19                       ; 2-byte Folded Reload
	ldd	r19, Y+20                       ; 2-byte Folded Reload
	ldd	r24, Y+21                       ; 1-byte Folded Reload
	ldd	r20, Y+22                       ; 2-byte Folded Reload
	ldd	r21, Y+23                       ; 2-byte Folded Reload
	std	Y+12, r21                       ; 2-byte Folded Spill
	std	Y+11, r20                       ; 2-byte Folded Spill
	std	Y+14, r19                       ; 2-byte Folded Spill
	std	Y+13, r18                       ; 2-byte Folded Spill
	dec	r24
	std	Y+15, r24                       ; 1-byte Folded Spill
	brpl	.LBB75_1
; %bb.3:
	ldd	r24, Y+16                       ; 2-byte Folded Reload
	ldd	r25, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 1-byte Folded Reload
	ldi	r18, 8
	sub	r18, r19
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB75_5
.LBB75_4:                               ;   in Loop: Header=BB75_5 Depth=1
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsl	r24
	rol	r25
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB75_5:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB75_4
; %bb.6:
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	or	r24, r18
	or	r25, r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	adiw	r28, 26
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end75:
	.size	rotr8, .Lfunc_end75-rotr8
                                        ; -- End function
	.globl	bswap_16                        ; -- Begin function bswap_16
	.p2align	1
	.type	bswap_16,@function
bswap_16:                               ; @bswap_16
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldi	r24, 255
	ldi	r25, 0
	std	Y+2, r25
	std	Y+1, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldd	r20, Y+1
	ldd	r21, Y+2
	mov	r22, r20
	mov	r23, r21
	mov	r23, r22
	clr	r22
	mov	r24, r18
	mov	r25, r19
	and	r24, r22
	and	r25, r23
	mov	r24, r25
	clr	r25
	and	r18, r20
	and	r19, r21
	mov	r19, r18
	clr	r18
	or	r24, r18
	or	r25, r19
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end76:
	.size	bswap_16, .Lfunc_end76-bswap_16
                                        ; -- End function
	.globl	bswap_32                        ; -- Begin function bswap_32
	.p2align	1
	.type	bswap_32,@function
bswap_32:                               ; @bswap_32
; %bb.0:
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	ldi	r18, 255
	ldi	r19, 0
	std	Y+4, r19
	std	Y+3, r18
	ldd	r18, Y+7
	ldd	r19, Y+8
	ldd	r30, Y+9
	ldd	r31, Y+10
	ldd	r26, Y+5
	ldd	r27, Y+6
	ldd	r20, Y+3
	ldd	r21, Y+4
	mov	r22, r1
	mov	r17, r20
	mov	r16, r22
	mov	r15, r22
	mov	r14, r22
	mov	r22, r30
	mov	r23, r31
	and	r22, r16
	and	r23, r17
	mov	r16, r18
	mov	r17, r19
	and	r16, r14
	and	r17, r15
	mov	r15, r1
	mov	r22, r23
	mov	r23, r15
	mov	r16, r15
	mov	r17, r15
	std	Y+2, r17                        ; 2-byte Folded Spill
	std	Y+1, r16                        ; 2-byte Folded Spill
	mov	r16, r30
	mov	r17, r31
	and	r16, r20
	and	r17, r21
	mov	r13, r1
	mov	r14, r25
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	mov	r15, r16
	mov	r16, r17
	mov	r17, r13
	or	r22, r14
	or	r23, r15
	or	r24, r16
	or	r25, r17
	mov	r13, r1
	mov	r15, r30
	mov	r14, r19
	mov	r17, r18
                                        ; kill: def $r16 killed $r13
	mov	r16, r20
	mov	r17, r21
	and	r16, r14
	and	r17, r15
	or	r24, r16
	or	r25, r17
	and	r30, r26
	and	r31, r27
	and	r18, r20
	and	r19, r21
	mov	r30, r1
	mov	r19, r18
	mov	r18, r30
	mov	r21, r30
	mov	r20, r30
	or	r22, r20
	or	r23, r21
	or	r24, r18
	or	r25, r19
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	ret
.Lfunc_end77:
	.size	bswap_32, .Lfunc_end77-bswap_32
                                        ; -- End function
	.globl	bswap_64                        ; -- Begin function bswap_64
	.p2align	1
	.type	bswap_64,@function
bswap_64:                               ; @bswap_64
; %bb.0:
	push	r2
	push	r3
	push	r4
	push	r5
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 36
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+32, r25
	std	Y+31, r24
	std	Y+30, r23
	std	Y+29, r22
	std	Y+28, r21
	std	Y+27, r20
	std	Y+26, r19
	std	Y+25, r18
	ldi	r22, 0
	ldi	r23, 0
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r23
	std	Y+19, r22
	ldi	r24, 255
	ldi	r25, 0
	std	Y+18, r25
	std	Y+17, r24
	ldd	r16, Y+27
	ldd	r17, Y+28
	ldd	r30, Y+25
	ldd	r31, Y+26
	ldd	r8, Y+29
	ldd	r9, Y+30
	ldd	r2, Y+31
	ldd	r3, Y+32
	std	Y+8, r3                         ; 2-byte Folded Spill
	std	Y+7, r2                         ; 2-byte Folded Spill
	ldd	r14, Y+19
	ldd	r15, Y+20
	ldd	r26, Y+17
	ldd	r27, Y+18
	mov	r18, r1
	mov	r25, r26
	mov	r24, r18
	mov	r21, r18
	mov	r20, r18
	mov	r18, r2
	mov	r19, r3
	and	r18, r24
	and	r19, r25
	mov	r24, r8
	mov	r25, r9
	and	r24, r20
	and	r25, r21
	mov	r24, r1
	mov	r18, r19
	mov	r19, r24
	mov	r20, r24
	mov	r21, r24
	mov	r24, r2
	mov	r25, r3
	and	r24, r26
	and	r25, r27
	mov	r13, r1
	mov	r22, r23
	mov	r23, r24
	mov	r24, r25
	mov	r25, r13
	or	r18, r22
	or	r19, r23
	or	r20, r24
	or	r21, r25
	mov	r24, r1
	mov	r13, r14
	mov	r12, r27
	mov	r11, r26
	mov	r10, r24
	and	r2, r12
	and	r3, r13
	mov	r4, r8
	mov	r5, r9
	and	r4, r10
	and	r5, r11
	mov	r24, r1
	mov	r22, r3
	mov	r23, r24
	mov	r6, r24
	mov	r7, r24
	mov	r24, r1
	mov	r3, r2
	mov	r2, r5
	mov	r5, r4
	mov	r4, r24
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	or	r20, r2
	or	r21, r3
	or	r18, r4
	or	r19, r5
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	and	r24, r14
	and	r25, r15
	mov	r18, r8
	mov	r19, r9
	and	r18, r26
	and	r19, r27
	mov	r3, r1
	mov	r4, r19
	mov	r5, r24
	mov	r24, r25
	mov	r25, r3
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	mov	r24, r1
	mov	r3, r18
	mov	r2, r24
	mov	r19, r24
	mov	r18, r24
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	or	r24, r18
	or	r25, r19
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	ldd	r24, Y+9                        ; 2-byte Folded Reload
	ldd	r25, Y+10                       ; 2-byte Folded Reload
	or	r20, r2
	or	r21, r3
	or	r22, r4
	or	r23, r5
	or	r6, r24
	or	r7, r25
	mov	r24, r1
	mov	r4, r17
	mov	r5, r24
	std	Y+12, r5                        ; 2-byte Folded Spill
	std	Y+11, r4                        ; 2-byte Folded Spill
	mov	r4, r24
	mov	r5, r24
	mov	r24, r1
	mov	r3, r18
	mov	r2, r9
	mov	r19, r8
	mov	r18, r24
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	or	r18, r24
	or	r19, r25
	mov	r24, r26
	mov	r25, r27
	and	r24, r18
	and	r25, r19
	ldd	r18, Y+13                       ; 2-byte Folded Reload
	ldd	r19, Y+14                       ; 2-byte Folded Reload
	or	r2, r4
	or	r3, r5
	mov	r4, r14
	mov	r5, r15
	and	r4, r2
	and	r5, r3
	or	r6, r4
	or	r7, r5
	std	Y+16, r7                        ; 2-byte Folded Spill
	std	Y+15, r6                        ; 2-byte Folded Spill
	or	r22, r24
	or	r23, r25
	mov	r24, r1
	mov	r6, r31
	mov	r7, r16
	mov	r2, r17
	mov	r3, r24
	mov	r24, r1
	mov	r5, r8
	mov	r4, r24
	mov	r9, r24
	mov	r8, r24
	ldd	r24, Y+15                       ; 2-byte Folded Reload
	ldd	r25, Y+16                       ; 2-byte Folded Reload
	or	r4, r2
	or	r5, r3
	and	r12, r4
	and	r13, r5
	or	r8, r6
	or	r9, r7
	and	r10, r8
	and	r11, r9
	or	r22, r10
	or	r23, r11
	or	r24, r12
	or	r25, r13
	mov	r9, r1
	mov	r11, r16
	mov	r10, r31
	mov	r13, r30
                                        ; kill: def $r12 killed $r9
	mov	r12, r26
	mov	r13, r27
	and	r12, r10
	and	r13, r11
	or	r24, r12
	or	r25, r13
	and	r16, r14
	and	r17, r15
	and	r30, r26
	and	r31, r27
	mov	r17, r1
	mov	r31, r30
	mov	r30, r17
	mov	r27, r17
	mov	r26, r17
	or	r22, r26
	or	r23, r27
	or	r24, r30
	or	r25, r31
	adiw	r28, 36
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	pop	r6
	pop	r5
	pop	r4
	pop	r3
	pop	r2
	ret
.Lfunc_end78:
	.size	bswap_64, .Lfunc_end78-bswap_64
                                        ; -- End function
	.globl	ffs                             ; -- Begin function ffs
	.p2align	1
	.type	ffs,@function
ffs:                                    ; @ffs
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+14, r25
	std	Y+13, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB79_1
.LBB79_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB79_4 Depth 2
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 16
	cpc	r24, r1
	brlo	.LBB79_2
	rjmp	.LBB79_9
.LBB79_2:                               ;   in Loop: Header=BB79_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+11
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB79_4
.LBB79_3:                               ;   in Loop: Header=BB79_4 Depth=2
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB79_4:                               ;   Parent Loop BB79_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB79_3
; %bb.5:                                ;   in Loop: Header=BB79_1 Depth=1
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	andi	r18, 1
	andi	r19, 0
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB79_7
	rjmp	.LBB79_6
.LBB79_6:
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB79_10
.LBB79_7:                               ;   in Loop: Header=BB79_1 Depth=1
	rjmp	.LBB79_8
.LBB79_8:                               ;   in Loop: Header=BB79_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB79_1
.LBB79_9:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB79_10
.LBB79_10:
	ldd	r24, Y+15
	ldd	r25, Y+16
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end79:
	.size	ffs, .Lfunc_end79-ffs
                                        ; -- End function
	.globl	libiberty_ffs                   ; -- Begin function libiberty_ffs
	.p2align	1
	.type	libiberty_ffs,@function
libiberty_ffs:                          ; @libiberty_ffs
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB80_2
	rjmp	.LBB80_1
.LBB80_1:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB80_7
.LBB80_2:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB80_3
.LBB80_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+3
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB80_6
	rjmp	.LBB80_4
.LBB80_4:                               ;   in Loop: Header=BB80_3 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	asr	r25
	ror	r24
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB80_5
.LBB80_5:                               ;   in Loop: Header=BB80_3 Depth=1
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r24, 1
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB80_3
.LBB80_6:
	ldd	r24, Y+1
	ldd	r25, Y+2
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB80_7
.LBB80_7:
	ldd	r24, Y+5
	ldd	r25, Y+6
	adiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end80:
	.size	libiberty_ffs, .Lfunc_end80-libiberty_ffs
                                        ; -- End function
	.globl	gl_isinff                       ; -- Begin function gl_isinff
	.p2align	1
	.type	gl_isinff,@function
gl_isinff:                              ; @gl_isinff
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+7, r25
	std	Y+6, r24
	std	Y+5, r23
	std	Y+4, r22
	ldd	r22, Y+4
	ldd	r23, Y+5
	ldd	r24, Y+6
	ldd	r25, Y+7
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 255
	rcall	__ltsf2
	mov	r25, r24
	ldi	r24, 1
	tst	r25
	std	Y+3, r24                        ; 1-byte Folded Spill
	brmi	.LBB81_4
	rjmp	.LBB81_1
.LBB81_1:
	ldd	r22, Y+4
	ldd	r23, Y+5
	ldd	r24, Y+6
	ldd	r25, Y+7
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 127
	rcall	__gtsf2
	mov	r18, r24
	mov	r25, r1
	std	Y+1, r25                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r25, r18
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlt	.LBB81_2
	rjmp	.LBB81_3
.LBB81_2:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB81_4
	rjmp	.LBB81_4
.LBB81_3:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB81_2
.LBB81_4:
	ldd	r18, Y+3                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end81:
	.size	gl_isinff, .Lfunc_end81-gl_isinff
                                        ; -- End function
	.globl	gl_isinfd                       ; -- Begin function gl_isinfd
	.p2align	1
	.type	gl_isinfd,@function
gl_isinfd:                              ; @gl_isinfd
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 255
	rcall	__ltsf2
	mov	r25, r24
	ldi	r24, 1
	tst	r25
	std	Y+4, r24                        ; 1-byte Folded Spill
	brmi	.LBB82_4
	rjmp	.LBB82_1
.LBB82_1:
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 127
	rcall	__gtsf2
	mov	r18, r24
	mov	r25, r1
	std	Y+2, r25                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r25, r18
	std	Y+3, r24                        ; 1-byte Folded Spill
	brlt	.LBB82_2
	rjmp	.LBB82_3
.LBB82_2:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB82_4
	rjmp	.LBB82_4
.LBB82_3:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB82_2
.LBB82_4:
	ldd	r18, Y+4                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end82:
	.size	gl_isinfd, .Lfunc_end82-gl_isinfd
                                        ; -- End function
	.globl	gl_isinfl                       ; -- Begin function gl_isinfl
	.p2align	1
	.type	gl_isinfl,@function
gl_isinfl:                              ; @gl_isinfl
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+7, r25
	std	Y+6, r24
	std	Y+5, r23
	std	Y+4, r22
	ldd	r22, Y+4
	ldd	r23, Y+5
	ldd	r24, Y+6
	ldd	r25, Y+7
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 255
	rcall	__ltsf2
	mov	r25, r24
	ldi	r24, 1
	tst	r25
	std	Y+3, r24                        ; 1-byte Folded Spill
	brmi	.LBB83_4
	rjmp	.LBB83_1
.LBB83_1:
	ldd	r22, Y+4
	ldd	r23, Y+5
	ldd	r24, Y+6
	ldd	r25, Y+7
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 127
	rcall	__gtsf2
	mov	r18, r24
	mov	r25, r1
	std	Y+1, r25                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r25, r18
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlt	.LBB83_2
	rjmp	.LBB83_3
.LBB83_2:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB83_4
	rjmp	.LBB83_4
.LBB83_3:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB83_2
.LBB83_4:
	ldd	r18, Y+3                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 7
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end83:
	.size	gl_isinfl, .Lfunc_end83-gl_isinfl
                                        ; -- End function
	.globl	_Qp_itoq                        ; -- Begin function _Qp_itoq
	.p2align	1
	.type	_Qp_itoq,@function
_Qp_itoq:                               ; @_Qp_itoq
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+6, r25
	std	Y+5, r24
	std	Y+4, r23
	std	Y+3, r22
	ldd	r22, Y+3
	ldd	r23, Y+4
	mov	r24, r22
	mov	r25, r23
	lsl	r25
	sbc	r25, r25
	mov	r24, r25
	rcall	__floatsisf
	ldd	r30, Y+5
	ldd	r31, Y+6
	std	Y+2, r31                        ; 2-byte Folded Spill
	std	Y+1, r30                        ; 2-byte Folded Spill
	std	Z+3, r25
	std	Z+2, r24
	ldd	r30, Y+1                        ; 2-byte Folded Reload
	ldd	r31, Y+2                        ; 2-byte Folded Reload
	std	Z+1, r23
	st	Z, r22
	adiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end84:
	.size	_Qp_itoq, .Lfunc_end84-_Qp_itoq
                                        ; -- End function
	.globl	ldexpf                          ; -- Begin function ldexpf
	.p2align	1
	.type	ldexpf,@function
ldexpf:                                 ; @ldexpf
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r23
	std	Y+17, r22
	std	Y+16, r21
	std	Y+15, r20
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+10, r24                       ; 1-byte Folded Spill
	brge	.LBB85_1
	rjmp	.LBB85_2
.LBB85_1:
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB85_3
	rjmp	.LBB85_13
.LBB85_2:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB85_1
.LBB85_3:
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+19
	ldd	r21, Y+20
	std	Y+8, r21                        ; 2-byte Folded Spill
	std	Y+7, r20                        ; 2-byte Folded Spill
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__addsf3
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	ldd	r20, Y+7                        ; 2-byte Folded Reload
	ldd	r21, Y+8                        ; 2-byte Folded Reload
	rcall	__eqsf2
	cpi	r24, 0
	brne	.LBB85_4
	rjmp	.LBB85_13
.LBB85_4:
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r18, r25
	ldi	r24, 0
	ldi	r25, 64
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldi	r24, 0
	ldi	r25, 63
	tst	r18
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	brmi	.LBB85_5
	rjmp	.LBB85_6
.LBB85_5:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	ldi	r18, 0
	ldi	r19, 0
	std	Y+12, r19
	std	Y+11, r18
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB85_7
	rjmp	.LBB85_7
.LBB85_6:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB85_5
.LBB85_7:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r20, r18
	mov	r21, r19
	mov	r20, r21
	swap	r20
	andi	r20, 15
	clr	r21
	lsr	r20
	lsr	r20
	lsr	r20
	mov	r24, r18
	mov	r25, r19
	add	r24, r20
	adc	r25, r21
	andi	r24, 254
	sub	r18, r24
	sbc	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB85_9
	rjmp	.LBB85_8
.LBB85_8:                               ;   in Loop: Header=BB85_7 Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r20, Y+13
	ldd	r21, Y+14
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	rcall	__mulsf3
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r23
	std	Y+17, r22
	rjmp	.LBB85_9
.LBB85_9:                               ;   in Loop: Header=BB85_7 Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r18, r24
	mov	r19, r25
	mov	r18, r19
	swap	r18
	andi	r18, 15
	clr	r19
	lsr	r18
	lsr	r18
	lsr	r18
	add	r24, r18
	adc	r25, r19
	asr	r25
	ror	r24
	std	Y+16, r25
	std	Y+15, r24
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB85_11
	rjmp	.LBB85_10
.LBB85_10:
	rjmp	.LBB85_12
.LBB85_11:                              ;   in Loop: Header=BB85_7 Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsf3
	std	Y+14, r25
	std	Y+13, r24
	std	Y+12, r23
	std	Y+11, r22
	rjmp	.LBB85_7
.LBB85_12:
	rjmp	.LBB85_13
.LBB85_13:
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end85:
	.size	ldexpf, .Lfunc_end85-ldexpf
                                        ; -- End function
	.globl	ldexp                           ; -- Begin function ldexp
	.p2align	1
	.type	ldexp,@function
ldexp:                                  ; @ldexp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 24
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r21
	std	Y+19, r20
	ldd	r18, Y+23
	ldd	r19, Y+24
	ldd	r24, Y+21
	ldd	r25, Y+22
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	brge	.LBB86_1
	rjmp	.LBB86_2
.LBB86_1:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB86_3
	rjmp	.LBB86_13
.LBB86_2:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB86_1
.LBB86_3:
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+23
	ldd	r21, Y+24
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__addsf3
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	rcall	__eqsf2
	cpi	r24, 0
	brne	.LBB86_4
	rjmp	.LBB86_13
.LBB86_4:
	ldd	r24, Y+19
	ldd	r25, Y+20
	mov	r18, r25
	ldi	r24, 0
	ldi	r25, 64
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	ldi	r24, 0
	ldi	r25, 63
	tst	r18
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	brmi	.LBB86_5
	rjmp	.LBB86_6
.LBB86_5:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	ldi	r18, 0
	ldi	r19, 0
	std	Y+14, r19
	std	Y+13, r18
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB86_7
	rjmp	.LBB86_7
.LBB86_6:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB86_5
.LBB86_7:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+19
	ldd	r19, Y+20
	mov	r20, r18
	mov	r21, r19
	mov	r20, r21
	swap	r20
	andi	r20, 15
	clr	r21
	lsr	r20
	lsr	r20
	lsr	r20
	mov	r24, r18
	mov	r25, r19
	add	r24, r20
	adc	r25, r21
	andi	r24, 254
	sub	r18, r24
	sbc	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB86_9
	rjmp	.LBB86_8
.LBB86_8:                               ;   in Loop: Header=BB86_7 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	rcall	__mulsf3
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	rjmp	.LBB86_9
.LBB86_9:                               ;   in Loop: Header=BB86_7 Depth=1
	ldd	r24, Y+19
	ldd	r25, Y+20
	mov	r18, r24
	mov	r19, r25
	mov	r18, r19
	swap	r18
	andi	r18, 15
	clr	r19
	lsr	r18
	lsr	r18
	lsr	r18
	add	r24, r18
	adc	r25, r19
	asr	r25
	ror	r24
	std	Y+20, r25
	std	Y+19, r24
	ldd	r18, Y+19
	ldd	r19, Y+20
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB86_11
	rjmp	.LBB86_10
.LBB86_10:
	rjmp	.LBB86_12
.LBB86_11:                              ;   in Loop: Header=BB86_7 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsf3
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	rjmp	.LBB86_7
.LBB86_12:
	rjmp	.LBB86_13
.LBB86_13:
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	adiw	r28, 24
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end86:
	.size	ldexp, .Lfunc_end86-ldexp
                                        ; -- End function
	.globl	ldexpl                          ; -- Begin function ldexpl
	.p2align	1
	.type	ldexpl,@function
ldexpl:                                 ; @ldexpl
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r23
	std	Y+17, r22
	std	Y+16, r21
	std	Y+15, r20
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	andi	r19, 127
	ldi	r20, 128
	ldi	r21, 127
	mov	r24, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+10, r24                       ; 1-byte Folded Spill
	brge	.LBB87_1
	rjmp	.LBB87_2
.LBB87_1:
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB87_3
	rjmp	.LBB87_13
.LBB87_2:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB87_1
.LBB87_3:
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+19
	ldd	r21, Y+20
	std	Y+8, r21                        ; 2-byte Folded Spill
	std	Y+7, r20                        ; 2-byte Folded Spill
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__addsf3
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	ldd	r20, Y+7                        ; 2-byte Folded Reload
	ldd	r21, Y+8                        ; 2-byte Folded Reload
	rcall	__eqsf2
	cpi	r24, 0
	brne	.LBB87_4
	rjmp	.LBB87_13
.LBB87_4:
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r18, r25
	ldi	r24, 0
	ldi	r25, 64
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldi	r24, 0
	ldi	r25, 63
	tst	r18
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	brmi	.LBB87_5
	rjmp	.LBB87_6
.LBB87_5:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	ldi	r18, 0
	ldi	r19, 0
	std	Y+12, r19
	std	Y+11, r18
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB87_7
	rjmp	.LBB87_7
.LBB87_6:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB87_5
.LBB87_7:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r20, r18
	mov	r21, r19
	mov	r20, r21
	swap	r20
	andi	r20, 15
	clr	r21
	lsr	r20
	lsr	r20
	lsr	r20
	mov	r24, r18
	mov	r25, r19
	add	r24, r20
	adc	r25, r21
	andi	r24, 254
	sub	r18, r24
	sbc	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB87_9
	rjmp	.LBB87_8
.LBB87_8:                               ;   in Loop: Header=BB87_7 Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r20, Y+13
	ldd	r21, Y+14
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	rcall	__mulsf3
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r23
	std	Y+17, r22
	rjmp	.LBB87_9
.LBB87_9:                               ;   in Loop: Header=BB87_7 Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	mov	r18, r24
	mov	r19, r25
	mov	r18, r19
	swap	r18
	andi	r18, 15
	clr	r19
	lsr	r18
	lsr	r18
	lsr	r18
	add	r24, r18
	adc	r25, r19
	asr	r25
	ror	r24
	std	Y+16, r25
	std	Y+15, r24
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB87_11
	rjmp	.LBB87_10
.LBB87_10:
	rjmp	.LBB87_12
.LBB87_11:                              ;   in Loop: Header=BB87_7 Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsf3
	std	Y+14, r25
	std	Y+13, r24
	std	Y+12, r23
	std	Y+11, r22
	rjmp	.LBB87_7
.LBB87_12:
	rjmp	.LBB87_13
.LBB87_13:
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end87:
	.size	ldexpl, .Lfunc_end87-ldexpl
                                        ; -- End function
	.globl	memxor                          ; -- Begin function memxor
	.p2align	1
	.type	memxor,@function
memxor:                                 ; @memxor
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+10, r25
	std	Y+9, r24
	std	Y+8, r23
	std	Y+7, r22
	std	Y+6, r21
	std	Y+5, r20
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB88_1
.LBB88_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB88_4
	rjmp	.LBB88_2
.LBB88_2:                               ;   in Loop: Header=BB88_1 Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	ld	r25, X
	ldd	r26, Y+1
	ldd	r27, Y+2
	mov	r30, r26
	mov	r31, r27
	adiw	r30, 1
	std	Y+2, r31
	std	Y+1, r30
	mov	r30, r26
	mov	r31, r27
	ld	r24, Z
	eor	r24, r25
	st	X, r24
	rjmp	.LBB88_3
.LBB88_3:                               ;   in Loop: Header=BB88_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	sbiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB88_1
.LBB88_4:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end88:
	.size	memxor, .Lfunc_end88-memxor
                                        ; -- End function
	.globl	strncat                         ; -- Begin function strncat
	.p2align	1
	.type	strncat,@function
strncat:                                ; @strncat
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 13
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+13, r25
	std	Y+12, r24
	std	Y+11, r23
	std	Y+10, r22
	std	Y+9, r21
	std	Y+8, r20
	ldd	r24, Y+12
	ldd	r25, Y+13
	std	Y+5, r25                        ; 2-byte Folded Spill
	std	Y+4, r24                        ; 2-byte Folded Spill
	rcall	strlen
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+4                        ; 2-byte Folded Reload
	ldd	r25, Y+5                        ; 2-byte Folded Reload
	add	r24, r18
	adc	r25, r19
	std	Y+7, r25
	std	Y+6, r24
	rjmp	.LBB89_1
.LBB89_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+8
	ldd	r21, Y+9
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	breq	.LBB89_5
	rjmp	.LBB89_2
.LBB89_2:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r26, Y+10
	ldd	r27, Y+11
	ld	r25, X
	ldd	r26, Y+6
	ldd	r27, Y+7
	st	X, r25
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+2, r24                        ; 1-byte Folded Spill
	brne	.LBB89_3
	rjmp	.LBB89_4
.LBB89_3:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB89_5
	rjmp	.LBB89_5
.LBB89_4:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB89_3
.LBB89_5:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB89_8
	rjmp	.LBB89_6
.LBB89_6:                               ;   in Loop: Header=BB89_1 Depth=1
	rjmp	.LBB89_7
.LBB89_7:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+10
	ldd	r25, Y+11
	adiw	r24, 1
	std	Y+11, r25
	std	Y+10, r24
	ldd	r24, Y+6
	ldd	r25, Y+7
	adiw	r24, 1
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+8
	ldd	r25, Y+9
	sbiw	r24, 1
	std	Y+9, r25
	std	Y+8, r24
	rjmp	.LBB89_1
.LBB89_8:
	ldd	r18, Y+8
	ldd	r19, Y+9
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB89_10
	rjmp	.LBB89_9
.LBB89_9:
	ldd	r26, Y+6
	ldd	r27, Y+7
	mov	r24, r1
	st	X, r24
	rjmp	.LBB89_10
.LBB89_10:
	ldd	r24, Y+12
	ldd	r25, Y+13
	adiw	r28, 13
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end89:
	.size	strncat, .Lfunc_end89-strncat
                                        ; -- End function
	.globl	strnlen                         ; -- Begin function strnlen
	.p2align	1
	.type	strnlen,@function
strnlen:                                ; @strnlen
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 9
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+9, r25
	std	Y+8, r24
	std	Y+7, r23
	std	Y+6, r22
	ldi	r24, 0
	ldi	r25, 0
	std	Y+5, r25
	std	Y+4, r24
	rjmp	.LBB90_1
.LBB90_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+4
	ldd	r19, Y+5
	ldd	r20, Y+6
	ldd	r21, Y+7
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+3, r24                        ; 1-byte Folded Spill
	brsh	.LBB90_5
	rjmp	.LBB90_2
.LBB90_2:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r26, Y+8
	ldd	r27, Y+9
	ldd	r24, Y+4
	ldd	r25, Y+5
	add	r26, r24
	adc	r27, r25
	ld	r25, X
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+2, r24                        ; 1-byte Folded Spill
	brne	.LBB90_3
	rjmp	.LBB90_4
.LBB90_3:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB90_5
	rjmp	.LBB90_5
.LBB90_4:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB90_3
.LBB90_5:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB90_8
	rjmp	.LBB90_6
.LBB90_6:                               ;   in Loop: Header=BB90_1 Depth=1
	rjmp	.LBB90_7
.LBB90_7:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+4
	ldd	r25, Y+5
	adiw	r24, 1
	std	Y+5, r25
	std	Y+4, r24
	rjmp	.LBB90_1
.LBB90_8:
	ldd	r24, Y+4
	ldd	r25, Y+5
	adiw	r28, 9
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end90:
	.size	strnlen, .Lfunc_end90-strnlen
                                        ; -- End function
	.globl	strpbrk                         ; -- Begin function strpbrk
	.p2align	1
	.type	strpbrk,@function
strpbrk:                                ; @strpbrk
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+6, r25
	std	Y+5, r24
	std	Y+4, r23
	std	Y+3, r22
	rjmp	.LBB91_1
.LBB91_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB91_3 Depth 2
	ldd	r26, Y+5
	ldd	r27, Y+6
	ld	r24, X
	cpi	r24, 0
	brne	.LBB91_2
	rjmp	.LBB91_8
.LBB91_2:                               ;   in Loop: Header=BB91_1 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB91_3
.LBB91_3:                               ;   Parent Loop BB91_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldd	r26, Y+1
	ldd	r27, Y+2
	ld	r24, X
	cpi	r24, 0
	breq	.LBB91_7
	rjmp	.LBB91_4
.LBB91_4:                               ;   in Loop: Header=BB91_3 Depth=2
	ldd	r26, Y+1
	ldd	r27, Y+2
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+2, r25
	std	Y+1, r24
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	ldd	r26, Y+5
	ldd	r27, Y+6
	ld	r18, X
	mov	r19, r18
	lsl	r19
	sbc	r19, r19
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB91_6
	rjmp	.LBB91_5
.LBB91_5:
	ldd	r24, Y+5
	ldd	r25, Y+6
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB91_9
.LBB91_6:                               ;   in Loop: Header=BB91_3 Depth=2
	rjmp	.LBB91_3
.LBB91_7:                               ;   in Loop: Header=BB91_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	adiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB91_1
.LBB91_8:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB91_9
.LBB91_9:
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end91:
	.size	strpbrk, .Lfunc_end91-strpbrk
                                        ; -- End function
	.globl	strrchr                         ; -- Begin function strrchr
	.p2align	1
	.type	strrchr,@function
strrchr:                                ; @strrchr
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+6, r25
	std	Y+5, r24
	std	Y+4, r23
	std	Y+3, r22
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB92_1
.LBB92_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+5
	ldd	r27, Y+6
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	ldd	r18, Y+3
	ldd	r19, Y+4
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB92_3
	rjmp	.LBB92_2
.LBB92_2:                               ;   in Loop: Header=BB92_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB92_3
.LBB92_3:                               ;   in Loop: Header=BB92_1 Depth=1
	rjmp	.LBB92_4
.LBB92_4:                               ;   in Loop: Header=BB92_1 Depth=1
	ldd	r26, Y+5
	ldd	r27, Y+6
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	ld	r24, X
	cpi	r24, 0
	brne	.LBB92_1
	rjmp	.LBB92_5
.LBB92_5:
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end92:
	.size	strrchr, .Lfunc_end92-strrchr
                                        ; -- End function
	.globl	strstr                          ; -- Begin function strstr
	.p2align	1
	.type	strstr,@function
strstr:                                 ; @strstr
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+5
	ldd	r25, Y+6
	rcall	strlen
	std	Y+2, r25
	std	Y+1, r24
	ldd	r18, Y+1
	ldd	r19, Y+2
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB93_2
	rjmp	.LBB93_1
.LBB93_1:
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB93_9
.LBB93_2:
	rjmp	.LBB93_3
.LBB93_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r26, Y+5
	ldd	r27, Y+6
	ld	r18, X
	mov	r22, r18
	mov	r23, r18
	lsl	r23
	sbc	r23, r23
	rcall	strchr
	mov	r18, r24
	mov	r19, r25
	std	Y+4, r19
	std	Y+3, r18
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB93_8
	rjmp	.LBB93_4
.LBB93_4:                               ;   in Loop: Header=BB93_3 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r20, Y+1
	ldd	r21, Y+2
	rcall	strncmp
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB93_6
	rjmp	.LBB93_5
.LBB93_5:
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB93_9
.LBB93_6:                               ;   in Loop: Header=BB93_3 Depth=1
	rjmp	.LBB93_7
.LBB93_7:                               ;   in Loop: Header=BB93_3 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB93_3
.LBB93_8:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB93_9
.LBB93_9:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end93:
	.size	strstr, .Lfunc_end93-strstr
                                        ; -- End function
	.globl	copysign                        ; -- Begin function copysign
	.p2align	1
	.type	copysign,@function
copysign:                               ; @copysign
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldi	r20, 0
	ldi	r21, 0
	mov	r18, r20
	mov	r19, r21
	rcall	__ltsf2
	tst	r24
	brpl	.LBB94_2
	rjmp	.LBB94_1
.LBB94_1:
	ldd	r22, Y+1
	ldd	r23, Y+2
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldi	r20, 0
	ldi	r21, 0
	mov	r18, r20
	mov	r19, r21
	rcall	__gtsf2
	mov	r25, r24
	mov	r24, r1
	cp	r24, r25
	brlt	.LBB94_4
	rjmp	.LBB94_2
.LBB94_2:
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldi	r20, 0
	ldi	r21, 0
	mov	r18, r20
	mov	r19, r21
	rcall	__gtsf2
	mov	r25, r24
	mov	r24, r1
	cp	r24, r25
	brge	.LBB94_5
	rjmp	.LBB94_3
.LBB94_3:
	ldd	r22, Y+1
	ldd	r23, Y+2
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldi	r20, 0
	ldi	r21, 0
	mov	r18, r20
	mov	r19, r21
	rcall	__ltsf2
	tst	r24
	brpl	.LBB94_5
	rjmp	.LBB94_4
.LBB94_4:
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldi	r20, 0
	ldi	r21, 128
	eor	r24, r20
	eor	r25, r21
	std	Y+10, r19
	std	Y+9, r18
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB94_6
.LBB94_5:
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r18, Y+7
	ldd	r19, Y+8
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB94_6
.LBB94_6:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end94:
	.size	copysign, .Lfunc_end94-copysign
                                        ; -- End function
	.globl	memmem                          ; -- Begin function memmem
	.p2align	1
	.type	memmem,@function
memmem:                                 ; @memmem
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	std	Y+8, r21
	std	Y+7, r20
	std	Y+6, r19
	std	Y+5, r18
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldd	r18, Y+9
	ldd	r19, Y+10
	add	r24, r18
	adc	r25, r19
	ldd	r18, Y+5
	ldd	r19, Y+6
	sub	r24, r18
	sbc	r25, r19
	std	Y+2, r25
	std	Y+1, r24
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB95_2
	rjmp	.LBB95_1
.LBB95_1:
	ldd	r24, Y+11
	ldd	r25, Y+12
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_12
.LBB95_2:
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+5
	ldd	r19, Y+6
	cp	r24, r18
	cpc	r25, r19
	brsh	.LBB95_4
	rjmp	.LBB95_3
.LBB95_3:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_12
.LBB95_4:
	ldd	r24, Y+11
	ldd	r25, Y+12
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB95_5
.LBB95_5:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldd	r24, Y+1
	ldd	r25, Y+2
	cp	r24, r18
	cpc	r25, r19
	brsh	.LBB95_6
	rjmp	.LBB95_11
.LBB95_6:                               ;   in Loop: Header=BB95_5 Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	ld	r24, X
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	ldd	r26, Y+7
	ldd	r27, Y+8
	ld	r18, X
	mov	r19, r18
	lsl	r19
	sbc	r19, r19
	cp	r24, r18
	cpc	r25, r19
	brne	.LBB95_9
	rjmp	.LBB95_7
.LBB95_7:                               ;   in Loop: Header=BB95_5 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	ldd	r26, Y+7
	ldd	r27, Y+8
	adiw	r26, 1
	ldd	r30, Y+5
	ldd	r31, Y+6
	sbiw	r30, 1
	mov	r22, r26
	mov	r23, r27
	mov	r20, r30
	mov	r21, r31
	rcall	memcmp
	mov	r18, r24
	mov	r19, r25
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB95_9
	rjmp	.LBB95_8
.LBB95_8:
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_12
.LBB95_9:                               ;   in Loop: Header=BB95_5 Depth=1
	rjmp	.LBB95_10
.LBB95_10:                              ;   in Loop: Header=BB95_5 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB95_5
.LBB95_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_12
.LBB95_12:
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end95:
	.size	memmem, .Lfunc_end95-memmem
                                        ; -- End function
	.globl	mempcpy                         ; -- Begin function mempcpy
	.p2align	1
	.type	mempcpy,@function
mempcpy:                                ; @mempcpy
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r20, Y+3
	ldd	r21, Y+4
	rcall	memcpy
                                        ; kill: def $r19r18 killed $r25r24
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	ldd	r18, Y+3
	ldd	r19, Y+4
	add	r24, r18
	adc	r25, r19
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end96:
	.size	mempcpy, .Lfunc_end96-mempcpy
                                        ; -- End function
	.globl	frexp                           ; -- Begin function frexp
	.p2align	1
	.type	frexp,@function
frexp:                                  ; @frexp
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	std	Y+8, r21
	std	Y+7, r20
	ldi	r20, 0
	ldi	r21, 0
	std	Y+4, r21
	std	Y+3, r20
	std	Y+6, r21
	std	Y+5, r20
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r18, r20
	mov	r19, r21
	rcall	__ltsf2
	tst	r24
	brpl	.LBB97_2
	rjmp	.LBB97_1
.LBB97_1:
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 128
	eor	r24, r18
	eor	r25, r19
	std	Y+12, r25
	std	Y+11, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB97_2
.LBB97_2:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 0
	ldi	r20, 128
	ldi	r21, 63
	rcall	__gesf2
	tst	r24
	brpl	.LBB97_3
	rjmp	.LBB97_7
.LBB97_3:
	rjmp	.LBB97_4
.LBB97_4:                               ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 0
	ldi	r20, 128
	ldi	r21, 63
	rcall	__gesf2
	tst	r24
	brmi	.LBB97_6
	rjmp	.LBB97_5
.LBB97_5:                               ;   in Loop: Header=BB97_4 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 0
	ldi	r20, 0
	ldi	r21, 63
	rcall	__mulsf3
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	rjmp	.LBB97_4
.LBB97_6:
	rjmp	.LBB97_14
.LBB97_7:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 0
	ldi	r20, 0
	ldi	r21, 63
	rcall	__ltsf2
	tst	r24
	brmi	.LBB97_8
	rjmp	.LBB97_13
.LBB97_8:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r20, 0
	ldi	r21, 0
	mov	r18, r20
	mov	r19, r21
	rcall	__eqsf2
	cpi	r24, 0
	brne	.LBB97_9
	rjmp	.LBB97_13
.LBB97_9:
	rjmp	.LBB97_10
.LBB97_10:                              ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 0
	ldi	r20, 0
	ldi	r21, 63
	rcall	__ltsf2
	tst	r24
	brpl	.LBB97_12
	rjmp	.LBB97_11
.LBB97_11:                              ;   in Loop: Header=BB97_10 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	sbiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__addsf3
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	rjmp	.LBB97_10
.LBB97_12:
	rjmp	.LBB97_13
.LBB97_13:
	rjmp	.LBB97_14
.LBB97_14:
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r30, Y+7
	ldd	r31, Y+8
	std	Z+1, r25
	st	Z, r24
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB97_16
	rjmp	.LBB97_15
.LBB97_15:
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 128
	eor	r24, r18
	eor	r25, r19
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB97_16
.LBB97_16:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end97:
	.size	frexp, .Lfunc_end97-frexp
                                        ; -- End function
	.globl	__muldi3                        ; -- Begin function __muldi3
	.p2align	1
	.type	__muldi3,@function
__muldi3:                               ; @__muldi3
; %bb.0:
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r17r16
                                        ; kill: def $r31r30 killed $r15r14
                                        ; kill: def $r31r30 killed $r13r12
                                        ; kill: def $r31r30 killed $r11r10
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+40, r25
	std	Y+39, r24
	std	Y+38, r23
	std	Y+37, r22
	std	Y+36, r21
	std	Y+35, r20
	std	Y+34, r19
	std	Y+33, r18
	std	Y+32, r17
	std	Y+31, r16
	std	Y+30, r15
	std	Y+29, r14
	std	Y+28, r13
	std	Y+27, r12
	std	Y+26, r11
	std	Y+25, r10
	ldi	r24, 0
	ldi	r25, 0
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r25
	std	Y+17, r24
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r20, Y+37
	ldd	r21, Y+38
	ldd	r22, Y+39
	ldd	r23, Y+40
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB98_1
.LBB98_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+11
	ldd	r31, Y+12
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+9
	ldd	r25, Y+10
	mov	r26, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r26, r1
	cpc	r25, r1
	cpc	r30, r20
	cpc	r31, r21
	cpc	r22, r20
	cpc	r23, r21
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	breq	.LBB98_2
	rjmp	.LBB98_3
.LBB98_2:                               ;   in Loop: Header=BB98_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB98_4
	rjmp	.LBB98_7
.LBB98_3:                               ;   in Loop: Header=BB98_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB98_2
.LBB98_4:                               ;   in Loop: Header=BB98_1 Depth=1
	ldd	r24, Y+9
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB98_5
	rjmp	.LBB98_6
.LBB98_5:                               ;   in Loop: Header=BB98_1 Depth=1
	ldd	r14, Y+25
	ldd	r15, Y+26
	ldd	r16, Y+27
	ldd	r17, Y+28
	ldd	r26, Y+29
	ldd	r27, Y+30
	ldd	r30, Y+31
	ldd	r31, Y+32
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r20, Y+21
	ldd	r21, Y+22
	ldd	r22, Y+23
	ldd	r23, Y+24
	add	r24, r14
	adc	r25, r15
	adc	r18, r16
	adc	r19, r17
	adc	r20, r26
	adc	r21, r27
	adc	r22, r30
	adc	r23, r31
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB98_6
.LBB98_6:                               ;   in Loop: Header=BB98_1 Depth=1
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r24, Y+29
	ldd	r25, Y+30
	ldd	r22, Y+27
	ldd	r23, Y+28
	ldd	r20, Y+25
	ldd	r21, Y+26
	mov	r17, r1
                                        ; kill: def $r30 killed $r1
	mov	r30, r23
	lsl	r30
	mov	r26, r17
	rol	r26
                                        ; kill: def $r26 killed $r26 def $r27r26
	mov	r27, r17
	mov	r30, r17
	mov	r31, r17
                                        ; kill: def $r17 killed $r1
	mov	r17, r24
	lsl	r17
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r17
	or	r24, r26
	or	r25, r27
	or	r18, r30
	or	r19, r31
                                        ; kill: def $r30 killed $r1
	mov	r30, r20
	lsl	r30
                                        ; kill: def $r21 killed $r21 killed $r21r20
	rol	r21
	mov	r20, r22
	rol	r20
                                        ; kill: def $r23 killed $r23 killed $r23r22
	rol	r23
                                        ; kill: def $r23 killed $r23 def $r23r22
	mov	r22, r20
                                        ; kill: def $r21 killed $r21 def $r21r20
	mov	r20, r30
	std	Y+28, r23
	std	Y+27, r22
	std	Y+26, r21
	std	Y+25, r20
	std	Y+32, r19
	std	Y+31, r18
	std	Y+30, r25
	std	Y+29, r24
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r22, Y+15
	ldd	r23, Y+16
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r17, r1
                                        ; kill: def $r30 killed $r1
	mov	r30, r20
	lsr	r30
	mov	r31, r17
	ror	r31
                                        ; kill: def $r31 killed $r31 def $r31r30
	mov	r30, r17
	mov	r27, r17
	mov	r26, r17
                                        ; kill: def $r17 killed $r1
	mov	r17, r19
	lsr	r17
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r17
	or	r24, r26
	or	r25, r27
	or	r18, r30
	or	r19, r31
                                        ; kill: def $r30 killed $r1
	mov	r30, r23
	lsr	r30
                                        ; kill: def $r22 killed $r22 killed $r23r22
	ror	r22
	mov	r23, r21
	ror	r23
                                        ; kill: def $r20 killed $r20 killed $r21r20
	ror	r20
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r23
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r30
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB98_1
.LBB98_7:
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	adiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	ret
.Lfunc_end98:
	.size	__muldi3, .Lfunc_end98-__muldi3
                                        ; -- End function
	.globl	udivmodsi4                      ; -- Begin function udivmodsi4
	.p2align	1
	.type	udivmodsi4,@function
udivmodsi4:                             ; @udivmodsi4
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 33
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+29, r25
	std	Y+28, r24
	std	Y+27, r23
	std	Y+26, r22
	std	Y+25, r21
	std	Y+24, r20
	std	Y+23, r19
	std	Y+22, r18
	std	Y+21, r17
	std	Y+20, r16
	ldi	r24, 0
	ldi	r25, 0
	std	Y+19, r25
	std	Y+18, r24
	ldi	r18, 1
	ldi	r19, 0
	std	Y+17, r19
	std	Y+16, r18
	std	Y+15, r25
	std	Y+14, r24
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB99_1
.LBB99_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+22
	ldd	r23, Y+23
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r30, Y+26
	ldd	r31, Y+27
	ldd	r20, Y+28
	ldd	r21, Y+29
	mov	r24, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+11, r24                       ; 1-byte Folded Spill
	brsh	.LBB99_2
	rjmp	.LBB99_3
.LBB99_2:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	ldd	r25, Y+11                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB99_4
	rjmp	.LBB99_10
.LBB99_3:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	std	Y+11, r24                       ; 1-byte Folded Spill
	rjmp	.LBB99_2
.LBB99_4:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	breq	.LBB99_5
	rjmp	.LBB99_6
.LBB99_5:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	ldd	r25, Y+8                        ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB99_10
	rjmp	.LBB99_7
	rjmp	.LBB99_7
.LBB99_6:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_5
.LBB99_7:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r25, Y+25
	andi	r25, -128
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+6, r24                        ; 1-byte Folded Spill
	breq	.LBB99_8
	rjmp	.LBB99_9
.LBB99_8:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_10
	rjmp	.LBB99_10
.LBB99_9:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_8
.LBB99_10:                              ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB99_11
	rjmp	.LBB99_12
.LBB99_11:                              ;   in Loop: Header=BB99_1 Depth=1
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r24, Y+22
	ldd	r25, Y+23
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+25, r19
	std	Y+24, r18
	std	Y+23, r25
	std	Y+22, r24
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+19, r19
	std	Y+18, r18
	std	Y+17, r25
	std	Y+16, r24
	rjmp	.LBB99_1
.LBB99_12:
	rjmp	.LBB99_13
.LBB99_13:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	breq	.LBB99_14
	rjmp	.LBB99_15
.LBB99_14:                              ;   in Loop: Header=BB99_13 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB99_16
	rjmp	.LBB99_21
.LBB99_15:                              ;   in Loop: Header=BB99_13 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_14
.LBB99_16:                              ;   in Loop: Header=BB99_13 Depth=1
	ldd	r22, Y+26
	ldd	r23, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	ldd	r30, Y+22
	ldd	r31, Y+23
	ldd	r20, Y+24
	ldd	r21, Y+25
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB99_17
	rjmp	.LBB99_18
.LBB99_17:                              ;   in Loop: Header=BB99_13 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB99_19
	rjmp	.LBB99_20
.LBB99_18:                              ;   in Loop: Header=BB99_13 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_17
.LBB99_19:                              ;   in Loop: Header=BB99_13 Depth=1
	ldd	r22, Y+22
	ldd	r23, Y+23
	ldd	r20, Y+24
	ldd	r21, Y+25
	ldd	r24, Y+26
	ldd	r25, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+29, r19
	std	Y+28, r18
	std	Y+27, r25
	std	Y+26, r24
	ldd	r20, Y+18
	ldd	r21, Y+19
	ldd	r22, Y+16
	ldd	r23, Y+17
	ldd	r18, Y+14
	ldd	r19, Y+15
	ldd	r24, Y+12
	ldd	r25, Y+13
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+15, r19
	std	Y+14, r18
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB99_20
.LBB99_20:                              ;   in Loop: Header=BB99_13 Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+19, r19
	std	Y+18, r18
	std	Y+17, r25
	std	Y+16, r24
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r24, Y+22
	ldd	r25, Y+23
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+25, r19
	std	Y+24, r18
	std	Y+23, r25
	std	Y+22, r24
	rjmp	.LBB99_13
.LBB99_21:
	ldd	r18, Y+20
	ldd	r19, Y+21
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB99_23
	rjmp	.LBB99_22
.LBB99_22:
	ldd	r24, Y+26
	ldd	r25, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	std	Y+33, r19
	std	Y+32, r18
	std	Y+31, r25
	std	Y+30, r24
	rjmp	.LBB99_24
.LBB99_23:
	ldd	r24, Y+12
	ldd	r25, Y+13
	ldd	r18, Y+14
	ldd	r19, Y+15
	std	Y+33, r19
	std	Y+32, r18
	std	Y+31, r25
	std	Y+30, r24
	rjmp	.LBB99_24
.LBB99_24:
	ldd	r22, Y+30
	ldd	r23, Y+31
	ldd	r24, Y+32
	ldd	r25, Y+33
	adiw	r28, 33
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end99:
	.size	udivmodsi4, .Lfunc_end99-udivmodsi4
                                        ; -- End function
	.globl	__clrsbqi2                      ; -- Begin function __clrsbqi2
	.p2align	1
	.type	__clrsbqi2,@function
__clrsbqi2:                             ; @__clrsbqi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+3, r24
	ldd	r24, Y+3
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	mov	r24, r25
	tst	r24
	brpl	.LBB100_2
	rjmp	.LBB100_1
.LBB100_1:
	ldd	r24, Y+3
	com	r24
	std	Y+3, r24
	rjmp	.LBB100_2
.LBB100_2:
	ldd	r24, Y+3
	cpi	r24, 0
	brne	.LBB100_4
	rjmp	.LBB100_3
.LBB100_3:
	ldi	r24, 7
	ldi	r25, 0
	std	Y+5, r25
	std	Y+4, r24
	rjmp	.LBB100_5
.LBB100_4:
	ldd	r24, Y+3
                                        ; implicit-def: $r19r18
	mov	r18, r24
	mov	r19, r18
	clr	r18
	mov	r24, r18
	mov	r25, r19
	lsr	r25
	ror	r24
	or	r18, r24
	or	r19, r25
	mov	r24, r18
	mov	r25, r19
	lsr	r25
	ror	r24
	lsr	r25
	ror	r24
	or	r18, r24
	or	r19, r25
	mov	r24, r18
	mov	r25, r19
	swap	r25
	swap	r24
	andi	r24, 15
	eor	r24, r25
	andi	r25, 15
	eor	r24, r25
	or	r18, r24
	or	r19, r25
	mov	r24, r18
	mov	r25, r19
	mov	r24, r25
	clr	r25
	or	r18, r24
	or	r19, r25
	com	r18
	com	r19
	mov	r24, r18
	mov	r25, r19
	lsr	r25
	ror	r24
	andi	r24, 85
	andi	r25, 85
	sub	r18, r24
	sbc	r19, r25
	mov	r24, r18
	mov	r25, r19
	andi	r24, 51
	andi	r25, 51
	lsr	r19
	ror	r18
	lsr	r19
	ror	r18
	andi	r18, 51
	andi	r19, 51
	add	r24, r18
	adc	r25, r19
	mov	r18, r24
	mov	r19, r25
	swap	r19
	swap	r18
	andi	r18, 15
	eor	r18, r19
	andi	r19, 15
	eor	r18, r19
	add	r24, r18
	adc	r25, r19
	andi	r24, 15
	andi	r25, 15
	mov	r18, r24
	mov	r19, r25
	mov	r18, r19
	clr	r19
	add	r24, r18
	adc	r25, r19
	andi	r25, 0
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+1
	ldd	r25, Y+2
	sbiw	r24, 1
	std	Y+5, r25
	std	Y+4, r24
	rjmp	.LBB100_5
.LBB100_5:
	ldd	r24, Y+4
	ldd	r25, Y+5
	adiw	r28, 5
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end100:
	.size	__clrsbqi2, .Lfunc_end100-__clrsbqi2
                                        ; -- End function
	.globl	__clrsbdi2                      ; -- Begin function __clrsbdi2
	.p2align	1
	.type	__clrsbdi2,@function
__clrsbdi2:                             ; @__clrsbdi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 44
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+40, r25
	std	Y+39, r24
	std	Y+38, r23
	std	Y+37, r22
	std	Y+36, r21
	std	Y+35, r20
	std	Y+34, r19
	std	Y+33, r18
	ldd	r24, Y+39
	ldd	r25, Y+40
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+29, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+30, r24                       ; 1-byte Folded Spill
	brpl	.LBB101_1
	rjmp	.LBB101_2
.LBB101_1:
	ldd	r24, Y+30                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB101_4
	rjmp	.LBB101_3
	rjmp	.LBB101_3
.LBB101_2:
	ldd	r24, Y+29                       ; 1-byte Folded Reload
	std	Y+30, r24                       ; 1-byte Folded Spill
	rjmp	.LBB101_1
.LBB101_3:
	ldd	r22, Y+39
	ldd	r23, Y+40
	ldd	r20, Y+37
	ldd	r21, Y+38
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r24, Y+33
	ldd	r25, Y+34
	com	r24
	com	r25
	com	r18
	com	r19
	com	r20
	com	r21
	com	r22
	com	r23
	std	Y+40, r23
	std	Y+39, r22
	std	Y+38, r21
	std	Y+37, r20
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	rjmp	.LBB101_4
.LBB101_4:
	ldd	r30, Y+35
	ldd	r31, Y+36
	ldd	r22, Y+37
	ldd	r23, Y+38
	ldd	r18, Y+39
	ldd	r19, Y+40
	ldd	r24, Y+33
	ldd	r25, Y+34
	mov	r26, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+27, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r26, r1
	cpc	r25, r1
	cpc	r30, r20
	cpc	r31, r21
	cpc	r22, r20
	cpc	r23, r21
	cpc	r18, r20
	cpc	r19, r21
	std	Y+28, r24                       ; 1-byte Folded Spill
	brne	.LBB101_5
	rjmp	.LBB101_6
.LBB101_5:
	ldd	r24, Y+28                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB101_8
	rjmp	.LBB101_7
	rjmp	.LBB101_7
.LBB101_6:
	ldd	r24, Y+27                       ; 1-byte Folded Reload
	std	Y+28, r24                       ; 1-byte Folded Spill
	rjmp	.LBB101_5
.LBB101_7:
	ldi	r24, 63
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	rjmp	.LBB101_17
.LBB101_8:
	ldd	r24, Y+33
	ldd	r25, Y+34
	std	Y+16, r25                       ; 2-byte Folded Spill
	std	Y+15, r24                       ; 2-byte Folded Spill
	ldd	r24, Y+35
	ldd	r25, Y+36
	std	Y+18, r25                       ; 2-byte Folded Spill
	std	Y+17, r24                       ; 2-byte Folded Spill
	ldd	r18, Y+37
	ldd	r19, Y+38
	std	Y+20, r19                       ; 2-byte Folded Spill
	std	Y+19, r18                       ; 2-byte Folded Spill
	ldd	r20, Y+39
	ldd	r21, Y+40
	std	Y+22, r21                       ; 2-byte Folded Spill
	std	Y+21, r20                       ; 2-byte Folded Spill
	mov	r24, r20
	mov	r25, r21
	lsr	r25
	ror	r24
	mov	r22, r20
	mov	r23, r21
	or	r22, r24
	or	r23, r25
	mov	r24, r22
	mov	r25, r23
	lsr	r25
	ror	r24
	lsr	r25
	ror	r24
	or	r22, r24
	or	r23, r25
	mov	r24, r22
	mov	r25, r23
	swap	r25
	swap	r24
	andi	r24, 15
	eor	r24, r25
	andi	r25, 15
	eor	r24, r25
	or	r22, r24
	or	r23, r25
	mov	r24, r22
	mov	r25, r23
	mov	r24, r25
	clr	r25
	or	r22, r24
	or	r23, r25
	com	r22
	com	r23
	mov	r24, r22
	mov	r25, r23
	lsr	r25
	ror	r24
	andi	r24, 85
	andi	r25, 85
	sub	r22, r24
	sbc	r23, r25
	mov	r24, r22
	mov	r25, r23
	andi	r24, 51
	andi	r25, 51
	lsr	r23
	ror	r22
	lsr	r23
	ror	r22
	andi	r22, 51
	andi	r23, 51
	add	r24, r22
	adc	r25, r23
	mov	r22, r24
	mov	r23, r25
	swap	r23
	swap	r22
	andi	r22, 15
	eor	r22, r23
	andi	r23, 15
	eor	r22, r23
	add	r24, r22
	adc	r25, r23
	andi	r24, 15
	andi	r25, 15
	mov	r22, r24
	mov	r23, r25
	mov	r22, r23
	clr	r23
	add	r24, r22
	adc	r25, r23
	andi	r25, 0
	mov	r22, r18
	mov	r23, r19
	lsr	r23
	ror	r22
	or	r18, r22
	or	r19, r23
	mov	r22, r18
	mov	r23, r19
	lsr	r23
	ror	r22
	lsr	r23
	ror	r22
	or	r18, r22
	or	r19, r23
	mov	r22, r18
	mov	r23, r19
	swap	r23
	swap	r22
	andi	r22, 15
	eor	r22, r23
	andi	r23, 15
	eor	r22, r23
	or	r18, r22
	or	r19, r23
	mov	r22, r18
	mov	r23, r19
	mov	r22, r23
	clr	r23
	or	r18, r22
	or	r19, r23
	com	r18
	com	r19
	mov	r22, r18
	mov	r23, r19
	lsr	r23
	ror	r22
	andi	r22, 85
	andi	r23, 85
	sub	r18, r22
	sbc	r19, r23
	mov	r30, r18
	mov	r31, r19
	andi	r30, 51
	andi	r31, 51
	lsr	r19
	ror	r18
	lsr	r19
	ror	r18
	andi	r18, 51
	andi	r19, 51
	add	r30, r18
	adc	r31, r19
	mov	r18, r30
	mov	r19, r31
	swap	r19
	swap	r18
	andi	r18, 15
	eor	r18, r19
	andi	r19, 15
	eor	r18, r19
	add	r30, r18
	adc	r31, r19
	andi	r30, 15
	andi	r31, 15
	mov	r18, r30
	mov	r19, r31
	mov	r18, r19
	clr	r19
	add	r30, r18
	adc	r31, r19
	andi	r31, 0
	adiw	r30, 16
	std	Y+24, r31                       ; 2-byte Folded Spill
	std	Y+23, r30                       ; 2-byte Folded Spill
	mov	r19, r20
	mov	r18, r21
	cp	r19, r1
	cpc	r18, r1
	std	Y+26, r25                       ; 2-byte Folded Spill
	std	Y+25, r24                       ; 2-byte Folded Spill
	brne	.LBB101_9
	rjmp	.LBB101_16
.LBB101_9:
	ldd	r20, Y+17                       ; 2-byte Folded Reload
	ldd	r21, Y+18                       ; 2-byte Folded Reload
	ldd	r18, Y+15                       ; 2-byte Folded Reload
	ldd	r19, Y+16                       ; 2-byte Folded Reload
	ldd	r24, Y+25                       ; 2-byte Folded Reload
	ldd	r25, Y+26                       ; 2-byte Folded Reload
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	mov	r24, r20
	mov	r25, r21
	lsr	r25
	ror	r24
	mov	r22, r20
	mov	r23, r21
	or	r22, r24
	or	r23, r25
	mov	r24, r22
	mov	r25, r23
	lsr	r25
	ror	r24
	lsr	r25
	ror	r24
	or	r22, r24
	or	r23, r25
	mov	r24, r22
	mov	r25, r23
	swap	r25
	swap	r24
	andi	r24, 15
	eor	r24, r25
	andi	r25, 15
	eor	r24, r25
	or	r22, r24
	or	r23, r25
	mov	r24, r22
	mov	r25, r23
	mov	r24, r25
	clr	r25
	or	r22, r24
	or	r23, r25
	com	r22
	com	r23
	mov	r24, r22
	mov	r25, r23
	lsr	r25
	ror	r24
	andi	r24, 85
	andi	r25, 85
	sub	r22, r24
	sbc	r23, r25
	mov	r24, r22
	mov	r25, r23
	andi	r24, 51
	andi	r25, 51
	lsr	r23
	ror	r22
	lsr	r23
	ror	r22
	andi	r22, 51
	andi	r23, 51
	add	r24, r22
	adc	r25, r23
	mov	r22, r24
	mov	r23, r25
	swap	r23
	swap	r22
	andi	r22, 15
	eor	r22, r23
	andi	r23, 15
	eor	r22, r23
	add	r24, r22
	adc	r25, r23
	andi	r24, 15
	andi	r25, 15
	mov	r22, r24
	mov	r23, r25
	mov	r22, r23
	clr	r23
	add	r24, r22
	adc	r25, r23
	andi	r25, 0
	mov	r22, r18
	mov	r23, r19
	lsr	r23
	ror	r22
	or	r18, r22
	or	r19, r23
	mov	r22, r18
	mov	r23, r19
	lsr	r23
	ror	r22
	lsr	r23
	ror	r22
	or	r18, r22
	or	r19, r23
	mov	r22, r18
	mov	r23, r19
	swap	r23
	swap	r22
	andi	r22, 15
	eor	r22, r23
	andi	r23, 15
	eor	r22, r23
	or	r18, r22
	or	r19, r23
	mov	r22, r18
	mov	r23, r19
	mov	r22, r23
	clr	r23
	or	r18, r22
	or	r19, r23
	com	r18
	com	r19
	mov	r22, r18
	mov	r23, r19
	lsr	r23
	ror	r22
	andi	r22, 85
	andi	r23, 85
	sub	r18, r22
	sbc	r19, r23
	mov	r30, r18
	mov	r31, r19
	andi	r30, 51
	andi	r31, 51
	lsr	r19
	ror	r18
	lsr	r19
	ror	r18
	andi	r18, 51
	andi	r19, 51
	add	r30, r18
	adc	r31, r19
	mov	r18, r30
	mov	r19, r31
	swap	r19
	swap	r18
	andi	r18, 15
	eor	r18, r19
	andi	r19, 15
	eor	r18, r19
	add	r30, r18
	adc	r31, r19
	andi	r30, 15
	andi	r31, 15
	mov	r18, r30
	mov	r19, r31
	mov	r18, r19
	clr	r19
	add	r30, r18
	adc	r31, r19
	andi	r31, 0
	adiw	r30, 16
	std	Y+12, r31                       ; 2-byte Folded Spill
	std	Y+11, r30                       ; 2-byte Folded Spill
	mov	r19, r20
	mov	r18, r21
	cp	r19, r1
	cpc	r18, r1
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	brne	.LBB101_10
	rjmp	.LBB101_15
.LBB101_10:
	ldd	r18, Y+21                       ; 2-byte Folded Reload
	ldd	r19, Y+22                       ; 2-byte Folded Reload
	ldd	r24, Y+19                       ; 2-byte Folded Reload
	ldd	r25, Y+20                       ; 2-byte Folded Reload
	ldd	r30, Y+13                       ; 2-byte Folded Reload
	ldd	r31, Y+14                       ; 2-byte Folded Reload
	adiw	r30, 32
	std	Y+6, r31                        ; 2-byte Folded Spill
	std	Y+5, r30                        ; 2-byte Folded Spill
	mov	r22, r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB101_11
	rjmp	.LBB101_14
.LBB101_11:
	ldd	r24, Y+9                        ; 2-byte Folded Reload
	ldd	r25, Y+10                       ; 2-byte Folded Reload
	ldd	r18, Y+8                        ; 1-byte Folded Reload
	cpi	r18, 0
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	brne	.LBB101_12
	rjmp	.LBB101_13
.LBB101_12:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+32, r25
	std	Y+31, r24
	ldd	r24, Y+31
	ldd	r25, Y+32
	sbiw	r24, 1
	std	Y+44, r25
	std	Y+43, r24
	rjmp	.LBB101_17
	rjmp	.LBB101_17
.LBB101_13:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB101_12
.LBB101_14:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB101_11
.LBB101_15:
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	rjmp	.LBB101_10
.LBB101_16:
	ldd	r24, Y+23                       ; 2-byte Folded Reload
	ldd	r25, Y+24                       ; 2-byte Folded Reload
	std	Y+26, r25                       ; 2-byte Folded Spill
	std	Y+25, r24                       ; 2-byte Folded Spill
	rjmp	.LBB101_9
.LBB101_17:
	ldd	r24, Y+43
	ldd	r25, Y+44
	adiw	r28, 44
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end101:
	.size	__clrsbdi2, .Lfunc_end101-__clrsbdi2
                                        ; -- End function
	.globl	__mulsi3                        ; -- Begin function __mulsi3
	.p2align	1
	.type	__mulsi3,@function
__mulsi3:                               ; @__mulsi3
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+6, r25
	std	Y+5, r24
	std	Y+4, r23
	std	Y+3, r22
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB102_1
.LBB102_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB102_5
	rjmp	.LBB102_2
.LBB102_2:                              ;   in Loop: Header=BB102_1 Depth=1
	ldd	r24, Y+5
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB102_4
	rjmp	.LBB102_3
.LBB102_3:                              ;   in Loop: Header=BB102_1 Depth=1
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldd	r24, Y+1
	ldd	r25, Y+2
	add	r24, r18
	adc	r25, r19
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB102_4
.LBB102_4:                              ;   in Loop: Header=BB102_1 Depth=1
	ldd	r24, Y+5
	ldd	r25, Y+6
	lsr	r25
	ror	r24
	std	Y+6, r25
	std	Y+5, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	lsl	r24
	rol	r25
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB102_1
.LBB102_5:
	ldd	r24, Y+1
	ldd	r25, Y+2
	adiw	r28, 6
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end102:
	.size	__mulsi3, .Lfunc_end102-__mulsi3
                                        ; -- End function
	.globl	__cmovd                         ; -- Begin function __cmovd
	.p2align	1
	.type	__cmovd,@function
__cmovd:                                ; @__cmovd
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r23
	std	Y+17, r22
	std	Y+16, r21
	std	Y+15, r20
	ldd	r24, Y+15
	ldd	r25, Y+16
	lsr	r25
	ror	r24
	lsr	r25
	ror	r24
	lsr	r25
	ror	r24
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	andi	r24, 248
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+8, r25
	std	Y+7, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	std	Y+6, r25
	std	Y+5, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB103_2
	rjmp	.LBB103_1
.LBB103_1:
	ldd	r18, Y+7
	ldd	r19, Y+8
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r20, Y+15
	ldd	r21, Y+16
	add	r24, r20
	adc	r25, r21
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB103_2
	rjmp	.LBB103_10
.LBB103_2:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB103_3
.LBB103_3:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+11
	ldd	r19, Y+12
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB103_4
	rjmp	.LBB103_6
.LBB103_4:                              ;   in Loop: Header=BB103_3 Depth=1
	ldd	r30, Y+17
	ldd	r31, Y+18
	ldd	r26, Y+13
	ldd	r27, Y+14
	lsl	r26
	rol	r27
	lsl	r26
	rol	r27
	lsl	r26
	rol	r27
	add	r30, r26
	adc	r31, r27
	std	Y+2, r31                        ; 2-byte Folded Spill
	std	Y+1, r30                        ; 2-byte Folded Spill
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+1                        ; 2-byte Folded Reload
	ldd	r31, Y+2                        ; 2-byte Folded Reload
	ldd	r18, Z+2
	ldd	r19, Z+3
	ldd	r30, Y+1                        ; 2-byte Folded Reload
	ldd	r31, Y+2                        ; 2-byte Folded Reload
	ldd	r20, Z+4
	ldd	r21, Z+5
	ldd	r30, Y+1                        ; 2-byte Folded Reload
	ldd	r31, Y+2                        ; 2-byte Folded Reload
	ldd	r22, Z+6
	ldd	r23, Z+7
	ldd	r30, Y+19
	ldd	r31, Y+20
	add	r30, r26
	adc	r31, r27
	std	Y+4, r31                        ; 2-byte Folded Spill
	std	Y+3, r30                        ; 2-byte Folded Spill
	std	Z+7, r23
	std	Z+6, r22
	ldd	r30, Y+3                        ; 2-byte Folded Reload
	ldd	r31, Y+4                        ; 2-byte Folded Reload
	std	Z+5, r21
	std	Z+4, r20
	ldd	r30, Y+3                        ; 2-byte Folded Reload
	ldd	r31, Y+4                        ; 2-byte Folded Reload
	std	Z+3, r19
	std	Z+2, r18
	ldd	r30, Y+3                        ; 2-byte Folded Reload
	ldd	r31, Y+4                        ; 2-byte Folded Reload
	std	Z+1, r25
	st	Z, r24
	rjmp	.LBB103_5
.LBB103_5:                              ;   in Loop: Header=BB103_3 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB103_3
.LBB103_6:
	rjmp	.LBB103_7
.LBB103_7:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+9
	ldd	r25, Y+10
	cp	r24, r18
	cpc	r25, r19
	brsh	.LBB103_9
	rjmp	.LBB103_8
.LBB103_8:                              ;   in Loop: Header=BB103_7 Depth=1
	ldd	r26, Y+5
	ldd	r27, Y+6
	ldd	r18, Y+9
	ldd	r19, Y+10
	add	r26, r18
	adc	r27, r19
	ld	r24, X
	ldd	r26, Y+7
	ldd	r27, Y+8
	add	r26, r18
	adc	r27, r19
	st	X, r24
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB103_7
.LBB103_9:
	rjmp	.LBB103_14
.LBB103_10:
	rjmp	.LBB103_11
.LBB103_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+15
	ldd	r31, Y+16
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+16, r25
	std	Y+15, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB103_13
	rjmp	.LBB103_12
.LBB103_12:                             ;   in Loop: Header=BB103_11 Depth=1
	ldd	r26, Y+5
	ldd	r27, Y+6
	ldd	r18, Y+15
	ldd	r19, Y+16
	add	r26, r18
	adc	r27, r19
	ld	r24, X
	ldd	r26, Y+7
	ldd	r27, Y+8
	add	r26, r18
	adc	r27, r19
	st	X, r24
	rjmp	.LBB103_11
.LBB103_13:
	rjmp	.LBB103_14
.LBB103_14:
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end103:
	.size	__cmovd, .Lfunc_end103-__cmovd
                                        ; -- End function
	.globl	__cmovh                         ; -- Begin function __cmovh
	.p2align	1
	.type	__cmovh,@function
__cmovh:                                ; @__cmovh
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+14, r25
	std	Y+13, r24
	std	Y+12, r23
	std	Y+11, r22
	std	Y+10, r21
	std	Y+9, r20
	ldd	r24, Y+9
	ldd	r25, Y+10
	lsr	r25
	ror	r24
	std	Y+6, r25
	std	Y+5, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+1
	ldd	r19, Y+2
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB104_2
	rjmp	.LBB104_1
.LBB104_1:
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldd	r24, Y+1
	ldd	r25, Y+2
	ldd	r20, Y+9
	ldd	r21, Y+10
	add	r24, r20
	adc	r25, r21
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB104_2
	rjmp	.LBB104_9
.LBB104_2:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB104_3
.LBB104_3:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
	cp	r24, r18
	cpc	r25, r19
	brsh	.LBB104_6
	rjmp	.LBB104_4
.LBB104_4:                              ;   in Loop: Header=BB104_3 Depth=1
	ldd	r30, Y+11
	ldd	r31, Y+12
	ldd	r18, Y+7
	ldd	r19, Y+8
	lsl	r18
	rol	r19
	add	r30, r18
	adc	r31, r19
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+13
	ldd	r31, Y+14
	add	r30, r18
	adc	r31, r19
	std	Z+1, r25
	st	Z, r24
	rjmp	.LBB104_5
.LBB104_5:                              ;   in Loop: Header=BB104_3 Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r24, 1
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB104_3
.LBB104_6:
	ldd	r24, Y+9
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB104_8
	rjmp	.LBB104_7
.LBB104_7:
	ldd	r26, Y+1
	ldd	r27, Y+2
	ldd	r30, Y+9
	ldd	r31, Y+10
	sbiw	r30, 1
	add	r26, r30
	adc	r27, r31
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	add	r26, r30
	adc	r27, r31
	st	X, r24
	rjmp	.LBB104_8
.LBB104_8:
	rjmp	.LBB104_13
.LBB104_9:
	rjmp	.LBB104_10
.LBB104_10:                             ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+9
	ldd	r31, Y+10
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB104_12
	rjmp	.LBB104_11
.LBB104_11:                             ;   in Loop: Header=BB104_10 Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	ldd	r18, Y+9
	ldd	r19, Y+10
	add	r26, r18
	adc	r27, r19
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	add	r26, r18
	adc	r27, r19
	st	X, r24
	rjmp	.LBB104_10
.LBB104_12:
	rjmp	.LBB104_13
.LBB104_13:
	adiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end104:
	.size	__cmovh, .Lfunc_end104-__cmovh
                                        ; -- End function
	.globl	__cmovw                         ; -- Begin function __cmovw
	.p2align	1
	.type	__cmovw,@function
__cmovw:                                ; @__cmovw
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	ldd	r24, Y+11
	ldd	r25, Y+12
	lsr	r25
	ror	r24
	lsr	r25
	ror	r24
	std	Y+8, r25
	std	Y+7, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	andi	r24, 252
	std	Y+6, r25
	std	Y+5, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+4, r25
	std	Y+3, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+1
	ldd	r19, Y+2
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB105_2
	rjmp	.LBB105_1
.LBB105_1:
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldd	r24, Y+1
	ldd	r25, Y+2
	ldd	r20, Y+11
	ldd	r21, Y+12
	add	r24, r20
	adc	r25, r21
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB105_2
	rjmp	.LBB105_10
.LBB105_2:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB105_3
.LBB105_3:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+7
	ldd	r19, Y+8
	cp	r24, r18
	cpc	r25, r19
	brsh	.LBB105_6
	rjmp	.LBB105_4
.LBB105_4:                              ;   in Loop: Header=BB105_3 Depth=1
	ldd	r30, Y+13
	ldd	r31, Y+14
	ldd	r18, Y+9
	ldd	r19, Y+10
	lsl	r18
	rol	r19
	add	r30, r18
	adc	r31, r19
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+15
	ldd	r31, Y+16
	add	r30, r18
	adc	r31, r19
	std	Z+1, r25
	st	Z, r24
	rjmp	.LBB105_5
.LBB105_5:                              ;   in Loop: Header=BB105_3 Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB105_3
.LBB105_6:
	rjmp	.LBB105_7
.LBB105_7:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+5
	ldd	r25, Y+6
	cp	r24, r18
	cpc	r25, r19
	brsh	.LBB105_9
	rjmp	.LBB105_8
.LBB105_8:                              ;   in Loop: Header=BB105_7 Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	ldd	r18, Y+5
	ldd	r19, Y+6
	add	r26, r18
	adc	r27, r19
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	add	r26, r18
	adc	r27, r19
	st	X, r24
	ldd	r24, Y+5
	ldd	r25, Y+6
	adiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB105_7
.LBB105_9:
	rjmp	.LBB105_14
.LBB105_10:
	rjmp	.LBB105_11
.LBB105_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+11
	ldd	r31, Y+12
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB105_13
	rjmp	.LBB105_12
.LBB105_12:                             ;   in Loop: Header=BB105_11 Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	ldd	r18, Y+11
	ldd	r19, Y+12
	add	r26, r18
	adc	r27, r19
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	add	r26, r18
	adc	r27, r19
	st	X, r24
	rjmp	.LBB105_11
.LBB105_13:
	rjmp	.LBB105_14
.LBB105_14:
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end105:
	.size	__cmovw, .Lfunc_end105-__cmovw
                                        ; -- End function
	.globl	__modi                          ; -- Begin function __modi
	.p2align	1
	.type	__modi,@function
__modi:                                 ; @__modi
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	std	Y+2, r23
	std	Y+1, r22
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r22, Y+1
	ldd	r23, Y+2
	rcall	__divmodhi4
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end106:
	.size	__modi, .Lfunc_end106-__modi
                                        ; -- End function
	.globl	__uitod                         ; -- Begin function __uitod
	.p2align	1
	.type	__uitod,@function
__uitod:                                ; @__uitod
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+2, r25
	std	Y+1, r24
	ldd	r22, Y+1
	ldd	r23, Y+2
	ldi	r24, 0
	ldi	r25, 0
	rcall	__floatunsisf
	adiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end107:
	.size	__uitod, .Lfunc_end107-__uitod
                                        ; -- End function
	.globl	__uitof                         ; -- Begin function __uitof
	.p2align	1
	.type	__uitof,@function
__uitof:                                ; @__uitof
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+2, r25
	std	Y+1, r24
	ldd	r22, Y+1
	ldd	r23, Y+2
	ldi	r24, 0
	ldi	r25, 0
	rcall	__floatunsisf
	adiw	r28, 2
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end108:
	.size	__uitof, .Lfunc_end108-__uitof
                                        ; -- End function
	.globl	__ulltod                        ; -- Begin function __ulltod
	.p2align	1
	.type	__ulltod,@function
__ulltod:                               ; @__ulltod
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	rcall	__floatundisf
	adiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end109:
	.size	__ulltod, .Lfunc_end109-__ulltod
                                        ; -- End function
	.globl	__ulltof                        ; -- Begin function __ulltof
	.p2align	1
	.type	__ulltof,@function
__ulltof:                               ; @__ulltof
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	rcall	__floatundisf
	adiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end110:
	.size	__ulltof, .Lfunc_end110-__ulltof
                                        ; -- End function
	.globl	__umodi                         ; -- Begin function __umodi
	.p2align	1
	.type	__umodi,@function
__umodi:                                ; @__umodi
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+4, r25
	std	Y+3, r24
	std	Y+2, r23
	std	Y+1, r22
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r22, Y+1
	ldd	r23, Y+2
	rcall	__udivmodhi4
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end111:
	.size	__umodi, .Lfunc_end111-__umodi
                                        ; -- End function
	.globl	__clzhi2                        ; -- Begin function __clzhi2
	.p2align	1
	.type	__clzhi2,@function
__clzhi2:                               ; @__clzhi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+14, r25
	std	Y+13, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB112_1
.LBB112_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB112_4 Depth 2
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 16
	cpc	r24, r1
	brlt	.LBB112_2
	rjmp	.LBB112_9
.LBB112_2:                              ;   in Loop: Header=BB112_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r19, Y+11
	ldi	r18, 15
	sub	r18, r19
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB112_4
.LBB112_3:                              ;   in Loop: Header=BB112_4 Depth=2
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB112_4:                              ;   Parent Loop BB112_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB112_3
; %bb.5:                                ;   in Loop: Header=BB112_1 Depth=1
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	andi	r18, 1
	andi	r19, 0
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB112_7
	rjmp	.LBB112_6
.LBB112_6:
	rjmp	.LBB112_9
.LBB112_7:                              ;   in Loop: Header=BB112_1 Depth=1
	rjmp	.LBB112_8
.LBB112_8:                              ;   in Loop: Header=BB112_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB112_1
.LBB112_9:
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end112:
	.size	__clzhi2, .Lfunc_end112-__clzhi2
                                        ; -- End function
	.globl	__ctzhi2                        ; -- Begin function __ctzhi2
	.p2align	1
	.type	__ctzhi2,@function
__ctzhi2:                               ; @__ctzhi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+14, r25
	std	Y+13, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB113_1
.LBB113_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB113_4 Depth 2
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 16
	cpc	r24, r1
	brlt	.LBB113_2
	rjmp	.LBB113_9
.LBB113_2:                              ;   in Loop: Header=BB113_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+11
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB113_4
.LBB113_3:                              ;   in Loop: Header=BB113_4 Depth=2
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB113_4:                              ;   Parent Loop BB113_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB113_3
; %bb.5:                                ;   in Loop: Header=BB113_1 Depth=1
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	andi	r18, 1
	andi	r19, 0
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB113_7
	rjmp	.LBB113_6
.LBB113_6:
	rjmp	.LBB113_9
.LBB113_7:                              ;   in Loop: Header=BB113_1 Depth=1
	rjmp	.LBB113_8
.LBB113_8:                              ;   in Loop: Header=BB113_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB113_1
.LBB113_9:
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end113:
	.size	__ctzhi2, .Lfunc_end113-__ctzhi2
                                        ; -- End function
	.globl	__fixunssfsi                    ; -- Begin function __fixunssfsi
	.p2align	1
	.type	__fixunssfsi,@function
__fixunssfsi:                           ; @__fixunssfsi
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+4, r25
	std	Y+3, r24
	std	Y+2, r23
	std	Y+1, r22
	ldd	r22, Y+1
	ldd	r23, Y+2
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldi	r18, 0
	ldi	r19, 0
	ldi	r20, 0
	ldi	r21, 71
	rcall	__gesf2
	tst	r24
	brmi	.LBB114_2
	rjmp	.LBB114_1
.LBB114_1:
	ldd	r22, Y+1
	ldd	r23, Y+2
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldi	r18, 0
	ldi	r19, 0
	ldi	r20, 0
	ldi	r21, 199
	rcall	__addsf3
	rcall	__fixsfsi
	subi	r22, 0
	sbci	r23, 128
	sbci	r24, 255
	sbci	r25, 255
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	rjmp	.LBB114_3
.LBB114_2:
	ldd	r22, Y+1
	ldd	r23, Y+2
	ldd	r24, Y+3
	ldd	r25, Y+4
	rcall	__fixsfsi
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	rjmp	.LBB114_3
.LBB114_3:
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end114:
	.size	__fixunssfsi, .Lfunc_end114-__fixunssfsi
                                        ; -- End function
	.globl	__parityhi2                     ; -- Begin function __parityhi2
	.p2align	1
	.type	__parityhi2,@function
__parityhi2:                            ; @__parityhi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+16, r25
	std	Y+15, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB115_1
.LBB115_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB115_4 Depth 2
	ldd	r18, Y+13
	ldd	r19, Y+14
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 16
	cpc	r24, r1
	brlt	.LBB115_2
	rjmp	.LBB115_9
.LBB115_2:                              ;   in Loop: Header=BB115_1 Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+13
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB115_4
.LBB115_3:                              ;   in Loop: Header=BB115_4 Depth=2
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB115_4:                              ;   Parent Loop BB115_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB115_3
; %bb.5:                                ;   in Loop: Header=BB115_1 Depth=1
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	andi	r18, 1
	andi	r19, 0
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB115_7
	rjmp	.LBB115_6
.LBB115_6:                              ;   in Loop: Header=BB115_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB115_7
.LBB115_7:                              ;   in Loop: Header=BB115_1 Depth=1
	rjmp	.LBB115_8
.LBB115_8:                              ;   in Loop: Header=BB115_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB115_1
.LBB115_9:
	ldd	r24, Y+11
	ldd	r25, Y+12
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end115:
	.size	__parityhi2, .Lfunc_end115-__parityhi2
                                        ; -- End function
	.globl	__popcounthi2                   ; -- Begin function __popcounthi2
	.p2align	1
	.type	__popcounthi2,@function
__popcounthi2:                          ; @__popcounthi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+16, r25
	std	Y+15, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB116_1
.LBB116_1:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB116_4 Depth 2
	ldd	r18, Y+13
	ldd	r19, Y+14
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 16
	cpc	r24, r1
	brlt	.LBB116_2
	rjmp	.LBB116_9
.LBB116_2:                              ;   in Loop: Header=BB116_1 Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+13
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB116_4
.LBB116_3:                              ;   in Loop: Header=BB116_4 Depth=2
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB116_4:                              ;   Parent Loop BB116_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB116_3
; %bb.5:                                ;   in Loop: Header=BB116_1 Depth=1
	ldd	r18, Y+1                        ; 2-byte Folded Reload
	ldd	r19, Y+2                        ; 2-byte Folded Reload
	andi	r18, 1
	andi	r19, 0
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB116_7
	rjmp	.LBB116_6
.LBB116_6:                              ;   in Loop: Header=BB116_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB116_7
.LBB116_7:                              ;   in Loop: Header=BB116_1 Depth=1
	rjmp	.LBB116_8
.LBB116_8:                              ;   in Loop: Header=BB116_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB116_1
.LBB116_9:
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end116:
	.size	__popcounthi2, .Lfunc_end116-__popcounthi2
                                        ; -- End function
	.globl	__mulsi3_iq2000                 ; -- Begin function __mulsi3_iq2000
	.p2align	1
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        ; @__mulsi3_iq2000
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+14, r25
	std	Y+13, r24
	std	Y+12, r23
	std	Y+11, r22
	std	Y+10, r21
	std	Y+9, r20
	std	Y+8, r19
	std	Y+7, r18
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB117_1
.LBB117_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB117_2
	rjmp	.LBB117_3
.LBB117_2:                              ;   in Loop: Header=BB117_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB117_4
	rjmp	.LBB117_7
.LBB117_3:                              ;   in Loop: Header=BB117_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB117_2
.LBB117_4:                              ;   in Loop: Header=BB117_1 Depth=1
	ldd	r24, Y+11
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB117_6
	rjmp	.LBB117_5
.LBB117_5:                              ;   in Loop: Header=BB117_1 Depth=1
	ldd	r22, Y+7
	ldd	r23, Y+8
	ldd	r20, Y+9
	ldd	r21, Y+10
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+5
	ldd	r19, Y+6
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+6, r19
	std	Y+5, r18
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB117_6
.LBB117_6:                              ;   in Loop: Header=BB117_1 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+11
	ldd	r25, Y+12
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+14, r19
	std	Y+13, r18
	std	Y+12, r25
	std	Y+11, r24
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r24, Y+7
	ldd	r25, Y+8
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+10, r19
	std	Y+9, r18
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB117_1
.LBB117_7:
	ldd	r22, Y+3
	ldd	r23, Y+4
	ldd	r24, Y+5
	ldd	r25, Y+6
	adiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end117:
	.size	__mulsi3_iq2000, .Lfunc_end117-__mulsi3_iq2000
                                        ; -- End function
	.globl	__mulsi3_lm32                   ; -- Begin function __mulsi3_lm32
	.p2align	1
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          ; @__mulsi3_lm32
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	ldi	r20, 0
	ldi	r21, 0
	std	Y+8, r21
	std	Y+7, r20
	std	Y+6, r21
	std	Y+5, r20
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brne	.LBB118_1
	rjmp	.LBB118_2
.LBB118_1:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB118_4
	rjmp	.LBB118_3
	rjmp	.LBB118_3
.LBB118_2:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB118_1
.LBB118_3:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+20, r25
	std	Y+19, r24
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB118_12
.LBB118_4:
	rjmp	.LBB118_5
.LBB118_5:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+9
	ldd	r25, Y+10
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB118_6
	rjmp	.LBB118_7
.LBB118_6:                              ;   in Loop: Header=BB118_5 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB118_8
	rjmp	.LBB118_11
.LBB118_7:                              ;   in Loop: Header=BB118_5 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB118_6
.LBB118_8:                              ;   in Loop: Header=BB118_5 Depth=1
	ldd	r24, Y+9
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB118_10
	rjmp	.LBB118_9
.LBB118_9:                              ;   in Loop: Header=BB118_5 Depth=1
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r18, Y+7
	ldd	r19, Y+8
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+8, r19
	std	Y+7, r18
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB118_10
.LBB118_10:                             ;   in Loop: Header=BB118_5 Depth=1
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+9
	ldd	r25, Y+10
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB118_5
.LBB118_11:
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r18, Y+7
	ldd	r19, Y+8
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB118_12
.LBB118_12:
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end118:
	.size	__mulsi3_lm32, .Lfunc_end118-__mulsi3_lm32
                                        ; -- End function
	.globl	__udivmodsi4                    ; -- Begin function __udivmodsi4
	.p2align	1
	.type	__udivmodsi4,@function
__udivmodsi4:                           ; @__udivmodsi4
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 33
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+29, r25
	std	Y+28, r24
	std	Y+27, r23
	std	Y+26, r22
	std	Y+25, r21
	std	Y+24, r20
	std	Y+23, r19
	std	Y+22, r18
	std	Y+21, r17
	std	Y+20, r16
	ldi	r24, 0
	ldi	r25, 0
	std	Y+19, r25
	std	Y+18, r24
	ldi	r18, 1
	ldi	r19, 0
	std	Y+17, r19
	std	Y+16, r18
	std	Y+15, r25
	std	Y+14, r24
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB119_1
.LBB119_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+22
	ldd	r23, Y+23
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r30, Y+26
	ldd	r31, Y+27
	ldd	r20, Y+28
	ldd	r21, Y+29
	mov	r24, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+11, r24                       ; 1-byte Folded Spill
	brsh	.LBB119_2
	rjmp	.LBB119_3
.LBB119_2:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	ldd	r25, Y+11                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB119_4
	rjmp	.LBB119_10
.LBB119_3:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	std	Y+11, r24                       ; 1-byte Folded Spill
	rjmp	.LBB119_2
.LBB119_4:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	breq	.LBB119_5
	rjmp	.LBB119_6
.LBB119_5:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	ldd	r25, Y+8                        ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB119_10
	rjmp	.LBB119_7
	rjmp	.LBB119_7
.LBB119_6:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_5
.LBB119_7:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r25, Y+25
	andi	r25, -128
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+6, r24                        ; 1-byte Folded Spill
	breq	.LBB119_8
	rjmp	.LBB119_9
.LBB119_8:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_10
	rjmp	.LBB119_10
.LBB119_9:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_8
.LBB119_10:                             ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB119_11
	rjmp	.LBB119_12
.LBB119_11:                             ;   in Loop: Header=BB119_1 Depth=1
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r24, Y+22
	ldd	r25, Y+23
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+25, r19
	std	Y+24, r18
	std	Y+23, r25
	std	Y+22, r24
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+19, r19
	std	Y+18, r18
	std	Y+17, r25
	std	Y+16, r24
	rjmp	.LBB119_1
.LBB119_12:
	rjmp	.LBB119_13
.LBB119_13:                             ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	breq	.LBB119_14
	rjmp	.LBB119_15
.LBB119_14:                             ;   in Loop: Header=BB119_13 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB119_16
	rjmp	.LBB119_21
.LBB119_15:                             ;   in Loop: Header=BB119_13 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_14
.LBB119_16:                             ;   in Loop: Header=BB119_13 Depth=1
	ldd	r22, Y+26
	ldd	r23, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	ldd	r30, Y+22
	ldd	r31, Y+23
	ldd	r20, Y+24
	ldd	r21, Y+25
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB119_17
	rjmp	.LBB119_18
.LBB119_17:                             ;   in Loop: Header=BB119_13 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB119_19
	rjmp	.LBB119_20
.LBB119_18:                             ;   in Loop: Header=BB119_13 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_17
.LBB119_19:                             ;   in Loop: Header=BB119_13 Depth=1
	ldd	r22, Y+22
	ldd	r23, Y+23
	ldd	r20, Y+24
	ldd	r21, Y+25
	ldd	r24, Y+26
	ldd	r25, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+29, r19
	std	Y+28, r18
	std	Y+27, r25
	std	Y+26, r24
	ldd	r20, Y+18
	ldd	r21, Y+19
	ldd	r22, Y+16
	ldd	r23, Y+17
	ldd	r18, Y+14
	ldd	r19, Y+15
	ldd	r24, Y+12
	ldd	r25, Y+13
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+15, r19
	std	Y+14, r18
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB119_20
.LBB119_20:                             ;   in Loop: Header=BB119_13 Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+19, r19
	std	Y+18, r18
	std	Y+17, r25
	std	Y+16, r24
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r24, Y+22
	ldd	r25, Y+23
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+25, r19
	std	Y+24, r18
	std	Y+23, r25
	std	Y+22, r24
	rjmp	.LBB119_13
.LBB119_21:
	ldd	r18, Y+20
	ldd	r19, Y+21
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB119_23
	rjmp	.LBB119_22
.LBB119_22:
	ldd	r24, Y+26
	ldd	r25, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	std	Y+33, r19
	std	Y+32, r18
	std	Y+31, r25
	std	Y+30, r24
	rjmp	.LBB119_24
.LBB119_23:
	ldd	r24, Y+12
	ldd	r25, Y+13
	ldd	r18, Y+14
	ldd	r19, Y+15
	std	Y+33, r19
	std	Y+32, r18
	std	Y+31, r25
	std	Y+30, r24
	rjmp	.LBB119_24
.LBB119_24:
	ldd	r22, Y+30
	ldd	r23, Y+31
	ldd	r24, Y+32
	ldd	r25, Y+33
	adiw	r28, 33
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end119:
	.size	__udivmodsi4, .Lfunc_end119-__udivmodsi4
                                        ; -- End function
	.globl	__mspabi_cmpf                   ; -- Begin function __mspabi_cmpf
	.p2align	1
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          ; @__mspabi_cmpf
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	rcall	__ltsf2
	tst	r24
	brpl	.LBB120_2
	rjmp	.LBB120_1
.LBB120_1:
	ldi	r24, 255
	ldi	r25, 255
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB120_5
.LBB120_2:
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	rcall	__gtsf2
	mov	r25, r24
	mov	r24, r1
	cp	r24, r25
	brge	.LBB120_4
	rjmp	.LBB120_3
.LBB120_3:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB120_5
.LBB120_4:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB120_5
.LBB120_5:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r28, 10
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end120:
	.size	__mspabi_cmpf, .Lfunc_end120-__mspabi_cmpf
                                        ; -- End function
	.globl	__mspabi_cmpd                   ; -- Begin function __mspabi_cmpd
	.p2align	1
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          ; @__mspabi_cmpd
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	rcall	__ltsf2
	tst	r24
	brpl	.LBB121_2
	rjmp	.LBB121_1
.LBB121_1:
	ldi	r24, 255
	ldi	r25, 255
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB121_5
.LBB121_2:
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+1
	ldd	r19, Y+2
	ldd	r20, Y+3
	ldd	r21, Y+4
	rcall	__gtsf2
	mov	r25, r24
	mov	r24, r1
	cp	r24, r25
	brge	.LBB121_4
	rjmp	.LBB121_3
.LBB121_3:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB121_5
.LBB121_4:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB121_5
.LBB121_5:
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end121:
	.size	__mspabi_cmpd, .Lfunc_end121-__mspabi_cmpd
                                        ; -- End function
	.globl	__mspabi_mpysll                 ; -- Begin function __mspabi_mpysll
	.p2align	1
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        ; @__mspabi_mpysll
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
                                        ; kill: def $r24 killed $r1
                                        ; kill: def $r24 killed $r1
	mov	r24, r21
	lsl	r24
	sbc	r30, r24
	mov	r22, r30
	mov	r23, r30
	mov	r24, r30
	mov	r25, r30
	ldd	r12, Y+3
	ldd	r13, Y+4
	ldd	r10, Y+1
	ldd	r11, Y+2
                                        ; kill: def $r30 killed $r1
                                        ; kill: def $r30 killed $r1
	mov	r30, r13
	lsl	r30
	sbc	r30, r24
	mov	r14, r30
	mov	r15, r30
	mov	r16, r30
	mov	r17, r30
	rcall	__muldi3
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end122:
	.size	__mspabi_mpysll, .Lfunc_end122-__mspabi_mpysll
                                        ; -- End function
	.globl	__mspabi_mpyull                 ; -- Begin function __mspabi_mpyull
	.p2align	1
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        ; @__mspabi_mpyull
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldd	r10, Y+1
	ldd	r11, Y+2
	ldd	r12, Y+3
	ldd	r13, Y+4
	ldi	r16, 0
	ldi	r17, 0
	mov	r22, r16
	mov	r23, r17
	mov	r24, r16
	mov	r25, r17
	mov	r14, r16
	mov	r15, r17
	rcall	__muldi3
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end123:
	.size	__mspabi_mpyull, .Lfunc_end123-__mspabi_mpyull
                                        ; -- End function
	.globl	__mulhi3                        ; -- Begin function __mulhi3
	.p2align	1
	.type	__mulhi3,@function
__mulhi3:                               ; @__mulhi3
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+14, r25
	std	Y+13, r24
	std	Y+12, r23
	std	Y+11, r22
	ldi	r24, 0
	ldi	r25, 0
	std	Y+9, r25
	std	Y+8, r24
	std	Y+7, r25
	std	Y+6, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r24, r25
	tst	r24
	brpl	.LBB124_2
	rjmp	.LBB124_1
.LBB124_1:
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r18, r1
	neg	r25
	neg	r24
	sbc	r25, r18
	std	Y+12, r25
	std	Y+11, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+9, r25
	std	Y+8, r24
	rjmp	.LBB124_2
.LBB124_2:
	mov	r24, r1
	std	Y+10, r24
	rjmp	.LBB124_3
.LBB124_3:                              ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+11
	ldd	r21, Y+12
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB124_7
	rjmp	.LBB124_4
.LBB124_4:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r18, Y+10
	mov	r24, r18
	mov	r25, r18
	lsl	r25
	sbc	r25, r25
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 16
	cpc	r25, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	brlo	.LBB124_5
	rjmp	.LBB124_6
.LBB124_5:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB124_7
	rjmp	.LBB124_7
.LBB124_6:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB124_5
.LBB124_7:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB124_8
	rjmp	.LBB124_12
.LBB124_8:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+11
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB124_10
	rjmp	.LBB124_9
.LBB124_9:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+6
	ldd	r25, Y+7
	add	r24, r18
	adc	r25, r19
	std	Y+7, r25
	std	Y+6, r24
	rjmp	.LBB124_10
.LBB124_10:                             ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	lsl	r24
	rol	r25
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	asr	r25
	ror	r24
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB124_11
.LBB124_11:                             ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+10
	inc	r24
	std	Y+10, r24
	rjmp	.LBB124_3
.LBB124_12:
	ldd	r18, Y+8
	ldd	r19, Y+9
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB124_14
	rjmp	.LBB124_13
.LBB124_13:
	ldd	r24, Y+6
	ldd	r25, Y+7
	mov	r18, r1
	neg	r25
	neg	r24
	sbc	r25, r18
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB124_15
.LBB124_14:
	ldd	r24, Y+6
	ldd	r25, Y+7
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB124_15
.LBB124_15:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 14
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end124:
	.size	__mulhi3, .Lfunc_end124-__mulhi3
                                        ; -- End function
	.globl	__divsi3                        ; -- Begin function __divsi3
	.p2align	1
	.type	__divsi3,@function
__divsi3:                               ; @__divsi3
; %bb.0:
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 22
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	std	Y+16, r19
	std	Y+15, r18
	ldi	r24, 0
	ldi	r25, 0
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+21
	ldd	r25, Y+22
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+8, r24                        ; 1-byte Folded Spill
	brpl	.LBB125_1
	rjmp	.LBB125_2
.LBB125_1:
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB125_3
	rjmp	.LBB125_6
.LBB125_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB125_1
.LBB125_3:
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r20, Y+21
	ldd	r21, Y+22
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+22, r19
	std	Y+21, r18
	std	Y+20, r25
	std	Y+19, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	breq	.LBB125_4
	rjmp	.LBB125_5
.LBB125_4:
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	clr	r25
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB125_6
	rjmp	.LBB125_6
.LBB125_5:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB125_4
.LBB125_6:
	ldd	r24, Y+17
	ldd	r25, Y+18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+4, r24                        ; 1-byte Folded Spill
	brpl	.LBB125_7
	rjmp	.LBB125_8
.LBB125_7:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB125_9
	rjmp	.LBB125_12
.LBB125_8:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB125_7
.LBB125_9:
	ldd	r22, Y+15
	ldd	r23, Y+16
	ldd	r20, Y+17
	ldd	r21, Y+18
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+18, r19
	std	Y+17, r18
	std	Y+16, r25
	std	Y+15, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	breq	.LBB125_10
	rjmp	.LBB125_11
.LBB125_10:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB125_12
	rjmp	.LBB125_12
.LBB125_11:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB125_10
.LBB125_12:
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r20, Y+17
	ldd	r21, Y+18
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldi	r16, 0
	ldi	r17, 0
	rcall	__udivmodsi4
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	ldd	r18, Y+13
	ldd	r19, Y+14
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB125_14
	rjmp	.LBB125_13
.LBB125_13:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB125_14
.LBB125_14:
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r28, 22
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	ret
.Lfunc_end125:
	.size	__divsi3, .Lfunc_end125-__divsi3
                                        ; -- End function
	.globl	__modsi3                        ; -- Begin function __modsi3
	.p2align	1
	.type	__modsi3,@function
__modsi3:                               ; @__modsi3
; %bb.0:
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+18, r25
	std	Y+17, r24
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	std	Y+12, r19
	std	Y+11, r18
	ldi	r24, 0
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+4, r24                        ; 1-byte Folded Spill
	brpl	.LBB126_1
	rjmp	.LBB126_2
.LBB126_1:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB126_4
	rjmp	.LBB126_3
	rjmp	.LBB126_3
.LBB126_2:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB126_1
.LBB126_3:
	ldd	r22, Y+15
	ldd	r23, Y+16
	ldd	r20, Y+17
	ldd	r21, Y+18
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+18, r19
	std	Y+17, r18
	std	Y+16, r25
	std	Y+15, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB126_4
.LBB126_4:
	ldd	r24, Y+13
	ldd	r25, Y+14
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	tst	r25
	std	Y+2, r24                        ; 1-byte Folded Spill
	brpl	.LBB126_5
	rjmp	.LBB126_6
.LBB126_5:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB126_8
	rjmp	.LBB126_7
	rjmp	.LBB126_7
.LBB126_6:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB126_5
.LBB126_7:
	ldd	r22, Y+11
	ldd	r23, Y+12
	ldd	r20, Y+13
	ldd	r21, Y+14
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+14, r19
	std	Y+13, r18
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB126_8
.LBB126_8:
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r22, Y+15
	ldd	r23, Y+16
	ldd	r20, Y+13
	ldd	r21, Y+14
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldi	r16, 1
	ldi	r17, 0
	rcall	__udivmodsi4
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	ldd	r18, Y+9
	ldd	r19, Y+10
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB126_10
	rjmp	.LBB126_9
.LBB126_9:
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r18
	mov	r25, r19
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+8, r19
	std	Y+7, r18
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB126_10
.LBB126_10:
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	ret
.Lfunc_end126:
	.size	__modsi3, .Lfunc_end126-__modsi3
                                        ; -- End function
	.globl	__udivmodhi4                    ; -- Begin function __udivmodhi4
	.p2align	1
	.type	__udivmodhi4,@function
__udivmodhi4:                           ; @__udivmodhi4
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+14, r25
	std	Y+13, r24
	std	Y+12, r23
	std	Y+11, r22
	std	Y+10, r21
	std	Y+9, r20
	ldi	r24, 1
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB127_1
.LBB127_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brsh	.LBB127_6
	rjmp	.LBB127_2
.LBB127_2:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r20, Y+7
	ldd	r21, Y+8
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	breq	.LBB127_6
	rjmp	.LBB127_3
.LBB127_3:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r25, Y+12
	andi	r25, -128
	mov	r24, r1
	std	Y+2, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+3, r24                        ; 1-byte Folded Spill
	breq	.LBB127_4
	rjmp	.LBB127_5
.LBB127_4:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB127_6
	rjmp	.LBB127_6
.LBB127_5:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	rjmp	.LBB127_4
.LBB127_6:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB127_8
	rjmp	.LBB127_7
.LBB127_7:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	lsl	r24
	rol	r25
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	lsl	r24
	rol	r25
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB127_1
.LBB127_8:
	rjmp	.LBB127_9
.LBB127_9:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+7
	ldd	r19, Y+8
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB127_10
	rjmp	.LBB127_13
.LBB127_10:                             ;   in Loop: Header=BB127_9 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+11
	ldd	r19, Y+12
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB127_12
	rjmp	.LBB127_11
.LBB127_11:                             ;   in Loop: Header=BB127_9 Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+13
	ldd	r25, Y+14
	sub	r24, r18
	sbc	r25, r19
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+7
	ldd	r19, Y+8
	ldd	r24, Y+5
	ldd	r25, Y+6
	or	r24, r18
	or	r25, r19
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB127_12
.LBB127_12:                             ;   in Loop: Header=BB127_9 Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	lsr	r25
	ror	r24
	std	Y+8, r25
	std	Y+7, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	lsr	r25
	ror	r24
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB127_9
.LBB127_13:
	ldd	r18, Y+9
	ldd	r19, Y+10
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB127_15
	rjmp	.LBB127_14
.LBB127_14:
	ldd	r24, Y+13
	ldd	r25, Y+14
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB127_16
.LBB127_15:
	ldd	r24, Y+5
	ldd	r25, Y+6
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB127_16
.LBB127_16:
	ldd	r24, Y+15
	ldd	r25, Y+16
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end127:
	.size	__udivmodhi4, .Lfunc_end127-__udivmodhi4
                                        ; -- End function
	.globl	__udivmodsi4_libgcc             ; -- Begin function __udivmodsi4_libgcc
	.p2align	1
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    ; @__udivmodsi4_libgcc
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 33
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+29, r25
	std	Y+28, r24
	std	Y+27, r23
	std	Y+26, r22
	std	Y+25, r21
	std	Y+24, r20
	std	Y+23, r19
	std	Y+22, r18
	std	Y+21, r17
	std	Y+20, r16
	ldi	r24, 0
	ldi	r25, 0
	std	Y+19, r25
	std	Y+18, r24
	ldi	r18, 1
	ldi	r19, 0
	std	Y+17, r19
	std	Y+16, r18
	std	Y+15, r25
	std	Y+14, r24
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB128_1
.LBB128_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+22
	ldd	r23, Y+23
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r30, Y+26
	ldd	r31, Y+27
	ldd	r20, Y+28
	ldd	r21, Y+29
	mov	r24, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+11, r24                       ; 1-byte Folded Spill
	brsh	.LBB128_2
	rjmp	.LBB128_3
.LBB128_2:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	ldd	r25, Y+11                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB128_4
	rjmp	.LBB128_10
.LBB128_3:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	std	Y+11, r24                       ; 1-byte Folded Spill
	rjmp	.LBB128_2
.LBB128_4:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	breq	.LBB128_5
	rjmp	.LBB128_6
.LBB128_5:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	ldd	r25, Y+8                        ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB128_10
	rjmp	.LBB128_7
	rjmp	.LBB128_7
.LBB128_6:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_5
.LBB128_7:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r25, Y+25
	andi	r25, -128
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+6, r24                        ; 1-byte Folded Spill
	breq	.LBB128_8
	rjmp	.LBB128_9
.LBB128_8:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_10
	rjmp	.LBB128_10
.LBB128_9:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_8
.LBB128_10:                             ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB128_11
	rjmp	.LBB128_12
.LBB128_11:                             ;   in Loop: Header=BB128_1 Depth=1
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r24, Y+22
	ldd	r25, Y+23
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+25, r19
	std	Y+24, r18
	std	Y+23, r25
	std	Y+22, r24
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+19, r19
	std	Y+18, r18
	std	Y+17, r25
	std	Y+16, r24
	rjmp	.LBB128_1
.LBB128_12:
	rjmp	.LBB128_13
.LBB128_13:                             ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	breq	.LBB128_14
	rjmp	.LBB128_15
.LBB128_14:                             ;   in Loop: Header=BB128_13 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB128_16
	rjmp	.LBB128_21
.LBB128_15:                             ;   in Loop: Header=BB128_13 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_14
.LBB128_16:                             ;   in Loop: Header=BB128_13 Depth=1
	ldd	r22, Y+26
	ldd	r23, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	ldd	r30, Y+22
	ldd	r31, Y+23
	ldd	r20, Y+24
	ldd	r21, Y+25
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB128_17
	rjmp	.LBB128_18
.LBB128_17:                             ;   in Loop: Header=BB128_13 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB128_19
	rjmp	.LBB128_20
.LBB128_18:                             ;   in Loop: Header=BB128_13 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_17
.LBB128_19:                             ;   in Loop: Header=BB128_13 Depth=1
	ldd	r22, Y+22
	ldd	r23, Y+23
	ldd	r20, Y+24
	ldd	r21, Y+25
	ldd	r24, Y+26
	ldd	r25, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+29, r19
	std	Y+28, r18
	std	Y+27, r25
	std	Y+26, r24
	ldd	r20, Y+18
	ldd	r21, Y+19
	ldd	r22, Y+16
	ldd	r23, Y+17
	ldd	r18, Y+14
	ldd	r19, Y+15
	ldd	r24, Y+12
	ldd	r25, Y+13
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+15, r19
	std	Y+14, r18
	std	Y+13, r25
	std	Y+12, r24
	rjmp	.LBB128_20
.LBB128_20:                             ;   in Loop: Header=BB128_13 Depth=1
	ldd	r18, Y+18
	ldd	r19, Y+19
	ldd	r24, Y+16
	ldd	r25, Y+17
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+19, r19
	std	Y+18, r18
	std	Y+17, r25
	std	Y+16, r24
	ldd	r18, Y+24
	ldd	r19, Y+25
	ldd	r24, Y+22
	ldd	r25, Y+23
                                        ; kill: def $r20 killed $r1
	mov	r20, r19
	lsr	r20
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r25
	ror	r19
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r20
	std	Y+25, r19
	std	Y+24, r18
	std	Y+23, r25
	std	Y+22, r24
	rjmp	.LBB128_13
.LBB128_21:
	ldd	r18, Y+20
	ldd	r19, Y+21
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB128_23
	rjmp	.LBB128_22
.LBB128_22:
	ldd	r24, Y+26
	ldd	r25, Y+27
	ldd	r18, Y+28
	ldd	r19, Y+29
	std	Y+33, r19
	std	Y+32, r18
	std	Y+31, r25
	std	Y+30, r24
	rjmp	.LBB128_24
.LBB128_23:
	ldd	r24, Y+12
	ldd	r25, Y+13
	ldd	r18, Y+14
	ldd	r19, Y+15
	std	Y+33, r19
	std	Y+32, r18
	std	Y+31, r25
	std	Y+30, r24
	rjmp	.LBB128_24
.LBB128_24:
	ldd	r22, Y+30
	ldd	r23, Y+31
	ldd	r24, Y+32
	ldd	r25, Y+33
	adiw	r28, 33
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end128:
	.size	__udivmodsi4_libgcc, .Lfunc_end128-__udivmodsi4_libgcc
                                        ; -- End function
	.globl	__ashldi3                       ; -- Begin function __ashldi3
	.p2align	1
	.type	__ashldi3,@function
__ashldi3:                              ; @__ashldi3
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	subi	r28, 68
	sbci	r29, 0
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+56, r25
	std	Y+55, r24
	std	Y+54, r23
	std	Y+53, r22
	std	Y+52, r21
	std	Y+51, r20
	std	Y+50, r19
	std	Y+49, r18
	std	Y+48, r17
	std	Y+47, r16
	ldi	r24, 32
	ldi	r25, 0
	std	Y+46, r25
	std	Y+45, r24
	ldd	r24, Y+49
	ldd	r25, Y+50
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldd	r20, Y+53
	ldd	r21, Y+54
	ldd	r22, Y+55
	ldd	r23, Y+56
	std	Y+44, r23
	std	Y+43, r22
	std	Y+42, r21
	std	Y+41, r20
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	ldd	r24, Y+47
	andi	r24, 32
	cpi	r24, 0
	brne	.LBB129_1
	rjmp	.LBB129_4
.LBB129_1:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+32, r25
	std	Y+31, r24
	std	Y+30, r25
	std	Y+29, r24
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r21, Y+47
	subi	r21, 32
	mov	r20, r21
	cpi	r21, 0
	std	Y+24, r20                       ; 1-byte Folded Spill
	std	Y+26, r19                       ; 2-byte Folded Spill
	std	Y+25, r18                       ; 2-byte Folded Spill
	std	Y+28, r25                       ; 2-byte Folded Spill
	std	Y+27, r24                       ; 2-byte Folded Spill
	breq	.LBB129_3
	rjmp	.LBB129_2
.LBB129_2:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+27                       ; 2-byte Folded Reload
	ldd	r25, Y+28                       ; 2-byte Folded Reload
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r20, Y+24                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r18
	lsl	r21
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r21
	cpi	r20, 0
	std	Y+24, r20                       ; 1-byte Folded Spill
	std	Y+26, r19                       ; 2-byte Folded Spill
	std	Y+25, r18                       ; 2-byte Folded Spill
	std	Y+28, r25                       ; 2-byte Folded Spill
	std	Y+27, r24                       ; 2-byte Folded Spill
	brne	.LBB129_2
	rjmp	.LBB129_3
.LBB129_3:
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r24, Y+27                       ; 2-byte Folded Reload
	ldd	r25, Y+28                       ; 2-byte Folded Reload
	std	Y+34, r19
	std	Y+33, r18
	std	Y+36, r25
	std	Y+35, r24
	rjmp	.LBB129_13
.LBB129_4:
	ldd	r18, Y+47
	ldd	r19, Y+48
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB129_6
	rjmp	.LBB129_5
.LBB129_5:
	ldd	r24, Y+49
	ldd	r25, Y+50
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldd	r20, Y+53
	ldd	r21, Y+54
	ldd	r22, Y+55
	ldd	r23, Y+56
	in	r0, 63
	adiw	r28, 5
	std	Y+63, r23
	std	Y+62, r22
	sbiw	r28, 5
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	std	Y+63, r21
	std	Y+62, r20
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 1
	std	Y+63, r19
	std	Y+62, r18
	sbiw	r28, 1
	out	63, r0
	std	Y+62, r25
	std	Y+61, r24
	rjmp	.LBB129_14
.LBB129_6:
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r20, Y+47
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	breq	.LBB129_8
	rjmp	.LBB129_7
.LBB129_7:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r20, Y+19                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r18
	lsl	r21
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r21
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	brne	.LBB129_7
	rjmp	.LBB129_8
.LBB129_8:
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	std	Y+30, r19
	std	Y+29, r18
	std	Y+32, r25
	std	Y+31, r24
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	ldd	r20, Y+47
	cpi	r20, 0
	std	Y+14, r20                       ; 1-byte Folded Spill
	std	Y+16, r19                       ; 2-byte Folded Spill
	std	Y+15, r18                       ; 2-byte Folded Spill
	std	Y+18, r25                       ; 2-byte Folded Spill
	std	Y+17, r24                       ; 2-byte Folded Spill
	breq	.LBB129_10
	rjmp	.LBB129_9
.LBB129_9:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+17                       ; 2-byte Folded Reload
	ldd	r25, Y+18                       ; 2-byte Folded Reload
	ldd	r18, Y+15                       ; 2-byte Folded Reload
	ldd	r19, Y+16                       ; 2-byte Folded Reload
	ldd	r20, Y+14                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r18
	lsl	r21
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r21
	cpi	r20, 0
	std	Y+14, r20                       ; 1-byte Folded Spill
	std	Y+16, r19                       ; 2-byte Folded Spill
	std	Y+15, r18                       ; 2-byte Folded Spill
	std	Y+18, r25                       ; 2-byte Folded Spill
	std	Y+17, r24                       ; 2-byte Folded Spill
	brne	.LBB129_9
	rjmp	.LBB129_10
.LBB129_10:
	ldd	r24, Y+15                       ; 2-byte Folded Reload
	ldd	r25, Y+16                       ; 2-byte Folded Reload
	ldd	r18, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 2-byte Folded Reload
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r21, Y+47
	ldi	r20, 32
	sub	r20, r21
	cpi	r20, 0
	std	Y+9, r20                        ; 1-byte Folded Spill
	std	Y+11, r19                       ; 2-byte Folded Spill
	std	Y+10, r18                       ; 2-byte Folded Spill
	std	Y+13, r25                       ; 2-byte Folded Spill
	std	Y+12, r24                       ; 2-byte Folded Spill
	breq	.LBB129_12
	rjmp	.LBB129_11
.LBB129_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+12                       ; 2-byte Folded Reload
	ldd	r25, Y+13                       ; 2-byte Folded Reload
	ldd	r18, Y+10                       ; 2-byte Folded Reload
	ldd	r19, Y+11                       ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+9, r20                        ; 1-byte Folded Spill
	std	Y+11, r19                       ; 2-byte Folded Spill
	std	Y+10, r18                       ; 2-byte Folded Spill
	std	Y+13, r25                       ; 2-byte Folded Spill
	std	Y+12, r24                       ; 2-byte Folded Spill
	brne	.LBB129_11
	rjmp	.LBB129_12
.LBB129_12:
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	ldd	r20, Y+10                       ; 2-byte Folded Reload
	ldd	r21, Y+11                       ; 2-byte Folded Reload
	ldd	r22, Y+12                       ; 2-byte Folded Reload
	ldd	r23, Y+13                       ; 2-byte Folded Reload
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+34, r19
	std	Y+33, r18
	std	Y+36, r25
	std	Y+35, r24
	rjmp	.LBB129_13
.LBB129_13:
	ldd	r24, Y+29
	ldd	r25, Y+30
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r20, Y+33
	ldd	r21, Y+34
	ldd	r22, Y+35
	ldd	r23, Y+36
	in	r0, 63
	adiw	r28, 5
	std	Y+63, r23
	std	Y+62, r22
	sbiw	r28, 5
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	std	Y+63, r21
	std	Y+62, r20
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 1
	std	Y+63, r19
	std	Y+62, r18
	sbiw	r28, 1
	out	63, r0
	std	Y+62, r25
	std	Y+61, r24
	rjmp	.LBB129_14
.LBB129_14:
	ldd	r18, Y+61
	ldd	r19, Y+62
	in	r0, 63
	adiw	r28, 1
	ldd	r20, Y+62
	ldd	r21, Y+63
	sbiw	r28, 1
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	ldd	r22, Y+62
	ldd	r23, Y+63
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 5
	ldd	r24, Y+62
	ldd	r25, Y+63
	sbiw	r28, 5
	out	63, r0
	subi	r28, 188
	sbci	r29, 255
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end129:
	.size	__ashldi3, .Lfunc_end129-__ashldi3
                                        ; -- End function
	.globl	__ashrdi3                       ; -- Begin function __ashrdi3
	.p2align	1
	.type	__ashrdi3,@function
__ashrdi3:                              ; @__ashrdi3
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	subi	r28, 68
	sbci	r29, 0
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+56, r25
	std	Y+55, r24
	std	Y+54, r23
	std	Y+53, r22
	std	Y+52, r21
	std	Y+51, r20
	std	Y+50, r19
	std	Y+49, r18
	std	Y+48, r17
	std	Y+47, r16
	ldi	r24, 32
	ldi	r25, 0
	std	Y+46, r25
	std	Y+45, r24
	ldd	r24, Y+49
	ldd	r25, Y+50
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldd	r20, Y+53
	ldd	r21, Y+54
	ldd	r22, Y+55
	ldd	r23, Y+56
	std	Y+44, r23
	std	Y+43, r22
	std	Y+42, r21
	std	Y+41, r20
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	ldd	r24, Y+47
	andi	r24, 32
	cpi	r24, 0
	brne	.LBB130_1
	rjmp	.LBB130_4
.LBB130_1:
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
                                        ; kill: def $r18 killed $r1
                                        ; kill: def $r18 killed $r1
	mov	r24, r25
	lsl	r24
	sbc	r20, r24
	mov	r24, r20
	mov	r25, r20
	mov	r18, r20
	mov	r19, r20
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	ldd	r21, Y+47
	subi	r21, 32
	mov	r20, r21
	cpi	r21, 0
	std	Y+24, r20                       ; 1-byte Folded Spill
	std	Y+26, r19                       ; 2-byte Folded Spill
	std	Y+25, r18                       ; 2-byte Folded Spill
	std	Y+28, r25                       ; 2-byte Folded Spill
	std	Y+27, r24                       ; 2-byte Folded Spill
	breq	.LBB130_3
	rjmp	.LBB130_2
.LBB130_2:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+27                       ; 2-byte Folded Reload
	ldd	r25, Y+28                       ; 2-byte Folded Reload
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r20, Y+24                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	asr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+24, r20                       ; 1-byte Folded Spill
	std	Y+26, r19                       ; 2-byte Folded Spill
	std	Y+25, r18                       ; 2-byte Folded Spill
	std	Y+28, r25                       ; 2-byte Folded Spill
	std	Y+27, r24                       ; 2-byte Folded Spill
	brne	.LBB130_2
	rjmp	.LBB130_3
.LBB130_3:
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r24, Y+27                       ; 2-byte Folded Reload
	ldd	r25, Y+28                       ; 2-byte Folded Reload
	std	Y+30, r19
	std	Y+29, r18
	std	Y+32, r25
	std	Y+31, r24
	rjmp	.LBB130_13
.LBB130_4:
	ldd	r18, Y+47
	ldd	r19, Y+48
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB130_6
	rjmp	.LBB130_5
.LBB130_5:
	ldd	r24, Y+49
	ldd	r25, Y+50
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldd	r20, Y+53
	ldd	r21, Y+54
	ldd	r22, Y+55
	ldd	r23, Y+56
	in	r0, 63
	adiw	r28, 5
	std	Y+63, r23
	std	Y+62, r22
	sbiw	r28, 5
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	std	Y+63, r21
	std	Y+62, r20
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 1
	std	Y+63, r19
	std	Y+62, r18
	sbiw	r28, 1
	out	63, r0
	std	Y+62, r25
	std	Y+61, r24
	rjmp	.LBB130_14
.LBB130_6:
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	ldd	r20, Y+47
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	breq	.LBB130_8
	rjmp	.LBB130_7
.LBB130_7:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r20, Y+19                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	asr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	brne	.LBB130_7
	rjmp	.LBB130_8
.LBB130_8:
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	std	Y+34, r19
	std	Y+33, r18
	std	Y+36, r25
	std	Y+35, r24
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	ldd	r21, Y+47
	ldi	r20, 32
	sub	r20, r21
	cpi	r20, 0
	std	Y+14, r20                       ; 1-byte Folded Spill
	std	Y+16, r19                       ; 2-byte Folded Spill
	std	Y+15, r18                       ; 2-byte Folded Spill
	std	Y+18, r25                       ; 2-byte Folded Spill
	std	Y+17, r24                       ; 2-byte Folded Spill
	breq	.LBB130_10
	rjmp	.LBB130_9
.LBB130_9:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+17                       ; 2-byte Folded Reload
	ldd	r25, Y+18                       ; 2-byte Folded Reload
	ldd	r18, Y+15                       ; 2-byte Folded Reload
	ldd	r19, Y+16                       ; 2-byte Folded Reload
	ldd	r20, Y+14                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r18
	lsl	r21
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r21
	cpi	r20, 0
	std	Y+14, r20                       ; 1-byte Folded Spill
	std	Y+16, r19                       ; 2-byte Folded Spill
	std	Y+15, r18                       ; 2-byte Folded Spill
	std	Y+18, r25                       ; 2-byte Folded Spill
	std	Y+17, r24                       ; 2-byte Folded Spill
	brne	.LBB130_9
	rjmp	.LBB130_10
.LBB130_10:
	ldd	r24, Y+15                       ; 2-byte Folded Reload
	ldd	r25, Y+16                       ; 2-byte Folded Reload
	ldd	r18, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 2-byte Folded Reload
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r20, Y+47
	cpi	r20, 0
	std	Y+9, r20                        ; 1-byte Folded Spill
	std	Y+11, r19                       ; 2-byte Folded Spill
	std	Y+10, r18                       ; 2-byte Folded Spill
	std	Y+13, r25                       ; 2-byte Folded Spill
	std	Y+12, r24                       ; 2-byte Folded Spill
	breq	.LBB130_12
	rjmp	.LBB130_11
.LBB130_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+12                       ; 2-byte Folded Reload
	ldd	r25, Y+13                       ; 2-byte Folded Reload
	ldd	r18, Y+10                       ; 2-byte Folded Reload
	ldd	r19, Y+11                       ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+9, r20                        ; 1-byte Folded Spill
	std	Y+11, r19                       ; 2-byte Folded Spill
	std	Y+10, r18                       ; 2-byte Folded Spill
	std	Y+13, r25                       ; 2-byte Folded Spill
	std	Y+12, r24                       ; 2-byte Folded Spill
	brne	.LBB130_11
	rjmp	.LBB130_12
.LBB130_12:
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	ldd	r20, Y+10                       ; 2-byte Folded Reload
	ldd	r21, Y+11                       ; 2-byte Folded Reload
	ldd	r22, Y+12                       ; 2-byte Folded Reload
	ldd	r23, Y+13                       ; 2-byte Folded Reload
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+30, r19
	std	Y+29, r18
	std	Y+32, r25
	std	Y+31, r24
	rjmp	.LBB130_13
.LBB130_13:
	ldd	r24, Y+29
	ldd	r25, Y+30
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r20, Y+33
	ldd	r21, Y+34
	ldd	r22, Y+35
	ldd	r23, Y+36
	in	r0, 63
	adiw	r28, 5
	std	Y+63, r23
	std	Y+62, r22
	sbiw	r28, 5
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	std	Y+63, r21
	std	Y+62, r20
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 1
	std	Y+63, r19
	std	Y+62, r18
	sbiw	r28, 1
	out	63, r0
	std	Y+62, r25
	std	Y+61, r24
	rjmp	.LBB130_14
.LBB130_14:
	ldd	r18, Y+61
	ldd	r19, Y+62
	in	r0, 63
	adiw	r28, 1
	ldd	r20, Y+62
	ldd	r21, Y+63
	sbiw	r28, 1
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	ldd	r22, Y+62
	ldd	r23, Y+63
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 5
	ldd	r24, Y+62
	ldd	r25, Y+63
	sbiw	r28, 5
	out	63, r0
	subi	r28, 188
	sbci	r29, 255
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end130:
	.size	__ashrdi3, .Lfunc_end130-__ashrdi3
                                        ; -- End function
	.globl	__bswapdi2                      ; -- Begin function __bswapdi2
	.p2align	1
	.type	__bswapdi2,@function
__bswapdi2:                             ; @__bswapdi2
; %bb.0:
	push	r7
	push	r8
	push	r9
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 17
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	ldd	r30, Y+9
	ldd	r31, Y+10
	ldd	r26, Y+11
	ldd	r27, Y+12
	ldd	r22, Y+15
	ldd	r23, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	mov	r17, r1
	mov	r18, r23
	mov	r19, r17
	mov	r20, r17
	mov	r21, r17
	andi	r23, 0
	ldi	r16, 0
	ldi	r17, 0
	mov	r13, r1
	mov	r14, r17
	mov	r15, r22
	mov	r22, r23
	mov	r23, r13
	or	r18, r14
	or	r19, r15
	or	r20, r22
	or	r21, r23
	andi	r24, 0
	mov	r13, r1
	mov	r22, r17
	mov	r23, r13
	mov	r14, r13
	mov	r15, r13
	std	Y+6, r15                        ; 2-byte Folded Spill
	std	Y+5, r14                        ; 2-byte Folded Spill
	mov	r11, r1
	mov	r13, r16
	mov	r12, r25
	mov	r15, r24
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	mov	r14, r11
	or	r20, r12
	or	r21, r13
	or	r18, r14
	or	r19, r15
	andi	r25, 0
	mov	r11, r1
	mov	r12, r25
	mov	r13, r16
	mov	r14, r17
	mov	r15, r11
	mov	r7, r1
	mov	r11, r24
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	mov	r10, r7
	mov	r9, r7
	mov	r8, r7
	or	r18, r8
	or	r19, r9
	or	r20, r10
	or	r21, r11
	or	r22, r12
	or	r23, r13
	or	r24, r14
	or	r25, r15
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	mov	r24, r26
	mov	r25, r27
	andi	r24, 0
	mov	r11, r1
	mov	r13, r24
	mov	r12, r17
	mov	r15, r16
	mov	r14, r11
	mov	r7, r1
	mov	r10, r25
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	mov	r11, r7
	mov	r8, r7
	mov	r9, r7
	or	r24, r8
	or	r25, r9
	or	r22, r10
	or	r23, r11
	or	r20, r12
	or	r21, r13
	or	r18, r14
	or	r19, r15
	andi	r27, 0
	mov	r13, r1
	mov	r14, r17
	mov	r15, r26
	mov	r26, r27
	mov	r27, r13
	mov	r9, r1
	mov	r13, r16
	mov	r12, r9
	mov	r11, r9
	mov	r10, r9
	or	r18, r10
	or	r19, r11
	or	r20, r12
	or	r21, r13
	or	r22, r14
	or	r23, r15
	or	r24, r26
	or	r25, r27
	mov	r26, r30
	mov	r27, r31
	andi	r26, 0
	mov	r15, r1
	mov	r17, r16
	mov	r16, r27
	mov	r27, r26
	mov	r26, r15
	or	r24, r16
	or	r25, r17
	or	r22, r26
	or	r23, r27
	mov	r17, r1
	mov	r31, r30
	mov	r30, r17
	mov	r27, r17
	mov	r26, r17
	or	r22, r26
	or	r23, r27
	or	r24, r30
	or	r25, r31
	adiw	r28, 17
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	pop	r9
	pop	r8
	pop	r7
	ret
.Lfunc_end131:
	.size	__bswapdi2, .Lfunc_end131-__bswapdi2
                                        ; -- End function
	.globl	__bswapsi2                      ; -- Begin function __bswapsi2
	.p2align	1
	.type	__bswapsi2,@function
__bswapsi2:                             ; @__bswapsi2
; %bb.0:
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+4, r25
	std	Y+3, r24
	std	Y+2, r23
	std	Y+1, r22
	ldd	r20, Y+3
	ldd	r21, Y+4
	ldd	r18, Y+1
	ldd	r19, Y+2
	mov	r30, r1
	mov	r22, r21
	mov	r23, r30
	mov	r24, r30
	mov	r25, r30
	andi	r21, 0
	ldi	r30, 0
	ldi	r31, 0
	mov	r17, r1
	mov	r26, r31
	mov	r27, r20
	mov	r20, r21
	mov	r21, r17
	or	r22, r26
	or	r23, r27
	or	r24, r20
	or	r25, r21
	mov	r20, r18
	mov	r21, r19
	andi	r20, 0
	mov	r26, r1
	mov	r31, r30
	mov	r30, r21
	mov	r21, r20
	mov	r20, r26
	or	r24, r30
	or	r25, r31
	or	r22, r20
	or	r23, r21
	mov	r30, r1
	mov	r19, r18
	mov	r18, r30
	mov	r21, r30
	mov	r20, r30
	or	r22, r20
	or	r23, r21
	or	r24, r18
	or	r25, r19
	adiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	ret
.Lfunc_end132:
	.size	__bswapsi2, .Lfunc_end132-__bswapsi2
                                        ; -- End function
	.globl	__clzsi2                        ; -- Begin function __clzsi2
	.p2align	1
	.type	__clzsi2,@function
__clzsi2:                               ; @__clzsi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 58
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+58, r25
	std	Y+57, r24
	std	Y+56, r23
	std	Y+55, r22
	ldd	r24, Y+55
	ldd	r25, Y+56
	ldd	r18, Y+57
	ldd	r19, Y+58
	std	Y+54, r19
	std	Y+53, r18
	std	Y+52, r25
	std	Y+51, r24
	ldd	r18, Y+53
	ldd	r19, Y+54
	ldi	r20, 0
	ldi	r21, 0
	std	Y+40, r21                       ; 2-byte Folded Spill
	std	Y+39, r20                       ; 2-byte Folded Spill
	mov	r25, r1
	std	Y+41, r25                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r25, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+42, r24                       ; 1-byte Folded Spill
	breq	.LBB133_1
	rjmp	.LBB133_2
.LBB133_1:
	ldd	r24, Y+39                       ; 2-byte Folded Reload
	ldd	r25, Y+40                       ; 2-byte Folded Reload
	ldd	r18, Y+42                       ; 1-byte Folded Reload
                                        ; implicit-def: $r21r20
	mov	r20, r18
	andi	r20, 1
	andi	r21, 0
                                        ; kill: def $r18 killed $r1
	mov	r19, r25
	swap	r19
	andi	r19, 240
	swap	r24
	eor	r19, r24
	andi	r24, 240
	eor	r19, r24
	mov	r25, r21
	swap	r25
	eor	r24, r25
	andi	r25, 240
	eor	r24, r25
                                        ; kill: def $r20 killed $r20 killed $r21r20
	swap	r20
	eor	r25, r20
	andi	r20, 240
	eor	r25, r20
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+50, r19
	std	Y+49, r18
	std	Y+48, r25
	std	Y+47, r24
	ldd	r21, Y+47
	ldd	r24, Y+53
	ldd	r25, Y+54
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldi	r20, 16
	sub	r20, r21
	cpi	r20, 0
	std	Y+34, r20                       ; 1-byte Folded Spill
	std	Y+36, r19                       ; 2-byte Folded Spill
	std	Y+35, r18                       ; 2-byte Folded Spill
	std	Y+38, r25                       ; 2-byte Folded Spill
	std	Y+37, r24                       ; 2-byte Folded Spill
	breq	.LBB133_4
	rjmp	.LBB133_3
	rjmp	.LBB133_3
.LBB133_2:
	ldd	r24, Y+41                       ; 1-byte Folded Reload
	std	Y+42, r24                       ; 1-byte Folded Spill
	rjmp	.LBB133_1
.LBB133_3:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+37                       ; 2-byte Folded Reload
	ldd	r25, Y+38                       ; 2-byte Folded Reload
	ldd	r18, Y+35                       ; 2-byte Folded Reload
	ldd	r19, Y+36                       ; 2-byte Folded Reload
	ldd	r20, Y+34                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+34, r20                       ; 1-byte Folded Spill
	std	Y+36, r19                       ; 2-byte Folded Spill
	std	Y+35, r18                       ; 2-byte Folded Spill
	std	Y+38, r25                       ; 2-byte Folded Spill
	std	Y+37, r24                       ; 2-byte Folded Spill
	brne	.LBB133_3
	rjmp	.LBB133_4
.LBB133_4:
	ldd	r18, Y+35                       ; 2-byte Folded Reload
	ldd	r19, Y+36                       ; 2-byte Folded Reload
	ldd	r24, Y+37                       ; 2-byte Folded Reload
	ldd	r25, Y+38                       ; 2-byte Folded Reload
	std	Y+52, r19
	std	Y+51, r18
	std	Y+54, r25
	std	Y+53, r24
	ldd	r24, Y+47
	ldd	r25, Y+48
	ldd	r18, Y+49
	ldd	r19, Y+50
	std	Y+46, r19
	std	Y+45, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r24, Y+52
	clr	r25
	ldi	r20, 0
	ldi	r21, 0
	std	Y+31, r21                       ; 2-byte Folded Spill
	std	Y+30, r20                       ; 2-byte Folded Spill
	mov	r22, r1
	mov	r19, r20
	mov	r18, r25
	mov	r25, r24
	mov	r24, r22
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+32, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+33, r24                       ; 1-byte Folded Spill
	breq	.LBB133_5
	rjmp	.LBB133_6
.LBB133_5:
	ldd	r18, Y+30                       ; 2-byte Folded Reload
	ldd	r19, Y+31                       ; 2-byte Folded Reload
	ldd	r20, Y+33                       ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r20
	andi	r24, 1
	andi	r25, 0
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
	rol	r19
	lsl	r20
	rol	r25
	rol	r24
	rol	r19
	lsl	r20
	rol	r25
	rol	r24
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+50, r19
	std	Y+49, r18
	std	Y+48, r25
	std	Y+47, r24
	ldd	r21, Y+47
	ldd	r24, Y+53
	ldd	r25, Y+54
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldi	r20, 8
	sub	r20, r21
	cpi	r20, 0
	std	Y+25, r20                       ; 1-byte Folded Spill
	std	Y+27, r19                       ; 2-byte Folded Spill
	std	Y+26, r18                       ; 2-byte Folded Spill
	std	Y+29, r25                       ; 2-byte Folded Spill
	std	Y+28, r24                       ; 2-byte Folded Spill
	breq	.LBB133_8
	rjmp	.LBB133_7
	rjmp	.LBB133_7
.LBB133_6:
	ldd	r24, Y+32                       ; 1-byte Folded Reload
	std	Y+33, r24                       ; 1-byte Folded Spill
	rjmp	.LBB133_5
.LBB133_7:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+28                       ; 2-byte Folded Reload
	ldd	r25, Y+29                       ; 2-byte Folded Reload
	ldd	r18, Y+26                       ; 2-byte Folded Reload
	ldd	r19, Y+27                       ; 2-byte Folded Reload
	ldd	r20, Y+25                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+25, r20                       ; 1-byte Folded Spill
	std	Y+27, r19                       ; 2-byte Folded Spill
	std	Y+26, r18                       ; 2-byte Folded Spill
	std	Y+29, r25                       ; 2-byte Folded Spill
	std	Y+28, r24                       ; 2-byte Folded Spill
	brne	.LBB133_7
	rjmp	.LBB133_8
.LBB133_8:
	ldd	r18, Y+26                       ; 2-byte Folded Reload
	ldd	r19, Y+27                       ; 2-byte Folded Reload
	ldd	r24, Y+28                       ; 2-byte Folded Reload
	ldd	r25, Y+29                       ; 2-byte Folded Reload
	std	Y+52, r19
	std	Y+51, r18
	std	Y+54, r25
	std	Y+53, r24
	ldd	r22, Y+47
	ldd	r23, Y+48
	ldd	r20, Y+49
	ldd	r21, Y+50
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+45
	ldd	r19, Y+46
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+46, r19
	std	Y+45, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r24, Y+51
	ldd	r25, Y+52
	andi	r24, 240
	andi	r25, 0
	mov	r20, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	std	Y+22, r19                       ; 2-byte Folded Spill
	std	Y+21, r18                       ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+23, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r20, r1
	cpc	r25, r1
	cpc	r18, r18
	cpc	r19, r19
	std	Y+24, r24                       ; 1-byte Folded Spill
	breq	.LBB133_9
	rjmp	.LBB133_10
.LBB133_9:
	ldd	r18, Y+21                       ; 2-byte Folded Reload
	ldd	r19, Y+22                       ; 2-byte Folded Reload
	ldd	r20, Y+24                       ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r20
	andi	r24, 1
	andi	r25, 0
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
	rol	r19
	lsl	r20
	rol	r25
	rol	r24
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+50, r19
	std	Y+49, r18
	std	Y+48, r25
	std	Y+47, r24
	ldd	r21, Y+47
	ldd	r24, Y+53
	ldd	r25, Y+54
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldi	r20, 4
	sub	r20, r21
	cpi	r20, 0
	std	Y+16, r20                       ; 1-byte Folded Spill
	std	Y+18, r19                       ; 2-byte Folded Spill
	std	Y+17, r18                       ; 2-byte Folded Spill
	std	Y+20, r25                       ; 2-byte Folded Spill
	std	Y+19, r24                       ; 2-byte Folded Spill
	breq	.LBB133_12
	rjmp	.LBB133_11
	rjmp	.LBB133_11
.LBB133_10:
	ldd	r24, Y+23                       ; 1-byte Folded Reload
	std	Y+24, r24                       ; 1-byte Folded Spill
	rjmp	.LBB133_9
.LBB133_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+19                       ; 2-byte Folded Reload
	ldd	r25, Y+20                       ; 2-byte Folded Reload
	ldd	r18, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 2-byte Folded Reload
	ldd	r20, Y+16                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+16, r20                       ; 1-byte Folded Spill
	std	Y+18, r19                       ; 2-byte Folded Spill
	std	Y+17, r18                       ; 2-byte Folded Spill
	std	Y+20, r25                       ; 2-byte Folded Spill
	std	Y+19, r24                       ; 2-byte Folded Spill
	brne	.LBB133_11
	rjmp	.LBB133_12
.LBB133_12:
	ldd	r18, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 2-byte Folded Reload
	ldd	r24, Y+19                       ; 2-byte Folded Reload
	ldd	r25, Y+20                       ; 2-byte Folded Reload
	std	Y+52, r19
	std	Y+51, r18
	std	Y+54, r25
	std	Y+53, r24
	ldd	r22, Y+47
	ldd	r23, Y+48
	ldd	r20, Y+49
	ldd	r21, Y+50
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+45
	ldd	r19, Y+46
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+46, r19
	std	Y+45, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r24, Y+51
	ldd	r25, Y+52
	andi	r24, 12
	andi	r25, 0
	mov	r20, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	std	Y+13, r19                       ; 2-byte Folded Spill
	std	Y+12, r18                       ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+14, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r20, r1
	cpc	r25, r1
	cpc	r18, r18
	cpc	r19, r19
	std	Y+15, r24                       ; 1-byte Folded Spill
	breq	.LBB133_13
	rjmp	.LBB133_14
.LBB133_13:
	ldd	r18, Y+12                       ; 2-byte Folded Reload
	ldd	r19, Y+13                       ; 2-byte Folded Reload
	ldd	r20, Y+15                       ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r20
	andi	r24, 1
	andi	r25, 0
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+50, r19
	std	Y+49, r18
	std	Y+48, r25
	std	Y+47, r24
	ldd	r21, Y+47
	ldd	r24, Y+53
	ldd	r25, Y+54
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldi	r20, 2
	sub	r20, r21
	cpi	r20, 0
	std	Y+7, r20                        ; 1-byte Folded Spill
	std	Y+9, r19                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 2-byte Folded Spill
	std	Y+11, r25                       ; 2-byte Folded Spill
	std	Y+10, r24                       ; 2-byte Folded Spill
	breq	.LBB133_16
	rjmp	.LBB133_15
	rjmp	.LBB133_15
.LBB133_14:
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	std	Y+15, r24                       ; 1-byte Folded Spill
	rjmp	.LBB133_13
.LBB133_15:                             ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+10                       ; 2-byte Folded Reload
	ldd	r25, Y+11                       ; 2-byte Folded Reload
	ldd	r18, Y+8                        ; 2-byte Folded Reload
	ldd	r19, Y+9                        ; 2-byte Folded Reload
	ldd	r20, Y+7                        ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+7, r20                        ; 1-byte Folded Spill
	std	Y+9, r19                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 2-byte Folded Spill
	std	Y+11, r25                       ; 2-byte Folded Spill
	std	Y+10, r24                       ; 2-byte Folded Spill
	brne	.LBB133_15
	rjmp	.LBB133_16
.LBB133_16:
	ldd	r18, Y+8                        ; 2-byte Folded Reload
	ldd	r19, Y+9                        ; 2-byte Folded Reload
	ldd	r24, Y+10                       ; 2-byte Folded Reload
	ldd	r25, Y+11                       ; 2-byte Folded Reload
	std	Y+52, r19
	std	Y+51, r18
	std	Y+54, r25
	std	Y+53, r24
	ldd	r22, Y+47
	ldd	r23, Y+48
	ldd	r20, Y+49
	ldd	r21, Y+50
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+45
	ldd	r19, Y+46
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+46, r19
	std	Y+45, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r24, Y+43
	ldd	r25, Y+44
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+51
	ldd	r25, Y+52
	ldi	r18, 2
	ldi	r19, 0
	sub	r18, r24
	sbc	r19, r25
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	andi	r24, 2
	andi	r25, 0
	mov	r20, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r20, r1
	cpc	r25, r1
	cpc	r18, r18
	cpc	r19, r19
	std	Y+6, r24                        ; 1-byte Folded Spill
	breq	.LBB133_17
	rjmp	.LBB133_18
.LBB133_17:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	ldd	r18, Y+3                        ; 2-byte Folded Reload
	ldd	r19, Y+4                        ; 2-byte Folded Reload
	ldd	r22, Y+5                        ; 1-byte Folded Reload
	ldd	r23, Y+6                        ; 1-byte Folded Reload
                                        ; implicit-def: $r21r20
	mov	r20, r23
	andi	r20, 1
	andi	r21, 0
	neg	r21
	neg	r20
	sbc	r21, r22
	and	r18, r20
	and	r19, r21
	add	r24, r18
	adc	r25, r19
	adiw	r28, 58
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.LBB133_18:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB133_17
.Lfunc_end133:
	.size	__clzsi2, .Lfunc_end133-__clzsi2
                                        ; -- End function
	.globl	__cmpdi2                        ; -- Begin function __cmpdi2
	.p2align	1
	.type	__cmpdi2,@function
__cmpdi2:                               ; @__cmpdi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 44
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r17r16
                                        ; kill: def $r31r30 killed $r15r14
                                        ; kill: def $r31r30 killed $r13r12
                                        ; kill: def $r31r30 killed $r11r10
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+40, r25
	std	Y+39, r24
	std	Y+38, r23
	std	Y+37, r22
	std	Y+36, r21
	std	Y+35, r20
	std	Y+34, r19
	std	Y+33, r18
	std	Y+32, r17
	std	Y+31, r16
	std	Y+30, r15
	std	Y+29, r14
	std	Y+28, r13
	std	Y+27, r12
	std	Y+26, r11
	std	Y+25, r10
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r20, Y+37
	ldd	r21, Y+38
	ldd	r22, Y+39
	ldd	r23, Y+40
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r24, Y+25
	ldd	r25, Y+26
	ldd	r18, Y+27
	ldd	r19, Y+28
	ldd	r20, Y+29
	ldd	r21, Y+30
	ldd	r22, Y+31
	ldd	r23, Y+32
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r18, Y+23
	ldd	r19, Y+24
	ldd	r30, Y+13
	ldd	r31, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	brge	.LBB134_1
	rjmp	.LBB134_2
.LBB134_1:
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB134_4
	rjmp	.LBB134_3
	rjmp	.LBB134_3
.LBB134_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_1
.LBB134_3:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB134_17
.LBB134_4:
	ldd	r30, Y+21
	ldd	r31, Y+22
	ldd	r20, Y+23
	ldd	r21, Y+24
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brge	.LBB134_5
	rjmp	.LBB134_6
.LBB134_5:
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB134_8
	rjmp	.LBB134_7
	rjmp	.LBB134_7
.LBB134_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_5
.LBB134_7:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	ldi	r24, 2
	ldi	r25, 0
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB134_17
.LBB134_8:
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r30, Y+9
	ldd	r31, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brsh	.LBB134_9
	rjmp	.LBB134_10
.LBB134_9:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB134_12
	rjmp	.LBB134_11
	rjmp	.LBB134_11
.LBB134_10:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_9
.LBB134_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB134_17
.LBB134_12:
	ldd	r30, Y+17
	ldd	r31, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brsh	.LBB134_13
	rjmp	.LBB134_14
.LBB134_13:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB134_16
	rjmp	.LBB134_15
	rjmp	.LBB134_15
.LBB134_14:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_13
.LBB134_15:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	ldi	r24, 2
	ldi	r25, 0
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB134_17
.LBB134_16:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB134_17
.LBB134_17:
	ldd	r22, Y+41
	ldd	r23, Y+42
	ldd	r24, Y+43
	ldd	r25, Y+44
	adiw	r28, 44
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end134:
	.size	__cmpdi2, .Lfunc_end134-__cmpdi2
                                        ; -- End function
	.globl	__aeabi_lcmp                    ; -- Begin function __aeabi_lcmp
	.p2align	1
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           ; @__aeabi_lcmp
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r17r16
                                        ; kill: def $r31r30 killed $r15r14
                                        ; kill: def $r31r30 killed $r13r12
                                        ; kill: def $r31r30 killed $r11r10
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	std	Y+8, r17
	std	Y+7, r16
	std	Y+6, r15
	std	Y+5, r14
	std	Y+4, r13
	std	Y+3, r12
	std	Y+2, r11
	std	Y+1, r10
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r20, Y+11
	ldd	r21, Y+12
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r16, Y+7
	ldd	r17, Y+8
	ldd	r14, Y+5
	ldd	r15, Y+6
	ldd	r12, Y+3
	ldd	r13, Y+4
	ldd	r10, Y+1
	ldd	r11, Y+2
	rcall	__cmpdi2
	subi	r22, 1
	sbci	r23, 0
	sbci	r24, 0
	sbci	r25, 0
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end135:
	.size	__aeabi_lcmp, .Lfunc_end135-__aeabi_lcmp
                                        ; -- End function
	.globl	__ctzsi2                        ; -- Begin function __ctzsi2
	.p2align	1
	.type	__ctzsi2,@function
__ctzsi2:                               ; @__ctzsi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 48
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+48, r25
	std	Y+47, r24
	std	Y+46, r23
	std	Y+45, r22
	ldd	r24, Y+45
	ldd	r25, Y+46
	ldd	r18, Y+47
	ldd	r19, Y+48
	std	Y+44, r19
	std	Y+43, r18
	std	Y+42, r25
	std	Y+41, r24
	ldd	r24, Y+41
	ldd	r25, Y+42
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	mov	r24, r1
	std	Y+31, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+32, r24                       ; 1-byte Folded Spill
	breq	.LBB136_1
	rjmp	.LBB136_2
.LBB136_1:
	ldd	r24, Y+32                       ; 1-byte Folded Reload
	mov	r20, r24
	clr	r21
	ldi	r24, 0
	ldi	r25, 0
                                        ; kill: def $r18 killed $r1
	mov	r19, r25
	swap	r19
	andi	r19, 240
                                        ; kill: def $r24 killed $r24 killed $r25r24
	swap	r24
	eor	r19, r24
	andi	r24, 240
	eor	r19, r24
	mov	r25, r21
	swap	r25
	eor	r24, r25
	andi	r25, 240
	eor	r24, r25
                                        ; kill: def $r20 killed $r20 killed $r21r20
	swap	r20
	eor	r25, r20
	andi	r20, 240
	eor	r25, r20
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	ldd	r20, Y+37
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	cpi	r20, 0
	std	Y+26, r20                       ; 1-byte Folded Spill
	std	Y+28, r19                       ; 2-byte Folded Spill
	std	Y+27, r18                       ; 2-byte Folded Spill
	std	Y+30, r25                       ; 2-byte Folded Spill
	std	Y+29, r24                       ; 2-byte Folded Spill
	breq	.LBB136_4
	rjmp	.LBB136_3
	rjmp	.LBB136_3
.LBB136_2:
	ldd	r24, Y+31                       ; 1-byte Folded Reload
	std	Y+32, r24                       ; 1-byte Folded Spill
	rjmp	.LBB136_1
.LBB136_3:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+29                       ; 2-byte Folded Reload
	ldd	r25, Y+30                       ; 2-byte Folded Reload
	ldd	r18, Y+27                       ; 2-byte Folded Reload
	ldd	r19, Y+28                       ; 2-byte Folded Reload
	ldd	r20, Y+26                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+26, r20                       ; 1-byte Folded Spill
	std	Y+28, r19                       ; 2-byte Folded Spill
	std	Y+27, r18                       ; 2-byte Folded Spill
	std	Y+30, r25                       ; 2-byte Folded Spill
	std	Y+29, r24                       ; 2-byte Folded Spill
	brne	.LBB136_3
	rjmp	.LBB136_4
.LBB136_4:
	ldd	r18, Y+27                       ; 2-byte Folded Reload
	ldd	r19, Y+28                       ; 2-byte Folded Reload
	ldd	r24, Y+29                       ; 2-byte Folded Reload
	ldd	r25, Y+30                       ; 2-byte Folded Reload
	std	Y+42, r19
	std	Y+41, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r24, Y+37
	ldd	r25, Y+38
	ldd	r18, Y+39
	ldd	r19, Y+40
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r25, Y+41
	mov	r24, r1
	std	Y+24, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r25, 0
	std	Y+25, r24                       ; 1-byte Folded Spill
	breq	.LBB136_5
	rjmp	.LBB136_6
.LBB136_5:
	ldd	r24, Y+25                       ; 1-byte Folded Reload
	clr	r25
	ldi	r18, 0
	ldi	r19, 0
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	lsl	r20
	rol	r25
	rol	r24
	rol	r19
	lsl	r20
	rol	r25
	rol	r24
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	ldd	r20, Y+37
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	breq	.LBB136_8
	rjmp	.LBB136_7
	rjmp	.LBB136_7
.LBB136_6:
	ldd	r24, Y+24                       ; 1-byte Folded Reload
	std	Y+25, r24                       ; 1-byte Folded Spill
	rjmp	.LBB136_5
.LBB136_7:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r20, Y+19                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	brne	.LBB136_7
	rjmp	.LBB136_8
.LBB136_8:
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	std	Y+42, r19
	std	Y+41, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r22, Y+37
	ldd	r23, Y+38
	ldd	r20, Y+39
	ldd	r21, Y+40
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r24, Y+41
	ldd	r25, Y+42
	andi	r24, 15
	andi	r25, 0
	mov	r20, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	std	Y+16, r19                       ; 2-byte Folded Spill
	std	Y+15, r18                       ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+17, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r20, r1
	cpc	r25, r1
	cpc	r18, r18
	cpc	r19, r19
	std	Y+18, r24                       ; 1-byte Folded Spill
	breq	.LBB136_9
	rjmp	.LBB136_10
.LBB136_9:
	ldd	r18, Y+15                       ; 2-byte Folded Reload
	ldd	r19, Y+16                       ; 2-byte Folded Reload
	ldd	r20, Y+18                       ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r20
	andi	r24, 1
	andi	r25, 0
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
	rol	r19
	lsl	r20
	rol	r25
	rol	r24
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	ldd	r20, Y+37
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	cpi	r20, 0
	std	Y+10, r20                       ; 1-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	breq	.LBB136_12
	rjmp	.LBB136_11
	rjmp	.LBB136_11
.LBB136_10:
	ldd	r24, Y+17                       ; 1-byte Folded Reload
	std	Y+18, r24                       ; 1-byte Folded Spill
	rjmp	.LBB136_9
.LBB136_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	ldd	r18, Y+11                       ; 2-byte Folded Reload
	ldd	r19, Y+12                       ; 2-byte Folded Reload
	ldd	r20, Y+10                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+10, r20                       ; 1-byte Folded Spill
	std	Y+12, r19                       ; 2-byte Folded Spill
	std	Y+11, r18                       ; 2-byte Folded Spill
	std	Y+14, r25                       ; 2-byte Folded Spill
	std	Y+13, r24                       ; 2-byte Folded Spill
	brne	.LBB136_11
	rjmp	.LBB136_12
.LBB136_12:
	ldd	r18, Y+11                       ; 2-byte Folded Reload
	ldd	r19, Y+12                       ; 2-byte Folded Reload
	ldd	r24, Y+13                       ; 2-byte Folded Reload
	ldd	r25, Y+14                       ; 2-byte Folded Reload
	std	Y+42, r19
	std	Y+41, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r22, Y+37
	ldd	r23, Y+38
	ldd	r20, Y+39
	ldd	r21, Y+40
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r24, Y+41
	ldd	r25, Y+42
	andi	r24, 3
	andi	r25, 0
	mov	r20, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r18, 0
	ldi	r19, 0
	std	Y+7, r19                        ; 2-byte Folded Spill
	std	Y+6, r18                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r20, r1
	cpc	r25, r1
	cpc	r18, r18
	cpc	r19, r19
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB136_13
	rjmp	.LBB136_14
.LBB136_13:
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r20
	andi	r24, 1
	andi	r25, 0
                                        ; kill: def $r20 killed $r1
	mov	r20, r24
	lsl	r20
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
	mov	r24, r18
	rol	r24
	rol	r19
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r24
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r20
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	ldd	r20, Y+37
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	cpi	r20, 0
	std	Y+1, r20                        ; 1-byte Folded Spill
	std	Y+3, r19                        ; 2-byte Folded Spill
	std	Y+2, r18                        ; 2-byte Folded Spill
	std	Y+5, r25                        ; 2-byte Folded Spill
	std	Y+4, r24                        ; 2-byte Folded Spill
	breq	.LBB136_16
	rjmp	.LBB136_15
	rjmp	.LBB136_15
.LBB136_14:
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB136_13
.LBB136_15:                             ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+4                        ; 2-byte Folded Reload
	ldd	r25, Y+5                        ; 2-byte Folded Reload
	ldd	r18, Y+2                        ; 2-byte Folded Reload
	ldd	r19, Y+3                        ; 2-byte Folded Reload
	ldd	r20, Y+1                        ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+1, r20                        ; 1-byte Folded Spill
	std	Y+3, r19                        ; 2-byte Folded Spill
	std	Y+2, r18                        ; 2-byte Folded Spill
	std	Y+5, r25                        ; 2-byte Folded Spill
	std	Y+4, r24                        ; 2-byte Folded Spill
	brne	.LBB136_15
	rjmp	.LBB136_16
.LBB136_16:
	ldd	r18, Y+2                        ; 2-byte Folded Reload
	ldd	r19, Y+3                        ; 2-byte Folded Reload
	ldd	r24, Y+4                        ; 2-byte Folded Reload
	ldd	r25, Y+5                        ; 2-byte Folded Reload
	std	Y+42, r19
	std	Y+41, r18
	std	Y+44, r25
	std	Y+43, r24
	ldd	r24, Y+41
	ldd	r25, Y+42
	andi	r24, 3
	andi	r25, 0
	ldi	r18, 0
	ldi	r19, 0
	std	Y+44, r19
	std	Y+43, r18
	std	Y+42, r25
	std	Y+41, r24
	ldd	r22, Y+37
	ldd	r23, Y+38
	ldd	r20, Y+39
	ldd	r21, Y+40
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+43
	ldd	r19, Y+44
	ldd	r30, Y+41
	ldd	r31, Y+42
                                        ; kill: def $r20 killed $r1
	mov	r22, r19
	lsr	r22
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
	mov	r19, r31
	ror	r19
	mov	r20, r30
	ror	r20
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
                                        ; kill: def $r19 killed $r22
	ldi	r18, 2
	ldi	r19, 0
	sub	r18, r20
	sbc	r19, r21
	andi	r30, 1
	andi	r31, 0
	sbiw	r30, 1
	and	r18, r30
	and	r19, r31
	add	r24, r18
	adc	r25, r19
	adiw	r28, 48
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end136:
	.size	__ctzsi2, .Lfunc_end136-__ctzsi2
                                        ; -- End function
	.globl	__lshrdi3                       ; -- Begin function __lshrdi3
	.p2align	1
	.type	__lshrdi3,@function
__lshrdi3:                              ; @__lshrdi3
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	subi	r28, 68
	sbci	r29, 0
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+56, r25
	std	Y+55, r24
	std	Y+54, r23
	std	Y+53, r22
	std	Y+52, r21
	std	Y+51, r20
	std	Y+50, r19
	std	Y+49, r18
	std	Y+48, r17
	std	Y+47, r16
	ldi	r24, 32
	ldi	r25, 0
	std	Y+46, r25
	std	Y+45, r24
	ldd	r24, Y+49
	ldd	r25, Y+50
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldd	r20, Y+53
	ldd	r21, Y+54
	ldd	r22, Y+55
	ldd	r23, Y+56
	std	Y+44, r23
	std	Y+43, r22
	std	Y+42, r21
	std	Y+41, r20
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	ldd	r24, Y+47
	andi	r24, 32
	cpi	r24, 0
	brne	.LBB137_1
	rjmp	.LBB137_4
.LBB137_1:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+36, r25
	std	Y+35, r24
	std	Y+34, r25
	std	Y+33, r24
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	ldd	r21, Y+47
	subi	r21, 32
	mov	r20, r21
	cpi	r21, 0
	std	Y+24, r20                       ; 1-byte Folded Spill
	std	Y+26, r19                       ; 2-byte Folded Spill
	std	Y+25, r18                       ; 2-byte Folded Spill
	std	Y+28, r25                       ; 2-byte Folded Spill
	std	Y+27, r24                       ; 2-byte Folded Spill
	breq	.LBB137_3
	rjmp	.LBB137_2
.LBB137_2:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+27                       ; 2-byte Folded Reload
	ldd	r25, Y+28                       ; 2-byte Folded Reload
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r20, Y+24                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+24, r20                       ; 1-byte Folded Spill
	std	Y+26, r19                       ; 2-byte Folded Spill
	std	Y+25, r18                       ; 2-byte Folded Spill
	std	Y+28, r25                       ; 2-byte Folded Spill
	std	Y+27, r24                       ; 2-byte Folded Spill
	brne	.LBB137_2
	rjmp	.LBB137_3
.LBB137_3:
	ldd	r18, Y+25                       ; 2-byte Folded Reload
	ldd	r19, Y+26                       ; 2-byte Folded Reload
	ldd	r24, Y+27                       ; 2-byte Folded Reload
	ldd	r25, Y+28                       ; 2-byte Folded Reload
	std	Y+30, r19
	std	Y+29, r18
	std	Y+32, r25
	std	Y+31, r24
	rjmp	.LBB137_13
.LBB137_4:
	ldd	r18, Y+47
	ldd	r19, Y+48
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB137_6
	rjmp	.LBB137_5
.LBB137_5:
	ldd	r24, Y+49
	ldd	r25, Y+50
	ldd	r18, Y+51
	ldd	r19, Y+52
	ldd	r20, Y+53
	ldd	r21, Y+54
	ldd	r22, Y+55
	ldd	r23, Y+56
	in	r0, 63
	adiw	r28, 5
	std	Y+63, r23
	std	Y+62, r22
	sbiw	r28, 5
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	std	Y+63, r21
	std	Y+62, r20
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 1
	std	Y+63, r19
	std	Y+62, r18
	sbiw	r28, 1
	out	63, r0
	std	Y+62, r25
	std	Y+61, r24
	rjmp	.LBB137_14
.LBB137_6:
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	ldd	r20, Y+47
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	breq	.LBB137_8
	rjmp	.LBB137_7
.LBB137_7:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r20, Y+19                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+19, r20                       ; 1-byte Folded Spill
	std	Y+21, r19                       ; 2-byte Folded Spill
	std	Y+20, r18                       ; 2-byte Folded Spill
	std	Y+23, r25                       ; 2-byte Folded Spill
	std	Y+22, r24                       ; 2-byte Folded Spill
	brne	.LBB137_7
	rjmp	.LBB137_8
.LBB137_8:
	ldd	r18, Y+20                       ; 2-byte Folded Reload
	ldd	r19, Y+21                       ; 2-byte Folded Reload
	ldd	r24, Y+22                       ; 2-byte Folded Reload
	ldd	r25, Y+23                       ; 2-byte Folded Reload
	std	Y+34, r19
	std	Y+33, r18
	std	Y+36, r25
	std	Y+35, r24
	ldd	r24, Y+43
	ldd	r25, Y+44
	ldd	r18, Y+41
	ldd	r19, Y+42
	ldd	r21, Y+47
	ldi	r20, 32
	sub	r20, r21
	cpi	r20, 0
	std	Y+14, r20                       ; 1-byte Folded Spill
	std	Y+16, r19                       ; 2-byte Folded Spill
	std	Y+15, r18                       ; 2-byte Folded Spill
	std	Y+18, r25                       ; 2-byte Folded Spill
	std	Y+17, r24                       ; 2-byte Folded Spill
	breq	.LBB137_10
	rjmp	.LBB137_9
.LBB137_9:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+17                       ; 2-byte Folded Reload
	ldd	r25, Y+18                       ; 2-byte Folded Reload
	ldd	r18, Y+15                       ; 2-byte Folded Reload
	ldd	r19, Y+16                       ; 2-byte Folded Reload
	ldd	r20, Y+14                       ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r18
	lsl	r21
                                        ; kill: def $r19 killed $r19 killed $r19r18
	rol	r19
	mov	r18, r24
	rol	r18
                                        ; kill: def $r25 killed $r25 killed $r25r24
	rol	r25
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r18
                                        ; kill: def $r19 killed $r19 def $r19r18
	mov	r18, r21
	cpi	r20, 0
	std	Y+14, r20                       ; 1-byte Folded Spill
	std	Y+16, r19                       ; 2-byte Folded Spill
	std	Y+15, r18                       ; 2-byte Folded Spill
	std	Y+18, r25                       ; 2-byte Folded Spill
	std	Y+17, r24                       ; 2-byte Folded Spill
	brne	.LBB137_9
	rjmp	.LBB137_10
.LBB137_10:
	ldd	r24, Y+15                       ; 2-byte Folded Reload
	ldd	r25, Y+16                       ; 2-byte Folded Reload
	ldd	r18, Y+17                       ; 2-byte Folded Reload
	ldd	r19, Y+18                       ; 2-byte Folded Reload
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+39
	ldd	r25, Y+40
	ldd	r18, Y+37
	ldd	r19, Y+38
	ldd	r20, Y+47
	cpi	r20, 0
	std	Y+9, r20                        ; 1-byte Folded Spill
	std	Y+11, r19                       ; 2-byte Folded Spill
	std	Y+10, r18                       ; 2-byte Folded Spill
	std	Y+13, r25                       ; 2-byte Folded Spill
	std	Y+12, r24                       ; 2-byte Folded Spill
	breq	.LBB137_12
	rjmp	.LBB137_11
.LBB137_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+12                       ; 2-byte Folded Reload
	ldd	r25, Y+13                       ; 2-byte Folded Reload
	ldd	r18, Y+10                       ; 2-byte Folded Reload
	ldd	r19, Y+11                       ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 1-byte Folded Reload
	dec	r20
                                        ; kill: def $r21 killed $r1
	mov	r21, r25
	lsr	r21
                                        ; kill: def $r24 killed $r24 killed $r25r24
	ror	r24
	mov	r25, r19
	ror	r25
                                        ; kill: def $r18 killed $r18 killed $r19r18
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r21
	cpi	r20, 0
	std	Y+9, r20                        ; 1-byte Folded Spill
	std	Y+11, r19                       ; 2-byte Folded Spill
	std	Y+10, r18                       ; 2-byte Folded Spill
	std	Y+13, r25                       ; 2-byte Folded Spill
	std	Y+12, r24                       ; 2-byte Folded Spill
	brne	.LBB137_11
	rjmp	.LBB137_12
.LBB137_12:
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	ldd	r20, Y+10                       ; 2-byte Folded Reload
	ldd	r21, Y+11                       ; 2-byte Folded Reload
	ldd	r22, Y+12                       ; 2-byte Folded Reload
	ldd	r23, Y+13                       ; 2-byte Folded Reload
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+30, r19
	std	Y+29, r18
	std	Y+32, r25
	std	Y+31, r24
	rjmp	.LBB137_13
.LBB137_13:
	ldd	r24, Y+29
	ldd	r25, Y+30
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r20, Y+33
	ldd	r21, Y+34
	ldd	r22, Y+35
	ldd	r23, Y+36
	in	r0, 63
	adiw	r28, 5
	std	Y+63, r23
	std	Y+62, r22
	sbiw	r28, 5
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	std	Y+63, r21
	std	Y+62, r20
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 1
	std	Y+63, r19
	std	Y+62, r18
	sbiw	r28, 1
	out	63, r0
	std	Y+62, r25
	std	Y+61, r24
	rjmp	.LBB137_14
.LBB137_14:
	ldd	r18, Y+61
	ldd	r19, Y+62
	in	r0, 63
	adiw	r28, 1
	ldd	r20, Y+62
	ldd	r21, Y+63
	sbiw	r28, 1
	out	63, r0
	in	r0, 63
	adiw	r28, 3
	ldd	r22, Y+62
	ldd	r23, Y+63
	sbiw	r28, 3
	out	63, r0
	in	r0, 63
	adiw	r28, 5
	ldd	r24, Y+62
	ldd	r25, Y+63
	sbiw	r28, 5
	out	63, r0
	subi	r28, 188
	sbci	r29, 255
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end137:
	.size	__lshrdi3, .Lfunc_end137-__lshrdi3
                                        ; -- End function
	.globl	__muldsi3                       ; -- Begin function __muldsi3
	.p2align	1
	.type	__muldsi3,@function
__muldsi3:                              ; @__muldsi3
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+28, r25
	std	Y+27, r24
	std	Y+26, r23
	std	Y+25, r22
	std	Y+24, r21
	std	Y+23, r20
	std	Y+22, r19
	std	Y+21, r18
	ldi	r24, 16
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	ldi	r20, 0
	ldi	r21, 0
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+10, r21
	std	Y+9, r20
	ldi	r24, 255
	ldi	r25, 255
	std	Y+8, r25
	std	Y+7, r24
	ldd	r22, Y+25
	ldd	r23, Y+26
	ldd	r18, Y+21
	ldd	r19, Y+22
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsi3
	ldd	r20, Y+1                        ; 2-byte Folded Reload
	ldd	r21, Y+2                        ; 2-byte Folded Reload
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+6, r21
	std	Y+5, r20
	std	Y+4, r25
	std	Y+3, r24
	std	Y+16, r21
	std	Y+15, r20
	ldd	r22, Y+27
	ldd	r23, Y+28
	ldd	r18, Y+21
	ldd	r19, Y+22
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsi3
	ldd	r20, Y+1                        ; 2-byte Folded Reload
	ldd	r21, Y+2                        ; 2-byte Folded Reload
	mov	r30, r22
	mov	r31, r23
	mov	r22, r24
	mov	r23, r25
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+5
	ldd	r19, Y+6
	add	r24, r30
	adc	r25, r31
	adc	r18, r22
	adc	r19, r23
	std	Y+6, r19
	std	Y+5, r18
	std	Y+4, r25
	std	Y+3, r24
	ldd	r22, Y+3
	ldd	r23, Y+4
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	add	r24, r22
	adc	r25, r23
	std	Y+14, r19
	std	Y+13, r18
	std	Y+16, r25
	std	Y+15, r24
	ldd	r24, Y+5
	ldd	r25, Y+6
	std	Y+20, r21
	std	Y+19, r20
	std	Y+18, r25
	std	Y+17, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+6, r21
	std	Y+5, r20
	std	Y+4, r25
	std	Y+3, r24
	std	Y+16, r21
	std	Y+15, r20
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r18, Y+25
	ldd	r19, Y+26
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsi3
	ldd	r20, Y+1                        ; 2-byte Folded Reload
	ldd	r21, Y+2                        ; 2-byte Folded Reload
	mov	r30, r22
	mov	r31, r23
	mov	r22, r24
	mov	r23, r25
	ldd	r24, Y+3
	ldd	r25, Y+4
	ldd	r18, Y+5
	ldd	r19, Y+6
	add	r24, r30
	adc	r25, r31
	adc	r18, r22
	adc	r19, r23
	std	Y+6, r19
	std	Y+5, r18
	std	Y+4, r25
	std	Y+3, r24
	ldd	r22, Y+3
	ldd	r23, Y+4
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	add	r24, r22
	adc	r25, r23
	std	Y+14, r19
	std	Y+13, r18
	std	Y+16, r25
	std	Y+15, r24
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r22, Y+27
	ldd	r23, Y+28
	ldd	r18, Y+23
	ldd	r19, Y+24
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsi3
	mov	r20, r24
	mov	r21, r25
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r24, Y+19
	ldd	r25, Y+20
	adiw	r28, 28
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end138:
	.size	__muldsi3, .Lfunc_end138-__muldsi3
                                        ; -- End function
	.globl	__muldi3_compiler_rt            ; -- Begin function __muldi3_compiler_rt
	.p2align	1
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   ; @__muldi3_compiler_rt
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 52
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r17r16
                                        ; kill: def $r31r30 killed $r15r14
                                        ; kill: def $r31r30 killed $r13r12
                                        ; kill: def $r31r30 killed $r11r10
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+48, r25
	std	Y+47, r24
	std	Y+46, r23
	std	Y+45, r22
	std	Y+44, r21
	std	Y+43, r20
	std	Y+42, r19
	std	Y+41, r18
	std	Y+40, r17
	std	Y+39, r16
	std	Y+38, r15
	std	Y+37, r14
	std	Y+36, r13
	std	Y+35, r12
	std	Y+34, r11
	std	Y+33, r10
	ldd	r24, Y+41
	ldd	r25, Y+42
	ldd	r18, Y+43
	ldd	r19, Y+44
	ldd	r20, Y+45
	ldd	r21, Y+46
	ldd	r22, Y+47
	ldd	r23, Y+48
	std	Y+32, r23
	std	Y+31, r22
	std	Y+30, r21
	std	Y+29, r20
	std	Y+28, r19
	std	Y+27, r18
	std	Y+26, r25
	std	Y+25, r24
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r20, Y+37
	ldd	r21, Y+38
	ldd	r22, Y+39
	ldd	r23, Y+40
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r24, Y+27
	ldd	r25, Y+28
	ldd	r22, Y+25
	ldd	r23, Y+26
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	rcall	__muldsi3
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r24, Y+31
	ldd	r25, Y+32
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	rcall	__mulsi3
	std	Y+8, r23                        ; 2-byte Folded Spill
	std	Y+7, r22                        ; 2-byte Folded Spill
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	ldd	r22, Y+25
	ldd	r23, Y+26
	ldd	r24, Y+27
	ldd	r25, Y+28
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r20, Y+23
	ldd	r21, Y+24
	rcall	__mulsi3
	ldd	r20, Y+5                        ; 2-byte Folded Reload
	ldd	r21, Y+6                        ; 2-byte Folded Reload
	mov	r18, r22
	mov	r19, r23
	ldd	r22, Y+7                        ; 2-byte Folded Reload
	ldd	r23, Y+8                        ; 2-byte Folded Reload
	add	r22, r18
	adc	r23, r19
	adc	r20, r24
	adc	r21, r25
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+15
	ldd	r19, Y+16
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	adiw	r28, 52
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end139:
	.size	__muldi3_compiler_rt, .Lfunc_end139-__muldi3_compiler_rt
                                        ; -- End function
	.globl	__negdi2                        ; -- Begin function __negdi2
	.p2align	1
	.type	__negdi2,@function
__negdi2:                               ; @__negdi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	std	Y+4, r21
	std	Y+3, r20
	std	Y+2, r19
	std	Y+1, r18
	ldd	r20, Y+1
	ldd	r21, Y+2
	ldd	r22, Y+3
	ldd	r23, Y+4
	ldd	r26, Y+5
	ldd	r27, Y+6
	ldd	r30, Y+7
	ldd	r31, Y+8
	ldi	r24, 0
	ldi	r25, 0
	mov	r18, r24
	mov	r19, r25
	sub	r18, r20
	sbc	r19, r21
	mov	r20, r24
	mov	r21, r25
	sbc	r20, r22
	sbc	r21, r23
	mov	r22, r24
	mov	r23, r25
	sbc	r22, r26
	sbc	r23, r27
	sbc	r24, r30
	sbc	r25, r31
	adiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end140:
	.size	__negdi2, .Lfunc_end140-__negdi2
                                        ; -- End function
	.globl	__paritydi2                     ; -- Begin function __paritydi2
	.p2align	1
	.type	__paritydi2,@function
__paritydi2:                            ; @__paritydi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 36
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+32, r25
	std	Y+31, r24
	std	Y+30, r23
	std	Y+29, r22
	std	Y+28, r21
	std	Y+27, r20
	std	Y+26, r19
	std	Y+25, r18
	ldd	r24, Y+25
	ldd	r25, Y+26
	ldd	r18, Y+27
	ldd	r19, Y+28
	ldd	r20, Y+29
	ldd	r21, Y+30
	ldd	r22, Y+31
	ldd	r23, Y+32
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r18, Y+23
	ldd	r19, Y+24
	ldd	r24, Y+21
	ldd	r25, Y+22
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+17
	ldd	r23, Y+18
	eor	r24, r22
	eor	r25, r23
	eor	r18, r20
	eor	r19, r21
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
	eor	r24, r18
	eor	r25, r19
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
	mov	r30, r1
	mov	r22, r25
	mov	r23, r18
	mov	r20, r19
	mov	r21, r30
	eor	r24, r22
	eor	r25, r23
	eor	r18, r20
	eor	r19, r21
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
                                        ; kill: def $r20 killed $r1
	mov	r22, r24
	swap	r22
	andi	r22, 15
	mov	r21, r25
	swap	r21
	eor	r22, r21
	andi	r21, 15
	eor	r22, r21
	mov	r20, r18
	swap	r20
	eor	r21, r20
	andi	r20, 15
	eor	r21, r20
	mov	r30, r19
	swap	r30
	eor	r20, r30
	andi	r30, 15
	eor	r20, r30
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r21
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r30
	eor	r24, r22
	eor	r25, r23
	eor	r18, r20
	eor	r19, r21
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	ldd	r18, Y+13
	andi	r18, 15
	ldi	r24, 150
	ldi	r25, 105
	mov	r20, r24
	mov	r21, r25
	std	Y+9, r21                        ; 2-byte Folded Spill
	std	Y+8, r20                        ; 2-byte Folded Spill
	std	Y+10, r18                       ; 1-byte Folded Spill
	std	Y+12, r25                       ; 2-byte Folded Spill
	std	Y+11, r24                       ; 2-byte Folded Spill
	rjmp	.LBB141_2
.LBB141_1:                              ;   in Loop: Header=BB141_2 Depth=1
	ldd	r18, Y+7                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+9, r21                        ; 2-byte Folded Spill
	std	Y+8, r20                        ; 2-byte Folded Spill
	std	Y+10, r18                       ; 1-byte Folded Spill
	std	Y+12, r25                       ; 2-byte Folded Spill
	std	Y+11, r24                       ; 2-byte Folded Spill
.LBB141_2:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+8                        ; 2-byte Folded Reload
	ldd	r19, Y+9                        ; 2-byte Folded Reload
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	ldd	r20, Y+11                       ; 2-byte Folded Reload
	ldd	r21, Y+12                       ; 2-byte Folded Reload
	std	Y+4, r21                        ; 2-byte Folded Spill
	std	Y+3, r20                        ; 2-byte Folded Spill
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+7, r24                        ; 1-byte Folded Spill
	brpl	.LBB141_1
; %bb.3:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 36
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end141:
	.size	__paritydi2, .Lfunc_end141-__paritydi2
                                        ; -- End function
	.globl	__paritysi2                     ; -- Begin function __paritysi2
	.p2align	1
	.type	__paritysi2,@function
__paritysi2:                            ; @__paritysi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+18, r25
	std	Y+17, r24
	std	Y+16, r23
	std	Y+15, r22
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+17
	ldd	r19, Y+18
	std	Y+14, r19
	std	Y+13, r18
	std	Y+12, r25
	std	Y+11, r24
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+11
	ldd	r25, Y+12
	eor	r24, r18
	eor	r25, r19
	std	Y+12, r25
	std	Y+11, r24
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r30, r1
	mov	r22, r25
	mov	r23, r18
	mov	r20, r19
	mov	r21, r30
	eor	r24, r22
	eor	r25, r23
	eor	r18, r20
	eor	r19, r21
	std	Y+14, r19
	std	Y+13, r18
	std	Y+12, r25
	std	Y+11, r24
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+11
	ldd	r25, Y+12
                                        ; kill: def $r20 killed $r1
	mov	r22, r24
	swap	r22
	andi	r22, 15
	mov	r21, r25
	swap	r21
	eor	r22, r21
	andi	r21, 15
	eor	r22, r21
	mov	r20, r18
	swap	r20
	eor	r21, r20
	andi	r20, 15
	eor	r21, r20
	mov	r30, r19
	swap	r30
	eor	r20, r30
	andi	r30, 15
	eor	r20, r30
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r21
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r30
	eor	r24, r22
	eor	r25, r23
	eor	r18, r20
	eor	r19, r21
	std	Y+14, r19
	std	Y+13, r18
	std	Y+12, r25
	std	Y+11, r24
	ldd	r18, Y+11
	andi	r18, 15
	ldi	r24, 150
	ldi	r25, 105
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	rjmp	.LBB142_2
.LBB142_1:                              ;   in Loop: Header=BB142_2 Depth=1
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	lsr	r25
	ror	r24
	mov	r20, r24
	mov	r21, r25
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 1-byte Folded Spill
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
.LBB142_2:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+6                        ; 2-byte Folded Reload
	ldd	r19, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	std	Y+2, r21                        ; 2-byte Folded Spill
	std	Y+1, r20                        ; 2-byte Folded Spill
	std	Y+4, r19                        ; 2-byte Folded Spill
	std	Y+3, r18                        ; 2-byte Folded Spill
	dec	r24
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB142_1
; %bb.3:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end142:
	.size	__paritysi2, .Lfunc_end142-__paritysi2
                                        ; -- End function
	.globl	__popcountdi2                   ; -- Begin function __popcountdi2
	.p2align	1
	.type	__popcountdi2,@function
__popcountdi2:                          ; @__popcountdi2
; %bb.0:
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 39
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+32, r25
	std	Y+31, r24
	std	Y+30, r23
	std	Y+29, r22
	std	Y+28, r21
	std	Y+27, r20
	std	Y+26, r19
	std	Y+25, r18
	ldd	r24, Y+25
	ldd	r25, Y+26
	ldd	r18, Y+27
	ldd	r19, Y+28
	ldd	r20, Y+29
	ldd	r21, Y+30
	ldd	r22, Y+31
	ldd	r23, Y+32
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+6, r19                        ; 2-byte Folded Spill
	std	Y+5, r18                        ; 2-byte Folded Spill
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r20, Y+21
	ldd	r21, Y+22
	mov	r17, r1
                                        ; kill: def $r30 killed $r1
	mov	r30, r20
	lsr	r30
	mov	r27, r17
	ror	r27
                                        ; kill: def $r27 killed $r27 def $r27r26
	mov	r26, r17
	mov	r31, r17
	mov	r30, r17
                                        ; kill: def $r17 killed $r1
	mov	r15, r19
	lsr	r15
	mov	r16, r18
	ror	r16
	mov	r17, r25
	ror	r17
	mov	r18, r24
	ror	r18
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r17
                                        ; kill: def $r16 killed $r16 def $r17r16
	mov	r17, r15
	or	r16, r26
	or	r17, r27
	or	r18, r30
	or	r19, r31
                                        ; kill: def $r30 killed $r1
	mov	r15, r23
	lsr	r15
	mov	r30, r22
	ror	r30
	mov	r31, r21
	ror	r31
	mov	r26, r20
	ror	r26
                                        ; kill: def $r26 killed $r26 def $r27r26
	mov	r27, r31
                                        ; kill: def $r30 killed $r30 def $r31r30
	mov	r31, r15
	andi	r18, 85
	andi	r19, 85
	andi	r16, 85
	andi	r17, 85
	andi	r26, 85
	andi	r27, 85
	andi	r30, 85
	andi	r31, 85
	sub	r24, r18
	sbc	r25, r19
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	sbc	r18, r16
	sbc	r19, r17
	sbc	r20, r26
	sbc	r21, r27
	sbc	r22, r30
	sbc	r23, r31
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r16, Y+19
	ldd	r17, Y+20
	ldd	r18, Y+17
	ldd	r19, Y+18
	ldd	r30, Y+23
	ldd	r31, Y+24
	ldd	r26, Y+21
	ldd	r27, Y+22
	mov	r24, r1
                                        ; kill: def $r25 killed $r1
	mov	r25, r26
	lsr	r25
	mov	r21, r24
	ror	r21
                                        ; kill: def $r20 killed $r1
	lsr	r25
	ror	r21
                                        ; kill: def $r21 killed $r21 def $r21r20
	mov	r20, r24
	mov	r15, r24
	mov	r14, r24
                                        ; kill: def $r24 killed $r1
	mov	r13, r17
	lsr	r13
	mov	r24, r16
	ror	r24
	mov	r25, r19
	ror	r25
	mov	r22, r18
	ror	r22
	lsr	r13
	ror	r24
	ror	r25
	ror	r22
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r25
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r13
	or	r22, r14
	or	r23, r15
	std	Y+8, r23                        ; 2-byte Folded Spill
	std	Y+7, r22                        ; 2-byte Folded Spill
	or	r24, r20
	or	r25, r21
                                        ; kill: def $r20 killed $r1
	mov	r15, r31
	lsr	r15
	mov	r22, r30
	ror	r22
	mov	r23, r27
	ror	r23
	mov	r20, r26
	ror	r20
	lsr	r15
	ror	r22
	ror	r23
	ror	r20
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r23
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r15
	andi	r24, 51
	andi	r25, 51
	std	Y+10, r25                       ; 2-byte Folded Spill
	std	Y+9, r24                        ; 2-byte Folded Spill
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	andi	r24, 51
	andi	r25, 51
	andi	r22, 51
	andi	r23, 51
	andi	r20, 51
	andi	r21, 51
	andi	r30, 51
	andi	r31, 51
	andi	r26, 51
	andi	r27, 51
	andi	r16, 51
	andi	r17, 51
	andi	r18, 51
	andi	r19, 51
	add	r24, r18
	adc	r25, r19
	ldd	r18, Y+9                        ; 2-byte Folded Reload
	ldd	r19, Y+10                       ; 2-byte Folded Reload
	add	r18, r16
	adc	r19, r17
	add	r20, r26
	adc	r21, r27
	add	r22, r30
	adc	r23, r31
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r26, Y+17
	ldd	r27, Y+18
	std	Y+12, r27                       ; 2-byte Folded Spill
	std	Y+11, r26                       ; 2-byte Folded Spill
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r20, Y+21
	ldd	r21, Y+22
	mov	r17, r1
	mov	r25, r20
	swap	r25
	andi	r25, 240
                                        ; kill: def $r25 killed $r25 def $r25r24
	mov	r24, r17
	mov	r31, r17
	mov	r30, r17
                                        ; kill: def $r17 killed $r1
	mov	r17, r26
	swap	r17
	andi	r17, 15
	swap	r27
	eor	r17, r27
	andi	r27, 15
	eor	r17, r27
	mov	r16, r18
	swap	r16
	eor	r27, r16
	andi	r16, 15
	eor	r27, r16
	mov	r26, r19
	swap	r26
	eor	r16, r26
	andi	r26, 15
	eor	r16, r26
	mov	r14, r17
	mov	r15, r27
                                        ; kill: def $r16 killed $r16 def $r17r16
	mov	r17, r26
	or	r14, r30
	or	r15, r31
	or	r16, r24
	or	r17, r25
                                        ; kill: def $r24 killed $r1
	mov	r26, r20
	swap	r26
	andi	r26, 15
	mov	r25, r21
	swap	r25
	eor	r26, r25
	andi	r25, 15
	eor	r26, r25
	mov	r30, r22
	swap	r30
	eor	r25, r30
	andi	r30, 15
	eor	r25, r30
	mov	r24, r23
	swap	r24
	eor	r30, r24
	andi	r24, 15
	eor	r30, r24
                                        ; kill: def $r26 killed $r26 def $r27r26
	mov	r27, r25
                                        ; kill: def $r30 killed $r30 def $r31r30
	mov	r31, r24
	ldd	r24, Y+11                       ; 2-byte Folded Reload
	ldd	r25, Y+12                       ; 2-byte Folded Reload
	add	r24, r14
	adc	r25, r15
	adc	r18, r16
	adc	r19, r17
	adc	r20, r26
	adc	r21, r27
	adc	r22, r30
	adc	r23, r31
	andi	r24, 15
	andi	r25, 15
	andi	r18, 15
	andi	r19, 15
	andi	r20, 15
	andi	r21, 15
	andi	r22, 15
	andi	r23, 15
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+17
	ldd	r25, Y+18
	ldd	r20, Y+23
	ldd	r21, Y+24
	ldd	r18, Y+19
	ldd	r19, Y+20
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldi	r20, 0
	ldi	r21, 0
	add	r24, r18
	adc	r25, r19
	adc	r18, r20
	adc	r19, r21
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r24, Y+13
	ldd	r25, Y+14
	mov	r22, r1
	mov	r18, r25
	mov	r19, r20
	mov	r20, r21
                                        ; kill: def $r21 killed $r22
	add	r24, r18
	adc	r25, r19
	andi	r24, 127
	andi	r25, 0
	adiw	r28, 39
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	ret
.Lfunc_end143:
	.size	__popcountdi2, .Lfunc_end143-__popcountdi2
                                        ; -- End function
	.globl	__popcountsi2                   ; -- Begin function __popcountsi2
	.p2align	1
	.type	__popcountsi2,@function
__popcountsi2:                          ; @__popcountsi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r18, Y+7
	ldd	r19, Y+8
	std	Y+4, r19
	std	Y+3, r18
	std	Y+2, r25
	std	Y+1, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldd	r24, Y+1
	ldd	r25, Y+2
                                        ; kill: def $r20 killed $r1
	mov	r30, r19
	lsr	r30
	mov	r20, r18
	ror	r20
	mov	r21, r25
	ror	r21
	mov	r22, r24
	ror	r22
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r21
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r30
	andi	r22, 85
	andi	r23, 85
	andi	r20, 85
	andi	r21, 85
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+4, r19
	std	Y+3, r18
	std	Y+2, r25
	std	Y+1, r24
	ldd	r20, Y+3
	ldd	r21, Y+4
	ldd	r22, Y+1
	ldd	r23, Y+2
                                        ; kill: def $r24 killed $r1
	mov	r30, r21
	lsr	r30
	mov	r18, r20
	ror	r18
	mov	r19, r23
	ror	r19
	mov	r24, r22
	ror	r24
	lsr	r30
	ror	r18
	ror	r19
	ror	r24
                                        ; kill: def $r24 killed $r24 def $r25r24
	mov	r25, r19
                                        ; kill: def $r18 killed $r18 def $r19r18
	mov	r19, r30
	andi	r18, 51
	andi	r19, 51
	andi	r24, 51
	andi	r25, 51
	andi	r20, 51
	andi	r21, 51
	andi	r22, 51
	andi	r23, 51
	add	r24, r22
	adc	r25, r23
	add	r18, r20
	adc	r19, r21
	std	Y+4, r19
	std	Y+3, r18
	std	Y+2, r25
	std	Y+1, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldd	r24, Y+1
	ldd	r25, Y+2
                                        ; kill: def $r20 killed $r1
	mov	r22, r24
	swap	r22
	andi	r22, 15
	mov	r21, r25
	swap	r21
	eor	r22, r21
	andi	r21, 15
	eor	r22, r21
	mov	r20, r18
	swap	r20
	eor	r21, r20
	andi	r20, 15
	eor	r21, r20
	mov	r30, r19
	swap	r30
	eor	r20, r30
	andi	r30, 15
	eor	r20, r30
                                        ; kill: def $r22 killed $r22 def $r23r22
	mov	r23, r21
                                        ; kill: def $r20 killed $r20 def $r21r20
	mov	r21, r30
	add	r24, r22
	adc	r25, r23
	adc	r18, r20
	adc	r19, r21
	andi	r24, 15
	andi	r25, 15
	andi	r18, 15
	andi	r19, 15
	std	Y+4, r19
	std	Y+3, r18
	std	Y+2, r25
	std	Y+1, r24
	ldd	r24, Y+1
	ldd	r25, Y+2
	ldd	r18, Y+3
	ldd	r19, Y+4
	ldi	r20, 0
	ldi	r21, 0
	add	r24, r18
	adc	r25, r19
	adc	r18, r20
	adc	r19, r21
	std	Y+4, r19
	std	Y+3, r18
	std	Y+2, r25
	std	Y+1, r24
	ldd	r20, Y+3
	ldd	r21, Y+4
	ldd	r24, Y+1
	ldd	r25, Y+2
	mov	r22, r1
	mov	r18, r25
	mov	r19, r20
	mov	r20, r21
                                        ; kill: def $r21 killed $r22
	add	r24, r18
	adc	r25, r19
	andi	r24, 63
	andi	r25, 0
	adiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end144:
	.size	__popcountsi2, .Lfunc_end144-__popcountsi2
                                        ; -- End function
	.globl	__powidf2                       ; -- Begin function __powidf2
	.p2align	1
	.type	__powidf2,@function
__powidf2:                              ; @__powidf2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r24, r25
	swap	r24
	andi	r24, 15
	clr	r25
	lsr	r24
	lsr	r24
	lsr	r24
	std	Y+10, r25
	std	Y+9, r24
	ldi	r24, 128
	ldi	r25, 63
	std	Y+8, r25
	std	Y+7, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB145_1
.LBB145_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+11
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB145_3
	rjmp	.LBB145_2
.LBB145_2:                              ;   in Loop: Header=BB145_1 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	rcall	__mulsf3
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	rjmp	.LBB145_3
.LBB145_3:                              ;   in Loop: Header=BB145_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r18, r24
	mov	r19, r25
	mov	r18, r19
	swap	r18
	andi	r18, 15
	clr	r19
	lsr	r18
	lsr	r18
	lsr	r18
	add	r24, r18
	adc	r25, r19
	asr	r25
	ror	r24
	std	Y+12, r25
	std	Y+11, r24
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB145_5
	rjmp	.LBB145_4
.LBB145_4:
	rjmp	.LBB145_6
.LBB145_5:                              ;   in Loop: Header=BB145_1 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsf3
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	rjmp	.LBB145_1
.LBB145_6:
	ldd	r18, Y+9
	ldd	r19, Y+10
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB145_8
	rjmp	.LBB145_7
.LBB145_7:
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldi	r22, 0
	ldi	r23, 0
	ldi	r24, 128
	ldi	r25, 63
	rcall	__divsf3
	std	Y+2, r23                        ; 2-byte Folded Spill
	std	Y+1, r22                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB145_9
.LBB145_8:
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB145_9
.LBB145_9:
	ldd	r22, Y+1                        ; 2-byte Folded Reload
	ldd	r23, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end145:
	.size	__powidf2, .Lfunc_end145-__powidf2
                                        ; -- End function
	.globl	__powisf2                       ; -- Begin function __powisf2
	.p2align	1
	.type	__powisf2,@function
__powisf2:                              ; @__powisf2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r24, r25
	swap	r24
	andi	r24, 15
	clr	r25
	lsr	r24
	lsr	r24
	lsr	r24
	std	Y+10, r25
	std	Y+9, r24
	ldi	r24, 128
	ldi	r25, 63
	std	Y+8, r25
	std	Y+7, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB146_1
.LBB146_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+11
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB146_3
	rjmp	.LBB146_2
.LBB146_2:                              ;   in Loop: Header=BB146_1 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r22, Y+5
	ldd	r23, Y+6
	ldd	r24, Y+7
	ldd	r25, Y+8
	rcall	__mulsf3
	std	Y+8, r25
	std	Y+7, r24
	std	Y+6, r23
	std	Y+5, r22
	rjmp	.LBB146_3
.LBB146_3:                              ;   in Loop: Header=BB146_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	mov	r18, r24
	mov	r19, r25
	mov	r18, r19
	swap	r18
	andi	r18, 15
	clr	r19
	lsr	r18
	lsr	r18
	lsr	r18
	add	r24, r18
	adc	r25, r19
	asr	r25
	ror	r24
	std	Y+12, r25
	std	Y+11, r24
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB146_5
	rjmp	.LBB146_4
.LBB146_4:
	rjmp	.LBB146_6
.LBB146_5:                              ;   in Loop: Header=BB146_1 Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r22, r18
	mov	r23, r19
	mov	r24, r20
	mov	r25, r21
	rcall	__mulsf3
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	rjmp	.LBB146_1
.LBB146_6:
	ldd	r18, Y+9
	ldd	r19, Y+10
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB146_8
	rjmp	.LBB146_7
.LBB146_7:
	ldd	r18, Y+5
	ldd	r19, Y+6
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldi	r22, 0
	ldi	r23, 0
	ldi	r24, 128
	ldi	r25, 63
	rcall	__divsf3
	std	Y+2, r23                        ; 2-byte Folded Spill
	std	Y+1, r22                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB146_9
.LBB146_8:
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB146_9
.LBB146_9:
	ldd	r22, Y+1                        ; 2-byte Folded Reload
	ldd	r23, Y+2                        ; 2-byte Folded Reload
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	adiw	r28, 16
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end146:
	.size	__powisf2, .Lfunc_end146-__powisf2
                                        ; -- End function
	.globl	__ucmpdi2                       ; -- Begin function __ucmpdi2
	.p2align	1
	.type	__ucmpdi2,@function
__ucmpdi2:                              ; @__ucmpdi2
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 44
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r17r16
                                        ; kill: def $r31r30 killed $r15r14
                                        ; kill: def $r31r30 killed $r13r12
                                        ; kill: def $r31r30 killed $r11r10
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+40, r25
	std	Y+39, r24
	std	Y+38, r23
	std	Y+37, r22
	std	Y+36, r21
	std	Y+35, r20
	std	Y+34, r19
	std	Y+33, r18
	std	Y+32, r17
	std	Y+31, r16
	std	Y+30, r15
	std	Y+29, r14
	std	Y+28, r13
	std	Y+27, r12
	std	Y+26, r11
	std	Y+25, r10
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r20, Y+37
	ldd	r21, Y+38
	ldd	r22, Y+39
	ldd	r23, Y+40
	std	Y+24, r23
	std	Y+23, r22
	std	Y+22, r21
	std	Y+21, r20
	std	Y+20, r19
	std	Y+19, r18
	std	Y+18, r25
	std	Y+17, r24
	ldd	r24, Y+25
	ldd	r25, Y+26
	ldd	r18, Y+27
	ldd	r19, Y+28
	ldd	r20, Y+29
	ldd	r21, Y+30
	ldd	r22, Y+31
	ldd	r23, Y+32
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r18, Y+23
	ldd	r19, Y+24
	ldd	r30, Y+13
	ldd	r31, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r24, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	brsh	.LBB147_1
	rjmp	.LBB147_2
.LBB147_1:
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB147_4
	rjmp	.LBB147_3
	rjmp	.LBB147_3
.LBB147_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_1
.LBB147_3:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB147_17
.LBB147_4:
	ldd	r30, Y+21
	ldd	r31, Y+22
	ldd	r20, Y+23
	ldd	r21, Y+24
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r24, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB147_5
	rjmp	.LBB147_6
.LBB147_5:
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB147_8
	rjmp	.LBB147_7
	rjmp	.LBB147_7
.LBB147_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_5
.LBB147_7:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	ldi	r24, 2
	ldi	r25, 0
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB147_17
.LBB147_8:
	ldd	r22, Y+17
	ldd	r23, Y+18
	ldd	r18, Y+19
	ldd	r19, Y+20
	ldd	r30, Y+9
	ldd	r31, Y+10
	ldd	r20, Y+11
	ldd	r21, Y+12
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brsh	.LBB147_9
	rjmp	.LBB147_10
.LBB147_9:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB147_12
	rjmp	.LBB147_11
	rjmp	.LBB147_11
.LBB147_10:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_9
.LBB147_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB147_17
.LBB147_12:
	ldd	r30, Y+17
	ldd	r31, Y+18
	ldd	r20, Y+19
	ldd	r21, Y+20
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brsh	.LBB147_13
	rjmp	.LBB147_14
.LBB147_13:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB147_16
	rjmp	.LBB147_15
	rjmp	.LBB147_15
.LBB147_14:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_13
.LBB147_15:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	ldi	r24, 2
	ldi	r25, 0
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB147_17
.LBB147_16:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+44, r25
	std	Y+43, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+42, r25
	std	Y+41, r24
	rjmp	.LBB147_17
.LBB147_17:
	ldd	r22, Y+41
	ldd	r23, Y+42
	ldd	r24, Y+43
	ldd	r25, Y+44
	adiw	r28, 44
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	ret
.Lfunc_end147:
	.size	__ucmpdi2, .Lfunc_end147-__ucmpdi2
                                        ; -- End function
	.globl	__aeabi_ulcmp                   ; -- Begin function __aeabi_ulcmp
	.p2align	1
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          ; @__aeabi_ulcmp
; %bb.0:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r17r16
                                        ; kill: def $r31r30 killed $r15r14
                                        ; kill: def $r31r30 killed $r13r12
                                        ; kill: def $r31r30 killed $r11r10
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
	std	Y+16, r25
	std	Y+15, r24
	std	Y+14, r23
	std	Y+13, r22
	std	Y+12, r21
	std	Y+11, r20
	std	Y+10, r19
	std	Y+9, r18
	std	Y+8, r17
	std	Y+7, r16
	std	Y+6, r15
	std	Y+5, r14
	std	Y+4, r13
	std	Y+3, r12
	std	Y+2, r11
	std	Y+1, r10
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r22, Y+13
	ldd	r23, Y+14
	ldd	r20, Y+11
	ldd	r21, Y+12
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r16, Y+7
	ldd	r17, Y+8
	ldd	r14, Y+5
	ldd	r15, Y+6
	ldd	r12, Y+3
	ldd	r13, Y+4
	ldd	r10, Y+1
	ldd	r11, Y+2
	rcall	__ucmpdi2
	subi	r22, 1
	sbci	r23, 0
	sbci	r24, 0
	sbci	r25, 0
	adiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret
.Lfunc_end148:
	.size	__aeabi_ulcmp, .Lfunc_end148-__aeabi_ulcmp
                                        ; -- End function
	; Declaring this symbol tells the CRT that it should
	;copy all variables from program memory to RAM on startup
	.globl	__do_copy_data
	; Declaring this symbol tells the CRT that it should
	;clear the zeroed data section on startup
	.globl	__do_clear_bss
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
