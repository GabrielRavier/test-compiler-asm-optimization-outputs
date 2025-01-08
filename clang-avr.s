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
	lds	r24, __profc_memmove
	lds	r25, __profc_memmove+1
	lds	r18, __profc_memmove+2
	lds	r19, __profc_memmove+3
	lds	r20, __profc_memmove+4
	lds	r21, __profc_memmove+5
	lds	r22, __profc_memmove+6
	lds	r23, __profc_memmove+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmove+7, r23
	sts	__profc_memmove+6, r22
	sts	__profc_memmove+5, r21
	sts	__profc_memmove+4, r20
	sts	__profc_memmove+3, r19
	sts	__profc_memmove+2, r18
	sts	__profc_memmove+1, r25
	sts	__profc_memmove, r24
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
	lds	r24, __profc_memmove+8
	lds	r25, __profc_memmove+9
	lds	r18, __profc_memmove+10
	lds	r19, __profc_memmove+11
	lds	r20, __profc_memmove+12
	lds	r21, __profc_memmove+13
	lds	r22, __profc_memmove+14
	lds	r23, __profc_memmove+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmove+15, r23
	sts	__profc_memmove+14, r22
	sts	__profc_memmove+13, r21
	sts	__profc_memmove+12, r20
	sts	__profc_memmove+11, r19
	sts	__profc_memmove+10, r18
	sts	__profc_memmove+9, r25
	sts	__profc_memmove+8, r24
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
	brne	.LBB0_3
	rjmp	.LBB0_5
.LBB0_3:                                ;   in Loop: Header=BB0_2 Depth=1
	lds	r24, __profc_memmove+16
	lds	r25, __profc_memmove+17
	lds	r18, __profc_memmove+18
	lds	r19, __profc_memmove+19
	lds	r20, __profc_memmove+20
	lds	r21, __profc_memmove+21
	lds	r22, __profc_memmove+22
	lds	r23, __profc_memmove+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmove+23, r23
	sts	__profc_memmove+22, r22
	sts	__profc_memmove+21, r21
	sts	__profc_memmove+20, r20
	sts	__profc_memmove+19, r19
	sts	__profc_memmove+18, r18
	sts	__profc_memmove+17, r25
	sts	__profc_memmove+16, r24
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
	lds	r24, __profc_memmove+24
	lds	r25, __profc_memmove+25
	lds	r18, __profc_memmove+26
	lds	r19, __profc_memmove+27
	lds	r20, __profc_memmove+28
	lds	r21, __profc_memmove+29
	lds	r22, __profc_memmove+30
	lds	r23, __profc_memmove+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmove+31, r23
	sts	__profc_memmove+30, r22
	sts	__profc_memmove+29, r21
	sts	__profc_memmove+28, r20
	sts	__profc_memmove+27, r19
	sts	__profc_memmove+26, r18
	sts	__profc_memmove+25, r25
	sts	__profc_memmove+24, r24
	rjmp	.LBB0_8
.LBB0_8:                                ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB0_9
	rjmp	.LBB0_11
.LBB0_9:                                ;   in Loop: Header=BB0_8 Depth=1
	lds	r24, __profc_memmove+32
	lds	r25, __profc_memmove+33
	lds	r18, __profc_memmove+34
	lds	r19, __profc_memmove+35
	lds	r20, __profc_memmove+36
	lds	r21, __profc_memmove+37
	lds	r22, __profc_memmove+38
	lds	r23, __profc_memmove+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmove+39, r23
	sts	__profc_memmove+38, r22
	sts	__profc_memmove+37, r21
	sts	__profc_memmove+36, r20
	sts	__profc_memmove+35, r19
	sts	__profc_memmove+34, r18
	sts	__profc_memmove+33, r25
	sts	__profc_memmove+32, r24
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
	sbiw	r28, 22
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
	std	Y+14, r19
	std	Y+13, r18
	lds	r24, __profc_memccpy
	lds	r25, __profc_memccpy+1
	lds	r18, __profc_memccpy+2
	lds	r19, __profc_memccpy+3
	lds	r20, __profc_memccpy+4
	lds	r21, __profc_memccpy+5
	lds	r22, __profc_memccpy+6
	lds	r23, __profc_memccpy+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memccpy+7, r23
	sts	__profc_memccpy+6, r22
	sts	__profc_memccpy+5, r21
	sts	__profc_memccpy+4, r20
	sts	__profc_memccpy+3, r19
	sts	__profc_memccpy+2, r18
	sts	__profc_memccpy+1, r25
	sts	__profc_memccpy, r24
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+15
	clr	r25
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB1_1
.LBB1_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB1_2
	rjmp	.LBB1_6
.LBB1_2:                                ;   in Loop: Header=BB1_1 Depth=1
	lds	r24, __profc_memccpy+16
	lds	r25, __profc_memccpy+17
	lds	r18, __profc_memccpy+18
	lds	r19, __profc_memccpy+19
	lds	r20, __profc_memccpy+20
	lds	r21, __profc_memccpy+21
	lds	r22, __profc_memccpy+22
	lds	r23, __profc_memccpy+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memccpy+23, r23
	sts	__profc_memccpy+22, r22
	sts	__profc_memccpy+21, r21
	sts	__profc_memccpy+20, r20
	sts	__profc_memccpy+19, r19
	sts	__profc_memccpy+18, r18
	sts	__profc_memccpy+17, r25
	sts	__profc_memccpy+16, r24
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r24, X
	ldd	r26, Y+11
	ldd	r27, Y+12
	st	X, r24
	mov	r18, r24
	clr	r19
	std	Y+3, r19                        ; 2-byte Folded Spill
	std	Y+2, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+15
	ldd	r21, Y+16
	std	Y+5, r21                        ; 2-byte Folded Spill
	std	Y+4, r20                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+7, r24                        ; 1-byte Folded Spill
	brne	.LBB1_3
	rjmp	.LBB1_4
.LBB1_3:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r18, Y+2                        ; 2-byte Folded Reload
	ldd	r19, Y+3                        ; 2-byte Folded Reload
	ldd	r20, Y+4                        ; 2-byte Folded Reload
	ldd	r21, Y+5                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB1_5
	rjmp	.LBB1_6
.LBB1_4:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	rjmp	.LBB1_3
.LBB1_5:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_memccpy+24
	lds	r19, __profc_memccpy+25
	lds	r20, __profc_memccpy+26
	lds	r21, __profc_memccpy+27
	lds	r22, __profc_memccpy+28
	lds	r23, __profc_memccpy+29
	lds	r30, __profc_memccpy+30
	lds	r31, __profc_memccpy+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_memccpy+31, r31
	sts	__profc_memccpy+30, r30
	sts	__profc_memccpy+29, r23
	sts	__profc_memccpy+28, r22
	sts	__profc_memccpy+27, r21
	sts	__profc_memccpy+26, r20
	sts	__profc_memccpy+25, r19
	sts	__profc_memccpy+24, r18
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB1_6
.LBB1_6:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB1_7
	rjmp	.LBB1_9
.LBB1_7:                                ;   in Loop: Header=BB1_1 Depth=1
	lds	r24, __profc_memccpy+8
	lds	r25, __profc_memccpy+9
	lds	r18, __profc_memccpy+10
	lds	r19, __profc_memccpy+11
	lds	r20, __profc_memccpy+12
	lds	r21, __profc_memccpy+13
	lds	r22, __profc_memccpy+14
	lds	r23, __profc_memccpy+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memccpy+15, r23
	sts	__profc_memccpy+14, r22
	sts	__profc_memccpy+13, r21
	sts	__profc_memccpy+12, r20
	sts	__profc_memccpy+11, r19
	sts	__profc_memccpy+10, r18
	sts	__profc_memccpy+9, r25
	sts	__profc_memccpy+8, r24
	rjmp	.LBB1_8
.LBB1_8:                                ;   in Loop: Header=BB1_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	sbiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB1_1
.LBB1_9:
	ldd	r18, Y+13
	ldd	r19, Y+14
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB1_10
	rjmp	.LBB1_11
.LBB1_10:
	lds	r24, __profc_memccpy+32
	lds	r25, __profc_memccpy+33
	lds	r18, __profc_memccpy+34
	lds	r19, __profc_memccpy+35
	lds	r20, __profc_memccpy+36
	lds	r21, __profc_memccpy+37
	lds	r22, __profc_memccpy+38
	lds	r23, __profc_memccpy+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memccpy+39, r23
	sts	__profc_memccpy+38, r22
	sts	__profc_memccpy+37, r21
	sts	__profc_memccpy+36, r20
	sts	__profc_memccpy+35, r19
	sts	__profc_memccpy+34, r18
	sts	__profc_memccpy+33, r25
	sts	__profc_memccpy+32, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+22, r25
	std	Y+21, r24
	rjmp	.LBB1_12
.LBB1_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+22, r25
	std	Y+21, r24
	rjmp	.LBB1_12
.LBB1_12:
	ldd	r24, Y+21
	ldd	r25, Y+22
	adiw	r28, 22
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
	sbiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+18, r25
	std	Y+17, r24
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	lds	r24, __profc_memchr
	lds	r25, __profc_memchr+1
	lds	r18, __profc_memchr+2
	lds	r19, __profc_memchr+3
	lds	r20, __profc_memchr+4
	lds	r21, __profc_memchr+5
	lds	r22, __profc_memchr+6
	lds	r23, __profc_memchr+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memchr+7, r23
	sts	__profc_memchr+6, r22
	sts	__profc_memchr+5, r21
	sts	__profc_memchr+4, r20
	sts	__profc_memchr+3, r19
	sts	__profc_memchr+2, r18
	sts	__profc_memchr+1, r25
	sts	__profc_memchr, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+15
	clr	r25
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB2_1
.LBB2_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB2_2
	rjmp	.LBB2_6
.LBB2_2:                                ;   in Loop: Header=BB2_1 Depth=1
	lds	r24, __profc_memchr+16
	lds	r25, __profc_memchr+17
	lds	r18, __profc_memchr+18
	lds	r19, __profc_memchr+19
	lds	r20, __profc_memchr+20
	lds	r21, __profc_memchr+21
	lds	r22, __profc_memchr+22
	lds	r23, __profc_memchr+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memchr+23, r23
	sts	__profc_memchr+22, r22
	sts	__profc_memchr+21, r21
	sts	__profc_memchr+20, r20
	sts	__profc_memchr+19, r19
	sts	__profc_memchr+18, r18
	sts	__profc_memchr+17, r25
	sts	__profc_memchr+16, r24
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r24, X
	mov	r18, r24
	clr	r19
	std	Y+5, r19                        ; 2-byte Folded Spill
	std	Y+4, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+15
	ldd	r21, Y+16
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB2_3
	rjmp	.LBB2_4
.LBB2_3:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r18, Y+4                        ; 2-byte Folded Reload
	ldd	r19, Y+5                        ; 2-byte Folded Reload
	ldd	r20, Y+6                        ; 2-byte Folded Reload
	ldd	r21, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB2_5
	rjmp	.LBB2_6
.LBB2_4:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB2_3
.LBB2_5:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	lds	r18, __profc_memchr+24
	lds	r19, __profc_memchr+25
	lds	r20, __profc_memchr+26
	lds	r21, __profc_memchr+27
	lds	r22, __profc_memchr+28
	lds	r23, __profc_memchr+29
	lds	r30, __profc_memchr+30
	lds	r31, __profc_memchr+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_memchr+31, r31
	sts	__profc_memchr+30, r30
	sts	__profc_memchr+29, r23
	sts	__profc_memchr+28, r22
	sts	__profc_memchr+27, r21
	sts	__profc_memchr+26, r20
	sts	__profc_memchr+25, r19
	sts	__profc_memchr+24, r18
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB2_6
.LBB2_6:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB2_7
	rjmp	.LBB2_9
.LBB2_7:                                ;   in Loop: Header=BB2_1 Depth=1
	lds	r24, __profc_memchr+8
	lds	r25, __profc_memchr+9
	lds	r18, __profc_memchr+10
	lds	r19, __profc_memchr+11
	lds	r20, __profc_memchr+12
	lds	r21, __profc_memchr+13
	lds	r22, __profc_memchr+14
	lds	r23, __profc_memchr+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memchr+15, r23
	sts	__profc_memchr+14, r22
	sts	__profc_memchr+13, r21
	sts	__profc_memchr+12, r20
	sts	__profc_memchr+11, r19
	sts	__profc_memchr+10, r18
	sts	__profc_memchr+9, r25
	sts	__profc_memchr+8, r24
	rjmp	.LBB2_8
.LBB2_8:                                ;   in Loop: Header=BB2_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	sbiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB2_1
.LBB2_9:
	ldd	r18, Y+13
	ldd	r19, Y+14
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB2_10
	rjmp	.LBB2_11
.LBB2_10:
	lds	r24, __profc_memchr+32
	lds	r25, __profc_memchr+33
	lds	r18, __profc_memchr+34
	lds	r19, __profc_memchr+35
	lds	r20, __profc_memchr+36
	lds	r21, __profc_memchr+37
	lds	r22, __profc_memchr+38
	lds	r23, __profc_memchr+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memchr+39, r23
	sts	__profc_memchr+38, r22
	sts	__profc_memchr+37, r21
	sts	__profc_memchr+36, r20
	sts	__profc_memchr+35, r19
	sts	__profc_memchr+34, r18
	sts	__profc_memchr+33, r25
	sts	__profc_memchr+32, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB2_12
.LBB2_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB2_12
.LBB2_12:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 18
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
	lds	r24, __profc_memcmp
	lds	r25, __profc_memcmp+1
	lds	r18, __profc_memcmp+2
	lds	r19, __profc_memcmp+3
	lds	r20, __profc_memcmp+4
	lds	r21, __profc_memcmp+5
	lds	r22, __profc_memcmp+6
	lds	r23, __profc_memcmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memcmp+7, r23
	sts	__profc_memcmp+6, r22
	sts	__profc_memcmp+5, r21
	sts	__profc_memcmp+4, r20
	sts	__profc_memcmp+3, r19
	sts	__profc_memcmp+2, r18
	sts	__profc_memcmp+1, r25
	sts	__profc_memcmp, r24
	ldd	r24, Y+19
	ldd	r25, Y+20
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB3_1
.LBB3_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB3_2
	rjmp	.LBB3_6
.LBB3_2:                                ;   in Loop: Header=BB3_1 Depth=1
	lds	r24, __profc_memcmp+16
	lds	r25, __profc_memcmp+17
	lds	r18, __profc_memcmp+18
	lds	r19, __profc_memcmp+19
	lds	r20, __profc_memcmp+20
	lds	r21, __profc_memcmp+21
	lds	r22, __profc_memcmp+22
	lds	r23, __profc_memcmp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memcmp+23, r23
	sts	__profc_memcmp+22, r22
	sts	__profc_memcmp+21, r21
	sts	__profc_memcmp+20, r20
	sts	__profc_memcmp+19, r19
	sts	__profc_memcmp+18, r18
	sts	__profc_memcmp+17, r25
	sts	__profc_memcmp+16, r24
	ldd	r26, Y+13
	ldd	r27, Y+14
	ld	r24, X
	mov	r18, r24
	clr	r19
	std	Y+5, r19                        ; 2-byte Folded Spill
	std	Y+4, r18                        ; 2-byte Folded Spill
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r24, X
	mov	r20, r24
	clr	r21
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+9, r24                        ; 1-byte Folded Spill
	breq	.LBB3_3
	rjmp	.LBB3_4
.LBB3_3:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r18, Y+4                        ; 2-byte Folded Reload
	ldd	r19, Y+5                        ; 2-byte Folded Reload
	ldd	r20, Y+6                        ; 2-byte Folded Reload
	ldd	r21, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+10, r24                       ; 1-byte Folded Spill
	breq	.LBB3_5
	rjmp	.LBB3_6
.LBB3_4:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB3_3
.LBB3_5:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	lds	r18, __profc_memcmp+24
	lds	r19, __profc_memcmp+25
	lds	r20, __profc_memcmp+26
	lds	r21, __profc_memcmp+27
	lds	r22, __profc_memcmp+28
	lds	r23, __profc_memcmp+29
	lds	r30, __profc_memcmp+30
	lds	r31, __profc_memcmp+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_memcmp+31, r31
	sts	__profc_memcmp+30, r30
	sts	__profc_memcmp+29, r23
	sts	__profc_memcmp+28, r22
	sts	__profc_memcmp+27, r21
	sts	__profc_memcmp+26, r20
	sts	__profc_memcmp+25, r19
	sts	__profc_memcmp+24, r18
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB3_6
.LBB3_6:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB3_7
	rjmp	.LBB3_9
.LBB3_7:                                ;   in Loop: Header=BB3_1 Depth=1
	lds	r24, __profc_memcmp+8
	lds	r25, __profc_memcmp+9
	lds	r18, __profc_memcmp+10
	lds	r19, __profc_memcmp+11
	lds	r20, __profc_memcmp+12
	lds	r21, __profc_memcmp+13
	lds	r22, __profc_memcmp+14
	lds	r23, __profc_memcmp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memcmp+15, r23
	sts	__profc_memcmp+14, r22
	sts	__profc_memcmp+13, r21
	sts	__profc_memcmp+12, r20
	sts	__profc_memcmp+11, r19
	sts	__profc_memcmp+10, r18
	sts	__profc_memcmp+9, r25
	sts	__profc_memcmp+8, r24
	rjmp	.LBB3_8
.LBB3_8:                                ;   in Loop: Header=BB3_1 Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	sbiw	r24, 1
	std	Y+16, r25
	std	Y+15, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB3_1
.LBB3_9:
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB3_10
	rjmp	.LBB3_11
.LBB3_10:
	lds	r24, __profc_memcmp+32
	lds	r25, __profc_memcmp+33
	lds	r18, __profc_memcmp+34
	lds	r19, __profc_memcmp+35
	lds	r20, __profc_memcmp+36
	lds	r21, __profc_memcmp+37
	lds	r22, __profc_memcmp+38
	lds	r23, __profc_memcmp+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memcmp+39, r23
	sts	__profc_memcmp+38, r22
	sts	__profc_memcmp+37, r21
	sts	__profc_memcmp+36, r20
	sts	__profc_memcmp+35, r19
	sts	__profc_memcmp+34, r18
	sts	__profc_memcmp+33, r25
	sts	__profc_memcmp+32, r24
	ldd	r26, Y+13
	ldd	r27, Y+14
	ld	r24, X
	clr	r25
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r18, X
	clr	r19
	sub	r24, r18
	sbc	r25, r19
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB3_12
.LBB3_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB3_12
.LBB3_12:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 20
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
	lds	r24, __profc_memcpy
	lds	r25, __profc_memcpy+1
	lds	r18, __profc_memcpy+2
	lds	r19, __profc_memcpy+3
	lds	r20, __profc_memcpy+4
	lds	r21, __profc_memcpy+5
	lds	r22, __profc_memcpy+6
	lds	r23, __profc_memcpy+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memcpy+7, r23
	sts	__profc_memcpy+6, r22
	sts	__profc_memcpy+5, r21
	sts	__profc_memcpy+4, r20
	sts	__profc_memcpy+3, r19
	sts	__profc_memcpy+2, r18
	sts	__profc_memcpy+1, r25
	sts	__profc_memcpy, r24
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
	brne	.LBB4_2
	rjmp	.LBB4_4
.LBB4_2:                                ;   in Loop: Header=BB4_1 Depth=1
	lds	r24, __profc_memcpy+8
	lds	r25, __profc_memcpy+9
	lds	r18, __profc_memcpy+10
	lds	r19, __profc_memcpy+11
	lds	r20, __profc_memcpy+12
	lds	r21, __profc_memcpy+13
	lds	r22, __profc_memcpy+14
	lds	r23, __profc_memcpy+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memcpy+15, r23
	sts	__profc_memcpy+14, r22
	sts	__profc_memcpy+13, r21
	sts	__profc_memcpy+12, r20
	sts	__profc_memcpy+11, r19
	sts	__profc_memcpy+10, r18
	sts	__profc_memcpy+9, r25
	sts	__profc_memcpy+8, r24
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
	lds	r24, __profc_memrchr
	lds	r25, __profc_memrchr+1
	lds	r18, __profc_memrchr+2
	lds	r19, __profc_memrchr+3
	lds	r20, __profc_memrchr+4
	lds	r21, __profc_memrchr+5
	lds	r22, __profc_memrchr+6
	lds	r23, __profc_memrchr+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memrchr+7, r23
	sts	__profc_memrchr+6, r22
	sts	__profc_memrchr+5, r21
	sts	__profc_memrchr+4, r20
	sts	__profc_memrchr+3, r19
	sts	__profc_memrchr+2, r18
	sts	__profc_memrchr+1, r25
	sts	__profc_memrchr, r24
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
	brne	.LBB5_2
	rjmp	.LBB5_5
.LBB5_2:                                ;   in Loop: Header=BB5_1 Depth=1
	lds	r24, __profc_memrchr+8
	lds	r25, __profc_memrchr+9
	lds	r18, __profc_memrchr+10
	lds	r19, __profc_memrchr+11
	lds	r20, __profc_memrchr+12
	lds	r21, __profc_memrchr+13
	lds	r22, __profc_memrchr+14
	lds	r23, __profc_memrchr+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memrchr+15, r23
	sts	__profc_memrchr+14, r22
	sts	__profc_memrchr+13, r21
	sts	__profc_memrchr+12, r20
	sts	__profc_memrchr+11, r19
	sts	__profc_memrchr+10, r18
	sts	__profc_memrchr+9, r25
	sts	__profc_memrchr+8, r24
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
	breq	.LBB5_3
	rjmp	.LBB5_4
.LBB5_3:
	lds	r24, __profc_memrchr+16
	lds	r25, __profc_memrchr+17
	lds	r18, __profc_memrchr+18
	lds	r19, __profc_memrchr+19
	lds	r20, __profc_memrchr+20
	lds	r21, __profc_memrchr+21
	lds	r22, __profc_memrchr+22
	lds	r23, __profc_memrchr+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memrchr+23, r23
	sts	__profc_memrchr+22, r22
	sts	__profc_memrchr+21, r21
	sts	__profc_memrchr+20, r20
	sts	__profc_memrchr+19, r19
	sts	__profc_memrchr+18, r18
	sts	__profc_memrchr+17, r25
	sts	__profc_memrchr+16, r24
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
	lds	r24, __profc_memset
	lds	r25, __profc_memset+1
	lds	r18, __profc_memset+2
	lds	r19, __profc_memset+3
	lds	r20, __profc_memset+4
	lds	r21, __profc_memset+5
	lds	r22, __profc_memset+6
	lds	r23, __profc_memset+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memset+7, r23
	sts	__profc_memset+6, r22
	sts	__profc_memset+5, r21
	sts	__profc_memset+4, r20
	sts	__profc_memset+3, r19
	sts	__profc_memset+2, r18
	sts	__profc_memset+1, r25
	sts	__profc_memset, r24
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
	brne	.LBB6_2
	rjmp	.LBB6_4
.LBB6_2:                                ;   in Loop: Header=BB6_1 Depth=1
	lds	r24, __profc_memset+8
	lds	r25, __profc_memset+9
	lds	r18, __profc_memset+10
	lds	r19, __profc_memset+11
	lds	r20, __profc_memset+12
	lds	r21, __profc_memset+13
	lds	r22, __profc_memset+14
	lds	r23, __profc_memset+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memset+15, r23
	sts	__profc_memset+14, r22
	sts	__profc_memset+13, r21
	sts	__profc_memset+12, r20
	sts	__profc_memset+11, r19
	sts	__profc_memset+10, r18
	sts	__profc_memset+9, r25
	sts	__profc_memset+8, r24
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
	lds	r24, __profc_stpcpy
	lds	r25, __profc_stpcpy+1
	lds	r18, __profc_stpcpy+2
	lds	r19, __profc_stpcpy+3
	lds	r20, __profc_stpcpy+4
	lds	r21, __profc_stpcpy+5
	lds	r22, __profc_stpcpy+6
	lds	r23, __profc_stpcpy+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_stpcpy+7, r23
	sts	__profc_stpcpy+6, r22
	sts	__profc_stpcpy+5, r21
	sts	__profc_stpcpy+4, r20
	sts	__profc_stpcpy+3, r19
	sts	__profc_stpcpy+2, r18
	sts	__profc_stpcpy+1, r25
	sts	__profc_stpcpy, r24
	rjmp	.LBB7_1
.LBB7_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+1
	ldd	r27, Y+2
	ld	r24, X
	ldd	r26, Y+3
	ldd	r27, Y+4
	st	X, r24
	cpi	r24, 0
	brne	.LBB7_2
	rjmp	.LBB7_4
.LBB7_2:                                ;   in Loop: Header=BB7_1 Depth=1
	lds	r24, __profc_stpcpy+8
	lds	r25, __profc_stpcpy+9
	lds	r18, __profc_stpcpy+10
	lds	r19, __profc_stpcpy+11
	lds	r20, __profc_stpcpy+12
	lds	r21, __profc_stpcpy+13
	lds	r22, __profc_stpcpy+14
	lds	r23, __profc_stpcpy+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_stpcpy+15, r23
	sts	__profc_stpcpy+14, r22
	sts	__profc_stpcpy+13, r21
	sts	__profc_stpcpy+12, r20
	sts	__profc_stpcpy+11, r19
	sts	__profc_stpcpy+10, r18
	sts	__profc_stpcpy+9, r25
	sts	__profc_stpcpy+8, r24
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
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	lds	r24, __profc_strchrnul
	lds	r25, __profc_strchrnul+1
	lds	r18, __profc_strchrnul+2
	lds	r19, __profc_strchrnul+3
	lds	r20, __profc_strchrnul+4
	lds	r21, __profc_strchrnul+5
	lds	r22, __profc_strchrnul+6
	lds	r23, __profc_strchrnul+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strchrnul+7, r23
	sts	__profc_strchrnul+6, r22
	sts	__profc_strchrnul+5, r21
	sts	__profc_strchrnul+4, r20
	sts	__profc_strchrnul+3, r19
	sts	__profc_strchrnul+2, r18
	sts	__profc_strchrnul+1, r25
	sts	__profc_strchrnul, r24
	ldd	r24, Y+9
	clr	r25
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB8_1
.LBB8_1:                                ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r25, X
	mov	r24, r1
	cpi	r25, 0
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB8_2
	rjmp	.LBB8_6
.LBB8_2:                                ;   in Loop: Header=BB8_1 Depth=1
	lds	r24, __profc_strchrnul+16
	lds	r25, __profc_strchrnul+17
	lds	r18, __profc_strchrnul+18
	lds	r19, __profc_strchrnul+19
	lds	r20, __profc_strchrnul+20
	lds	r21, __profc_strchrnul+21
	lds	r22, __profc_strchrnul+22
	lds	r23, __profc_strchrnul+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strchrnul+23, r23
	sts	__profc_strchrnul+22, r22
	sts	__profc_strchrnul+21, r21
	sts	__profc_strchrnul+20, r20
	sts	__profc_strchrnul+19, r19
	sts	__profc_strchrnul+18, r18
	sts	__profc_strchrnul+17, r25
	sts	__profc_strchrnul+16, r24
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r24, X
	mov	r18, r24
	clr	r19
	std	Y+3, r19                        ; 2-byte Folded Spill
	std	Y+2, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+9
	ldd	r21, Y+10
	std	Y+5, r21                        ; 2-byte Folded Spill
	std	Y+4, r20                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+7, r24                        ; 1-byte Folded Spill
	brne	.LBB8_3
	rjmp	.LBB8_4
.LBB8_3:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r18, Y+2                        ; 2-byte Folded Reload
	ldd	r19, Y+3                        ; 2-byte Folded Reload
	ldd	r20, Y+4                        ; 2-byte Folded Reload
	ldd	r21, Y+5                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB8_5
	rjmp	.LBB8_6
.LBB8_4:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	rjmp	.LBB8_3
.LBB8_5:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_strchrnul+24
	lds	r19, __profc_strchrnul+25
	lds	r20, __profc_strchrnul+26
	lds	r21, __profc_strchrnul+27
	lds	r22, __profc_strchrnul+28
	lds	r23, __profc_strchrnul+29
	lds	r30, __profc_strchrnul+30
	lds	r31, __profc_strchrnul+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_strchrnul+31, r31
	sts	__profc_strchrnul+30, r30
	sts	__profc_strchrnul+29, r23
	sts	__profc_strchrnul+28, r22
	sts	__profc_strchrnul+27, r21
	sts	__profc_strchrnul+26, r20
	sts	__profc_strchrnul+25, r19
	sts	__profc_strchrnul+24, r18
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB8_6
.LBB8_6:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB8_7
	rjmp	.LBB8_9
.LBB8_7:                                ;   in Loop: Header=BB8_1 Depth=1
	lds	r24, __profc_strchrnul+8
	lds	r25, __profc_strchrnul+9
	lds	r18, __profc_strchrnul+10
	lds	r19, __profc_strchrnul+11
	lds	r20, __profc_strchrnul+12
	lds	r21, __profc_strchrnul+13
	lds	r22, __profc_strchrnul+14
	lds	r23, __profc_strchrnul+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strchrnul+15, r23
	sts	__profc_strchrnul+14, r22
	sts	__profc_strchrnul+13, r21
	sts	__profc_strchrnul+12, r20
	sts	__profc_strchrnul+11, r19
	sts	__profc_strchrnul+10, r18
	sts	__profc_strchrnul+9, r25
	sts	__profc_strchrnul+8, r24
	rjmp	.LBB8_8
.LBB8_8:                                ;   in Loop: Header=BB8_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB8_1
.LBB8_9:
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
	lds	r24, __profc_strchr
	lds	r25, __profc_strchr+1
	lds	r18, __profc_strchr+2
	lds	r19, __profc_strchr+3
	lds	r20, __profc_strchr+4
	lds	r21, __profc_strchr+5
	lds	r22, __profc_strchr+6
	lds	r23, __profc_strchr+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strchr+7, r23
	sts	__profc_strchr+6, r22
	sts	__profc_strchr+5, r21
	sts	__profc_strchr+4, r20
	sts	__profc_strchr+3, r19
	sts	__profc_strchr+2, r18
	sts	__profc_strchr+1, r25
	sts	__profc_strchr, r24
	rjmp	.LBB9_2
.LBB9_1:                                ;   in Loop: Header=BB9_2 Depth=1
	lds	r24, __profc_strchr+8
	lds	r25, __profc_strchr+9
	lds	r18, __profc_strchr+10
	lds	r19, __profc_strchr+11
	lds	r20, __profc_strchr+12
	lds	r21, __profc_strchr+13
	lds	r22, __profc_strchr+14
	lds	r23, __profc_strchr+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strchr+15, r23
	sts	__profc_strchr+14, r22
	sts	__profc_strchr+13, r21
	sts	__profc_strchr+12, r20
	sts	__profc_strchr+11, r19
	sts	__profc_strchr+10, r18
	sts	__profc_strchr+9, r25
	sts	__profc_strchr+8, r24
	rjmp	.LBB9_2
.LBB9_2:                                ; =>This Inner Loop Header: Depth=1
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
	breq	.LBB9_3
	rjmp	.LBB9_4
.LBB9_3:
	lds	r24, __profc_strchr+16
	lds	r25, __profc_strchr+17
	lds	r18, __profc_strchr+18
	lds	r19, __profc_strchr+19
	lds	r20, __profc_strchr+20
	lds	r21, __profc_strchr+21
	lds	r22, __profc_strchr+22
	lds	r23, __profc_strchr+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strchr+23, r23
	sts	__profc_strchr+22, r22
	sts	__profc_strchr+21, r21
	sts	__profc_strchr+20, r20
	sts	__profc_strchr+19, r19
	sts	__profc_strchr+18, r18
	sts	__profc_strchr+17, r25
	sts	__profc_strchr+16, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB9_7
.LBB9_4:                                ;   in Loop: Header=BB9_2 Depth=1
	rjmp	.LBB9_5
.LBB9_5:                                ;   in Loop: Header=BB9_2 Depth=1
	ldd	r26, Y+3
	ldd	r27, Y+4
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	ld	r24, X
	cpi	r24, 0
	breq	.LBB9_6
	rjmp	.LBB9_1
.LBB9_6:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB9_7
.LBB9_7:
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
	lds	r24, __profc_strcmp
	lds	r25, __profc_strcmp+1
	lds	r18, __profc_strcmp+2
	lds	r19, __profc_strcmp+3
	lds	r20, __profc_strcmp+4
	lds	r21, __profc_strcmp+5
	lds	r22, __profc_strcmp+6
	lds	r23, __profc_strcmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strcmp+7, r23
	sts	__profc_strcmp+6, r22
	sts	__profc_strcmp+5, r21
	sts	__profc_strcmp+4, r20
	sts	__profc_strcmp+3, r19
	sts	__profc_strcmp+2, r18
	sts	__profc_strcmp+1, r25
	sts	__profc_strcmp, r24
	rjmp	.LBB10_1
.LBB10_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r24, X
	mov	r18, r24
	mov	r19, r24
	lsl	r19
	sbc	r19, r19
	ldd	r26, Y+7
	ldd	r27, Y+8
	ld	r24, X
	mov	r20, r24
	mov	r21, r24
	lsl	r21
	sbc	r21, r21
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	breq	.LBB10_2
	rjmp	.LBB10_6
.LBB10_2:                               ;   in Loop: Header=BB10_1 Depth=1
	lds	r24, __profc_strcmp+16
	lds	r25, __profc_strcmp+17
	lds	r18, __profc_strcmp+18
	lds	r19, __profc_strcmp+19
	lds	r20, __profc_strcmp+20
	lds	r21, __profc_strcmp+21
	lds	r22, __profc_strcmp+22
	lds	r23, __profc_strcmp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strcmp+23, r23
	sts	__profc_strcmp+22, r22
	sts	__profc_strcmp+21, r21
	sts	__profc_strcmp+20, r20
	sts	__profc_strcmp+19, r19
	sts	__profc_strcmp+18, r18
	sts	__profc_strcmp+17, r25
	sts	__profc_strcmp+16, r24
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r18, X
	std	Y+2, r18                        ; 1-byte Folded Spill
	mov	r24, r18
	mov	r25, r18
	lsl	r25
	sbc	r25, r25
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	brne	.LBB10_3
	rjmp	.LBB10_4
.LBB10_3:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB10_5
	rjmp	.LBB10_6
.LBB10_4:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB10_3
.LBB10_5:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_strcmp+24
	lds	r19, __profc_strcmp+25
	lds	r20, __profc_strcmp+26
	lds	r21, __profc_strcmp+27
	lds	r22, __profc_strcmp+28
	lds	r23, __profc_strcmp+29
	lds	r30, __profc_strcmp+30
	lds	r31, __profc_strcmp+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_strcmp+31, r31
	sts	__profc_strcmp+30, r30
	sts	__profc_strcmp+29, r23
	sts	__profc_strcmp+28, r22
	sts	__profc_strcmp+27, r21
	sts	__profc_strcmp+26, r20
	sts	__profc_strcmp+25, r19
	sts	__profc_strcmp+24, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB10_6
.LBB10_6:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB10_7
	rjmp	.LBB10_9
.LBB10_7:                               ;   in Loop: Header=BB10_1 Depth=1
	lds	r24, __profc_strcmp+8
	lds	r25, __profc_strcmp+9
	lds	r18, __profc_strcmp+10
	lds	r19, __profc_strcmp+11
	lds	r20, __profc_strcmp+12
	lds	r21, __profc_strcmp+13
	lds	r22, __profc_strcmp+14
	lds	r23, __profc_strcmp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strcmp+15, r23
	sts	__profc_strcmp+14, r22
	sts	__profc_strcmp+13, r21
	sts	__profc_strcmp+12, r20
	sts	__profc_strcmp+11, r19
	sts	__profc_strcmp+10, r18
	sts	__profc_strcmp+9, r25
	sts	__profc_strcmp+8, r24
	rjmp	.LBB10_8
.LBB10_8:                               ;   in Loop: Header=BB10_1 Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r24, 1
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB10_1
.LBB10_9:
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r24, X
	clr	r25
	ldd	r26, Y+7
	ldd	r27, Y+8
	ld	r18, X
	clr	r19
	sub	r24, r18
	sbc	r25, r19
	adiw	r28, 10
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
	lds	r24, __profc_strlen
	lds	r25, __profc_strlen+1
	lds	r18, __profc_strlen+2
	lds	r19, __profc_strlen+3
	lds	r20, __profc_strlen+4
	lds	r21, __profc_strlen+5
	lds	r22, __profc_strlen+6
	lds	r23, __profc_strlen+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strlen+7, r23
	sts	__profc_strlen+6, r22
	sts	__profc_strlen+5, r21
	sts	__profc_strlen+4, r20
	sts	__profc_strlen+3, r19
	sts	__profc_strlen+2, r18
	sts	__profc_strlen+1, r25
	sts	__profc_strlen, r24
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
	brne	.LBB11_2
	rjmp	.LBB11_4
.LBB11_2:                               ;   in Loop: Header=BB11_1 Depth=1
	lds	r24, __profc_strlen+8
	lds	r25, __profc_strlen+9
	lds	r18, __profc_strlen+10
	lds	r19, __profc_strlen+11
	lds	r20, __profc_strlen+12
	lds	r21, __profc_strlen+13
	lds	r22, __profc_strlen+14
	lds	r23, __profc_strlen+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strlen+15, r23
	sts	__profc_strlen+14, r22
	sts	__profc_strlen+13, r21
	sts	__profc_strlen+12, r20
	sts	__profc_strlen+11, r19
	sts	__profc_strlen+10, r18
	sts	__profc_strlen+9, r25
	sts	__profc_strlen+8, r24
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
	sbiw	r28, 20
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+18, r25
	std	Y+17, r24
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	lds	r24, __profc_strncmp
	lds	r25, __profc_strncmp+1
	lds	r18, __profc_strncmp+2
	lds	r19, __profc_strncmp+3
	lds	r20, __profc_strncmp+4
	lds	r21, __profc_strncmp+5
	lds	r22, __profc_strncmp+6
	lds	r23, __profc_strncmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+7, r23
	sts	__profc_strncmp+6, r22
	sts	__profc_strncmp+5, r21
	sts	__profc_strncmp+4, r20
	sts	__profc_strncmp+3, r19
	sts	__profc_strncmp+2, r18
	sts	__profc_strncmp+1, r25
	sts	__profc_strncmp, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+10, r25
	std	Y+9, r24
	ldd	r30, Y+13
	ldd	r31, Y+14
	mov	r24, r30
	mov	r25, r31
	sbiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	mov	r25, r30
	mov	r24, r31
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB12_1
	rjmp	.LBB12_2
.LBB12_1:
	lds	r24, __profc_strncmp+8
	lds	r25, __profc_strncmp+9
	lds	r18, __profc_strncmp+10
	lds	r19, __profc_strncmp+11
	lds	r20, __profc_strncmp+12
	lds	r21, __profc_strncmp+13
	lds	r22, __profc_strncmp+14
	lds	r23, __profc_strncmp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+15, r23
	sts	__profc_strncmp+14, r22
	sts	__profc_strncmp+13, r21
	sts	__profc_strncmp+12, r20
	sts	__profc_strncmp+11, r19
	sts	__profc_strncmp+10, r18
	sts	__profc_strncmp+9, r25
	sts	__profc_strncmp+8, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB12_16
.LBB12_2:
	rjmp	.LBB12_3
.LBB12_3:                               ; =>This Inner Loop Header: Depth=1
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r25, X
	mov	r24, r1
	cpi	r25, 0
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB12_4
	rjmp	.LBB12_12
.LBB12_4:                               ;   in Loop: Header=BB12_3 Depth=1
	lds	r24, __profc_strncmp+56
	lds	r25, __profc_strncmp+57
	lds	r18, __profc_strncmp+58
	lds	r19, __profc_strncmp+59
	lds	r20, __profc_strncmp+60
	lds	r21, __profc_strncmp+61
	lds	r22, __profc_strncmp+62
	lds	r23, __profc_strncmp+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+63, r23
	sts	__profc_strncmp+62, r22
	sts	__profc_strncmp+61, r21
	sts	__profc_strncmp+60, r20
	sts	__profc_strncmp+59, r19
	sts	__profc_strncmp+58, r18
	sts	__profc_strncmp+57, r25
	sts	__profc_strncmp+56, r24
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r25, X
	mov	r24, r1
	cpi	r25, 0
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB12_5
	rjmp	.LBB12_12
.LBB12_5:                               ;   in Loop: Header=BB12_3 Depth=1
	lds	r24, __profc_strncmp+64
	lds	r25, __profc_strncmp+65
	lds	r18, __profc_strncmp+66
	lds	r19, __profc_strncmp+67
	lds	r20, __profc_strncmp+68
	lds	r21, __profc_strncmp+69
	lds	r22, __profc_strncmp+70
	lds	r23, __profc_strncmp+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+71, r23
	sts	__profc_strncmp+70, r22
	sts	__profc_strncmp+69, r21
	sts	__profc_strncmp+68, r20
	sts	__profc_strncmp+67, r19
	sts	__profc_strncmp+66, r18
	sts	__profc_strncmp+65, r25
	sts	__profc_strncmp+64, r24
	rjmp	.LBB12_6
.LBB12_6:                               ;   in Loop: Header=BB12_3 Depth=1
	lds	r24, __profc_strncmp+40
	lds	r25, __profc_strncmp+41
	lds	r18, __profc_strncmp+42
	lds	r19, __profc_strncmp+43
	lds	r20, __profc_strncmp+44
	lds	r21, __profc_strncmp+45
	lds	r22, __profc_strncmp+46
	lds	r23, __profc_strncmp+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+47, r23
	sts	__profc_strncmp+46, r22
	sts	__profc_strncmp+45, r21
	sts	__profc_strncmp+44, r20
	sts	__profc_strncmp+43, r19
	sts	__profc_strncmp+42, r18
	sts	__profc_strncmp+41, r25
	sts	__profc_strncmp+40, r24
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB12_7
	rjmp	.LBB12_12
.LBB12_7:                               ;   in Loop: Header=BB12_3 Depth=1
	lds	r24, __profc_strncmp+48
	lds	r25, __profc_strncmp+49
	lds	r18, __profc_strncmp+50
	lds	r19, __profc_strncmp+51
	lds	r20, __profc_strncmp+52
	lds	r21, __profc_strncmp+53
	lds	r22, __profc_strncmp+54
	lds	r23, __profc_strncmp+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+55, r23
	sts	__profc_strncmp+54, r22
	sts	__profc_strncmp+53, r21
	sts	__profc_strncmp+52, r20
	sts	__profc_strncmp+51, r19
	sts	__profc_strncmp+50, r18
	sts	__profc_strncmp+49, r25
	sts	__profc_strncmp+48, r24
	rjmp	.LBB12_8
.LBB12_8:                               ;   in Loop: Header=BB12_3 Depth=1
	lds	r24, __profc_strncmp+24
	lds	r25, __profc_strncmp+25
	lds	r18, __profc_strncmp+26
	lds	r19, __profc_strncmp+27
	lds	r20, __profc_strncmp+28
	lds	r21, __profc_strncmp+29
	lds	r22, __profc_strncmp+30
	lds	r23, __profc_strncmp+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+31, r23
	sts	__profc_strncmp+30, r22
	sts	__profc_strncmp+29, r21
	sts	__profc_strncmp+28, r20
	sts	__profc_strncmp+27, r19
	sts	__profc_strncmp+26, r18
	sts	__profc_strncmp+25, r25
	sts	__profc_strncmp+24, r24
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r24, X
	mov	r18, r24
	clr	r19
	std	Y+3, r19                        ; 2-byte Folded Spill
	std	Y+2, r18                        ; 2-byte Folded Spill
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r24, X
	mov	r20, r24
	clr	r21
	std	Y+5, r21                        ; 2-byte Folded Spill
	std	Y+4, r20                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+7, r24                        ; 1-byte Folded Spill
	breq	.LBB12_9
	rjmp	.LBB12_10
.LBB12_9:                               ;   in Loop: Header=BB12_3 Depth=1
	ldd	r18, Y+2                        ; 2-byte Folded Reload
	ldd	r19, Y+3                        ; 2-byte Folded Reload
	ldd	r20, Y+4                        ; 2-byte Folded Reload
	ldd	r21, Y+5                        ; 2-byte Folded Reload
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+8, r24                        ; 1-byte Folded Spill
	breq	.LBB12_11
	rjmp	.LBB12_12
.LBB12_10:                              ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	rjmp	.LBB12_9
.LBB12_11:                              ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_strncmp+32
	lds	r19, __profc_strncmp+33
	lds	r20, __profc_strncmp+34
	lds	r21, __profc_strncmp+35
	lds	r22, __profc_strncmp+36
	lds	r23, __profc_strncmp+37
	lds	r30, __profc_strncmp+38
	lds	r31, __profc_strncmp+39
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_strncmp+39, r31
	sts	__profc_strncmp+38, r30
	sts	__profc_strncmp+37, r23
	sts	__profc_strncmp+36, r22
	sts	__profc_strncmp+35, r21
	sts	__profc_strncmp+34, r20
	sts	__profc_strncmp+33, r19
	sts	__profc_strncmp+32, r18
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB12_12
.LBB12_12:                              ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB12_13
	rjmp	.LBB12_15
.LBB12_13:                              ;   in Loop: Header=BB12_3 Depth=1
	lds	r24, __profc_strncmp+16
	lds	r25, __profc_strncmp+17
	lds	r18, __profc_strncmp+18
	lds	r19, __profc_strncmp+19
	lds	r20, __profc_strncmp+20
	lds	r21, __profc_strncmp+21
	lds	r22, __profc_strncmp+22
	lds	r23, __profc_strncmp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncmp+23, r23
	sts	__profc_strncmp+22, r22
	sts	__profc_strncmp+21, r21
	sts	__profc_strncmp+20, r20
	sts	__profc_strncmp+19, r19
	sts	__profc_strncmp+18, r18
	sts	__profc_strncmp+17, r25
	sts	__profc_strncmp+16, r24
	rjmp	.LBB12_14
.LBB12_14:                              ;   in Loop: Header=BB12_3 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	sbiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB12_3
.LBB12_15:
	ldd	r26, Y+11
	ldd	r27, Y+12
	ld	r24, X
	clr	r25
	ldd	r26, Y+9
	ldd	r27, Y+10
	ld	r18, X
	clr	r19
	sub	r24, r18
	sbc	r25, r19
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB12_16
.LBB12_16:
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
	lds	r24, __profc_swab
	lds	r25, __profc_swab+1
	lds	r18, __profc_swab+2
	lds	r19, __profc_swab+3
	lds	r20, __profc_swab+4
	lds	r21, __profc_swab+5
	lds	r22, __profc_swab+6
	lds	r23, __profc_swab+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_swab+7, r23
	sts	__profc_swab+6, r22
	sts	__profc_swab+5, r21
	sts	__profc_swab+4, r20
	sts	__profc_swab+3, r19
	sts	__profc_swab+2, r18
	sts	__profc_swab+1, r25
	sts	__profc_swab, r24
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
	brge	.LBB13_2
	rjmp	.LBB13_4
.LBB13_2:                               ;   in Loop: Header=BB13_1 Depth=1
	lds	r24, __profc_swab+8
	lds	r25, __profc_swab+9
	lds	r18, __profc_swab+10
	lds	r19, __profc_swab+11
	lds	r20, __profc_swab+12
	lds	r21, __profc_swab+13
	lds	r22, __profc_swab+14
	lds	r23, __profc_swab+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_swab+15, r23
	sts	__profc_swab+14, r22
	sts	__profc_swab+13, r21
	sts	__profc_swab+12, r20
	sts	__profc_swab+11, r19
	sts	__profc_swab+10, r18
	sts	__profc_swab+9, r25
	sts	__profc_swab+8, r24
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
	lds	r24, __profc_isalpha
	lds	r25, __profc_isalpha+1
	lds	r18, __profc_isalpha+2
	lds	r19, __profc_isalpha+3
	lds	r20, __profc_isalpha+4
	lds	r21, __profc_isalpha+5
	lds	r22, __profc_isalpha+6
	lds	r23, __profc_isalpha+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isalpha+7, r23
	sts	__profc_isalpha+6, r22
	sts	__profc_isalpha+5, r21
	sts	__profc_isalpha+4, r20
	sts	__profc_isalpha+3, r19
	sts	__profc_isalpha+2, r18
	sts	__profc_isalpha+1, r25
	sts	__profc_isalpha, r24
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
	lds	r24, __profc_isascii
	lds	r25, __profc_isascii+1
	lds	r18, __profc_isascii+2
	lds	r19, __profc_isascii+3
	lds	r20, __profc_isascii+4
	lds	r21, __profc_isascii+5
	lds	r22, __profc_isascii+6
	lds	r23, __profc_isascii+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isascii+7, r23
	sts	__profc_isascii+6, r22
	sts	__profc_isascii+5, r21
	sts	__profc_isascii+4, r20
	sts	__profc_isascii+3, r19
	sts	__profc_isascii+2, r18
	sts	__profc_isascii+1, r25
	sts	__profc_isascii, r24
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
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	lds	r24, __profc_isblank
	lds	r25, __profc_isblank+1
	lds	r18, __profc_isblank+2
	lds	r19, __profc_isblank+3
	lds	r20, __profc_isblank+4
	lds	r21, __profc_isblank+5
	lds	r22, __profc_isblank+6
	lds	r23, __profc_isblank+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isblank+7, r23
	sts	__profc_isblank+6, r22
	sts	__profc_isblank+5, r21
	sts	__profc_isblank+4, r20
	sts	__profc_isblank+3, r19
	sts	__profc_isblank+2, r18
	sts	__profc_isblank+1, r25
	sts	__profc_isblank, r24
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB16_1
	rjmp	.LBB16_5
.LBB16_1:
	lds	r24, __profc_isblank+8
	lds	r25, __profc_isblank+9
	lds	r18, __profc_isblank+10
	lds	r19, __profc_isblank+11
	lds	r20, __profc_isblank+12
	lds	r21, __profc_isblank+13
	lds	r22, __profc_isblank+14
	lds	r23, __profc_isblank+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isblank+15, r23
	sts	__profc_isblank+14, r22
	sts	__profc_isblank+13, r21
	sts	__profc_isblank+12, r20
	sts	__profc_isblank+11, r19
	sts	__profc_isblank+10, r18
	sts	__profc_isblank+9, r25
	sts	__profc_isblank+8, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	mov	r18, r24
	std	Y+2, r18                        ; 1-byte Folded Spill
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 9
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB16_2
	rjmp	.LBB16_3
.LBB16_2:
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cpi	r18, 9
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB16_4
	rjmp	.LBB16_5
.LBB16_3:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB16_2
.LBB16_4:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_isblank+16
	lds	r19, __profc_isblank+17
	lds	r20, __profc_isblank+18
	lds	r21, __profc_isblank+19
	lds	r22, __profc_isblank+20
	lds	r23, __profc_isblank+21
	lds	r30, __profc_isblank+22
	lds	r31, __profc_isblank+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_isblank+23, r31
	sts	__profc_isblank+22, r30
	sts	__profc_isblank+21, r23
	sts	__profc_isblank+20, r22
	sts	__profc_isblank+19, r21
	sts	__profc_isblank+18, r20
	sts	__profc_isblank+17, r19
	sts	__profc_isblank+16, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB16_5
.LBB16_5:
	ldd	r18, Y+6                        ; 1-byte Folded Reload
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
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	lds	r24, __profc_iscntrl
	lds	r25, __profc_iscntrl+1
	lds	r18, __profc_iscntrl+2
	lds	r19, __profc_iscntrl+3
	lds	r20, __profc_iscntrl+4
	lds	r21, __profc_iscntrl+5
	lds	r22, __profc_iscntrl+6
	lds	r23, __profc_iscntrl+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iscntrl+7, r23
	sts	__profc_iscntrl+6, r22
	sts	__profc_iscntrl+5, r21
	sts	__profc_iscntrl+4, r20
	sts	__profc_iscntrl+3, r19
	sts	__profc_iscntrl+2, r18
	sts	__profc_iscntrl+1, r25
	sts	__profc_iscntrl, r24
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB17_1
	rjmp	.LBB17_5
.LBB17_1:
	lds	r24, __profc_iscntrl+8
	lds	r25, __profc_iscntrl+9
	lds	r18, __profc_iscntrl+10
	lds	r19, __profc_iscntrl+11
	lds	r20, __profc_iscntrl+12
	lds	r21, __profc_iscntrl+13
	lds	r22, __profc_iscntrl+14
	lds	r23, __profc_iscntrl+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iscntrl+15, r23
	sts	__profc_iscntrl+14, r22
	sts	__profc_iscntrl+13, r21
	sts	__profc_iscntrl+12, r20
	sts	__profc_iscntrl+11, r19
	sts	__profc_iscntrl+10, r18
	sts	__profc_iscntrl+9, r25
	sts	__profc_iscntrl+8, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	mov	r18, r24
	std	Y+2, r18                        ; 1-byte Folded Spill
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 127
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB17_2
	rjmp	.LBB17_3
.LBB17_2:
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cpi	r18, 127
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB17_4
	rjmp	.LBB17_5
.LBB17_3:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB17_2
.LBB17_4:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_iscntrl+16
	lds	r19, __profc_iscntrl+17
	lds	r20, __profc_iscntrl+18
	lds	r21, __profc_iscntrl+19
	lds	r22, __profc_iscntrl+20
	lds	r23, __profc_iscntrl+21
	lds	r30, __profc_iscntrl+22
	lds	r31, __profc_iscntrl+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_iscntrl+23, r31
	sts	__profc_iscntrl+22, r30
	sts	__profc_iscntrl+21, r23
	sts	__profc_iscntrl+20, r22
	sts	__profc_iscntrl+19, r21
	sts	__profc_iscntrl+18, r20
	sts	__profc_iscntrl+17, r19
	sts	__profc_iscntrl+16, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB17_5
.LBB17_5:
	ldd	r18, Y+6                        ; 1-byte Folded Reload
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
	lds	r24, __profc_isdigit
	lds	r25, __profc_isdigit+1
	lds	r18, __profc_isdigit+2
	lds	r19, __profc_isdigit+3
	lds	r20, __profc_isdigit+4
	lds	r21, __profc_isdigit+5
	lds	r22, __profc_isdigit+6
	lds	r23, __profc_isdigit+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isdigit+7, r23
	sts	__profc_isdigit+6, r22
	sts	__profc_isdigit+5, r21
	sts	__profc_isdigit+4, r20
	sts	__profc_isdigit+3, r19
	sts	__profc_isdigit+2, r18
	sts	__profc_isdigit+1, r25
	sts	__profc_isdigit, r24
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
	lds	r24, __profc_isgraph
	lds	r25, __profc_isgraph+1
	lds	r18, __profc_isgraph+2
	lds	r19, __profc_isgraph+3
	lds	r20, __profc_isgraph+4
	lds	r21, __profc_isgraph+5
	lds	r22, __profc_isgraph+6
	lds	r23, __profc_isgraph+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isgraph+7, r23
	sts	__profc_isgraph+6, r22
	sts	__profc_isgraph+5, r21
	sts	__profc_isgraph+4, r20
	sts	__profc_isgraph+3, r19
	sts	__profc_isgraph+2, r18
	sts	__profc_isgraph+1, r25
	sts	__profc_isgraph, r24
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
	lds	r24, __profc_islower
	lds	r25, __profc_islower+1
	lds	r18, __profc_islower+2
	lds	r19, __profc_islower+3
	lds	r20, __profc_islower+4
	lds	r21, __profc_islower+5
	lds	r22, __profc_islower+6
	lds	r23, __profc_islower+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_islower+7, r23
	sts	__profc_islower+6, r22
	sts	__profc_islower+5, r21
	sts	__profc_islower+4, r20
	sts	__profc_islower+3, r19
	sts	__profc_islower+2, r18
	sts	__profc_islower+1, r25
	sts	__profc_islower, r24
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
	lds	r24, __profc_isprint
	lds	r25, __profc_isprint+1
	lds	r18, __profc_isprint+2
	lds	r19, __profc_isprint+3
	lds	r20, __profc_isprint+4
	lds	r21, __profc_isprint+5
	lds	r22, __profc_isprint+6
	lds	r23, __profc_isprint+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isprint+7, r23
	sts	__profc_isprint+6, r22
	sts	__profc_isprint+5, r21
	sts	__profc_isprint+4, r20
	sts	__profc_isprint+3, r19
	sts	__profc_isprint+2, r18
	sts	__profc_isprint+1, r25
	sts	__profc_isprint, r24
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
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	lds	r24, __profc_isspace
	lds	r25, __profc_isspace+1
	lds	r18, __profc_isspace+2
	lds	r19, __profc_isspace+3
	lds	r20, __profc_isspace+4
	lds	r21, __profc_isspace+5
	lds	r22, __profc_isspace+6
	lds	r23, __profc_isspace+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isspace+7, r23
	sts	__profc_isspace+6, r22
	sts	__profc_isspace+5, r21
	sts	__profc_isspace+4, r20
	sts	__profc_isspace+3, r19
	sts	__profc_isspace+2, r18
	sts	__profc_isspace+1, r25
	sts	__profc_isspace, r24
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB22_1
	rjmp	.LBB22_5
.LBB22_1:
	lds	r24, __profc_isspace+8
	lds	r25, __profc_isspace+9
	lds	r18, __profc_isspace+10
	lds	r19, __profc_isspace+11
	lds	r20, __profc_isspace+12
	lds	r21, __profc_isspace+13
	lds	r22, __profc_isspace+14
	lds	r23, __profc_isspace+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isspace+15, r23
	sts	__profc_isspace+14, r22
	sts	__profc_isspace+13, r21
	sts	__profc_isspace+12, r20
	sts	__profc_isspace+11, r19
	sts	__profc_isspace+10, r18
	sts	__profc_isspace+9, r25
	sts	__profc_isspace+8, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	sbiw	r24, 9
	mov	r18, r24
	std	Y+2, r18                        ; 1-byte Folded Spill
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 5
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	brlo	.LBB22_2
	rjmp	.LBB22_3
.LBB22_2:
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cpi	r18, 5
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB22_4
	rjmp	.LBB22_5
.LBB22_3:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB22_2
.LBB22_4:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_isspace+16
	lds	r19, __profc_isspace+17
	lds	r20, __profc_isspace+18
	lds	r21, __profc_isspace+19
	lds	r22, __profc_isspace+20
	lds	r23, __profc_isspace+21
	lds	r30, __profc_isspace+22
	lds	r31, __profc_isspace+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_isspace+23, r31
	sts	__profc_isspace+22, r30
	sts	__profc_isspace+21, r23
	sts	__profc_isspace+20, r22
	sts	__profc_isspace+19, r21
	sts	__profc_isspace+18, r20
	sts	__profc_isspace+17, r19
	sts	__profc_isspace+16, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB22_5
.LBB22_5:
	ldd	r18, Y+6                        ; 1-byte Folded Reload
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
	lds	r24, __profc_isupper
	lds	r25, __profc_isupper+1
	lds	r18, __profc_isupper+2
	lds	r19, __profc_isupper+3
	lds	r20, __profc_isupper+4
	lds	r21, __profc_isupper+5
	lds	r22, __profc_isupper+6
	lds	r23, __profc_isupper+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_isupper+7, r23
	sts	__profc_isupper+6, r22
	sts	__profc_isupper+5, r21
	sts	__profc_isupper+4, r20
	sts	__profc_isupper+3, r19
	sts	__profc_isupper+2, r18
	sts	__profc_isupper+1, r25
	sts	__profc_isupper, r24
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
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	lds	r24, __profc_iswcntrl
	lds	r25, __profc_iswcntrl+1
	lds	r18, __profc_iswcntrl+2
	lds	r19, __profc_iswcntrl+3
	lds	r20, __profc_iswcntrl+4
	lds	r21, __profc_iswcntrl+5
	lds	r22, __profc_iswcntrl+6
	lds	r23, __profc_iswcntrl+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswcntrl+7, r23
	sts	__profc_iswcntrl+6, r22
	sts	__profc_iswcntrl+5, r21
	sts	__profc_iswcntrl+4, r20
	sts	__profc_iswcntrl+3, r19
	sts	__profc_iswcntrl+2, r18
	sts	__profc_iswcntrl+1, r25
	sts	__profc_iswcntrl, r24
	ldd	r20, Y+7
	ldd	r21, Y+8
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 32
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB24_1
	rjmp	.LBB24_9
.LBB24_1:
	lds	r24, __profc_iswcntrl+40
	lds	r25, __profc_iswcntrl+41
	lds	r18, __profc_iswcntrl+42
	lds	r19, __profc_iswcntrl+43
	lds	r20, __profc_iswcntrl+44
	lds	r21, __profc_iswcntrl+45
	lds	r22, __profc_iswcntrl+46
	lds	r23, __profc_iswcntrl+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswcntrl+47, r23
	sts	__profc_iswcntrl+46, r22
	sts	__profc_iswcntrl+45, r21
	sts	__profc_iswcntrl+44, r20
	sts	__profc_iswcntrl+43, r19
	sts	__profc_iswcntrl+42, r18
	sts	__profc_iswcntrl+41, r25
	sts	__profc_iswcntrl+40, r24
	ldd	r20, Y+7
	ldd	r21, Y+8
	subi	r20, 127
	sbci	r21, 0
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 33
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB24_2
	rjmp	.LBB24_9
.LBB24_2:
	lds	r24, __profc_iswcntrl+48
	lds	r25, __profc_iswcntrl+49
	lds	r18, __profc_iswcntrl+50
	lds	r19, __profc_iswcntrl+51
	lds	r20, __profc_iswcntrl+52
	lds	r21, __profc_iswcntrl+53
	lds	r22, __profc_iswcntrl+54
	lds	r23, __profc_iswcntrl+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswcntrl+55, r23
	sts	__profc_iswcntrl+54, r22
	sts	__profc_iswcntrl+53, r21
	sts	__profc_iswcntrl+52, r20
	sts	__profc_iswcntrl+51, r19
	sts	__profc_iswcntrl+50, r18
	sts	__profc_iswcntrl+49, r25
	sts	__profc_iswcntrl+48, r24
	rjmp	.LBB24_3
.LBB24_3:
	lds	r24, __profc_iswcntrl+24
	lds	r25, __profc_iswcntrl+25
	lds	r18, __profc_iswcntrl+26
	lds	r19, __profc_iswcntrl+27
	lds	r20, __profc_iswcntrl+28
	lds	r21, __profc_iswcntrl+29
	lds	r22, __profc_iswcntrl+30
	lds	r23, __profc_iswcntrl+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswcntrl+31, r23
	sts	__profc_iswcntrl+30, r22
	sts	__profc_iswcntrl+29, r21
	sts	__profc_iswcntrl+28, r20
	sts	__profc_iswcntrl+27, r19
	sts	__profc_iswcntrl+26, r18
	sts	__profc_iswcntrl+25, r25
	sts	__profc_iswcntrl+24, r24
	ldd	r20, Y+7
	ldd	r21, Y+8
	subi	r20, 40
	sbci	r21, 32
	ldi	r24, 1
	mov	r18, r20
	mov	r25, r21
	cpi	r18, 2
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB24_4
	rjmp	.LBB24_9
.LBB24_4:
	lds	r24, __profc_iswcntrl+32
	lds	r25, __profc_iswcntrl+33
	lds	r18, __profc_iswcntrl+34
	lds	r19, __profc_iswcntrl+35
	lds	r20, __profc_iswcntrl+36
	lds	r21, __profc_iswcntrl+37
	lds	r22, __profc_iswcntrl+38
	lds	r23, __profc_iswcntrl+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswcntrl+39, r23
	sts	__profc_iswcntrl+38, r22
	sts	__profc_iswcntrl+37, r21
	sts	__profc_iswcntrl+36, r20
	sts	__profc_iswcntrl+35, r19
	sts	__profc_iswcntrl+34, r18
	sts	__profc_iswcntrl+33, r25
	sts	__profc_iswcntrl+32, r24
	rjmp	.LBB24_5
.LBB24_5:
	lds	r24, __profc_iswcntrl+8
	lds	r25, __profc_iswcntrl+9
	lds	r18, __profc_iswcntrl+10
	lds	r19, __profc_iswcntrl+11
	lds	r20, __profc_iswcntrl+12
	lds	r21, __profc_iswcntrl+13
	lds	r22, __profc_iswcntrl+14
	lds	r23, __profc_iswcntrl+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswcntrl+15, r23
	sts	__profc_iswcntrl+14, r22
	sts	__profc_iswcntrl+13, r21
	sts	__profc_iswcntrl+12, r20
	sts	__profc_iswcntrl+11, r19
	sts	__profc_iswcntrl+10, r18
	sts	__profc_iswcntrl+9, r25
	sts	__profc_iswcntrl+8, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r24, 7
	mov	r18, r24
	std	Y+2, r18                        ; 1-byte Folded Spill
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 3
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	brlo	.LBB24_6
	rjmp	.LBB24_7
.LBB24_6:
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cpi	r18, 3
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB24_8
	rjmp	.LBB24_9
.LBB24_7:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB24_6
.LBB24_8:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_iswcntrl+16
	lds	r19, __profc_iswcntrl+17
	lds	r20, __profc_iswcntrl+18
	lds	r21, __profc_iswcntrl+19
	lds	r22, __profc_iswcntrl+20
	lds	r23, __profc_iswcntrl+21
	lds	r30, __profc_iswcntrl+22
	lds	r31, __profc_iswcntrl+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_iswcntrl+23, r31
	sts	__profc_iswcntrl+22, r30
	sts	__profc_iswcntrl+21, r23
	sts	__profc_iswcntrl+20, r22
	sts	__profc_iswcntrl+19, r21
	sts	__profc_iswcntrl+18, r20
	sts	__profc_iswcntrl+17, r19
	sts	__profc_iswcntrl+16, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB24_9
.LBB24_9:
	ldd	r18, Y+6                        ; 1-byte Folded Reload
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
	lds	r24, __profc_iswdigit
	lds	r25, __profc_iswdigit+1
	lds	r18, __profc_iswdigit+2
	lds	r19, __profc_iswdigit+3
	lds	r20, __profc_iswdigit+4
	lds	r21, __profc_iswdigit+5
	lds	r22, __profc_iswdigit+6
	lds	r23, __profc_iswdigit+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswdigit+7, r23
	sts	__profc_iswdigit+6, r22
	sts	__profc_iswdigit+5, r21
	sts	__profc_iswdigit+4, r20
	sts	__profc_iswdigit+3, r19
	sts	__profc_iswdigit+2, r18
	sts	__profc_iswdigit+1, r25
	sts	__profc_iswdigit, r24
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
	lds	r24, __profc_iswprint
	lds	r25, __profc_iswprint+1
	lds	r18, __profc_iswprint+2
	lds	r19, __profc_iswprint+3
	lds	r20, __profc_iswprint+4
	lds	r21, __profc_iswprint+5
	lds	r22, __profc_iswprint+6
	lds	r23, __profc_iswprint+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+7, r23
	sts	__profc_iswprint+6, r22
	sts	__profc_iswprint+5, r21
	sts	__profc_iswprint+4, r20
	sts	__profc_iswprint+3, r19
	sts	__profc_iswprint+2, r18
	sts	__profc_iswprint+1, r25
	sts	__profc_iswprint, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r25, r18
	mov	r24, r19
	cpi	r25, -1
	cpc	r24, r1
	brlo	.LBB26_1
	rjmp	.LBB26_4
.LBB26_1:
	lds	r24, __profc_iswprint+8
	lds	r25, __profc_iswprint+9
	lds	r18, __profc_iswprint+10
	lds	r19, __profc_iswprint+11
	lds	r20, __profc_iswprint+12
	lds	r21, __profc_iswprint+13
	lds	r22, __profc_iswprint+14
	lds	r23, __profc_iswprint+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+15, r23
	sts	__profc_iswprint+14, r22
	sts	__profc_iswprint+13, r21
	sts	__profc_iswprint+12, r20
	sts	__profc_iswprint+11, r19
	sts	__profc_iswprint+10, r18
	sts	__profc_iswprint+9, r25
	sts	__profc_iswprint+8, r24
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
	rjmp	.LBB26_15
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
	brsh	.LBB26_5
	rjmp	.LBB26_9
.LBB26_5:
	lds	r24, __profc_iswprint+40
	lds	r25, __profc_iswprint+41
	lds	r18, __profc_iswprint+42
	lds	r19, __profc_iswprint+43
	lds	r20, __profc_iswprint+44
	lds	r21, __profc_iswprint+45
	lds	r22, __profc_iswprint+46
	lds	r23, __profc_iswprint+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+47, r23
	sts	__profc_iswprint+46, r22
	sts	__profc_iswprint+45, r21
	sts	__profc_iswprint+44, r20
	sts	__profc_iswprint+43, r19
	sts	__profc_iswprint+42, r18
	sts	__profc_iswprint+41, r25
	sts	__profc_iswprint+40, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	subi	r24, 42
	sbci	r25, 32
	mov	r18, r24
	mov	r24, r25
	ldi	r25, -73
	cpi	r18, -42
	cpc	r24, r25
	brsh	.LBB26_6
	rjmp	.LBB26_9
.LBB26_6:
	lds	r24, __profc_iswprint+48
	lds	r25, __profc_iswprint+49
	lds	r18, __profc_iswprint+50
	lds	r19, __profc_iswprint+51
	lds	r20, __profc_iswprint+52
	lds	r21, __profc_iswprint+53
	lds	r22, __profc_iswprint+54
	lds	r23, __profc_iswprint+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+55, r23
	sts	__profc_iswprint+54, r22
	sts	__profc_iswprint+53, r21
	sts	__profc_iswprint+52, r20
	sts	__profc_iswprint+51, r19
	sts	__profc_iswprint+50, r18
	sts	__profc_iswprint+49, r25
	sts	__profc_iswprint+48, r24
	rjmp	.LBB26_7
.LBB26_7:
	lds	r24, __profc_iswprint+24
	lds	r25, __profc_iswprint+25
	lds	r18, __profc_iswprint+26
	lds	r19, __profc_iswprint+27
	lds	r20, __profc_iswprint+28
	lds	r21, __profc_iswprint+29
	lds	r22, __profc_iswprint+30
	lds	r23, __profc_iswprint+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+31, r23
	sts	__profc_iswprint+30, r22
	sts	__profc_iswprint+29, r21
	sts	__profc_iswprint+28, r20
	sts	__profc_iswprint+27, r19
	sts	__profc_iswprint+26, r18
	sts	__profc_iswprint+25, r25
	sts	__profc_iswprint+24, r24
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
	rjmp	.LBB26_9
.LBB26_8:
	lds	r24, __profc_iswprint+32
	lds	r25, __profc_iswprint+33
	lds	r18, __profc_iswprint+34
	lds	r19, __profc_iswprint+35
	lds	r20, __profc_iswprint+36
	lds	r21, __profc_iswprint+37
	lds	r22, __profc_iswprint+38
	lds	r23, __profc_iswprint+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+39, r23
	sts	__profc_iswprint+38, r22
	sts	__profc_iswprint+37, r21
	sts	__profc_iswprint+36, r20
	sts	__profc_iswprint+35, r19
	sts	__profc_iswprint+34, r18
	sts	__profc_iswprint+33, r25
	sts	__profc_iswprint+32, r24
	rjmp	.LBB26_10
.LBB26_9:
	lds	r24, __profc_iswprint+16
	lds	r25, __profc_iswprint+17
	lds	r18, __profc_iswprint+18
	lds	r19, __profc_iswprint+19
	lds	r20, __profc_iswprint+20
	lds	r21, __profc_iswprint+21
	lds	r22, __profc_iswprint+22
	lds	r23, __profc_iswprint+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+23, r23
	sts	__profc_iswprint+22, r22
	sts	__profc_iswprint+21, r21
	sts	__profc_iswprint+20, r20
	sts	__profc_iswprint+19, r19
	sts	__profc_iswprint+18, r18
	sts	__profc_iswprint+17, r25
	sts	__profc_iswprint+16, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB26_15
.LBB26_10:
	mov	r24, r1
	cpi	r24, 0
	breq	.LBB26_11
	rjmp	.LBB26_13
.LBB26_11:
	lds	r24, __profc_iswprint+64
	lds	r25, __profc_iswprint+65
	lds	r18, __profc_iswprint+66
	lds	r19, __profc_iswprint+67
	lds	r20, __profc_iswprint+68
	lds	r21, __profc_iswprint+69
	lds	r22, __profc_iswprint+70
	lds	r23, __profc_iswprint+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+71, r23
	sts	__profc_iswprint+70, r22
	sts	__profc_iswprint+69, r21
	sts	__profc_iswprint+68, r20
	sts	__profc_iswprint+67, r19
	sts	__profc_iswprint+66, r18
	sts	__profc_iswprint+65, r25
	sts	__profc_iswprint+64, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	andi	r24, 254
	mov	r18, r24
	mov	r24, r25
	ldi	r25, -1
	cpi	r18, -2
	cpc	r24, r25
	brne	.LBB26_12
	rjmp	.LBB26_13
.LBB26_12:
	lds	r24, __profc_iswprint+72
	lds	r25, __profc_iswprint+73
	lds	r18, __profc_iswprint+74
	lds	r19, __profc_iswprint+75
	lds	r20, __profc_iswprint+76
	lds	r21, __profc_iswprint+77
	lds	r22, __profc_iswprint+78
	lds	r23, __profc_iswprint+79
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+79, r23
	sts	__profc_iswprint+78, r22
	sts	__profc_iswprint+77, r21
	sts	__profc_iswprint+76, r20
	sts	__profc_iswprint+75, r19
	sts	__profc_iswprint+74, r18
	sts	__profc_iswprint+73, r25
	sts	__profc_iswprint+72, r24
	rjmp	.LBB26_14
.LBB26_13:
	lds	r24, __profc_iswprint+56
	lds	r25, __profc_iswprint+57
	lds	r18, __profc_iswprint+58
	lds	r19, __profc_iswprint+59
	lds	r20, __profc_iswprint+60
	lds	r21, __profc_iswprint+61
	lds	r22, __profc_iswprint+62
	lds	r23, __profc_iswprint+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswprint+63, r23
	sts	__profc_iswprint+62, r22
	sts	__profc_iswprint+61, r21
	sts	__profc_iswprint+60, r20
	sts	__profc_iswprint+59, r19
	sts	__profc_iswprint+58, r18
	sts	__profc_iswprint+57, r25
	sts	__profc_iswprint+56, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB26_15
.LBB26_14:
	ldi	r24, 1
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB26_15
.LBB26_15:
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
	sbiw	r28, 8
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+8, r25
	std	Y+7, r24
	lds	r24, __profc_iswxdigit
	lds	r25, __profc_iswxdigit+1
	lds	r18, __profc_iswxdigit+2
	lds	r19, __profc_iswxdigit+3
	lds	r20, __profc_iswxdigit+4
	lds	r21, __profc_iswxdigit+5
	lds	r22, __profc_iswxdigit+6
	lds	r23, __profc_iswxdigit+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswxdigit+7, r23
	sts	__profc_iswxdigit+6, r22
	sts	__profc_iswxdigit+5, r21
	sts	__profc_iswxdigit+4, r20
	sts	__profc_iswxdigit+3, r19
	sts	__profc_iswxdigit+2, r18
	sts	__profc_iswxdigit+1, r25
	sts	__profc_iswxdigit, r24
	ldd	r30, Y+7
	ldd	r31, Y+8
	sbiw	r30, 48
	ldi	r24, 1
	mov	r18, r30
	mov	r25, r31
	cpi	r18, 10
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB27_1
	rjmp	.LBB27_5
.LBB27_1:
	lds	r24, __profc_iswxdigit+8
	lds	r25, __profc_iswxdigit+9
	lds	r18, __profc_iswxdigit+10
	lds	r19, __profc_iswxdigit+11
	lds	r20, __profc_iswxdigit+12
	lds	r21, __profc_iswxdigit+13
	lds	r22, __profc_iswxdigit+14
	lds	r23, __profc_iswxdigit+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_iswxdigit+15, r23
	sts	__profc_iswxdigit+14, r22
	sts	__profc_iswxdigit+13, r21
	sts	__profc_iswxdigit+12, r20
	sts	__profc_iswxdigit+11, r19
	sts	__profc_iswxdigit+10, r18
	sts	__profc_iswxdigit+9, r25
	sts	__profc_iswxdigit+8, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	ori	r24, 32
	subi	r24, 97
	sbci	r25, 0
	mov	r18, r24
	std	Y+2, r18                        ; 1-byte Folded Spill
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 6
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	brlo	.LBB27_2
	rjmp	.LBB27_3
.LBB27_2:
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cpi	r18, 6
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brsh	.LBB27_4
	rjmp	.LBB27_5
.LBB27_3:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB27_2
.LBB27_4:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_iswxdigit+16
	lds	r19, __profc_iswxdigit+17
	lds	r20, __profc_iswxdigit+18
	lds	r21, __profc_iswxdigit+19
	lds	r22, __profc_iswxdigit+20
	lds	r23, __profc_iswxdigit+21
	lds	r30, __profc_iswxdigit+22
	lds	r31, __profc_iswxdigit+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_iswxdigit+23, r31
	sts	__profc_iswxdigit+22, r30
	sts	__profc_iswxdigit+21, r23
	sts	__profc_iswxdigit+20, r22
	sts	__profc_iswxdigit+19, r21
	sts	__profc_iswxdigit+18, r20
	sts	__profc_iswxdigit+17, r19
	sts	__profc_iswxdigit+16, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB27_5
.LBB27_5:
	ldd	r18, Y+6                        ; 1-byte Folded Reload
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
	lds	r24, __profc_toascii
	lds	r25, __profc_toascii+1
	lds	r18, __profc_toascii+2
	lds	r19, __profc_toascii+3
	lds	r20, __profc_toascii+4
	lds	r21, __profc_toascii+5
	lds	r22, __profc_toascii+6
	lds	r23, __profc_toascii+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_toascii+7, r23
	sts	__profc_toascii+6, r22
	sts	__profc_toascii+5, r21
	sts	__profc_toascii+4, r20
	sts	__profc_toascii+3, r19
	sts	__profc_toascii+2, r18
	sts	__profc_toascii+1, r25
	sts	__profc_toascii, r24
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
	lds	r24, __profc_fdim
	lds	r25, __profc_fdim+1
	lds	r18, __profc_fdim+2
	lds	r19, __profc_fdim+3
	lds	r20, __profc_fdim+4
	lds	r21, __profc_fdim+5
	lds	r22, __profc_fdim+6
	lds	r23, __profc_fdim+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdim+7, r23
	sts	__profc_fdim+6, r22
	sts	__profc_fdim+5, r21
	sts	__profc_fdim+4, r20
	sts	__profc_fdim+3, r19
	sts	__profc_fdim+2, r18
	sts	__profc_fdim+1, r25
	sts	__profc_fdim, r24
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
	breq	.LBB29_3
	rjmp	.LBB29_4
.LBB29_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB29_1
.LBB29_3:
	lds	r24, __profc_fdim+8
	lds	r25, __profc_fdim+9
	lds	r18, __profc_fdim+10
	lds	r19, __profc_fdim+11
	lds	r20, __profc_fdim+12
	lds	r21, __profc_fdim+13
	lds	r22, __profc_fdim+14
	lds	r23, __profc_fdim+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdim+15, r23
	sts	__profc_fdim+14, r22
	sts	__profc_fdim+13, r21
	sts	__profc_fdim+12, r20
	sts	__profc_fdim+11, r19
	sts	__profc_fdim+10, r18
	sts	__profc_fdim+9, r25
	sts	__profc_fdim+8, r24
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
	breq	.LBB29_7
	rjmp	.LBB29_8
.LBB29_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB29_5
.LBB29_7:
	lds	r24, __profc_fdim+16
	lds	r25, __profc_fdim+17
	lds	r18, __profc_fdim+18
	lds	r19, __profc_fdim+19
	lds	r20, __profc_fdim+20
	lds	r21, __profc_fdim+21
	lds	r22, __profc_fdim+22
	lds	r23, __profc_fdim+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdim+23, r23
	sts	__profc_fdim+22, r22
	sts	__profc_fdim+21, r21
	sts	__profc_fdim+20, r20
	sts	__profc_fdim+19, r19
	sts	__profc_fdim+18, r18
	sts	__profc_fdim+17, r25
	sts	__profc_fdim+16, r24
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
	brlt	.LBB29_9
	rjmp	.LBB29_10
.LBB29_9:
	lds	r24, __profc_fdim+24
	lds	r25, __profc_fdim+25
	lds	r18, __profc_fdim+26
	lds	r19, __profc_fdim+27
	lds	r20, __profc_fdim+28
	lds	r21, __profc_fdim+29
	lds	r22, __profc_fdim+30
	lds	r23, __profc_fdim+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdim+31, r23
	sts	__profc_fdim+30, r22
	sts	__profc_fdim+29, r21
	sts	__profc_fdim+28, r20
	sts	__profc_fdim+27, r19
	sts	__profc_fdim+26, r18
	sts	__profc_fdim+25, r25
	sts	__profc_fdim+24, r24
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
	lds	r24, __profc_fdimf
	lds	r25, __profc_fdimf+1
	lds	r18, __profc_fdimf+2
	lds	r19, __profc_fdimf+3
	lds	r20, __profc_fdimf+4
	lds	r21, __profc_fdimf+5
	lds	r22, __profc_fdimf+6
	lds	r23, __profc_fdimf+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdimf+7, r23
	sts	__profc_fdimf+6, r22
	sts	__profc_fdimf+5, r21
	sts	__profc_fdimf+4, r20
	sts	__profc_fdimf+3, r19
	sts	__profc_fdimf+2, r18
	sts	__profc_fdimf+1, r25
	sts	__profc_fdimf, r24
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
	breq	.LBB30_3
	rjmp	.LBB30_4
.LBB30_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB30_1
.LBB30_3:
	lds	r24, __profc_fdimf+8
	lds	r25, __profc_fdimf+9
	lds	r18, __profc_fdimf+10
	lds	r19, __profc_fdimf+11
	lds	r20, __profc_fdimf+12
	lds	r21, __profc_fdimf+13
	lds	r22, __profc_fdimf+14
	lds	r23, __profc_fdimf+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdimf+15, r23
	sts	__profc_fdimf+14, r22
	sts	__profc_fdimf+13, r21
	sts	__profc_fdimf+12, r20
	sts	__profc_fdimf+11, r19
	sts	__profc_fdimf+10, r18
	sts	__profc_fdimf+9, r25
	sts	__profc_fdimf+8, r24
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
	breq	.LBB30_7
	rjmp	.LBB30_8
.LBB30_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB30_5
.LBB30_7:
	lds	r24, __profc_fdimf+16
	lds	r25, __profc_fdimf+17
	lds	r18, __profc_fdimf+18
	lds	r19, __profc_fdimf+19
	lds	r20, __profc_fdimf+20
	lds	r21, __profc_fdimf+21
	lds	r22, __profc_fdimf+22
	lds	r23, __profc_fdimf+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdimf+23, r23
	sts	__profc_fdimf+22, r22
	sts	__profc_fdimf+21, r21
	sts	__profc_fdimf+20, r20
	sts	__profc_fdimf+19, r19
	sts	__profc_fdimf+18, r18
	sts	__profc_fdimf+17, r25
	sts	__profc_fdimf+16, r24
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
	brlt	.LBB30_9
	rjmp	.LBB30_10
.LBB30_9:
	lds	r24, __profc_fdimf+24
	lds	r25, __profc_fdimf+25
	lds	r18, __profc_fdimf+26
	lds	r19, __profc_fdimf+27
	lds	r20, __profc_fdimf+28
	lds	r21, __profc_fdimf+29
	lds	r22, __profc_fdimf+30
	lds	r23, __profc_fdimf+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fdimf+31, r23
	sts	__profc_fdimf+30, r22
	sts	__profc_fdimf+29, r21
	sts	__profc_fdimf+28, r20
	sts	__profc_fdimf+27, r19
	sts	__profc_fdimf+26, r18
	sts	__profc_fdimf+25, r25
	sts	__profc_fdimf+24, r24
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
	lds	r24, __profc_fmax
	lds	r25, __profc_fmax+1
	lds	r18, __profc_fmax+2
	lds	r19, __profc_fmax+3
	lds	r20, __profc_fmax+4
	lds	r21, __profc_fmax+5
	lds	r22, __profc_fmax+6
	lds	r23, __profc_fmax+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmax+7, r23
	sts	__profc_fmax+6, r22
	sts	__profc_fmax+5, r21
	sts	__profc_fmax+4, r20
	sts	__profc_fmax+3, r19
	sts	__profc_fmax+2, r18
	sts	__profc_fmax+1, r25
	sts	__profc_fmax, r24
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
	breq	.LBB31_3
	rjmp	.LBB31_4
.LBB31_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB31_1
.LBB31_3:
	lds	r24, __profc_fmax+8
	lds	r25, __profc_fmax+9
	lds	r18, __profc_fmax+10
	lds	r19, __profc_fmax+11
	lds	r20, __profc_fmax+12
	lds	r21, __profc_fmax+13
	lds	r22, __profc_fmax+14
	lds	r23, __profc_fmax+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmax+15, r23
	sts	__profc_fmax+14, r22
	sts	__profc_fmax+13, r21
	sts	__profc_fmax+12, r20
	sts	__profc_fmax+11, r19
	sts	__profc_fmax+10, r18
	sts	__profc_fmax+9, r25
	sts	__profc_fmax+8, r24
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
	breq	.LBB31_7
	rjmp	.LBB31_8
.LBB31_6:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB31_5
.LBB31_7:
	lds	r24, __profc_fmax+16
	lds	r25, __profc_fmax+17
	lds	r18, __profc_fmax+18
	lds	r19, __profc_fmax+19
	lds	r20, __profc_fmax+20
	lds	r21, __profc_fmax+21
	lds	r22, __profc_fmax+22
	lds	r23, __profc_fmax+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmax+23, r23
	sts	__profc_fmax+22, r22
	sts	__profc_fmax+21, r21
	sts	__profc_fmax+20, r20
	sts	__profc_fmax+19, r19
	sts	__profc_fmax+18, r18
	sts	__profc_fmax+17, r25
	sts	__profc_fmax+16, r24
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
	lds	r24, __profc_fmax+24
	lds	r25, __profc_fmax+25
	lds	r18, __profc_fmax+26
	lds	r19, __profc_fmax+27
	lds	r20, __profc_fmax+28
	lds	r21, __profc_fmax+29
	lds	r22, __profc_fmax+30
	lds	r23, __profc_fmax+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmax+31, r23
	sts	__profc_fmax+30, r22
	sts	__profc_fmax+29, r21
	sts	__profc_fmax+28, r20
	sts	__profc_fmax+27, r19
	sts	__profc_fmax+26, r18
	sts	__profc_fmax+25, r25
	sts	__profc_fmax+24, r24
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
	breq	.LBB31_12
	rjmp	.LBB31_13
.LBB31_11:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB31_10
.LBB31_12:
	lds	r24, __profc_fmax+32
	lds	r25, __profc_fmax+33
	lds	r18, __profc_fmax+34
	lds	r19, __profc_fmax+35
	lds	r20, __profc_fmax+36
	lds	r21, __profc_fmax+37
	lds	r22, __profc_fmax+38
	lds	r23, __profc_fmax+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmax+39, r23
	sts	__profc_fmax+38, r22
	sts	__profc_fmax+37, r21
	sts	__profc_fmax+36, r20
	sts	__profc_fmax+35, r19
	sts	__profc_fmax+34, r18
	sts	__profc_fmax+33, r25
	sts	__profc_fmax+32, r24
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
	brmi	.LBB31_16
	rjmp	.LBB31_17
.LBB31_16:
	lds	r24, __profc_fmax+40
	lds	r25, __profc_fmax+41
	lds	r18, __profc_fmax+42
	lds	r19, __profc_fmax+43
	lds	r20, __profc_fmax+44
	lds	r21, __profc_fmax+45
	lds	r22, __profc_fmax+46
	lds	r23, __profc_fmax+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmax+47, r23
	sts	__profc_fmax+46, r22
	sts	__profc_fmax+45, r21
	sts	__profc_fmax+44, r20
	sts	__profc_fmax+43, r19
	sts	__profc_fmax+42, r18
	sts	__profc_fmax+41, r25
	sts	__profc_fmax+40, r24
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
	lds	r24, __profc_fmaxf
	lds	r25, __profc_fmaxf+1
	lds	r18, __profc_fmaxf+2
	lds	r19, __profc_fmaxf+3
	lds	r20, __profc_fmaxf+4
	lds	r21, __profc_fmaxf+5
	lds	r22, __profc_fmaxf+6
	lds	r23, __profc_fmaxf+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxf+7, r23
	sts	__profc_fmaxf+6, r22
	sts	__profc_fmaxf+5, r21
	sts	__profc_fmaxf+4, r20
	sts	__profc_fmaxf+3, r19
	sts	__profc_fmaxf+2, r18
	sts	__profc_fmaxf+1, r25
	sts	__profc_fmaxf, r24
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
	breq	.LBB32_3
	rjmp	.LBB32_4
.LBB32_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB32_1
.LBB32_3:
	lds	r24, __profc_fmaxf+8
	lds	r25, __profc_fmaxf+9
	lds	r18, __profc_fmaxf+10
	lds	r19, __profc_fmaxf+11
	lds	r20, __profc_fmaxf+12
	lds	r21, __profc_fmaxf+13
	lds	r22, __profc_fmaxf+14
	lds	r23, __profc_fmaxf+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxf+15, r23
	sts	__profc_fmaxf+14, r22
	sts	__profc_fmaxf+13, r21
	sts	__profc_fmaxf+12, r20
	sts	__profc_fmaxf+11, r19
	sts	__profc_fmaxf+10, r18
	sts	__profc_fmaxf+9, r25
	sts	__profc_fmaxf+8, r24
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
	breq	.LBB32_7
	rjmp	.LBB32_8
.LBB32_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB32_5
.LBB32_7:
	lds	r24, __profc_fmaxf+16
	lds	r25, __profc_fmaxf+17
	lds	r18, __profc_fmaxf+18
	lds	r19, __profc_fmaxf+19
	lds	r20, __profc_fmaxf+20
	lds	r21, __profc_fmaxf+21
	lds	r22, __profc_fmaxf+22
	lds	r23, __profc_fmaxf+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxf+23, r23
	sts	__profc_fmaxf+22, r22
	sts	__profc_fmaxf+21, r21
	sts	__profc_fmaxf+20, r20
	sts	__profc_fmaxf+19, r19
	sts	__profc_fmaxf+18, r18
	sts	__profc_fmaxf+17, r25
	sts	__profc_fmaxf+16, r24
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
	lds	r24, __profc_fmaxf+24
	lds	r25, __profc_fmaxf+25
	lds	r18, __profc_fmaxf+26
	lds	r19, __profc_fmaxf+27
	lds	r20, __profc_fmaxf+28
	lds	r21, __profc_fmaxf+29
	lds	r22, __profc_fmaxf+30
	lds	r23, __profc_fmaxf+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxf+31, r23
	sts	__profc_fmaxf+30, r22
	sts	__profc_fmaxf+29, r21
	sts	__profc_fmaxf+28, r20
	sts	__profc_fmaxf+27, r19
	sts	__profc_fmaxf+26, r18
	sts	__profc_fmaxf+25, r25
	sts	__profc_fmaxf+24, r24
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
	breq	.LBB32_12
	rjmp	.LBB32_13
.LBB32_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB32_10
.LBB32_12:
	lds	r24, __profc_fmaxf+32
	lds	r25, __profc_fmaxf+33
	lds	r18, __profc_fmaxf+34
	lds	r19, __profc_fmaxf+35
	lds	r20, __profc_fmaxf+36
	lds	r21, __profc_fmaxf+37
	lds	r22, __profc_fmaxf+38
	lds	r23, __profc_fmaxf+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxf+39, r23
	sts	__profc_fmaxf+38, r22
	sts	__profc_fmaxf+37, r21
	sts	__profc_fmaxf+36, r20
	sts	__profc_fmaxf+35, r19
	sts	__profc_fmaxf+34, r18
	sts	__profc_fmaxf+33, r25
	sts	__profc_fmaxf+32, r24
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
	brmi	.LBB32_16
	rjmp	.LBB32_17
.LBB32_16:
	lds	r24, __profc_fmaxf+40
	lds	r25, __profc_fmaxf+41
	lds	r18, __profc_fmaxf+42
	lds	r19, __profc_fmaxf+43
	lds	r20, __profc_fmaxf+44
	lds	r21, __profc_fmaxf+45
	lds	r22, __profc_fmaxf+46
	lds	r23, __profc_fmaxf+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxf+47, r23
	sts	__profc_fmaxf+46, r22
	sts	__profc_fmaxf+45, r21
	sts	__profc_fmaxf+44, r20
	sts	__profc_fmaxf+43, r19
	sts	__profc_fmaxf+42, r18
	sts	__profc_fmaxf+41, r25
	sts	__profc_fmaxf+40, r24
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
	lds	r24, __profc_fmaxl
	lds	r25, __profc_fmaxl+1
	lds	r18, __profc_fmaxl+2
	lds	r19, __profc_fmaxl+3
	lds	r20, __profc_fmaxl+4
	lds	r21, __profc_fmaxl+5
	lds	r22, __profc_fmaxl+6
	lds	r23, __profc_fmaxl+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxl+7, r23
	sts	__profc_fmaxl+6, r22
	sts	__profc_fmaxl+5, r21
	sts	__profc_fmaxl+4, r20
	sts	__profc_fmaxl+3, r19
	sts	__profc_fmaxl+2, r18
	sts	__profc_fmaxl+1, r25
	sts	__profc_fmaxl, r24
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
	breq	.LBB33_3
	rjmp	.LBB33_4
.LBB33_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB33_1
.LBB33_3:
	lds	r24, __profc_fmaxl+8
	lds	r25, __profc_fmaxl+9
	lds	r18, __profc_fmaxl+10
	lds	r19, __profc_fmaxl+11
	lds	r20, __profc_fmaxl+12
	lds	r21, __profc_fmaxl+13
	lds	r22, __profc_fmaxl+14
	lds	r23, __profc_fmaxl+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxl+15, r23
	sts	__profc_fmaxl+14, r22
	sts	__profc_fmaxl+13, r21
	sts	__profc_fmaxl+12, r20
	sts	__profc_fmaxl+11, r19
	sts	__profc_fmaxl+10, r18
	sts	__profc_fmaxl+9, r25
	sts	__profc_fmaxl+8, r24
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
	breq	.LBB33_7
	rjmp	.LBB33_8
.LBB33_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB33_5
.LBB33_7:
	lds	r24, __profc_fmaxl+16
	lds	r25, __profc_fmaxl+17
	lds	r18, __profc_fmaxl+18
	lds	r19, __profc_fmaxl+19
	lds	r20, __profc_fmaxl+20
	lds	r21, __profc_fmaxl+21
	lds	r22, __profc_fmaxl+22
	lds	r23, __profc_fmaxl+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxl+23, r23
	sts	__profc_fmaxl+22, r22
	sts	__profc_fmaxl+21, r21
	sts	__profc_fmaxl+20, r20
	sts	__profc_fmaxl+19, r19
	sts	__profc_fmaxl+18, r18
	sts	__profc_fmaxl+17, r25
	sts	__profc_fmaxl+16, r24
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
	lds	r24, __profc_fmaxl+24
	lds	r25, __profc_fmaxl+25
	lds	r18, __profc_fmaxl+26
	lds	r19, __profc_fmaxl+27
	lds	r20, __profc_fmaxl+28
	lds	r21, __profc_fmaxl+29
	lds	r22, __profc_fmaxl+30
	lds	r23, __profc_fmaxl+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxl+31, r23
	sts	__profc_fmaxl+30, r22
	sts	__profc_fmaxl+29, r21
	sts	__profc_fmaxl+28, r20
	sts	__profc_fmaxl+27, r19
	sts	__profc_fmaxl+26, r18
	sts	__profc_fmaxl+25, r25
	sts	__profc_fmaxl+24, r24
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
	breq	.LBB33_12
	rjmp	.LBB33_13
.LBB33_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB33_10
.LBB33_12:
	lds	r24, __profc_fmaxl+32
	lds	r25, __profc_fmaxl+33
	lds	r18, __profc_fmaxl+34
	lds	r19, __profc_fmaxl+35
	lds	r20, __profc_fmaxl+36
	lds	r21, __profc_fmaxl+37
	lds	r22, __profc_fmaxl+38
	lds	r23, __profc_fmaxl+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxl+39, r23
	sts	__profc_fmaxl+38, r22
	sts	__profc_fmaxl+37, r21
	sts	__profc_fmaxl+36, r20
	sts	__profc_fmaxl+35, r19
	sts	__profc_fmaxl+34, r18
	sts	__profc_fmaxl+33, r25
	sts	__profc_fmaxl+32, r24
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
	brmi	.LBB33_16
	rjmp	.LBB33_17
.LBB33_16:
	lds	r24, __profc_fmaxl+40
	lds	r25, __profc_fmaxl+41
	lds	r18, __profc_fmaxl+42
	lds	r19, __profc_fmaxl+43
	lds	r20, __profc_fmaxl+44
	lds	r21, __profc_fmaxl+45
	lds	r22, __profc_fmaxl+46
	lds	r23, __profc_fmaxl+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmaxl+47, r23
	sts	__profc_fmaxl+46, r22
	sts	__profc_fmaxl+45, r21
	sts	__profc_fmaxl+44, r20
	sts	__profc_fmaxl+43, r19
	sts	__profc_fmaxl+42, r18
	sts	__profc_fmaxl+41, r25
	sts	__profc_fmaxl+40, r24
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
	lds	r24, __profc_fmin
	lds	r25, __profc_fmin+1
	lds	r18, __profc_fmin+2
	lds	r19, __profc_fmin+3
	lds	r20, __profc_fmin+4
	lds	r21, __profc_fmin+5
	lds	r22, __profc_fmin+6
	lds	r23, __profc_fmin+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmin+7, r23
	sts	__profc_fmin+6, r22
	sts	__profc_fmin+5, r21
	sts	__profc_fmin+4, r20
	sts	__profc_fmin+3, r19
	sts	__profc_fmin+2, r18
	sts	__profc_fmin+1, r25
	sts	__profc_fmin, r24
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
	breq	.LBB34_3
	rjmp	.LBB34_4
.LBB34_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB34_1
.LBB34_3:
	lds	r24, __profc_fmin+8
	lds	r25, __profc_fmin+9
	lds	r18, __profc_fmin+10
	lds	r19, __profc_fmin+11
	lds	r20, __profc_fmin+12
	lds	r21, __profc_fmin+13
	lds	r22, __profc_fmin+14
	lds	r23, __profc_fmin+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmin+15, r23
	sts	__profc_fmin+14, r22
	sts	__profc_fmin+13, r21
	sts	__profc_fmin+12, r20
	sts	__profc_fmin+11, r19
	sts	__profc_fmin+10, r18
	sts	__profc_fmin+9, r25
	sts	__profc_fmin+8, r24
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
	breq	.LBB34_7
	rjmp	.LBB34_8
.LBB34_6:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB34_5
.LBB34_7:
	lds	r24, __profc_fmin+16
	lds	r25, __profc_fmin+17
	lds	r18, __profc_fmin+18
	lds	r19, __profc_fmin+19
	lds	r20, __profc_fmin+20
	lds	r21, __profc_fmin+21
	lds	r22, __profc_fmin+22
	lds	r23, __profc_fmin+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmin+23, r23
	sts	__profc_fmin+22, r22
	sts	__profc_fmin+21, r21
	sts	__profc_fmin+20, r20
	sts	__profc_fmin+19, r19
	sts	__profc_fmin+18, r18
	sts	__profc_fmin+17, r25
	sts	__profc_fmin+16, r24
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
	lds	r24, __profc_fmin+24
	lds	r25, __profc_fmin+25
	lds	r18, __profc_fmin+26
	lds	r19, __profc_fmin+27
	lds	r20, __profc_fmin+28
	lds	r21, __profc_fmin+29
	lds	r22, __profc_fmin+30
	lds	r23, __profc_fmin+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmin+31, r23
	sts	__profc_fmin+30, r22
	sts	__profc_fmin+29, r21
	sts	__profc_fmin+28, r20
	sts	__profc_fmin+27, r19
	sts	__profc_fmin+26, r18
	sts	__profc_fmin+25, r25
	sts	__profc_fmin+24, r24
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
	breq	.LBB34_12
	rjmp	.LBB34_13
.LBB34_11:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB34_10
.LBB34_12:
	lds	r24, __profc_fmin+32
	lds	r25, __profc_fmin+33
	lds	r18, __profc_fmin+34
	lds	r19, __profc_fmin+35
	lds	r20, __profc_fmin+36
	lds	r21, __profc_fmin+37
	lds	r22, __profc_fmin+38
	lds	r23, __profc_fmin+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmin+39, r23
	sts	__profc_fmin+38, r22
	sts	__profc_fmin+37, r21
	sts	__profc_fmin+36, r20
	sts	__profc_fmin+35, r19
	sts	__profc_fmin+34, r18
	sts	__profc_fmin+33, r25
	sts	__profc_fmin+32, r24
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
	brmi	.LBB34_16
	rjmp	.LBB34_17
.LBB34_16:
	lds	r24, __profc_fmin+40
	lds	r25, __profc_fmin+41
	lds	r18, __profc_fmin+42
	lds	r19, __profc_fmin+43
	lds	r20, __profc_fmin+44
	lds	r21, __profc_fmin+45
	lds	r22, __profc_fmin+46
	lds	r23, __profc_fmin+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fmin+47, r23
	sts	__profc_fmin+46, r22
	sts	__profc_fmin+45, r21
	sts	__profc_fmin+44, r20
	sts	__profc_fmin+43, r19
	sts	__profc_fmin+42, r18
	sts	__profc_fmin+41, r25
	sts	__profc_fmin+40, r24
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
	lds	r24, __profc_fminf
	lds	r25, __profc_fminf+1
	lds	r18, __profc_fminf+2
	lds	r19, __profc_fminf+3
	lds	r20, __profc_fminf+4
	lds	r21, __profc_fminf+5
	lds	r22, __profc_fminf+6
	lds	r23, __profc_fminf+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminf+7, r23
	sts	__profc_fminf+6, r22
	sts	__profc_fminf+5, r21
	sts	__profc_fminf+4, r20
	sts	__profc_fminf+3, r19
	sts	__profc_fminf+2, r18
	sts	__profc_fminf+1, r25
	sts	__profc_fminf, r24
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
	breq	.LBB35_3
	rjmp	.LBB35_4
.LBB35_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB35_1
.LBB35_3:
	lds	r24, __profc_fminf+8
	lds	r25, __profc_fminf+9
	lds	r18, __profc_fminf+10
	lds	r19, __profc_fminf+11
	lds	r20, __profc_fminf+12
	lds	r21, __profc_fminf+13
	lds	r22, __profc_fminf+14
	lds	r23, __profc_fminf+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminf+15, r23
	sts	__profc_fminf+14, r22
	sts	__profc_fminf+13, r21
	sts	__profc_fminf+12, r20
	sts	__profc_fminf+11, r19
	sts	__profc_fminf+10, r18
	sts	__profc_fminf+9, r25
	sts	__profc_fminf+8, r24
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
	breq	.LBB35_7
	rjmp	.LBB35_8
.LBB35_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB35_5
.LBB35_7:
	lds	r24, __profc_fminf+16
	lds	r25, __profc_fminf+17
	lds	r18, __profc_fminf+18
	lds	r19, __profc_fminf+19
	lds	r20, __profc_fminf+20
	lds	r21, __profc_fminf+21
	lds	r22, __profc_fminf+22
	lds	r23, __profc_fminf+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminf+23, r23
	sts	__profc_fminf+22, r22
	sts	__profc_fminf+21, r21
	sts	__profc_fminf+20, r20
	sts	__profc_fminf+19, r19
	sts	__profc_fminf+18, r18
	sts	__profc_fminf+17, r25
	sts	__profc_fminf+16, r24
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
	lds	r24, __profc_fminf+24
	lds	r25, __profc_fminf+25
	lds	r18, __profc_fminf+26
	lds	r19, __profc_fminf+27
	lds	r20, __profc_fminf+28
	lds	r21, __profc_fminf+29
	lds	r22, __profc_fminf+30
	lds	r23, __profc_fminf+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminf+31, r23
	sts	__profc_fminf+30, r22
	sts	__profc_fminf+29, r21
	sts	__profc_fminf+28, r20
	sts	__profc_fminf+27, r19
	sts	__profc_fminf+26, r18
	sts	__profc_fminf+25, r25
	sts	__profc_fminf+24, r24
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
	breq	.LBB35_12
	rjmp	.LBB35_13
.LBB35_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB35_10
.LBB35_12:
	lds	r24, __profc_fminf+32
	lds	r25, __profc_fminf+33
	lds	r18, __profc_fminf+34
	lds	r19, __profc_fminf+35
	lds	r20, __profc_fminf+36
	lds	r21, __profc_fminf+37
	lds	r22, __profc_fminf+38
	lds	r23, __profc_fminf+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminf+39, r23
	sts	__profc_fminf+38, r22
	sts	__profc_fminf+37, r21
	sts	__profc_fminf+36, r20
	sts	__profc_fminf+35, r19
	sts	__profc_fminf+34, r18
	sts	__profc_fminf+33, r25
	sts	__profc_fminf+32, r24
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
	brmi	.LBB35_16
	rjmp	.LBB35_17
.LBB35_16:
	lds	r24, __profc_fminf+40
	lds	r25, __profc_fminf+41
	lds	r18, __profc_fminf+42
	lds	r19, __profc_fminf+43
	lds	r20, __profc_fminf+44
	lds	r21, __profc_fminf+45
	lds	r22, __profc_fminf+46
	lds	r23, __profc_fminf+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminf+47, r23
	sts	__profc_fminf+46, r22
	sts	__profc_fminf+45, r21
	sts	__profc_fminf+44, r20
	sts	__profc_fminf+43, r19
	sts	__profc_fminf+42, r18
	sts	__profc_fminf+41, r25
	sts	__profc_fminf+40, r24
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
	lds	r24, __profc_fminl
	lds	r25, __profc_fminl+1
	lds	r18, __profc_fminl+2
	lds	r19, __profc_fminl+3
	lds	r20, __profc_fminl+4
	lds	r21, __profc_fminl+5
	lds	r22, __profc_fminl+6
	lds	r23, __profc_fminl+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminl+7, r23
	sts	__profc_fminl+6, r22
	sts	__profc_fminl+5, r21
	sts	__profc_fminl+4, r20
	sts	__profc_fminl+3, r19
	sts	__profc_fminl+2, r18
	sts	__profc_fminl+1, r25
	sts	__profc_fminl, r24
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
	breq	.LBB36_3
	rjmp	.LBB36_4
.LBB36_2:
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB36_1
.LBB36_3:
	lds	r24, __profc_fminl+8
	lds	r25, __profc_fminl+9
	lds	r18, __profc_fminl+10
	lds	r19, __profc_fminl+11
	lds	r20, __profc_fminl+12
	lds	r21, __profc_fminl+13
	lds	r22, __profc_fminl+14
	lds	r23, __profc_fminl+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminl+15, r23
	sts	__profc_fminl+14, r22
	sts	__profc_fminl+13, r21
	sts	__profc_fminl+12, r20
	sts	__profc_fminl+11, r19
	sts	__profc_fminl+10, r18
	sts	__profc_fminl+9, r25
	sts	__profc_fminl+8, r24
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
	breq	.LBB36_7
	rjmp	.LBB36_8
.LBB36_6:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB36_5
.LBB36_7:
	lds	r24, __profc_fminl+16
	lds	r25, __profc_fminl+17
	lds	r18, __profc_fminl+18
	lds	r19, __profc_fminl+19
	lds	r20, __profc_fminl+20
	lds	r21, __profc_fminl+21
	lds	r22, __profc_fminl+22
	lds	r23, __profc_fminl+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminl+23, r23
	sts	__profc_fminl+22, r22
	sts	__profc_fminl+21, r21
	sts	__profc_fminl+20, r20
	sts	__profc_fminl+19, r19
	sts	__profc_fminl+18, r18
	sts	__profc_fminl+17, r25
	sts	__profc_fminl+16, r24
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
	lds	r24, __profc_fminl+24
	lds	r25, __profc_fminl+25
	lds	r18, __profc_fminl+26
	lds	r19, __profc_fminl+27
	lds	r20, __profc_fminl+28
	lds	r21, __profc_fminl+29
	lds	r22, __profc_fminl+30
	lds	r23, __profc_fminl+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminl+31, r23
	sts	__profc_fminl+30, r22
	sts	__profc_fminl+29, r21
	sts	__profc_fminl+28, r20
	sts	__profc_fminl+27, r19
	sts	__profc_fminl+26, r18
	sts	__profc_fminl+25, r25
	sts	__profc_fminl+24, r24
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
	breq	.LBB36_12
	rjmp	.LBB36_13
.LBB36_11:
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB36_10
.LBB36_12:
	lds	r24, __profc_fminl+32
	lds	r25, __profc_fminl+33
	lds	r18, __profc_fminl+34
	lds	r19, __profc_fminl+35
	lds	r20, __profc_fminl+36
	lds	r21, __profc_fminl+37
	lds	r22, __profc_fminl+38
	lds	r23, __profc_fminl+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminl+39, r23
	sts	__profc_fminl+38, r22
	sts	__profc_fminl+37, r21
	sts	__profc_fminl+36, r20
	sts	__profc_fminl+35, r19
	sts	__profc_fminl+34, r18
	sts	__profc_fminl+33, r25
	sts	__profc_fminl+32, r24
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
	brmi	.LBB36_16
	rjmp	.LBB36_17
.LBB36_16:
	lds	r24, __profc_fminl+40
	lds	r25, __profc_fminl+41
	lds	r18, __profc_fminl+42
	lds	r19, __profc_fminl+43
	lds	r20, __profc_fminl+44
	lds	r21, __profc_fminl+45
	lds	r22, __profc_fminl+46
	lds	r23, __profc_fminl+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_fminl+47, r23
	sts	__profc_fminl+46, r22
	sts	__profc_fminl+45, r21
	sts	__profc_fminl+44, r20
	sts	__profc_fminl+43, r19
	sts	__profc_fminl+42, r18
	sts	__profc_fminl+41, r25
	sts	__profc_fminl+40, r24
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
	lds	r24, __profc_l64a
	lds	r25, __profc_l64a+1
	lds	r18, __profc_l64a+2
	lds	r19, __profc_l64a+3
	lds	r20, __profc_l64a+4
	lds	r21, __profc_l64a+5
	lds	r22, __profc_l64a+6
	lds	r23, __profc_l64a+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_l64a+7, r23
	sts	__profc_l64a+6, r22
	sts	__profc_l64a+5, r21
	sts	__profc_l64a+4, r20
	sts	__profc_l64a+3, r19
	sts	__profc_l64a+2, r18
	sts	__profc_l64a+1, r25
	sts	__profc_l64a, r24
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
	lds	r24, __profc_l64a+8
	lds	r25, __profc_l64a+9
	lds	r18, __profc_l64a+10
	lds	r19, __profc_l64a+11
	lds	r20, __profc_l64a+12
	lds	r21, __profc_l64a+13
	lds	r22, __profc_l64a+14
	lds	r23, __profc_l64a+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_l64a+15, r23
	sts	__profc_l64a+14, r22
	sts	__profc_l64a+13, r21
	sts	__profc_l64a+12, r20
	sts	__profc_l64a+11, r19
	sts	__profc_l64a+10, r18
	sts	__profc_l64a+9, r25
	sts	__profc_l64a+8, r24
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
	lds	r24, __profc_srand
	lds	r25, __profc_srand+1
	lds	r18, __profc_srand+2
	lds	r19, __profc_srand+3
	lds	r20, __profc_srand+4
	lds	r21, __profc_srand+5
	lds	r22, __profc_srand+6
	lds	r23, __profc_srand+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_srand+7, r23
	sts	__profc_srand+6, r22
	sts	__profc_srand+5, r21
	sts	__profc_srand+4, r20
	sts	__profc_srand+3, r19
	sts	__profc_srand+2, r18
	sts	__profc_srand+1, r25
	sts	__profc_srand, r24
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
	lds	r24, __profc_rand
	lds	r25, __profc_rand+1
	lds	r18, __profc_rand+2
	lds	r19, __profc_rand+3
	lds	r20, __profc_rand+4
	lds	r21, __profc_rand+5
	lds	r22, __profc_rand+6
	lds	r23, __profc_rand+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rand+7, r23
	sts	__profc_rand+6, r22
	sts	__profc_rand+5, r21
	sts	__profc_rand+4, r20
	sts	__profc_rand+3, r19
	sts	__profc_rand+2, r18
	sts	__profc_rand+1, r25
	sts	__profc_rand, r24
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
	lds	r24, __profc_lsearch
	lds	r25, __profc_lsearch+1
	lds	r18, __profc_lsearch+2
	lds	r19, __profc_lsearch+3
	lds	r20, __profc_lsearch+4
	lds	r21, __profc_lsearch+5
	lds	r22, __profc_lsearch+6
	lds	r23, __profc_lsearch+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_lsearch+7, r23
	sts	__profc_lsearch+6, r22
	sts	__profc_lsearch+5, r21
	sts	__profc_lsearch+4, r20
	sts	__profc_lsearch+3, r19
	sts	__profc_lsearch+2, r18
	sts	__profc_lsearch+1, r25
	sts	__profc_lsearch, r24
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
	lds	r24, __profc_lsearch+8
	lds	r25, __profc_lsearch+9
	lds	r18, __profc_lsearch+10
	lds	r19, __profc_lsearch+11
	lds	r20, __profc_lsearch+12
	lds	r21, __profc_lsearch+13
	lds	r30, __profc_lsearch+14
	lds	r31, __profc_lsearch+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_lsearch+15, r31
	sts	__profc_lsearch+14, r30
	sts	__profc_lsearch+13, r21
	sts	__profc_lsearch+12, r20
	sts	__profc_lsearch+11, r19
	sts	__profc_lsearch+10, r18
	sts	__profc_lsearch+9, r25
	sts	__profc_lsearch+8, r24
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
	breq	.LBB40_3
	rjmp	.LBB40_4
.LBB40_3:
	ldd	r22, Y+13                       ; 2-byte Folded Reload
	ldd	r23, Y+14                       ; 2-byte Folded Reload
	lds	r24, __profc_lsearch+16
	lds	r25, __profc_lsearch+17
	lds	r18, __profc_lsearch+18
	lds	r19, __profc_lsearch+19
	lds	r20, __profc_lsearch+20
	lds	r21, __profc_lsearch+21
	lds	r30, __profc_lsearch+22
	lds	r31, __profc_lsearch+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_lsearch+23, r31
	sts	__profc_lsearch+22, r30
	sts	__profc_lsearch+21, r21
	sts	__profc_lsearch+20, r20
	sts	__profc_lsearch+19, r19
	sts	__profc_lsearch+18, r18
	sts	__profc_lsearch+17, r25
	sts	__profc_lsearch+16, r24
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
	lds	r24, __profc_lfind
	lds	r25, __profc_lfind+1
	lds	r18, __profc_lfind+2
	lds	r19, __profc_lfind+3
	lds	r20, __profc_lfind+4
	lds	r21, __profc_lfind+5
	lds	r22, __profc_lfind+6
	lds	r23, __profc_lfind+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_lfind+7, r23
	sts	__profc_lfind+6, r22
	sts	__profc_lfind+5, r21
	sts	__profc_lfind+4, r20
	sts	__profc_lfind+3, r19
	sts	__profc_lfind+2, r18
	sts	__profc_lfind+1, r25
	sts	__profc_lfind, r24
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
	lds	r24, __profc_lfind+8
	lds	r25, __profc_lfind+9
	lds	r18, __profc_lfind+10
	lds	r19, __profc_lfind+11
	lds	r20, __profc_lfind+12
	lds	r21, __profc_lfind+13
	lds	r30, __profc_lfind+14
	lds	r31, __profc_lfind+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_lfind+15, r31
	sts	__profc_lfind+14, r30
	sts	__profc_lfind+13, r21
	sts	__profc_lfind+12, r20
	sts	__profc_lfind+11, r19
	sts	__profc_lfind+10, r18
	sts	__profc_lfind+9, r25
	sts	__profc_lfind+8, r24
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
	breq	.LBB41_3
	rjmp	.LBB41_4
.LBB41_3:
	ldd	r22, Y+9                        ; 2-byte Folded Reload
	ldd	r23, Y+10                       ; 2-byte Folded Reload
	lds	r24, __profc_lfind+16
	lds	r25, __profc_lfind+17
	lds	r18, __profc_lfind+18
	lds	r19, __profc_lfind+19
	lds	r20, __profc_lfind+20
	lds	r21, __profc_lfind+21
	lds	r30, __profc_lfind+22
	lds	r31, __profc_lfind+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_lfind+23, r31
	sts	__profc_lfind+22, r30
	sts	__profc_lfind+21, r21
	sts	__profc_lfind+20, r20
	sts	__profc_lfind+19, r19
	sts	__profc_lfind+18, r18
	sts	__profc_lfind+17, r25
	sts	__profc_lfind+16, r24
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
	lds	r24, __profc_abs
	lds	r25, __profc_abs+1
	lds	r18, __profc_abs+2
	lds	r19, __profc_abs+3
	lds	r20, __profc_abs+4
	lds	r21, __profc_abs+5
	lds	r22, __profc_abs+6
	lds	r23, __profc_abs+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_abs+7, r23
	sts	__profc_abs+6, r22
	sts	__profc_abs+5, r21
	sts	__profc_abs+4, r20
	sts	__profc_abs+3, r19
	sts	__profc_abs+2, r18
	sts	__profc_abs+1, r25
	sts	__profc_abs, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r25, r18
	mov	r24, r19
	cp	r1, r25
	cpc	r1, r24
	brlt	.LBB42_1
	rjmp	.LBB42_2
.LBB42_1:
	lds	r24, __profc_abs+8
	lds	r25, __profc_abs+9
	lds	r18, __profc_abs+10
	lds	r19, __profc_abs+11
	lds	r20, __profc_abs+12
	lds	r21, __profc_abs+13
	lds	r22, __profc_abs+14
	lds	r23, __profc_abs+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_abs+15, r23
	sts	__profc_abs+14, r22
	sts	__profc_abs+13, r21
	sts	__profc_abs+12, r20
	sts	__profc_abs+11, r19
	sts	__profc_abs+10, r18
	sts	__profc_abs+9, r25
	sts	__profc_abs+8, r24
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
	lds	r24, __profc_atoi
	lds	r25, __profc_atoi+1
	lds	r18, __profc_atoi+2
	lds	r19, __profc_atoi+3
	lds	r20, __profc_atoi+4
	lds	r21, __profc_atoi+5
	lds	r22, __profc_atoi+6
	lds	r23, __profc_atoi+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoi+7, r23
	sts	__profc_atoi+6, r22
	sts	__profc_atoi+5, r21
	sts	__profc_atoi+4, r20
	sts	__profc_atoi+3, r19
	sts	__profc_atoi+2, r18
	sts	__profc_atoi+1, r25
	sts	__profc_atoi, r24
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
	brne	.LBB43_2
	rjmp	.LBB43_3
.LBB43_2:                               ;   in Loop: Header=BB43_1 Depth=1
	lds	r24, __profc_atoi+8
	lds	r25, __profc_atoi+9
	lds	r18, __profc_atoi+10
	lds	r19, __profc_atoi+11
	lds	r20, __profc_atoi+12
	lds	r21, __profc_atoi+13
	lds	r22, __profc_atoi+14
	lds	r23, __profc_atoi+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoi+15, r23
	sts	__profc_atoi+14, r22
	sts	__profc_atoi+13, r21
	sts	__profc_atoi+12, r20
	sts	__profc_atoi+11, r19
	sts	__profc_atoi+10, r18
	sts	__profc_atoi+9, r25
	sts	__profc_atoi+8, r24
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
	brne	.LBB43_4
	rjmp	.LBB43_6
.LBB43_4:
	ldd	r18, Y+3                        ; 2-byte Folded Reload
	ldd	r19, Y+4                        ; 2-byte Folded Reload
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 45
	cpc	r24, r1
	breq	.LBB43_5
	rjmp	.LBB43_8
.LBB43_5:
	lds	r24, __profc_atoi+24
	lds	r25, __profc_atoi+25
	lds	r18, __profc_atoi+26
	lds	r19, __profc_atoi+27
	lds	r20, __profc_atoi+28
	lds	r21, __profc_atoi+29
	lds	r22, __profc_atoi+30
	lds	r23, __profc_atoi+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoi+31, r23
	sts	__profc_atoi+30, r22
	sts	__profc_atoi+29, r21
	sts	__profc_atoi+28, r20
	sts	__profc_atoi+27, r19
	sts	__profc_atoi+26, r18
	sts	__profc_atoi+25, r25
	sts	__profc_atoi+24, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+6, r25
	std	Y+5, r24
	rjmp	.LBB43_7
.LBB43_6:
	lds	r24, __profc_atoi+32
	lds	r25, __profc_atoi+33
	lds	r18, __profc_atoi+34
	lds	r19, __profc_atoi+35
	lds	r20, __profc_atoi+36
	lds	r21, __profc_atoi+37
	lds	r22, __profc_atoi+38
	lds	r23, __profc_atoi+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoi+39, r23
	sts	__profc_atoi+38, r22
	sts	__profc_atoi+37, r21
	sts	__profc_atoi+36, r20
	sts	__profc_atoi+35, r19
	sts	__profc_atoi+34, r18
	sts	__profc_atoi+33, r25
	sts	__profc_atoi+32, r24
	rjmp	.LBB43_7
.LBB43_7:
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB43_8
.LBB43_8:
	lds	r24, __profc_atoi+16
	lds	r25, __profc_atoi+17
	lds	r18, __profc_atoi+18
	lds	r19, __profc_atoi+19
	lds	r20, __profc_atoi+20
	lds	r21, __profc_atoi+21
	lds	r22, __profc_atoi+22
	lds	r23, __profc_atoi+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoi+23, r23
	sts	__profc_atoi+22, r22
	sts	__profc_atoi+21, r21
	sts	__profc_atoi+20, r20
	sts	__profc_atoi+19, r19
	sts	__profc_atoi+18, r18
	sts	__profc_atoi+17, r25
	sts	__profc_atoi+16, r24
	rjmp	.LBB43_9
.LBB43_9:                               ; =>This Inner Loop Header: Depth=1
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
	brne	.LBB43_10
	rjmp	.LBB43_11
.LBB43_10:                              ;   in Loop: Header=BB43_9 Depth=1
	lds	r24, __profc_atoi+40
	lds	r25, __profc_atoi+41
	lds	r18, __profc_atoi+42
	lds	r19, __profc_atoi+43
	lds	r20, __profc_atoi+44
	lds	r21, __profc_atoi+45
	lds	r22, __profc_atoi+46
	lds	r23, __profc_atoi+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoi+47, r23
	sts	__profc_atoi+46, r22
	sts	__profc_atoi+45, r21
	sts	__profc_atoi+44, r20
	sts	__profc_atoi+43, r19
	sts	__profc_atoi+42, r18
	sts	__profc_atoi+41, r25
	sts	__profc_atoi+40, r24
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
	rjmp	.LBB43_9
.LBB43_11:
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB43_12
	rjmp	.LBB43_13
.LBB43_12:
	lds	r24, __profc_atoi+48
	lds	r25, __profc_atoi+49
	lds	r18, __profc_atoi+50
	lds	r19, __profc_atoi+51
	lds	r20, __profc_atoi+52
	lds	r21, __profc_atoi+53
	lds	r22, __profc_atoi+54
	lds	r23, __profc_atoi+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoi+55, r23
	sts	__profc_atoi+54, r22
	sts	__profc_atoi+53, r21
	sts	__profc_atoi+52, r20
	sts	__profc_atoi+51, r19
	sts	__profc_atoi+50, r18
	sts	__profc_atoi+49, r25
	sts	__profc_atoi+48, r24
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB43_14
.LBB43_13:
	ldd	r24, Y+7
	ldd	r25, Y+8
	mov	r18, r1
	neg	r25
	neg	r24
	sbc	r25, r18
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB43_14
.LBB43_14:
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
	lds	r24, __profc_atol
	lds	r25, __profc_atol+1
	lds	r18, __profc_atol+2
	lds	r19, __profc_atol+3
	lds	r20, __profc_atol+4
	lds	r21, __profc_atol+5
	lds	r22, __profc_atol+6
	lds	r23, __profc_atol+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atol+7, r23
	sts	__profc_atol+6, r22
	sts	__profc_atol+5, r21
	sts	__profc_atol+4, r20
	sts	__profc_atol+3, r19
	sts	__profc_atol+2, r18
	sts	__profc_atol+1, r25
	sts	__profc_atol, r24
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
	brne	.LBB44_2
	rjmp	.LBB44_3
.LBB44_2:                               ;   in Loop: Header=BB44_1 Depth=1
	lds	r24, __profc_atol+8
	lds	r25, __profc_atol+9
	lds	r18, __profc_atol+10
	lds	r19, __profc_atol+11
	lds	r20, __profc_atol+12
	lds	r21, __profc_atol+13
	lds	r22, __profc_atol+14
	lds	r23, __profc_atol+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atol+15, r23
	sts	__profc_atol+14, r22
	sts	__profc_atol+13, r21
	sts	__profc_atol+12, r20
	sts	__profc_atol+11, r19
	sts	__profc_atol+10, r18
	sts	__profc_atol+9, r25
	sts	__profc_atol+8, r24
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
	brne	.LBB44_4
	rjmp	.LBB44_6
.LBB44_4:
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 45
	cpc	r24, r1
	breq	.LBB44_5
	rjmp	.LBB44_8
.LBB44_5:
	lds	r24, __profc_atol+24
	lds	r25, __profc_atol+25
	lds	r18, __profc_atol+26
	lds	r19, __profc_atol+27
	lds	r20, __profc_atol+28
	lds	r21, __profc_atol+29
	lds	r22, __profc_atol+30
	lds	r23, __profc_atol+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atol+31, r23
	sts	__profc_atol+30, r22
	sts	__profc_atol+29, r21
	sts	__profc_atol+28, r20
	sts	__profc_atol+27, r19
	sts	__profc_atol+26, r18
	sts	__profc_atol+25, r25
	sts	__profc_atol+24, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB44_7
.LBB44_6:
	lds	r24, __profc_atol+32
	lds	r25, __profc_atol+33
	lds	r18, __profc_atol+34
	lds	r19, __profc_atol+35
	lds	r20, __profc_atol+36
	lds	r21, __profc_atol+37
	lds	r22, __profc_atol+38
	lds	r23, __profc_atol+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atol+39, r23
	sts	__profc_atol+38, r22
	sts	__profc_atol+37, r21
	sts	__profc_atol+36, r20
	sts	__profc_atol+35, r19
	sts	__profc_atol+34, r18
	sts	__profc_atol+33, r25
	sts	__profc_atol+32, r24
	rjmp	.LBB44_7
.LBB44_7:
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB44_8
.LBB44_8:
	lds	r24, __profc_atol+16
	lds	r25, __profc_atol+17
	lds	r18, __profc_atol+18
	lds	r19, __profc_atol+19
	lds	r20, __profc_atol+20
	lds	r21, __profc_atol+21
	lds	r22, __profc_atol+22
	lds	r23, __profc_atol+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atol+23, r23
	sts	__profc_atol+22, r22
	sts	__profc_atol+21, r21
	sts	__profc_atol+20, r20
	sts	__profc_atol+19, r19
	sts	__profc_atol+18, r18
	sts	__profc_atol+17, r25
	sts	__profc_atol+16, r24
	rjmp	.LBB44_9
.LBB44_9:                               ; =>This Inner Loop Header: Depth=1
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
	brne	.LBB44_10
	rjmp	.LBB44_11
.LBB44_10:                              ;   in Loop: Header=BB44_9 Depth=1
	lds	r24, __profc_atol+40
	lds	r25, __profc_atol+41
	lds	r18, __profc_atol+42
	lds	r19, __profc_atol+43
	lds	r20, __profc_atol+44
	lds	r21, __profc_atol+45
	lds	r22, __profc_atol+46
	lds	r23, __profc_atol+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atol+47, r23
	sts	__profc_atol+46, r22
	sts	__profc_atol+45, r21
	sts	__profc_atol+44, r20
	sts	__profc_atol+43, r19
	sts	__profc_atol+42, r18
	sts	__profc_atol+41, r25
	sts	__profc_atol+40, r24
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
	rjmp	.LBB44_9
.LBB44_11:
	ldd	r18, Y+7
	ldd	r19, Y+8
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB44_12
	rjmp	.LBB44_13
.LBB44_12:
	lds	r24, __profc_atol+48
	lds	r25, __profc_atol+49
	lds	r18, __profc_atol+50
	lds	r19, __profc_atol+51
	lds	r20, __profc_atol+52
	lds	r21, __profc_atol+53
	lds	r22, __profc_atol+54
	lds	r23, __profc_atol+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atol+55, r23
	sts	__profc_atol+54, r22
	sts	__profc_atol+53, r21
	sts	__profc_atol+52, r20
	sts	__profc_atol+51, r19
	sts	__profc_atol+50, r18
	sts	__profc_atol+49, r25
	sts	__profc_atol+48, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldd	r18, Y+9
	ldd	r19, Y+10
	std	Y+2, r19                        ; 2-byte Folded Spill
	std	Y+1, r18                        ; 2-byte Folded Spill
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB44_14
.LBB44_13:
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
	rjmp	.LBB44_14
.LBB44_14:
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
	lds	r24, __profc_atoll
	lds	r25, __profc_atoll+1
	lds	r18, __profc_atoll+2
	lds	r19, __profc_atoll+3
	lds	r20, __profc_atoll+4
	lds	r21, __profc_atoll+5
	lds	r22, __profc_atoll+6
	lds	r23, __profc_atoll+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoll+7, r23
	sts	__profc_atoll+6, r22
	sts	__profc_atoll+5, r21
	sts	__profc_atoll+4, r20
	sts	__profc_atoll+3, r19
	sts	__profc_atoll+2, r18
	sts	__profc_atoll+1, r25
	sts	__profc_atoll, r24
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
	brne	.LBB45_2
	rjmp	.LBB45_3
.LBB45_2:                               ;   in Loop: Header=BB45_1 Depth=1
	lds	r24, __profc_atoll+8
	lds	r25, __profc_atoll+9
	lds	r18, __profc_atoll+10
	lds	r19, __profc_atoll+11
	lds	r20, __profc_atoll+12
	lds	r21, __profc_atoll+13
	lds	r22, __profc_atoll+14
	lds	r23, __profc_atoll+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoll+15, r23
	sts	__profc_atoll+14, r22
	sts	__profc_atoll+13, r21
	sts	__profc_atoll+12, r20
	sts	__profc_atoll+11, r19
	sts	__profc_atoll+10, r18
	sts	__profc_atoll+9, r25
	sts	__profc_atoll+8, r24
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
	brne	.LBB45_4
	rjmp	.LBB45_6
.LBB45_4:
	ldd	r18, Y+13                       ; 2-byte Folded Reload
	ldd	r19, Y+14                       ; 2-byte Folded Reload
	mov	r25, r18
	mov	r24, r19
	cpi	r25, 45
	cpc	r24, r1
	breq	.LBB45_5
	rjmp	.LBB45_8
.LBB45_5:
	lds	r24, __profc_atoll+24
	lds	r25, __profc_atoll+25
	lds	r18, __profc_atoll+26
	lds	r19, __profc_atoll+27
	lds	r20, __profc_atoll+28
	lds	r21, __profc_atoll+29
	lds	r22, __profc_atoll+30
	lds	r23, __profc_atoll+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoll+31, r23
	sts	__profc_atoll+30, r22
	sts	__profc_atoll+29, r21
	sts	__profc_atoll+28, r20
	sts	__profc_atoll+27, r19
	sts	__profc_atoll+26, r18
	sts	__profc_atoll+25, r25
	sts	__profc_atoll+24, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB45_7
.LBB45_6:
	lds	r24, __profc_atoll+32
	lds	r25, __profc_atoll+33
	lds	r18, __profc_atoll+34
	lds	r19, __profc_atoll+35
	lds	r20, __profc_atoll+36
	lds	r21, __profc_atoll+37
	lds	r22, __profc_atoll+38
	lds	r23, __profc_atoll+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoll+39, r23
	sts	__profc_atoll+38, r22
	sts	__profc_atoll+37, r21
	sts	__profc_atoll+36, r20
	sts	__profc_atoll+35, r19
	sts	__profc_atoll+34, r18
	sts	__profc_atoll+33, r25
	sts	__profc_atoll+32, r24
	rjmp	.LBB45_7
.LBB45_7:
	ldd	r24, Y+27
	ldd	r25, Y+28
	adiw	r24, 1
	std	Y+28, r25
	std	Y+27, r24
	rjmp	.LBB45_8
.LBB45_8:
	lds	r24, __profc_atoll+16
	lds	r25, __profc_atoll+17
	lds	r18, __profc_atoll+18
	lds	r19, __profc_atoll+19
	lds	r20, __profc_atoll+20
	lds	r21, __profc_atoll+21
	lds	r22, __profc_atoll+22
	lds	r23, __profc_atoll+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoll+23, r23
	sts	__profc_atoll+22, r22
	sts	__profc_atoll+21, r21
	sts	__profc_atoll+20, r20
	sts	__profc_atoll+19, r19
	sts	__profc_atoll+18, r18
	sts	__profc_atoll+17, r25
	sts	__profc_atoll+16, r24
	rjmp	.LBB45_9
.LBB45_9:                               ; =>This Inner Loop Header: Depth=1
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
	brne	.LBB45_10
	rjmp	.LBB45_11
.LBB45_10:                              ;   in Loop: Header=BB45_9 Depth=1
	lds	r24, __profc_atoll+40
	lds	r25, __profc_atoll+41
	lds	r18, __profc_atoll+42
	lds	r19, __profc_atoll+43
	lds	r20, __profc_atoll+44
	lds	r21, __profc_atoll+45
	lds	r22, __profc_atoll+46
	lds	r23, __profc_atoll+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoll+47, r23
	sts	__profc_atoll+46, r22
	sts	__profc_atoll+45, r21
	sts	__profc_atoll+44, r20
	sts	__profc_atoll+43, r19
	sts	__profc_atoll+42, r18
	sts	__profc_atoll+41, r25
	sts	__profc_atoll+40, r24
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
	rjmp	.LBB45_9
.LBB45_11:
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB45_12
	rjmp	.LBB45_13
.LBB45_12:
	lds	r24, __profc_atoll+48
	lds	r25, __profc_atoll+49
	lds	r18, __profc_atoll+50
	lds	r19, __profc_atoll+51
	lds	r20, __profc_atoll+52
	lds	r21, __profc_atoll+53
	lds	r22, __profc_atoll+54
	lds	r23, __profc_atoll+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_atoll+55, r23
	sts	__profc_atoll+54, r22
	sts	__profc_atoll+53, r21
	sts	__profc_atoll+52, r20
	sts	__profc_atoll+51, r19
	sts	__profc_atoll+50, r18
	sts	__profc_atoll+49, r25
	sts	__profc_atoll+48, r24
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
	rjmp	.LBB45_14
.LBB45_13:
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
	rjmp	.LBB45_14
.LBB45_14:
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
	lds	r24, __profc_bsearch
	lds	r25, __profc_bsearch+1
	lds	r18, __profc_bsearch+2
	lds	r19, __profc_bsearch+3
	lds	r20, __profc_bsearch+4
	lds	r21, __profc_bsearch+5
	lds	r22, __profc_bsearch+6
	lds	r23, __profc_bsearch+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch+7, r23
	sts	__profc_bsearch+6, r22
	sts	__profc_bsearch+5, r21
	sts	__profc_bsearch+4, r20
	sts	__profc_bsearch+3, r19
	sts	__profc_bsearch+2, r18
	sts	__profc_bsearch+1, r25
	sts	__profc_bsearch, r24
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
	lds	r24, __profc_bsearch+8
	lds	r25, __profc_bsearch+9
	lds	r18, __profc_bsearch+10
	lds	r19, __profc_bsearch+11
	lds	r20, __profc_bsearch+12
	lds	r21, __profc_bsearch+13
	lds	r22, __profc_bsearch+14
	lds	r23, __profc_bsearch+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch+15, r23
	sts	__profc_bsearch+14, r22
	sts	__profc_bsearch+13, r21
	sts	__profc_bsearch+12, r20
	sts	__profc_bsearch+11, r19
	sts	__profc_bsearch+10, r18
	sts	__profc_bsearch+9, r25
	sts	__profc_bsearch+8, r24
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
	brmi	.LBB46_3
	rjmp	.LBB46_4
.LBB46_3:                               ;   in Loop: Header=BB46_1 Depth=1
	lds	r24, __profc_bsearch+16
	lds	r25, __profc_bsearch+17
	lds	r18, __profc_bsearch+18
	lds	r19, __profc_bsearch+19
	lds	r20, __profc_bsearch+20
	lds	r21, __profc_bsearch+21
	lds	r22, __profc_bsearch+22
	lds	r23, __profc_bsearch+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch+23, r23
	sts	__profc_bsearch+22, r22
	sts	__profc_bsearch+21, r21
	sts	__profc_bsearch+20, r20
	sts	__profc_bsearch+19, r19
	sts	__profc_bsearch+18, r18
	sts	__profc_bsearch+17, r25
	sts	__profc_bsearch+16, r24
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
	brlt	.LBB46_5
	rjmp	.LBB46_6
.LBB46_5:                               ;   in Loop: Header=BB46_1 Depth=1
	lds	r24, __profc_bsearch+24
	lds	r25, __profc_bsearch+25
	lds	r18, __profc_bsearch+26
	lds	r19, __profc_bsearch+27
	lds	r20, __profc_bsearch+28
	lds	r21, __profc_bsearch+29
	lds	r22, __profc_bsearch+30
	lds	r23, __profc_bsearch+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch+31, r23
	sts	__profc_bsearch+30, r22
	sts	__profc_bsearch+29, r21
	sts	__profc_bsearch+28, r20
	sts	__profc_bsearch+27, r19
	sts	__profc_bsearch+26, r18
	sts	__profc_bsearch+25, r25
	sts	__profc_bsearch+24, r24
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
	lds	r24, __profc_bsearch_r
	lds	r25, __profc_bsearch_r+1
	lds	r18, __profc_bsearch_r+2
	lds	r19, __profc_bsearch_r+3
	lds	r20, __profc_bsearch_r+4
	lds	r21, __profc_bsearch_r+5
	lds	r22, __profc_bsearch_r+6
	lds	r23, __profc_bsearch_r+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch_r+7, r23
	sts	__profc_bsearch_r+6, r22
	sts	__profc_bsearch_r+5, r21
	sts	__profc_bsearch_r+4, r20
	sts	__profc_bsearch_r+3, r19
	sts	__profc_bsearch_r+2, r18
	sts	__profc_bsearch_r+1, r25
	sts	__profc_bsearch_r, r24
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
	lds	r24, __profc_bsearch_r+8
	lds	r25, __profc_bsearch_r+9
	lds	r18, __profc_bsearch_r+10
	lds	r19, __profc_bsearch_r+11
	lds	r20, __profc_bsearch_r+12
	lds	r21, __profc_bsearch_r+13
	lds	r22, __profc_bsearch_r+14
	lds	r23, __profc_bsearch_r+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch_r+15, r23
	sts	__profc_bsearch_r+14, r22
	sts	__profc_bsearch_r+13, r21
	sts	__profc_bsearch_r+12, r20
	sts	__profc_bsearch_r+11, r19
	sts	__profc_bsearch_r+10, r18
	sts	__profc_bsearch_r+9, r25
	sts	__profc_bsearch_r+8, r24
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
	breq	.LBB47_3
	rjmp	.LBB47_4
.LBB47_3:
	lds	r24, __profc_bsearch_r+16
	lds	r25, __profc_bsearch_r+17
	lds	r18, __profc_bsearch_r+18
	lds	r19, __profc_bsearch_r+19
	lds	r20, __profc_bsearch_r+20
	lds	r21, __profc_bsearch_r+21
	lds	r22, __profc_bsearch_r+22
	lds	r23, __profc_bsearch_r+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch_r+23, r23
	sts	__profc_bsearch_r+22, r22
	sts	__profc_bsearch_r+21, r21
	sts	__profc_bsearch_r+20, r20
	sts	__profc_bsearch_r+19, r19
	sts	__profc_bsearch_r+18, r18
	sts	__profc_bsearch_r+17, r25
	sts	__profc_bsearch_r+16, r24
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
	brlt	.LBB47_5
	rjmp	.LBB47_6
.LBB47_5:                               ;   in Loop: Header=BB47_1 Depth=1
	lds	r24, __profc_bsearch_r+24
	lds	r25, __profc_bsearch_r+25
	lds	r18, __profc_bsearch_r+26
	lds	r19, __profc_bsearch_r+27
	lds	r20, __profc_bsearch_r+28
	lds	r21, __profc_bsearch_r+29
	lds	r22, __profc_bsearch_r+30
	lds	r23, __profc_bsearch_r+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bsearch_r+31, r23
	sts	__profc_bsearch_r+30, r22
	sts	__profc_bsearch_r+29, r21
	sts	__profc_bsearch_r+28, r20
	sts	__profc_bsearch_r+27, r19
	sts	__profc_bsearch_r+26, r18
	sts	__profc_bsearch_r+25, r25
	sts	__profc_bsearch_r+24, r24
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
	lds	r24, __profc_div
	lds	r25, __profc_div+1
	lds	r18, __profc_div+2
	lds	r19, __profc_div+3
	lds	r20, __profc_div+4
	lds	r21, __profc_div+5
	lds	r22, __profc_div+6
	lds	r23, __profc_div+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_div+7, r23
	sts	__profc_div+6, r22
	sts	__profc_div+5, r21
	sts	__profc_div+4, r20
	sts	__profc_div+3, r19
	sts	__profc_div+2, r18
	sts	__profc_div+1, r25
	sts	__profc_div, r24
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
	lds	r24, __profc_imaxabs
	lds	r25, __profc_imaxabs+1
	lds	r18, __profc_imaxabs+2
	lds	r19, __profc_imaxabs+3
	lds	r20, __profc_imaxabs+4
	lds	r21, __profc_imaxabs+5
	lds	r22, __profc_imaxabs+6
	lds	r23, __profc_imaxabs+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_imaxabs+7, r23
	sts	__profc_imaxabs+6, r22
	sts	__profc_imaxabs+5, r21
	sts	__profc_imaxabs+4, r20
	sts	__profc_imaxabs+3, r19
	sts	__profc_imaxabs+2, r18
	sts	__profc_imaxabs+1, r25
	sts	__profc_imaxabs, r24
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
	breq	.LBB49_3
	rjmp	.LBB49_4
.LBB49_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB49_1
.LBB49_3:
	lds	r24, __profc_imaxabs+8
	lds	r25, __profc_imaxabs+9
	lds	r18, __profc_imaxabs+10
	lds	r19, __profc_imaxabs+11
	lds	r20, __profc_imaxabs+12
	lds	r21, __profc_imaxabs+13
	lds	r22, __profc_imaxabs+14
	lds	r23, __profc_imaxabs+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_imaxabs+15, r23
	sts	__profc_imaxabs+14, r22
	sts	__profc_imaxabs+13, r21
	sts	__profc_imaxabs+12, r20
	sts	__profc_imaxabs+11, r19
	sts	__profc_imaxabs+10, r18
	sts	__profc_imaxabs+9, r25
	sts	__profc_imaxabs+8, r24
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
	lds	r24, __profc_imaxdiv
	lds	r25, __profc_imaxdiv+1
	lds	r18, __profc_imaxdiv+2
	lds	r19, __profc_imaxdiv+3
	lds	r20, __profc_imaxdiv+4
	lds	r21, __profc_imaxdiv+5
	lds	r22, __profc_imaxdiv+6
	lds	r23, __profc_imaxdiv+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_imaxdiv+7, r23
	sts	__profc_imaxdiv+6, r22
	sts	__profc_imaxdiv+5, r21
	sts	__profc_imaxdiv+4, r20
	sts	__profc_imaxdiv+3, r19
	sts	__profc_imaxdiv+2, r18
	sts	__profc_imaxdiv+1, r25
	sts	__profc_imaxdiv, r24
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
	lds	r24, __profc_labs
	lds	r25, __profc_labs+1
	lds	r18, __profc_labs+2
	lds	r19, __profc_labs+3
	lds	r20, __profc_labs+4
	lds	r21, __profc_labs+5
	lds	r22, __profc_labs+6
	lds	r23, __profc_labs+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_labs+7, r23
	sts	__profc_labs+6, r22
	sts	__profc_labs+5, r21
	sts	__profc_labs+4, r20
	sts	__profc_labs+3, r19
	sts	__profc_labs+2, r18
	sts	__profc_labs+1, r25
	sts	__profc_labs, r24
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
	breq	.LBB51_3
	rjmp	.LBB51_4
.LBB51_2:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB51_1
.LBB51_3:
	lds	r24, __profc_labs+8
	lds	r25, __profc_labs+9
	lds	r18, __profc_labs+10
	lds	r19, __profc_labs+11
	lds	r20, __profc_labs+12
	lds	r21, __profc_labs+13
	lds	r22, __profc_labs+14
	lds	r23, __profc_labs+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_labs+15, r23
	sts	__profc_labs+14, r22
	sts	__profc_labs+13, r21
	sts	__profc_labs+12, r20
	sts	__profc_labs+11, r19
	sts	__profc_labs+10, r18
	sts	__profc_labs+9, r25
	sts	__profc_labs+8, r24
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
	lds	r24, __profc_ldiv
	lds	r25, __profc_ldiv+1
	lds	r18, __profc_ldiv+2
	lds	r19, __profc_ldiv+3
	lds	r20, __profc_ldiv+4
	lds	r21, __profc_ldiv+5
	lds	r22, __profc_ldiv+6
	lds	r23, __profc_ldiv+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldiv+7, r23
	sts	__profc_ldiv+6, r22
	sts	__profc_ldiv+5, r21
	sts	__profc_ldiv+4, r20
	sts	__profc_ldiv+3, r19
	sts	__profc_ldiv+2, r18
	sts	__profc_ldiv+1, r25
	sts	__profc_ldiv, r24
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
	lds	r24, __profc_llabs
	lds	r25, __profc_llabs+1
	lds	r18, __profc_llabs+2
	lds	r19, __profc_llabs+3
	lds	r20, __profc_llabs+4
	lds	r21, __profc_llabs+5
	lds	r22, __profc_llabs+6
	lds	r23, __profc_llabs+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_llabs+7, r23
	sts	__profc_llabs+6, r22
	sts	__profc_llabs+5, r21
	sts	__profc_llabs+4, r20
	sts	__profc_llabs+3, r19
	sts	__profc_llabs+2, r18
	sts	__profc_llabs+1, r25
	sts	__profc_llabs, r24
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
	breq	.LBB53_3
	rjmp	.LBB53_4
.LBB53_2:
	ldd	r24, Y+15                       ; 1-byte Folded Reload
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB53_1
.LBB53_3:
	lds	r24, __profc_llabs+8
	lds	r25, __profc_llabs+9
	lds	r18, __profc_llabs+10
	lds	r19, __profc_llabs+11
	lds	r20, __profc_llabs+12
	lds	r21, __profc_llabs+13
	lds	r22, __profc_llabs+14
	lds	r23, __profc_llabs+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_llabs+15, r23
	sts	__profc_llabs+14, r22
	sts	__profc_llabs+13, r21
	sts	__profc_llabs+12, r20
	sts	__profc_llabs+11, r19
	sts	__profc_llabs+10, r18
	sts	__profc_llabs+9, r25
	sts	__profc_llabs+8, r24
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
	lds	r24, __profc_lldiv
	lds	r25, __profc_lldiv+1
	lds	r18, __profc_lldiv+2
	lds	r19, __profc_lldiv+3
	lds	r20, __profc_lldiv+4
	lds	r21, __profc_lldiv+5
	lds	r22, __profc_lldiv+6
	lds	r23, __profc_lldiv+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_lldiv+7, r23
	sts	__profc_lldiv+6, r22
	sts	__profc_lldiv+5, r21
	sts	__profc_lldiv+4, r20
	sts	__profc_lldiv+3, r19
	sts	__profc_lldiv+2, r18
	sts	__profc_lldiv+1, r25
	sts	__profc_lldiv, r24
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
	lds	r24, __profc_wcschr
	lds	r25, __profc_wcschr+1
	lds	r18, __profc_wcschr+2
	lds	r19, __profc_wcschr+3
	lds	r20, __profc_wcschr+4
	lds	r21, __profc_wcschr+5
	lds	r22, __profc_wcschr+6
	lds	r23, __profc_wcschr+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcschr+7, r23
	sts	__profc_wcschr+6, r22
	sts	__profc_wcschr+5, r21
	sts	__profc_wcschr+4, r20
	sts	__profc_wcschr+3, r19
	sts	__profc_wcschr+2, r18
	sts	__profc_wcschr+1, r25
	sts	__profc_wcschr, r24
	rjmp	.LBB55_1
.LBB55_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+13
	ldd	r31, Y+14
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB55_2
	rjmp	.LBB55_6
.LBB55_2:                               ;   in Loop: Header=BB55_1 Depth=1
	lds	r24, __profc_wcschr+16
	lds	r25, __profc_wcschr+17
	lds	r18, __profc_wcschr+18
	lds	r19, __profc_wcschr+19
	lds	r20, __profc_wcschr+20
	lds	r21, __profc_wcschr+21
	lds	r22, __profc_wcschr+22
	lds	r23, __profc_wcschr+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcschr+23, r23
	sts	__profc_wcschr+22, r22
	sts	__profc_wcschr+21, r21
	sts	__profc_wcschr+20, r20
	sts	__profc_wcschr+19, r19
	sts	__profc_wcschr+18, r18
	sts	__profc_wcschr+17, r25
	sts	__profc_wcschr+16, r24
	ldd	r30, Y+13
	ldd	r31, Y+14
	ld	r18, Z
	ldd	r19, Z+1
	std	Y+5, r19                        ; 2-byte Folded Spill
	std	Y+4, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+11
	ldd	r21, Y+12
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB55_3
	rjmp	.LBB55_4
.LBB55_3:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r18, Y+4                        ; 2-byte Folded Reload
	ldd	r19, Y+5                        ; 2-byte Folded Reload
	ldd	r20, Y+6                        ; 2-byte Folded Reload
	ldd	r21, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB55_5
	rjmp	.LBB55_6
.LBB55_4:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB55_3
.LBB55_5:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	lds	r18, __profc_wcschr+24
	lds	r19, __profc_wcschr+25
	lds	r20, __profc_wcschr+26
	lds	r21, __profc_wcschr+27
	lds	r22, __profc_wcschr+28
	lds	r23, __profc_wcschr+29
	lds	r30, __profc_wcschr+30
	lds	r31, __profc_wcschr+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_wcschr+31, r31
	sts	__profc_wcschr+30, r30
	sts	__profc_wcschr+29, r23
	sts	__profc_wcschr+28, r22
	sts	__profc_wcschr+27, r21
	sts	__profc_wcschr+26, r20
	sts	__profc_wcschr+25, r19
	sts	__profc_wcschr+24, r18
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB55_6
.LBB55_6:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB55_7
	rjmp	.LBB55_9
.LBB55_7:                               ;   in Loop: Header=BB55_1 Depth=1
	lds	r24, __profc_wcschr+8
	lds	r25, __profc_wcschr+9
	lds	r18, __profc_wcschr+10
	lds	r19, __profc_wcschr+11
	lds	r20, __profc_wcschr+12
	lds	r21, __profc_wcschr+13
	lds	r22, __profc_wcschr+14
	lds	r23, __profc_wcschr+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcschr+15, r23
	sts	__profc_wcschr+14, r22
	sts	__profc_wcschr+13, r21
	sts	__profc_wcschr+12, r20
	sts	__profc_wcschr+11, r19
	sts	__profc_wcschr+10, r18
	sts	__profc_wcschr+9, r25
	sts	__profc_wcschr+8, r24
	rjmp	.LBB55_8
.LBB55_8:                               ;   in Loop: Header=BB55_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 2
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB55_1
.LBB55_9:
	ldd	r30, Y+13
	ldd	r31, Y+14
	ld	r18, Z
	ldd	r19, Z+1
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB55_10
	rjmp	.LBB55_11
.LBB55_10:
	lds	r24, __profc_wcschr+32
	lds	r25, __profc_wcschr+33
	lds	r18, __profc_wcschr+34
	lds	r19, __profc_wcschr+35
	lds	r20, __profc_wcschr+36
	lds	r21, __profc_wcschr+37
	lds	r22, __profc_wcschr+38
	lds	r23, __profc_wcschr+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcschr+39, r23
	sts	__profc_wcschr+38, r22
	sts	__profc_wcschr+37, r21
	sts	__profc_wcschr+36, r20
	sts	__profc_wcschr+35, r19
	sts	__profc_wcschr+34, r18
	sts	__profc_wcschr+33, r25
	sts	__profc_wcschr+32, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB55_12
.LBB55_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB55_12
.LBB55_12:
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
	lds	r24, __profc_wcscmp
	lds	r25, __profc_wcscmp+1
	lds	r18, __profc_wcscmp+2
	lds	r19, __profc_wcscmp+3
	lds	r20, __profc_wcscmp+4
	lds	r21, __profc_wcscmp+5
	lds	r22, __profc_wcscmp+6
	lds	r23, __profc_wcscmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscmp+7, r23
	sts	__profc_wcscmp+6, r22
	sts	__profc_wcscmp+5, r21
	sts	__profc_wcscmp+4, r20
	sts	__profc_wcscmp+3, r19
	sts	__profc_wcscmp+2, r18
	sts	__profc_wcscmp+1, r25
	sts	__profc_wcscmp, r24
	rjmp	.LBB56_1
.LBB56_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r30, Y+13
	ldd	r31, Y+14
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r30, Y+11
	ldd	r31, Y+12
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+10, r24                       ; 1-byte Folded Spill
	breq	.LBB56_2
	rjmp	.LBB56_8
.LBB56_2:                               ;   in Loop: Header=BB56_1 Depth=1
	lds	r24, __profc_wcscmp+32
	lds	r25, __profc_wcscmp+33
	lds	r18, __profc_wcscmp+34
	lds	r19, __profc_wcscmp+35
	lds	r20, __profc_wcscmp+36
	lds	r21, __profc_wcscmp+37
	lds	r22, __profc_wcscmp+38
	lds	r23, __profc_wcscmp+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscmp+39, r23
	sts	__profc_wcscmp+38, r22
	sts	__profc_wcscmp+37, r21
	sts	__profc_wcscmp+36, r20
	sts	__profc_wcscmp+35, r19
	sts	__profc_wcscmp+34, r18
	sts	__profc_wcscmp+33, r25
	sts	__profc_wcscmp+32, r24
	ldd	r30, Y+13
	ldd	r31, Y+14
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB56_3
	rjmp	.LBB56_8
.LBB56_3:                               ;   in Loop: Header=BB56_1 Depth=1
	lds	r24, __profc_wcscmp+40
	lds	r25, __profc_wcscmp+41
	lds	r18, __profc_wcscmp+42
	lds	r19, __profc_wcscmp+43
	lds	r20, __profc_wcscmp+44
	lds	r21, __profc_wcscmp+45
	lds	r22, __profc_wcscmp+46
	lds	r23, __profc_wcscmp+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscmp+47, r23
	sts	__profc_wcscmp+46, r22
	sts	__profc_wcscmp+45, r21
	sts	__profc_wcscmp+44, r20
	sts	__profc_wcscmp+43, r19
	sts	__profc_wcscmp+42, r18
	sts	__profc_wcscmp+41, r25
	sts	__profc_wcscmp+40, r24
	rjmp	.LBB56_4
.LBB56_4:                               ;   in Loop: Header=BB56_1 Depth=1
	lds	r24, __profc_wcscmp+16
	lds	r25, __profc_wcscmp+17
	lds	r18, __profc_wcscmp+18
	lds	r19, __profc_wcscmp+19
	lds	r20, __profc_wcscmp+20
	lds	r21, __profc_wcscmp+21
	lds	r22, __profc_wcscmp+22
	lds	r23, __profc_wcscmp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscmp+23, r23
	sts	__profc_wcscmp+22, r22
	sts	__profc_wcscmp+21, r21
	sts	__profc_wcscmp+20, r20
	sts	__profc_wcscmp+19, r19
	sts	__profc_wcscmp+18, r18
	sts	__profc_wcscmp+17, r25
	sts	__profc_wcscmp+16, r24
	ldd	r30, Y+11
	ldd	r31, Y+12
	ld	r24, Z
	ldd	r25, Z+1
	mov	r18, r24
	std	Y+6, r18                        ; 1-byte Folded Spill
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+7, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB56_5
	rjmp	.LBB56_6
.LBB56_5:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r25, Y+7                        ; 1-byte Folded Reload
	ldd	r18, Y+6                        ; 1-byte Folded Reload
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	cp	r18, r1
	cpc	r25, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB56_7
	rjmp	.LBB56_8
.LBB56_6:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB56_5
.LBB56_7:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	lds	r18, __profc_wcscmp+24
	lds	r19, __profc_wcscmp+25
	lds	r20, __profc_wcscmp+26
	lds	r21, __profc_wcscmp+27
	lds	r22, __profc_wcscmp+28
	lds	r23, __profc_wcscmp+29
	lds	r30, __profc_wcscmp+30
	lds	r31, __profc_wcscmp+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_wcscmp+31, r31
	sts	__profc_wcscmp+30, r30
	sts	__profc_wcscmp+29, r23
	sts	__profc_wcscmp+28, r22
	sts	__profc_wcscmp+27, r21
	sts	__profc_wcscmp+26, r20
	sts	__profc_wcscmp+25, r19
	sts	__profc_wcscmp+24, r18
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB56_8
.LBB56_8:                               ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB56_9
	rjmp	.LBB56_11
.LBB56_9:                               ;   in Loop: Header=BB56_1 Depth=1
	lds	r24, __profc_wcscmp+8
	lds	r25, __profc_wcscmp+9
	lds	r18, __profc_wcscmp+10
	lds	r19, __profc_wcscmp+11
	lds	r20, __profc_wcscmp+12
	lds	r21, __profc_wcscmp+13
	lds	r22, __profc_wcscmp+14
	lds	r23, __profc_wcscmp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscmp+15, r23
	sts	__profc_wcscmp+14, r22
	sts	__profc_wcscmp+13, r21
	sts	__profc_wcscmp+12, r20
	sts	__profc_wcscmp+11, r19
	sts	__profc_wcscmp+10, r18
	sts	__profc_wcscmp+9, r25
	sts	__profc_wcscmp+8, r24
	rjmp	.LBB56_10
.LBB56_10:                              ;   in Loop: Header=BB56_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 2
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	adiw	r24, 2
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB56_1
.LBB56_11:
	ldd	r30, Y+13
	ldd	r31, Y+14
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+11
	ldd	r31, Y+12
	ld	r18, Z
	ldd	r19, Z+1
	cp	r24, r18
	cpc	r25, r19
	brlt	.LBB56_12
	rjmp	.LBB56_13
.LBB56_12:
	lds	r24, __profc_wcscmp+48
	lds	r25, __profc_wcscmp+49
	lds	r18, __profc_wcscmp+50
	lds	r19, __profc_wcscmp+51
	lds	r20, __profc_wcscmp+52
	lds	r21, __profc_wcscmp+53
	lds	r22, __profc_wcscmp+54
	lds	r23, __profc_wcscmp+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscmp+55, r23
	sts	__profc_wcscmp+54, r22
	sts	__profc_wcscmp+53, r21
	sts	__profc_wcscmp+52, r20
	sts	__profc_wcscmp+51, r19
	sts	__profc_wcscmp+50, r18
	sts	__profc_wcscmp+49, r25
	sts	__profc_wcscmp+48, r24
	ldi	r24, 255
	ldi	r25, 255
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB56_16
.LBB56_13:
	ldd	r30, Y+13
	ldd	r31, Y+14
	ld	r20, Z
	ldd	r21, Z+1
	ldd	r30, Y+11
	ldd	r31, Y+12
	ld	r18, Z
	ldd	r19, Z+1
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlt	.LBB56_14
	rjmp	.LBB56_15
.LBB56_14:
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	clr	r25
	std	Y+4, r25                        ; 2-byte Folded Spill
	std	Y+3, r24                        ; 2-byte Folded Spill
	rjmp	.LBB56_16
	rjmp	.LBB56_16
.LBB56_15:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB56_14
.LBB56_16:
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
	lds	r24, __profc_wcscpy
	lds	r25, __profc_wcscpy+1
	lds	r18, __profc_wcscpy+2
	lds	r19, __profc_wcscpy+3
	lds	r20, __profc_wcscpy+4
	lds	r21, __profc_wcscpy+5
	lds	r22, __profc_wcscpy+6
	lds	r23, __profc_wcscpy+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscpy+7, r23
	sts	__profc_wcscpy+6, r22
	sts	__profc_wcscpy+5, r21
	sts	__profc_wcscpy+4, r20
	sts	__profc_wcscpy+3, r19
	sts	__profc_wcscpy+2, r18
	sts	__profc_wcscpy+1, r25
	sts	__profc_wcscpy, r24
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
	brne	.LBB57_2
	rjmp	.LBB57_3
.LBB57_2:                               ;   in Loop: Header=BB57_1 Depth=1
	lds	r24, __profc_wcscpy+8
	lds	r25, __profc_wcscpy+9
	lds	r18, __profc_wcscpy+10
	lds	r19, __profc_wcscpy+11
	lds	r20, __profc_wcscpy+12
	lds	r21, __profc_wcscpy+13
	lds	r22, __profc_wcscpy+14
	lds	r23, __profc_wcscpy+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcscpy+15, r23
	sts	__profc_wcscpy+14, r22
	sts	__profc_wcscpy+13, r21
	sts	__profc_wcscpy+12, r20
	sts	__profc_wcscpy+11, r19
	sts	__profc_wcscpy+10, r18
	sts	__profc_wcscpy+9, r25
	sts	__profc_wcscpy+8, r24
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
	lds	r24, __profc_wcslen
	lds	r25, __profc_wcslen+1
	lds	r18, __profc_wcslen+2
	lds	r19, __profc_wcslen+3
	lds	r20, __profc_wcslen+4
	lds	r21, __profc_wcslen+5
	lds	r22, __profc_wcslen+6
	lds	r23, __profc_wcslen+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcslen+7, r23
	sts	__profc_wcslen+6, r22
	sts	__profc_wcslen+5, r21
	sts	__profc_wcslen+4, r20
	sts	__profc_wcslen+3, r19
	sts	__profc_wcslen+2, r18
	sts	__profc_wcslen+1, r25
	sts	__profc_wcslen, r24
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
	brne	.LBB58_2
	rjmp	.LBB58_4
.LBB58_2:                               ;   in Loop: Header=BB58_1 Depth=1
	lds	r24, __profc_wcslen+8
	lds	r25, __profc_wcslen+9
	lds	r18, __profc_wcslen+10
	lds	r19, __profc_wcslen+11
	lds	r20, __profc_wcslen+12
	lds	r21, __profc_wcslen+13
	lds	r22, __profc_wcslen+14
	lds	r23, __profc_wcslen+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcslen+15, r23
	sts	__profc_wcslen+14, r22
	sts	__profc_wcslen+13, r21
	sts	__profc_wcslen+12, r20
	sts	__profc_wcslen+11, r19
	sts	__profc_wcslen+10, r18
	sts	__profc_wcslen+9, r25
	sts	__profc_wcslen+8, r24
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
	sbiw	r28, 18
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+18, r25
	std	Y+17, r24
	std	Y+16, r23
	std	Y+15, r22
	std	Y+14, r21
	std	Y+13, r20
	lds	r24, __profc_wcsncmp
	lds	r25, __profc_wcsncmp+1
	lds	r18, __profc_wcsncmp+2
	lds	r19, __profc_wcsncmp+3
	lds	r20, __profc_wcsncmp+4
	lds	r21, __profc_wcsncmp+5
	lds	r22, __profc_wcsncmp+6
	lds	r23, __profc_wcsncmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+7, r23
	sts	__profc_wcsncmp+6, r22
	sts	__profc_wcsncmp+5, r21
	sts	__profc_wcsncmp+4, r20
	sts	__profc_wcsncmp+3, r19
	sts	__profc_wcsncmp+2, r18
	sts	__profc_wcsncmp+1, r25
	sts	__profc_wcsncmp, r24
	rjmp	.LBB59_1
.LBB59_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+13
	ldd	r21, Y+14
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+12, r24                       ; 1-byte Folded Spill
	brne	.LBB59_2
	rjmp	.LBB59_10
.LBB59_2:                               ;   in Loop: Header=BB59_1 Depth=1
	lds	r24, __profc_wcsncmp+48
	lds	r25, __profc_wcsncmp+49
	lds	r18, __profc_wcsncmp+50
	lds	r19, __profc_wcsncmp+51
	lds	r20, __profc_wcsncmp+52
	lds	r21, __profc_wcsncmp+53
	lds	r22, __profc_wcsncmp+54
	lds	r23, __profc_wcsncmp+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+55, r23
	sts	__profc_wcsncmp+54, r22
	sts	__profc_wcsncmp+53, r21
	sts	__profc_wcsncmp+52, r20
	sts	__profc_wcsncmp+51, r19
	sts	__profc_wcsncmp+50, r18
	sts	__profc_wcsncmp+49, r25
	sts	__profc_wcsncmp+48, r24
	ldd	r30, Y+17
	ldd	r31, Y+18
	ld	r18, Z
	ldd	r19, Z+1
	ldd	r30, Y+15
	ldd	r31, Y+16
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	breq	.LBB59_3
	rjmp	.LBB59_10
.LBB59_3:                               ;   in Loop: Header=BB59_1 Depth=1
	lds	r24, __profc_wcsncmp+56
	lds	r25, __profc_wcsncmp+57
	lds	r18, __profc_wcsncmp+58
	lds	r19, __profc_wcsncmp+59
	lds	r20, __profc_wcsncmp+60
	lds	r21, __profc_wcsncmp+61
	lds	r22, __profc_wcsncmp+62
	lds	r23, __profc_wcsncmp+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+63, r23
	sts	__profc_wcsncmp+62, r22
	sts	__profc_wcsncmp+61, r21
	sts	__profc_wcsncmp+60, r20
	sts	__profc_wcsncmp+59, r19
	sts	__profc_wcsncmp+58, r18
	sts	__profc_wcsncmp+57, r25
	sts	__profc_wcsncmp+56, r24
	rjmp	.LBB59_4
.LBB59_4:                               ;   in Loop: Header=BB59_1 Depth=1
	lds	r24, __profc_wcsncmp+32
	lds	r25, __profc_wcsncmp+33
	lds	r18, __profc_wcsncmp+34
	lds	r19, __profc_wcsncmp+35
	lds	r20, __profc_wcsncmp+36
	lds	r21, __profc_wcsncmp+37
	lds	r22, __profc_wcsncmp+38
	lds	r23, __profc_wcsncmp+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+39, r23
	sts	__profc_wcsncmp+38, r22
	sts	__profc_wcsncmp+37, r21
	sts	__profc_wcsncmp+36, r20
	sts	__profc_wcsncmp+35, r19
	sts	__profc_wcsncmp+34, r18
	sts	__profc_wcsncmp+33, r25
	sts	__profc_wcsncmp+32, r24
	ldd	r30, Y+17
	ldd	r31, Y+18
	ld	r20, Z
	ldd	r21, Z+1
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+12, r24                       ; 1-byte Folded Spill
	brne	.LBB59_5
	rjmp	.LBB59_10
.LBB59_5:                               ;   in Loop: Header=BB59_1 Depth=1
	lds	r24, __profc_wcsncmp+40
	lds	r25, __profc_wcsncmp+41
	lds	r18, __profc_wcsncmp+42
	lds	r19, __profc_wcsncmp+43
	lds	r20, __profc_wcsncmp+44
	lds	r21, __profc_wcsncmp+45
	lds	r22, __profc_wcsncmp+46
	lds	r23, __profc_wcsncmp+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+47, r23
	sts	__profc_wcsncmp+46, r22
	sts	__profc_wcsncmp+45, r21
	sts	__profc_wcsncmp+44, r20
	sts	__profc_wcsncmp+43, r19
	sts	__profc_wcsncmp+42, r18
	sts	__profc_wcsncmp+41, r25
	sts	__profc_wcsncmp+40, r24
	rjmp	.LBB59_6
.LBB59_6:                               ;   in Loop: Header=BB59_1 Depth=1
	lds	r24, __profc_wcsncmp+16
	lds	r25, __profc_wcsncmp+17
	lds	r18, __profc_wcsncmp+18
	lds	r19, __profc_wcsncmp+19
	lds	r20, __profc_wcsncmp+20
	lds	r21, __profc_wcsncmp+21
	lds	r22, __profc_wcsncmp+22
	lds	r23, __profc_wcsncmp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+23, r23
	sts	__profc_wcsncmp+22, r22
	sts	__profc_wcsncmp+21, r21
	sts	__profc_wcsncmp+20, r20
	sts	__profc_wcsncmp+19, r19
	sts	__profc_wcsncmp+18, r18
	sts	__profc_wcsncmp+17, r25
	sts	__profc_wcsncmp+16, r24
	ldd	r30, Y+15
	ldd	r31, Y+16
	ld	r24, Z
	ldd	r25, Z+1
	mov	r18, r24
	std	Y+8, r18                        ; 1-byte Folded Spill
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+9, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+11, r24                       ; 1-byte Folded Spill
	brne	.LBB59_7
	rjmp	.LBB59_8
.LBB59_7:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r25, Y+9                        ; 1-byte Folded Reload
	ldd	r18, Y+8                        ; 1-byte Folded Reload
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	cp	r18, r1
	cpc	r25, r1
	std	Y+12, r24                       ; 1-byte Folded Spill
	brne	.LBB59_9
	rjmp	.LBB59_10
.LBB59_8:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	std	Y+11, r24                       ; 1-byte Folded Spill
	rjmp	.LBB59_7
.LBB59_9:                               ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	lds	r18, __profc_wcsncmp+24
	lds	r19, __profc_wcsncmp+25
	lds	r20, __profc_wcsncmp+26
	lds	r21, __profc_wcsncmp+27
	lds	r22, __profc_wcsncmp+28
	lds	r23, __profc_wcsncmp+29
	lds	r30, __profc_wcsncmp+30
	lds	r31, __profc_wcsncmp+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_wcsncmp+31, r31
	sts	__profc_wcsncmp+30, r30
	sts	__profc_wcsncmp+29, r23
	sts	__profc_wcsncmp+28, r22
	sts	__profc_wcsncmp+27, r21
	sts	__profc_wcsncmp+26, r20
	sts	__profc_wcsncmp+25, r19
	sts	__profc_wcsncmp+24, r18
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB59_10
.LBB59_10:                              ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB59_11
	rjmp	.LBB59_13
.LBB59_11:                              ;   in Loop: Header=BB59_1 Depth=1
	lds	r24, __profc_wcsncmp+8
	lds	r25, __profc_wcsncmp+9
	lds	r18, __profc_wcsncmp+10
	lds	r19, __profc_wcsncmp+11
	lds	r20, __profc_wcsncmp+12
	lds	r21, __profc_wcsncmp+13
	lds	r22, __profc_wcsncmp+14
	lds	r23, __profc_wcsncmp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+15, r23
	sts	__profc_wcsncmp+14, r22
	sts	__profc_wcsncmp+13, r21
	sts	__profc_wcsncmp+12, r20
	sts	__profc_wcsncmp+11, r19
	sts	__profc_wcsncmp+10, r18
	sts	__profc_wcsncmp+9, r25
	sts	__profc_wcsncmp+8, r24
	rjmp	.LBB59_12
.LBB59_12:                              ;   in Loop: Header=BB59_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	sbiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	adiw	r24, 2
	std	Y+18, r25
	std	Y+17, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	adiw	r24, 2
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB59_1
.LBB59_13:
	ldd	r18, Y+13
	ldd	r19, Y+14
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB59_14
	rjmp	.LBB59_20
.LBB59_14:
	lds	r24, __profc_wcsncmp+64
	lds	r25, __profc_wcsncmp+65
	lds	r18, __profc_wcsncmp+66
	lds	r19, __profc_wcsncmp+67
	lds	r20, __profc_wcsncmp+68
	lds	r21, __profc_wcsncmp+69
	lds	r22, __profc_wcsncmp+70
	lds	r23, __profc_wcsncmp+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+71, r23
	sts	__profc_wcsncmp+70, r22
	sts	__profc_wcsncmp+69, r21
	sts	__profc_wcsncmp+68, r20
	sts	__profc_wcsncmp+67, r19
	sts	__profc_wcsncmp+66, r18
	sts	__profc_wcsncmp+65, r25
	sts	__profc_wcsncmp+64, r24
	ldd	r30, Y+17
	ldd	r31, Y+18
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+15
	ldd	r31, Y+16
	ld	r18, Z
	ldd	r19, Z+1
	cp	r24, r18
	cpc	r25, r19
	brlt	.LBB59_15
	rjmp	.LBB59_16
.LBB59_15:
	lds	r24, __profc_wcsncmp+72
	lds	r25, __profc_wcsncmp+73
	lds	r18, __profc_wcsncmp+74
	lds	r19, __profc_wcsncmp+75
	lds	r20, __profc_wcsncmp+76
	lds	r21, __profc_wcsncmp+77
	lds	r22, __profc_wcsncmp+78
	lds	r23, __profc_wcsncmp+79
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wcsncmp+79, r23
	sts	__profc_wcsncmp+78, r22
	sts	__profc_wcsncmp+77, r21
	sts	__profc_wcsncmp+76, r20
	sts	__profc_wcsncmp+75, r19
	sts	__profc_wcsncmp+74, r18
	sts	__profc_wcsncmp+73, r25
	sts	__profc_wcsncmp+72, r24
	ldi	r24, 255
	ldi	r25, 255
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_19
.LBB59_16:
	ldd	r30, Y+17
	ldd	r31, Y+18
	ld	r20, Z
	ldd	r21, Z+1
	ldd	r30, Y+15
	ldd	r31, Y+16
	ld	r18, Z
	ldd	r19, Z+1
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brlt	.LBB59_17
	rjmp	.LBB59_18
.LBB59_17:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	clr	r25
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_19
	rjmp	.LBB59_19
.LBB59_18:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB59_17
.LBB59_19:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_21
.LBB59_20:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB59_21
.LBB59_21:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 18
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
	lds	r24, __profc_wmemchr
	lds	r25, __profc_wmemchr+1
	lds	r18, __profc_wmemchr+2
	lds	r19, __profc_wmemchr+3
	lds	r20, __profc_wmemchr+4
	lds	r21, __profc_wmemchr+5
	lds	r22, __profc_wmemchr+6
	lds	r23, __profc_wmemchr+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemchr+7, r23
	sts	__profc_wmemchr+6, r22
	sts	__profc_wmemchr+5, r21
	sts	__profc_wmemchr+4, r20
	sts	__profc_wmemchr+3, r19
	sts	__profc_wmemchr+2, r18
	sts	__profc_wmemchr+1, r25
	sts	__profc_wmemchr, r24
	rjmp	.LBB60_1
.LBB60_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+11
	ldd	r21, Y+12
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB60_2
	rjmp	.LBB60_6
.LBB60_2:                               ;   in Loop: Header=BB60_1 Depth=1
	lds	r24, __profc_wmemchr+16
	lds	r25, __profc_wmemchr+17
	lds	r18, __profc_wmemchr+18
	lds	r19, __profc_wmemchr+19
	lds	r20, __profc_wmemchr+20
	lds	r21, __profc_wmemchr+21
	lds	r22, __profc_wmemchr+22
	lds	r23, __profc_wmemchr+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemchr+23, r23
	sts	__profc_wmemchr+22, r22
	sts	__profc_wmemchr+21, r21
	sts	__profc_wmemchr+20, r20
	sts	__profc_wmemchr+19, r19
	sts	__profc_wmemchr+18, r18
	sts	__profc_wmemchr+17, r25
	sts	__profc_wmemchr+16, r24
	ldd	r30, Y+15
	ldd	r31, Y+16
	ld	r18, Z
	ldd	r19, Z+1
	std	Y+5, r19                        ; 2-byte Folded Spill
	std	Y+4, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+13
	ldd	r21, Y+14
	std	Y+7, r21                        ; 2-byte Folded Spill
	std	Y+6, r20                        ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+9, r24                        ; 1-byte Folded Spill
	brne	.LBB60_3
	rjmp	.LBB60_4
.LBB60_3:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r18, Y+4                        ; 2-byte Folded Reload
	ldd	r19, Y+5                        ; 2-byte Folded Reload
	ldd	r20, Y+6                        ; 2-byte Folded Reload
	ldd	r21, Y+7                        ; 2-byte Folded Reload
	ldd	r24, Y+9                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+10, r24                       ; 1-byte Folded Spill
	brne	.LBB60_5
	rjmp	.LBB60_6
.LBB60_4:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	std	Y+9, r24                        ; 1-byte Folded Spill
	rjmp	.LBB60_3
.LBB60_5:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	lds	r18, __profc_wmemchr+24
	lds	r19, __profc_wmemchr+25
	lds	r20, __profc_wmemchr+26
	lds	r21, __profc_wmemchr+27
	lds	r22, __profc_wmemchr+28
	lds	r23, __profc_wmemchr+29
	lds	r30, __profc_wmemchr+30
	lds	r31, __profc_wmemchr+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_wmemchr+31, r31
	sts	__profc_wmemchr+30, r30
	sts	__profc_wmemchr+29, r23
	sts	__profc_wmemchr+28, r22
	sts	__profc_wmemchr+27, r21
	sts	__profc_wmemchr+26, r20
	sts	__profc_wmemchr+25, r19
	sts	__profc_wmemchr+24, r18
	std	Y+10, r24                       ; 1-byte Folded Spill
	rjmp	.LBB60_6
.LBB60_6:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+10                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB60_7
	rjmp	.LBB60_9
.LBB60_7:                               ;   in Loop: Header=BB60_1 Depth=1
	lds	r24, __profc_wmemchr+8
	lds	r25, __profc_wmemchr+9
	lds	r18, __profc_wmemchr+10
	lds	r19, __profc_wmemchr+11
	lds	r20, __profc_wmemchr+12
	lds	r21, __profc_wmemchr+13
	lds	r22, __profc_wmemchr+14
	lds	r23, __profc_wmemchr+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemchr+15, r23
	sts	__profc_wmemchr+14, r22
	sts	__profc_wmemchr+13, r21
	sts	__profc_wmemchr+12, r20
	sts	__profc_wmemchr+11, r19
	sts	__profc_wmemchr+10, r18
	sts	__profc_wmemchr+9, r25
	sts	__profc_wmemchr+8, r24
	rjmp	.LBB60_8
.LBB60_8:                               ;   in Loop: Header=BB60_1 Depth=1
	ldd	r24, Y+11
	ldd	r25, Y+12
	sbiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	adiw	r24, 2
	std	Y+16, r25
	std	Y+15, r24
	rjmp	.LBB60_1
.LBB60_9:
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB60_10
	rjmp	.LBB60_11
.LBB60_10:
	lds	r24, __profc_wmemchr+32
	lds	r25, __profc_wmemchr+33
	lds	r18, __profc_wmemchr+34
	lds	r19, __profc_wmemchr+35
	lds	r20, __profc_wmemchr+36
	lds	r21, __profc_wmemchr+37
	lds	r22, __profc_wmemchr+38
	lds	r23, __profc_wmemchr+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemchr+39, r23
	sts	__profc_wmemchr+38, r22
	sts	__profc_wmemchr+37, r21
	sts	__profc_wmemchr+36, r20
	sts	__profc_wmemchr+35, r19
	sts	__profc_wmemchr+34, r18
	sts	__profc_wmemchr+33, r25
	sts	__profc_wmemchr+32, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB60_12
.LBB60_11:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB60_12
.LBB60_12:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 16
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
	lds	r24, __profc_wmemcmp
	lds	r25, __profc_wmemcmp+1
	lds	r18, __profc_wmemcmp+2
	lds	r19, __profc_wmemcmp+3
	lds	r20, __profc_wmemcmp+4
	lds	r21, __profc_wmemcmp+5
	lds	r22, __profc_wmemcmp+6
	lds	r23, __profc_wmemcmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemcmp+7, r23
	sts	__profc_wmemcmp+6, r22
	sts	__profc_wmemcmp+5, r21
	sts	__profc_wmemcmp+4, r20
	sts	__profc_wmemcmp+3, r19
	sts	__profc_wmemcmp+2, r18
	sts	__profc_wmemcmp+1, r25
	sts	__profc_wmemcmp, r24
	rjmp	.LBB61_1
.LBB61_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+14, r24                       ; 1-byte Folded Spill
	brne	.LBB61_2
	rjmp	.LBB61_6
.LBB61_2:                               ;   in Loop: Header=BB61_1 Depth=1
	lds	r24, __profc_wmemcmp+16
	lds	r25, __profc_wmemcmp+17
	lds	r18, __profc_wmemcmp+18
	lds	r19, __profc_wmemcmp+19
	lds	r20, __profc_wmemcmp+20
	lds	r21, __profc_wmemcmp+21
	lds	r22, __profc_wmemcmp+22
	lds	r23, __profc_wmemcmp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemcmp+23, r23
	sts	__profc_wmemcmp+22, r22
	sts	__profc_wmemcmp+21, r21
	sts	__profc_wmemcmp+20, r20
	sts	__profc_wmemcmp+19, r19
	sts	__profc_wmemcmp+18, r18
	sts	__profc_wmemcmp+17, r25
	sts	__profc_wmemcmp+16, r24
	ldd	r30, Y+19
	ldd	r31, Y+20
	ld	r18, Z
	ldd	r19, Z+1
	std	Y+9, r19                        ; 2-byte Folded Spill
	std	Y+8, r18                        ; 2-byte Folded Spill
	ldd	r30, Y+17
	ldd	r31, Y+18
	ld	r20, Z
	ldd	r21, Z+1
	std	Y+11, r21                       ; 2-byte Folded Spill
	std	Y+10, r20                       ; 2-byte Folded Spill
	mov	r24, r1
	std	Y+12, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+13, r24                       ; 1-byte Folded Spill
	breq	.LBB61_3
	rjmp	.LBB61_4
.LBB61_3:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r18, Y+8                        ; 2-byte Folded Reload
	ldd	r19, Y+9                        ; 2-byte Folded Reload
	ldd	r20, Y+10                       ; 2-byte Folded Reload
	ldd	r21, Y+11                       ; 2-byte Folded Reload
	ldd	r24, Y+13                       ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	cp	r18, r20
	cpc	r19, r21
	std	Y+14, r24                       ; 1-byte Folded Spill
	breq	.LBB61_5
	rjmp	.LBB61_6
.LBB61_4:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	std	Y+13, r24                       ; 1-byte Folded Spill
	rjmp	.LBB61_3
.LBB61_5:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	lds	r18, __profc_wmemcmp+24
	lds	r19, __profc_wmemcmp+25
	lds	r20, __profc_wmemcmp+26
	lds	r21, __profc_wmemcmp+27
	lds	r22, __profc_wmemcmp+28
	lds	r23, __profc_wmemcmp+29
	lds	r30, __profc_wmemcmp+30
	lds	r31, __profc_wmemcmp+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_wmemcmp+31, r31
	sts	__profc_wmemcmp+30, r30
	sts	__profc_wmemcmp+29, r23
	sts	__profc_wmemcmp+28, r22
	sts	__profc_wmemcmp+27, r21
	sts	__profc_wmemcmp+26, r20
	sts	__profc_wmemcmp+25, r19
	sts	__profc_wmemcmp+24, r18
	std	Y+14, r24                       ; 1-byte Folded Spill
	rjmp	.LBB61_6
.LBB61_6:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB61_7
	rjmp	.LBB61_9
.LBB61_7:                               ;   in Loop: Header=BB61_1 Depth=1
	lds	r24, __profc_wmemcmp+8
	lds	r25, __profc_wmemcmp+9
	lds	r18, __profc_wmemcmp+10
	lds	r19, __profc_wmemcmp+11
	lds	r20, __profc_wmemcmp+12
	lds	r21, __profc_wmemcmp+13
	lds	r22, __profc_wmemcmp+14
	lds	r23, __profc_wmemcmp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemcmp+15, r23
	sts	__profc_wmemcmp+14, r22
	sts	__profc_wmemcmp+13, r21
	sts	__profc_wmemcmp+12, r20
	sts	__profc_wmemcmp+11, r19
	sts	__profc_wmemcmp+10, r18
	sts	__profc_wmemcmp+9, r25
	sts	__profc_wmemcmp+8, r24
	rjmp	.LBB61_8
.LBB61_8:                               ;   in Loop: Header=BB61_1 Depth=1
	ldd	r24, Y+15
	ldd	r25, Y+16
	sbiw	r24, 1
	std	Y+16, r25
	std	Y+15, r24
	ldd	r24, Y+19
	ldd	r25, Y+20
	adiw	r24, 2
	std	Y+20, r25
	std	Y+19, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	adiw	r24, 2
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB61_1
.LBB61_9:
	ldd	r18, Y+15
	ldd	r19, Y+16
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB61_10
	rjmp	.LBB61_16
.LBB61_10:
	lds	r24, __profc_wmemcmp+32
	lds	r25, __profc_wmemcmp+33
	lds	r18, __profc_wmemcmp+34
	lds	r19, __profc_wmemcmp+35
	lds	r20, __profc_wmemcmp+36
	lds	r21, __profc_wmemcmp+37
	lds	r22, __profc_wmemcmp+38
	lds	r23, __profc_wmemcmp+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemcmp+39, r23
	sts	__profc_wmemcmp+38, r22
	sts	__profc_wmemcmp+37, r21
	sts	__profc_wmemcmp+36, r20
	sts	__profc_wmemcmp+35, r19
	sts	__profc_wmemcmp+34, r18
	sts	__profc_wmemcmp+33, r25
	sts	__profc_wmemcmp+32, r24
	ldd	r30, Y+19
	ldd	r31, Y+20
	ld	r24, Z
	ldd	r25, Z+1
	ldd	r30, Y+17
	ldd	r31, Y+18
	ld	r18, Z
	ldd	r19, Z+1
	cp	r24, r18
	cpc	r25, r19
	brlt	.LBB61_11
	rjmp	.LBB61_12
.LBB61_11:
	lds	r24, __profc_wmemcmp+40
	lds	r25, __profc_wmemcmp+41
	lds	r18, __profc_wmemcmp+42
	lds	r19, __profc_wmemcmp+43
	lds	r20, __profc_wmemcmp+44
	lds	r21, __profc_wmemcmp+45
	lds	r22, __profc_wmemcmp+46
	lds	r23, __profc_wmemcmp+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemcmp+47, r23
	sts	__profc_wmemcmp+46, r22
	sts	__profc_wmemcmp+45, r21
	sts	__profc_wmemcmp+44, r20
	sts	__profc_wmemcmp+43, r19
	sts	__profc_wmemcmp+42, r18
	sts	__profc_wmemcmp+41, r25
	sts	__profc_wmemcmp+40, r24
	ldi	r24, 255
	ldi	r25, 255
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_15
.LBB61_12:
	ldd	r30, Y+19
	ldd	r31, Y+20
	ld	r20, Z
	ldd	r21, Z+1
	ldd	r30, Y+17
	ldd	r31, Y+18
	ld	r18, Z
	ldd	r19, Z+1
	mov	r24, r1
	std	Y+3, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r20
	cpc	r19, r21
	std	Y+4, r24                        ; 1-byte Folded Spill
	brlt	.LBB61_13
	rjmp	.LBB61_14
.LBB61_13:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	clr	r25
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_15
	rjmp	.LBB61_15
.LBB61_14:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB61_13
.LBB61_15:
	ldd	r24, Y+5                        ; 2-byte Folded Reload
	ldd	r25, Y+6                        ; 2-byte Folded Reload
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_17
.LBB61_16:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB61_17
.LBB61_17:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 20
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
	lds	r24, __profc_wmemcpy
	lds	r25, __profc_wmemcpy+1
	lds	r18, __profc_wmemcpy+2
	lds	r19, __profc_wmemcpy+3
	lds	r20, __profc_wmemcpy+4
	lds	r21, __profc_wmemcpy+5
	lds	r22, __profc_wmemcpy+6
	lds	r23, __profc_wmemcpy+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemcpy+7, r23
	sts	__profc_wmemcpy+6, r22
	sts	__profc_wmemcpy+5, r21
	sts	__profc_wmemcpy+4, r20
	sts	__profc_wmemcpy+3, r19
	sts	__profc_wmemcpy+2, r18
	sts	__profc_wmemcpy+1, r25
	sts	__profc_wmemcpy, r24
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
	brne	.LBB62_2
	rjmp	.LBB62_3
.LBB62_2:                               ;   in Loop: Header=BB62_1 Depth=1
	lds	r24, __profc_wmemcpy+8
	lds	r25, __profc_wmemcpy+9
	lds	r18, __profc_wmemcpy+10
	lds	r19, __profc_wmemcpy+11
	lds	r20, __profc_wmemcpy+12
	lds	r21, __profc_wmemcpy+13
	lds	r22, __profc_wmemcpy+14
	lds	r23, __profc_wmemcpy+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemcpy+15, r23
	sts	__profc_wmemcpy+14, r22
	sts	__profc_wmemcpy+13, r21
	sts	__profc_wmemcpy+12, r20
	sts	__profc_wmemcpy+11, r19
	sts	__profc_wmemcpy+10, r18
	sts	__profc_wmemcpy+9, r25
	sts	__profc_wmemcpy+8, r24
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
	lds	r24, __profc_wmemmove
	lds	r25, __profc_wmemmove+1
	lds	r18, __profc_wmemmove+2
	lds	r19, __profc_wmemmove+3
	lds	r20, __profc_wmemmove+4
	lds	r21, __profc_wmemmove+5
	lds	r22, __profc_wmemmove+6
	lds	r23, __profc_wmemmove+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemmove+7, r23
	sts	__profc_wmemmove+6, r22
	sts	__profc_wmemmove+5, r21
	sts	__profc_wmemmove+4, r20
	sts	__profc_wmemmove+3, r19
	sts	__profc_wmemmove+2, r18
	sts	__profc_wmemmove+1, r25
	sts	__profc_wmemmove, r24
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
	breq	.LBB63_1
	rjmp	.LBB63_2
.LBB63_1:
	lds	r24, __profc_wmemmove+8
	lds	r25, __profc_wmemmove+9
	lds	r18, __profc_wmemmove+10
	lds	r19, __profc_wmemmove+11
	lds	r20, __profc_wmemmove+12
	lds	r21, __profc_wmemmove+13
	lds	r22, __profc_wmemmove+14
	lds	r23, __profc_wmemmove+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemmove+15, r23
	sts	__profc_wmemmove+14, r22
	sts	__profc_wmemmove+13, r21
	sts	__profc_wmemmove+12, r20
	sts	__profc_wmemmove+11, r19
	sts	__profc_wmemmove+10, r18
	sts	__profc_wmemmove+9, r25
	sts	__profc_wmemmove+8, r24
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
	lds	r24, __profc_wmemmove+16
	lds	r25, __profc_wmemmove+17
	lds	r18, __profc_wmemmove+18
	lds	r19, __profc_wmemmove+19
	lds	r20, __profc_wmemmove+20
	lds	r21, __profc_wmemmove+21
	lds	r22, __profc_wmemmove+22
	lds	r23, __profc_wmemmove+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemmove+23, r23
	sts	__profc_wmemmove+22, r22
	sts	__profc_wmemmove+21, r21
	sts	__profc_wmemmove+20, r20
	sts	__profc_wmemmove+19, r19
	sts	__profc_wmemmove+18, r18
	sts	__profc_wmemmove+17, r25
	sts	__profc_wmemmove+16, r24
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
	brne	.LBB63_5
	rjmp	.LBB63_6
.LBB63_5:                               ;   in Loop: Header=BB63_4 Depth=1
	lds	r24, __profc_wmemmove+24
	lds	r25, __profc_wmemmove+25
	lds	r18, __profc_wmemmove+26
	lds	r19, __profc_wmemmove+27
	lds	r20, __profc_wmemmove+28
	lds	r21, __profc_wmemmove+29
	lds	r22, __profc_wmemmove+30
	lds	r23, __profc_wmemmove+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemmove+31, r23
	sts	__profc_wmemmove+30, r22
	sts	__profc_wmemmove+29, r21
	sts	__profc_wmemmove+28, r20
	sts	__profc_wmemmove+27, r19
	sts	__profc_wmemmove+26, r18
	sts	__profc_wmemmove+25, r25
	sts	__profc_wmemmove+24, r24
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
	brne	.LBB63_9
	rjmp	.LBB63_10
.LBB63_9:                               ;   in Loop: Header=BB63_8 Depth=1
	lds	r24, __profc_wmemmove+32
	lds	r25, __profc_wmemmove+33
	lds	r18, __profc_wmemmove+34
	lds	r19, __profc_wmemmove+35
	lds	r20, __profc_wmemmove+36
	lds	r21, __profc_wmemmove+37
	lds	r22, __profc_wmemmove+38
	lds	r23, __profc_wmemmove+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemmove+39, r23
	sts	__profc_wmemmove+38, r22
	sts	__profc_wmemmove+37, r21
	sts	__profc_wmemmove+36, r20
	sts	__profc_wmemmove+35, r19
	sts	__profc_wmemmove+34, r18
	sts	__profc_wmemmove+33, r25
	sts	__profc_wmemmove+32, r24
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
	lds	r24, __profc_wmemset
	lds	r25, __profc_wmemset+1
	lds	r18, __profc_wmemset+2
	lds	r19, __profc_wmemset+3
	lds	r20, __profc_wmemset+4
	lds	r21, __profc_wmemset+5
	lds	r22, __profc_wmemset+6
	lds	r23, __profc_wmemset+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemset+7, r23
	sts	__profc_wmemset+6, r22
	sts	__profc_wmemset+5, r21
	sts	__profc_wmemset+4, r20
	sts	__profc_wmemset+3, r19
	sts	__profc_wmemset+2, r18
	sts	__profc_wmemset+1, r25
	sts	__profc_wmemset, r24
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
	brne	.LBB64_2
	rjmp	.LBB64_3
.LBB64_2:                               ;   in Loop: Header=BB64_1 Depth=1
	lds	r24, __profc_wmemset+8
	lds	r25, __profc_wmemset+9
	lds	r18, __profc_wmemset+10
	lds	r19, __profc_wmemset+11
	lds	r20, __profc_wmemset+12
	lds	r21, __profc_wmemset+13
	lds	r22, __profc_wmemset+14
	lds	r23, __profc_wmemset+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_wmemset+15, r23
	sts	__profc_wmemset+14, r22
	sts	__profc_wmemset+13, r21
	sts	__profc_wmemset+12, r20
	sts	__profc_wmemset+11, r19
	sts	__profc_wmemset+10, r18
	sts	__profc_wmemset+9, r25
	sts	__profc_wmemset+8, r24
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
	lds	r24, __profc_bcopy
	lds	r25, __profc_bcopy+1
	lds	r18, __profc_bcopy+2
	lds	r19, __profc_bcopy+3
	lds	r20, __profc_bcopy+4
	lds	r21, __profc_bcopy+5
	lds	r22, __profc_bcopy+6
	lds	r23, __profc_bcopy+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bcopy+7, r23
	sts	__profc_bcopy+6, r22
	sts	__profc_bcopy+5, r21
	sts	__profc_bcopy+4, r20
	sts	__profc_bcopy+3, r19
	sts	__profc_bcopy+2, r18
	sts	__profc_bcopy+1, r25
	sts	__profc_bcopy, r24
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
	lds	r24, __profc_bcopy+8
	lds	r25, __profc_bcopy+9
	lds	r18, __profc_bcopy+10
	lds	r19, __profc_bcopy+11
	lds	r20, __profc_bcopy+12
	lds	r21, __profc_bcopy+13
	lds	r22, __profc_bcopy+14
	lds	r23, __profc_bcopy+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bcopy+15, r23
	sts	__profc_bcopy+14, r22
	sts	__profc_bcopy+13, r21
	sts	__profc_bcopy+12, r20
	sts	__profc_bcopy+11, r19
	sts	__profc_bcopy+10, r18
	sts	__profc_bcopy+9, r25
	sts	__profc_bcopy+8, r24
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
	brne	.LBB65_3
	rjmp	.LBB65_5
.LBB65_3:                               ;   in Loop: Header=BB65_2 Depth=1
	lds	r24, __profc_bcopy+16
	lds	r25, __profc_bcopy+17
	lds	r18, __profc_bcopy+18
	lds	r19, __profc_bcopy+19
	lds	r20, __profc_bcopy+20
	lds	r21, __profc_bcopy+21
	lds	r22, __profc_bcopy+22
	lds	r23, __profc_bcopy+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bcopy+23, r23
	sts	__profc_bcopy+22, r22
	sts	__profc_bcopy+21, r21
	sts	__profc_bcopy+20, r20
	sts	__profc_bcopy+19, r19
	sts	__profc_bcopy+18, r18
	sts	__profc_bcopy+17, r25
	sts	__profc_bcopy+16, r24
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
	lds	r24, __profc_bcopy+24
	lds	r25, __profc_bcopy+25
	lds	r18, __profc_bcopy+26
	lds	r19, __profc_bcopy+27
	lds	r20, __profc_bcopy+28
	lds	r21, __profc_bcopy+29
	lds	r22, __profc_bcopy+30
	lds	r23, __profc_bcopy+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bcopy+31, r23
	sts	__profc_bcopy+30, r22
	sts	__profc_bcopy+29, r21
	sts	__profc_bcopy+28, r20
	sts	__profc_bcopy+27, r19
	sts	__profc_bcopy+26, r18
	sts	__profc_bcopy+25, r25
	sts	__profc_bcopy+24, r24
	rjmp	.LBB65_8
.LBB65_8:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+5
	ldd	r19, Y+6
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB65_9
	rjmp	.LBB65_11
.LBB65_9:                               ;   in Loop: Header=BB65_8 Depth=1
	lds	r24, __profc_bcopy+32
	lds	r25, __profc_bcopy+33
	lds	r18, __profc_bcopy+34
	lds	r19, __profc_bcopy+35
	lds	r20, __profc_bcopy+36
	lds	r21, __profc_bcopy+37
	lds	r22, __profc_bcopy+38
	lds	r23, __profc_bcopy+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bcopy+39, r23
	sts	__profc_bcopy+38, r22
	sts	__profc_bcopy+37, r21
	sts	__profc_bcopy+36, r20
	sts	__profc_bcopy+35, r19
	sts	__profc_bcopy+34, r18
	sts	__profc_bcopy+33, r25
	sts	__profc_bcopy+32, r24
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
	lds	r24, __profc_rotl64
	lds	r25, __profc_rotl64+1
	lds	r18, __profc_rotl64+2
	lds	r19, __profc_rotl64+3
	lds	r20, __profc_rotl64+4
	lds	r21, __profc_rotl64+5
	lds	r22, __profc_rotl64+6
	lds	r23, __profc_rotl64+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotl64+7, r23
	sts	__profc_rotl64+6, r22
	sts	__profc_rotl64+5, r21
	sts	__profc_rotl64+4, r20
	sts	__profc_rotl64+3, r19
	sts	__profc_rotl64+2, r18
	sts	__profc_rotl64+1, r25
	sts	__profc_rotl64, r24
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
	lds	r24, __profc_rotr64
	lds	r25, __profc_rotr64+1
	lds	r18, __profc_rotr64+2
	lds	r19, __profc_rotr64+3
	lds	r20, __profc_rotr64+4
	lds	r21, __profc_rotr64+5
	lds	r22, __profc_rotr64+6
	lds	r23, __profc_rotr64+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotr64+7, r23
	sts	__profc_rotr64+6, r22
	sts	__profc_rotr64+5, r21
	sts	__profc_rotr64+4, r20
	sts	__profc_rotr64+3, r19
	sts	__profc_rotr64+2, r18
	sts	__profc_rotr64+1, r25
	sts	__profc_rotr64, r24
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
	lds	r24, __profc_rotl32
	lds	r25, __profc_rotl32+1
	lds	r18, __profc_rotl32+2
	lds	r19, __profc_rotl32+3
	lds	r20, __profc_rotl32+4
	lds	r21, __profc_rotl32+5
	lds	r22, __profc_rotl32+6
	lds	r23, __profc_rotl32+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotl32+7, r23
	sts	__profc_rotl32+6, r22
	sts	__profc_rotl32+5, r21
	sts	__profc_rotl32+4, r20
	sts	__profc_rotl32+3, r19
	sts	__profc_rotl32+2, r18
	sts	__profc_rotl32+1, r25
	sts	__profc_rotl32, r24
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
	lds	r24, __profc_rotr32
	lds	r25, __profc_rotr32+1
	lds	r18, __profc_rotr32+2
	lds	r19, __profc_rotr32+3
	lds	r20, __profc_rotr32+4
	lds	r21, __profc_rotr32+5
	lds	r22, __profc_rotr32+6
	lds	r23, __profc_rotr32+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotr32+7, r23
	sts	__profc_rotr32+6, r22
	sts	__profc_rotr32+5, r21
	sts	__profc_rotr32+4, r20
	sts	__profc_rotr32+3, r19
	sts	__profc_rotr32+2, r18
	sts	__profc_rotr32+1, r25
	sts	__profc_rotr32, r24
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
	lds	r24, __profc_rotl_sz
	lds	r25, __profc_rotl_sz+1
	lds	r18, __profc_rotl_sz+2
	lds	r19, __profc_rotl_sz+3
	lds	r20, __profc_rotl_sz+4
	lds	r21, __profc_rotl_sz+5
	lds	r22, __profc_rotl_sz+6
	lds	r23, __profc_rotl_sz+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotl_sz+7, r23
	sts	__profc_rotl_sz+6, r22
	sts	__profc_rotl_sz+5, r21
	sts	__profc_rotl_sz+4, r20
	sts	__profc_rotl_sz+3, r19
	sts	__profc_rotl_sz+2, r18
	sts	__profc_rotl_sz+1, r25
	sts	__profc_rotl_sz, r24
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
	lds	r24, __profc_rotr_sz
	lds	r25, __profc_rotr_sz+1
	lds	r18, __profc_rotr_sz+2
	lds	r19, __profc_rotr_sz+3
	lds	r20, __profc_rotr_sz+4
	lds	r21, __profc_rotr_sz+5
	lds	r22, __profc_rotr_sz+6
	lds	r23, __profc_rotr_sz+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotr_sz+7, r23
	sts	__profc_rotr_sz+6, r22
	sts	__profc_rotr_sz+5, r21
	sts	__profc_rotr_sz+4, r20
	sts	__profc_rotr_sz+3, r19
	sts	__profc_rotr_sz+2, r18
	sts	__profc_rotr_sz+1, r25
	sts	__profc_rotr_sz, r24
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
	lds	r24, __profc_rotl16
	lds	r25, __profc_rotl16+1
	lds	r18, __profc_rotl16+2
	lds	r19, __profc_rotl16+3
	lds	r20, __profc_rotl16+4
	lds	r21, __profc_rotl16+5
	lds	r22, __profc_rotl16+6
	lds	r23, __profc_rotl16+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotl16+7, r23
	sts	__profc_rotl16+6, r22
	sts	__profc_rotl16+5, r21
	sts	__profc_rotl16+4, r20
	sts	__profc_rotl16+3, r19
	sts	__profc_rotl16+2, r18
	sts	__profc_rotl16+1, r25
	sts	__profc_rotl16, r24
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
	lds	r24, __profc_rotr16
	lds	r25, __profc_rotr16+1
	lds	r18, __profc_rotr16+2
	lds	r19, __profc_rotr16+3
	lds	r20, __profc_rotr16+4
	lds	r21, __profc_rotr16+5
	lds	r22, __profc_rotr16+6
	lds	r23, __profc_rotr16+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotr16+7, r23
	sts	__profc_rotr16+6, r22
	sts	__profc_rotr16+5, r21
	sts	__profc_rotr16+4, r20
	sts	__profc_rotr16+3, r19
	sts	__profc_rotr16+2, r18
	sts	__profc_rotr16+1, r25
	sts	__profc_rotr16, r24
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
	lds	r24, __profc_rotl8
	lds	r25, __profc_rotl8+1
	lds	r18, __profc_rotl8+2
	lds	r19, __profc_rotl8+3
	lds	r20, __profc_rotl8+4
	lds	r21, __profc_rotl8+5
	lds	r22, __profc_rotl8+6
	lds	r23, __profc_rotl8+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotl8+7, r23
	sts	__profc_rotl8+6, r22
	sts	__profc_rotl8+5, r21
	sts	__profc_rotl8+4, r20
	sts	__profc_rotl8+3, r19
	sts	__profc_rotl8+2, r18
	sts	__profc_rotl8+1, r25
	sts	__profc_rotl8, r24
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
	lds	r24, __profc_rotr8
	lds	r25, __profc_rotr8+1
	lds	r18, __profc_rotr8+2
	lds	r19, __profc_rotr8+3
	lds	r20, __profc_rotr8+4
	lds	r21, __profc_rotr8+5
	lds	r22, __profc_rotr8+6
	lds	r23, __profc_rotr8+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_rotr8+7, r23
	sts	__profc_rotr8+6, r22
	sts	__profc_rotr8+5, r21
	sts	__profc_rotr8+4, r20
	sts	__profc_rotr8+3, r19
	sts	__profc_rotr8+2, r18
	sts	__profc_rotr8+1, r25
	sts	__profc_rotr8, r24
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
	lds	r24, __profc_bswap_16
	lds	r25, __profc_bswap_16+1
	lds	r18, __profc_bswap_16+2
	lds	r19, __profc_bswap_16+3
	lds	r20, __profc_bswap_16+4
	lds	r21, __profc_bswap_16+5
	lds	r22, __profc_bswap_16+6
	lds	r23, __profc_bswap_16+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bswap_16+7, r23
	sts	__profc_bswap_16+6, r22
	sts	__profc_bswap_16+5, r21
	sts	__profc_bswap_16+4, r20
	sts	__profc_bswap_16+3, r19
	sts	__profc_bswap_16+2, r18
	sts	__profc_bswap_16+1, r25
	sts	__profc_bswap_16, r24
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
	lds	r24, __profc_bswap_32
	lds	r25, __profc_bswap_32+1
	lds	r18, __profc_bswap_32+2
	lds	r19, __profc_bswap_32+3
	lds	r20, __profc_bswap_32+4
	lds	r21, __profc_bswap_32+5
	lds	r22, __profc_bswap_32+6
	lds	r23, __profc_bswap_32+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bswap_32+7, r23
	sts	__profc_bswap_32+6, r22
	sts	__profc_bswap_32+5, r21
	sts	__profc_bswap_32+4, r20
	sts	__profc_bswap_32+3, r19
	sts	__profc_bswap_32+2, r18
	sts	__profc_bswap_32+1, r25
	sts	__profc_bswap_32, r24
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
	lds	r24, __profc_bswap_64
	lds	r25, __profc_bswap_64+1
	lds	r18, __profc_bswap_64+2
	lds	r19, __profc_bswap_64+3
	lds	r20, __profc_bswap_64+4
	lds	r21, __profc_bswap_64+5
	lds	r22, __profc_bswap_64+6
	lds	r23, __profc_bswap_64+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_bswap_64+7, r23
	sts	__profc_bswap_64+6, r22
	sts	__profc_bswap_64+5, r21
	sts	__profc_bswap_64+4, r20
	sts	__profc_bswap_64+3, r19
	sts	__profc_bswap_64+2, r18
	sts	__profc_bswap_64+1, r25
	sts	__profc_bswap_64, r24
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
	lds	r24, __profc_ffs
	lds	r25, __profc_ffs+1
	lds	r18, __profc_ffs+2
	lds	r19, __profc_ffs+3
	lds	r20, __profc_ffs+4
	lds	r21, __profc_ffs+5
	lds	r22, __profc_ffs+6
	lds	r23, __profc_ffs+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ffs+7, r23
	sts	__profc_ffs+6, r22
	sts	__profc_ffs+5, r21
	sts	__profc_ffs+4, r20
	sts	__profc_ffs+3, r19
	sts	__profc_ffs+2, r18
	sts	__profc_ffs+1, r25
	sts	__profc_ffs, r24
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
	lds	r24, __profc_ffs+8
	lds	r25, __profc_ffs+9
	lds	r18, __profc_ffs+10
	lds	r19, __profc_ffs+11
	lds	r20, __profc_ffs+12
	lds	r21, __profc_ffs+13
	lds	r22, __profc_ffs+14
	lds	r23, __profc_ffs+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ffs+15, r23
	sts	__profc_ffs+14, r22
	sts	__profc_ffs+13, r21
	sts	__profc_ffs+12, r20
	sts	__profc_ffs+11, r19
	sts	__profc_ffs+10, r18
	sts	__profc_ffs+9, r25
	sts	__profc_ffs+8, r24
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
	brne	.LBB79_6
	rjmp	.LBB79_7
.LBB79_6:
	lds	r24, __profc_ffs+16
	lds	r25, __profc_ffs+17
	lds	r18, __profc_ffs+18
	lds	r19, __profc_ffs+19
	lds	r20, __profc_ffs+20
	lds	r21, __profc_ffs+21
	lds	r22, __profc_ffs+22
	lds	r23, __profc_ffs+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ffs+23, r23
	sts	__profc_ffs+22, r22
	sts	__profc_ffs+21, r21
	sts	__profc_ffs+20, r20
	sts	__profc_ffs+19, r19
	sts	__profc_ffs+18, r18
	sts	__profc_ffs+17, r25
	sts	__profc_ffs+16, r24
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
	lds	r24, __profc_libiberty_ffs
	lds	r25, __profc_libiberty_ffs+1
	lds	r18, __profc_libiberty_ffs+2
	lds	r19, __profc_libiberty_ffs+3
	lds	r20, __profc_libiberty_ffs+4
	lds	r21, __profc_libiberty_ffs+5
	lds	r22, __profc_libiberty_ffs+6
	lds	r23, __profc_libiberty_ffs+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_libiberty_ffs+7, r23
	sts	__profc_libiberty_ffs+6, r22
	sts	__profc_libiberty_ffs+5, r21
	sts	__profc_libiberty_ffs+4, r20
	sts	__profc_libiberty_ffs+3, r19
	sts	__profc_libiberty_ffs+2, r18
	sts	__profc_libiberty_ffs+1, r25
	sts	__profc_libiberty_ffs, r24
	ldd	r18, Y+3
	ldd	r19, Y+4
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB80_1
	rjmp	.LBB80_2
.LBB80_1:
	lds	r24, __profc_libiberty_ffs+8
	lds	r25, __profc_libiberty_ffs+9
	lds	r18, __profc_libiberty_ffs+10
	lds	r19, __profc_libiberty_ffs+11
	lds	r20, __profc_libiberty_ffs+12
	lds	r21, __profc_libiberty_ffs+13
	lds	r22, __profc_libiberty_ffs+14
	lds	r23, __profc_libiberty_ffs+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_libiberty_ffs+15, r23
	sts	__profc_libiberty_ffs+14, r22
	sts	__profc_libiberty_ffs+13, r21
	sts	__profc_libiberty_ffs+12, r20
	sts	__profc_libiberty_ffs+11, r19
	sts	__profc_libiberty_ffs+10, r18
	sts	__profc_libiberty_ffs+9, r25
	sts	__profc_libiberty_ffs+8, r24
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
	breq	.LBB80_4
	rjmp	.LBB80_6
.LBB80_4:                               ;   in Loop: Header=BB80_3 Depth=1
	lds	r24, __profc_libiberty_ffs+16
	lds	r25, __profc_libiberty_ffs+17
	lds	r18, __profc_libiberty_ffs+18
	lds	r19, __profc_libiberty_ffs+19
	lds	r20, __profc_libiberty_ffs+20
	lds	r21, __profc_libiberty_ffs+21
	lds	r22, __profc_libiberty_ffs+22
	lds	r23, __profc_libiberty_ffs+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_libiberty_ffs+23, r23
	sts	__profc_libiberty_ffs+22, r22
	sts	__profc_libiberty_ffs+21, r21
	sts	__profc_libiberty_ffs+20, r20
	sts	__profc_libiberty_ffs+19, r19
	sts	__profc_libiberty_ffs+18, r18
	sts	__profc_libiberty_ffs+17, r25
	sts	__profc_libiberty_ffs+16, r24
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
	sbiw	r28, 9
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+9, r25
	std	Y+8, r24
	std	Y+7, r23
	std	Y+6, r22
	lds	r24, __profc_gl_isinff
	lds	r25, __profc_gl_isinff+1
	lds	r18, __profc_gl_isinff+2
	lds	r19, __profc_gl_isinff+3
	lds	r20, __profc_gl_isinff+4
	lds	r21, __profc_gl_isinff+5
	lds	r22, __profc_gl_isinff+6
	lds	r23, __profc_gl_isinff+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_gl_isinff+7, r23
	sts	__profc_gl_isinff+6, r22
	sts	__profc_gl_isinff+5, r21
	sts	__profc_gl_isinff+4, r20
	sts	__profc_gl_isinff+3, r19
	sts	__profc_gl_isinff+2, r18
	sts	__profc_gl_isinff+1, r25
	sts	__profc_gl_isinff, r24
	ldd	r22, Y+6
	ldd	r23, Y+7
	ldd	r24, Y+8
	ldd	r25, Y+9
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 255
	rcall	__ltsf2
	mov	r25, r24
	ldi	r24, 1
	tst	r25
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB81_1
	rjmp	.LBB81_5
.LBB81_1:
	lds	r24, __profc_gl_isinff+8
	lds	r25, __profc_gl_isinff+9
	lds	r18, __profc_gl_isinff+10
	lds	r19, __profc_gl_isinff+11
	lds	r20, __profc_gl_isinff+12
	lds	r21, __profc_gl_isinff+13
	lds	r22, __profc_gl_isinff+14
	lds	r23, __profc_gl_isinff+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_gl_isinff+15, r23
	sts	__profc_gl_isinff+14, r22
	sts	__profc_gl_isinff+13, r21
	sts	__profc_gl_isinff+12, r20
	sts	__profc_gl_isinff+11, r19
	sts	__profc_gl_isinff+10, r18
	sts	__profc_gl_isinff+9, r25
	sts	__profc_gl_isinff+8, r24
	ldd	r22, Y+6
	ldd	r23, Y+7
	ldd	r24, Y+8
	ldd	r25, Y+9
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 127
	rcall	__gtsf2
	mov	r18, r24
	std	Y+2, r18                        ; 1-byte Folded Spill
	mov	r25, r1
	std	Y+3, r25                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r25, r18
	std	Y+4, r24                        ; 1-byte Folded Spill
	brlt	.LBB81_2
	rjmp	.LBB81_3
.LBB81_2:
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r25, r18
	std	Y+5, r24                        ; 1-byte Folded Spill
	brge	.LBB81_4
	rjmp	.LBB81_5
.LBB81_3:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB81_2
.LBB81_4:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_gl_isinff+16
	lds	r19, __profc_gl_isinff+17
	lds	r20, __profc_gl_isinff+18
	lds	r21, __profc_gl_isinff+19
	lds	r22, __profc_gl_isinff+20
	lds	r23, __profc_gl_isinff+21
	lds	r30, __profc_gl_isinff+22
	lds	r31, __profc_gl_isinff+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_gl_isinff+23, r31
	sts	__profc_gl_isinff+22, r30
	sts	__profc_gl_isinff+21, r23
	sts	__profc_gl_isinff+20, r22
	sts	__profc_gl_isinff+19, r21
	sts	__profc_gl_isinff+18, r20
	sts	__profc_gl_isinff+17, r19
	sts	__profc_gl_isinff+16, r18
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB81_5
.LBB81_5:
	ldd	r18, Y+5                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 9
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
	lds	r24, __profc_gl_isinfd
	lds	r25, __profc_gl_isinfd+1
	lds	r18, __profc_gl_isinfd+2
	lds	r19, __profc_gl_isinfd+3
	lds	r20, __profc_gl_isinfd+4
	lds	r21, __profc_gl_isinfd+5
	lds	r22, __profc_gl_isinfd+6
	lds	r23, __profc_gl_isinfd+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_gl_isinfd+7, r23
	sts	__profc_gl_isinfd+6, r22
	sts	__profc_gl_isinfd+5, r21
	sts	__profc_gl_isinfd+4, r20
	sts	__profc_gl_isinfd+3, r19
	sts	__profc_gl_isinfd+2, r18
	sts	__profc_gl_isinfd+1, r25
	sts	__profc_gl_isinfd, r24
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 255
	rcall	__ltsf2
	mov	r25, r24
	ldi	r24, 1
	tst	r25
	std	Y+8, r24                        ; 1-byte Folded Spill
	brpl	.LBB82_1
	rjmp	.LBB82_5
.LBB82_1:
	lds	r24, __profc_gl_isinfd+8
	lds	r25, __profc_gl_isinfd+9
	lds	r18, __profc_gl_isinfd+10
	lds	r19, __profc_gl_isinfd+11
	lds	r20, __profc_gl_isinfd+12
	lds	r21, __profc_gl_isinfd+13
	lds	r22, __profc_gl_isinfd+14
	lds	r23, __profc_gl_isinfd+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_gl_isinfd+15, r23
	sts	__profc_gl_isinfd+14, r22
	sts	__profc_gl_isinfd+13, r21
	sts	__profc_gl_isinfd+12, r20
	sts	__profc_gl_isinfd+11, r19
	sts	__profc_gl_isinfd+10, r18
	sts	__profc_gl_isinfd+9, r25
	sts	__profc_gl_isinfd+8, r24
	ldd	r22, Y+9
	ldd	r23, Y+10
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 127
	rcall	__gtsf2
	mov	r18, r24
	std	Y+5, r18                        ; 1-byte Folded Spill
	mov	r25, r1
	std	Y+6, r25                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r25, r18
	std	Y+7, r24                        ; 1-byte Folded Spill
	brlt	.LBB82_2
	rjmp	.LBB82_3
.LBB82_2:
	ldd	r25, Y+6                        ; 1-byte Folded Reload
	ldd	r18, Y+5                        ; 1-byte Folded Reload
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	cp	r25, r18
	std	Y+8, r24                        ; 1-byte Folded Spill
	brge	.LBB82_4
	rjmp	.LBB82_5
.LBB82_3:
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	rjmp	.LBB82_2
.LBB82_4:
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	lds	r18, __profc_gl_isinfd+16
	lds	r19, __profc_gl_isinfd+17
	lds	r20, __profc_gl_isinfd+18
	lds	r21, __profc_gl_isinfd+19
	lds	r22, __profc_gl_isinfd+20
	lds	r23, __profc_gl_isinfd+21
	lds	r30, __profc_gl_isinfd+22
	lds	r31, __profc_gl_isinfd+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_gl_isinfd+23, r31
	sts	__profc_gl_isinfd+22, r30
	sts	__profc_gl_isinfd+21, r23
	sts	__profc_gl_isinfd+20, r22
	sts	__profc_gl_isinfd+19, r21
	sts	__profc_gl_isinfd+18, r20
	sts	__profc_gl_isinfd+17, r19
	sts	__profc_gl_isinfd+16, r18
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB82_5
.LBB82_5:
	ldd	r18, Y+8                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 12
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
	sbiw	r28, 9
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+9, r25
	std	Y+8, r24
	std	Y+7, r23
	std	Y+6, r22
	lds	r24, __profc_gl_isinfl
	lds	r25, __profc_gl_isinfl+1
	lds	r18, __profc_gl_isinfl+2
	lds	r19, __profc_gl_isinfl+3
	lds	r20, __profc_gl_isinfl+4
	lds	r21, __profc_gl_isinfl+5
	lds	r22, __profc_gl_isinfl+6
	lds	r23, __profc_gl_isinfl+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_gl_isinfl+7, r23
	sts	__profc_gl_isinfl+6, r22
	sts	__profc_gl_isinfl+5, r21
	sts	__profc_gl_isinfl+4, r20
	sts	__profc_gl_isinfl+3, r19
	sts	__profc_gl_isinfl+2, r18
	sts	__profc_gl_isinfl+1, r25
	sts	__profc_gl_isinfl, r24
	ldd	r22, Y+6
	ldd	r23, Y+7
	ldd	r24, Y+8
	ldd	r25, Y+9
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 255
	rcall	__ltsf2
	mov	r25, r24
	ldi	r24, 1
	tst	r25
	std	Y+5, r24                        ; 1-byte Folded Spill
	brpl	.LBB83_1
	rjmp	.LBB83_5
.LBB83_1:
	lds	r24, __profc_gl_isinfl+8
	lds	r25, __profc_gl_isinfl+9
	lds	r18, __profc_gl_isinfl+10
	lds	r19, __profc_gl_isinfl+11
	lds	r20, __profc_gl_isinfl+12
	lds	r21, __profc_gl_isinfl+13
	lds	r22, __profc_gl_isinfl+14
	lds	r23, __profc_gl_isinfl+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_gl_isinfl+15, r23
	sts	__profc_gl_isinfl+14, r22
	sts	__profc_gl_isinfl+13, r21
	sts	__profc_gl_isinfl+12, r20
	sts	__profc_gl_isinfl+11, r19
	sts	__profc_gl_isinfl+10, r18
	sts	__profc_gl_isinfl+9, r25
	sts	__profc_gl_isinfl+8, r24
	ldd	r22, Y+6
	ldd	r23, Y+7
	ldd	r24, Y+8
	ldd	r25, Y+9
	ldi	r18, 255
	ldi	r19, 255
	ldi	r20, 127
	ldi	r21, 127
	rcall	__gtsf2
	mov	r18, r24
	std	Y+2, r18                        ; 1-byte Folded Spill
	mov	r25, r1
	std	Y+3, r25                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r25, r18
	std	Y+4, r24                        ; 1-byte Folded Spill
	brlt	.LBB83_2
	rjmp	.LBB83_3
.LBB83_2:
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r25, r18
	std	Y+5, r24                        ; 1-byte Folded Spill
	brge	.LBB83_4
	rjmp	.LBB83_5
.LBB83_3:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB83_2
.LBB83_4:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_gl_isinfl+16
	lds	r19, __profc_gl_isinfl+17
	lds	r20, __profc_gl_isinfl+18
	lds	r21, __profc_gl_isinfl+19
	lds	r22, __profc_gl_isinfl+20
	lds	r23, __profc_gl_isinfl+21
	lds	r30, __profc_gl_isinfl+22
	lds	r31, __profc_gl_isinfl+23
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_gl_isinfl+23, r31
	sts	__profc_gl_isinfl+22, r30
	sts	__profc_gl_isinfl+21, r23
	sts	__profc_gl_isinfl+20, r22
	sts	__profc_gl_isinfl+19, r21
	sts	__profc_gl_isinfl+18, r20
	sts	__profc_gl_isinfl+17, r19
	sts	__profc_gl_isinfl+16, r18
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB83_5
.LBB83_5:
	ldd	r18, Y+5                        ; 1-byte Folded Reload
                                        ; implicit-def: $r25r24
	mov	r24, r18
	andi	r24, 1
	andi	r25, 0
	adiw	r28, 9
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
	lds	r24, __profc__Qp_itoq
	lds	r25, __profc__Qp_itoq+1
	lds	r18, __profc__Qp_itoq+2
	lds	r19, __profc__Qp_itoq+3
	lds	r20, __profc__Qp_itoq+4
	lds	r21, __profc__Qp_itoq+5
	lds	r22, __profc__Qp_itoq+6
	lds	r23, __profc__Qp_itoq+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc__Qp_itoq+7, r23
	sts	__profc__Qp_itoq+6, r22
	sts	__profc__Qp_itoq+5, r21
	sts	__profc__Qp_itoq+4, r20
	sts	__profc__Qp_itoq+3, r19
	sts	__profc__Qp_itoq+2, r18
	sts	__profc__Qp_itoq+1, r25
	sts	__profc__Qp_itoq, r24
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
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	lds	r24, __profc_ldexpf
	lds	r25, __profc_ldexpf+1
	lds	r18, __profc_ldexpf+2
	lds	r19, __profc_ldexpf+3
	lds	r20, __profc_ldexpf+4
	lds	r21, __profc_ldexpf+5
	lds	r22, __profc_ldexpf+6
	lds	r23, __profc_ldexpf+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpf+7, r23
	sts	__profc_ldexpf+6, r22
	sts	__profc_ldexpf+5, r21
	sts	__profc_ldexpf+4, r20
	sts	__profc_ldexpf+3, r19
	sts	__profc_ldexpf+2, r18
	sts	__profc_ldexpf+1, r25
	sts	__profc_ldexpf, r24
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
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	brge	.LBB85_1
	rjmp	.LBB85_2
.LBB85_1:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB85_3
	rjmp	.LBB85_14
.LBB85_2:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB85_1
.LBB85_3:
	lds	r24, __profc_ldexpf+16
	lds	r25, __profc_ldexpf+17
	lds	r18, __profc_ldexpf+18
	lds	r19, __profc_ldexpf+19
	lds	r20, __profc_ldexpf+20
	lds	r21, __profc_ldexpf+21
	lds	r22, __profc_ldexpf+22
	lds	r23, __profc_ldexpf+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpf+23, r23
	sts	__profc_ldexpf+22, r22
	sts	__profc_ldexpf+21, r21
	sts	__profc_ldexpf+20, r20
	sts	__profc_ldexpf+19, r19
	sts	__profc_ldexpf+18, r18
	sts	__profc_ldexpf+17, r25
	sts	__profc_ldexpf+16, r24
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+21
	ldd	r21, Y+22
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
	brne	.LBB85_4
	rjmp	.LBB85_14
.LBB85_4:
	lds	r24, __profc_ldexpf+24
	lds	r25, __profc_ldexpf+25
	lds	r18, __profc_ldexpf+26
	lds	r19, __profc_ldexpf+27
	lds	r20, __profc_ldexpf+28
	lds	r21, __profc_ldexpf+29
	lds	r22, __profc_ldexpf+30
	lds	r23, __profc_ldexpf+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpf+31, r23
	sts	__profc_ldexpf+30, r22
	sts	__profc_ldexpf+29, r21
	sts	__profc_ldexpf+28, r20
	sts	__profc_ldexpf+27, r19
	sts	__profc_ldexpf+26, r18
	sts	__profc_ldexpf+25, r25
	sts	__profc_ldexpf+24, r24
	rjmp	.LBB85_5
.LBB85_5:
	lds	r24, __profc_ldexpf+8
	lds	r25, __profc_ldexpf+9
	lds	r18, __profc_ldexpf+10
	lds	r19, __profc_ldexpf+11
	lds	r20, __profc_ldexpf+12
	lds	r21, __profc_ldexpf+13
	lds	r22, __profc_ldexpf+14
	lds	r23, __profc_ldexpf+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpf+15, r23
	sts	__profc_ldexpf+14, r22
	sts	__profc_ldexpf+13, r21
	sts	__profc_ldexpf+12, r20
	sts	__profc_ldexpf+11, r19
	sts	__profc_ldexpf+10, r18
	sts	__profc_ldexpf+9, r25
	sts	__profc_ldexpf+8, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r16, r24
	mov	r17, r25
	mov	r16, r17
	swap	r16
	andi	r16, 15
	clr	r17
	lsr	r16
	lsr	r16
	lsr	r16
	lds	r18, __profc_ldexpf+32
	lds	r19, __profc_ldexpf+33
	lds	r20, __profc_ldexpf+34
	lds	r21, __profc_ldexpf+35
	lds	r22, __profc_ldexpf+36
	lds	r23, __profc_ldexpf+37
	lds	r30, __profc_ldexpf+38
	lds	r31, __profc_ldexpf+39
	ldi	r26, 0
	ldi	r27, 0
	std	Y+2, r27                        ; 2-byte Folded Spill
	std	Y+1, r26                        ; 2-byte Folded Spill
	add	r18, r16
	adc	r19, r17
	adc	r20, r26
	adc	r21, r27
	adc	r22, r26
	adc	r23, r27
	adc	r30, r26
	adc	r31, r27
	sts	__profc_ldexpf+39, r31
	sts	__profc_ldexpf+38, r30
	sts	__profc_ldexpf+37, r23
	sts	__profc_ldexpf+36, r22
	sts	__profc_ldexpf+35, r21
	sts	__profc_ldexpf+34, r20
	sts	__profc_ldexpf+33, r19
	sts	__profc_ldexpf+32, r18
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
	brmi	.LBB85_6
	rjmp	.LBB85_7
.LBB85_6:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB85_8
	rjmp	.LBB85_8
.LBB85_7:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB85_6
.LBB85_8:                               ; =>This Inner Loop Header: Depth=1
	lds	r24, __profc_ldexpf+40
	lds	r25, __profc_ldexpf+41
	lds	r18, __profc_ldexpf+42
	lds	r19, __profc_ldexpf+43
	lds	r20, __profc_ldexpf+44
	lds	r21, __profc_ldexpf+45
	lds	r22, __profc_ldexpf+46
	lds	r23, __profc_ldexpf+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpf+47, r23
	sts	__profc_ldexpf+46, r22
	sts	__profc_ldexpf+45, r21
	sts	__profc_ldexpf+44, r20
	sts	__profc_ldexpf+43, r19
	sts	__profc_ldexpf+42, r18
	sts	__profc_ldexpf+41, r25
	sts	__profc_ldexpf+40, r24
	ldd	r18, Y+17
	ldd	r19, Y+18
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
	brne	.LBB85_9
	rjmp	.LBB85_10
.LBB85_9:                               ;   in Loop: Header=BB85_8 Depth=1
	lds	r24, __profc_ldexpf+48
	lds	r25, __profc_ldexpf+49
	lds	r18, __profc_ldexpf+50
	lds	r19, __profc_ldexpf+51
	lds	r20, __profc_ldexpf+52
	lds	r21, __profc_ldexpf+53
	lds	r22, __profc_ldexpf+54
	lds	r23, __profc_ldexpf+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpf+55, r23
	sts	__profc_ldexpf+54, r22
	sts	__profc_ldexpf+53, r21
	sts	__profc_ldexpf+52, r20
	sts	__profc_ldexpf+51, r19
	sts	__profc_ldexpf+50, r18
	sts	__profc_ldexpf+49, r25
	sts	__profc_ldexpf+48, r24
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
	rcall	__mulsf3
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	rjmp	.LBB85_10
.LBB85_10:                              ;   in Loop: Header=BB85_8 Depth=1
	ldd	r24, Y+17
	ldd	r25, Y+18
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
	std	Y+18, r25
	std	Y+17, r24
	ldd	r18, Y+17
	ldd	r19, Y+18
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB85_11
	rjmp	.LBB85_12
.LBB85_11:
	lds	r24, __profc_ldexpf+56
	lds	r25, __profc_ldexpf+57
	lds	r18, __profc_ldexpf+58
	lds	r19, __profc_ldexpf+59
	lds	r20, __profc_ldexpf+60
	lds	r21, __profc_ldexpf+61
	lds	r22, __profc_ldexpf+62
	lds	r23, __profc_ldexpf+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpf+63, r23
	sts	__profc_ldexpf+62, r22
	sts	__profc_ldexpf+61, r21
	sts	__profc_ldexpf+60, r20
	sts	__profc_ldexpf+59, r19
	sts	__profc_ldexpf+58, r18
	sts	__profc_ldexpf+57, r25
	sts	__profc_ldexpf+56, r24
	rjmp	.LBB85_13
.LBB85_12:                              ;   in Loop: Header=BB85_8 Depth=1
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
	rjmp	.LBB85_8
.LBB85_13:
	rjmp	.LBB85_14
.LBB85_14:
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
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
.Lfunc_end85:
	.size	ldexpf, .Lfunc_end85-ldexpf
                                        ; -- End function
	.globl	ldexp                           ; -- Begin function ldexp
	.p2align	1
	.type	ldexp,@function
ldexp:                                  ; @ldexp
; %bb.0:
	push	r16
	push	r17
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
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+24, r25
	std	Y+23, r24
	std	Y+22, r23
	std	Y+21, r22
	std	Y+20, r21
	std	Y+19, r20
	lds	r24, __profc_ldexp
	lds	r25, __profc_ldexp+1
	lds	r18, __profc_ldexp+2
	lds	r19, __profc_ldexp+3
	lds	r20, __profc_ldexp+4
	lds	r21, __profc_ldexp+5
	lds	r22, __profc_ldexp+6
	lds	r23, __profc_ldexp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexp+7, r23
	sts	__profc_ldexp+6, r22
	sts	__profc_ldexp+5, r21
	sts	__profc_ldexp+4, r20
	sts	__profc_ldexp+3, r19
	sts	__profc_ldexp+2, r18
	sts	__profc_ldexp+1, r25
	sts	__profc_ldexp, r24
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
	rjmp	.LBB86_14
.LBB86_2:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB86_1
.LBB86_3:
	lds	r24, __profc_ldexp+16
	lds	r25, __profc_ldexp+17
	lds	r18, __profc_ldexp+18
	lds	r19, __profc_ldexp+19
	lds	r20, __profc_ldexp+20
	lds	r21, __profc_ldexp+21
	lds	r22, __profc_ldexp+22
	lds	r23, __profc_ldexp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexp+23, r23
	sts	__profc_ldexp+22, r22
	sts	__profc_ldexp+21, r21
	sts	__profc_ldexp+20, r20
	sts	__profc_ldexp+19, r19
	sts	__profc_ldexp+18, r18
	sts	__profc_ldexp+17, r25
	sts	__profc_ldexp+16, r24
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
	rjmp	.LBB86_14
.LBB86_4:
	lds	r24, __profc_ldexp+24
	lds	r25, __profc_ldexp+25
	lds	r18, __profc_ldexp+26
	lds	r19, __profc_ldexp+27
	lds	r20, __profc_ldexp+28
	lds	r21, __profc_ldexp+29
	lds	r22, __profc_ldexp+30
	lds	r23, __profc_ldexp+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexp+31, r23
	sts	__profc_ldexp+30, r22
	sts	__profc_ldexp+29, r21
	sts	__profc_ldexp+28, r20
	sts	__profc_ldexp+27, r19
	sts	__profc_ldexp+26, r18
	sts	__profc_ldexp+25, r25
	sts	__profc_ldexp+24, r24
	rjmp	.LBB86_5
.LBB86_5:
	lds	r24, __profc_ldexp+8
	lds	r25, __profc_ldexp+9
	lds	r18, __profc_ldexp+10
	lds	r19, __profc_ldexp+11
	lds	r20, __profc_ldexp+12
	lds	r21, __profc_ldexp+13
	lds	r22, __profc_ldexp+14
	lds	r23, __profc_ldexp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexp+15, r23
	sts	__profc_ldexp+14, r22
	sts	__profc_ldexp+13, r21
	sts	__profc_ldexp+12, r20
	sts	__profc_ldexp+11, r19
	sts	__profc_ldexp+10, r18
	sts	__profc_ldexp+9, r25
	sts	__profc_ldexp+8, r24
	ldd	r24, Y+19
	ldd	r25, Y+20
	mov	r16, r24
	mov	r17, r25
	mov	r16, r17
	swap	r16
	andi	r16, 15
	clr	r17
	lsr	r16
	lsr	r16
	lsr	r16
	lds	r18, __profc_ldexp+32
	lds	r19, __profc_ldexp+33
	lds	r20, __profc_ldexp+34
	lds	r21, __profc_ldexp+35
	lds	r22, __profc_ldexp+36
	lds	r23, __profc_ldexp+37
	lds	r30, __profc_ldexp+38
	lds	r31, __profc_ldexp+39
	ldi	r26, 0
	ldi	r27, 0
	std	Y+2, r27                        ; 2-byte Folded Spill
	std	Y+1, r26                        ; 2-byte Folded Spill
	add	r18, r16
	adc	r19, r17
	adc	r20, r26
	adc	r21, r27
	adc	r22, r26
	adc	r23, r27
	adc	r30, r26
	adc	r31, r27
	sts	__profc_ldexp+39, r31
	sts	__profc_ldexp+38, r30
	sts	__profc_ldexp+37, r23
	sts	__profc_ldexp+36, r22
	sts	__profc_ldexp+35, r21
	sts	__profc_ldexp+34, r20
	sts	__profc_ldexp+33, r19
	sts	__profc_ldexp+32, r18
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
	brmi	.LBB86_6
	rjmp	.LBB86_7
.LBB86_6:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB86_8
	rjmp	.LBB86_8
.LBB86_7:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB86_6
.LBB86_8:                               ; =>This Inner Loop Header: Depth=1
	lds	r24, __profc_ldexp+40
	lds	r25, __profc_ldexp+41
	lds	r18, __profc_ldexp+42
	lds	r19, __profc_ldexp+43
	lds	r20, __profc_ldexp+44
	lds	r21, __profc_ldexp+45
	lds	r22, __profc_ldexp+46
	lds	r23, __profc_ldexp+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexp+47, r23
	sts	__profc_ldexp+46, r22
	sts	__profc_ldexp+45, r21
	sts	__profc_ldexp+44, r20
	sts	__profc_ldexp+43, r19
	sts	__profc_ldexp+42, r18
	sts	__profc_ldexp+41, r25
	sts	__profc_ldexp+40, r24
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
	brne	.LBB86_9
	rjmp	.LBB86_10
.LBB86_9:                               ;   in Loop: Header=BB86_8 Depth=1
	lds	r24, __profc_ldexp+48
	lds	r25, __profc_ldexp+49
	lds	r18, __profc_ldexp+50
	lds	r19, __profc_ldexp+51
	lds	r20, __profc_ldexp+52
	lds	r21, __profc_ldexp+53
	lds	r22, __profc_ldexp+54
	lds	r23, __profc_ldexp+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexp+55, r23
	sts	__profc_ldexp+54, r22
	sts	__profc_ldexp+53, r21
	sts	__profc_ldexp+52, r20
	sts	__profc_ldexp+51, r19
	sts	__profc_ldexp+50, r18
	sts	__profc_ldexp+49, r25
	sts	__profc_ldexp+48, r24
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
	rjmp	.LBB86_10
.LBB86_10:                              ;   in Loop: Header=BB86_8 Depth=1
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
	breq	.LBB86_11
	rjmp	.LBB86_12
.LBB86_11:
	lds	r24, __profc_ldexp+56
	lds	r25, __profc_ldexp+57
	lds	r18, __profc_ldexp+58
	lds	r19, __profc_ldexp+59
	lds	r20, __profc_ldexp+60
	lds	r21, __profc_ldexp+61
	lds	r22, __profc_ldexp+62
	lds	r23, __profc_ldexp+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexp+63, r23
	sts	__profc_ldexp+62, r22
	sts	__profc_ldexp+61, r21
	sts	__profc_ldexp+60, r20
	sts	__profc_ldexp+59, r19
	sts	__profc_ldexp+58, r18
	sts	__profc_ldexp+57, r25
	sts	__profc_ldexp+56, r24
	rjmp	.LBB86_13
.LBB86_12:                              ;   in Loop: Header=BB86_8 Depth=1
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
	rjmp	.LBB86_8
.LBB86_13:
	rjmp	.LBB86_14
.LBB86_14:
	ldd	r22, Y+21
	ldd	r23, Y+22
	ldd	r24, Y+23
	ldd	r25, Y+24
	adiw	r28, 26
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
.Lfunc_end86:
	.size	ldexp, .Lfunc_end86-ldexp
                                        ; -- End function
	.globl	ldexpl                          ; -- Begin function ldexpl
	.p2align	1
	.type	ldexpl,@function
ldexpl:                                 ; @ldexpl
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
                                        ; kill: def $r19r18 killed $r25r24
                                        ; kill: def $r19r18 killed $r23r22
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	std	Y+18, r21
	std	Y+17, r20
	lds	r24, __profc_ldexpl
	lds	r25, __profc_ldexpl+1
	lds	r18, __profc_ldexpl+2
	lds	r19, __profc_ldexpl+3
	lds	r20, __profc_ldexpl+4
	lds	r21, __profc_ldexpl+5
	lds	r22, __profc_ldexpl+6
	lds	r23, __profc_ldexpl+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpl+7, r23
	sts	__profc_ldexpl+6, r22
	sts	__profc_ldexpl+5, r21
	sts	__profc_ldexpl+4, r20
	sts	__profc_ldexpl+3, r19
	sts	__profc_ldexpl+2, r18
	sts	__profc_ldexpl+1, r25
	sts	__profc_ldexpl, r24
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
	std	Y+11, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r22, 1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+12, r24                       ; 1-byte Folded Spill
	brge	.LBB87_1
	rjmp	.LBB87_2
.LBB87_1:
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB87_3
	rjmp	.LBB87_14
.LBB87_2:
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+12, r24                       ; 1-byte Folded Spill
	rjmp	.LBB87_1
.LBB87_3:
	lds	r24, __profc_ldexpl+16
	lds	r25, __profc_ldexpl+17
	lds	r18, __profc_ldexpl+18
	lds	r19, __profc_ldexpl+19
	lds	r20, __profc_ldexpl+20
	lds	r21, __profc_ldexpl+21
	lds	r22, __profc_ldexpl+22
	lds	r23, __profc_ldexpl+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpl+23, r23
	sts	__profc_ldexpl+22, r22
	sts	__profc_ldexpl+21, r21
	sts	__profc_ldexpl+20, r20
	sts	__profc_ldexpl+19, r19
	sts	__profc_ldexpl+18, r18
	sts	__profc_ldexpl+17, r25
	sts	__profc_ldexpl+16, r24
	ldd	r18, Y+19
	ldd	r19, Y+20
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	ldd	r20, Y+21
	ldd	r21, Y+22
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
	brne	.LBB87_4
	rjmp	.LBB87_14
.LBB87_4:
	lds	r24, __profc_ldexpl+24
	lds	r25, __profc_ldexpl+25
	lds	r18, __profc_ldexpl+26
	lds	r19, __profc_ldexpl+27
	lds	r20, __profc_ldexpl+28
	lds	r21, __profc_ldexpl+29
	lds	r22, __profc_ldexpl+30
	lds	r23, __profc_ldexpl+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpl+31, r23
	sts	__profc_ldexpl+30, r22
	sts	__profc_ldexpl+29, r21
	sts	__profc_ldexpl+28, r20
	sts	__profc_ldexpl+27, r19
	sts	__profc_ldexpl+26, r18
	sts	__profc_ldexpl+25, r25
	sts	__profc_ldexpl+24, r24
	rjmp	.LBB87_5
.LBB87_5:
	lds	r24, __profc_ldexpl+8
	lds	r25, __profc_ldexpl+9
	lds	r18, __profc_ldexpl+10
	lds	r19, __profc_ldexpl+11
	lds	r20, __profc_ldexpl+12
	lds	r21, __profc_ldexpl+13
	lds	r22, __profc_ldexpl+14
	lds	r23, __profc_ldexpl+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpl+15, r23
	sts	__profc_ldexpl+14, r22
	sts	__profc_ldexpl+13, r21
	sts	__profc_ldexpl+12, r20
	sts	__profc_ldexpl+11, r19
	sts	__profc_ldexpl+10, r18
	sts	__profc_ldexpl+9, r25
	sts	__profc_ldexpl+8, r24
	ldd	r24, Y+17
	ldd	r25, Y+18
	mov	r16, r24
	mov	r17, r25
	mov	r16, r17
	swap	r16
	andi	r16, 15
	clr	r17
	lsr	r16
	lsr	r16
	lsr	r16
	lds	r18, __profc_ldexpl+32
	lds	r19, __profc_ldexpl+33
	lds	r20, __profc_ldexpl+34
	lds	r21, __profc_ldexpl+35
	lds	r22, __profc_ldexpl+36
	lds	r23, __profc_ldexpl+37
	lds	r30, __profc_ldexpl+38
	lds	r31, __profc_ldexpl+39
	ldi	r26, 0
	ldi	r27, 0
	std	Y+2, r27                        ; 2-byte Folded Spill
	std	Y+1, r26                        ; 2-byte Folded Spill
	add	r18, r16
	adc	r19, r17
	adc	r20, r26
	adc	r21, r27
	adc	r22, r26
	adc	r23, r27
	adc	r30, r26
	adc	r31, r27
	sts	__profc_ldexpl+39, r31
	sts	__profc_ldexpl+38, r30
	sts	__profc_ldexpl+37, r23
	sts	__profc_ldexpl+36, r22
	sts	__profc_ldexpl+35, r21
	sts	__profc_ldexpl+34, r20
	sts	__profc_ldexpl+33, r19
	sts	__profc_ldexpl+32, r18
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
	brmi	.LBB87_6
	rjmp	.LBB87_7
.LBB87_6:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	ldd	r18, Y+5                        ; 2-byte Folded Reload
	ldd	r19, Y+6                        ; 2-byte Folded Reload
	std	Y+16, r19
	std	Y+15, r18
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB87_8
	rjmp	.LBB87_8
.LBB87_7:
	ldd	r24, Y+3                        ; 2-byte Folded Reload
	ldd	r25, Y+4                        ; 2-byte Folded Reload
	std	Y+6, r25                        ; 2-byte Folded Spill
	std	Y+5, r24                        ; 2-byte Folded Spill
	rjmp	.LBB87_6
.LBB87_8:                               ; =>This Inner Loop Header: Depth=1
	lds	r24, __profc_ldexpl+40
	lds	r25, __profc_ldexpl+41
	lds	r18, __profc_ldexpl+42
	lds	r19, __profc_ldexpl+43
	lds	r20, __profc_ldexpl+44
	lds	r21, __profc_ldexpl+45
	lds	r22, __profc_ldexpl+46
	lds	r23, __profc_ldexpl+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpl+47, r23
	sts	__profc_ldexpl+46, r22
	sts	__profc_ldexpl+45, r21
	sts	__profc_ldexpl+44, r20
	sts	__profc_ldexpl+43, r19
	sts	__profc_ldexpl+42, r18
	sts	__profc_ldexpl+41, r25
	sts	__profc_ldexpl+40, r24
	ldd	r18, Y+17
	ldd	r19, Y+18
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
	brne	.LBB87_9
	rjmp	.LBB87_10
.LBB87_9:                               ;   in Loop: Header=BB87_8 Depth=1
	lds	r24, __profc_ldexpl+48
	lds	r25, __profc_ldexpl+49
	lds	r18, __profc_ldexpl+50
	lds	r19, __profc_ldexpl+51
	lds	r20, __profc_ldexpl+52
	lds	r21, __profc_ldexpl+53
	lds	r22, __profc_ldexpl+54
	lds	r23, __profc_ldexpl+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpl+55, r23
	sts	__profc_ldexpl+54, r22
	sts	__profc_ldexpl+53, r21
	sts	__profc_ldexpl+52, r20
	sts	__profc_ldexpl+51, r19
	sts	__profc_ldexpl+50, r18
	sts	__profc_ldexpl+49, r25
	sts	__profc_ldexpl+48, r24
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
	rcall	__mulsf3
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r23
	std	Y+19, r22
	rjmp	.LBB87_10
.LBB87_10:                              ;   in Loop: Header=BB87_8 Depth=1
	ldd	r24, Y+17
	ldd	r25, Y+18
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
	std	Y+18, r25
	std	Y+17, r24
	ldd	r18, Y+17
	ldd	r19, Y+18
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB87_11
	rjmp	.LBB87_12
.LBB87_11:
	lds	r24, __profc_ldexpl+56
	lds	r25, __profc_ldexpl+57
	lds	r18, __profc_ldexpl+58
	lds	r19, __profc_ldexpl+59
	lds	r20, __profc_ldexpl+60
	lds	r21, __profc_ldexpl+61
	lds	r22, __profc_ldexpl+62
	lds	r23, __profc_ldexpl+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_ldexpl+63, r23
	sts	__profc_ldexpl+62, r22
	sts	__profc_ldexpl+61, r21
	sts	__profc_ldexpl+60, r20
	sts	__profc_ldexpl+59, r19
	sts	__profc_ldexpl+58, r18
	sts	__profc_ldexpl+57, r25
	sts	__profc_ldexpl+56, r24
	rjmp	.LBB87_13
.LBB87_12:                              ;   in Loop: Header=BB87_8 Depth=1
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
	rjmp	.LBB87_8
.LBB87_13:
	rjmp	.LBB87_14
.LBB87_14:
	ldd	r22, Y+19
	ldd	r23, Y+20
	ldd	r24, Y+21
	ldd	r25, Y+22
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
	lds	r24, __profc_memxor
	lds	r25, __profc_memxor+1
	lds	r18, __profc_memxor+2
	lds	r19, __profc_memxor+3
	lds	r20, __profc_memxor+4
	lds	r21, __profc_memxor+5
	lds	r22, __profc_memxor+6
	lds	r23, __profc_memxor+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memxor+7, r23
	sts	__profc_memxor+6, r22
	sts	__profc_memxor+5, r21
	sts	__profc_memxor+4, r20
	sts	__profc_memxor+3, r19
	sts	__profc_memxor+2, r18
	sts	__profc_memxor+1, r25
	sts	__profc_memxor, r24
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
	brne	.LBB88_2
	rjmp	.LBB88_4
.LBB88_2:                               ;   in Loop: Header=BB88_1 Depth=1
	lds	r24, __profc_memxor+8
	lds	r25, __profc_memxor+9
	lds	r18, __profc_memxor+10
	lds	r19, __profc_memxor+11
	lds	r20, __profc_memxor+12
	lds	r21, __profc_memxor+13
	lds	r22, __profc_memxor+14
	lds	r23, __profc_memxor+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memxor+15, r23
	sts	__profc_memxor+14, r22
	sts	__profc_memxor+13, r21
	sts	__profc_memxor+12, r20
	sts	__profc_memxor+11, r19
	sts	__profc_memxor+10, r18
	sts	__profc_memxor+9, r25
	sts	__profc_memxor+8, r24
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
	lds	r24, __profc_strncat
	lds	r25, __profc_strncat+1
	lds	r18, __profc_strncat+2
	lds	r19, __profc_strncat+3
	lds	r20, __profc_strncat+4
	lds	r21, __profc_strncat+5
	lds	r22, __profc_strncat+6
	lds	r23, __profc_strncat+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncat+7, r23
	sts	__profc_strncat+6, r22
	sts	__profc_strncat+5, r21
	sts	__profc_strncat+4, r20
	sts	__profc_strncat+3, r19
	sts	__profc_strncat+2, r18
	sts	__profc_strncat+1, r25
	sts	__profc_strncat, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+8, r25                        ; 2-byte Folded Spill
	std	Y+7, r24                        ; 2-byte Folded Spill
	rcall	strlen
	mov	r18, r24
	mov	r19, r25
	ldd	r24, Y+7                        ; 2-byte Folded Reload
	ldd	r25, Y+8                        ; 2-byte Folded Reload
	add	r24, r18
	adc	r25, r19
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB89_1
.LBB89_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+11
	ldd	r21, Y+12
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB89_2
	rjmp	.LBB89_6
.LBB89_2:                               ;   in Loop: Header=BB89_1 Depth=1
	lds	r24, __profc_strncat+16
	lds	r25, __profc_strncat+17
	lds	r18, __profc_strncat+18
	lds	r19, __profc_strncat+19
	lds	r20, __profc_strncat+20
	lds	r21, __profc_strncat+21
	lds	r22, __profc_strncat+22
	lds	r23, __profc_strncat+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncat+23, r23
	sts	__profc_strncat+22, r22
	sts	__profc_strncat+21, r21
	sts	__profc_strncat+20, r20
	sts	__profc_strncat+19, r19
	sts	__profc_strncat+18, r18
	sts	__profc_strncat+17, r25
	sts	__profc_strncat+16, r24
	ldd	r26, Y+13
	ldd	r27, Y+14
	ld	r18, X
	std	Y+2, r18                        ; 1-byte Folded Spill
	ldd	r26, Y+9
	ldd	r27, Y+10
	st	X, r18
	mov	r24, r18
	mov	r25, r18
	lsl	r25
	sbc	r25, r25
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	brne	.LBB89_3
	rjmp	.LBB89_4
.LBB89_3:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB89_5
	rjmp	.LBB89_6
.LBB89_4:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB89_3
.LBB89_5:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_strncat+24
	lds	r19, __profc_strncat+25
	lds	r20, __profc_strncat+26
	lds	r21, __profc_strncat+27
	lds	r22, __profc_strncat+28
	lds	r23, __profc_strncat+29
	lds	r30, __profc_strncat+30
	lds	r31, __profc_strncat+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_strncat+31, r31
	sts	__profc_strncat+30, r30
	sts	__profc_strncat+29, r23
	sts	__profc_strncat+28, r22
	sts	__profc_strncat+27, r21
	sts	__profc_strncat+26, r20
	sts	__profc_strncat+25, r19
	sts	__profc_strncat+24, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB89_6
.LBB89_6:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB89_7
	rjmp	.LBB89_9
.LBB89_7:                               ;   in Loop: Header=BB89_1 Depth=1
	lds	r24, __profc_strncat+8
	lds	r25, __profc_strncat+9
	lds	r18, __profc_strncat+10
	lds	r19, __profc_strncat+11
	lds	r20, __profc_strncat+12
	lds	r21, __profc_strncat+13
	lds	r22, __profc_strncat+14
	lds	r23, __profc_strncat+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncat+15, r23
	sts	__profc_strncat+14, r22
	sts	__profc_strncat+13, r21
	sts	__profc_strncat+12, r20
	sts	__profc_strncat+11, r19
	sts	__profc_strncat+10, r18
	sts	__profc_strncat+9, r25
	sts	__profc_strncat+8, r24
	rjmp	.LBB89_8
.LBB89_8:                               ;   in Loop: Header=BB89_1 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	sbiw	r24, 1
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB89_1
.LBB89_9:
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	breq	.LBB89_10
	rjmp	.LBB89_11
.LBB89_10:
	lds	r24, __profc_strncat+32
	lds	r25, __profc_strncat+33
	lds	r18, __profc_strncat+34
	lds	r19, __profc_strncat+35
	lds	r20, __profc_strncat+36
	lds	r21, __profc_strncat+37
	lds	r22, __profc_strncat+38
	lds	r23, __profc_strncat+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strncat+39, r23
	sts	__profc_strncat+38, r22
	sts	__profc_strncat+37, r21
	sts	__profc_strncat+36, r20
	sts	__profc_strncat+35, r19
	sts	__profc_strncat+34, r18
	sts	__profc_strncat+33, r25
	sts	__profc_strncat+32, r24
	ldd	r26, Y+9
	ldd	r27, Y+10
	mov	r24, r1
	st	X, r24
	rjmp	.LBB89_11
.LBB89_11:
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
	sbiw	r28, 12
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r23
	std	Y+9, r22
	lds	r24, __profc_strnlen
	lds	r25, __profc_strnlen+1
	lds	r18, __profc_strnlen+2
	lds	r19, __profc_strnlen+3
	lds	r20, __profc_strnlen+4
	lds	r21, __profc_strnlen+5
	lds	r22, __profc_strnlen+6
	lds	r23, __profc_strnlen+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strnlen+7, r23
	sts	__profc_strnlen+6, r22
	sts	__profc_strnlen+5, r21
	sts	__profc_strnlen+4, r20
	sts	__profc_strnlen+3, r19
	sts	__profc_strnlen+2, r18
	sts	__profc_strnlen+1, r25
	sts	__profc_strnlen, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB90_1
.LBB90_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+7
	ldd	r19, Y+8
	ldd	r20, Y+9
	ldd	r21, Y+10
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brlo	.LBB90_2
	rjmp	.LBB90_6
.LBB90_2:                               ;   in Loop: Header=BB90_1 Depth=1
	lds	r24, __profc_strnlen+16
	lds	r25, __profc_strnlen+17
	lds	r18, __profc_strnlen+18
	lds	r19, __profc_strnlen+19
	lds	r20, __profc_strnlen+20
	lds	r21, __profc_strnlen+21
	lds	r22, __profc_strnlen+22
	lds	r23, __profc_strnlen+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strnlen+23, r23
	sts	__profc_strnlen+22, r22
	sts	__profc_strnlen+21, r21
	sts	__profc_strnlen+20, r20
	sts	__profc_strnlen+19, r19
	sts	__profc_strnlen+18, r18
	sts	__profc_strnlen+17, r25
	sts	__profc_strnlen+16, r24
	ldd	r26, Y+11
	ldd	r27, Y+12
	ldd	r24, Y+7
	ldd	r25, Y+8
	add	r26, r24
	adc	r27, r25
	ld	r18, X
	std	Y+2, r18                        ; 1-byte Folded Spill
	mov	r24, r18
	mov	r25, r18
	lsl	r25
	sbc	r25, r25
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+4, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	brne	.LBB90_3
	rjmp	.LBB90_4
.LBB90_3:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+2                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+1, r24                        ; 1-byte Folded Spill
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB90_5
	rjmp	.LBB90_6
.LBB90_4:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB90_3
.LBB90_5:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	lds	r18, __profc_strnlen+24
	lds	r19, __profc_strnlen+25
	lds	r20, __profc_strnlen+26
	lds	r21, __profc_strnlen+27
	lds	r22, __profc_strnlen+28
	lds	r23, __profc_strnlen+29
	lds	r30, __profc_strnlen+30
	lds	r31, __profc_strnlen+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_strnlen+31, r31
	sts	__profc_strnlen+30, r30
	sts	__profc_strnlen+29, r23
	sts	__profc_strnlen+28, r22
	sts	__profc_strnlen+27, r21
	sts	__profc_strnlen+26, r20
	sts	__profc_strnlen+25, r19
	sts	__profc_strnlen+24, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB90_6
.LBB90_6:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB90_7
	rjmp	.LBB90_9
.LBB90_7:                               ;   in Loop: Header=BB90_1 Depth=1
	lds	r24, __profc_strnlen+8
	lds	r25, __profc_strnlen+9
	lds	r18, __profc_strnlen+10
	lds	r19, __profc_strnlen+11
	lds	r20, __profc_strnlen+12
	lds	r21, __profc_strnlen+13
	lds	r22, __profc_strnlen+14
	lds	r23, __profc_strnlen+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strnlen+15, r23
	sts	__profc_strnlen+14, r22
	sts	__profc_strnlen+13, r21
	sts	__profc_strnlen+12, r20
	sts	__profc_strnlen+11, r19
	sts	__profc_strnlen+10, r18
	sts	__profc_strnlen+9, r25
	sts	__profc_strnlen+8, r24
	rjmp	.LBB90_8
.LBB90_8:                               ;   in Loop: Header=BB90_1 Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r24, 1
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB90_1
.LBB90_9:
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r28, 12
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
	lds	r24, __profc_strpbrk
	lds	r25, __profc_strpbrk+1
	lds	r18, __profc_strpbrk+2
	lds	r19, __profc_strpbrk+3
	lds	r20, __profc_strpbrk+4
	lds	r21, __profc_strpbrk+5
	lds	r22, __profc_strpbrk+6
	lds	r23, __profc_strpbrk+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strpbrk+7, r23
	sts	__profc_strpbrk+6, r22
	sts	__profc_strpbrk+5, r21
	sts	__profc_strpbrk+4, r20
	sts	__profc_strpbrk+3, r19
	sts	__profc_strpbrk+2, r18
	sts	__profc_strpbrk+1, r25
	sts	__profc_strpbrk, r24
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
	lds	r24, __profc_strpbrk+8
	lds	r25, __profc_strpbrk+9
	lds	r18, __profc_strpbrk+10
	lds	r19, __profc_strpbrk+11
	lds	r20, __profc_strpbrk+12
	lds	r21, __profc_strpbrk+13
	lds	r22, __profc_strpbrk+14
	lds	r23, __profc_strpbrk+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strpbrk+15, r23
	sts	__profc_strpbrk+14, r22
	sts	__profc_strpbrk+13, r21
	sts	__profc_strpbrk+12, r20
	sts	__profc_strpbrk+11, r19
	sts	__profc_strpbrk+10, r18
	sts	__profc_strpbrk+9, r25
	sts	__profc_strpbrk+8, r24
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
	brne	.LBB91_4
	rjmp	.LBB91_7
.LBB91_4:                               ;   in Loop: Header=BB91_3 Depth=2
	lds	r24, __profc_strpbrk+16
	lds	r25, __profc_strpbrk+17
	lds	r18, __profc_strpbrk+18
	lds	r19, __profc_strpbrk+19
	lds	r20, __profc_strpbrk+20
	lds	r21, __profc_strpbrk+21
	lds	r22, __profc_strpbrk+22
	lds	r23, __profc_strpbrk+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strpbrk+23, r23
	sts	__profc_strpbrk+22, r22
	sts	__profc_strpbrk+21, r21
	sts	__profc_strpbrk+20, r20
	sts	__profc_strpbrk+19, r19
	sts	__profc_strpbrk+18, r18
	sts	__profc_strpbrk+17, r25
	sts	__profc_strpbrk+16, r24
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
	breq	.LBB91_5
	rjmp	.LBB91_6
.LBB91_5:
	lds	r24, __profc_strpbrk+24
	lds	r25, __profc_strpbrk+25
	lds	r18, __profc_strpbrk+26
	lds	r19, __profc_strpbrk+27
	lds	r20, __profc_strpbrk+28
	lds	r21, __profc_strpbrk+29
	lds	r22, __profc_strpbrk+30
	lds	r23, __profc_strpbrk+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strpbrk+31, r23
	sts	__profc_strpbrk+30, r22
	sts	__profc_strpbrk+29, r21
	sts	__profc_strpbrk+28, r20
	sts	__profc_strpbrk+27, r19
	sts	__profc_strpbrk+26, r18
	sts	__profc_strpbrk+25, r25
	sts	__profc_strpbrk+24, r24
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
	lds	r24, __profc_strrchr
	lds	r25, __profc_strrchr+1
	lds	r18, __profc_strrchr+2
	lds	r19, __profc_strrchr+3
	lds	r20, __profc_strrchr+4
	lds	r21, __profc_strrchr+5
	lds	r22, __profc_strrchr+6
	lds	r23, __profc_strrchr+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strrchr+7, r23
	sts	__profc_strrchr+6, r22
	sts	__profc_strrchr+5, r21
	sts	__profc_strrchr+4, r20
	sts	__profc_strrchr+3, r19
	sts	__profc_strrchr+2, r18
	sts	__profc_strrchr+1, r25
	sts	__profc_strrchr, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB92_2
.LBB92_1:                               ;   in Loop: Header=BB92_2 Depth=1
	lds	r24, __profc_strrchr+8
	lds	r25, __profc_strrchr+9
	lds	r18, __profc_strrchr+10
	lds	r19, __profc_strrchr+11
	lds	r20, __profc_strrchr+12
	lds	r21, __profc_strrchr+13
	lds	r22, __profc_strrchr+14
	lds	r23, __profc_strrchr+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strrchr+15, r23
	sts	__profc_strrchr+14, r22
	sts	__profc_strrchr+13, r21
	sts	__profc_strrchr+12, r20
	sts	__profc_strrchr+11, r19
	sts	__profc_strrchr+10, r18
	sts	__profc_strrchr+9, r25
	sts	__profc_strrchr+8, r24
	rjmp	.LBB92_2
.LBB92_2:                               ; =>This Inner Loop Header: Depth=1
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
	breq	.LBB92_3
	rjmp	.LBB92_4
.LBB92_3:                               ;   in Loop: Header=BB92_2 Depth=1
	lds	r24, __profc_strrchr+16
	lds	r25, __profc_strrchr+17
	lds	r18, __profc_strrchr+18
	lds	r19, __profc_strrchr+19
	lds	r20, __profc_strrchr+20
	lds	r21, __profc_strrchr+21
	lds	r22, __profc_strrchr+22
	lds	r23, __profc_strrchr+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strrchr+23, r23
	sts	__profc_strrchr+22, r22
	sts	__profc_strrchr+21, r21
	sts	__profc_strrchr+20, r20
	sts	__profc_strrchr+19, r19
	sts	__profc_strrchr+18, r18
	sts	__profc_strrchr+17, r25
	sts	__profc_strrchr+16, r24
	ldd	r24, Y+5
	ldd	r25, Y+6
	std	Y+2, r25
	std	Y+1, r24
	rjmp	.LBB92_4
.LBB92_4:                               ;   in Loop: Header=BB92_2 Depth=1
	rjmp	.LBB92_5
.LBB92_5:                               ;   in Loop: Header=BB92_2 Depth=1
	ldd	r26, Y+5
	ldd	r27, Y+6
	mov	r24, r26
	mov	r25, r27
	adiw	r24, 1
	std	Y+6, r25
	std	Y+5, r24
	ld	r24, X
	cpi	r24, 0
	breq	.LBB92_6
	rjmp	.LBB92_1
.LBB92_6:
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
	lds	r24, __profc_strstr
	lds	r25, __profc_strstr+1
	lds	r18, __profc_strstr+2
	lds	r19, __profc_strstr+3
	lds	r20, __profc_strstr+4
	lds	r21, __profc_strstr+5
	lds	r22, __profc_strstr+6
	lds	r23, __profc_strstr+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strstr+7, r23
	sts	__profc_strstr+6, r22
	sts	__profc_strstr+5, r21
	sts	__profc_strstr+4, r20
	sts	__profc_strstr+3, r19
	sts	__profc_strstr+2, r18
	sts	__profc_strstr+1, r25
	sts	__profc_strstr, r24
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
	breq	.LBB93_1
	rjmp	.LBB93_2
.LBB93_1:
	lds	r24, __profc_strstr+8
	lds	r25, __profc_strstr+9
	lds	r18, __profc_strstr+10
	lds	r19, __profc_strstr+11
	lds	r20, __profc_strstr+12
	lds	r21, __profc_strstr+13
	lds	r22, __profc_strstr+14
	lds	r23, __profc_strstr+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strstr+15, r23
	sts	__profc_strstr+14, r22
	sts	__profc_strstr+13, r21
	sts	__profc_strstr+12, r20
	sts	__profc_strstr+11, r19
	sts	__profc_strstr+10, r18
	sts	__profc_strstr+9, r25
	sts	__profc_strstr+8, r24
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
	brne	.LBB93_4
	rjmp	.LBB93_8
.LBB93_4:                               ;   in Loop: Header=BB93_3 Depth=1
	lds	r24, __profc_strstr+16
	lds	r25, __profc_strstr+17
	lds	r18, __profc_strstr+18
	lds	r19, __profc_strstr+19
	lds	r20, __profc_strstr+20
	lds	r21, __profc_strstr+21
	lds	r22, __profc_strstr+22
	lds	r23, __profc_strstr+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strstr+23, r23
	sts	__profc_strstr+22, r22
	sts	__profc_strstr+21, r21
	sts	__profc_strstr+20, r20
	sts	__profc_strstr+19, r19
	sts	__profc_strstr+18, r18
	sts	__profc_strstr+17, r25
	sts	__profc_strstr+16, r24
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
	breq	.LBB93_5
	rjmp	.LBB93_6
.LBB93_5:
	lds	r24, __profc_strstr+24
	lds	r25, __profc_strstr+25
	lds	r18, __profc_strstr+26
	lds	r19, __profc_strstr+27
	lds	r20, __profc_strstr+28
	lds	r21, __profc_strstr+29
	lds	r22, __profc_strstr+30
	lds	r23, __profc_strstr+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_strstr+31, r23
	sts	__profc_strstr+30, r22
	sts	__profc_strstr+29, r21
	sts	__profc_strstr+28, r20
	sts	__profc_strstr+27, r19
	sts	__profc_strstr+26, r18
	sts	__profc_strstr+25, r25
	sts	__profc_strstr+24, r24
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
	lds	r24, __profc_copysign
	lds	r25, __profc_copysign+1
	lds	r18, __profc_copysign+2
	lds	r19, __profc_copysign+3
	lds	r20, __profc_copysign+4
	lds	r21, __profc_copysign+5
	lds	r22, __profc_copysign+6
	lds	r23, __profc_copysign+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_copysign+7, r23
	sts	__profc_copysign+6, r22
	sts	__profc_copysign+5, r21
	sts	__profc_copysign+4, r20
	sts	__profc_copysign+3, r19
	sts	__profc_copysign+2, r18
	sts	__profc_copysign+1, r25
	sts	__profc_copysign, r24
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
	brmi	.LBB94_1
	rjmp	.LBB94_3
.LBB94_1:
	lds	r24, __profc_copysign+24
	lds	r25, __profc_copysign+25
	lds	r18, __profc_copysign+26
	lds	r19, __profc_copysign+27
	lds	r20, __profc_copysign+28
	lds	r21, __profc_copysign+29
	lds	r22, __profc_copysign+30
	lds	r23, __profc_copysign+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_copysign+31, r23
	sts	__profc_copysign+30, r22
	sts	__profc_copysign+29, r21
	sts	__profc_copysign+28, r20
	sts	__profc_copysign+27, r19
	sts	__profc_copysign+26, r18
	sts	__profc_copysign+25, r25
	sts	__profc_copysign+24, r24
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
	brlt	.LBB94_2
	rjmp	.LBB94_3
.LBB94_2:
	lds	r24, __profc_copysign+32
	lds	r25, __profc_copysign+33
	lds	r18, __profc_copysign+34
	lds	r19, __profc_copysign+35
	lds	r20, __profc_copysign+36
	lds	r21, __profc_copysign+37
	lds	r22, __profc_copysign+38
	lds	r23, __profc_copysign+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_copysign+39, r23
	sts	__profc_copysign+38, r22
	sts	__profc_copysign+37, r21
	sts	__profc_copysign+36, r20
	sts	__profc_copysign+35, r19
	sts	__profc_copysign+34, r18
	sts	__profc_copysign+33, r25
	sts	__profc_copysign+32, r24
	rjmp	.LBB94_6
.LBB94_3:
	lds	r24, __profc_copysign+16
	lds	r25, __profc_copysign+17
	lds	r18, __profc_copysign+18
	lds	r19, __profc_copysign+19
	lds	r20, __profc_copysign+20
	lds	r21, __profc_copysign+21
	lds	r22, __profc_copysign+22
	lds	r23, __profc_copysign+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_copysign+23, r23
	sts	__profc_copysign+22, r22
	sts	__profc_copysign+21, r21
	sts	__profc_copysign+20, r20
	sts	__profc_copysign+19, r19
	sts	__profc_copysign+18, r18
	sts	__profc_copysign+17, r25
	sts	__profc_copysign+16, r24
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
	brlt	.LBB94_4
	rjmp	.LBB94_7
.LBB94_4:
	lds	r24, __profc_copysign+40
	lds	r25, __profc_copysign+41
	lds	r18, __profc_copysign+42
	lds	r19, __profc_copysign+43
	lds	r20, __profc_copysign+44
	lds	r21, __profc_copysign+45
	lds	r22, __profc_copysign+46
	lds	r23, __profc_copysign+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_copysign+47, r23
	sts	__profc_copysign+46, r22
	sts	__profc_copysign+45, r21
	sts	__profc_copysign+44, r20
	sts	__profc_copysign+43, r19
	sts	__profc_copysign+42, r18
	sts	__profc_copysign+41, r25
	sts	__profc_copysign+40, r24
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
	brmi	.LBB94_5
	rjmp	.LBB94_7
.LBB94_5:
	lds	r24, __profc_copysign+48
	lds	r25, __profc_copysign+49
	lds	r18, __profc_copysign+50
	lds	r19, __profc_copysign+51
	lds	r20, __profc_copysign+52
	lds	r21, __profc_copysign+53
	lds	r22, __profc_copysign+54
	lds	r23, __profc_copysign+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_copysign+55, r23
	sts	__profc_copysign+54, r22
	sts	__profc_copysign+53, r21
	sts	__profc_copysign+52, r20
	sts	__profc_copysign+51, r19
	sts	__profc_copysign+50, r18
	sts	__profc_copysign+49, r25
	sts	__profc_copysign+48, r24
	rjmp	.LBB94_6
.LBB94_6:
	lds	r24, __profc_copysign+8
	lds	r25, __profc_copysign+9
	lds	r18, __profc_copysign+10
	lds	r19, __profc_copysign+11
	lds	r20, __profc_copysign+12
	lds	r21, __profc_copysign+13
	lds	r22, __profc_copysign+14
	lds	r23, __profc_copysign+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_copysign+15, r23
	sts	__profc_copysign+14, r22
	sts	__profc_copysign+13, r21
	sts	__profc_copysign+12, r20
	sts	__profc_copysign+11, r19
	sts	__profc_copysign+10, r18
	sts	__profc_copysign+9, r25
	sts	__profc_copysign+8, r24
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
	rjmp	.LBB94_8
.LBB94_7:
	ldd	r24, Y+5
	ldd	r25, Y+6
	ldd	r18, Y+7
	ldd	r19, Y+8
	std	Y+12, r19
	std	Y+11, r18
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB94_8
.LBB94_8:
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
	lds	r24, __profc_memmem
	lds	r25, __profc_memmem+1
	lds	r18, __profc_memmem+2
	lds	r19, __profc_memmem+3
	lds	r20, __profc_memmem+4
	lds	r21, __profc_memmem+5
	lds	r22, __profc_memmem+6
	lds	r23, __profc_memmem+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmem+7, r23
	sts	__profc_memmem+6, r22
	sts	__profc_memmem+5, r21
	sts	__profc_memmem+4, r20
	sts	__profc_memmem+3, r19
	sts	__profc_memmem+2, r18
	sts	__profc_memmem+1, r25
	sts	__profc_memmem, r24
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
	breq	.LBB95_1
	rjmp	.LBB95_2
.LBB95_1:
	lds	r24, __profc_memmem+8
	lds	r25, __profc_memmem+9
	lds	r18, __profc_memmem+10
	lds	r19, __profc_memmem+11
	lds	r20, __profc_memmem+12
	lds	r21, __profc_memmem+13
	lds	r22, __profc_memmem+14
	lds	r23, __profc_memmem+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmem+15, r23
	sts	__profc_memmem+14, r22
	sts	__profc_memmem+13, r21
	sts	__profc_memmem+12, r20
	sts	__profc_memmem+11, r19
	sts	__profc_memmem+10, r18
	sts	__profc_memmem+9, r25
	sts	__profc_memmem+8, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_13
.LBB95_2:
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+5
	ldd	r19, Y+6
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB95_3
	rjmp	.LBB95_4
.LBB95_3:
	lds	r24, __profc_memmem+16
	lds	r25, __profc_memmem+17
	lds	r18, __profc_memmem+18
	lds	r19, __profc_memmem+19
	lds	r20, __profc_memmem+20
	lds	r21, __profc_memmem+21
	lds	r22, __profc_memmem+22
	lds	r23, __profc_memmem+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmem+23, r23
	sts	__profc_memmem+22, r22
	sts	__profc_memmem+21, r21
	sts	__profc_memmem+20, r20
	sts	__profc_memmem+19, r19
	sts	__profc_memmem+18, r18
	sts	__profc_memmem+17, r25
	sts	__profc_memmem+16, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_13
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
	rjmp	.LBB95_12
.LBB95_6:                               ;   in Loop: Header=BB95_5 Depth=1
	lds	r24, __profc_memmem+24
	lds	r25, __profc_memmem+25
	lds	r18, __profc_memmem+26
	lds	r19, __profc_memmem+27
	lds	r20, __profc_memmem+28
	lds	r21, __profc_memmem+29
	lds	r22, __profc_memmem+30
	lds	r23, __profc_memmem+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmem+31, r23
	sts	__profc_memmem+30, r22
	sts	__profc_memmem+29, r21
	sts	__profc_memmem+28, r20
	sts	__profc_memmem+27, r19
	sts	__profc_memmem+26, r18
	sts	__profc_memmem+25, r25
	sts	__profc_memmem+24, r24
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
	breq	.LBB95_7
	rjmp	.LBB95_10
.LBB95_7:                               ;   in Loop: Header=BB95_5 Depth=1
	lds	r24, __profc_memmem+40
	lds	r25, __profc_memmem+41
	lds	r18, __profc_memmem+42
	lds	r19, __profc_memmem+43
	lds	r20, __profc_memmem+44
	lds	r21, __profc_memmem+45
	lds	r22, __profc_memmem+46
	lds	r23, __profc_memmem+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmem+47, r23
	sts	__profc_memmem+46, r22
	sts	__profc_memmem+45, r21
	sts	__profc_memmem+44, r20
	sts	__profc_memmem+43, r19
	sts	__profc_memmem+42, r18
	sts	__profc_memmem+41, r25
	sts	__profc_memmem+40, r24
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
	breq	.LBB95_8
	rjmp	.LBB95_10
.LBB95_8:
	lds	r24, __profc_memmem+48
	lds	r25, __profc_memmem+49
	lds	r18, __profc_memmem+50
	lds	r19, __profc_memmem+51
	lds	r20, __profc_memmem+52
	lds	r21, __profc_memmem+53
	lds	r22, __profc_memmem+54
	lds	r23, __profc_memmem+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmem+55, r23
	sts	__profc_memmem+54, r22
	sts	__profc_memmem+53, r21
	sts	__profc_memmem+52, r20
	sts	__profc_memmem+51, r19
	sts	__profc_memmem+50, r18
	sts	__profc_memmem+49, r25
	sts	__profc_memmem+48, r24
	rjmp	.LBB95_9
.LBB95_9:
	lds	r24, __profc_memmem+32
	lds	r25, __profc_memmem+33
	lds	r18, __profc_memmem+34
	lds	r19, __profc_memmem+35
	lds	r20, __profc_memmem+36
	lds	r21, __profc_memmem+37
	lds	r22, __profc_memmem+38
	lds	r23, __profc_memmem+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_memmem+39, r23
	sts	__profc_memmem+38, r22
	sts	__profc_memmem+37, r21
	sts	__profc_memmem+36, r20
	sts	__profc_memmem+35, r19
	sts	__profc_memmem+34, r18
	sts	__profc_memmem+33, r25
	sts	__profc_memmem+32, r24
	ldd	r24, Y+3
	ldd	r25, Y+4
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_13
.LBB95_10:                              ;   in Loop: Header=BB95_5 Depth=1
	rjmp	.LBB95_11
.LBB95_11:                              ;   in Loop: Header=BB95_5 Depth=1
	ldd	r24, Y+3
	ldd	r25, Y+4
	adiw	r24, 1
	std	Y+4, r25
	std	Y+3, r24
	rjmp	.LBB95_5
.LBB95_12:
	ldi	r24, 0
	ldi	r25, 0
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB95_13
.LBB95_13:
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
	lds	r24, __profc_mempcpy
	lds	r25, __profc_mempcpy+1
	lds	r18, __profc_mempcpy+2
	lds	r19, __profc_mempcpy+3
	lds	r20, __profc_mempcpy+4
	lds	r21, __profc_mempcpy+5
	lds	r22, __profc_mempcpy+6
	lds	r23, __profc_mempcpy+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_mempcpy+7, r23
	sts	__profc_mempcpy+6, r22
	sts	__profc_mempcpy+5, r21
	sts	__profc_mempcpy+4, r20
	sts	__profc_mempcpy+3, r19
	sts	__profc_mempcpy+2, r18
	sts	__profc_mempcpy+1, r25
	sts	__profc_mempcpy, r24
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
	lds	r24, __profc_frexp
	lds	r25, __profc_frexp+1
	lds	r18, __profc_frexp+2
	lds	r19, __profc_frexp+3
	lds	r20, __profc_frexp+4
	lds	r21, __profc_frexp+5
	lds	r22, __profc_frexp+6
	lds	r23, __profc_frexp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+7, r23
	sts	__profc_frexp+6, r22
	sts	__profc_frexp+5, r21
	sts	__profc_frexp+4, r20
	sts	__profc_frexp+3, r19
	sts	__profc_frexp+2, r18
	sts	__profc_frexp+1, r25
	sts	__profc_frexp, r24
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
	brmi	.LBB97_1
	rjmp	.LBB97_2
.LBB97_1:
	lds	r24, __profc_frexp+8
	lds	r25, __profc_frexp+9
	lds	r18, __profc_frexp+10
	lds	r19, __profc_frexp+11
	lds	r20, __profc_frexp+12
	lds	r21, __profc_frexp+13
	lds	r22, __profc_frexp+14
	lds	r23, __profc_frexp+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+15, r23
	sts	__profc_frexp+14, r22
	sts	__profc_frexp+13, r21
	sts	__profc_frexp+12, r20
	sts	__profc_frexp+11, r19
	sts	__profc_frexp+10, r18
	sts	__profc_frexp+9, r25
	sts	__profc_frexp+8, r24
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
	lds	r24, __profc_frexp+16
	lds	r25, __profc_frexp+17
	lds	r18, __profc_frexp+18
	lds	r19, __profc_frexp+19
	lds	r20, __profc_frexp+20
	lds	r21, __profc_frexp+21
	lds	r22, __profc_frexp+22
	lds	r23, __profc_frexp+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+23, r23
	sts	__profc_frexp+22, r22
	sts	__profc_frexp+21, r21
	sts	__profc_frexp+20, r20
	sts	__profc_frexp+19, r19
	sts	__profc_frexp+18, r18
	sts	__profc_frexp+17, r25
	sts	__profc_frexp+16, r24
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
	brpl	.LBB97_5
	rjmp	.LBB97_6
.LBB97_5:                               ;   in Loop: Header=BB97_4 Depth=1
	lds	r24, __profc_frexp+24
	lds	r25, __profc_frexp+25
	lds	r18, __profc_frexp+26
	lds	r19, __profc_frexp+27
	lds	r20, __profc_frexp+28
	lds	r21, __profc_frexp+29
	lds	r22, __profc_frexp+30
	lds	r23, __profc_frexp+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+31, r23
	sts	__profc_frexp+30, r22
	sts	__profc_frexp+29, r21
	sts	__profc_frexp+28, r20
	sts	__profc_frexp+27, r19
	sts	__profc_frexp+26, r18
	sts	__profc_frexp+25, r25
	sts	__profc_frexp+24, r24
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
	rjmp	.LBB97_15
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
	rjmp	.LBB97_14
.LBB97_8:
	lds	r24, __profc_frexp+40
	lds	r25, __profc_frexp+41
	lds	r18, __profc_frexp+42
	lds	r19, __profc_frexp+43
	lds	r20, __profc_frexp+44
	lds	r21, __profc_frexp+45
	lds	r22, __profc_frexp+46
	lds	r23, __profc_frexp+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+47, r23
	sts	__profc_frexp+46, r22
	sts	__profc_frexp+45, r21
	sts	__profc_frexp+44, r20
	sts	__profc_frexp+43, r19
	sts	__profc_frexp+42, r18
	sts	__profc_frexp+41, r25
	sts	__profc_frexp+40, r24
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
	rjmp	.LBB97_14
.LBB97_9:
	lds	r24, __profc_frexp+48
	lds	r25, __profc_frexp+49
	lds	r18, __profc_frexp+50
	lds	r19, __profc_frexp+51
	lds	r20, __profc_frexp+52
	lds	r21, __profc_frexp+53
	lds	r22, __profc_frexp+54
	lds	r23, __profc_frexp+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+55, r23
	sts	__profc_frexp+54, r22
	sts	__profc_frexp+53, r21
	sts	__profc_frexp+52, r20
	sts	__profc_frexp+51, r19
	sts	__profc_frexp+50, r18
	sts	__profc_frexp+49, r25
	sts	__profc_frexp+48, r24
	rjmp	.LBB97_10
.LBB97_10:
	lds	r24, __profc_frexp+32
	lds	r25, __profc_frexp+33
	lds	r18, __profc_frexp+34
	lds	r19, __profc_frexp+35
	lds	r20, __profc_frexp+36
	lds	r21, __profc_frexp+37
	lds	r22, __profc_frexp+38
	lds	r23, __profc_frexp+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+39, r23
	sts	__profc_frexp+38, r22
	sts	__profc_frexp+37, r21
	sts	__profc_frexp+36, r20
	sts	__profc_frexp+35, r19
	sts	__profc_frexp+34, r18
	sts	__profc_frexp+33, r25
	sts	__profc_frexp+32, r24
	rjmp	.LBB97_11
.LBB97_11:                              ; =>This Inner Loop Header: Depth=1
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
	brmi	.LBB97_12
	rjmp	.LBB97_13
.LBB97_12:                              ;   in Loop: Header=BB97_11 Depth=1
	lds	r24, __profc_frexp+56
	lds	r25, __profc_frexp+57
	lds	r18, __profc_frexp+58
	lds	r19, __profc_frexp+59
	lds	r20, __profc_frexp+60
	lds	r21, __profc_frexp+61
	lds	r22, __profc_frexp+62
	lds	r23, __profc_frexp+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+63, r23
	sts	__profc_frexp+62, r22
	sts	__profc_frexp+61, r21
	sts	__profc_frexp+60, r20
	sts	__profc_frexp+59, r19
	sts	__profc_frexp+58, r18
	sts	__profc_frexp+57, r25
	sts	__profc_frexp+56, r24
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
	rjmp	.LBB97_11
.LBB97_13:
	rjmp	.LBB97_14
.LBB97_14:
	rjmp	.LBB97_15
.LBB97_15:
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
	brne	.LBB97_16
	rjmp	.LBB97_17
.LBB97_16:
	lds	r24, __profc_frexp+64
	lds	r25, __profc_frexp+65
	lds	r18, __profc_frexp+66
	lds	r19, __profc_frexp+67
	lds	r20, __profc_frexp+68
	lds	r21, __profc_frexp+69
	lds	r22, __profc_frexp+70
	lds	r23, __profc_frexp+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_frexp+71, r23
	sts	__profc_frexp+70, r22
	sts	__profc_frexp+69, r21
	sts	__profc_frexp+68, r20
	sts	__profc_frexp+67, r19
	sts	__profc_frexp+66, r18
	sts	__profc_frexp+65, r25
	sts	__profc_frexp+64, r24
	ldd	r24, Y+11
	ldd	r25, Y+12
	ldi	r18, 0
	ldi	r19, 128
	eor	r24, r18
	eor	r25, r19
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB97_17
.LBB97_17:
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
	lds	r24, __profc___muldi3
	lds	r25, __profc___muldi3+1
	lds	r18, __profc___muldi3+2
	lds	r19, __profc___muldi3+3
	lds	r20, __profc___muldi3+4
	lds	r21, __profc___muldi3+5
	lds	r22, __profc___muldi3+6
	lds	r23, __profc___muldi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___muldi3+7, r23
	sts	__profc___muldi3+6, r22
	sts	__profc___muldi3+5, r21
	sts	__profc___muldi3+4, r20
	sts	__profc___muldi3+3, r19
	sts	__profc___muldi3+2, r18
	sts	__profc___muldi3+1, r25
	sts	__profc___muldi3, r24
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
	lds	r24, __profc___muldi3+8
	lds	r25, __profc___muldi3+9
	lds	r18, __profc___muldi3+10
	lds	r19, __profc___muldi3+11
	lds	r20, __profc___muldi3+12
	lds	r21, __profc___muldi3+13
	lds	r22, __profc___muldi3+14
	lds	r23, __profc___muldi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___muldi3+15, r23
	sts	__profc___muldi3+14, r22
	sts	__profc___muldi3+13, r21
	sts	__profc___muldi3+12, r20
	sts	__profc___muldi3+11, r19
	sts	__profc___muldi3+10, r18
	sts	__profc___muldi3+9, r25
	sts	__profc___muldi3+8, r24
	ldd	r24, Y+9
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB98_5
	rjmp	.LBB98_6
.LBB98_5:                               ;   in Loop: Header=BB98_1 Depth=1
	lds	r24, __profc___muldi3+16
	lds	r25, __profc___muldi3+17
	lds	r18, __profc___muldi3+18
	lds	r19, __profc___muldi3+19
	lds	r20, __profc___muldi3+20
	lds	r21, __profc___muldi3+21
	lds	r22, __profc___muldi3+22
	lds	r23, __profc___muldi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___muldi3+23, r23
	sts	__profc___muldi3+22, r22
	sts	__profc___muldi3+21, r21
	sts	__profc___muldi3+20, r20
	sts	__profc___muldi3+19, r19
	sts	__profc___muldi3+18, r18
	sts	__profc___muldi3+17, r25
	sts	__profc___muldi3+16, r24
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
	sbiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+36, r25
	std	Y+35, r24
	std	Y+34, r23
	std	Y+33, r22
	std	Y+32, r21
	std	Y+31, r20
	std	Y+30, r19
	std	Y+29, r18
	std	Y+28, r17
	std	Y+27, r16
	lds	r24, __profc_udivmodsi4
	lds	r25, __profc_udivmodsi4+1
	lds	r18, __profc_udivmodsi4+2
	lds	r19, __profc_udivmodsi4+3
	lds	r20, __profc_udivmodsi4+4
	lds	r21, __profc_udivmodsi4+5
	lds	r22, __profc_udivmodsi4+6
	lds	r23, __profc_udivmodsi4+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+7, r23
	sts	__profc_udivmodsi4+6, r22
	sts	__profc_udivmodsi4+5, r21
	sts	__profc_udivmodsi4+4, r20
	sts	__profc_udivmodsi4+3, r19
	sts	__profc_udivmodsi4+2, r18
	sts	__profc_udivmodsi4+1, r25
	sts	__profc_udivmodsi4, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+26, r25
	std	Y+25, r24
	ldi	r18, 1
	ldi	r19, 0
	std	Y+24, r19
	std	Y+23, r18
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB99_1
.LBB99_1:                               ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r30, Y+33
	ldd	r31, Y+34
	ldd	r20, Y+35
	ldd	r21, Y+36
	mov	r24, r1
	std	Y+17, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+18, r24                       ; 1-byte Folded Spill
	brsh	.LBB99_2
	rjmp	.LBB99_3
.LBB99_2:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+17                       ; 1-byte Folded Reload
	ldd	r25, Y+18                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB99_4
	rjmp	.LBB99_14
.LBB99_3:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+17                       ; 1-byte Folded Reload
	std	Y+18, r24                       ; 1-byte Folded Spill
	rjmp	.LBB99_2
.LBB99_4:                               ;   in Loop: Header=BB99_1 Depth=1
	lds	r24, __profc_udivmodsi4+32
	lds	r25, __profc_udivmodsi4+33
	lds	r18, __profc_udivmodsi4+34
	lds	r19, __profc_udivmodsi4+35
	lds	r20, __profc_udivmodsi4+36
	lds	r21, __profc_udivmodsi4+37
	lds	r22, __profc_udivmodsi4+38
	lds	r23, __profc_udivmodsi4+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+39, r23
	sts	__profc_udivmodsi4+38, r22
	sts	__profc_udivmodsi4+37, r21
	sts	__profc_udivmodsi4+36, r20
	sts	__profc_udivmodsi4+35, r19
	sts	__profc_udivmodsi4+34, r18
	sts	__profc_udivmodsi4+33, r25
	sts	__profc_udivmodsi4+32, r24
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+14, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+15, r24                       ; 1-byte Folded Spill
	breq	.LBB99_5
	rjmp	.LBB99_6
.LBB99_5:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	ldd	r25, Y+15                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB99_7
	rjmp	.LBB99_14
.LBB99_6:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	std	Y+15, r24                       ; 1-byte Folded Spill
	rjmp	.LBB99_5
.LBB99_7:                               ;   in Loop: Header=BB99_1 Depth=1
	lds	r24, __profc_udivmodsi4+40
	lds	r25, __profc_udivmodsi4+41
	lds	r18, __profc_udivmodsi4+42
	lds	r19, __profc_udivmodsi4+43
	lds	r20, __profc_udivmodsi4+44
	lds	r21, __profc_udivmodsi4+45
	lds	r22, __profc_udivmodsi4+46
	lds	r23, __profc_udivmodsi4+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+47, r23
	sts	__profc_udivmodsi4+46, r22
	sts	__profc_udivmodsi4+45, r21
	sts	__profc_udivmodsi4+44, r20
	sts	__profc_udivmodsi4+43, r19
	sts	__profc_udivmodsi4+42, r18
	sts	__profc_udivmodsi4+41, r25
	sts	__profc_udivmodsi4+40, r24
	rjmp	.LBB99_8
.LBB99_8:                               ;   in Loop: Header=BB99_1 Depth=1
	lds	r24, __profc_udivmodsi4+16
	lds	r25, __profc_udivmodsi4+17
	lds	r18, __profc_udivmodsi4+18
	lds	r19, __profc_udivmodsi4+19
	lds	r20, __profc_udivmodsi4+20
	lds	r21, __profc_udivmodsi4+21
	lds	r22, __profc_udivmodsi4+22
	lds	r23, __profc_udivmodsi4+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+23, r23
	sts	__profc_udivmodsi4+22, r22
	sts	__profc_udivmodsi4+21, r21
	sts	__profc_udivmodsi4+20, r20
	sts	__profc_udivmodsi4+19, r19
	sts	__profc_udivmodsi4+18, r18
	sts	__profc_udivmodsi4+17, r25
	sts	__profc_udivmodsi4+16, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	andi	r18, 0
	andi	r19, 128
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	ldi	r20, 0
	ldi	r21, 0
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	mov	r25, r1
	std	Y+11, r25                       ; 1-byte Folded Spill
	ldi	r24, 1
	std	Y+12, r24                       ; 1-byte Folded Spill
	cp	r25, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+13, r24                       ; 1-byte Folded Spill
	breq	.LBB99_9
	rjmp	.LBB99_12
.LBB99_9:                               ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	ldd	r25, Y+11                       ; 1-byte Folded Reload
	ldd	r22, Y+13                       ; 1-byte Folded Reload
	std	Y+5, r22                        ; 1-byte Folded Spill
	cp	r25, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB99_10
	rjmp	.LBB99_11
.LBB99_10:                              ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	ldd	r25, Y+6                        ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB99_13
	rjmp	.LBB99_14
.LBB99_11:                              ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_10
.LBB99_12:                              ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+13, r24                       ; 1-byte Folded Spill
	rjmp	.LBB99_9
.LBB99_13:                              ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	lds	r18, __profc_udivmodsi4+24
	lds	r19, __profc_udivmodsi4+25
	lds	r20, __profc_udivmodsi4+26
	lds	r21, __profc_udivmodsi4+27
	lds	r22, __profc_udivmodsi4+28
	lds	r23, __profc_udivmodsi4+29
	lds	r30, __profc_udivmodsi4+30
	lds	r31, __profc_udivmodsi4+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc_udivmodsi4+31, r31
	sts	__profc_udivmodsi4+30, r30
	sts	__profc_udivmodsi4+29, r23
	sts	__profc_udivmodsi4+28, r22
	sts	__profc_udivmodsi4+27, r21
	sts	__profc_udivmodsi4+26, r20
	sts	__profc_udivmodsi4+25, r19
	sts	__profc_udivmodsi4+24, r18
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB99_14
.LBB99_14:                              ;   in Loop: Header=BB99_1 Depth=1
	ldd	r24, Y+16                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB99_15
	rjmp	.LBB99_16
.LBB99_15:                              ;   in Loop: Header=BB99_1 Depth=1
	lds	r24, __profc_udivmodsi4+8
	lds	r25, __profc_udivmodsi4+9
	lds	r18, __profc_udivmodsi4+10
	lds	r19, __profc_udivmodsi4+11
	lds	r20, __profc_udivmodsi4+12
	lds	r21, __profc_udivmodsi4+13
	lds	r22, __profc_udivmodsi4+14
	lds	r23, __profc_udivmodsi4+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+15, r23
	sts	__profc_udivmodsi4+14, r22
	sts	__profc_udivmodsi4+13, r21
	sts	__profc_udivmodsi4+12, r20
	sts	__profc_udivmodsi4+11, r19
	sts	__profc_udivmodsi4+10, r18
	sts	__profc_udivmodsi4+9, r25
	sts	__profc_udivmodsi4+8, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r24, Y+29
	ldd	r25, Y+30
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
	std	Y+32, r19
	std	Y+31, r18
	std	Y+30, r25
	std	Y+29, r24
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB99_1
.LBB99_16:
	rjmp	.LBB99_17
.LBB99_17:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	breq	.LBB99_18
	rjmp	.LBB99_19
.LBB99_18:                              ;   in Loop: Header=BB99_17 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB99_20
	rjmp	.LBB99_25
.LBB99_19:                              ;   in Loop: Header=BB99_17 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_18
.LBB99_20:                              ;   in Loop: Header=BB99_17 Depth=1
	lds	r24, __profc_udivmodsi4+48
	lds	r25, __profc_udivmodsi4+49
	lds	r18, __profc_udivmodsi4+50
	lds	r19, __profc_udivmodsi4+51
	lds	r20, __profc_udivmodsi4+52
	lds	r21, __profc_udivmodsi4+53
	lds	r22, __profc_udivmodsi4+54
	lds	r23, __profc_udivmodsi4+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+55, r23
	sts	__profc_udivmodsi4+54, r22
	sts	__profc_udivmodsi4+53, r21
	sts	__profc_udivmodsi4+52, r20
	sts	__profc_udivmodsi4+51, r19
	sts	__profc_udivmodsi4+50, r18
	sts	__profc_udivmodsi4+49, r25
	sts	__profc_udivmodsi4+48, r24
	ldd	r22, Y+33
	ldd	r23, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r30, Y+29
	ldd	r31, Y+30
	ldd	r20, Y+31
	ldd	r21, Y+32
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB99_21
	rjmp	.LBB99_22
.LBB99_21:                              ;   in Loop: Header=BB99_17 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB99_23
	rjmp	.LBB99_24
.LBB99_22:                              ;   in Loop: Header=BB99_17 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB99_21
.LBB99_23:                              ;   in Loop: Header=BB99_17 Depth=1
	lds	r24, __profc_udivmodsi4+56
	lds	r25, __profc_udivmodsi4+57
	lds	r18, __profc_udivmodsi4+58
	lds	r19, __profc_udivmodsi4+59
	lds	r20, __profc_udivmodsi4+60
	lds	r21, __profc_udivmodsi4+61
	lds	r22, __profc_udivmodsi4+62
	lds	r23, __profc_udivmodsi4+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+63, r23
	sts	__profc_udivmodsi4+62, r22
	sts	__profc_udivmodsi4+61, r21
	sts	__profc_udivmodsi4+60, r20
	sts	__profc_udivmodsi4+59, r19
	sts	__profc_udivmodsi4+58, r18
	sts	__profc_udivmodsi4+57, r25
	sts	__profc_udivmodsi4+56, r24
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r20, Y+31
	ldd	r21, Y+32
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r20, Y+25
	ldd	r21, Y+26
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r24, Y+19
	ldd	r25, Y+20
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+22, r19
	std	Y+21, r18
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB99_24
.LBB99_24:                              ;   in Loop: Header=BB99_17 Depth=1
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r24, Y+29
	ldd	r25, Y+30
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
	std	Y+32, r19
	std	Y+31, r18
	std	Y+30, r25
	std	Y+29, r24
	rjmp	.LBB99_17
.LBB99_25:
	ldd	r18, Y+27
	ldd	r19, Y+28
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB99_26
	rjmp	.LBB99_27
.LBB99_26:
	lds	r24, __profc_udivmodsi4+64
	lds	r25, __profc_udivmodsi4+65
	lds	r18, __profc_udivmodsi4+66
	lds	r19, __profc_udivmodsi4+67
	lds	r20, __profc_udivmodsi4+68
	lds	r21, __profc_udivmodsi4+69
	lds	r22, __profc_udivmodsi4+70
	lds	r23, __profc_udivmodsi4+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc_udivmodsi4+71, r23
	sts	__profc_udivmodsi4+70, r22
	sts	__profc_udivmodsi4+69, r21
	sts	__profc_udivmodsi4+68, r20
	sts	__profc_udivmodsi4+67, r19
	sts	__profc_udivmodsi4+66, r18
	sts	__profc_udivmodsi4+65, r25
	sts	__profc_udivmodsi4+64, r24
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	rjmp	.LBB99_28
.LBB99_27:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	rjmp	.LBB99_28
.LBB99_28:
	ldd	r22, Y+37
	ldd	r23, Y+38
	ldd	r24, Y+39
	ldd	r25, Y+40
	adiw	r28, 40
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
	lds	r24, __profc___clrsbqi2
	lds	r25, __profc___clrsbqi2+1
	lds	r18, __profc___clrsbqi2+2
	lds	r19, __profc___clrsbqi2+3
	lds	r20, __profc___clrsbqi2+4
	lds	r21, __profc___clrsbqi2+5
	lds	r22, __profc___clrsbqi2+6
	lds	r23, __profc___clrsbqi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clrsbqi2+7, r23
	sts	__profc___clrsbqi2+6, r22
	sts	__profc___clrsbqi2+5, r21
	sts	__profc___clrsbqi2+4, r20
	sts	__profc___clrsbqi2+3, r19
	sts	__profc___clrsbqi2+2, r18
	sts	__profc___clrsbqi2+1, r25
	sts	__profc___clrsbqi2, r24
	ldd	r24, Y+3
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	mov	r24, r25
	tst	r24
	brmi	.LBB100_1
	rjmp	.LBB100_2
.LBB100_1:
	lds	r24, __profc___clrsbqi2+8
	lds	r25, __profc___clrsbqi2+9
	lds	r18, __profc___clrsbqi2+10
	lds	r19, __profc___clrsbqi2+11
	lds	r20, __profc___clrsbqi2+12
	lds	r21, __profc___clrsbqi2+13
	lds	r22, __profc___clrsbqi2+14
	lds	r23, __profc___clrsbqi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clrsbqi2+15, r23
	sts	__profc___clrsbqi2+14, r22
	sts	__profc___clrsbqi2+13, r21
	sts	__profc___clrsbqi2+12, r20
	sts	__profc___clrsbqi2+11, r19
	sts	__profc___clrsbqi2+10, r18
	sts	__profc___clrsbqi2+9, r25
	sts	__profc___clrsbqi2+8, r24
	ldd	r24, Y+3
	com	r24
	std	Y+3, r24
	rjmp	.LBB100_2
.LBB100_2:
	ldd	r24, Y+3
	cpi	r24, 0
	breq	.LBB100_3
	rjmp	.LBB100_4
.LBB100_3:
	lds	r24, __profc___clrsbqi2+16
	lds	r25, __profc___clrsbqi2+17
	lds	r18, __profc___clrsbqi2+18
	lds	r19, __profc___clrsbqi2+19
	lds	r20, __profc___clrsbqi2+20
	lds	r21, __profc___clrsbqi2+21
	lds	r22, __profc___clrsbqi2+22
	lds	r23, __profc___clrsbqi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clrsbqi2+23, r23
	sts	__profc___clrsbqi2+22, r22
	sts	__profc___clrsbqi2+21, r21
	sts	__profc___clrsbqi2+20, r20
	sts	__profc___clrsbqi2+19, r19
	sts	__profc___clrsbqi2+18, r18
	sts	__profc___clrsbqi2+17, r25
	sts	__profc___clrsbqi2+16, r24
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
	lds	r24, __profc___clrsbdi2
	lds	r25, __profc___clrsbdi2+1
	lds	r18, __profc___clrsbdi2+2
	lds	r19, __profc___clrsbdi2+3
	lds	r20, __profc___clrsbdi2+4
	lds	r21, __profc___clrsbdi2+5
	lds	r22, __profc___clrsbdi2+6
	lds	r23, __profc___clrsbdi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clrsbdi2+7, r23
	sts	__profc___clrsbdi2+6, r22
	sts	__profc___clrsbdi2+5, r21
	sts	__profc___clrsbdi2+4, r20
	sts	__profc___clrsbdi2+3, r19
	sts	__profc___clrsbdi2+2, r18
	sts	__profc___clrsbdi2+1, r25
	sts	__profc___clrsbdi2, r24
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
	breq	.LBB101_3
	rjmp	.LBB101_4
.LBB101_2:
	ldd	r24, Y+29                       ; 1-byte Folded Reload
	std	Y+30, r24                       ; 1-byte Folded Spill
	rjmp	.LBB101_1
.LBB101_3:
	lds	r24, __profc___clrsbdi2+8
	lds	r25, __profc___clrsbdi2+9
	lds	r18, __profc___clrsbdi2+10
	lds	r19, __profc___clrsbdi2+11
	lds	r20, __profc___clrsbdi2+12
	lds	r21, __profc___clrsbdi2+13
	lds	r22, __profc___clrsbdi2+14
	lds	r23, __profc___clrsbdi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clrsbdi2+15, r23
	sts	__profc___clrsbdi2+14, r22
	sts	__profc___clrsbdi2+13, r21
	sts	__profc___clrsbdi2+12, r20
	sts	__profc___clrsbdi2+11, r19
	sts	__profc___clrsbdi2+10, r18
	sts	__profc___clrsbdi2+9, r25
	sts	__profc___clrsbdi2+8, r24
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
	breq	.LBB101_7
	rjmp	.LBB101_8
.LBB101_6:
	ldd	r24, Y+27                       ; 1-byte Folded Reload
	std	Y+28, r24                       ; 1-byte Folded Spill
	rjmp	.LBB101_5
.LBB101_7:
	lds	r24, __profc___clrsbdi2+16
	lds	r25, __profc___clrsbdi2+17
	lds	r18, __profc___clrsbdi2+18
	lds	r19, __profc___clrsbdi2+19
	lds	r20, __profc___clrsbdi2+20
	lds	r21, __profc___clrsbdi2+21
	lds	r22, __profc___clrsbdi2+22
	lds	r23, __profc___clrsbdi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clrsbdi2+23, r23
	sts	__profc___clrsbdi2+22, r22
	sts	__profc___clrsbdi2+21, r21
	sts	__profc___clrsbdi2+20, r20
	sts	__profc___clrsbdi2+19, r19
	sts	__profc___clrsbdi2+18, r18
	sts	__profc___clrsbdi2+17, r25
	sts	__profc___clrsbdi2+16, r24
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
	lds	r24, __profc___mulsi3
	lds	r25, __profc___mulsi3+1
	lds	r18, __profc___mulsi3+2
	lds	r19, __profc___mulsi3+3
	lds	r20, __profc___mulsi3+4
	lds	r21, __profc___mulsi3+5
	lds	r22, __profc___mulsi3+6
	lds	r23, __profc___mulsi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3+7, r23
	sts	__profc___mulsi3+6, r22
	sts	__profc___mulsi3+5, r21
	sts	__profc___mulsi3+4, r20
	sts	__profc___mulsi3+3, r19
	sts	__profc___mulsi3+2, r18
	sts	__profc___mulsi3+1, r25
	sts	__profc___mulsi3, r24
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
	brne	.LBB102_2
	rjmp	.LBB102_5
.LBB102_2:                              ;   in Loop: Header=BB102_1 Depth=1
	lds	r24, __profc___mulsi3+8
	lds	r25, __profc___mulsi3+9
	lds	r18, __profc___mulsi3+10
	lds	r19, __profc___mulsi3+11
	lds	r20, __profc___mulsi3+12
	lds	r21, __profc___mulsi3+13
	lds	r22, __profc___mulsi3+14
	lds	r23, __profc___mulsi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3+15, r23
	sts	__profc___mulsi3+14, r22
	sts	__profc___mulsi3+13, r21
	sts	__profc___mulsi3+12, r20
	sts	__profc___mulsi3+11, r19
	sts	__profc___mulsi3+10, r18
	sts	__profc___mulsi3+9, r25
	sts	__profc___mulsi3+8, r24
	ldd	r24, Y+5
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB102_3
	rjmp	.LBB102_4
.LBB102_3:                              ;   in Loop: Header=BB102_1 Depth=1
	lds	r24, __profc___mulsi3+16
	lds	r25, __profc___mulsi3+17
	lds	r18, __profc___mulsi3+18
	lds	r19, __profc___mulsi3+19
	lds	r20, __profc___mulsi3+20
	lds	r21, __profc___mulsi3+21
	lds	r22, __profc___mulsi3+22
	lds	r23, __profc___mulsi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3+23, r23
	sts	__profc___mulsi3+22, r22
	sts	__profc___mulsi3+21, r21
	sts	__profc___mulsi3+20, r20
	sts	__profc___mulsi3+19, r19
	sts	__profc___mulsi3+18, r18
	sts	__profc___mulsi3+17, r25
	sts	__profc___mulsi3+16, r24
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
	lds	r24, __profc___cmovd
	lds	r25, __profc___cmovd+1
	lds	r18, __profc___cmovd+2
	lds	r19, __profc___cmovd+3
	lds	r20, __profc___cmovd+4
	lds	r21, __profc___cmovd+5
	lds	r22, __profc___cmovd+6
	lds	r23, __profc___cmovd+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovd+7, r23
	sts	__profc___cmovd+6, r22
	sts	__profc___cmovd+5, r21
	sts	__profc___cmovd+4, r20
	sts	__profc___cmovd+3, r19
	sts	__profc___cmovd+2, r18
	sts	__profc___cmovd+1, r25
	sts	__profc___cmovd, r24
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
	brsh	.LBB103_1
	rjmp	.LBB103_3
.LBB103_1:
	lds	r24, __profc___cmovd+16
	lds	r25, __profc___cmovd+17
	lds	r18, __profc___cmovd+18
	lds	r19, __profc___cmovd+19
	lds	r20, __profc___cmovd+20
	lds	r21, __profc___cmovd+21
	lds	r22, __profc___cmovd+22
	lds	r23, __profc___cmovd+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovd+23, r23
	sts	__profc___cmovd+22, r22
	sts	__profc___cmovd+21, r21
	sts	__profc___cmovd+20, r20
	sts	__profc___cmovd+19, r19
	sts	__profc___cmovd+18, r18
	sts	__profc___cmovd+17, r25
	sts	__profc___cmovd+16, r24
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
	brsh	.LBB103_2
	rjmp	.LBB103_3
.LBB103_2:
	lds	r24, __profc___cmovd+24
	lds	r25, __profc___cmovd+25
	lds	r18, __profc___cmovd+26
	lds	r19, __profc___cmovd+27
	lds	r20, __profc___cmovd+28
	lds	r21, __profc___cmovd+29
	lds	r22, __profc___cmovd+30
	lds	r23, __profc___cmovd+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovd+31, r23
	sts	__profc___cmovd+30, r22
	sts	__profc___cmovd+29, r21
	sts	__profc___cmovd+28, r20
	sts	__profc___cmovd+27, r19
	sts	__profc___cmovd+26, r18
	sts	__profc___cmovd+25, r25
	sts	__profc___cmovd+24, r24
	rjmp	.LBB103_11
.LBB103_3:
	lds	r24, __profc___cmovd+8
	lds	r25, __profc___cmovd+9
	lds	r18, __profc___cmovd+10
	lds	r19, __profc___cmovd+11
	lds	r20, __profc___cmovd+12
	lds	r21, __profc___cmovd+13
	lds	r22, __profc___cmovd+14
	lds	r23, __profc___cmovd+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovd+15, r23
	sts	__profc___cmovd+14, r22
	sts	__profc___cmovd+13, r21
	sts	__profc___cmovd+12, r20
	sts	__profc___cmovd+11, r19
	sts	__profc___cmovd+10, r18
	sts	__profc___cmovd+9, r25
	sts	__profc___cmovd+8, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB103_4
.LBB103_4:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	ldd	r18, Y+11
	ldd	r19, Y+12
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB103_5
	rjmp	.LBB103_7
.LBB103_5:                              ;   in Loop: Header=BB103_4 Depth=1
	lds	r24, __profc___cmovd+32
	lds	r25, __profc___cmovd+33
	lds	r18, __profc___cmovd+34
	lds	r19, __profc___cmovd+35
	lds	r20, __profc___cmovd+36
	lds	r21, __profc___cmovd+37
	lds	r22, __profc___cmovd+38
	lds	r23, __profc___cmovd+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovd+39, r23
	sts	__profc___cmovd+38, r22
	sts	__profc___cmovd+37, r21
	sts	__profc___cmovd+36, r20
	sts	__profc___cmovd+35, r19
	sts	__profc___cmovd+34, r18
	sts	__profc___cmovd+33, r25
	sts	__profc___cmovd+32, r24
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
	rjmp	.LBB103_6
.LBB103_6:                              ;   in Loop: Header=BB103_4 Depth=1
	ldd	r24, Y+13
	ldd	r25, Y+14
	adiw	r24, 1
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB103_4
.LBB103_7:
	rjmp	.LBB103_8
.LBB103_8:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+15
	ldd	r19, Y+16
	ldd	r24, Y+9
	ldd	r25, Y+10
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB103_9
	rjmp	.LBB103_10
.LBB103_9:                              ;   in Loop: Header=BB103_8 Depth=1
	lds	r24, __profc___cmovd+40
	lds	r25, __profc___cmovd+41
	lds	r18, __profc___cmovd+42
	lds	r19, __profc___cmovd+43
	lds	r20, __profc___cmovd+44
	lds	r21, __profc___cmovd+45
	lds	r22, __profc___cmovd+46
	lds	r23, __profc___cmovd+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovd+47, r23
	sts	__profc___cmovd+46, r22
	sts	__profc___cmovd+45, r21
	sts	__profc___cmovd+44, r20
	sts	__profc___cmovd+43, r19
	sts	__profc___cmovd+42, r18
	sts	__profc___cmovd+41, r25
	sts	__profc___cmovd+40, r24
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
	rjmp	.LBB103_8
.LBB103_10:
	rjmp	.LBB103_15
.LBB103_11:
	rjmp	.LBB103_12
.LBB103_12:                             ; =>This Inner Loop Header: Depth=1
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
	brne	.LBB103_13
	rjmp	.LBB103_14
.LBB103_13:                             ;   in Loop: Header=BB103_12 Depth=1
	lds	r24, __profc___cmovd+48
	lds	r25, __profc___cmovd+49
	lds	r18, __profc___cmovd+50
	lds	r19, __profc___cmovd+51
	lds	r20, __profc___cmovd+52
	lds	r21, __profc___cmovd+53
	lds	r22, __profc___cmovd+54
	lds	r23, __profc___cmovd+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovd+55, r23
	sts	__profc___cmovd+54, r22
	sts	__profc___cmovd+53, r21
	sts	__profc___cmovd+52, r20
	sts	__profc___cmovd+51, r19
	sts	__profc___cmovd+50, r18
	sts	__profc___cmovd+49, r25
	sts	__profc___cmovd+48, r24
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
	rjmp	.LBB103_12
.LBB103_14:
	rjmp	.LBB103_15
.LBB103_15:
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
	lds	r24, __profc___cmovh
	lds	r25, __profc___cmovh+1
	lds	r18, __profc___cmovh+2
	lds	r19, __profc___cmovh+3
	lds	r20, __profc___cmovh+4
	lds	r21, __profc___cmovh+5
	lds	r22, __profc___cmovh+6
	lds	r23, __profc___cmovh+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovh+7, r23
	sts	__profc___cmovh+6, r22
	sts	__profc___cmovh+5, r21
	sts	__profc___cmovh+4, r20
	sts	__profc___cmovh+3, r19
	sts	__profc___cmovh+2, r18
	sts	__profc___cmovh+1, r25
	sts	__profc___cmovh, r24
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
	brsh	.LBB104_1
	rjmp	.LBB104_3
.LBB104_1:
	lds	r24, __profc___cmovh+16
	lds	r25, __profc___cmovh+17
	lds	r18, __profc___cmovh+18
	lds	r19, __profc___cmovh+19
	lds	r20, __profc___cmovh+20
	lds	r21, __profc___cmovh+21
	lds	r22, __profc___cmovh+22
	lds	r23, __profc___cmovh+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovh+23, r23
	sts	__profc___cmovh+22, r22
	sts	__profc___cmovh+21, r21
	sts	__profc___cmovh+20, r20
	sts	__profc___cmovh+19, r19
	sts	__profc___cmovh+18, r18
	sts	__profc___cmovh+17, r25
	sts	__profc___cmovh+16, r24
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
	brsh	.LBB104_2
	rjmp	.LBB104_3
.LBB104_2:
	lds	r24, __profc___cmovh+24
	lds	r25, __profc___cmovh+25
	lds	r18, __profc___cmovh+26
	lds	r19, __profc___cmovh+27
	lds	r20, __profc___cmovh+28
	lds	r21, __profc___cmovh+29
	lds	r22, __profc___cmovh+30
	lds	r23, __profc___cmovh+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovh+31, r23
	sts	__profc___cmovh+30, r22
	sts	__profc___cmovh+29, r21
	sts	__profc___cmovh+28, r20
	sts	__profc___cmovh+27, r19
	sts	__profc___cmovh+26, r18
	sts	__profc___cmovh+25, r25
	sts	__profc___cmovh+24, r24
	rjmp	.LBB104_10
.LBB104_3:
	lds	r24, __profc___cmovh+8
	lds	r25, __profc___cmovh+9
	lds	r18, __profc___cmovh+10
	lds	r19, __profc___cmovh+11
	lds	r20, __profc___cmovh+12
	lds	r21, __profc___cmovh+13
	lds	r22, __profc___cmovh+14
	lds	r23, __profc___cmovh+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovh+15, r23
	sts	__profc___cmovh+14, r22
	sts	__profc___cmovh+13, r21
	sts	__profc___cmovh+12, r20
	sts	__profc___cmovh+11, r19
	sts	__profc___cmovh+10, r18
	sts	__profc___cmovh+9, r25
	sts	__profc___cmovh+8, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB104_4
.LBB104_4:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	ldd	r18, Y+5
	ldd	r19, Y+6
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB104_5
	rjmp	.LBB104_7
.LBB104_5:                              ;   in Loop: Header=BB104_4 Depth=1
	lds	r24, __profc___cmovh+32
	lds	r25, __profc___cmovh+33
	lds	r18, __profc___cmovh+34
	lds	r19, __profc___cmovh+35
	lds	r20, __profc___cmovh+36
	lds	r21, __profc___cmovh+37
	lds	r22, __profc___cmovh+38
	lds	r23, __profc___cmovh+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovh+39, r23
	sts	__profc___cmovh+38, r22
	sts	__profc___cmovh+37, r21
	sts	__profc___cmovh+36, r20
	sts	__profc___cmovh+35, r19
	sts	__profc___cmovh+34, r18
	sts	__profc___cmovh+33, r25
	sts	__profc___cmovh+32, r24
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
	rjmp	.LBB104_6
.LBB104_6:                              ;   in Loop: Header=BB104_4 Depth=1
	ldd	r24, Y+7
	ldd	r25, Y+8
	adiw	r24, 1
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB104_4
.LBB104_7:
	ldd	r24, Y+9
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB104_8
	rjmp	.LBB104_9
.LBB104_8:
	lds	r24, __profc___cmovh+40
	lds	r25, __profc___cmovh+41
	lds	r18, __profc___cmovh+42
	lds	r19, __profc___cmovh+43
	lds	r20, __profc___cmovh+44
	lds	r21, __profc___cmovh+45
	lds	r22, __profc___cmovh+46
	lds	r23, __profc___cmovh+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovh+47, r23
	sts	__profc___cmovh+46, r22
	sts	__profc___cmovh+45, r21
	sts	__profc___cmovh+44, r20
	sts	__profc___cmovh+43, r19
	sts	__profc___cmovh+42, r18
	sts	__profc___cmovh+41, r25
	sts	__profc___cmovh+40, r24
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
	rjmp	.LBB104_9
.LBB104_9:
	rjmp	.LBB104_14
.LBB104_10:
	rjmp	.LBB104_11
.LBB104_11:                             ; =>This Inner Loop Header: Depth=1
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
	brne	.LBB104_12
	rjmp	.LBB104_13
.LBB104_12:                             ;   in Loop: Header=BB104_11 Depth=1
	lds	r24, __profc___cmovh+48
	lds	r25, __profc___cmovh+49
	lds	r18, __profc___cmovh+50
	lds	r19, __profc___cmovh+51
	lds	r20, __profc___cmovh+52
	lds	r21, __profc___cmovh+53
	lds	r22, __profc___cmovh+54
	lds	r23, __profc___cmovh+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovh+55, r23
	sts	__profc___cmovh+54, r22
	sts	__profc___cmovh+53, r21
	sts	__profc___cmovh+52, r20
	sts	__profc___cmovh+51, r19
	sts	__profc___cmovh+50, r18
	sts	__profc___cmovh+49, r25
	sts	__profc___cmovh+48, r24
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
	rjmp	.LBB104_11
.LBB104_13:
	rjmp	.LBB104_14
.LBB104_14:
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
	lds	r24, __profc___cmovw
	lds	r25, __profc___cmovw+1
	lds	r18, __profc___cmovw+2
	lds	r19, __profc___cmovw+3
	lds	r20, __profc___cmovw+4
	lds	r21, __profc___cmovw+5
	lds	r22, __profc___cmovw+6
	lds	r23, __profc___cmovw+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovw+7, r23
	sts	__profc___cmovw+6, r22
	sts	__profc___cmovw+5, r21
	sts	__profc___cmovw+4, r20
	sts	__profc___cmovw+3, r19
	sts	__profc___cmovw+2, r18
	sts	__profc___cmovw+1, r25
	sts	__profc___cmovw, r24
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
	brsh	.LBB105_1
	rjmp	.LBB105_3
.LBB105_1:
	lds	r24, __profc___cmovw+16
	lds	r25, __profc___cmovw+17
	lds	r18, __profc___cmovw+18
	lds	r19, __profc___cmovw+19
	lds	r20, __profc___cmovw+20
	lds	r21, __profc___cmovw+21
	lds	r22, __profc___cmovw+22
	lds	r23, __profc___cmovw+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovw+23, r23
	sts	__profc___cmovw+22, r22
	sts	__profc___cmovw+21, r21
	sts	__profc___cmovw+20, r20
	sts	__profc___cmovw+19, r19
	sts	__profc___cmovw+18, r18
	sts	__profc___cmovw+17, r25
	sts	__profc___cmovw+16, r24
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
	brsh	.LBB105_2
	rjmp	.LBB105_3
.LBB105_2:
	lds	r24, __profc___cmovw+24
	lds	r25, __profc___cmovw+25
	lds	r18, __profc___cmovw+26
	lds	r19, __profc___cmovw+27
	lds	r20, __profc___cmovw+28
	lds	r21, __profc___cmovw+29
	lds	r22, __profc___cmovw+30
	lds	r23, __profc___cmovw+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovw+31, r23
	sts	__profc___cmovw+30, r22
	sts	__profc___cmovw+29, r21
	sts	__profc___cmovw+28, r20
	sts	__profc___cmovw+27, r19
	sts	__profc___cmovw+26, r18
	sts	__profc___cmovw+25, r25
	sts	__profc___cmovw+24, r24
	rjmp	.LBB105_11
.LBB105_3:
	lds	r24, __profc___cmovw+8
	lds	r25, __profc___cmovw+9
	lds	r18, __profc___cmovw+10
	lds	r19, __profc___cmovw+11
	lds	r20, __profc___cmovw+12
	lds	r21, __profc___cmovw+13
	lds	r22, __profc___cmovw+14
	lds	r23, __profc___cmovw+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovw+15, r23
	sts	__profc___cmovw+14, r22
	sts	__profc___cmovw+13, r21
	sts	__profc___cmovw+12, r20
	sts	__profc___cmovw+11, r19
	sts	__profc___cmovw+10, r18
	sts	__profc___cmovw+9, r25
	sts	__profc___cmovw+8, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB105_4
.LBB105_4:                              ; =>This Inner Loop Header: Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	ldd	r18, Y+7
	ldd	r19, Y+8
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB105_5
	rjmp	.LBB105_7
.LBB105_5:                              ;   in Loop: Header=BB105_4 Depth=1
	lds	r24, __profc___cmovw+32
	lds	r25, __profc___cmovw+33
	lds	r18, __profc___cmovw+34
	lds	r19, __profc___cmovw+35
	lds	r20, __profc___cmovw+36
	lds	r21, __profc___cmovw+37
	lds	r22, __profc___cmovw+38
	lds	r23, __profc___cmovw+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovw+39, r23
	sts	__profc___cmovw+38, r22
	sts	__profc___cmovw+37, r21
	sts	__profc___cmovw+36, r20
	sts	__profc___cmovw+35, r19
	sts	__profc___cmovw+34, r18
	sts	__profc___cmovw+33, r25
	sts	__profc___cmovw+32, r24
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
	rjmp	.LBB105_6
.LBB105_6:                              ;   in Loop: Header=BB105_4 Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	adiw	r24, 1
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB105_4
.LBB105_7:
	rjmp	.LBB105_8
.LBB105_8:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+11
	ldd	r19, Y+12
	ldd	r24, Y+5
	ldd	r25, Y+6
	cp	r24, r18
	cpc	r25, r19
	brlo	.LBB105_9
	rjmp	.LBB105_10
.LBB105_9:                              ;   in Loop: Header=BB105_8 Depth=1
	lds	r24, __profc___cmovw+40
	lds	r25, __profc___cmovw+41
	lds	r18, __profc___cmovw+42
	lds	r19, __profc___cmovw+43
	lds	r20, __profc___cmovw+44
	lds	r21, __profc___cmovw+45
	lds	r22, __profc___cmovw+46
	lds	r23, __profc___cmovw+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovw+47, r23
	sts	__profc___cmovw+46, r22
	sts	__profc___cmovw+45, r21
	sts	__profc___cmovw+44, r20
	sts	__profc___cmovw+43, r19
	sts	__profc___cmovw+42, r18
	sts	__profc___cmovw+41, r25
	sts	__profc___cmovw+40, r24
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
	rjmp	.LBB105_8
.LBB105_10:
	rjmp	.LBB105_15
.LBB105_11:
	rjmp	.LBB105_12
.LBB105_12:                             ; =>This Inner Loop Header: Depth=1
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
	brne	.LBB105_13
	rjmp	.LBB105_14
.LBB105_13:                             ;   in Loop: Header=BB105_12 Depth=1
	lds	r24, __profc___cmovw+48
	lds	r25, __profc___cmovw+49
	lds	r18, __profc___cmovw+50
	lds	r19, __profc___cmovw+51
	lds	r20, __profc___cmovw+52
	lds	r21, __profc___cmovw+53
	lds	r22, __profc___cmovw+54
	lds	r23, __profc___cmovw+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmovw+55, r23
	sts	__profc___cmovw+54, r22
	sts	__profc___cmovw+53, r21
	sts	__profc___cmovw+52, r20
	sts	__profc___cmovw+51, r19
	sts	__profc___cmovw+50, r18
	sts	__profc___cmovw+49, r25
	sts	__profc___cmovw+48, r24
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
	rjmp	.LBB105_12
.LBB105_14:
	rjmp	.LBB105_15
.LBB105_15:
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
	lds	r24, __profc___modi
	lds	r25, __profc___modi+1
	lds	r18, __profc___modi+2
	lds	r19, __profc___modi+3
	lds	r20, __profc___modi+4
	lds	r21, __profc___modi+5
	lds	r22, __profc___modi+6
	lds	r23, __profc___modi+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___modi+7, r23
	sts	__profc___modi+6, r22
	sts	__profc___modi+5, r21
	sts	__profc___modi+4, r20
	sts	__profc___modi+3, r19
	sts	__profc___modi+2, r18
	sts	__profc___modi+1, r25
	sts	__profc___modi, r24
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
	lds	r24, __profc___uitod
	lds	r25, __profc___uitod+1
	lds	r18, __profc___uitod+2
	lds	r19, __profc___uitod+3
	lds	r20, __profc___uitod+4
	lds	r21, __profc___uitod+5
	lds	r22, __profc___uitod+6
	lds	r23, __profc___uitod+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___uitod+7, r23
	sts	__profc___uitod+6, r22
	sts	__profc___uitod+5, r21
	sts	__profc___uitod+4, r20
	sts	__profc___uitod+3, r19
	sts	__profc___uitod+2, r18
	sts	__profc___uitod+1, r25
	sts	__profc___uitod, r24
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
	lds	r24, __profc___uitof
	lds	r25, __profc___uitof+1
	lds	r18, __profc___uitof+2
	lds	r19, __profc___uitof+3
	lds	r20, __profc___uitof+4
	lds	r21, __profc___uitof+5
	lds	r22, __profc___uitof+6
	lds	r23, __profc___uitof+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___uitof+7, r23
	sts	__profc___uitof+6, r22
	sts	__profc___uitof+5, r21
	sts	__profc___uitof+4, r20
	sts	__profc___uitof+3, r19
	sts	__profc___uitof+2, r18
	sts	__profc___uitof+1, r25
	sts	__profc___uitof, r24
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
	lds	r24, __profc___ulltod
	lds	r25, __profc___ulltod+1
	lds	r18, __profc___ulltod+2
	lds	r19, __profc___ulltod+3
	lds	r20, __profc___ulltod+4
	lds	r21, __profc___ulltod+5
	lds	r22, __profc___ulltod+6
	lds	r23, __profc___ulltod+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ulltod+7, r23
	sts	__profc___ulltod+6, r22
	sts	__profc___ulltod+5, r21
	sts	__profc___ulltod+4, r20
	sts	__profc___ulltod+3, r19
	sts	__profc___ulltod+2, r18
	sts	__profc___ulltod+1, r25
	sts	__profc___ulltod, r24
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
	lds	r24, __profc___ulltof
	lds	r25, __profc___ulltof+1
	lds	r18, __profc___ulltof+2
	lds	r19, __profc___ulltof+3
	lds	r20, __profc___ulltof+4
	lds	r21, __profc___ulltof+5
	lds	r22, __profc___ulltof+6
	lds	r23, __profc___ulltof+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ulltof+7, r23
	sts	__profc___ulltof+6, r22
	sts	__profc___ulltof+5, r21
	sts	__profc___ulltof+4, r20
	sts	__profc___ulltof+3, r19
	sts	__profc___ulltof+2, r18
	sts	__profc___ulltof+1, r25
	sts	__profc___ulltof, r24
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
	lds	r24, __profc___umodi
	lds	r25, __profc___umodi+1
	lds	r18, __profc___umodi+2
	lds	r19, __profc___umodi+3
	lds	r20, __profc___umodi+4
	lds	r21, __profc___umodi+5
	lds	r22, __profc___umodi+6
	lds	r23, __profc___umodi+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___umodi+7, r23
	sts	__profc___umodi+6, r22
	sts	__profc___umodi+5, r21
	sts	__profc___umodi+4, r20
	sts	__profc___umodi+3, r19
	sts	__profc___umodi+2, r18
	sts	__profc___umodi+1, r25
	sts	__profc___umodi, r24
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
	lds	r24, __profc___clzhi2
	lds	r25, __profc___clzhi2+1
	lds	r18, __profc___clzhi2+2
	lds	r19, __profc___clzhi2+3
	lds	r20, __profc___clzhi2+4
	lds	r21, __profc___clzhi2+5
	lds	r22, __profc___clzhi2+6
	lds	r23, __profc___clzhi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clzhi2+7, r23
	sts	__profc___clzhi2+6, r22
	sts	__profc___clzhi2+5, r21
	sts	__profc___clzhi2+4, r20
	sts	__profc___clzhi2+3, r19
	sts	__profc___clzhi2+2, r18
	sts	__profc___clzhi2+1, r25
	sts	__profc___clzhi2, r24
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
	lds	r24, __profc___clzhi2+8
	lds	r25, __profc___clzhi2+9
	lds	r18, __profc___clzhi2+10
	lds	r19, __profc___clzhi2+11
	lds	r20, __profc___clzhi2+12
	lds	r21, __profc___clzhi2+13
	lds	r22, __profc___clzhi2+14
	lds	r23, __profc___clzhi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clzhi2+15, r23
	sts	__profc___clzhi2+14, r22
	sts	__profc___clzhi2+13, r21
	sts	__profc___clzhi2+12, r20
	sts	__profc___clzhi2+11, r19
	sts	__profc___clzhi2+10, r18
	sts	__profc___clzhi2+9, r25
	sts	__profc___clzhi2+8, r24
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
	brne	.LBB112_6
	rjmp	.LBB112_7
.LBB112_6:
	lds	r24, __profc___clzhi2+16
	lds	r25, __profc___clzhi2+17
	lds	r18, __profc___clzhi2+18
	lds	r19, __profc___clzhi2+19
	lds	r20, __profc___clzhi2+20
	lds	r21, __profc___clzhi2+21
	lds	r22, __profc___clzhi2+22
	lds	r23, __profc___clzhi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clzhi2+23, r23
	sts	__profc___clzhi2+22, r22
	sts	__profc___clzhi2+21, r21
	sts	__profc___clzhi2+20, r20
	sts	__profc___clzhi2+19, r19
	sts	__profc___clzhi2+18, r18
	sts	__profc___clzhi2+17, r25
	sts	__profc___clzhi2+16, r24
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
	lds	r24, __profc___ctzhi2
	lds	r25, __profc___ctzhi2+1
	lds	r18, __profc___ctzhi2+2
	lds	r19, __profc___ctzhi2+3
	lds	r20, __profc___ctzhi2+4
	lds	r21, __profc___ctzhi2+5
	lds	r22, __profc___ctzhi2+6
	lds	r23, __profc___ctzhi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ctzhi2+7, r23
	sts	__profc___ctzhi2+6, r22
	sts	__profc___ctzhi2+5, r21
	sts	__profc___ctzhi2+4, r20
	sts	__profc___ctzhi2+3, r19
	sts	__profc___ctzhi2+2, r18
	sts	__profc___ctzhi2+1, r25
	sts	__profc___ctzhi2, r24
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
	lds	r24, __profc___ctzhi2+8
	lds	r25, __profc___ctzhi2+9
	lds	r18, __profc___ctzhi2+10
	lds	r19, __profc___ctzhi2+11
	lds	r20, __profc___ctzhi2+12
	lds	r21, __profc___ctzhi2+13
	lds	r22, __profc___ctzhi2+14
	lds	r23, __profc___ctzhi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ctzhi2+15, r23
	sts	__profc___ctzhi2+14, r22
	sts	__profc___ctzhi2+13, r21
	sts	__profc___ctzhi2+12, r20
	sts	__profc___ctzhi2+11, r19
	sts	__profc___ctzhi2+10, r18
	sts	__profc___ctzhi2+9, r25
	sts	__profc___ctzhi2+8, r24
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
	brne	.LBB113_6
	rjmp	.LBB113_7
.LBB113_6:
	lds	r24, __profc___ctzhi2+16
	lds	r25, __profc___ctzhi2+17
	lds	r18, __profc___ctzhi2+18
	lds	r19, __profc___ctzhi2+19
	lds	r20, __profc___ctzhi2+20
	lds	r21, __profc___ctzhi2+21
	lds	r22, __profc___ctzhi2+22
	lds	r23, __profc___ctzhi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ctzhi2+23, r23
	sts	__profc___ctzhi2+22, r22
	sts	__profc___ctzhi2+21, r21
	sts	__profc___ctzhi2+20, r20
	sts	__profc___ctzhi2+19, r19
	sts	__profc___ctzhi2+18, r18
	sts	__profc___ctzhi2+17, r25
	sts	__profc___ctzhi2+16, r24
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
	lds	r24, __profc___fixunssfsi
	lds	r25, __profc___fixunssfsi+1
	lds	r18, __profc___fixunssfsi+2
	lds	r19, __profc___fixunssfsi+3
	lds	r20, __profc___fixunssfsi+4
	lds	r21, __profc___fixunssfsi+5
	lds	r22, __profc___fixunssfsi+6
	lds	r23, __profc___fixunssfsi+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___fixunssfsi+7, r23
	sts	__profc___fixunssfsi+6, r22
	sts	__profc___fixunssfsi+5, r21
	sts	__profc___fixunssfsi+4, r20
	sts	__profc___fixunssfsi+3, r19
	sts	__profc___fixunssfsi+2, r18
	sts	__profc___fixunssfsi+1, r25
	sts	__profc___fixunssfsi, r24
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
	brpl	.LBB114_1
	rjmp	.LBB114_2
.LBB114_1:
	lds	r24, __profc___fixunssfsi+8
	lds	r25, __profc___fixunssfsi+9
	lds	r18, __profc___fixunssfsi+10
	lds	r19, __profc___fixunssfsi+11
	lds	r20, __profc___fixunssfsi+12
	lds	r21, __profc___fixunssfsi+13
	lds	r22, __profc___fixunssfsi+14
	lds	r23, __profc___fixunssfsi+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___fixunssfsi+15, r23
	sts	__profc___fixunssfsi+14, r22
	sts	__profc___fixunssfsi+13, r21
	sts	__profc___fixunssfsi+12, r20
	sts	__profc___fixunssfsi+11, r19
	sts	__profc___fixunssfsi+10, r18
	sts	__profc___fixunssfsi+9, r25
	sts	__profc___fixunssfsi+8, r24
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
	lds	r24, __profc___parityhi2
	lds	r25, __profc___parityhi2+1
	lds	r18, __profc___parityhi2+2
	lds	r19, __profc___parityhi2+3
	lds	r20, __profc___parityhi2+4
	lds	r21, __profc___parityhi2+5
	lds	r22, __profc___parityhi2+6
	lds	r23, __profc___parityhi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___parityhi2+7, r23
	sts	__profc___parityhi2+6, r22
	sts	__profc___parityhi2+5, r21
	sts	__profc___parityhi2+4, r20
	sts	__profc___parityhi2+3, r19
	sts	__profc___parityhi2+2, r18
	sts	__profc___parityhi2+1, r25
	sts	__profc___parityhi2, r24
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
	lds	r24, __profc___parityhi2+8
	lds	r25, __profc___parityhi2+9
	lds	r18, __profc___parityhi2+10
	lds	r19, __profc___parityhi2+11
	lds	r20, __profc___parityhi2+12
	lds	r21, __profc___parityhi2+13
	lds	r22, __profc___parityhi2+14
	lds	r23, __profc___parityhi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___parityhi2+15, r23
	sts	__profc___parityhi2+14, r22
	sts	__profc___parityhi2+13, r21
	sts	__profc___parityhi2+12, r20
	sts	__profc___parityhi2+11, r19
	sts	__profc___parityhi2+10, r18
	sts	__profc___parityhi2+9, r25
	sts	__profc___parityhi2+8, r24
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
	brne	.LBB115_6
	rjmp	.LBB115_7
.LBB115_6:                              ;   in Loop: Header=BB115_1 Depth=1
	lds	r24, __profc___parityhi2+16
	lds	r25, __profc___parityhi2+17
	lds	r18, __profc___parityhi2+18
	lds	r19, __profc___parityhi2+19
	lds	r20, __profc___parityhi2+20
	lds	r21, __profc___parityhi2+21
	lds	r22, __profc___parityhi2+22
	lds	r23, __profc___parityhi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___parityhi2+23, r23
	sts	__profc___parityhi2+22, r22
	sts	__profc___parityhi2+21, r21
	sts	__profc___parityhi2+20, r20
	sts	__profc___parityhi2+19, r19
	sts	__profc___parityhi2+18, r18
	sts	__profc___parityhi2+17, r25
	sts	__profc___parityhi2+16, r24
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
	lds	r24, __profc___popcounthi2
	lds	r25, __profc___popcounthi2+1
	lds	r18, __profc___popcounthi2+2
	lds	r19, __profc___popcounthi2+3
	lds	r20, __profc___popcounthi2+4
	lds	r21, __profc___popcounthi2+5
	lds	r22, __profc___popcounthi2+6
	lds	r23, __profc___popcounthi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___popcounthi2+7, r23
	sts	__profc___popcounthi2+6, r22
	sts	__profc___popcounthi2+5, r21
	sts	__profc___popcounthi2+4, r20
	sts	__profc___popcounthi2+3, r19
	sts	__profc___popcounthi2+2, r18
	sts	__profc___popcounthi2+1, r25
	sts	__profc___popcounthi2, r24
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
	lds	r24, __profc___popcounthi2+8
	lds	r25, __profc___popcounthi2+9
	lds	r18, __profc___popcounthi2+10
	lds	r19, __profc___popcounthi2+11
	lds	r20, __profc___popcounthi2+12
	lds	r21, __profc___popcounthi2+13
	lds	r22, __profc___popcounthi2+14
	lds	r23, __profc___popcounthi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___popcounthi2+15, r23
	sts	__profc___popcounthi2+14, r22
	sts	__profc___popcounthi2+13, r21
	sts	__profc___popcounthi2+12, r20
	sts	__profc___popcounthi2+11, r19
	sts	__profc___popcounthi2+10, r18
	sts	__profc___popcounthi2+9, r25
	sts	__profc___popcounthi2+8, r24
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
	brne	.LBB116_6
	rjmp	.LBB116_7
.LBB116_6:                              ;   in Loop: Header=BB116_1 Depth=1
	lds	r24, __profc___popcounthi2+16
	lds	r25, __profc___popcounthi2+17
	lds	r18, __profc___popcounthi2+18
	lds	r19, __profc___popcounthi2+19
	lds	r20, __profc___popcounthi2+20
	lds	r21, __profc___popcounthi2+21
	lds	r22, __profc___popcounthi2+22
	lds	r23, __profc___popcounthi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___popcounthi2+23, r23
	sts	__profc___popcounthi2+22, r22
	sts	__profc___popcounthi2+21, r21
	sts	__profc___popcounthi2+20, r20
	sts	__profc___popcounthi2+19, r19
	sts	__profc___popcounthi2+18, r18
	sts	__profc___popcounthi2+17, r25
	sts	__profc___popcounthi2+16, r24
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
	lds	r24, __profc___mulsi3_iq2000
	lds	r25, __profc___mulsi3_iq2000+1
	lds	r18, __profc___mulsi3_iq2000+2
	lds	r19, __profc___mulsi3_iq2000+3
	lds	r20, __profc___mulsi3_iq2000+4
	lds	r21, __profc___mulsi3_iq2000+5
	lds	r22, __profc___mulsi3_iq2000+6
	lds	r23, __profc___mulsi3_iq2000+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3_iq2000+7, r23
	sts	__profc___mulsi3_iq2000+6, r22
	sts	__profc___mulsi3_iq2000+5, r21
	sts	__profc___mulsi3_iq2000+4, r20
	sts	__profc___mulsi3_iq2000+3, r19
	sts	__profc___mulsi3_iq2000+2, r18
	sts	__profc___mulsi3_iq2000+1, r25
	sts	__profc___mulsi3_iq2000, r24
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
	lds	r24, __profc___mulsi3_iq2000+8
	lds	r25, __profc___mulsi3_iq2000+9
	lds	r18, __profc___mulsi3_iq2000+10
	lds	r19, __profc___mulsi3_iq2000+11
	lds	r20, __profc___mulsi3_iq2000+12
	lds	r21, __profc___mulsi3_iq2000+13
	lds	r22, __profc___mulsi3_iq2000+14
	lds	r23, __profc___mulsi3_iq2000+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3_iq2000+15, r23
	sts	__profc___mulsi3_iq2000+14, r22
	sts	__profc___mulsi3_iq2000+13, r21
	sts	__profc___mulsi3_iq2000+12, r20
	sts	__profc___mulsi3_iq2000+11, r19
	sts	__profc___mulsi3_iq2000+10, r18
	sts	__profc___mulsi3_iq2000+9, r25
	sts	__profc___mulsi3_iq2000+8, r24
	ldd	r24, Y+11
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB117_5
	rjmp	.LBB117_6
.LBB117_5:                              ;   in Loop: Header=BB117_1 Depth=1
	lds	r24, __profc___mulsi3_iq2000+16
	lds	r25, __profc___mulsi3_iq2000+17
	lds	r18, __profc___mulsi3_iq2000+18
	lds	r19, __profc___mulsi3_iq2000+19
	lds	r20, __profc___mulsi3_iq2000+20
	lds	r21, __profc___mulsi3_iq2000+21
	lds	r22, __profc___mulsi3_iq2000+22
	lds	r23, __profc___mulsi3_iq2000+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3_iq2000+23, r23
	sts	__profc___mulsi3_iq2000+22, r22
	sts	__profc___mulsi3_iq2000+21, r21
	sts	__profc___mulsi3_iq2000+20, r20
	sts	__profc___mulsi3_iq2000+19, r19
	sts	__profc___mulsi3_iq2000+18, r18
	sts	__profc___mulsi3_iq2000+17, r25
	sts	__profc___mulsi3_iq2000+16, r24
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
	lds	r24, __profc___mulsi3_lm32
	lds	r25, __profc___mulsi3_lm32+1
	lds	r18, __profc___mulsi3_lm32+2
	lds	r19, __profc___mulsi3_lm32+3
	lds	r20, __profc___mulsi3_lm32+4
	lds	r21, __profc___mulsi3_lm32+5
	lds	r22, __profc___mulsi3_lm32+6
	lds	r23, __profc___mulsi3_lm32+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3_lm32+7, r23
	sts	__profc___mulsi3_lm32+6, r22
	sts	__profc___mulsi3_lm32+5, r21
	sts	__profc___mulsi3_lm32+4, r20
	sts	__profc___mulsi3_lm32+3, r19
	sts	__profc___mulsi3_lm32+2, r18
	sts	__profc___mulsi3_lm32+1, r25
	sts	__profc___mulsi3_lm32, r24
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
	breq	.LBB118_3
	rjmp	.LBB118_4
.LBB118_2:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB118_1
.LBB118_3:
	lds	r24, __profc___mulsi3_lm32+8
	lds	r25, __profc___mulsi3_lm32+9
	lds	r18, __profc___mulsi3_lm32+10
	lds	r19, __profc___mulsi3_lm32+11
	lds	r20, __profc___mulsi3_lm32+12
	lds	r21, __profc___mulsi3_lm32+13
	lds	r22, __profc___mulsi3_lm32+14
	lds	r23, __profc___mulsi3_lm32+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3_lm32+15, r23
	sts	__profc___mulsi3_lm32+14, r22
	sts	__profc___mulsi3_lm32+13, r21
	sts	__profc___mulsi3_lm32+12, r20
	sts	__profc___mulsi3_lm32+11, r19
	sts	__profc___mulsi3_lm32+10, r18
	sts	__profc___mulsi3_lm32+9, r25
	sts	__profc___mulsi3_lm32+8, r24
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
	lds	r24, __profc___mulsi3_lm32+16
	lds	r25, __profc___mulsi3_lm32+17
	lds	r18, __profc___mulsi3_lm32+18
	lds	r19, __profc___mulsi3_lm32+19
	lds	r20, __profc___mulsi3_lm32+20
	lds	r21, __profc___mulsi3_lm32+21
	lds	r22, __profc___mulsi3_lm32+22
	lds	r23, __profc___mulsi3_lm32+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3_lm32+23, r23
	sts	__profc___mulsi3_lm32+22, r22
	sts	__profc___mulsi3_lm32+21, r21
	sts	__profc___mulsi3_lm32+20, r20
	sts	__profc___mulsi3_lm32+19, r19
	sts	__profc___mulsi3_lm32+18, r18
	sts	__profc___mulsi3_lm32+17, r25
	sts	__profc___mulsi3_lm32+16, r24
	ldd	r24, Y+9
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB118_9
	rjmp	.LBB118_10
.LBB118_9:                              ;   in Loop: Header=BB118_5 Depth=1
	lds	r24, __profc___mulsi3_lm32+24
	lds	r25, __profc___mulsi3_lm32+25
	lds	r18, __profc___mulsi3_lm32+26
	lds	r19, __profc___mulsi3_lm32+27
	lds	r20, __profc___mulsi3_lm32+28
	lds	r21, __profc___mulsi3_lm32+29
	lds	r22, __profc___mulsi3_lm32+30
	lds	r23, __profc___mulsi3_lm32+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulsi3_lm32+31, r23
	sts	__profc___mulsi3_lm32+30, r22
	sts	__profc___mulsi3_lm32+29, r21
	sts	__profc___mulsi3_lm32+28, r20
	sts	__profc___mulsi3_lm32+27, r19
	sts	__profc___mulsi3_lm32+26, r18
	sts	__profc___mulsi3_lm32+25, r25
	sts	__profc___mulsi3_lm32+24, r24
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
	sbiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+36, r25
	std	Y+35, r24
	std	Y+34, r23
	std	Y+33, r22
	std	Y+32, r21
	std	Y+31, r20
	std	Y+30, r19
	std	Y+29, r18
	std	Y+28, r17
	std	Y+27, r16
	lds	r24, __profc___udivmodsi4
	lds	r25, __profc___udivmodsi4+1
	lds	r18, __profc___udivmodsi4+2
	lds	r19, __profc___udivmodsi4+3
	lds	r20, __profc___udivmodsi4+4
	lds	r21, __profc___udivmodsi4+5
	lds	r22, __profc___udivmodsi4+6
	lds	r23, __profc___udivmodsi4+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+7, r23
	sts	__profc___udivmodsi4+6, r22
	sts	__profc___udivmodsi4+5, r21
	sts	__profc___udivmodsi4+4, r20
	sts	__profc___udivmodsi4+3, r19
	sts	__profc___udivmodsi4+2, r18
	sts	__profc___udivmodsi4+1, r25
	sts	__profc___udivmodsi4, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+26, r25
	std	Y+25, r24
	ldi	r18, 1
	ldi	r19, 0
	std	Y+24, r19
	std	Y+23, r18
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB119_1
.LBB119_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r30, Y+33
	ldd	r31, Y+34
	ldd	r20, Y+35
	ldd	r21, Y+36
	mov	r24, r1
	std	Y+17, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+18, r24                       ; 1-byte Folded Spill
	brsh	.LBB119_2
	rjmp	.LBB119_3
.LBB119_2:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+17                       ; 1-byte Folded Reload
	ldd	r25, Y+18                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB119_4
	rjmp	.LBB119_14
.LBB119_3:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+17                       ; 1-byte Folded Reload
	std	Y+18, r24                       ; 1-byte Folded Spill
	rjmp	.LBB119_2
.LBB119_4:                              ;   in Loop: Header=BB119_1 Depth=1
	lds	r24, __profc___udivmodsi4+32
	lds	r25, __profc___udivmodsi4+33
	lds	r18, __profc___udivmodsi4+34
	lds	r19, __profc___udivmodsi4+35
	lds	r20, __profc___udivmodsi4+36
	lds	r21, __profc___udivmodsi4+37
	lds	r22, __profc___udivmodsi4+38
	lds	r23, __profc___udivmodsi4+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+39, r23
	sts	__profc___udivmodsi4+38, r22
	sts	__profc___udivmodsi4+37, r21
	sts	__profc___udivmodsi4+36, r20
	sts	__profc___udivmodsi4+35, r19
	sts	__profc___udivmodsi4+34, r18
	sts	__profc___udivmodsi4+33, r25
	sts	__profc___udivmodsi4+32, r24
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+14, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+15, r24                       ; 1-byte Folded Spill
	breq	.LBB119_5
	rjmp	.LBB119_6
.LBB119_5:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	ldd	r25, Y+15                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB119_7
	rjmp	.LBB119_14
.LBB119_6:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	std	Y+15, r24                       ; 1-byte Folded Spill
	rjmp	.LBB119_5
.LBB119_7:                              ;   in Loop: Header=BB119_1 Depth=1
	lds	r24, __profc___udivmodsi4+40
	lds	r25, __profc___udivmodsi4+41
	lds	r18, __profc___udivmodsi4+42
	lds	r19, __profc___udivmodsi4+43
	lds	r20, __profc___udivmodsi4+44
	lds	r21, __profc___udivmodsi4+45
	lds	r22, __profc___udivmodsi4+46
	lds	r23, __profc___udivmodsi4+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+47, r23
	sts	__profc___udivmodsi4+46, r22
	sts	__profc___udivmodsi4+45, r21
	sts	__profc___udivmodsi4+44, r20
	sts	__profc___udivmodsi4+43, r19
	sts	__profc___udivmodsi4+42, r18
	sts	__profc___udivmodsi4+41, r25
	sts	__profc___udivmodsi4+40, r24
	rjmp	.LBB119_8
.LBB119_8:                              ;   in Loop: Header=BB119_1 Depth=1
	lds	r24, __profc___udivmodsi4+16
	lds	r25, __profc___udivmodsi4+17
	lds	r18, __profc___udivmodsi4+18
	lds	r19, __profc___udivmodsi4+19
	lds	r20, __profc___udivmodsi4+20
	lds	r21, __profc___udivmodsi4+21
	lds	r22, __profc___udivmodsi4+22
	lds	r23, __profc___udivmodsi4+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+23, r23
	sts	__profc___udivmodsi4+22, r22
	sts	__profc___udivmodsi4+21, r21
	sts	__profc___udivmodsi4+20, r20
	sts	__profc___udivmodsi4+19, r19
	sts	__profc___udivmodsi4+18, r18
	sts	__profc___udivmodsi4+17, r25
	sts	__profc___udivmodsi4+16, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	andi	r18, 0
	andi	r19, 128
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	ldi	r20, 0
	ldi	r21, 0
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	mov	r25, r1
	std	Y+11, r25                       ; 1-byte Folded Spill
	ldi	r24, 1
	std	Y+12, r24                       ; 1-byte Folded Spill
	cp	r25, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+13, r24                       ; 1-byte Folded Spill
	breq	.LBB119_9
	rjmp	.LBB119_12
.LBB119_9:                              ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	ldd	r25, Y+11                       ; 1-byte Folded Reload
	ldd	r22, Y+13                       ; 1-byte Folded Reload
	std	Y+5, r22                        ; 1-byte Folded Spill
	cp	r25, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB119_10
	rjmp	.LBB119_11
.LBB119_10:                             ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	ldd	r25, Y+6                        ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB119_13
	rjmp	.LBB119_14
.LBB119_11:                             ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_10
.LBB119_12:                             ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+13, r24                       ; 1-byte Folded Spill
	rjmp	.LBB119_9
.LBB119_13:                             ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	lds	r18, __profc___udivmodsi4+24
	lds	r19, __profc___udivmodsi4+25
	lds	r20, __profc___udivmodsi4+26
	lds	r21, __profc___udivmodsi4+27
	lds	r22, __profc___udivmodsi4+28
	lds	r23, __profc___udivmodsi4+29
	lds	r30, __profc___udivmodsi4+30
	lds	r31, __profc___udivmodsi4+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc___udivmodsi4+31, r31
	sts	__profc___udivmodsi4+30, r30
	sts	__profc___udivmodsi4+29, r23
	sts	__profc___udivmodsi4+28, r22
	sts	__profc___udivmodsi4+27, r21
	sts	__profc___udivmodsi4+26, r20
	sts	__profc___udivmodsi4+25, r19
	sts	__profc___udivmodsi4+24, r18
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB119_14
.LBB119_14:                             ;   in Loop: Header=BB119_1 Depth=1
	ldd	r24, Y+16                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB119_15
	rjmp	.LBB119_16
.LBB119_15:                             ;   in Loop: Header=BB119_1 Depth=1
	lds	r24, __profc___udivmodsi4+8
	lds	r25, __profc___udivmodsi4+9
	lds	r18, __profc___udivmodsi4+10
	lds	r19, __profc___udivmodsi4+11
	lds	r20, __profc___udivmodsi4+12
	lds	r21, __profc___udivmodsi4+13
	lds	r22, __profc___udivmodsi4+14
	lds	r23, __profc___udivmodsi4+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+15, r23
	sts	__profc___udivmodsi4+14, r22
	sts	__profc___udivmodsi4+13, r21
	sts	__profc___udivmodsi4+12, r20
	sts	__profc___udivmodsi4+11, r19
	sts	__profc___udivmodsi4+10, r18
	sts	__profc___udivmodsi4+9, r25
	sts	__profc___udivmodsi4+8, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r24, Y+29
	ldd	r25, Y+30
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
	std	Y+32, r19
	std	Y+31, r18
	std	Y+30, r25
	std	Y+29, r24
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB119_1
.LBB119_16:
	rjmp	.LBB119_17
.LBB119_17:                             ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	breq	.LBB119_18
	rjmp	.LBB119_19
.LBB119_18:                             ;   in Loop: Header=BB119_17 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB119_20
	rjmp	.LBB119_25
.LBB119_19:                             ;   in Loop: Header=BB119_17 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_18
.LBB119_20:                             ;   in Loop: Header=BB119_17 Depth=1
	lds	r24, __profc___udivmodsi4+48
	lds	r25, __profc___udivmodsi4+49
	lds	r18, __profc___udivmodsi4+50
	lds	r19, __profc___udivmodsi4+51
	lds	r20, __profc___udivmodsi4+52
	lds	r21, __profc___udivmodsi4+53
	lds	r22, __profc___udivmodsi4+54
	lds	r23, __profc___udivmodsi4+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+55, r23
	sts	__profc___udivmodsi4+54, r22
	sts	__profc___udivmodsi4+53, r21
	sts	__profc___udivmodsi4+52, r20
	sts	__profc___udivmodsi4+51, r19
	sts	__profc___udivmodsi4+50, r18
	sts	__profc___udivmodsi4+49, r25
	sts	__profc___udivmodsi4+48, r24
	ldd	r22, Y+33
	ldd	r23, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r30, Y+29
	ldd	r31, Y+30
	ldd	r20, Y+31
	ldd	r21, Y+32
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB119_21
	rjmp	.LBB119_22
.LBB119_21:                             ;   in Loop: Header=BB119_17 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB119_23
	rjmp	.LBB119_24
.LBB119_22:                             ;   in Loop: Header=BB119_17 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB119_21
.LBB119_23:                             ;   in Loop: Header=BB119_17 Depth=1
	lds	r24, __profc___udivmodsi4+56
	lds	r25, __profc___udivmodsi4+57
	lds	r18, __profc___udivmodsi4+58
	lds	r19, __profc___udivmodsi4+59
	lds	r20, __profc___udivmodsi4+60
	lds	r21, __profc___udivmodsi4+61
	lds	r22, __profc___udivmodsi4+62
	lds	r23, __profc___udivmodsi4+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+63, r23
	sts	__profc___udivmodsi4+62, r22
	sts	__profc___udivmodsi4+61, r21
	sts	__profc___udivmodsi4+60, r20
	sts	__profc___udivmodsi4+59, r19
	sts	__profc___udivmodsi4+58, r18
	sts	__profc___udivmodsi4+57, r25
	sts	__profc___udivmodsi4+56, r24
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r20, Y+31
	ldd	r21, Y+32
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r20, Y+25
	ldd	r21, Y+26
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r24, Y+19
	ldd	r25, Y+20
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+22, r19
	std	Y+21, r18
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB119_24
.LBB119_24:                             ;   in Loop: Header=BB119_17 Depth=1
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r24, Y+29
	ldd	r25, Y+30
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
	std	Y+32, r19
	std	Y+31, r18
	std	Y+30, r25
	std	Y+29, r24
	rjmp	.LBB119_17
.LBB119_25:
	ldd	r18, Y+27
	ldd	r19, Y+28
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB119_26
	rjmp	.LBB119_27
.LBB119_26:
	lds	r24, __profc___udivmodsi4+64
	lds	r25, __profc___udivmodsi4+65
	lds	r18, __profc___udivmodsi4+66
	lds	r19, __profc___udivmodsi4+67
	lds	r20, __profc___udivmodsi4+68
	lds	r21, __profc___udivmodsi4+69
	lds	r22, __profc___udivmodsi4+70
	lds	r23, __profc___udivmodsi4+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4+71, r23
	sts	__profc___udivmodsi4+70, r22
	sts	__profc___udivmodsi4+69, r21
	sts	__profc___udivmodsi4+68, r20
	sts	__profc___udivmodsi4+67, r19
	sts	__profc___udivmodsi4+66, r18
	sts	__profc___udivmodsi4+65, r25
	sts	__profc___udivmodsi4+64, r24
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	rjmp	.LBB119_28
.LBB119_27:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	rjmp	.LBB119_28
.LBB119_28:
	ldd	r22, Y+37
	ldd	r23, Y+38
	ldd	r24, Y+39
	ldd	r25, Y+40
	adiw	r28, 40
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
	lds	r24, __profc___mspabi_cmpf
	lds	r25, __profc___mspabi_cmpf+1
	lds	r18, __profc___mspabi_cmpf+2
	lds	r19, __profc___mspabi_cmpf+3
	lds	r20, __profc___mspabi_cmpf+4
	lds	r21, __profc___mspabi_cmpf+5
	lds	r22, __profc___mspabi_cmpf+6
	lds	r23, __profc___mspabi_cmpf+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_cmpf+7, r23
	sts	__profc___mspabi_cmpf+6, r22
	sts	__profc___mspabi_cmpf+5, r21
	sts	__profc___mspabi_cmpf+4, r20
	sts	__profc___mspabi_cmpf+3, r19
	sts	__profc___mspabi_cmpf+2, r18
	sts	__profc___mspabi_cmpf+1, r25
	sts	__profc___mspabi_cmpf, r24
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
	brmi	.LBB120_1
	rjmp	.LBB120_2
.LBB120_1:
	lds	r24, __profc___mspabi_cmpf+8
	lds	r25, __profc___mspabi_cmpf+9
	lds	r18, __profc___mspabi_cmpf+10
	lds	r19, __profc___mspabi_cmpf+11
	lds	r20, __profc___mspabi_cmpf+12
	lds	r21, __profc___mspabi_cmpf+13
	lds	r22, __profc___mspabi_cmpf+14
	lds	r23, __profc___mspabi_cmpf+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_cmpf+15, r23
	sts	__profc___mspabi_cmpf+14, r22
	sts	__profc___mspabi_cmpf+13, r21
	sts	__profc___mspabi_cmpf+12, r20
	sts	__profc___mspabi_cmpf+11, r19
	sts	__profc___mspabi_cmpf+10, r18
	sts	__profc___mspabi_cmpf+9, r25
	sts	__profc___mspabi_cmpf+8, r24
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
	brlt	.LBB120_3
	rjmp	.LBB120_4
.LBB120_3:
	lds	r24, __profc___mspabi_cmpf+16
	lds	r25, __profc___mspabi_cmpf+17
	lds	r18, __profc___mspabi_cmpf+18
	lds	r19, __profc___mspabi_cmpf+19
	lds	r20, __profc___mspabi_cmpf+20
	lds	r21, __profc___mspabi_cmpf+21
	lds	r22, __profc___mspabi_cmpf+22
	lds	r23, __profc___mspabi_cmpf+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_cmpf+23, r23
	sts	__profc___mspabi_cmpf+22, r22
	sts	__profc___mspabi_cmpf+21, r21
	sts	__profc___mspabi_cmpf+20, r20
	sts	__profc___mspabi_cmpf+19, r19
	sts	__profc___mspabi_cmpf+18, r18
	sts	__profc___mspabi_cmpf+17, r25
	sts	__profc___mspabi_cmpf+16, r24
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
	lds	r24, __profc___mspabi_cmpd
	lds	r25, __profc___mspabi_cmpd+1
	lds	r18, __profc___mspabi_cmpd+2
	lds	r19, __profc___mspabi_cmpd+3
	lds	r20, __profc___mspabi_cmpd+4
	lds	r21, __profc___mspabi_cmpd+5
	lds	r22, __profc___mspabi_cmpd+6
	lds	r23, __profc___mspabi_cmpd+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_cmpd+7, r23
	sts	__profc___mspabi_cmpd+6, r22
	sts	__profc___mspabi_cmpd+5, r21
	sts	__profc___mspabi_cmpd+4, r20
	sts	__profc___mspabi_cmpd+3, r19
	sts	__profc___mspabi_cmpd+2, r18
	sts	__profc___mspabi_cmpd+1, r25
	sts	__profc___mspabi_cmpd, r24
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
	brmi	.LBB121_1
	rjmp	.LBB121_2
.LBB121_1:
	lds	r24, __profc___mspabi_cmpd+8
	lds	r25, __profc___mspabi_cmpd+9
	lds	r18, __profc___mspabi_cmpd+10
	lds	r19, __profc___mspabi_cmpd+11
	lds	r20, __profc___mspabi_cmpd+12
	lds	r21, __profc___mspabi_cmpd+13
	lds	r22, __profc___mspabi_cmpd+14
	lds	r23, __profc___mspabi_cmpd+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_cmpd+15, r23
	sts	__profc___mspabi_cmpd+14, r22
	sts	__profc___mspabi_cmpd+13, r21
	sts	__profc___mspabi_cmpd+12, r20
	sts	__profc___mspabi_cmpd+11, r19
	sts	__profc___mspabi_cmpd+10, r18
	sts	__profc___mspabi_cmpd+9, r25
	sts	__profc___mspabi_cmpd+8, r24
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
	brlt	.LBB121_3
	rjmp	.LBB121_4
.LBB121_3:
	lds	r24, __profc___mspabi_cmpd+16
	lds	r25, __profc___mspabi_cmpd+17
	lds	r18, __profc___mspabi_cmpd+18
	lds	r19, __profc___mspabi_cmpd+19
	lds	r20, __profc___mspabi_cmpd+20
	lds	r21, __profc___mspabi_cmpd+21
	lds	r22, __profc___mspabi_cmpd+22
	lds	r23, __profc___mspabi_cmpd+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_cmpd+23, r23
	sts	__profc___mspabi_cmpd+22, r22
	sts	__profc___mspabi_cmpd+21, r21
	sts	__profc___mspabi_cmpd+20, r20
	sts	__profc___mspabi_cmpd+19, r19
	sts	__profc___mspabi_cmpd+18, r18
	sts	__profc___mspabi_cmpd+17, r25
	sts	__profc___mspabi_cmpd+16, r24
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
	lds	r24, __profc___mspabi_mpysll
	lds	r25, __profc___mspabi_mpysll+1
	lds	r18, __profc___mspabi_mpysll+2
	lds	r19, __profc___mspabi_mpysll+3
	lds	r20, __profc___mspabi_mpysll+4
	lds	r21, __profc___mspabi_mpysll+5
	lds	r22, __profc___mspabi_mpysll+6
	lds	r23, __profc___mspabi_mpysll+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_mpysll+7, r23
	sts	__profc___mspabi_mpysll+6, r22
	sts	__profc___mspabi_mpysll+5, r21
	sts	__profc___mspabi_mpysll+4, r20
	sts	__profc___mspabi_mpysll+3, r19
	sts	__profc___mspabi_mpysll+2, r18
	sts	__profc___mspabi_mpysll+1, r25
	sts	__profc___mspabi_mpysll, r24
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
	lds	r24, __profc___mspabi_mpyull
	lds	r25, __profc___mspabi_mpyull+1
	lds	r18, __profc___mspabi_mpyull+2
	lds	r19, __profc___mspabi_mpyull+3
	lds	r20, __profc___mspabi_mpyull+4
	lds	r21, __profc___mspabi_mpyull+5
	lds	r22, __profc___mspabi_mpyull+6
	lds	r23, __profc___mspabi_mpyull+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mspabi_mpyull+7, r23
	sts	__profc___mspabi_mpyull+6, r22
	sts	__profc___mspabi_mpyull+5, r21
	sts	__profc___mspabi_mpyull+4, r20
	sts	__profc___mspabi_mpyull+3, r19
	sts	__profc___mspabi_mpyull+2, r18
	sts	__profc___mspabi_mpyull+1, r25
	sts	__profc___mspabi_mpyull, r24
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
	sbiw	r28, 17
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	std	Y+17, r25
	std	Y+16, r24
	std	Y+15, r23
	std	Y+14, r22
	lds	r24, __profc___mulhi3
	lds	r25, __profc___mulhi3+1
	lds	r18, __profc___mulhi3+2
	lds	r19, __profc___mulhi3+3
	lds	r20, __profc___mulhi3+4
	lds	r21, __profc___mulhi3+5
	lds	r22, __profc___mulhi3+6
	lds	r23, __profc___mulhi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulhi3+7, r23
	sts	__profc___mulhi3+6, r22
	sts	__profc___mulhi3+5, r21
	sts	__profc___mulhi3+4, r20
	sts	__profc___mulhi3+3, r19
	sts	__profc___mulhi3+2, r18
	sts	__profc___mulhi3+1, r25
	sts	__profc___mulhi3, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+14
	ldd	r25, Y+15
	mov	r24, r25
	tst	r24
	brmi	.LBB124_1
	rjmp	.LBB124_2
.LBB124_1:
	lds	r24, __profc___mulhi3+8
	lds	r25, __profc___mulhi3+9
	lds	r18, __profc___mulhi3+10
	lds	r19, __profc___mulhi3+11
	lds	r20, __profc___mulhi3+12
	lds	r21, __profc___mulhi3+13
	lds	r22, __profc___mulhi3+14
	lds	r23, __profc___mulhi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulhi3+15, r23
	sts	__profc___mulhi3+14, r22
	sts	__profc___mulhi3+13, r21
	sts	__profc___mulhi3+12, r20
	sts	__profc___mulhi3+11, r19
	sts	__profc___mulhi3+10, r18
	sts	__profc___mulhi3+9, r25
	sts	__profc___mulhi3+8, r24
	ldd	r24, Y+14
	ldd	r25, Y+15
	mov	r18, r1
	neg	r25
	neg	r24
	sbc	r25, r18
	std	Y+15, r25
	std	Y+14, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+12, r25
	std	Y+11, r24
	rjmp	.LBB124_2
.LBB124_2:
	mov	r24, r1
	std	Y+13, r24
	rjmp	.LBB124_3
.LBB124_3:                              ; =>This Inner Loop Header: Depth=1
	ldd	r20, Y+14
	ldd	r21, Y+15
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	brne	.LBB124_4
	rjmp	.LBB124_8
.LBB124_4:                              ;   in Loop: Header=BB124_3 Depth=1
	lds	r24, __profc___mulhi3+24
	lds	r25, __profc___mulhi3+25
	lds	r18, __profc___mulhi3+26
	lds	r19, __profc___mulhi3+27
	lds	r20, __profc___mulhi3+28
	lds	r21, __profc___mulhi3+29
	lds	r22, __profc___mulhi3+30
	lds	r23, __profc___mulhi3+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulhi3+31, r23
	sts	__profc___mulhi3+30, r22
	sts	__profc___mulhi3+29, r21
	sts	__profc___mulhi3+28, r20
	sts	__profc___mulhi3+27, r19
	sts	__profc___mulhi3+26, r18
	sts	__profc___mulhi3+25, r25
	sts	__profc___mulhi3+24, r24
	ldd	r18, Y+13
	std	Y+4, r18                        ; 1-byte Folded Spill
	mov	r24, r18
	mov	r25, r18
	lsl	r25
	sbc	r25, r25
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+5, r25                        ; 1-byte Folded Spill
	mov	r24, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cpi	r18, 16
	cpc	r25, r1
	std	Y+7, r24                        ; 1-byte Folded Spill
	brlo	.LBB124_5
	rjmp	.LBB124_6
.LBB124_5:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r25, Y+5                        ; 1-byte Folded Reload
	ldd	r18, Y+4                        ; 1-byte Folded Reload
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+3, r24                        ; 1-byte Folded Spill
	cpi	r18, 16
	cpc	r25, r1
	std	Y+8, r24                        ; 1-byte Folded Spill
	brlo	.LBB124_7
	rjmp	.LBB124_8
.LBB124_6:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	std	Y+7, r24                        ; 1-byte Folded Spill
	rjmp	.LBB124_5
.LBB124_7:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	lds	r18, __profc___mulhi3+32
	lds	r19, __profc___mulhi3+33
	lds	r20, __profc___mulhi3+34
	lds	r21, __profc___mulhi3+35
	lds	r22, __profc___mulhi3+36
	lds	r23, __profc___mulhi3+37
	lds	r30, __profc___mulhi3+38
	lds	r31, __profc___mulhi3+39
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc___mulhi3+39, r31
	sts	__profc___mulhi3+38, r30
	sts	__profc___mulhi3+37, r23
	sts	__profc___mulhi3+36, r22
	sts	__profc___mulhi3+35, r21
	sts	__profc___mulhi3+34, r20
	sts	__profc___mulhi3+33, r19
	sts	__profc___mulhi3+32, r18
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB124_8
.LBB124_8:                              ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+8                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB124_9
	rjmp	.LBB124_13
.LBB124_9:                              ;   in Loop: Header=BB124_3 Depth=1
	lds	r24, __profc___mulhi3+16
	lds	r25, __profc___mulhi3+17
	lds	r18, __profc___mulhi3+18
	lds	r19, __profc___mulhi3+19
	lds	r20, __profc___mulhi3+20
	lds	r21, __profc___mulhi3+21
	lds	r22, __profc___mulhi3+22
	lds	r23, __profc___mulhi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulhi3+23, r23
	sts	__profc___mulhi3+22, r22
	sts	__profc___mulhi3+21, r21
	sts	__profc___mulhi3+20, r20
	sts	__profc___mulhi3+19, r19
	sts	__profc___mulhi3+18, r18
	sts	__profc___mulhi3+17, r25
	sts	__profc___mulhi3+16, r24
	ldd	r24, Y+14
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB124_10
	rjmp	.LBB124_11
.LBB124_10:                             ;   in Loop: Header=BB124_3 Depth=1
	lds	r24, __profc___mulhi3+40
	lds	r25, __profc___mulhi3+41
	lds	r18, __profc___mulhi3+42
	lds	r19, __profc___mulhi3+43
	lds	r20, __profc___mulhi3+44
	lds	r21, __profc___mulhi3+45
	lds	r22, __profc___mulhi3+46
	lds	r23, __profc___mulhi3+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulhi3+47, r23
	sts	__profc___mulhi3+46, r22
	sts	__profc___mulhi3+45, r21
	sts	__profc___mulhi3+44, r20
	sts	__profc___mulhi3+43, r19
	sts	__profc___mulhi3+42, r18
	sts	__profc___mulhi3+41, r25
	sts	__profc___mulhi3+40, r24
	ldd	r18, Y+16
	ldd	r19, Y+17
	ldd	r24, Y+9
	ldd	r25, Y+10
	add	r24, r18
	adc	r25, r19
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB124_11
.LBB124_11:                             ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+16
	ldd	r25, Y+17
	lsl	r24
	rol	r25
	std	Y+17, r25
	std	Y+16, r24
	ldd	r24, Y+14
	ldd	r25, Y+15
	asr	r25
	ror	r24
	std	Y+15, r25
	std	Y+14, r24
	rjmp	.LBB124_12
.LBB124_12:                             ;   in Loop: Header=BB124_3 Depth=1
	ldd	r24, Y+13
	inc	r24
	std	Y+13, r24
	rjmp	.LBB124_3
.LBB124_13:
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB124_14
	rjmp	.LBB124_15
.LBB124_14:
	lds	r24, __profc___mulhi3+48
	lds	r25, __profc___mulhi3+49
	lds	r18, __profc___mulhi3+50
	lds	r19, __profc___mulhi3+51
	lds	r20, __profc___mulhi3+52
	lds	r21, __profc___mulhi3+53
	lds	r22, __profc___mulhi3+54
	lds	r23, __profc___mulhi3+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___mulhi3+55, r23
	sts	__profc___mulhi3+54, r22
	sts	__profc___mulhi3+53, r21
	sts	__profc___mulhi3+52, r20
	sts	__profc___mulhi3+51, r19
	sts	__profc___mulhi3+50, r18
	sts	__profc___mulhi3+49, r25
	sts	__profc___mulhi3+48, r24
	ldd	r24, Y+9
	ldd	r25, Y+10
	mov	r18, r1
	neg	r25
	neg	r24
	sbc	r25, r18
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB124_16
.LBB124_15:
	ldd	r24, Y+9
	ldd	r25, Y+10
	std	Y+2, r25                        ; 2-byte Folded Spill
	std	Y+1, r24                        ; 2-byte Folded Spill
	rjmp	.LBB124_16
.LBB124_16:
	ldd	r24, Y+1                        ; 2-byte Folded Reload
	ldd	r25, Y+2                        ; 2-byte Folded Reload
	adiw	r28, 17
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
	lds	r24, __profc___divsi3
	lds	r25, __profc___divsi3+1
	lds	r18, __profc___divsi3+2
	lds	r19, __profc___divsi3+3
	lds	r20, __profc___divsi3+4
	lds	r21, __profc___divsi3+5
	lds	r22, __profc___divsi3+6
	lds	r23, __profc___divsi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___divsi3+7, r23
	sts	__profc___divsi3+6, r22
	sts	__profc___divsi3+5, r21
	sts	__profc___divsi3+4, r20
	sts	__profc___divsi3+3, r19
	sts	__profc___divsi3+2, r18
	sts	__profc___divsi3+1, r25
	sts	__profc___divsi3, r24
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
	lds	r24, __profc___divsi3+8
	lds	r25, __profc___divsi3+9
	lds	r18, __profc___divsi3+10
	lds	r19, __profc___divsi3+11
	lds	r20, __profc___divsi3+12
	lds	r21, __profc___divsi3+13
	lds	r22, __profc___divsi3+14
	lds	r23, __profc___divsi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___divsi3+15, r23
	sts	__profc___divsi3+14, r22
	sts	__profc___divsi3+13, r21
	sts	__profc___divsi3+12, r20
	sts	__profc___divsi3+11, r19
	sts	__profc___divsi3+10, r18
	sts	__profc___divsi3+9, r25
	sts	__profc___divsi3+8, r24
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
	lds	r24, __profc___divsi3+16
	lds	r25, __profc___divsi3+17
	lds	r18, __profc___divsi3+18
	lds	r19, __profc___divsi3+19
	lds	r20, __profc___divsi3+20
	lds	r21, __profc___divsi3+21
	lds	r22, __profc___divsi3+22
	lds	r23, __profc___divsi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___divsi3+23, r23
	sts	__profc___divsi3+22, r22
	sts	__profc___divsi3+21, r21
	sts	__profc___divsi3+20, r20
	sts	__profc___divsi3+19, r19
	sts	__profc___divsi3+18, r18
	sts	__profc___divsi3+17, r25
	sts	__profc___divsi3+16, r24
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
	brne	.LBB125_13
	rjmp	.LBB125_14
.LBB125_13:
	lds	r24, __profc___divsi3+24
	lds	r25, __profc___divsi3+25
	lds	r18, __profc___divsi3+26
	lds	r19, __profc___divsi3+27
	lds	r20, __profc___divsi3+28
	lds	r21, __profc___divsi3+29
	lds	r22, __profc___divsi3+30
	lds	r23, __profc___divsi3+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___divsi3+31, r23
	sts	__profc___divsi3+30, r22
	sts	__profc___divsi3+29, r21
	sts	__profc___divsi3+28, r20
	sts	__profc___divsi3+27, r19
	sts	__profc___divsi3+26, r18
	sts	__profc___divsi3+25, r25
	sts	__profc___divsi3+24, r24
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
	lds	r24, __profc___modsi3
	lds	r25, __profc___modsi3+1
	lds	r18, __profc___modsi3+2
	lds	r19, __profc___modsi3+3
	lds	r20, __profc___modsi3+4
	lds	r21, __profc___modsi3+5
	lds	r22, __profc___modsi3+6
	lds	r23, __profc___modsi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___modsi3+7, r23
	sts	__profc___modsi3+6, r22
	sts	__profc___modsi3+5, r21
	sts	__profc___modsi3+4, r20
	sts	__profc___modsi3+3, r19
	sts	__profc___modsi3+2, r18
	sts	__profc___modsi3+1, r25
	sts	__profc___modsi3, r24
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
	breq	.LBB126_3
	rjmp	.LBB126_4
.LBB126_2:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB126_1
.LBB126_3:
	lds	r24, __profc___modsi3+8
	lds	r25, __profc___modsi3+9
	lds	r18, __profc___modsi3+10
	lds	r19, __profc___modsi3+11
	lds	r20, __profc___modsi3+12
	lds	r21, __profc___modsi3+13
	lds	r22, __profc___modsi3+14
	lds	r23, __profc___modsi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___modsi3+15, r23
	sts	__profc___modsi3+14, r22
	sts	__profc___modsi3+13, r21
	sts	__profc___modsi3+12, r20
	sts	__profc___modsi3+11, r19
	sts	__profc___modsi3+10, r18
	sts	__profc___modsi3+9, r25
	sts	__profc___modsi3+8, r24
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
	breq	.LBB126_7
	rjmp	.LBB126_8
.LBB126_6:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB126_5
.LBB126_7:
	lds	r24, __profc___modsi3+16
	lds	r25, __profc___modsi3+17
	lds	r18, __profc___modsi3+18
	lds	r19, __profc___modsi3+19
	lds	r20, __profc___modsi3+20
	lds	r21, __profc___modsi3+21
	lds	r22, __profc___modsi3+22
	lds	r23, __profc___modsi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___modsi3+23, r23
	sts	__profc___modsi3+22, r22
	sts	__profc___modsi3+21, r21
	sts	__profc___modsi3+20, r20
	sts	__profc___modsi3+19, r19
	sts	__profc___modsi3+18, r18
	sts	__profc___modsi3+17, r25
	sts	__profc___modsi3+16, r24
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
	brne	.LBB126_9
	rjmp	.LBB126_10
.LBB126_9:
	lds	r24, __profc___modsi3+24
	lds	r25, __profc___modsi3+25
	lds	r18, __profc___modsi3+26
	lds	r19, __profc___modsi3+27
	lds	r20, __profc___modsi3+28
	lds	r21, __profc___modsi3+29
	lds	r22, __profc___modsi3+30
	lds	r23, __profc___modsi3+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___modsi3+31, r23
	sts	__profc___modsi3+30, r22
	sts	__profc___modsi3+29, r21
	sts	__profc___modsi3+28, r20
	sts	__profc___modsi3+27, r19
	sts	__profc___modsi3+26, r18
	sts	__profc___modsi3+25, r25
	sts	__profc___modsi3+24, r24
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
	lds	r24, __profc___udivmodhi4
	lds	r25, __profc___udivmodhi4+1
	lds	r18, __profc___udivmodhi4+2
	lds	r19, __profc___udivmodhi4+3
	lds	r20, __profc___udivmodhi4+4
	lds	r21, __profc___udivmodhi4+5
	lds	r22, __profc___udivmodhi4+6
	lds	r23, __profc___udivmodhi4+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+7, r23
	sts	__profc___udivmodhi4+6, r22
	sts	__profc___udivmodhi4+5, r21
	sts	__profc___udivmodhi4+4, r20
	sts	__profc___udivmodhi4+3, r19
	sts	__profc___udivmodhi4+2, r18
	sts	__profc___udivmodhi4+1, r25
	sts	__profc___udivmodhi4, r24
	ldi	r24, 1
	ldi	r25, 0
	std	Y+10, r25
	std	Y+9, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB127_1
.LBB127_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r20, Y+15
	ldd	r21, Y+16
	mov	r24, r1
	cp	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brlo	.LBB127_2
	rjmp	.LBB127_8
.LBB127_2:                              ;   in Loop: Header=BB127_1 Depth=1
	lds	r24, __profc___udivmodhi4+32
	lds	r25, __profc___udivmodhi4+33
	lds	r18, __profc___udivmodhi4+34
	lds	r19, __profc___udivmodhi4+35
	lds	r20, __profc___udivmodhi4+36
	lds	r21, __profc___udivmodhi4+37
	lds	r22, __profc___udivmodhi4+38
	lds	r23, __profc___udivmodhi4+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+39, r23
	sts	__profc___udivmodhi4+38, r22
	sts	__profc___udivmodhi4+37, r21
	sts	__profc___udivmodhi4+36, r20
	sts	__profc___udivmodhi4+35, r19
	sts	__profc___udivmodhi4+34, r18
	sts	__profc___udivmodhi4+33, r25
	sts	__profc___udivmodhi4+32, r24
	ldd	r20, Y+9
	ldd	r21, Y+10
	mov	r24, r1
	mov	r18, r20
	mov	r25, r21
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB127_3
	rjmp	.LBB127_8
.LBB127_3:                              ;   in Loop: Header=BB127_1 Depth=1
	lds	r24, __profc___udivmodhi4+40
	lds	r25, __profc___udivmodhi4+41
	lds	r18, __profc___udivmodhi4+42
	lds	r19, __profc___udivmodhi4+43
	lds	r20, __profc___udivmodhi4+44
	lds	r21, __profc___udivmodhi4+45
	lds	r22, __profc___udivmodhi4+46
	lds	r23, __profc___udivmodhi4+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+47, r23
	sts	__profc___udivmodhi4+46, r22
	sts	__profc___udivmodhi4+45, r21
	sts	__profc___udivmodhi4+44, r20
	sts	__profc___udivmodhi4+43, r19
	sts	__profc___udivmodhi4+42, r18
	sts	__profc___udivmodhi4+41, r25
	sts	__profc___udivmodhi4+40, r24
	rjmp	.LBB127_4
.LBB127_4:                              ;   in Loop: Header=BB127_1 Depth=1
	lds	r24, __profc___udivmodhi4+16
	lds	r25, __profc___udivmodhi4+17
	lds	r18, __profc___udivmodhi4+18
	lds	r19, __profc___udivmodhi4+19
	lds	r20, __profc___udivmodhi4+20
	lds	r21, __profc___udivmodhi4+21
	lds	r22, __profc___udivmodhi4+22
	lds	r23, __profc___udivmodhi4+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+23, r23
	sts	__profc___udivmodhi4+22, r22
	sts	__profc___udivmodhi4+21, r21
	sts	__profc___udivmodhi4+20, r20
	sts	__profc___udivmodhi4+19, r19
	sts	__profc___udivmodhi4+18, r18
	sts	__profc___udivmodhi4+17, r25
	sts	__profc___udivmodhi4+16, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	andi	r24, 0
	andi	r25, 128
                                        ; kill: def $r25 killed $r25 killed $r25r24
	std	Y+3, r25                        ; 1-byte Folded Spill
	mov	r18, r1
	std	Y+4, r18                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r18, r1
	cpc	r25, r1
	std	Y+5, r24                        ; 1-byte Folded Spill
	breq	.LBB127_5
	rjmp	.LBB127_6
.LBB127_5:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r25, Y+3                        ; 1-byte Folded Reload
	ldd	r18, Y+4                        ; 1-byte Folded Reload
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	cp	r18, r1
	cpc	r25, r1
	std	Y+6, r24                        ; 1-byte Folded Spill
	breq	.LBB127_7
	rjmp	.LBB127_8
.LBB127_6:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	std	Y+5, r24                        ; 1-byte Folded Spill
	rjmp	.LBB127_5
.LBB127_7:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	lds	r18, __profc___udivmodhi4+24
	lds	r19, __profc___udivmodhi4+25
	lds	r20, __profc___udivmodhi4+26
	lds	r21, __profc___udivmodhi4+27
	lds	r22, __profc___udivmodhi4+28
	lds	r23, __profc___udivmodhi4+29
	lds	r30, __profc___udivmodhi4+30
	lds	r31, __profc___udivmodhi4+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc___udivmodhi4+31, r31
	sts	__profc___udivmodhi4+30, r30
	sts	__profc___udivmodhi4+29, r23
	sts	__profc___udivmodhi4+28, r22
	sts	__profc___udivmodhi4+27, r21
	sts	__profc___udivmodhi4+26, r20
	sts	__profc___udivmodhi4+25, r19
	sts	__profc___udivmodhi4+24, r18
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB127_8
.LBB127_8:                              ;   in Loop: Header=BB127_1 Depth=1
	ldd	r24, Y+6                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB127_9
	rjmp	.LBB127_10
.LBB127_9:                              ;   in Loop: Header=BB127_1 Depth=1
	lds	r24, __profc___udivmodhi4+8
	lds	r25, __profc___udivmodhi4+9
	lds	r18, __profc___udivmodhi4+10
	lds	r19, __profc___udivmodhi4+11
	lds	r20, __profc___udivmodhi4+12
	lds	r21, __profc___udivmodhi4+13
	lds	r22, __profc___udivmodhi4+14
	lds	r23, __profc___udivmodhi4+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+15, r23
	sts	__profc___udivmodhi4+14, r22
	sts	__profc___udivmodhi4+13, r21
	sts	__profc___udivmodhi4+12, r20
	sts	__profc___udivmodhi4+11, r19
	sts	__profc___udivmodhi4+10, r18
	sts	__profc___udivmodhi4+9, r25
	sts	__profc___udivmodhi4+8, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	lsl	r24
	rol	r25
	std	Y+14, r25
	std	Y+13, r24
	ldd	r24, Y+9
	ldd	r25, Y+10
	lsl	r24
	rol	r25
	std	Y+10, r25
	std	Y+9, r24
	rjmp	.LBB127_1
.LBB127_10:
	rjmp	.LBB127_11
.LBB127_11:                             ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+9
	ldd	r19, Y+10
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB127_12
	rjmp	.LBB127_15
.LBB127_12:                             ;   in Loop: Header=BB127_11 Depth=1
	lds	r24, __profc___udivmodhi4+48
	lds	r25, __profc___udivmodhi4+49
	lds	r18, __profc___udivmodhi4+50
	lds	r19, __profc___udivmodhi4+51
	lds	r20, __profc___udivmodhi4+52
	lds	r21, __profc___udivmodhi4+53
	lds	r22, __profc___udivmodhi4+54
	lds	r23, __profc___udivmodhi4+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+55, r23
	sts	__profc___udivmodhi4+54, r22
	sts	__profc___udivmodhi4+53, r21
	sts	__profc___udivmodhi4+52, r20
	sts	__profc___udivmodhi4+51, r19
	sts	__profc___udivmodhi4+50, r18
	sts	__profc___udivmodhi4+49, r25
	sts	__profc___udivmodhi4+48, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	ldd	r18, Y+13
	ldd	r19, Y+14
	cp	r24, r18
	cpc	r25, r19
	brsh	.LBB127_13
	rjmp	.LBB127_14
.LBB127_13:                             ;   in Loop: Header=BB127_11 Depth=1
	lds	r24, __profc___udivmodhi4+56
	lds	r25, __profc___udivmodhi4+57
	lds	r18, __profc___udivmodhi4+58
	lds	r19, __profc___udivmodhi4+59
	lds	r20, __profc___udivmodhi4+60
	lds	r21, __profc___udivmodhi4+61
	lds	r22, __profc___udivmodhi4+62
	lds	r23, __profc___udivmodhi4+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+63, r23
	sts	__profc___udivmodhi4+62, r22
	sts	__profc___udivmodhi4+61, r21
	sts	__profc___udivmodhi4+60, r20
	sts	__profc___udivmodhi4+59, r19
	sts	__profc___udivmodhi4+58, r18
	sts	__profc___udivmodhi4+57, r25
	sts	__profc___udivmodhi4+56, r24
	ldd	r18, Y+13
	ldd	r19, Y+14
	ldd	r24, Y+15
	ldd	r25, Y+16
	sub	r24, r18
	sbc	r25, r19
	std	Y+16, r25
	std	Y+15, r24
	ldd	r18, Y+9
	ldd	r19, Y+10
	ldd	r24, Y+7
	ldd	r25, Y+8
	or	r24, r18
	or	r25, r19
	std	Y+8, r25
	std	Y+7, r24
	rjmp	.LBB127_14
.LBB127_14:                             ;   in Loop: Header=BB127_11 Depth=1
	ldd	r24, Y+9
	ldd	r25, Y+10
	lsr	r25
	ror	r24
	std	Y+10, r25
	std	Y+9, r24
	ldd	r24, Y+13
	ldd	r25, Y+14
	lsr	r25
	ror	r24
	std	Y+14, r25
	std	Y+13, r24
	rjmp	.LBB127_11
.LBB127_15:
	ldd	r18, Y+11
	ldd	r19, Y+12
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB127_16
	rjmp	.LBB127_17
.LBB127_16:
	lds	r24, __profc___udivmodhi4+64
	lds	r25, __profc___udivmodhi4+65
	lds	r18, __profc___udivmodhi4+66
	lds	r19, __profc___udivmodhi4+67
	lds	r20, __profc___udivmodhi4+68
	lds	r21, __profc___udivmodhi4+69
	lds	r22, __profc___udivmodhi4+70
	lds	r23, __profc___udivmodhi4+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodhi4+71, r23
	sts	__profc___udivmodhi4+70, r22
	sts	__profc___udivmodhi4+69, r21
	sts	__profc___udivmodhi4+68, r20
	sts	__profc___udivmodhi4+67, r19
	sts	__profc___udivmodhi4+66, r18
	sts	__profc___udivmodhi4+65, r25
	sts	__profc___udivmodhi4+64, r24
	ldd	r24, Y+15
	ldd	r25, Y+16
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB127_18
.LBB127_17:
	ldd	r24, Y+7
	ldd	r25, Y+8
	std	Y+18, r25
	std	Y+17, r24
	rjmp	.LBB127_18
.LBB127_18:
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
	sbiw	r28, 40
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
                                        ; kill: def $r31r30 killed $r21r20
                                        ; kill: def $r31r30 killed $r19r18
                                        ; kill: def $r31r30 killed $r25r24
                                        ; kill: def $r31r30 killed $r23r22
	std	Y+36, r25
	std	Y+35, r24
	std	Y+34, r23
	std	Y+33, r22
	std	Y+32, r21
	std	Y+31, r20
	std	Y+30, r19
	std	Y+29, r18
	std	Y+28, r17
	std	Y+27, r16
	lds	r24, __profc___udivmodsi4_libgcc
	lds	r25, __profc___udivmodsi4_libgcc+1
	lds	r18, __profc___udivmodsi4_libgcc+2
	lds	r19, __profc___udivmodsi4_libgcc+3
	lds	r20, __profc___udivmodsi4_libgcc+4
	lds	r21, __profc___udivmodsi4_libgcc+5
	lds	r22, __profc___udivmodsi4_libgcc+6
	lds	r23, __profc___udivmodsi4_libgcc+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+7, r23
	sts	__profc___udivmodsi4_libgcc+6, r22
	sts	__profc___udivmodsi4_libgcc+5, r21
	sts	__profc___udivmodsi4_libgcc+4, r20
	sts	__profc___udivmodsi4_libgcc+3, r19
	sts	__profc___udivmodsi4_libgcc+2, r18
	sts	__profc___udivmodsi4_libgcc+1, r25
	sts	__profc___udivmodsi4_libgcc, r24
	ldi	r24, 0
	ldi	r25, 0
	std	Y+26, r25
	std	Y+25, r24
	ldi	r18, 1
	ldi	r19, 0
	std	Y+24, r19
	std	Y+23, r18
	std	Y+22, r25
	std	Y+21, r24
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB128_1
.LBB128_1:                              ; =>This Inner Loop Header: Depth=1
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r30, Y+33
	ldd	r31, Y+34
	ldd	r20, Y+35
	ldd	r21, Y+36
	mov	r24, r1
	std	Y+17, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+18, r24                       ; 1-byte Folded Spill
	brsh	.LBB128_2
	rjmp	.LBB128_3
.LBB128_2:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+17                       ; 1-byte Folded Reload
	ldd	r25, Y+18                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB128_4
	rjmp	.LBB128_14
.LBB128_3:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+17                       ; 1-byte Folded Reload
	std	Y+18, r24                       ; 1-byte Folded Spill
	rjmp	.LBB128_2
.LBB128_4:                              ;   in Loop: Header=BB128_1 Depth=1
	lds	r24, __profc___udivmodsi4_libgcc+32
	lds	r25, __profc___udivmodsi4_libgcc+33
	lds	r18, __profc___udivmodsi4_libgcc+34
	lds	r19, __profc___udivmodsi4_libgcc+35
	lds	r20, __profc___udivmodsi4_libgcc+36
	lds	r21, __profc___udivmodsi4_libgcc+37
	lds	r22, __profc___udivmodsi4_libgcc+38
	lds	r23, __profc___udivmodsi4_libgcc+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+39, r23
	sts	__profc___udivmodsi4_libgcc+38, r22
	sts	__profc___udivmodsi4_libgcc+37, r21
	sts	__profc___udivmodsi4_libgcc+36, r20
	sts	__profc___udivmodsi4_libgcc+35, r19
	sts	__profc___udivmodsi4_libgcc+34, r18
	sts	__profc___udivmodsi4_libgcc+33, r25
	sts	__profc___udivmodsi4_libgcc+32, r24
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
	mov	r22, r24
                                        ; kill: def $r25 killed $r25 killed $r25r24
	ldi	r20, 0
	ldi	r21, 0
	mov	r24, r1
	std	Y+14, r24                       ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+15, r24                       ; 1-byte Folded Spill
	breq	.LBB128_5
	rjmp	.LBB128_6
.LBB128_5:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	ldd	r25, Y+15                       ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB128_7
	rjmp	.LBB128_14
.LBB128_6:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+14                       ; 1-byte Folded Reload
	std	Y+15, r24                       ; 1-byte Folded Spill
	rjmp	.LBB128_5
.LBB128_7:                              ;   in Loop: Header=BB128_1 Depth=1
	lds	r24, __profc___udivmodsi4_libgcc+40
	lds	r25, __profc___udivmodsi4_libgcc+41
	lds	r18, __profc___udivmodsi4_libgcc+42
	lds	r19, __profc___udivmodsi4_libgcc+43
	lds	r20, __profc___udivmodsi4_libgcc+44
	lds	r21, __profc___udivmodsi4_libgcc+45
	lds	r22, __profc___udivmodsi4_libgcc+46
	lds	r23, __profc___udivmodsi4_libgcc+47
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+47, r23
	sts	__profc___udivmodsi4_libgcc+46, r22
	sts	__profc___udivmodsi4_libgcc+45, r21
	sts	__profc___udivmodsi4_libgcc+44, r20
	sts	__profc___udivmodsi4_libgcc+43, r19
	sts	__profc___udivmodsi4_libgcc+42, r18
	sts	__profc___udivmodsi4_libgcc+41, r25
	sts	__profc___udivmodsi4_libgcc+40, r24
	rjmp	.LBB128_8
.LBB128_8:                              ;   in Loop: Header=BB128_1 Depth=1
	lds	r24, __profc___udivmodsi4_libgcc+16
	lds	r25, __profc___udivmodsi4_libgcc+17
	lds	r18, __profc___udivmodsi4_libgcc+18
	lds	r19, __profc___udivmodsi4_libgcc+19
	lds	r20, __profc___udivmodsi4_libgcc+20
	lds	r21, __profc___udivmodsi4_libgcc+21
	lds	r22, __profc___udivmodsi4_libgcc+22
	lds	r23, __profc___udivmodsi4_libgcc+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+23, r23
	sts	__profc___udivmodsi4_libgcc+22, r22
	sts	__profc___udivmodsi4_libgcc+21, r21
	sts	__profc___udivmodsi4_libgcc+20, r20
	sts	__profc___udivmodsi4_libgcc+19, r19
	sts	__profc___udivmodsi4_libgcc+18, r18
	sts	__profc___udivmodsi4_libgcc+17, r25
	sts	__profc___udivmodsi4_libgcc+16, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	andi	r18, 0
	andi	r19, 128
	std	Y+8, r19                        ; 2-byte Folded Spill
	std	Y+7, r18                        ; 2-byte Folded Spill
	ldi	r20, 0
	ldi	r21, 0
	std	Y+10, r21                       ; 2-byte Folded Spill
	std	Y+9, r20                        ; 2-byte Folded Spill
	mov	r25, r1
	std	Y+11, r25                       ; 1-byte Folded Spill
	ldi	r24, 1
	std	Y+12, r24                       ; 1-byte Folded Spill
	cp	r25, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+13, r24                       ; 1-byte Folded Spill
	breq	.LBB128_9
	rjmp	.LBB128_12
.LBB128_9:                              ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+12                       ; 1-byte Folded Reload
	ldd	r18, Y+7                        ; 2-byte Folded Reload
	ldd	r19, Y+8                        ; 2-byte Folded Reload
	ldd	r20, Y+9                        ; 2-byte Folded Reload
	ldd	r21, Y+10                       ; 2-byte Folded Reload
	ldd	r25, Y+11                       ; 1-byte Folded Reload
	ldd	r22, Y+13                       ; 1-byte Folded Reload
	std	Y+5, r22                        ; 1-byte Folded Spill
	cp	r25, r1
	cpc	r25, r1
	cpc	r18, r20
	cpc	r19, r21
	std	Y+6, r24                        ; 1-byte Folded Spill
	brne	.LBB128_10
	rjmp	.LBB128_11
.LBB128_10:                             ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	ldd	r25, Y+6                        ; 1-byte Folded Reload
	andi	r25, 1
	cpi	r25, 0
	std	Y+16, r24                       ; 1-byte Folded Spill
	breq	.LBB128_13
	rjmp	.LBB128_14
.LBB128_11:                             ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_10
.LBB128_12:                             ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+11                       ; 1-byte Folded Reload
	std	Y+13, r24                       ; 1-byte Folded Spill
	rjmp	.LBB128_9
.LBB128_13:                             ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	lds	r18, __profc___udivmodsi4_libgcc+24
	lds	r19, __profc___udivmodsi4_libgcc+25
	lds	r20, __profc___udivmodsi4_libgcc+26
	lds	r21, __profc___udivmodsi4_libgcc+27
	lds	r22, __profc___udivmodsi4_libgcc+28
	lds	r23, __profc___udivmodsi4_libgcc+29
	lds	r30, __profc___udivmodsi4_libgcc+30
	lds	r31, __profc___udivmodsi4_libgcc+31
	subi	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sbci	r30, 255
	sbci	r31, 255
	sts	__profc___udivmodsi4_libgcc+31, r31
	sts	__profc___udivmodsi4_libgcc+30, r30
	sts	__profc___udivmodsi4_libgcc+29, r23
	sts	__profc___udivmodsi4_libgcc+28, r22
	sts	__profc___udivmodsi4_libgcc+27, r21
	sts	__profc___udivmodsi4_libgcc+26, r20
	sts	__profc___udivmodsi4_libgcc+25, r19
	sts	__profc___udivmodsi4_libgcc+24, r18
	std	Y+16, r24                       ; 1-byte Folded Spill
	rjmp	.LBB128_14
.LBB128_14:                             ;   in Loop: Header=BB128_1 Depth=1
	ldd	r24, Y+16                       ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB128_15
	rjmp	.LBB128_16
.LBB128_15:                             ;   in Loop: Header=BB128_1 Depth=1
	lds	r24, __profc___udivmodsi4_libgcc+8
	lds	r25, __profc___udivmodsi4_libgcc+9
	lds	r18, __profc___udivmodsi4_libgcc+10
	lds	r19, __profc___udivmodsi4_libgcc+11
	lds	r20, __profc___udivmodsi4_libgcc+12
	lds	r21, __profc___udivmodsi4_libgcc+13
	lds	r22, __profc___udivmodsi4_libgcc+14
	lds	r23, __profc___udivmodsi4_libgcc+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+15, r23
	sts	__profc___udivmodsi4_libgcc+14, r22
	sts	__profc___udivmodsi4_libgcc+13, r21
	sts	__profc___udivmodsi4_libgcc+12, r20
	sts	__profc___udivmodsi4_libgcc+11, r19
	sts	__profc___udivmodsi4_libgcc+10, r18
	sts	__profc___udivmodsi4_libgcc+9, r25
	sts	__profc___udivmodsi4_libgcc+8, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r24, Y+29
	ldd	r25, Y+30
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
	std	Y+32, r19
	std	Y+31, r18
	std	Y+30, r25
	std	Y+29, r24
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	rjmp	.LBB128_1
.LBB128_16:
	rjmp	.LBB128_17
.LBB128_17:                             ; =>This Inner Loop Header: Depth=1
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	breq	.LBB128_18
	rjmp	.LBB128_19
.LBB128_18:                             ;   in Loop: Header=BB128_17 Depth=1
	ldd	r24, Y+4                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB128_20
	rjmp	.LBB128_25
.LBB128_19:                             ;   in Loop: Header=BB128_17 Depth=1
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_18
.LBB128_20:                             ;   in Loop: Header=BB128_17 Depth=1
	lds	r24, __profc___udivmodsi4_libgcc+48
	lds	r25, __profc___udivmodsi4_libgcc+49
	lds	r18, __profc___udivmodsi4_libgcc+50
	lds	r19, __profc___udivmodsi4_libgcc+51
	lds	r20, __profc___udivmodsi4_libgcc+52
	lds	r21, __profc___udivmodsi4_libgcc+53
	lds	r22, __profc___udivmodsi4_libgcc+54
	lds	r23, __profc___udivmodsi4_libgcc+55
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+55, r23
	sts	__profc___udivmodsi4_libgcc+54, r22
	sts	__profc___udivmodsi4_libgcc+53, r21
	sts	__profc___udivmodsi4_libgcc+52, r20
	sts	__profc___udivmodsi4_libgcc+51, r19
	sts	__profc___udivmodsi4_libgcc+50, r18
	sts	__profc___udivmodsi4_libgcc+49, r25
	sts	__profc___udivmodsi4_libgcc+48, r24
	ldd	r22, Y+33
	ldd	r23, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	ldd	r30, Y+29
	ldd	r31, Y+30
	ldd	r20, Y+31
	ldd	r21, Y+32
	mov	r24, r1
	std	Y+1, r24                        ; 1-byte Folded Spill
	ldi	r24, 1
	cp	r22, r30
	cpc	r23, r31
	cpc	r18, r20
	cpc	r19, r21
	std	Y+2, r24                        ; 1-byte Folded Spill
	brlo	.LBB128_21
	rjmp	.LBB128_22
.LBB128_21:                             ;   in Loop: Header=BB128_17 Depth=1
	ldd	r24, Y+2                        ; 1-byte Folded Reload
	andi	r24, 1
	cpi	r24, 0
	breq	.LBB128_23
	rjmp	.LBB128_24
.LBB128_22:                             ;   in Loop: Header=BB128_17 Depth=1
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB128_21
.LBB128_23:                             ;   in Loop: Header=BB128_17 Depth=1
	lds	r24, __profc___udivmodsi4_libgcc+56
	lds	r25, __profc___udivmodsi4_libgcc+57
	lds	r18, __profc___udivmodsi4_libgcc+58
	lds	r19, __profc___udivmodsi4_libgcc+59
	lds	r20, __profc___udivmodsi4_libgcc+60
	lds	r21, __profc___udivmodsi4_libgcc+61
	lds	r22, __profc___udivmodsi4_libgcc+62
	lds	r23, __profc___udivmodsi4_libgcc+63
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+63, r23
	sts	__profc___udivmodsi4_libgcc+62, r22
	sts	__profc___udivmodsi4_libgcc+61, r21
	sts	__profc___udivmodsi4_libgcc+60, r20
	sts	__profc___udivmodsi4_libgcc+59, r19
	sts	__profc___udivmodsi4_libgcc+58, r18
	sts	__profc___udivmodsi4_libgcc+57, r25
	sts	__profc___udivmodsi4_libgcc+56, r24
	ldd	r22, Y+29
	ldd	r23, Y+30
	ldd	r20, Y+31
	ldd	r21, Y+32
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	sub	r24, r22
	sbc	r25, r23
	sbc	r18, r20
	sbc	r19, r21
	std	Y+36, r19
	std	Y+35, r18
	std	Y+34, r25
	std	Y+33, r24
	ldd	r20, Y+25
	ldd	r21, Y+26
	ldd	r22, Y+23
	ldd	r23, Y+24
	ldd	r18, Y+21
	ldd	r19, Y+22
	ldd	r24, Y+19
	ldd	r25, Y+20
	or	r24, r22
	or	r25, r23
	or	r18, r20
	or	r19, r21
	std	Y+22, r19
	std	Y+21, r18
	std	Y+20, r25
	std	Y+19, r24
	rjmp	.LBB128_24
.LBB128_24:                             ;   in Loop: Header=BB128_17 Depth=1
	ldd	r18, Y+25
	ldd	r19, Y+26
	ldd	r24, Y+23
	ldd	r25, Y+24
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
	std	Y+26, r19
	std	Y+25, r18
	std	Y+24, r25
	std	Y+23, r24
	ldd	r18, Y+31
	ldd	r19, Y+32
	ldd	r24, Y+29
	ldd	r25, Y+30
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
	std	Y+32, r19
	std	Y+31, r18
	std	Y+30, r25
	std	Y+29, r24
	rjmp	.LBB128_17
.LBB128_25:
	ldd	r18, Y+27
	ldd	r19, Y+28
	mov	r25, r18
	mov	r24, r19
	cp	r25, r1
	cpc	r24, r1
	brne	.LBB128_26
	rjmp	.LBB128_27
.LBB128_26:
	lds	r24, __profc___udivmodsi4_libgcc+64
	lds	r25, __profc___udivmodsi4_libgcc+65
	lds	r18, __profc___udivmodsi4_libgcc+66
	lds	r19, __profc___udivmodsi4_libgcc+67
	lds	r20, __profc___udivmodsi4_libgcc+68
	lds	r21, __profc___udivmodsi4_libgcc+69
	lds	r22, __profc___udivmodsi4_libgcc+70
	lds	r23, __profc___udivmodsi4_libgcc+71
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___udivmodsi4_libgcc+71, r23
	sts	__profc___udivmodsi4_libgcc+70, r22
	sts	__profc___udivmodsi4_libgcc+69, r21
	sts	__profc___udivmodsi4_libgcc+68, r20
	sts	__profc___udivmodsi4_libgcc+67, r19
	sts	__profc___udivmodsi4_libgcc+66, r18
	sts	__profc___udivmodsi4_libgcc+65, r25
	sts	__profc___udivmodsi4_libgcc+64, r24
	ldd	r24, Y+33
	ldd	r25, Y+34
	ldd	r18, Y+35
	ldd	r19, Y+36
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	rjmp	.LBB128_28
.LBB128_27:
	ldd	r24, Y+19
	ldd	r25, Y+20
	ldd	r18, Y+21
	ldd	r19, Y+22
	std	Y+40, r19
	std	Y+39, r18
	std	Y+38, r25
	std	Y+37, r24
	rjmp	.LBB128_28
.LBB128_28:
	ldd	r22, Y+37
	ldd	r23, Y+38
	ldd	r24, Y+39
	ldd	r25, Y+40
	adiw	r28, 40
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
	lds	r24, __profc___ashldi3
	lds	r25, __profc___ashldi3+1
	lds	r18, __profc___ashldi3+2
	lds	r19, __profc___ashldi3+3
	lds	r20, __profc___ashldi3+4
	lds	r21, __profc___ashldi3+5
	lds	r22, __profc___ashldi3+6
	lds	r23, __profc___ashldi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ashldi3+7, r23
	sts	__profc___ashldi3+6, r22
	sts	__profc___ashldi3+5, r21
	sts	__profc___ashldi3+4, r20
	sts	__profc___ashldi3+3, r19
	sts	__profc___ashldi3+2, r18
	sts	__profc___ashldi3+1, r25
	sts	__profc___ashldi3, r24
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
	lds	r24, __profc___ashldi3+8
	lds	r25, __profc___ashldi3+9
	lds	r18, __profc___ashldi3+10
	lds	r19, __profc___ashldi3+11
	lds	r20, __profc___ashldi3+12
	lds	r21, __profc___ashldi3+13
	lds	r22, __profc___ashldi3+14
	lds	r23, __profc___ashldi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ashldi3+15, r23
	sts	__profc___ashldi3+14, r22
	sts	__profc___ashldi3+13, r21
	sts	__profc___ashldi3+12, r20
	sts	__profc___ashldi3+11, r19
	sts	__profc___ashldi3+10, r18
	sts	__profc___ashldi3+9, r25
	sts	__profc___ashldi3+8, r24
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
	breq	.LBB129_5
	rjmp	.LBB129_6
.LBB129_5:
	lds	r24, __profc___ashldi3+16
	lds	r25, __profc___ashldi3+17
	lds	r18, __profc___ashldi3+18
	lds	r19, __profc___ashldi3+19
	lds	r20, __profc___ashldi3+20
	lds	r21, __profc___ashldi3+21
	lds	r22, __profc___ashldi3+22
	lds	r23, __profc___ashldi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ashldi3+23, r23
	sts	__profc___ashldi3+22, r22
	sts	__profc___ashldi3+21, r21
	sts	__profc___ashldi3+20, r20
	sts	__profc___ashldi3+19, r19
	sts	__profc___ashldi3+18, r18
	sts	__profc___ashldi3+17, r25
	sts	__profc___ashldi3+16, r24
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
	lds	r24, __profc___ashrdi3
	lds	r25, __profc___ashrdi3+1
	lds	r18, __profc___ashrdi3+2
	lds	r19, __profc___ashrdi3+3
	lds	r20, __profc___ashrdi3+4
	lds	r21, __profc___ashrdi3+5
	lds	r22, __profc___ashrdi3+6
	lds	r23, __profc___ashrdi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ashrdi3+7, r23
	sts	__profc___ashrdi3+6, r22
	sts	__profc___ashrdi3+5, r21
	sts	__profc___ashrdi3+4, r20
	sts	__profc___ashrdi3+3, r19
	sts	__profc___ashrdi3+2, r18
	sts	__profc___ashrdi3+1, r25
	sts	__profc___ashrdi3, r24
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
	lds	r24, __profc___ashrdi3+8
	lds	r25, __profc___ashrdi3+9
	lds	r18, __profc___ashrdi3+10
	lds	r19, __profc___ashrdi3+11
	lds	r20, __profc___ashrdi3+12
	lds	r21, __profc___ashrdi3+13
	lds	r22, __profc___ashrdi3+14
	lds	r23, __profc___ashrdi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ashrdi3+15, r23
	sts	__profc___ashrdi3+14, r22
	sts	__profc___ashrdi3+13, r21
	sts	__profc___ashrdi3+12, r20
	sts	__profc___ashrdi3+11, r19
	sts	__profc___ashrdi3+10, r18
	sts	__profc___ashrdi3+9, r25
	sts	__profc___ashrdi3+8, r24
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
	breq	.LBB130_5
	rjmp	.LBB130_6
.LBB130_5:
	lds	r24, __profc___ashrdi3+16
	lds	r25, __profc___ashrdi3+17
	lds	r18, __profc___ashrdi3+18
	lds	r19, __profc___ashrdi3+19
	lds	r20, __profc___ashrdi3+20
	lds	r21, __profc___ashrdi3+21
	lds	r22, __profc___ashrdi3+22
	lds	r23, __profc___ashrdi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ashrdi3+23, r23
	sts	__profc___ashrdi3+22, r22
	sts	__profc___ashrdi3+21, r21
	sts	__profc___ashrdi3+20, r20
	sts	__profc___ashrdi3+19, r19
	sts	__profc___ashrdi3+18, r18
	sts	__profc___ashrdi3+17, r25
	sts	__profc___ashrdi3+16, r24
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
	lds	r24, __profc___bswapdi2
	lds	r25, __profc___bswapdi2+1
	lds	r18, __profc___bswapdi2+2
	lds	r19, __profc___bswapdi2+3
	lds	r20, __profc___bswapdi2+4
	lds	r21, __profc___bswapdi2+5
	lds	r22, __profc___bswapdi2+6
	lds	r23, __profc___bswapdi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___bswapdi2+7, r23
	sts	__profc___bswapdi2+6, r22
	sts	__profc___bswapdi2+5, r21
	sts	__profc___bswapdi2+4, r20
	sts	__profc___bswapdi2+3, r19
	sts	__profc___bswapdi2+2, r18
	sts	__profc___bswapdi2+1, r25
	sts	__profc___bswapdi2, r24
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
	lds	r24, __profc___bswapsi2
	lds	r25, __profc___bswapsi2+1
	lds	r18, __profc___bswapsi2+2
	lds	r19, __profc___bswapsi2+3
	lds	r20, __profc___bswapsi2+4
	lds	r21, __profc___bswapsi2+5
	lds	r22, __profc___bswapsi2+6
	lds	r23, __profc___bswapsi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___bswapsi2+7, r23
	sts	__profc___bswapsi2+6, r22
	sts	__profc___bswapsi2+5, r21
	sts	__profc___bswapsi2+4, r20
	sts	__profc___bswapsi2+3, r19
	sts	__profc___bswapsi2+2, r18
	sts	__profc___bswapsi2+1, r25
	sts	__profc___bswapsi2, r24
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
	lds	r24, __profc___clzsi2
	lds	r25, __profc___clzsi2+1
	lds	r18, __profc___clzsi2+2
	lds	r19, __profc___clzsi2+3
	lds	r20, __profc___clzsi2+4
	lds	r21, __profc___clzsi2+5
	lds	r22, __profc___clzsi2+6
	lds	r23, __profc___clzsi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___clzsi2+7, r23
	sts	__profc___clzsi2+6, r22
	sts	__profc___clzsi2+5, r21
	sts	__profc___clzsi2+4, r20
	sts	__profc___clzsi2+3, r19
	sts	__profc___clzsi2+2, r18
	sts	__profc___clzsi2+1, r25
	sts	__profc___clzsi2, r24
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
	lds	r24, __profc___cmpdi2
	lds	r25, __profc___cmpdi2+1
	lds	r18, __profc___cmpdi2+2
	lds	r19, __profc___cmpdi2+3
	lds	r20, __profc___cmpdi2+4
	lds	r21, __profc___cmpdi2+5
	lds	r22, __profc___cmpdi2+6
	lds	r23, __profc___cmpdi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmpdi2+7, r23
	sts	__profc___cmpdi2+6, r22
	sts	__profc___cmpdi2+5, r21
	sts	__profc___cmpdi2+4, r20
	sts	__profc___cmpdi2+3, r19
	sts	__profc___cmpdi2+2, r18
	sts	__profc___cmpdi2+1, r25
	sts	__profc___cmpdi2, r24
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
	breq	.LBB134_3
	rjmp	.LBB134_4
.LBB134_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_1
.LBB134_3:
	lds	r24, __profc___cmpdi2+8
	lds	r25, __profc___cmpdi2+9
	lds	r18, __profc___cmpdi2+10
	lds	r19, __profc___cmpdi2+11
	lds	r20, __profc___cmpdi2+12
	lds	r21, __profc___cmpdi2+13
	lds	r22, __profc___cmpdi2+14
	lds	r23, __profc___cmpdi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmpdi2+15, r23
	sts	__profc___cmpdi2+14, r22
	sts	__profc___cmpdi2+13, r21
	sts	__profc___cmpdi2+12, r20
	sts	__profc___cmpdi2+11, r19
	sts	__profc___cmpdi2+10, r18
	sts	__profc___cmpdi2+9, r25
	sts	__profc___cmpdi2+8, r24
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
	breq	.LBB134_7
	rjmp	.LBB134_8
.LBB134_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_5
.LBB134_7:
	lds	r24, __profc___cmpdi2+16
	lds	r25, __profc___cmpdi2+17
	lds	r18, __profc___cmpdi2+18
	lds	r19, __profc___cmpdi2+19
	lds	r20, __profc___cmpdi2+20
	lds	r21, __profc___cmpdi2+21
	lds	r22, __profc___cmpdi2+22
	lds	r23, __profc___cmpdi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmpdi2+23, r23
	sts	__profc___cmpdi2+22, r22
	sts	__profc___cmpdi2+21, r21
	sts	__profc___cmpdi2+20, r20
	sts	__profc___cmpdi2+19, r19
	sts	__profc___cmpdi2+18, r18
	sts	__profc___cmpdi2+17, r25
	sts	__profc___cmpdi2+16, r24
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
	breq	.LBB134_11
	rjmp	.LBB134_12
.LBB134_10:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_9
.LBB134_11:
	lds	r24, __profc___cmpdi2+24
	lds	r25, __profc___cmpdi2+25
	lds	r18, __profc___cmpdi2+26
	lds	r19, __profc___cmpdi2+27
	lds	r20, __profc___cmpdi2+28
	lds	r21, __profc___cmpdi2+29
	lds	r22, __profc___cmpdi2+30
	lds	r23, __profc___cmpdi2+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmpdi2+31, r23
	sts	__profc___cmpdi2+30, r22
	sts	__profc___cmpdi2+29, r21
	sts	__profc___cmpdi2+28, r20
	sts	__profc___cmpdi2+27, r19
	sts	__profc___cmpdi2+26, r18
	sts	__profc___cmpdi2+25, r25
	sts	__profc___cmpdi2+24, r24
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
	breq	.LBB134_15
	rjmp	.LBB134_16
.LBB134_14:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB134_13
.LBB134_15:
	lds	r24, __profc___cmpdi2+32
	lds	r25, __profc___cmpdi2+33
	lds	r18, __profc___cmpdi2+34
	lds	r19, __profc___cmpdi2+35
	lds	r20, __profc___cmpdi2+36
	lds	r21, __profc___cmpdi2+37
	lds	r22, __profc___cmpdi2+38
	lds	r23, __profc___cmpdi2+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___cmpdi2+39, r23
	sts	__profc___cmpdi2+38, r22
	sts	__profc___cmpdi2+37, r21
	sts	__profc___cmpdi2+36, r20
	sts	__profc___cmpdi2+35, r19
	sts	__profc___cmpdi2+34, r18
	sts	__profc___cmpdi2+33, r25
	sts	__profc___cmpdi2+32, r24
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
	lds	r24, __profc___aeabi_lcmp
	lds	r25, __profc___aeabi_lcmp+1
	lds	r18, __profc___aeabi_lcmp+2
	lds	r19, __profc___aeabi_lcmp+3
	lds	r20, __profc___aeabi_lcmp+4
	lds	r21, __profc___aeabi_lcmp+5
	lds	r22, __profc___aeabi_lcmp+6
	lds	r23, __profc___aeabi_lcmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___aeabi_lcmp+7, r23
	sts	__profc___aeabi_lcmp+6, r22
	sts	__profc___aeabi_lcmp+5, r21
	sts	__profc___aeabi_lcmp+4, r20
	sts	__profc___aeabi_lcmp+3, r19
	sts	__profc___aeabi_lcmp+2, r18
	sts	__profc___aeabi_lcmp+1, r25
	sts	__profc___aeabi_lcmp, r24
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
	lds	r24, __profc___ctzsi2
	lds	r25, __profc___ctzsi2+1
	lds	r18, __profc___ctzsi2+2
	lds	r19, __profc___ctzsi2+3
	lds	r20, __profc___ctzsi2+4
	lds	r21, __profc___ctzsi2+5
	lds	r22, __profc___ctzsi2+6
	lds	r23, __profc___ctzsi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ctzsi2+7, r23
	sts	__profc___ctzsi2+6, r22
	sts	__profc___ctzsi2+5, r21
	sts	__profc___ctzsi2+4, r20
	sts	__profc___ctzsi2+3, r19
	sts	__profc___ctzsi2+2, r18
	sts	__profc___ctzsi2+1, r25
	sts	__profc___ctzsi2, r24
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
	lds	r24, __profc___lshrdi3
	lds	r25, __profc___lshrdi3+1
	lds	r18, __profc___lshrdi3+2
	lds	r19, __profc___lshrdi3+3
	lds	r20, __profc___lshrdi3+4
	lds	r21, __profc___lshrdi3+5
	lds	r22, __profc___lshrdi3+6
	lds	r23, __profc___lshrdi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___lshrdi3+7, r23
	sts	__profc___lshrdi3+6, r22
	sts	__profc___lshrdi3+5, r21
	sts	__profc___lshrdi3+4, r20
	sts	__profc___lshrdi3+3, r19
	sts	__profc___lshrdi3+2, r18
	sts	__profc___lshrdi3+1, r25
	sts	__profc___lshrdi3, r24
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
	lds	r24, __profc___lshrdi3+8
	lds	r25, __profc___lshrdi3+9
	lds	r18, __profc___lshrdi3+10
	lds	r19, __profc___lshrdi3+11
	lds	r20, __profc___lshrdi3+12
	lds	r21, __profc___lshrdi3+13
	lds	r22, __profc___lshrdi3+14
	lds	r23, __profc___lshrdi3+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___lshrdi3+15, r23
	sts	__profc___lshrdi3+14, r22
	sts	__profc___lshrdi3+13, r21
	sts	__profc___lshrdi3+12, r20
	sts	__profc___lshrdi3+11, r19
	sts	__profc___lshrdi3+10, r18
	sts	__profc___lshrdi3+9, r25
	sts	__profc___lshrdi3+8, r24
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
	breq	.LBB137_5
	rjmp	.LBB137_6
.LBB137_5:
	lds	r24, __profc___lshrdi3+16
	lds	r25, __profc___lshrdi3+17
	lds	r18, __profc___lshrdi3+18
	lds	r19, __profc___lshrdi3+19
	lds	r20, __profc___lshrdi3+20
	lds	r21, __profc___lshrdi3+21
	lds	r22, __profc___lshrdi3+22
	lds	r23, __profc___lshrdi3+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___lshrdi3+23, r23
	sts	__profc___lshrdi3+22, r22
	sts	__profc___lshrdi3+21, r21
	sts	__profc___lshrdi3+20, r20
	sts	__profc___lshrdi3+19, r19
	sts	__profc___lshrdi3+18, r18
	sts	__profc___lshrdi3+17, r25
	sts	__profc___lshrdi3+16, r24
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
	lds	r24, __profc___muldsi3
	lds	r25, __profc___muldsi3+1
	lds	r18, __profc___muldsi3+2
	lds	r19, __profc___muldsi3+3
	lds	r20, __profc___muldsi3+4
	lds	r21, __profc___muldsi3+5
	lds	r22, __profc___muldsi3+6
	lds	r23, __profc___muldsi3+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___muldsi3+7, r23
	sts	__profc___muldsi3+6, r22
	sts	__profc___muldsi3+5, r21
	sts	__profc___muldsi3+4, r20
	sts	__profc___muldsi3+3, r19
	sts	__profc___muldsi3+2, r18
	sts	__profc___muldsi3+1, r25
	sts	__profc___muldsi3, r24
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
	lds	r24, __profc___muldi3_compiler_rt
	lds	r25, __profc___muldi3_compiler_rt+1
	lds	r18, __profc___muldi3_compiler_rt+2
	lds	r19, __profc___muldi3_compiler_rt+3
	lds	r20, __profc___muldi3_compiler_rt+4
	lds	r21, __profc___muldi3_compiler_rt+5
	lds	r22, __profc___muldi3_compiler_rt+6
	lds	r23, __profc___muldi3_compiler_rt+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___muldi3_compiler_rt+7, r23
	sts	__profc___muldi3_compiler_rt+6, r22
	sts	__profc___muldi3_compiler_rt+5, r21
	sts	__profc___muldi3_compiler_rt+4, r20
	sts	__profc___muldi3_compiler_rt+3, r19
	sts	__profc___muldi3_compiler_rt+2, r18
	sts	__profc___muldi3_compiler_rt+1, r25
	sts	__profc___muldi3_compiler_rt, r24
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
	lds	r24, __profc___negdi2
	lds	r25, __profc___negdi2+1
	lds	r18, __profc___negdi2+2
	lds	r19, __profc___negdi2+3
	lds	r20, __profc___negdi2+4
	lds	r21, __profc___negdi2+5
	lds	r22, __profc___negdi2+6
	lds	r23, __profc___negdi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___negdi2+7, r23
	sts	__profc___negdi2+6, r22
	sts	__profc___negdi2+5, r21
	sts	__profc___negdi2+4, r20
	sts	__profc___negdi2+3, r19
	sts	__profc___negdi2+2, r18
	sts	__profc___negdi2+1, r25
	sts	__profc___negdi2, r24
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
	lds	r24, __profc___paritydi2
	lds	r25, __profc___paritydi2+1
	lds	r18, __profc___paritydi2+2
	lds	r19, __profc___paritydi2+3
	lds	r20, __profc___paritydi2+4
	lds	r21, __profc___paritydi2+5
	lds	r22, __profc___paritydi2+6
	lds	r23, __profc___paritydi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___paritydi2+7, r23
	sts	__profc___paritydi2+6, r22
	sts	__profc___paritydi2+5, r21
	sts	__profc___paritydi2+4, r20
	sts	__profc___paritydi2+3, r19
	sts	__profc___paritydi2+2, r18
	sts	__profc___paritydi2+1, r25
	sts	__profc___paritydi2, r24
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
	lds	r24, __profc___paritysi2
	lds	r25, __profc___paritysi2+1
	lds	r18, __profc___paritysi2+2
	lds	r19, __profc___paritysi2+3
	lds	r20, __profc___paritysi2+4
	lds	r21, __profc___paritysi2+5
	lds	r22, __profc___paritysi2+6
	lds	r23, __profc___paritysi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___paritysi2+7, r23
	sts	__profc___paritysi2+6, r22
	sts	__profc___paritysi2+5, r21
	sts	__profc___paritysi2+4, r20
	sts	__profc___paritysi2+3, r19
	sts	__profc___paritysi2+2, r18
	sts	__profc___paritysi2+1, r25
	sts	__profc___paritysi2, r24
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
	lds	r24, __profc___popcountdi2
	lds	r25, __profc___popcountdi2+1
	lds	r18, __profc___popcountdi2+2
	lds	r19, __profc___popcountdi2+3
	lds	r20, __profc___popcountdi2+4
	lds	r21, __profc___popcountdi2+5
	lds	r22, __profc___popcountdi2+6
	lds	r23, __profc___popcountdi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___popcountdi2+7, r23
	sts	__profc___popcountdi2+6, r22
	sts	__profc___popcountdi2+5, r21
	sts	__profc___popcountdi2+4, r20
	sts	__profc___popcountdi2+3, r19
	sts	__profc___popcountdi2+2, r18
	sts	__profc___popcountdi2+1, r25
	sts	__profc___popcountdi2, r24
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
	lds	r24, __profc___popcountsi2
	lds	r25, __profc___popcountsi2+1
	lds	r18, __profc___popcountsi2+2
	lds	r19, __profc___popcountsi2+3
	lds	r20, __profc___popcountsi2+4
	lds	r21, __profc___popcountsi2+5
	lds	r22, __profc___popcountsi2+6
	lds	r23, __profc___popcountsi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___popcountsi2+7, r23
	sts	__profc___popcountsi2+6, r22
	sts	__profc___popcountsi2+5, r21
	sts	__profc___popcountsi2+4, r20
	sts	__profc___popcountsi2+3, r19
	sts	__profc___popcountsi2+2, r18
	sts	__profc___popcountsi2+1, r25
	sts	__profc___popcountsi2, r24
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
	lds	r24, __profc___powidf2
	lds	r25, __profc___powidf2+1
	lds	r18, __profc___powidf2+2
	lds	r19, __profc___powidf2+3
	lds	r20, __profc___powidf2+4
	lds	r21, __profc___powidf2+5
	lds	r22, __profc___powidf2+6
	lds	r23, __profc___powidf2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powidf2+7, r23
	sts	__profc___powidf2+6, r22
	sts	__profc___powidf2+5, r21
	sts	__profc___powidf2+4, r20
	sts	__profc___powidf2+3, r19
	sts	__profc___powidf2+2, r18
	sts	__profc___powidf2+1, r25
	sts	__profc___powidf2, r24
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
	lds	r24, __profc___powidf2+8
	lds	r25, __profc___powidf2+9
	lds	r18, __profc___powidf2+10
	lds	r19, __profc___powidf2+11
	lds	r20, __profc___powidf2+12
	lds	r21, __profc___powidf2+13
	lds	r22, __profc___powidf2+14
	lds	r23, __profc___powidf2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powidf2+15, r23
	sts	__profc___powidf2+14, r22
	sts	__profc___powidf2+13, r21
	sts	__profc___powidf2+12, r20
	sts	__profc___powidf2+11, r19
	sts	__profc___powidf2+10, r18
	sts	__profc___powidf2+9, r25
	sts	__profc___powidf2+8, r24
	ldd	r24, Y+11
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB145_2
	rjmp	.LBB145_3
.LBB145_2:                              ;   in Loop: Header=BB145_1 Depth=1
	lds	r24, __profc___powidf2+16
	lds	r25, __profc___powidf2+17
	lds	r18, __profc___powidf2+18
	lds	r19, __profc___powidf2+19
	lds	r20, __profc___powidf2+20
	lds	r21, __profc___powidf2+21
	lds	r22, __profc___powidf2+22
	lds	r23, __profc___powidf2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powidf2+23, r23
	sts	__profc___powidf2+22, r22
	sts	__profc___powidf2+21, r21
	sts	__profc___powidf2+20, r20
	sts	__profc___powidf2+19, r19
	sts	__profc___powidf2+18, r18
	sts	__profc___powidf2+17, r25
	sts	__profc___powidf2+16, r24
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
	breq	.LBB145_4
	rjmp	.LBB145_5
.LBB145_4:
	lds	r24, __profc___powidf2+24
	lds	r25, __profc___powidf2+25
	lds	r18, __profc___powidf2+26
	lds	r19, __profc___powidf2+27
	lds	r20, __profc___powidf2+28
	lds	r21, __profc___powidf2+29
	lds	r22, __profc___powidf2+30
	lds	r23, __profc___powidf2+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powidf2+31, r23
	sts	__profc___powidf2+30, r22
	sts	__profc___powidf2+29, r21
	sts	__profc___powidf2+28, r20
	sts	__profc___powidf2+27, r19
	sts	__profc___powidf2+26, r18
	sts	__profc___powidf2+25, r25
	sts	__profc___powidf2+24, r24
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
	brne	.LBB145_7
	rjmp	.LBB145_8
.LBB145_7:
	lds	r24, __profc___powidf2+32
	lds	r25, __profc___powidf2+33
	lds	r18, __profc___powidf2+34
	lds	r19, __profc___powidf2+35
	lds	r20, __profc___powidf2+36
	lds	r21, __profc___powidf2+37
	lds	r22, __profc___powidf2+38
	lds	r23, __profc___powidf2+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powidf2+39, r23
	sts	__profc___powidf2+38, r22
	sts	__profc___powidf2+37, r21
	sts	__profc___powidf2+36, r20
	sts	__profc___powidf2+35, r19
	sts	__profc___powidf2+34, r18
	sts	__profc___powidf2+33, r25
	sts	__profc___powidf2+32, r24
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
	lds	r24, __profc___powisf2
	lds	r25, __profc___powisf2+1
	lds	r18, __profc___powisf2+2
	lds	r19, __profc___powisf2+3
	lds	r20, __profc___powisf2+4
	lds	r21, __profc___powisf2+5
	lds	r22, __profc___powisf2+6
	lds	r23, __profc___powisf2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powisf2+7, r23
	sts	__profc___powisf2+6, r22
	sts	__profc___powisf2+5, r21
	sts	__profc___powisf2+4, r20
	sts	__profc___powisf2+3, r19
	sts	__profc___powisf2+2, r18
	sts	__profc___powisf2+1, r25
	sts	__profc___powisf2, r24
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
	lds	r24, __profc___powisf2+8
	lds	r25, __profc___powisf2+9
	lds	r18, __profc___powisf2+10
	lds	r19, __profc___powisf2+11
	lds	r20, __profc___powisf2+12
	lds	r21, __profc___powisf2+13
	lds	r22, __profc___powisf2+14
	lds	r23, __profc___powisf2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powisf2+15, r23
	sts	__profc___powisf2+14, r22
	sts	__profc___powisf2+13, r21
	sts	__profc___powisf2+12, r20
	sts	__profc___powisf2+11, r19
	sts	__profc___powisf2+10, r18
	sts	__profc___powisf2+9, r25
	sts	__profc___powisf2+8, r24
	ldd	r24, Y+11
	andi	r24, 1
	cpi	r24, 0
	brne	.LBB146_2
	rjmp	.LBB146_3
.LBB146_2:                              ;   in Loop: Header=BB146_1 Depth=1
	lds	r24, __profc___powisf2+16
	lds	r25, __profc___powisf2+17
	lds	r18, __profc___powisf2+18
	lds	r19, __profc___powisf2+19
	lds	r20, __profc___powisf2+20
	lds	r21, __profc___powisf2+21
	lds	r22, __profc___powisf2+22
	lds	r23, __profc___powisf2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powisf2+23, r23
	sts	__profc___powisf2+22, r22
	sts	__profc___powisf2+21, r21
	sts	__profc___powisf2+20, r20
	sts	__profc___powisf2+19, r19
	sts	__profc___powisf2+18, r18
	sts	__profc___powisf2+17, r25
	sts	__profc___powisf2+16, r24
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
	breq	.LBB146_4
	rjmp	.LBB146_5
.LBB146_4:
	lds	r24, __profc___powisf2+24
	lds	r25, __profc___powisf2+25
	lds	r18, __profc___powisf2+26
	lds	r19, __profc___powisf2+27
	lds	r20, __profc___powisf2+28
	lds	r21, __profc___powisf2+29
	lds	r22, __profc___powisf2+30
	lds	r23, __profc___powisf2+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powisf2+31, r23
	sts	__profc___powisf2+30, r22
	sts	__profc___powisf2+29, r21
	sts	__profc___powisf2+28, r20
	sts	__profc___powisf2+27, r19
	sts	__profc___powisf2+26, r18
	sts	__profc___powisf2+25, r25
	sts	__profc___powisf2+24, r24
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
	brne	.LBB146_7
	rjmp	.LBB146_8
.LBB146_7:
	lds	r24, __profc___powisf2+32
	lds	r25, __profc___powisf2+33
	lds	r18, __profc___powisf2+34
	lds	r19, __profc___powisf2+35
	lds	r20, __profc___powisf2+36
	lds	r21, __profc___powisf2+37
	lds	r22, __profc___powisf2+38
	lds	r23, __profc___powisf2+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___powisf2+39, r23
	sts	__profc___powisf2+38, r22
	sts	__profc___powisf2+37, r21
	sts	__profc___powisf2+36, r20
	sts	__profc___powisf2+35, r19
	sts	__profc___powisf2+34, r18
	sts	__profc___powisf2+33, r25
	sts	__profc___powisf2+32, r24
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
	lds	r24, __profc___ucmpdi2
	lds	r25, __profc___ucmpdi2+1
	lds	r18, __profc___ucmpdi2+2
	lds	r19, __profc___ucmpdi2+3
	lds	r20, __profc___ucmpdi2+4
	lds	r21, __profc___ucmpdi2+5
	lds	r22, __profc___ucmpdi2+6
	lds	r23, __profc___ucmpdi2+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ucmpdi2+7, r23
	sts	__profc___ucmpdi2+6, r22
	sts	__profc___ucmpdi2+5, r21
	sts	__profc___ucmpdi2+4, r20
	sts	__profc___ucmpdi2+3, r19
	sts	__profc___ucmpdi2+2, r18
	sts	__profc___ucmpdi2+1, r25
	sts	__profc___ucmpdi2, r24
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
	breq	.LBB147_3
	rjmp	.LBB147_4
.LBB147_2:
	ldd	r24, Y+7                        ; 1-byte Folded Reload
	std	Y+8, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_1
.LBB147_3:
	lds	r24, __profc___ucmpdi2+8
	lds	r25, __profc___ucmpdi2+9
	lds	r18, __profc___ucmpdi2+10
	lds	r19, __profc___ucmpdi2+11
	lds	r20, __profc___ucmpdi2+12
	lds	r21, __profc___ucmpdi2+13
	lds	r22, __profc___ucmpdi2+14
	lds	r23, __profc___ucmpdi2+15
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ucmpdi2+15, r23
	sts	__profc___ucmpdi2+14, r22
	sts	__profc___ucmpdi2+13, r21
	sts	__profc___ucmpdi2+12, r20
	sts	__profc___ucmpdi2+11, r19
	sts	__profc___ucmpdi2+10, r18
	sts	__profc___ucmpdi2+9, r25
	sts	__profc___ucmpdi2+8, r24
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
	breq	.LBB147_7
	rjmp	.LBB147_8
.LBB147_6:
	ldd	r24, Y+5                        ; 1-byte Folded Reload
	std	Y+6, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_5
.LBB147_7:
	lds	r24, __profc___ucmpdi2+16
	lds	r25, __profc___ucmpdi2+17
	lds	r18, __profc___ucmpdi2+18
	lds	r19, __profc___ucmpdi2+19
	lds	r20, __profc___ucmpdi2+20
	lds	r21, __profc___ucmpdi2+21
	lds	r22, __profc___ucmpdi2+22
	lds	r23, __profc___ucmpdi2+23
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ucmpdi2+23, r23
	sts	__profc___ucmpdi2+22, r22
	sts	__profc___ucmpdi2+21, r21
	sts	__profc___ucmpdi2+20, r20
	sts	__profc___ucmpdi2+19, r19
	sts	__profc___ucmpdi2+18, r18
	sts	__profc___ucmpdi2+17, r25
	sts	__profc___ucmpdi2+16, r24
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
	breq	.LBB147_11
	rjmp	.LBB147_12
.LBB147_10:
	ldd	r24, Y+3                        ; 1-byte Folded Reload
	std	Y+4, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_9
.LBB147_11:
	lds	r24, __profc___ucmpdi2+24
	lds	r25, __profc___ucmpdi2+25
	lds	r18, __profc___ucmpdi2+26
	lds	r19, __profc___ucmpdi2+27
	lds	r20, __profc___ucmpdi2+28
	lds	r21, __profc___ucmpdi2+29
	lds	r22, __profc___ucmpdi2+30
	lds	r23, __profc___ucmpdi2+31
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ucmpdi2+31, r23
	sts	__profc___ucmpdi2+30, r22
	sts	__profc___ucmpdi2+29, r21
	sts	__profc___ucmpdi2+28, r20
	sts	__profc___ucmpdi2+27, r19
	sts	__profc___ucmpdi2+26, r18
	sts	__profc___ucmpdi2+25, r25
	sts	__profc___ucmpdi2+24, r24
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
	breq	.LBB147_15
	rjmp	.LBB147_16
.LBB147_14:
	ldd	r24, Y+1                        ; 1-byte Folded Reload
	std	Y+2, r24                        ; 1-byte Folded Spill
	rjmp	.LBB147_13
.LBB147_15:
	lds	r24, __profc___ucmpdi2+32
	lds	r25, __profc___ucmpdi2+33
	lds	r18, __profc___ucmpdi2+34
	lds	r19, __profc___ucmpdi2+35
	lds	r20, __profc___ucmpdi2+36
	lds	r21, __profc___ucmpdi2+37
	lds	r22, __profc___ucmpdi2+38
	lds	r23, __profc___ucmpdi2+39
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___ucmpdi2+39, r23
	sts	__profc___ucmpdi2+38, r22
	sts	__profc___ucmpdi2+37, r21
	sts	__profc___ucmpdi2+36, r20
	sts	__profc___ucmpdi2+35, r19
	sts	__profc___ucmpdi2+34, r18
	sts	__profc___ucmpdi2+33, r25
	sts	__profc___ucmpdi2+32, r24
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
	lds	r24, __profc___aeabi_ulcmp
	lds	r25, __profc___aeabi_ulcmp+1
	lds	r18, __profc___aeabi_ulcmp+2
	lds	r19, __profc___aeabi_ulcmp+3
	lds	r20, __profc___aeabi_ulcmp+4
	lds	r21, __profc___aeabi_ulcmp+5
	lds	r22, __profc___aeabi_ulcmp+6
	lds	r23, __profc___aeabi_ulcmp+7
	subi	r24, 255
	sbci	r25, 255
	sbci	r18, 255
	sbci	r19, 255
	sbci	r20, 255
	sbci	r21, 255
	sbci	r22, 255
	sbci	r23, 255
	sts	__profc___aeabi_ulcmp+7, r23
	sts	__profc___aeabi_ulcmp+6, r22
	sts	__profc___aeabi_ulcmp+5, r21
	sts	__profc___aeabi_ulcmp+4, r20
	sts	__profc___aeabi_ulcmp+3, r19
	sts	__profc___aeabi_ulcmp+2, r18
	sts	__profc___aeabi_ulcmp+1, r25
	sts	__profc___aeabi_ulcmp, r24
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
	.hidden	__llvm_profile_runtime
	.type	__profc_memmove,@object         ; @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
__profc_memmove:
	.zero	40
	.size	__profc_memmove, 40

	.type	__profd_memmove,@object         ; @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
__profd_memmove:
	.quad	-306081897096246147             ; 0xfbc09422e3668c7d
	.quad	-4061701397412038936            ; 0xc7a1f0194f8c36e8
	.short	__profc_memmove-__profd_memmove
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memmove, 38

	.type	__profc_memccpy,@object         ; @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
__profc_memccpy:
	.zero	40
	.size	__profc_memccpy, 40

	.type	__profd_memccpy,@object         ; @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
__profd_memccpy:
	.quad	-1590863763861247346            ; 0xe9ec1dd5e5026a8e
	.quad	1189690007454808                ; 0x43a044a498458
	.short	__profc_memccpy-__profd_memccpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memccpy, 38

	.type	__profc_memchr,@object          ; @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
__profc_memchr:
	.zero	40
	.size	__profc_memchr, 40

	.type	__profd_memchr,@object          ; @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
__profd_memchr:
	.quad	5708666158622859656             ; 0x4f3941a01e026188
	.quad	4538308109                      ; 0x10e81160d
	.short	__profc_memchr-__profd_memchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memchr, 38

	.type	__profc_memcmp,@object          ; @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
__profc_memcmp:
	.zero	40
	.size	__profc_memcmp, 40

	.type	__profd_memcmp,@object          ; @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
__profd_memcmp:
	.quad	-4679550853048924350            ; 0xbf0ee54adfa48742
	.quad	4538045965                      ; 0x10e7d160d
	.short	__profc_memcmp-__profd_memcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memcmp, 38

	.type	__profc_memcpy,@object          ; @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
__profc_memcpy:
	.zero	16
	.size	__profc_memcpy, 16

	.type	__profd_memcpy,@object          ; @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
__profd_memcpy:
	.quad	3893303423671325810             ; 0x3607cad612bdd472
	.quad	17496                           ; 0x4458
	.short	__profc_memcpy-__profd_memcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memcpy, 38

	.type	__profc_memrchr,@object         ; @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
__profc_memrchr:
	.zero	24
	.size	__profc_memrchr, 24

	.type	__profd_memrchr,@object         ; @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
__profd_memrchr:
	.quad	-548334422562728352             ; 0xf863ecbf75079660
	.quad	9516882138200                   ; 0x8a7d2611458
	.short	__profc_memrchr-__profd_memrchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memrchr, 38

	.type	__profc_memset,@object          ; @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
__profc_memset:
	.zero	16
	.size	__profc_memset, 16

	.type	__profd_memset,@object          ; @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
__profd_memset:
	.quad	-2741574704065975695            ; 0xd9f3f85506f36a71
	.quad	17496                           ; 0x4458
	.short	__profc_memset-__profd_memset
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memset, 38

	.type	__profc_stpcpy,@object          ; @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
__profc_stpcpy:
	.zero	16
	.size	__profc_stpcpy, 16

	.type	__profd_stpcpy,@object          ; @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
__profd_stpcpy:
	.quad	4454833295779690053             ; 0x3dd2bf47a087f645
	.quad	17496                           ; 0x4458
	.short	__profc_stpcpy-__profd_stpcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_stpcpy, 38

	.type	__profc_strchrnul,@object       ; @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
__profc_strchrnul:
	.zero	32
	.size	__profc_strchrnul, 32

	.type	__profd_strchrnul,@object       ; @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
__profd_strchrnul:
	.quad	5039208642683934005             ; 0x45eedd8fc8411535
	.quad	70911064                        ; 0x43a0458
	.short	__profc_strchrnul-__profd_strchrnul
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strchrnul, 38

	.type	__profc_strchr,@object          ; @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
__profc_strchr:
	.zero	24
	.size	__profc_strchr, 24

	.type	__profd_strchr,@object          ; @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
__profd_strchr:
	.quad	-5671522429266412413            ; 0xb14ab4664bea3c83
	.quad	13914928649304                  ; 0xca7d2611458
	.short	__profc_strchr-__profd_strchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strchr, 38

	.type	__profc_strcmp,@object          ; @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
__profc_strcmp:
	.zero	32
	.size	__profc_strcmp, 32

	.type	__profd_strcmp,@object          ; @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
__profd_strcmp:
	.quad	1013198891307352868             ; 0xe0f9b060331c324
	.quad	70906968                        ; 0x439f458
	.short	__profc_strcmp-__profd_strcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strcmp, 38

	.type	__profc_strlen,@object          ; @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
__profc_strlen:
	.zero	16
	.size	__profc_strlen, 16

	.type	__profd_strlen,@object          ; @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
__profd_strlen:
	.quad	2965136410638013299             ; 0x292647db02a7d373
	.quad	17496                           ; 0x4458
	.short	__profc_strlen-__profd_strlen
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strlen, 38

	.type	__profc_strncmp,@object         ; @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
__profc_strncmp:
	.zero	72
	.size	__profc_strncmp, 72

	.type	__profd_strncmp,@object         ; @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
__profd_strncmp:
	.quad	-6058495834680104774            ; 0xabebe6233cb568ba
	.quad	7207353986825238351             ; 0x6405aa43cb36b74f
	.short	__profc_strncmp-__profd_strncmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strncmp, 38

	.type	__profc_swab,@object            ; @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
__profc_swab:
	.zero	16
	.size	__profc_swab, 16

	.type	__profd_swab,@object            ; @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
__profd_swab:
	.quad	-1619950660557759641            ; 0xe984c77503cb9b67
	.quad	18193                           ; 0x4711
	.short	__profc_swab-__profd_swab
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_swab, 38

	.type	__profc_isalpha,@object         ; @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
__profc_isalpha:
	.zero	8
	.size	__profc_isalpha, 8

	.type	__profd_isalpha,@object         ; @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
__profd_isalpha:
	.quad	-1429966999967671460            ; 0xec27bc96fe655b5c
	.quad	1563                            ; 0x61b
	.short	__profc_isalpha-__profd_isalpha
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isalpha, 38

	.type	__profc_isascii,@object         ; @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
__profc_isascii:
	.zero	8
	.size	__profc_isascii, 8

	.type	__profd_isascii,@object         ; @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
__profd_isascii:
	.quad	-4792250000779744687            ; 0xbd7e8203c4a86a51
	.quad	1562                            ; 0x61a
	.short	__profc_isascii-__profd_isascii
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isascii, 38

	.type	__profc_isblank,@object         ; @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
__profc_isblank:
	.zero	24
	.size	__profc_isblank, 24

	.type	__profd_isblank,@object         ; @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
__profd_isblank:
	.quad	2465200613623135234             ; 0x223626e59b14fc02
	.quad	6354911                         ; 0x60f7df
	.short	__profc_isblank-__profd_isblank
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isblank, 38

	.type	__profc_iscntrl,@object         ; @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
__profc_iscntrl:
	.zero	24
	.size	__profc_iscntrl, 24

	.type	__profd_iscntrl,@object         ; @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
__profd_iscntrl:
	.quad	8897732069425577183             ; 0x7b7b182cc8b67cdf
	.quad	6354655                         ; 0x60f6df
	.short	__profc_iscntrl-__profd_iscntrl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_iscntrl, 38

	.type	__profc_isdigit,@object         ; @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
__profc_isdigit:
	.zero	8
	.size	__profc_isdigit, 8

	.type	__profd_isdigit,@object         ; @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
__profd_isdigit:
	.quad	3483985654529092453             ; 0x30599a7e6cc36b65
	.quad	1563                            ; 0x61b
	.short	__profc_isdigit-__profd_isdigit
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isdigit, 38

	.type	__profc_isgraph,@object         ; @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
__profc_isgraph:
	.zero	8
	.size	__profc_isgraph, 8

	.type	__profd_isgraph,@object         ; @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
__profd_isgraph:
	.quad	-127227288456547236             ; 0xfe3bff7489cfb45c
	.quad	1563                            ; 0x61b
	.short	__profc_isgraph-__profd_isgraph
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isgraph, 38

	.type	__profc_islower,@object         ; @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
__profc_islower:
	.zero	8
	.size	__profc_islower, 8

	.type	__profd_islower,@object         ; @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
__profd_islower:
	.quad	7501983819047161697             ; 0x681c66894508cf61
	.quad	1563                            ; 0x61b
	.short	__profc_islower-__profd_islower
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_islower, 38

	.type	__profc_isprint,@object         ; @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
__profc_isprint:
	.zero	8
	.size	__profc_isprint, 8

	.type	__profd_isprint,@object         ; @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
__profd_isprint:
	.quad	-7275761640889424986            ; 0x9b074d56145f63a6
	.quad	1563                            ; 0x61b
	.short	__profc_isprint-__profd_isprint
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isprint, 38

	.type	__profc_isspace,@object         ; @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
__profc_isspace:
	.zero	24
	.size	__profc_isspace, 24

	.type	__profd_isspace,@object         ; @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
__profd_isspace:
	.quad	9032360604355461395             ; 0x7d59641d39d70113
	.quad	6354907                         ; 0x60f7db
	.short	__profc_isspace-__profd_isspace
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isspace, 38

	.type	__profc_isupper,@object         ; @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
__profc_isupper:
	.zero	8
	.size	__profc_isupper, 8

	.type	__profd_isupper,@object         ; @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
__profd_isupper:
	.quad	4174714232255583053             ; 0x39ef9079c45c934d
	.quad	1563                            ; 0x61b
	.short	__profc_isupper-__profd_isupper
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_isupper, 38

	.type	__profc_iswcntrl,@object        ; @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
__profc_iswcntrl:
	.zero	56
	.size	__profc_iswcntrl, 56

	.type	__profd_iswcntrl,@object        ; @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
__profd_iswcntrl:
	.quad	7000259844681188668             ; 0x6125eb3d61a7453c
	.quad	106600273393371                 ; 0x60f3cf6db6db
	.short	__profc_iswcntrl-__profd_iswcntrl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_iswcntrl, 38

	.type	__profc_iswdigit,@object        ; @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
__profc_iswdigit:
	.zero	8
	.size	__profc_iswdigit, 8

	.type	__profd_iswdigit,@object        ; @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
__profd_iswdigit:
	.quad	8583753245428091608             ; 0x771f9e1919590ad8
	.quad	1563                            ; 0x61b
	.short	__profc_iswdigit-__profd_iswdigit
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_iswdigit, 38

	.type	__profc_iswprint,@object        ; @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
__profc_iswprint:
	.zero	80
	.size	__profc_iswprint, 80

	.type	__profd_iswprint,@object        ; @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
__profd_iswprint:
	.quad	-719555261641779946             ; 0xf603a04d49941516
	.quad	-2566119187471392224            ; 0xdc635031e3742220
	.short	__profc_iswprint-__profd_iswprint
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	10                              ; 0xa
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_iswprint, 38

	.type	__profc_iswxdigit,@object       ; @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
__profc_iswxdigit:
	.zero	24
	.size	__profc_iswxdigit, 24

	.type	__profd_iswxdigit,@object       ; @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
__profd_iswxdigit:
	.quad	624771703830219826              ; 0x8aba28df0840c32
	.quad	6354651                         ; 0x60f6db
	.short	__profc_iswxdigit-__profd_iswxdigit
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_iswxdigit, 38

	.type	__profc_toascii,@object         ; @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
__profc_toascii:
	.zero	8
	.size	__profc_toascii, 8

	.type	__profd_toascii,@object         ; @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
__profd_toascii:
	.quad	4548159975983457080             ; 0x3f1e4f66a624a338
	.quad	24                              ; 0x18
	.short	__profc_toascii-__profd_toascii
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_toascii, 38

	.type	__profc_fdim,@object            ; @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
__profc_fdim:
	.zero	32
	.size	__profc_fdim, 32

	.type	__profd_fdim,@object            ; @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
__profd_fdim:
	.quad	-3545869933759497925            ; 0xceca8a150286f93b
	.quad	7369846577040809592             ; 0x6646f46a29a55e78
	.short	__profc_fdim-__profd_fdim
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fdim, 38

	.type	__profc_fdimf,@object           ; @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
__profc_fdimf:
	.zero	32
	.size	__profc_fdimf, 32

	.type	__profd_fdimf,@object           ; @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
__profd_fdimf:
	.quad	-1547869627280940664            ; 0xea84dcc6634da188
	.quad	7369846577040809592             ; 0x6646f46a29a55e78
	.short	__profc_fdimf-__profd_fdimf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fdimf, 38

	.type	__profc_fmax,@object            ; @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
__profc_fmax:
	.zero	48
	.size	__profc_fmax, 48

	.type	__profd_fmax,@object            ; @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
__profd_fmax:
	.quad	-2423801789625842334            ; 0xde5ced1d3b654562
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	__profc_fmax-__profd_fmax
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fmax, 38

	.type	__profc_fmaxf,@object           ; @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
__profc_fmaxf:
	.zero	48
	.size	__profc_fmaxf, 48

	.type	__profd_fmaxf,@object           ; @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
__profd_fmaxf:
	.quad	-5134209104457391460            ; 0xb8bfa0058e3da29c
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	__profc_fmaxf-__profd_fmaxf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fmaxf, 38

	.type	__profc_fmaxl,@object           ; @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
__profc_fmaxl:
	.zero	48
	.size	__profc_fmaxl, 48

	.type	__profd_fmaxl,@object           ; @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
__profd_fmaxl:
	.quad	-3138580006960380340            ; 0xd471861cd1fbc64c
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	__profc_fmaxl-__profd_fmaxl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fmaxl, 38

	.type	__profc_fmin,@object            ; @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
__profc_fmin:
	.zero	48
	.size	__profc_fmin, 48

	.type	__profd_fmin,@object            ; @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
__profd_fmin:
	.quad	965427315610335377              ; 0xd65e3074b69b891
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	__profc_fmin-__profd_fmin
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fmin, 38

	.type	__profc_fminf,@object           ; @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
__profc_fminf:
	.zero	48
	.size	__profc_fminf, 48

	.type	__profd_fminf,@object           ; @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
__profd_fminf:
	.quad	7710199602704325723             ; 0x6b0021b0328c9c5b
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	__profc_fminf-__profd_fminf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fminf, 38

	.type	__profc_fminl,@object           ; @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
__profc_fminl:
	.zero	48
	.size	__profc_fminl, 48

	.type	__profd_fminl,@object           ; @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
__profd_fminl:
	.quad	2487418697363824514             ; 0x2285162058091f82
	.quad	3977842549302548673             ; 0x373422b91b9cd8c1
	.short	__profc_fminl-__profd_fminl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_fminl, 38

	.type	__profc_l64a,@object            ; @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
__profc_l64a:
	.zero	16
	.size	__profc_l64a, 16

	.type	__profd_l64a,@object            ; @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
__profd_l64a:
	.quad	-6158745991357604691            ; 0xaa87bd26bb44dcad
	.quad	17496                           ; 0x4458
	.short	__profc_l64a-__profd_l64a
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_l64a, 38

	.type	__profc_srand,@object           ; @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
__profc_srand:
	.zero	8
	.size	__profc_srand, 8

	.type	__profd_srand,@object           ; @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
__profd_srand:
	.quad	-2085616837322687880            ; 0xe30e668959ceba78
	.quad	0                               ; 0x0
	.short	__profc_srand-__profd_srand
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_srand, 38

	.type	__profc_rand,@object            ; @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
__profc_rand:
	.zero	8
	.size	__profc_rand, 8

	.type	__profd_rand,@object            ; @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
__profd_rand:
	.quad	7206085285791387956             ; 0x6401286350c3d134
	.quad	24                              ; 0x18
	.short	__profc_rand-__profd_rand
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rand, 38

	.type	__profc_lsearch,@object         ; @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
__profc_lsearch:
	.zero	24
	.size	__profc_lsearch, 24

	.type	__profd_lsearch,@object         ; @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
__profd_lsearch:
	.quad	-7032153342590886098            ; 0x9e68c5caf8cb5f2e
	.quad	1245367951758424                ; 0x46ca7d2611458
	.short	__profc_lsearch-__profd_lsearch
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_lsearch, 38

	.type	__profc_lfind,@object           ; @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
__profc_lfind:
	.zero	24
	.size	__profc_lfind, 24

	.type	__profd_lfind,@object           ; @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
__profd_lfind:
	.quad	-6350214982902907667            ; 0xa7df811e30b57ced
	.quad	1245367951758424                ; 0x46ca7d2611458
	.short	__profc_lfind-__profd_lfind
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_lfind, 38

	.type	__profc_abs,@object             ; @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
__profc_abs:
	.zero	16
	.size	__profc_abs, 16

	.type	__profd_abs,@object             ; @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
__profd_abs:
	.quad	-238465663743841031             ; 0xfcb0ccbe056bacf9
	.quad	99164                           ; 0x1835c
	.short	__profc_abs-__profd_abs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_abs, 38

	.type	__profc_atoi,@object            ; @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
__profc_atoi:
	.zero	56
	.size	__profc_atoi, 56

	.type	__profd_atoi,@object            ; @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
__profd_atoi:
	.quad	-6544211519801369139            ; 0xa52e4a4ba3385dcd
	.quad	638206505195021                 ; 0x244720809160d
	.short	__profc_atoi-__profd_atoi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_atoi, 38

	.type	__profc_atol,@object            ; @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
__profc_atol:
	.zero	56
	.size	__profc_atol, 56

	.type	__profd_atol,@object            ; @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
__profd_atol:
	.quad	8236175749196770609             ; 0x724cc634ee8f6d31
	.quad	638206505195021                 ; 0x244720809160d
	.short	__profc_atol-__profd_atol
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_atol, 38

	.type	__profc_atoll,@object           ; @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
__profc_atoll:
	.zero	56
	.size	__profc_atoll, 56

	.type	__profd_atoll,@object           ; @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
__profd_atoll:
	.quad	3653807471789013357             ; 0x32b4ee8971a6f96d
	.quad	638206505195021                 ; 0x244720809160d
	.short	__profc_atoll-__profd_atoll
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_atoll, 38

	.type	__profc_bsearch,@object         ; @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
__profc_bsearch:
	.zero	32
	.size	__profc_bsearch, 32

	.type	__profd_bsearch,@object         ; @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
__profd_bsearch:
	.quad	8750110911118262334             ; 0x796ea3837a79403e
	.quad	-852542619444921222             ; 0xf42b29012c1abc7a
	.short	__profc_bsearch-__profd_bsearch
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_bsearch, 38

	.type	__profc_bsearch_r,@object       ; @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
__profc_bsearch_r:
	.zero	32
	.size	__profc_bsearch_r, 32

	.type	__profd_bsearch_r,@object       ; @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
__profd_bsearch_r:
	.quad	1417097008757763708             ; 0x13aa8a38ab466e7c
	.quad	1259382983000112142             ; 0x117a3a2689e4bc0e
	.short	__profc_bsearch_r-__profd_bsearch_r
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_bsearch_r, 38

	.type	__profc_div,@object             ; @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
__profc_div:
	.zero	8
	.size	__profc_div, 8

	.type	__profd_div,@object             ; @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
__profd_div:
	.quad	5497092892325669176             ; 0x4c4998dc58656938
	.quad	24                              ; 0x18
	.short	__profc_div-__profd_div
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_div, 38

	.type	__profc_imaxabs,@object         ; @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
__profc_imaxabs:
	.zero	16
	.size	__profc_imaxabs, 16

	.type	__profd_imaxabs,@object         ; @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
__profd_imaxabs:
	.quad	8946668544180752025             ; 0x7c28f3a3b30e0e99
	.quad	99164                           ; 0x1835c
	.short	__profc_imaxabs-__profd_imaxabs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_imaxabs, 38

	.type	__profc_imaxdiv,@object         ; @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
__profc_imaxdiv:
	.zero	8
	.size	__profc_imaxdiv, 8

	.type	__profd_imaxdiv,@object         ; @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
__profd_imaxdiv:
	.quad	-3928426486442246988            ; 0xc97b6cec9d5fbcb4
	.quad	24                              ; 0x18
	.short	__profc_imaxdiv-__profd_imaxdiv
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_imaxdiv, 38

	.type	__profc_labs,@object            ; @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
__profc_labs:
	.zero	16
	.size	__profc_labs, 16

	.type	__profd_labs,@object            ; @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
__profd_labs:
	.quad	-7118441263952323418            ; 0x9d363762b3a39ca6
	.quad	99164                           ; 0x1835c
	.short	__profc_labs-__profd_labs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_labs, 38

	.type	__profc_ldiv,@object            ; @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
__profc_ldiv:
	.zero	8
	.size	__profc_ldiv, 8

	.type	__profd_ldiv,@object            ; @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
__profd_ldiv:
	.quad	7149836041034155625             ; 0x633951ff74204669
	.quad	24                              ; 0x18
	.short	__profc_ldiv-__profd_ldiv
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_ldiv, 38

	.type	__profc_llabs,@object           ; @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
__profc_llabs:
	.zero	16
	.size	__profc_llabs, 16

	.type	__profd_llabs,@object           ; @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
__profd_llabs:
	.quad	7684789126781046466             ; 0x6aa5dafebb918ec2
	.quad	99164                           ; 0x1835c
	.short	__profc_llabs-__profd_llabs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_llabs, 38

	.type	__profc_lldiv,@object           ; @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
__profc_lldiv:
	.zero	8
	.size	__profc_lldiv, 8

	.type	__profd_lldiv,@object           ; @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
__profd_lldiv:
	.quad	-5329156747615108898            ; 0xb60b082c520680de
	.quad	24                              ; 0x18
	.short	__profc_lldiv-__profd_lldiv
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_lldiv, 38

	.type	__profc_wcschr,@object          ; @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
__profc_wcschr:
	.zero	40
	.size	__profc_wcschr, 40

	.type	__profd_wcschr,@object          ; @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
__profd_wcschr:
	.quad	-2279810736707830048            ; 0xe05c7c36c3687ee0
	.quad	4538308109                      ; 0x10e81160d
	.short	__profc_wcschr-__profd_wcschr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wcschr, 38

	.type	__profc_wcscmp,@object          ; @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
__profc_wcscmp:
	.zero	56
	.size	__profc_wcscmp, 56

	.type	__profd_wcscmp,@object          ; @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
__profd_wcscmp:
	.quad	-3710185595167438704            ; 0xcc82c5dbcd460890
	.quad	1188468208228060                ; 0x438e7d160d6dc
	.short	__profc_wcscmp-__profd_wcscmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wcscmp, 38

	.type	__profc_wcscpy,@object          ; @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
__profc_wcscpy:
	.zero	16
	.size	__profc_wcscpy, 16

	.type	__profd_wcscpy,@object          ; @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
__profd_wcscpy:
	.quad	-8381368184235816342            ; 0x8baf660af6dd0a6a
	.quad	9304                            ; 0x2458
	.short	__profc_wcscpy-__profd_wcscpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wcscpy, 38

	.type	__profc_wcslen,@object          ; @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
__profc_wcslen:
	.zero	16
	.size	__profc_wcslen, 16

	.type	__profd_wcslen,@object          ; @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
__profd_wcslen:
	.quad	3988408974905483574             ; 0x3759acd4c838a136
	.quad	17496                           ; 0x4458
	.short	__profc_wcslen-__profd_wcslen
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wcslen, 38

	.type	__profc_wcsncmp,@object         ; @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
__profc_wcsncmp:
	.zero	80
	.size	__profc_wcsncmp, 80

	.type	__profd_wcsncmp,@object         ; @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
__profd_wcsncmp:
	.quad	-5425166749483878188            ; 0xb4b5ef95c9c0b8d4
	.quad	6710790269995215964             ; 0x5d218431fd366c5c
	.short	__profc_wcsncmp-__profd_wcsncmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	10                              ; 0xa
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wcsncmp, 38

	.type	__profc_wmemchr,@object         ; @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
__profc_wmemchr:
	.zero	40
	.size	__profc_wmemchr, 40

	.type	__profd_wmemchr,@object         ; @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
__profd_wmemchr:
	.quad	-150916099757221660             ; 0xfde7d69b5b1558e4
	.quad	4538308109                      ; 0x10e81160d
	.short	__profc_wmemchr-__profd_wmemchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wmemchr, 38

	.type	__profc_wmemcmp,@object         ; @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
__profc_wmemcmp:
	.zero	48
	.size	__profc_wmemcmp, 48

	.type	__profd_wmemcmp,@object         ; @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
__profd_wmemcmp:
	.quad	5386172057678365784             ; 0x4abf86f3050dc458
	.quad	1189621521503964                ; 0x439f45834d6dc
	.short	__profc_wmemcmp-__profd_wmemcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	6                               ; 0x6
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wmemcmp, 38

	.type	__profc_wmemcpy,@object         ; @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
__profc_wmemcpy:
	.zero	16
	.size	__profc_wmemcpy, 16

	.type	__profd_wmemcpy,@object         ; @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
__profd_wmemcpy:
	.quad	7326050423799855187             ; 0x65ab5c0b9d30b853
	.quad	9304                            ; 0x2458
	.short	__profc_wmemcpy-__profd_wmemcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wmemcpy, 38

	.type	__profc_wmemmove,@object        ; @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
__profc_wmemmove:
	.zero	40
	.size	__profc_wmemmove, 40

	.type	__profd_wmemmove,@object        ; @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
__profd_wmemmove:
	.quad	-4659407939446788683            ; 0xbf56752a69a3adb5
	.quad	-1500206092990891740            ; 0xeb2e3281c166b924
	.short	__profc_wmemmove-__profd_wmemmove
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wmemmove, 38

	.type	__profc_wmemset,@object         ; @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
__profc_wmemset:
	.zero	16
	.size	__profc_wmemset, 16

	.type	__profd_wmemset,@object         ; @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
__profd_wmemset:
	.quad	-8291142148468431281            ; 0x8ceff224f245264f
	.quad	9304                            ; 0x2458
	.short	__profc_wmemset-__profd_wmemset
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_wmemset, 38

	.type	__profc_bcopy,@object           ; @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
__profc_bcopy:
	.zero	40
	.size	__profc_bcopy, 40

	.type	__profd_bcopy,@object           ; @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
__profd_bcopy:
	.quad	-8407331144368071880            ; 0x8b5328de3edcdb38
	.quad	5234109875325077019             ; 0x48a34b333a1d861b
	.short	__profc_bcopy-__profd_bcopy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_bcopy, 38

	.type	__profc_rotl64,@object          ; @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
__profc_rotl64:
	.zero	8
	.size	__profc_rotl64, 8

	.type	__profd_rotl64,@object          ; @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
__profd_rotl64:
	.quad	4714666614722164144             ; 0x416ddc4e84e875b0
	.quad	24                              ; 0x18
	.short	__profc_rotl64-__profd_rotl64
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotl64, 38

	.type	__profc_rotr64,@object          ; @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
__profc_rotr64:
	.zero	8
	.size	__profc_rotr64, 8

	.type	__profd_rotr64,@object          ; @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
__profd_rotr64:
	.quad	-8427642833712987187            ; 0x8b0aff7e8aabc3cd
	.quad	24                              ; 0x18
	.short	__profc_rotr64-__profd_rotr64
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotr64, 38

	.type	__profc_rotl32,@object          ; @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
__profc_rotl32:
	.zero	8
	.size	__profc_rotl32, 8

	.type	__profd_rotl32,@object          ; @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
__profd_rotl32:
	.quad	6417704780586152324             ; 0x5910447ed829f184
	.quad	24                              ; 0x18
	.short	__profc_rotl32-__profd_rotl32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotl32, 38

	.type	__profc_rotr32,@object          ; @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
__profc_rotr32:
	.zero	8
	.size	__profc_rotr32, 8

	.type	__profd_rotr32,@object          ; @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
__profd_rotr32:
	.quad	-5668908084823466940            ; 0xb153fe21cbc1dc44
	.quad	24                              ; 0x18
	.short	__profc_rotr32-__profd_rotr32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotr32, 38

	.type	__profc_rotl_sz,@object         ; @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
__profc_rotl_sz:
	.zero	8
	.size	__profc_rotl_sz, 8

	.type	__profd_rotl_sz,@object         ; @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
__profd_rotl_sz:
	.quad	-3686623714176605670            ; 0xccd67b43b7f8e21a
	.quad	24                              ; 0x18
	.short	__profc_rotl_sz-__profd_rotl_sz
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotl_sz, 38

	.type	__profc_rotr_sz,@object         ; @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
__profc_rotr_sz:
	.zero	8
	.size	__profc_rotr_sz, 8

	.type	__profd_rotr_sz,@object         ; @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
__profd_rotr_sz:
	.quad	3415499704483829380             ; 0x2f664ae29835d684
	.quad	24                              ; 0x18
	.short	__profc_rotr_sz-__profd_rotr_sz
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotr_sz, 38

	.type	__profc_rotl16,@object          ; @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
__profc_rotl16:
	.zero	8
	.size	__profc_rotl16, 8

	.type	__profd_rotl16,@object          ; @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
__profd_rotl16:
	.quad	7327166975465201445             ; 0x65af538b0e939f25
	.quad	24                              ; 0x18
	.short	__profc_rotl16-__profd_rotl16
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotl16, 38

	.type	__profc_rotr16,@object          ; @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
__profc_rotr16:
	.zero	8
	.size	__profc_rotr16, 8

	.type	__profd_rotr16,@object          ; @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
__profd_rotr16:
	.quad	5274763753728838268             ; 0x4933b9afe71d0a7c
	.quad	24                              ; 0x18
	.short	__profc_rotr16-__profd_rotr16
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotr16, 38

	.type	__profc_rotl8,@object           ; @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
__profc_rotl8:
	.zero	8
	.size	__profc_rotl8, 8

	.type	__profd_rotl8,@object           ; @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
__profd_rotl8:
	.quad	4408423234350850624             ; 0x3d2ddd93270fa240
	.quad	24                              ; 0x18
	.short	__profc_rotl8-__profd_rotl8
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotl8, 38

	.type	__profc_rotr8,@object           ; @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
__profc_rotr8:
	.zero	8
	.size	__profc_rotr8, 8

	.type	__profd_rotr8,@object           ; @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
__profd_rotr8:
	.quad	-6535801773217052896            ; 0xa54c2aea59078720
	.quad	24                              ; 0x18
	.short	__profc_rotr8-__profd_rotr8
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_rotr8, 38

	.type	__profc_bswap_16,@object        ; @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
__profc_bswap_16:
	.zero	8
	.size	__profc_bswap_16, 8

	.type	__profd_bswap_16,@object        ; @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
__profd_bswap_16:
	.quad	-8870828063230114195            ; 0x84e47ce04b9a466d
	.quad	24                              ; 0x18
	.short	__profc_bswap_16-__profd_bswap_16
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_bswap_16, 38

	.type	__profc_bswap_32,@object        ; @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
__profc_bswap_32:
	.zero	8
	.size	__profc_bswap_32, 8

	.type	__profd_bswap_32,@object        ; @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
__profd_bswap_32:
	.quad	7304833549461180700             ; 0x655ffb691afd511c
	.quad	24                              ; 0x18
	.short	__profc_bswap_32-__profd_bswap_32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_bswap_32, 38

	.type	__profc_bswap_64,@object        ; @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
__profc_bswap_64:
	.zero	8
	.size	__profc_bswap_64, 8

	.type	__profd_bswap_64,@object        ; @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
__profd_bswap_64:
	.quad	2873856403134720854             ; 0x27e1fd2c1c53ab56
	.quad	24                              ; 0x18
	.short	__profc_bswap_64-__profd_bswap_64
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_bswap_64, 38

	.type	__profc_ffs,@object             ; @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
__profc_ffs:
	.zero	24
	.size	__profc_ffs, 24

	.type	__profd_ffs,@object             ; @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
__profd_ffs:
	.quad	9222170723057548859             ; 0x7ffbbb6955da3e3b
	.quad	19458657686616                  ; 0x11b292611458
	.short	__profc_ffs-__profd_ffs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_ffs, 38

	.type	__profc_libiberty_ffs,@object   ; @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
__profc_libiberty_ffs:
	.zero	24
	.size	__profc_libiberty_ffs, 24

	.type	__profd_libiberty_ffs,@object   ; @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
__profd_libiberty_ffs:
	.quad	65216057573358521               ; 0xe7b1a8a94fbbb9
	.quad	2952352215704664                ; 0xa7d261111a458
	.short	__profc_libiberty_ffs-__profd_libiberty_ffs
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_libiberty_ffs, 38

	.type	__profc_gl_isinff,@object       ; @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
__profc_gl_isinff:
	.zero	24
	.size	__profc_gl_isinff, 24

	.type	__profd_gl_isinff,@object       ; @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
__profd_gl_isinff:
	.quad	6535010584615638394             ; 0x5ab10580b36ed57a
	.quad	6354652                         ; 0x60f6dc
	.short	__profc_gl_isinff-__profd_gl_isinff
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_gl_isinff, 38

	.type	__profc_gl_isinfd,@object       ; @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
__profc_gl_isinfd:
	.zero	24
	.size	__profc_gl_isinfd, 24

	.type	__profd_gl_isinfd,@object       ; @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
__profd_gl_isinfd:
	.quad	-9165907066207032774            ; 0x80cc28161a7caa3a
	.quad	6354652                         ; 0x60f6dc
	.short	__profc_gl_isinfd-__profd_gl_isinfd
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_gl_isinfd, 38

	.type	__profc_gl_isinfl,@object       ; @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
__profc_gl_isinfl:
	.zero	24
	.size	__profc_gl_isinfl, 24

	.type	__profd_gl_isinfl,@object       ; @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
__profd_gl_isinfl:
	.quad	4731159788068304891             ; 0x41a874c2af6c77fb
	.quad	6354652                         ; 0x60f6dc
	.short	__profc_gl_isinfl-__profd_gl_isinfl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_gl_isinfl, 38

	.type	__profc__Qp_itoq,@object        ; @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
__profc__Qp_itoq:
	.zero	8
	.size	__profc__Qp_itoq, 8

	.type	__profd__Qp_itoq,@object        ; @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
__profd__Qp_itoq:
	.quad	-3858125999267273921            ; 0xca752ed84af9a33f
	.quad	0                               ; 0x0
	.short	__profc__Qp_itoq-__profd__Qp_itoq
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd__Qp_itoq, 38

	.type	__profc_ldexpf,@object          ; @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
__profc_ldexpf:
	.zero	64
	.size	__profc_ldexpf, 64

	.type	__profd_ldexpf,@object          ; @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
__profd_ldexpf:
	.quad	-2560632889718296859            ; 0xdc76cdf42028aee5
	.quad	-2048372819454505383            ; 0xe392b7c600d94e59
	.short	__profc_ldexpf-__profd_ldexpf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	8                               ; 0x8
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_ldexpf, 38

	.type	__profc_ldexp,@object           ; @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
__profc_ldexp:
	.zero	64
	.size	__profc_ldexp, 64

	.type	__profd_ldexp,@object           ; @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
__profd_ldexp:
	.quad	-240549059163932437             ; 0xfca965e7b97ab8eb
	.quad	-2048372819454505383            ; 0xe392b7c600d94e59
	.short	__profc_ldexp-__profd_ldexp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	8                               ; 0x8
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_ldexp, 38

	.type	__profc_ldexpl,@object          ; @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
__profc_ldexpl:
	.zero	64
	.size	__profc_ldexpl, 64

	.type	__profd_ldexpl,@object          ; @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
__profd_ldexpl:
	.quad	-5097262943286299417            ; 0xb942e25c0aa874e7
	.quad	-2048372819454505383            ; 0xe392b7c600d94e59
	.short	__profc_ldexpl-__profd_ldexpl
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	8                               ; 0x8
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_ldexpl, 38

	.type	__profc_memxor,@object          ; @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
__profc_memxor:
	.zero	16
	.size	__profc_memxor, 16

	.type	__profd_memxor,@object          ; @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
__profd_memxor:
	.quad	-8368025376422999318            ; 0x8bdecd417eda4aea
	.quad	1164376                         ; 0x11c458
	.short	__profc_memxor-__profd_memxor
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memxor, 38

	.type	__profc_strncat,@object         ; @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
__profc_strncat:
	.zero	40
	.size	__profc_strncat, 40

	.type	__profd_strncat,@object         ; @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
__profd_strncat:
	.quad	-3582483947543505905            ; 0xce4875d49d21540f
	.quad	76123606467028056               ; 0x10e72044a7d2458
	.short	__profc_strncat-__profd_strncat
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strncat, 38

	.type	__profc_strnlen,@object         ; @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
__profc_strnlen:
	.zero	32
	.size	__profc_strnlen, 32

	.type	__profd_strnlen,@object         ; @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
__profd_strnlen:
	.quad	517590790318988421              ; 0x72eda14dbfa1c85
	.quad	4537021528                      ; 0x10e6d7458
	.short	__profc_strnlen-__profd_strnlen
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strnlen, 38

	.type	__profc_strpbrk,@object         ; @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
__profc_strpbrk:
	.zero	32
	.size	__profc_strpbrk, 32

	.type	__profd_strpbrk,@object         ; @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
__profd_strpbrk:
	.quad	-6867074718569872870            ; 0xa0b33fed4193c21a
	.quad	-4444802448421279214            ; 0xc250e3b905102a12
	.short	__profc_strpbrk-__profd_strpbrk
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strpbrk, 38

	.type	__profc_strrchr,@object         ; @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
__profc_strrchr:
	.zero	24
	.size	__profc_strrchr, 24

	.type	__profd_strrchr,@object         ; @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
__profd_strrchr:
	.quad	5307837722043833871             ; 0x49a93a493bd75e0f
	.quad	217420731480                    ; 0x329f491458
	.short	__profc_strrchr-__profd_strrchr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strrchr, 38

	.type	__profc_strstr,@object          ; @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
__profc_strstr:
	.zero	32
	.size	__profc_strstr, 32

	.type	__profd_strstr,@object          ; @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
__profd_strstr:
	.quad	3560562421867190603             ; 0x3169a8a873ff994b
	.quad	-7798267876297541628            ; 0x93c6fcaef9f1f804
	.short	__profc_strstr-__profd_strstr
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_strstr, 38

	.type	__profc_copysign,@object        ; @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
__profc_copysign:
	.zero	56
	.size	__profc_copysign, 56

	.type	__profd_copysign,@object        ; @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
__profd_copysign:
	.quad	-9076603418344796971            ; 0x82096d47ea764cd5
	.quad	4200982705386070127             ; 0x3a4ce3834618a06f
	.short	__profc_copysign-__profd_copysign
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_copysign, 38

	.type	__profc_memmem,@object          ; @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
__profc_memmem:
	.zero	56
	.size	__profc_memmem, 56

	.type	__profd_memmem,@object          ; @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
__profd_memmem:
	.quad	-7485463843177831536            ; 0x981e4a4b585ae390
	.quad	5508063777036862020             ; 0x4c7092d27e7a8244
	.short	__profc_memmem-__profd_memmem
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_memmem, 38

	.type	__profc_mempcpy,@object         ; @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
__profc_mempcpy:
	.zero	8
	.size	__profc_mempcpy, 8

	.type	__profd_mempcpy,@object         ; @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
__profd_mempcpy:
	.quad	-722907995699078206             ; 0xf5f7b7020f111bc2
	.quad	24                              ; 0x18
	.short	__profc_mempcpy-__profd_mempcpy
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_mempcpy, 38

	.type	__profc_frexp,@object           ; @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
__profc_frexp:
	.zero	72
	.size	__profc_frexp, 72

	.type	__profd_frexp,@object           ; @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
__profd_frexp:
	.quad	-2997169543230593137            ; 0xd667ea2e1c1ee78f
	.quad	-2373782428686282824            ; 0xdf0ea1753c170fb8
	.short	__profc_frexp-__profd_frexp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_frexp, 38

	.type	__profc___muldi3,@object        ; @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
__profc___muldi3:
	.zero	24
	.size	__profc___muldi3, 24

	.type	__profd___muldi3,@object        ; @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
__profd___muldi3:
	.quad	3987271357918321816             ; 0x3755a22cafcf9c98
	.quad	2320045144                      ; 0x8a491458
	.short	__profc___muldi3-__profd___muldi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___muldi3, 38

	.type	__profc_udivmodsi4,@object      ; @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
__profc_udivmodsi4:
	.zero	72
	.size	__profc_udivmodsi4, 72

	.type	__profd_udivmodsi4,@object      ; @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
__profd_udivmodsi4:
	.quad	4670832108574850701             ; 0x40d2210e3d17be8d
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	__profc_udivmodsi4-__profd_udivmodsi4
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	__profd_udivmodsi4, 38

	.type	__profc___clrsbqi2,@object      ; @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
__profc___clrsbqi2:
	.zero	24
	.size	__profc___clrsbqi2, 24

	.type	__profd___clrsbqi2,@object      ; @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
__profd___clrsbqi2:
	.quad	-7858138078702729622            ; 0x92f2490d36f4066a
	.quad	187824153796641880              ; 0x29b49129f498458
	.short	__profc___clrsbqi2-__profd___clrsbqi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___clrsbqi2, 38

	.type	__profc___clrsbdi2,@object      ; @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
__profc___clrsbdi2:
	.zero	24
	.size	__profc___clrsbdi2, 24

	.type	__profd___clrsbdi2,@object      ; @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
__profd___clrsbdi2:
	.quad	-1533375985051215657            ; 0xeab85aaa6fe858d7
	.quad	187824153796641880              ; 0x29b49129f498458
	.short	__profc___clrsbdi2-__profd___clrsbdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___clrsbdi2, 38

	.type	__profc___mulsi3,@object        ; @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
__profc___mulsi3:
	.zero	24
	.size	__profc___mulsi3, 24

	.type	__profd___mulsi3,@object        ; @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
__profd___mulsi3:
	.quad	5127670123023436031             ; 0x472924cf303208ff
	.quad	2320045144                      ; 0x8a491458
	.short	__profc___mulsi3-__profd___mulsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mulsi3, 38

	.type	__profc___cmovd,@object         ; @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
__profc___cmovd:
	.zero	56
	.size	__profc___cmovd, 56

	.type	__profd___cmovd,@object         ; @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
__profd___cmovd:
	.quad	1458405851566781960             ; 0x143d4c6520fd3608
	.quad	-6411111704588201945            ; 0xa70727df48abd027
	.short	__profc___cmovd-__profd___cmovd
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___cmovd, 38

	.type	__profc___cmovh,@object         ; @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
__profc___cmovh:
	.zero	56
	.size	__profc___cmovh, 56

	.type	__profd___cmovh,@object         ; @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
__profd___cmovh:
	.quad	-1240290101804783090            ; 0xeec99ab9477e2a0e
	.quad	3130117398598530023             ; 0x2b706930a0bc33e7
	.short	__profc___cmovh-__profd___cmovh
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___cmovh, 38

	.type	__profc___cmovw,@object         ; @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
__profc___cmovw:
	.zero	56
	.size	__profc___cmovw, 56

	.type	__profd___cmovw,@object         ; @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
__profd___cmovw:
	.quad	-6631700889337257300            ; 0xa3f7772d6a6922ac
	.quad	-6411111704588201945            ; 0xa70727df48abd027
	.short	__profc___cmovw-__profd___cmovw
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___cmovw, 38

	.type	__profc___modi,@object          ; @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
__profc___modi:
	.zero	8
	.size	__profc___modi, 8

	.type	__profd___modi,@object          ; @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
__profd___modi:
	.quad	4130297501716739761             ; 0x3951c3b1ce8276b1
	.quad	24                              ; 0x18
	.short	__profc___modi-__profd___modi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___modi, 38

	.type	__profc___uitod,@object         ; @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
__profc___uitod:
	.zero	8
	.size	__profc___uitod, 8

	.type	__profd___uitod,@object         ; @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
__profd___uitod:
	.quad	-3793169221884876252            ; 0xcb5bf4b0949b6a24
	.quad	24                              ; 0x18
	.short	__profc___uitod-__profd___uitod
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___uitod, 38

	.type	__profc___uitof,@object         ; @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
__profc___uitof:
	.zero	8
	.size	__profc___uitof, 8

	.type	__profd___uitof,@object         ; @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
__profd___uitof:
	.quad	2684105554667313846             ; 0x253fdbc7ed991ab6
	.quad	24                              ; 0x18
	.short	__profc___uitof-__profd___uitof
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___uitof, 38

	.type	__profc___ulltod,@object        ; @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
__profc___ulltod:
	.zero	8
	.size	__profc___ulltod, 8

	.type	__profd___ulltod,@object        ; @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
__profd___ulltod:
	.quad	3995277539005434566             ; 0x377213c0fb840ac6
	.quad	24                              ; 0x18
	.short	__profc___ulltod-__profd___ulltod
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___ulltod, 38

	.type	__profc___ulltof,@object        ; @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
__profc___ulltof:
	.zero	8
	.size	__profc___ulltof, 8

	.type	__profd___ulltof,@object        ; @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
__profd___ulltof:
	.quad	-1906554817873249395            ; 0xe58a8e7e97dafb8d
	.quad	24                              ; 0x18
	.short	__profc___ulltof-__profd___ulltof
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___ulltof, 38

	.type	__profc___umodi,@object         ; @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
__profc___umodi:
	.zero	8
	.size	__profc___umodi, 8

	.type	__profd___umodi,@object         ; @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
__profd___umodi:
	.quad	6154071623751134202             ; 0x5567a7893fff6bfa
	.quad	24                              ; 0x18
	.short	__profc___umodi-__profd___umodi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___umodi, 38

	.type	__profc___clzhi2,@object        ; @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
__profc___clzhi2:
	.zero	24
	.size	__profc___clzhi2, 24

	.type	__profd___clzhi2,@object        ; @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
__profd___clzhi2:
	.quad	-9221703320275173474            ; 0x8005edb05af53f9e
	.quad	19458657162328                  ; 0x11b292591458
	.short	__profc___clzhi2-__profd___clzhi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___clzhi2, 38

	.type	__profc___ctzhi2,@object        ; @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
__profc___ctzhi2:
	.zero	24
	.size	__profc___ctzhi2, 24

	.type	__profd___ctzhi2,@object        ; @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
__profd___ctzhi2:
	.quad	-1569202989881991136            ; 0xea391231d79a6020
	.quad	19458657162328                  ; 0x11b292591458
	.short	__profc___ctzhi2-__profd___ctzhi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___ctzhi2, 38

	.type	__profc___fixunssfsi,@object    ; @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
__profc___fixunssfsi:
	.zero	16
	.size	__profc___fixunssfsi, 16

	.type	__profd___fixunssfsi,@object    ; @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
__profd___fixunssfsi:
	.quad	-7800469359816066749            ; 0x93bf2a7226d83943
	.quad	11245552728                     ; 0x29e498458
	.short	__profc___fixunssfsi-__profd___fixunssfsi
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	2                               ; 0x2
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___fixunssfsi, 38

	.type	__profc___parityhi2,@object     ; @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
__profc___parityhi2:
	.zero	24
	.size	__profc___parityhi2, 24

	.type	__profd___parityhi2,@object     ; @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
__profd___parityhi2:
	.quad	1203893203113466329             ; 0x10b5167d5f15d9d9
	.quad	304041497688                    ; 0x46ca491458
	.short	__profc___parityhi2-__profd___parityhi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___parityhi2, 38

	.type	__profc___popcounthi2,@object   ; @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
__profc___popcounthi2:
	.zero	24
	.size	__profc___popcounthi2, 24

	.type	__profd___popcounthi2,@object   ; @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
__profd___popcounthi2:
	.quad	3943219574947026310             ; 0x36b9214fb4159586
	.quad	304041497688                    ; 0x46ca491458
	.short	__profc___popcounthi2-__profd___popcounthi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___popcounthi2, 38

	.type	__profc___mulsi3_iq2000,@object ; @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
__profc___mulsi3_iq2000:
	.zero	24
	.size	__profc___mulsi3_iq2000, 24

	.type	__profd___mulsi3_iq2000,@object ; @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
__profd___mulsi3_iq2000:
	.quad	-3976353352410196972            ; 0xc8d127b190281414
	.quad	171971253336                    ; 0x280a491458
	.short	__profc___mulsi3_iq2000-__profd___mulsi3_iq2000
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mulsi3_iq2000, 38

	.type	__profc___mulsi3_lm32,@object   ; @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
__profc___mulsi3_lm32:
	.zero	32
	.size	__profc___mulsi3_lm32, 32

	.type	__profd___mulsi3_lm32,@object   ; @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
__profd___mulsi3_lm32:
	.quad	2775651425054705869             ; 0x26851843dab148cd
	.quad	-6210685127595396365            ; 0xa9cf36c835dff2f3
	.short	__profc___mulsi3_lm32-__profd___mulsi3_lm32
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mulsi3_lm32, 38

	.type	__profc___udivmodsi4,@object    ; @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
__profc___udivmodsi4:
	.zero	72
	.size	__profc___udivmodsi4, 72

	.type	__profd___udivmodsi4,@object    ; @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
__profd___udivmodsi4:
	.quad	-6720389007632434094            ; 0xa2bc61cdbfa0fc52
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	__profc___udivmodsi4-__profd___udivmodsi4
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___udivmodsi4, 38

	.type	__profc___mspabi_cmpf,@object   ; @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
__profc___mspabi_cmpf:
	.zero	24
	.size	__profc___mspabi_cmpf, 24

	.type	__profd___mspabi_cmpf,@object   ; @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
__profd___mspabi_cmpf:
	.quad	6399771733438470391             ; 0x58d08e7bef2f98f7
	.quad	1352614535537600836             ; 0x12c573c0ecbfa944
	.short	__profc___mspabi_cmpf-__profd___mspabi_cmpf
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mspabi_cmpf, 38

	.type	__profc___mspabi_cmpd,@object   ; @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
__profc___mspabi_cmpd:
	.zero	24
	.size	__profc___mspabi_cmpd, 24

	.type	__profd___mspabi_cmpd,@object   ; @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
__profd___mspabi_cmpd:
	.quad	-5775354270414500759            ; 0xafd9d1e3e3e88c69
	.quad	1352614535537600836             ; 0x12c573c0ecbfa944
	.short	__profc___mspabi_cmpd-__profd___mspabi_cmpd
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mspabi_cmpd, 38

	.type	__profc___mspabi_mpysll,@object ; @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
__profc___mspabi_mpysll:
	.zero	8
	.size	__profc___mspabi_mpysll, 8

	.type	__profd___mspabi_mpysll,@object ; @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
__profd___mspabi_mpysll:
	.quad	-359228324547500507             ; 0xfb03c3bdfa166625
	.quad	24                              ; 0x18
	.short	__profc___mspabi_mpysll-__profd___mspabi_mpysll
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mspabi_mpysll, 38

	.type	__profc___mspabi_mpyull,@object ; @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
__profc___mspabi_mpyull:
	.zero	8
	.size	__profc___mspabi_mpyull, 8

	.type	__profd___mspabi_mpyull,@object ; @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
__profd___mspabi_mpyull:
	.quad	6629829186354316853             ; 0x5c01e284c62a8635
	.quad	24                              ; 0x18
	.short	__profc___mspabi_mpyull-__profd___mspabi_mpyull
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mspabi_mpyull, 38

	.type	__profc___mulhi3,@object        ; @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
__profc___mulhi3:
	.zero	56
	.size	__profc___mulhi3, 56

	.type	__profd___mulhi3,@object        ; @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
__profd___mulhi3:
	.quad	-4671748085078636676            ; 0xbf2a9dde5cc6c77c
	.quad	-5374843387156864121            ; 0xb568b86aa1286387
	.short	__profc___mulhi3-__profd___mulhi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	7                               ; 0x7
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___mulhi3, 38

	.type	__profc___divsi3,@object        ; @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
__profc___divsi3:
	.zero	32
	.size	__profc___divsi3, 32

	.type	__profd___divsi3,@object        ; @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
__profd___divsi3:
	.quad	5631431475223784324             ; 0x4e26dd1711aaeb84
	.quad	510575534943447681              ; 0x715edbe6f4f2a81
	.short	__profc___divsi3-__profd___divsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___divsi3, 38

	.type	__profc___modsi3,@object        ; @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
__profc___modsi3:
	.zero	32
	.size	__profc___modsi3, 32

	.type	__profd___modsi3,@object        ; @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
__profd___modsi3:
	.quad	-8995696579390192574            ; 0x8328dd9f4e404442
	.quad	2121116644152358499             ; 0x1d6fb85985deb663
	.short	__profc___modsi3-__profd___modsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	4                               ; 0x4
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___modsi3, 38

	.type	__profc___udivmodhi4,@object    ; @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
__profc___udivmodhi4:
	.zero	72
	.size	__profc___udivmodhi4, 72

	.type	__profd___udivmodhi4,@object    ; @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
__profd___udivmodhi4:
	.quad	2241631039268115874             ; 0x1f1bdf8db510d5a2
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	__profc___udivmodhi4-__profd___udivmodhi4
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___udivmodhi4, 38

	.type	__profc___udivmodsi4_libgcc,@object ; @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
__profc___udivmodsi4_libgcc:
	.zero	72
	.size	__profc___udivmodsi4_libgcc, 72

	.type	__profd___udivmodsi4_libgcc,@object ; @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
__profd___udivmodsi4_libgcc:
	.quad	-1484205535638993157            ; 0xeb670aedd291c6fb
	.quad	842736872197088594              ; 0xbb200b8626e6552
	.short	__profc___udivmodsi4_libgcc-__profd___udivmodsi4_libgcc
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	9                               ; 0x9
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___udivmodsi4_libgcc, 38

	.type	__profc___ashldi3,@object       ; @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
__profc___ashldi3:
	.zero	24
	.size	__profc___ashldi3, 24

	.type	__profd___ashldi3,@object       ; @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
__profd___ashldi3:
	.quad	3719210884952086607             ; 0x339d4a983a55d84f
	.quad	185294818348438616              ; 0x2924ca7d2611458
	.short	__profc___ashldi3-__profd___ashldi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___ashldi3, 38

	.type	__profc___ashrdi3,@object       ; @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
__profc___ashrdi3:
	.zero	24
	.size	__profc___ashrdi3, 24

	.type	__profd___ashrdi3,@object       ; @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
__profd___ashrdi3:
	.quad	-1855717345837424946            ; 0xe63f2ae7edd45ece
	.quad	185294818348438616              ; 0x2924ca7d2611458
	.short	__profc___ashrdi3-__profd___ashrdi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___ashrdi3, 38

	.type	__profc___bswapdi2,@object      ; @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
__profc___bswapdi2:
	.zero	8
	.size	__profc___bswapdi2, 8

	.type	__profd___bswapdi2,@object      ; @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
__profd___bswapdi2:
	.quad	9149352740892555196             ; 0x7ef907d7ada5b7bc
	.quad	24                              ; 0x18
	.short	__profc___bswapdi2-__profd___bswapdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___bswapdi2, 38

	.type	__profc___bswapsi2,@object      ; @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
__profc___bswapsi2:
	.zero	8
	.size	__profc___bswapsi2, 8

	.type	__profd___bswapsi2,@object      ; @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
__profd___bswapsi2:
	.quad	-3374945843358245974            ; 0xd129c8a2fe735baa
	.quad	24                              ; 0x18
	.short	__profc___bswapsi2-__profd___bswapsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___bswapsi2, 38

	.type	__profc___clzsi2,@object        ; @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
__profc___clzsi2:
	.zero	8
	.size	__profc___clzsi2, 8

	.type	__profd___clzsi2,@object        ; @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
__profd___clzsi2:
	.quad	1382681549752930563             ; 0x1330458b32829103
	.quad	33814345247                     ; 0x7df7df61f
	.short	__profc___clzsi2-__profd___clzsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___clzsi2, 38

	.type	__profc___cmpdi2,@object        ; @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
__profc___cmpdi2:
	.zero	40
	.size	__profc___cmpdi2, 40

	.type	__profd___cmpdi2,@object        ; @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
__profd___cmpdi2:
	.quad	-5499644794300757496            ; 0xb3ad5632ace08a08
	.quad	-7406659272189927428            ; 0x993642a254c41ffc
	.short	__profc___cmpdi2-__profd___cmpdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___cmpdi2, 38

	.type	__profc___aeabi_lcmp,@object    ; @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
__profc___aeabi_lcmp:
	.zero	8
	.size	__profc___aeabi_lcmp, 8

	.type	__profd___aeabi_lcmp,@object    ; @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
__profd___aeabi_lcmp:
	.quad	7067747365298492588             ; 0x6215aec83ed1d4ac
	.quad	24                              ; 0x18
	.short	__profc___aeabi_lcmp-__profd___aeabi_lcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___aeabi_lcmp, 38

	.type	__profc___ctzsi2,@object        ; @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
__profc___ctzsi2:
	.zero	8
	.size	__profc___ctzsi2, 8

	.type	__profd___ctzsi2,@object        ; @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
__profd___ctzsi2:
	.quad	-5501728155980453225            ; 0xb3a5ef643c052a97
	.quad	33814345247                     ; 0x7df7df61f
	.short	__profc___ctzsi2-__profd___ctzsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___ctzsi2, 38

	.type	__profc___lshrdi3,@object       ; @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
__profc___lshrdi3:
	.zero	24
	.size	__profc___lshrdi3, 24

	.type	__profd___lshrdi3,@object       ; @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
__profd___lshrdi3:
	.quad	10441766047587925               ; 0x2518bb1c181e55
	.quad	185294818348438616              ; 0x2924ca7d2611458
	.short	__profc___lshrdi3-__profd___lshrdi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	3                               ; 0x3
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___lshrdi3, 38

	.type	__profc___muldsi3,@object       ; @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
__profc___muldsi3:
	.zero	8
	.size	__profc___muldsi3, 8

	.type	__profd___muldsi3,@object       ; @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
__profd___muldsi3:
	.quad	4756674255824047264             ; 0x42031a08a2a34ca0
	.quad	24                              ; 0x18
	.short	__profc___muldsi3-__profd___muldsi3
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___muldsi3, 38

	.type	__profc___muldi3_compiler_rt,@object ; @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
__profc___muldi3_compiler_rt:
	.zero	8
	.size	__profc___muldi3_compiler_rt, 8

	.type	__profd___muldi3_compiler_rt,@object ; @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
__profd___muldi3_compiler_rt:
	.quad	-737717619142303851             ; 0xf5c319bbe679df95
	.quad	24                              ; 0x18
	.short	__profc___muldi3_compiler_rt-__profd___muldi3_compiler_rt
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___muldi3_compiler_rt, 38

	.type	__profc___negdi2,@object        ; @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
__profc___negdi2:
	.zero	8
	.size	__profc___negdi2, 8

	.type	__profd___negdi2,@object        ; @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
__profd___negdi2:
	.quad	-2796404983763388037            ; 0xd9312c7bb6a6b97b
	.quad	24                              ; 0x18
	.short	__profc___negdi2-__profd___negdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___negdi2, 38

	.type	__profc___paritydi2,@object     ; @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
__profc___paritydi2:
	.zero	8
	.size	__profc___paritydi2, 8

	.type	__profd___paritydi2,@object     ; @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
__profd___paritydi2:
	.quad	-5102883611502574357            ; 0xb92eea643e3a04eb
	.quad	24                              ; 0x18
	.short	__profc___paritydi2-__profd___paritydi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___paritydi2, 38

	.type	__profc___paritysi2,@object     ; @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
__profc___paritysi2:
	.zero	8
	.size	__profc___paritysi2, 8

	.type	__profd___paritysi2,@object     ; @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
__profd___paritysi2:
	.quad	8495812714014201054             ; 0x75e730a6911054de
	.quad	24                              ; 0x18
	.short	__profc___paritysi2-__profd___paritysi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___paritysi2, 38

	.type	__profc___popcountdi2,@object   ; @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
__profc___popcountdi2:
	.zero	8
	.size	__profc___popcountdi2, 8

	.type	__profd___popcountdi2,@object   ; @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
__profd___popcountdi2:
	.quad	4342496508124198892             ; 0x3c43a5910d1df7ec
	.quad	24                              ; 0x18
	.short	__profc___popcountdi2-__profd___popcountdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___popcountdi2, 38

	.type	__profc___popcountsi2,@object   ; @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
__profc___popcountsi2:
	.zero	8
	.size	__profc___popcountsi2, 8

	.type	__profd___popcountsi2,@object   ; @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
__profd___popcountsi2:
	.quad	-2149276146439341705            ; 0xe22c3cbb6f433977
	.quad	24                              ; 0x18
	.short	__profc___popcountsi2-__profd___popcountsi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___popcountsi2, 38

	.type	__profc___powidf2,@object       ; @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
__profc___powidf2:
	.zero	40
	.size	__profc___powidf2, 40

	.type	__profd___powidf2,@object       ; @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
__profd___powidf2:
	.quad	-1752541073601039051            ; 0xe7adb92dcdba7535
	.quad	-4868838055443737378            ; 0xbc6e6995b45f54de
	.short	__profc___powidf2-__profd___powidf2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___powidf2, 38

	.type	__profc___powisf2,@object       ; @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
__profc___powisf2:
	.zero	40
	.size	__profc___powisf2, 40

	.type	__profd___powisf2,@object       ; @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
__profd___powisf2:
	.quad	-3807360110918407144            ; 0xcb298a26c0b76c18
	.quad	-4868838055443737378            ; 0xbc6e6995b45f54de
	.short	__profc___powisf2-__profd___powisf2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___powisf2, 38

	.type	__profc___ucmpdi2,@object       ; @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
__profc___ucmpdi2:
	.zero	40
	.size	__profc___ucmpdi2, 40

	.type	__profd___ucmpdi2,@object       ; @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
__profd___ucmpdi2:
	.quad	-2044349310657886323            ; 0xe3a10322256c078d
	.quad	-7406659272189927428            ; 0x993642a254c41ffc
	.short	__profc___ucmpdi2-__profd___ucmpdi2
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	5                               ; 0x5
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___ucmpdi2, 38

	.type	__profc___aeabi_ulcmp,@object   ; @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
__profc___aeabi_ulcmp:
	.zero	8
	.size	__profc___aeabi_ulcmp, 8

	.type	__profd___aeabi_ulcmp,@object   ; @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
__profd___aeabi_ulcmp:
	.quad	448670595368434735              ; 0x639ff8782193c2f
	.quad	24                              ; 0x18
	.short	__profc___aeabi_ulcmp-__profd___aeabi_ulcmp
	.short	0                               ; 0x0
	.short	0
	.short	0
	.long	1                               ; 0x1
	.zero	6
	.long	0                               ; 0x0
	.size	__profd___aeabi_ulcmp, 38

	.type	__llvm_prf_nm,@object           ; @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,2
__llvm_prf_nm:
	.ascii	"\207\n\237\004x\332]\223\013\216\343 \f\206\305\215\272\355h4\327\330\023D\204Gb\215\t\f\220\241\355\351\3276\244\217\225\"\177\277\215y\330\220\340B\210\277N\005\027\214I7\341\232\005!\tz0\217hqU\225\2328Z*\007\267\035\207\022\320$\002\272\215\261\211\333\364\254\240hL\253f\026\003@\234Qo\337D\263Q:\321\302\002\225\270d\235V\"\306\34621e\3308^\2226\216\270\247$\361vLl\307\314v\244\266k\017\325\3307\363\026\202\030\257|\320W1]\"Y\330\304x\261\250\360\363C\253\222\365f\225\030,NSu\n=\220\247\347\242t\215\300\006\305\240\232G\306\340\224\225\205_\005\264<g3\331GvPT\227\242\233)\3349\006\265\212A\215%p\003\t\322\3006\356\244\215Ki\343V\230rwm\334\313l\"\205s\254T\003#w\340\345,^\007N\345.\356 \376\371\024\267\003\277\304\371\242b\232N\023\005\273\240\271]\320\222\336\323\351a\206\331\345z\233\330[p\202B-\364\017e\037\n\325\3647MP\343\017U\357\256\311wt\213\374\244\2561\367\307\242\253p<\2364\347o\346\361\264\350S\\`\201e\343i\3641\344)\372\314KNS\330\251\253\027\265SkC\264\005>(f0\227\371\007\316\207\264\")\263P&\305\250\205vp\035l\234\020-\020v:\271\035\364L\304\021`!\221\221i\360\276\366]\352\020\036\256\373V\212/<\234t\206z\353\003)&\023\367\255\256/G\231\340\347|:\235\236>\206\013\217\276\325\022\350/\230\201\316\230\374\233g\237^\240\016\321\243|\365\367\356\357\270J\305\264`/]\226\275<\367Xe\217\347\206\023\335\362b\f\305tY\245\261\242rW\362\036z3E\226\321\342\373\020a\fj\307\307@~\271\322\233>\214\217u\370\316\312CQ\341&\206\004\350\362\224+\0057\267\364uz\003_uyk\246}\363\216\261\006\326\037\252\210\332\377;\331\316G\373\007\344\305\316Q"
	.size	__llvm_prf_nm, 547

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
	.addrsig_sym __profc_memmove
	.addrsig_sym __profd_memmove
	.addrsig_sym __profc_memccpy
	.addrsig_sym __profd_memccpy
	.addrsig_sym __profc_memchr
	.addrsig_sym __profd_memchr
	.addrsig_sym __profc_memcmp
	.addrsig_sym __profd_memcmp
	.addrsig_sym __profc_memcpy
	.addrsig_sym __profd_memcpy
	.addrsig_sym __profc_memrchr
	.addrsig_sym __profd_memrchr
	.addrsig_sym __profc_memset
	.addrsig_sym __profd_memset
	.addrsig_sym __profc_stpcpy
	.addrsig_sym __profd_stpcpy
	.addrsig_sym __profc_strchrnul
	.addrsig_sym __profd_strchrnul
	.addrsig_sym __profc_strchr
	.addrsig_sym __profd_strchr
	.addrsig_sym __profc_strcmp
	.addrsig_sym __profd_strcmp
	.addrsig_sym __profc_strlen
	.addrsig_sym __profd_strlen
	.addrsig_sym __profc_strncmp
	.addrsig_sym __profd_strncmp
	.addrsig_sym __profc_swab
	.addrsig_sym __profd_swab
	.addrsig_sym __profc_isalpha
	.addrsig_sym __profd_isalpha
	.addrsig_sym __profc_isascii
	.addrsig_sym __profd_isascii
	.addrsig_sym __profc_isblank
	.addrsig_sym __profd_isblank
	.addrsig_sym __profc_iscntrl
	.addrsig_sym __profd_iscntrl
	.addrsig_sym __profc_isdigit
	.addrsig_sym __profd_isdigit
	.addrsig_sym __profc_isgraph
	.addrsig_sym __profd_isgraph
	.addrsig_sym __profc_islower
	.addrsig_sym __profd_islower
	.addrsig_sym __profc_isprint
	.addrsig_sym __profd_isprint
	.addrsig_sym __profc_isspace
	.addrsig_sym __profd_isspace
	.addrsig_sym __profc_isupper
	.addrsig_sym __profd_isupper
	.addrsig_sym __profc_iswcntrl
	.addrsig_sym __profd_iswcntrl
	.addrsig_sym __profc_iswdigit
	.addrsig_sym __profd_iswdigit
	.addrsig_sym __profc_iswprint
	.addrsig_sym __profd_iswprint
	.addrsig_sym __profc_iswxdigit
	.addrsig_sym __profd_iswxdigit
	.addrsig_sym __profc_toascii
	.addrsig_sym __profd_toascii
	.addrsig_sym __profc_fdim
	.addrsig_sym __profd_fdim
	.addrsig_sym __profc_fdimf
	.addrsig_sym __profd_fdimf
	.addrsig_sym __profc_fmax
	.addrsig_sym __profd_fmax
	.addrsig_sym __profc_fmaxf
	.addrsig_sym __profd_fmaxf
	.addrsig_sym __profc_fmaxl
	.addrsig_sym __profd_fmaxl
	.addrsig_sym __profc_fmin
	.addrsig_sym __profd_fmin
	.addrsig_sym __profc_fminf
	.addrsig_sym __profd_fminf
	.addrsig_sym __profc_fminl
	.addrsig_sym __profd_fminl
	.addrsig_sym __profc_l64a
	.addrsig_sym __profd_l64a
	.addrsig_sym __profc_srand
	.addrsig_sym __profd_srand
	.addrsig_sym __profc_rand
	.addrsig_sym __profd_rand
	.addrsig_sym __profc_lsearch
	.addrsig_sym __profd_lsearch
	.addrsig_sym __profc_lfind
	.addrsig_sym __profd_lfind
	.addrsig_sym __profc_abs
	.addrsig_sym __profd_abs
	.addrsig_sym __profc_atoi
	.addrsig_sym __profd_atoi
	.addrsig_sym __profc_atol
	.addrsig_sym __profd_atol
	.addrsig_sym __profc_atoll
	.addrsig_sym __profd_atoll
	.addrsig_sym __profc_bsearch
	.addrsig_sym __profd_bsearch
	.addrsig_sym __profc_bsearch_r
	.addrsig_sym __profd_bsearch_r
	.addrsig_sym __profc_div
	.addrsig_sym __profd_div
	.addrsig_sym __profc_imaxabs
	.addrsig_sym __profd_imaxabs
	.addrsig_sym __profc_imaxdiv
	.addrsig_sym __profd_imaxdiv
	.addrsig_sym __profc_labs
	.addrsig_sym __profd_labs
	.addrsig_sym __profc_ldiv
	.addrsig_sym __profd_ldiv
	.addrsig_sym __profc_llabs
	.addrsig_sym __profd_llabs
	.addrsig_sym __profc_lldiv
	.addrsig_sym __profd_lldiv
	.addrsig_sym __profc_wcschr
	.addrsig_sym __profd_wcschr
	.addrsig_sym __profc_wcscmp
	.addrsig_sym __profd_wcscmp
	.addrsig_sym __profc_wcscpy
	.addrsig_sym __profd_wcscpy
	.addrsig_sym __profc_wcslen
	.addrsig_sym __profd_wcslen
	.addrsig_sym __profc_wcsncmp
	.addrsig_sym __profd_wcsncmp
	.addrsig_sym __profc_wmemchr
	.addrsig_sym __profd_wmemchr
	.addrsig_sym __profc_wmemcmp
	.addrsig_sym __profd_wmemcmp
	.addrsig_sym __profc_wmemcpy
	.addrsig_sym __profd_wmemcpy
	.addrsig_sym __profc_wmemmove
	.addrsig_sym __profd_wmemmove
	.addrsig_sym __profc_wmemset
	.addrsig_sym __profd_wmemset
	.addrsig_sym __profc_bcopy
	.addrsig_sym __profd_bcopy
	.addrsig_sym __profc_rotl64
	.addrsig_sym __profd_rotl64
	.addrsig_sym __profc_rotr64
	.addrsig_sym __profd_rotr64
	.addrsig_sym __profc_rotl32
	.addrsig_sym __profd_rotl32
	.addrsig_sym __profc_rotr32
	.addrsig_sym __profd_rotr32
	.addrsig_sym __profc_rotl_sz
	.addrsig_sym __profd_rotl_sz
	.addrsig_sym __profc_rotr_sz
	.addrsig_sym __profd_rotr_sz
	.addrsig_sym __profc_rotl16
	.addrsig_sym __profd_rotl16
	.addrsig_sym __profc_rotr16
	.addrsig_sym __profd_rotr16
	.addrsig_sym __profc_rotl8
	.addrsig_sym __profd_rotl8
	.addrsig_sym __profc_rotr8
	.addrsig_sym __profd_rotr8
	.addrsig_sym __profc_bswap_16
	.addrsig_sym __profd_bswap_16
	.addrsig_sym __profc_bswap_32
	.addrsig_sym __profd_bswap_32
	.addrsig_sym __profc_bswap_64
	.addrsig_sym __profd_bswap_64
	.addrsig_sym __profc_ffs
	.addrsig_sym __profd_ffs
	.addrsig_sym __profc_libiberty_ffs
	.addrsig_sym __profd_libiberty_ffs
	.addrsig_sym __profc_gl_isinff
	.addrsig_sym __profd_gl_isinff
	.addrsig_sym __profc_gl_isinfd
	.addrsig_sym __profd_gl_isinfd
	.addrsig_sym __profc_gl_isinfl
	.addrsig_sym __profd_gl_isinfl
	.addrsig_sym __profc__Qp_itoq
	.addrsig_sym __profd__Qp_itoq
	.addrsig_sym __profc_ldexpf
	.addrsig_sym __profd_ldexpf
	.addrsig_sym __profc_ldexp
	.addrsig_sym __profd_ldexp
	.addrsig_sym __profc_ldexpl
	.addrsig_sym __profd_ldexpl
	.addrsig_sym __profc_memxor
	.addrsig_sym __profd_memxor
	.addrsig_sym __profc_strncat
	.addrsig_sym __profd_strncat
	.addrsig_sym __profc_strnlen
	.addrsig_sym __profd_strnlen
	.addrsig_sym __profc_strpbrk
	.addrsig_sym __profd_strpbrk
	.addrsig_sym __profc_strrchr
	.addrsig_sym __profd_strrchr
	.addrsig_sym __profc_strstr
	.addrsig_sym __profd_strstr
	.addrsig_sym __profc_copysign
	.addrsig_sym __profd_copysign
	.addrsig_sym __profc_memmem
	.addrsig_sym __profd_memmem
	.addrsig_sym __profc_mempcpy
	.addrsig_sym __profd_mempcpy
	.addrsig_sym __profc_frexp
	.addrsig_sym __profd_frexp
	.addrsig_sym __profc___muldi3
	.addrsig_sym __profd___muldi3
	.addrsig_sym __profc_udivmodsi4
	.addrsig_sym __profd_udivmodsi4
	.addrsig_sym __profc___clrsbqi2
	.addrsig_sym __profd___clrsbqi2
	.addrsig_sym __profc___clrsbdi2
	.addrsig_sym __profd___clrsbdi2
	.addrsig_sym __profc___mulsi3
	.addrsig_sym __profd___mulsi3
	.addrsig_sym __profc___cmovd
	.addrsig_sym __profd___cmovd
	.addrsig_sym __profc___cmovh
	.addrsig_sym __profd___cmovh
	.addrsig_sym __profc___cmovw
	.addrsig_sym __profd___cmovw
	.addrsig_sym __profc___modi
	.addrsig_sym __profd___modi
	.addrsig_sym __profc___uitod
	.addrsig_sym __profd___uitod
	.addrsig_sym __profc___uitof
	.addrsig_sym __profd___uitof
	.addrsig_sym __profc___ulltod
	.addrsig_sym __profd___ulltod
	.addrsig_sym __profc___ulltof
	.addrsig_sym __profd___ulltof
	.addrsig_sym __profc___umodi
	.addrsig_sym __profd___umodi
	.addrsig_sym __profc___clzhi2
	.addrsig_sym __profd___clzhi2
	.addrsig_sym __profc___ctzhi2
	.addrsig_sym __profd___ctzhi2
	.addrsig_sym __profc___fixunssfsi
	.addrsig_sym __profd___fixunssfsi
	.addrsig_sym __profc___parityhi2
	.addrsig_sym __profd___parityhi2
	.addrsig_sym __profc___popcounthi2
	.addrsig_sym __profd___popcounthi2
	.addrsig_sym __profc___mulsi3_iq2000
	.addrsig_sym __profd___mulsi3_iq2000
	.addrsig_sym __profc___mulsi3_lm32
	.addrsig_sym __profd___mulsi3_lm32
	.addrsig_sym __profc___udivmodsi4
	.addrsig_sym __profd___udivmodsi4
	.addrsig_sym __profc___mspabi_cmpf
	.addrsig_sym __profd___mspabi_cmpf
	.addrsig_sym __profc___mspabi_cmpd
	.addrsig_sym __profd___mspabi_cmpd
	.addrsig_sym __profc___mspabi_mpysll
	.addrsig_sym __profd___mspabi_mpysll
	.addrsig_sym __profc___mspabi_mpyull
	.addrsig_sym __profd___mspabi_mpyull
	.addrsig_sym __profc___mulhi3
	.addrsig_sym __profd___mulhi3
	.addrsig_sym __profc___divsi3
	.addrsig_sym __profd___divsi3
	.addrsig_sym __profc___modsi3
	.addrsig_sym __profd___modsi3
	.addrsig_sym __profc___udivmodhi4
	.addrsig_sym __profd___udivmodhi4
	.addrsig_sym __profc___udivmodsi4_libgcc
	.addrsig_sym __profd___udivmodsi4_libgcc
	.addrsig_sym __profc___ashldi3
	.addrsig_sym __profd___ashldi3
	.addrsig_sym __profc___ashrdi3
	.addrsig_sym __profd___ashrdi3
	.addrsig_sym __profc___bswapdi2
	.addrsig_sym __profd___bswapdi2
	.addrsig_sym __profc___bswapsi2
	.addrsig_sym __profd___bswapsi2
	.addrsig_sym __profc___clzsi2
	.addrsig_sym __profd___clzsi2
	.addrsig_sym __profc___cmpdi2
	.addrsig_sym __profd___cmpdi2
	.addrsig_sym __profc___aeabi_lcmp
	.addrsig_sym __profd___aeabi_lcmp
	.addrsig_sym __profc___ctzsi2
	.addrsig_sym __profd___ctzsi2
	.addrsig_sym __profc___lshrdi3
	.addrsig_sym __profd___lshrdi3
	.addrsig_sym __profc___muldsi3
	.addrsig_sym __profd___muldsi3
	.addrsig_sym __profc___muldi3_compiler_rt
	.addrsig_sym __profd___muldi3_compiler_rt
	.addrsig_sym __profc___negdi2
	.addrsig_sym __profd___negdi2
	.addrsig_sym __profc___paritydi2
	.addrsig_sym __profd___paritydi2
	.addrsig_sym __profc___paritysi2
	.addrsig_sym __profd___paritysi2
	.addrsig_sym __profc___popcountdi2
	.addrsig_sym __profd___popcountdi2
	.addrsig_sym __profc___popcountsi2
	.addrsig_sym __profd___popcountsi2
	.addrsig_sym __profc___powidf2
	.addrsig_sym __profd___powidf2
	.addrsig_sym __profc___powisf2
	.addrsig_sym __profd___powisf2
	.addrsig_sym __profc___ucmpdi2
	.addrsig_sym __profd___ucmpdi2
	.addrsig_sym __profc___aeabi_ulcmp
	.addrsig_sym __profd___aeabi_ulcmp
	.addrsig_sym __llvm_prf_nm
