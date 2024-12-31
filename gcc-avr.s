	.file	"mini-libc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	memmove
	.type	memmove, @function
memmove:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	cp r18,r24
	cpc r19,r25
	brsh .L2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	rjmp .L3
.L4:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
.L3:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L4
	rjmp .L5
.L2:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	cp r18,r24
	cpc r19,r25
	breq .L5
	rjmp .L6
.L7:
	ldd r18,Y+3
	ldd r19,Y+4
	mov r24,r18
	mov r25,r19
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r24
	mov r21,r25
	subi r20,-1
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
.L6:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L7
.L5:
	ldd r24,Y+5
	ldd r25,Y+6
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memmove, .-memmove
.global	memccpy
	.type	memccpy, @function
memccpy:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	std Y+12,r19
	std Y+11,r18
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+9
	mov r24,r24
	ldi r25,0
	std Y+10,r25
	std Y+9,r24
	rjmp .L10
.L12:
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,1
	std Y+12,r25
	std Y+11,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L10:
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	breq .L11
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+9
	ldd r19,Y+10
	cp r18,r24
	cpc r19,r25
	brne .L12
.L11:
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	breq .L13
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	rjmp .L14
.L13:
	ldi r24,0
	ldi r25,0
.L14:
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memccpy, .-memccpy
.global	memchr
	.type	memchr, @function
memchr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
	rjmp .L16
.L18:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,1
	std Y+8,r25
	std Y+7,r24
.L16:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	breq .L17
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+5
	ldd r19,Y+6
	cp r18,r24
	cpc r19,r25
	brne .L18
.L17:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	breq .L19
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L21
.L19:
	ldi r24,0
	ldi r25,0
.L21:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memchr, .-memchr
.global	memcmp
	.type	memcmp, @function
memcmp:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	rjmp .L23
.L25:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L23:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r18,r24
	breq .L25
.L24:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L26
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r18,r24
	ldi r19,0
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	rjmp .L28
.L26:
	ldi r24,0
	ldi r25,0
.L28:
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memcmp, .-memcmp
.global	memcpy
	.type	memcpy, @function
memcpy:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	rjmp .L30
.L31:
	ldd r18,Y+3
	ldd r19,Y+4
	mov r24,r18
	mov r25,r19
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r24
	mov r21,r25
	subi r20,-1
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
.L30:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L31
	ldd r24,Y+5
	ldd r25,Y+6
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memcpy, .-memcpy
.global	memrchr
	.type	memrchr, @function
memrchr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
	rjmp .L34
.L36:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+5
	ldd r19,Y+6
	cp r18,r24
	cpc r19,r25
	brne .L34
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	rjmp .L35
.L34:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L36
	ldi r24,0
	ldi r25,0
.L35:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memrchr, .-memrchr
.global	memset
	.type	memset, @function
memset:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	rjmp .L38
.L39:
	ldd r18,Y+5
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,1
	std Y+8,r25
	std Y+7,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L38:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brne .L39
	ldd r24,Y+3
	ldd r25,Y+4
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memset, .-memset
.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	rjmp .L42
.L43:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L42:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L43
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	stpcpy, .-stpcpy
.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
	rjmp .L46
.L48:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L46:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	breq .L47
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brne .L48
.L47:
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	strchrnul, .-strchrnul
.global	strchr
	.type	strchr, @function
strchr:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r23
	std Y+1,r22
.L53:
	mov r30,r24
	mov r31,r25
	ld r18,Z
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	ldd r20,Y+1
	ldd r21,Y+2
	cp r20,r18
	cpc r21,r19
	brne .L51
	rjmp .L52
.L51:
	mov r18,r24
	mov r19,r25
	mov r24,r18
	mov r25,r19
	adiw r24,1
	mov r30,r18
	mov r31,r19
	ld r18,Z
	cp r18, __zero_reg__
	brne .L53
	ldi r24,0
	ldi r25,0
.L52:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	strchr, .-strchr
.global	strcmp
	.type	strcmp, @function
strcmp:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	rjmp .L55
.L57:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L55:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r18,r24
	brne .L56
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L57
.L56:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r18,r24
	ldi r19,0
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	strcmp, .-strcmp
.global	strlen
	.type	strlen, @function
strlen:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	rjmp .L60
.L61:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L60:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L61
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	strlen, .-strlen
.global	strncmp
	.type	strncmp, @function
strncmp:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+9
	ldd r25,Y+10
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+10,r19
	std Y+9,r18
	sbiw r24,0
	brne .L66
	ldi r24,0
	ldi r25,0
	rjmp .L65
.L68:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
.L66:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	breq .L67
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	breq .L67
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L67
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r18,r24
	breq .L68
.L67:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r18,r24
	ldi r19,0
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
.L65:
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	strncmp, .-strncmp
.global	swab
	.type	swab, @function
swab:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	rjmp .L70
.L71:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	ldd r18,Y+1
	ldd r19,Y+2
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,2
	std Y+10,r25
	std Y+9,r24
.L70:
	ldd r24,Y+9
	ldd r25,Y+10
	cpi r24,2
	cpc r25,__zero_reg__
	brge .L71
	nop
	nop
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	swab, .-swab
.global	isalpha
	.type	isalpha, @function
isalpha:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	ori r24,32
	subi r24,97
	sbc r25,__zero_reg__
	ldi r18,lo8(1)
	cpi r24,26
	cpc r25,__zero_reg__
	brlo .L73
	ldi r18,0
.L73:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isalpha, .-isalpha
.global	isascii
	.type	isascii, @function
isascii:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	ldi r18,lo8(1)
	cpi r24,-128
	cpc r25,__zero_reg__
	brlo .L76
	ldi r18,0
.L76:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isascii, .-isascii
.global	isblank
	.type	isblank, @function
isblank:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,32
	cpc r25,__zero_reg__
	breq .L79
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,9
	cpc r25,__zero_reg__
	brne .L80
.L79:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L82
.L80:
	ldi r24,0
	ldi r25,0
.L82:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isblank, .-isblank
.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,32
	cpc r25,__zero_reg__
	brlo .L84
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,127
	cpc r25,__zero_reg__
	brne .L85
.L84:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L87
.L85:
	ldi r24,0
	ldi r25,0
.L87:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	iscntrl, .-iscntrl
.global	isdigit
	.type	isdigit, @function
isdigit:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,48
	ldi r18,lo8(1)
	cpi r24,10
	cpc r25,__zero_reg__
	brlo .L89
	ldi r18,0
.L89:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isdigit, .-isdigit
.global	isgraph
	.type	isgraph, @function
isgraph:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,33
	ldi r18,lo8(1)
	cpi r24,94
	cpc r25,__zero_reg__
	brlo .L92
	ldi r18,0
.L92:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isgraph, .-isgraph
.global	islower
	.type	islower, @function
islower:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,97
	sbc r25,__zero_reg__
	ldi r18,lo8(1)
	cpi r24,26
	cpc r25,__zero_reg__
	brlo .L95
	ldi r18,0
.L95:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	islower, .-islower
.global	isprint
	.type	isprint, @function
isprint:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,32
	ldi r18,lo8(1)
	cpi r24,95
	cpc r25,__zero_reg__
	brlo .L98
	ldi r18,0
.L98:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isprint, .-isprint
.global	isspace
	.type	isspace, @function
isspace:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,32
	cpc r25,__zero_reg__
	breq .L101
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,9
	cpi r24,5
	cpc r25,__zero_reg__
	brsh .L102
.L101:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L104
.L102:
	ldi r24,0
	ldi r25,0
.L104:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isspace, .-isspace
.global	isupper
	.type	isupper, @function
isupper:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,65
	sbc r25,__zero_reg__
	ldi r18,lo8(1)
	cpi r24,26
	cpc r25,__zero_reg__
	brlo .L106
	ldi r18,0
.L106:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	isupper, .-isupper
.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,32
	cpc r25,__zero_reg__
	brlo .L109
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,127
	sbc r25,__zero_reg__
	cpi r24,33
	cpc r25,__zero_reg__
	brlo .L109
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,40
	sbci r25,32
	cpi r24,2
	cpc r25,__zero_reg__
	brlo .L109
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,7
	cpi r24,3
	cpc r25,__zero_reg__
	brsh .L110
.L109:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L112
.L110:
	ldi r24,0
	ldi r25,0
.L112:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	iswcntrl, .-iswcntrl
.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,48
	ldi r18,lo8(1)
	cpi r24,10
	cpc r25,__zero_reg__
	brlo .L114
	ldi r18,0
.L114:
	mov r24,r18
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	iswdigit, .-iswdigit
.global	iswprint
	.type	iswprint, @function
iswprint:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,-1
	cpc r25,__zero_reg__
	brsh .L117
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	andi r24,127
	clr r25
	ldi r18,lo8(1)
	cpi r24,33
	cpc r25,__zero_reg__
	brsh .L118
	ldi r18,0
.L118:
	mov r24,r18
	ldi r25,0
	rjmp .L119
.L117:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,40
	ldi r18,32
	cpc r25,r18
	brlo .L120
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,42
	sbci r25,32
	cpi r24,-42
	ldi r18,-73
	cpc r25,r18
	brlo .L120
	ldd r24,Y+1
	ldd r25,Y+2
	subi r25,-32
	cpi r24,-7
	ldi r18,31
	cpc r25,r18
	brsh .L121
.L120:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L119
.L121:
	ldd r24,Y+1
	ldd r25,Y+2
	andi r24,254
	cpi r24,-2
	ldi r18,-1
	cpc r25,r18
	brne .L122
	ldi r24,0
	ldi r25,0
	rjmp .L119
.L122:
	ldi r24,lo8(1)
	ldi r25,0
.L119:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	iswprint, .-iswprint
.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,48
	cpi r24,10
	cpc r25,__zero_reg__
	brlo .L124
	ldd r24,Y+1
	ldd r25,Y+2
	ori r24,32
	subi r24,97
	sbc r25,__zero_reg__
	cpi r24,6
	cpc r25,__zero_reg__
	brsh .L125
.L124:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L127
.L125:
	ldi r24,0
	ldi r25,0
.L127:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	iswxdigit, .-iswxdigit
.global	toascii
	.type	toascii, @function
toascii:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	andi r24,127
	clr r25
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	toascii, .-toascii
.global	fdim
	.type	fdim, @function
fdim:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L142
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L133
.L142:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L143
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L133
.L143:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cpi r24,lo8(1)
	brlt .L144
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __subsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	rjmp .L133
.L144:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L133:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	fdim, .-fdim
.global	fdimf
	.type	fdimf, @function
fdimf:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L157
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L148
.L157:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L158
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L148
.L158:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cpi r24,lo8(1)
	brlt .L159
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __subsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	rjmp .L148
.L159:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L148:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	fdimf, .-fdimf
.global	fmax
	.type	fmax, @function
fmax:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L175
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L163
.L175:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L176
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L163
.L176:
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r24
	mov r19,r25
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	cp r18,r24
	cpc r19,r25
	breq .L166
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L167
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L163
.L167:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L163
.L166:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L177
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L163
.L177:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L163:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	fmax, .-fmax
.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L193
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L181
.L193:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L194
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L181
.L194:
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r24
	mov r19,r25
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	cp r18,r24
	cpc r19,r25
	breq .L184
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L185
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L181
.L185:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L181
.L184:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L195
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L181
.L195:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L181:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	fmaxf, .-fmaxf
.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r10
	std Y+10,r11
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unorddf2
	cp r24, __zero_reg__
	breq .L211
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	rjmp .L199
.L211:
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __unorddf2
	cp r24, __zero_reg__
	breq .L212
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	rjmp .L199
.L212:
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r24
	mov r19,r25
	ldd r24,Y+16
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	cp r18,r24
	cpc r19,r25
	breq .L202
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L203
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	rjmp .L199
.L203:
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	rjmp .L199
.L202:
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __ltdf2
	cp r24, __zero_reg__
	breq .L213
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	rjmp .L199
.L213:
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
.L199:
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	fmaxl, .-fmaxl
.global	fmin
	.type	fmin, @function
fmin:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L229
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L217
.L229:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L230
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L217
.L230:
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r24
	mov r19,r25
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	cp r18,r24
	cpc r19,r25
	breq .L220
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L221
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L217
.L221:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L217
.L220:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L231
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L217
.L231:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L217:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	fmin, .-fmin
.global	fminf
	.type	fminf, @function
fminf:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L247
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L235
.L247:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .L248
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L235
.L248:
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r24
	mov r19,r25
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	cp r18,r24
	cpc r19,r25
	breq .L238
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L239
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L235
.L239:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L235
.L238:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L249
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L235
.L249:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L235:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	fminf, .-fminf
.global	fminl
	.type	fminl, @function
fminl:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r10
	std Y+10,r11
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unorddf2
	cp r24, __zero_reg__
	breq .L265
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	rjmp .L253
.L265:
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __unorddf2
	cp r24, __zero_reg__
	breq .L266
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	rjmp .L253
.L266:
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r24
	mov r19,r25
	ldd r24,Y+16
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	cp r18,r24
	cpc r19,r25
	breq .L256
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L257
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	rjmp .L253
.L257:
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	rjmp .L253
.L256:
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __ltdf2
	cp r24, __zero_reg__
	breq .L267
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	rjmp .L253
.L267:
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
.L253:
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
.global	l64a
	.type	l64a, @function
l64a:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
	ldi r24,lo8(s.0)
	ldi r25,hi8(s.0)
	std Y+2,r25
	std Y+1,r24
	rjmp .L269
.L270:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	andi r24,63
	clr r25
	clr r26
	clr r27
	subi r24,lo8(-(digits))
	sbci r25,hi8(-(digits))
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	set
	bld __zero_reg__,6-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
.L269:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L270
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,__zero_reg__
	ldi r24,lo8(s.0)
	ldi r25,hi8(s.0)
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,1
.global	srand
	.type	srand, @function
srand:
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
	mov r16,r24
	mov r17,r25
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sts seed,r16
	sts seed+1,r17
	sts seed+2,r18
	sts seed+3,r19
	sts seed+4,r20
	sts seed+5,r21
	sts seed+6,r22
	sts seed+7,r23
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	srand, .-srand
.global	rand
	.type	rand, @function
rand:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 26 */
.L__stack_usage = 26
	lds r2,seed
	lds r3,seed+1
	lds r4,seed+2
	lds r5,seed+3
	lds r6,seed+4
	lds r7,seed+5
	lds r8,seed+6
	lds r9,seed+7
	mov __tmp_reg__,r31
	ldi r31,lo8(45)
	mov r10,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(127)
	mov r11,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(-107)
	mov r12,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(76)
	mov r13,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(45)
	mov r14,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(-12)
	mov r15,r31
	mov r31,__tmp_reg__
	ldi r16,lo8(81)
	ldi r17,lo8(88)
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __muldi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r26,lo8(1)
	rcall __adddi3_s8
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	sts seed,r8
	sts seed+1,r9
	sts seed+2,r10
	sts seed+3,r11
	sts seed+4,r12
	sts seed+5,r13
	sts seed+6,r14
	sts seed+7,r15
	lds r8,seed
	lds r9,seed+1
	lds r10,seed+2
	lds r11,seed+3
	lds r12,seed+4
	lds r13,seed+5
	lds r14,seed+6
	lds r15,seed+7
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(33)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	mov r25,r9
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	rand, .-rand
.global	insque
	.type	insque, @function
insque:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brne .L276
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ldd r18,Z+2
	ldd r19,Z+3
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	rjmp .L275
.L276:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	mov r30,r24
	mov r31,r25
	std Z+3,r19
	std Z+2,r18
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r18,Y+1
	ldd r19,Y+2
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L275
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+1
	ldd r19,Y+2
	mov r30,r24
	mov r31,r25
	std Z+3,r19
	std Z+2,r18
.L275:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	insque, .-insque
.global	remque
	.type	remque, @function
remque:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L279
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+1
	ldd r19,Y+2
	mov r30,r18
	mov r31,r19
	ldd r18,Z+2
	ldd r19,Z+3
	mov r30,r24
	mov r31,r25
	std Z+3,r19
	std Z+2,r18
.L279:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ldd r24,Z+2
	ldd r25,Z+3
	sbiw r24,0
	breq .L281
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ldd r24,Z+2
	ldd r25,Z+3
	ldd r18,Y+1
	ldd r19,Y+2
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L281:
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	remque, .-remque
.global	lsearch
	.type	lsearch, @function
lsearch:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+10,r25
	std Y+9,r24
	std Y+12,r23
	std Y+11,r22
	std Y+14,r21
	std Y+13,r20
	std Y+16,r19
	std Y+15,r18
	std Y+18,r17
	std Y+17,r16
	ldd r16,Y+15
	ldd r17,Y+16
	mov r24,r16
	mov r25,r17
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+11
	ldd r25,Y+12
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+13
	ldd r25,Y+14
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	std Y+8,r25
	std Y+7,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L283
.L286:
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	mov r20,r24
	mov r21,r25
	add r20,r18
	adc r21,r19
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r18,Y+17
	ldd r19,Y+18
	mov r22,r20
	mov r23,r21
	mov r30,r18
	mov r31,r19
	icall
	sbiw r24,0
	brne .L284
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	rjmp .L285
.L284:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L283:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .L286
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	ldd r24,Y+13
	ldd r25,Y+14
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r18,Y+7
	ldd r19,Y+8
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r18,Y+9
	ldd r19,Y+10
	mov r22,r18
	mov r23,r19
	rcall memcpy
.L285:
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	lsearch, .-lsearch
.global	lfind
	.type	lfind, @function
lfind:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+10,r25
	std Y+9,r24
	std Y+12,r23
	std Y+11,r22
	std Y+14,r21
	std Y+13,r20
	std Y+16,r19
	std Y+15,r18
	std Y+18,r17
	std Y+17,r16
	ldd r16,Y+15
	ldd r17,Y+16
	mov r24,r16
	mov r25,r17
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+11
	ldd r25,Y+12
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+13
	ldd r25,Y+14
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	std Y+8,r25
	std Y+7,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L288
.L291:
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	mov r20,r24
	mov r21,r25
	add r20,r18
	adc r21,r19
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r18,Y+17
	ldd r19,Y+18
	mov r22,r20
	mov r23,r21
	mov r30,r18
	mov r31,r19
	icall
	sbiw r24,0
	brne .L289
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	rjmp .L290
.L289:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L288:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .L291
	ldi r24,0
	ldi r25,0
.L290:
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	lfind, .-lfind
.global	abs
	.type	abs, @function
abs:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	brge .L293
	neg r25
	neg r24
	sbc r25,__zero_reg__
.L293:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	abs, .-abs
.global	atoi
	.type	atoi, @function
atoi:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+6,r25
	std Y+5,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L296
.L297:
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L296:
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	sbiw r24,0
	brne .L297
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	cpi r24,43
	cpc r25,__zero_reg__
	breq .L298
	cpi r24,45
	cpc r25,__zero_reg__
	brne .L300
	ldi r24,lo8(1)
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
.L298:
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
	rjmp .L300
.L301:
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r18
	mov r25,r19
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	lsl r24
	rol r25
	mov r20,r24
	mov r21,r25
	ldd r24,Y+5
	ldd r25,Y+6
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	std Y+6,r19
	std Y+5,r18
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	mov r18,r20
	mov r19,r21
	sub r18,r24
	sbc r19,r25
	mov r24,r18
	mov r25,r19
	std Y+2,r25
	std Y+1,r24
.L300:
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	cpi r24,10
	cpc r25,__zero_reg__
	brlo .L301
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brne .L302
	ldd r24,Y+1
	ldd r25,Y+2
	neg r25
	neg r24
	sbc r25,__zero_reg__
	rjmp .L304
.L302:
	ldd r24,Y+1
	ldd r25,Y+2
.L304:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	atoi, .-atoi
.global	atol
	.type	atol, @function
atol:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+8,r25
	std Y+7,r24
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L306
.L307:
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	std Y+8,r25
	std Y+7,r24
.L306:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	sbiw r24,0
	brne .L307
	ldd r24,Y+7
	ldd r25,Y+8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	cpi r24,43
	cpc r25,__zero_reg__
	breq .L308
	cpi r24,45
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L310
	ldi r24,lo8(1)
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
.L308:
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	std Y+8,r25
	std Y+7,r24
	rjmp .L310
.L311:
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	lsl r24
	rol r25
	rol r26
	rol r27
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	std Y+8,r19
	std Y+7,r18
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	sub r16,r24
	sbc r17,r25
	sbc r18,r26
	sbc r19,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L310:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	cpi r24,10
	cpc r25,__zero_reg__
	brsh .+2
	rjmp .L311
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	brne .L312
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	rjmp .L314
.L312:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L314:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	atol, .-atol
.global	atoll
	.type	atoll, @function
atoll:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,60
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 60 */
/* stack size = 72 */
.L__stack_usage = 72
	std Y+12,r25
	std Y+11,r24
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	rjmp .L316
.L317:
	ldd r24,Y+11
	ldd r25,Y+12
	adiw r24,1
	std Y+12,r25
	std Y+11,r24
.L316:
	ldd r24,Y+11
	ldd r25,Y+12
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	sbiw r24,0
	brne .L317
	ldd r24,Y+11
	ldd r25,Y+12
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	cpi r24,43
	cpc r25,__zero_reg__
	breq .L318
	cpi r24,45
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L320
	ldi r24,lo8(1)
	ldi r25,0
	std Y+10,r25
	std Y+9,r24
.L318:
	ldd r24,Y+11
	ldd r25,Y+12
	adiw r24,1
	std Y+12,r25
	std Y+11,r24
	rjmp .L320
.L321:
	ldd r31,Y+1
	std Y+37,r31
	ldd r24,Y+2
	std Y+38,r24
	ldd r30,Y+3
	std Y+39,r30
	ldd r31,Y+4
	std Y+40,r31
	ldd r24,Y+5
	std Y+41,r24
	ldd r30,Y+6
	std Y+42,r30
	ldd r31,Y+7
	std Y+43,r31
	ldd r24,Y+8
	std Y+44,r24
	ldd r8,Y+37
	ldd r9,Y+38
	ldd r10,Y+39
	ldd r11,Y+40
	ldd r12,Y+41
	ldd r13,Y+42
	ldd r14,Y+43
	ldd r15,Y+44
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(2)
	rcall __ashldi3
	std Y+45,r18
	std Y+46,r19
	std Y+47,r20
	std Y+48,r21
	std Y+49,r22
	std Y+50,r23
	std Y+51,r24
	std Y+52,r25
	ldd r8,Y+45
	ldd r9,Y+46
	ldd r10,Y+47
	ldd r11,Y+48
	ldd r12,Y+49
	ldd r13,Y+50
	ldd r14,Y+51
	ldd r15,Y+52
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldd r10,Y+37
	ldd r11,Y+38
	ldd r12,Y+39
	ldd r13,Y+40
	ldd r14,Y+41
	ldd r15,Y+42
	ldd r16,Y+43
	ldd r17,Y+44
	rcall __adddi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(1)
	rcall __ashldi3
	std Y+53,r18
	std Y+54,r19
	std Y+55,r20
	std Y+56,r21
	std Y+57,r22
	std Y+58,r23
	std Y+59,r24
	std Y+60,r25
	ldd r8,Y+53
	ldd r9,Y+54
	ldd r10,Y+55
	ldd r11,Y+56
	ldd r12,Y+57
	ldd r13,Y+58
	ldd r14,Y+59
	ldd r15,Y+60
	std Y+13,r8
	std Y+14,r9
	std Y+15,r10
	std Y+16,r11
	std Y+17,r12
	std Y+18,r13
	std Y+19,r14
	std Y+20,r15
	ldd r24,Y+11
	ldd r25,Y+12
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	std Y+12,r19
	std Y+11,r18
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	std Y+22,r25
	std Y+21,r24
	lsl r25
	sbc r24,r24
	mov r25,r24
	std Y+23,r24
	std Y+24,r24
	std Y+25,r24
	std Y+26,r24
	std Y+27,r24
	std Y+28,r24
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r10,Y+21
	ldd r11,Y+22
	ldd r12,Y+23
	ldd r13,Y+24
	ldd r14,Y+25
	ldd r15,Y+26
	ldd r16,Y+27
	ldd r17,Y+28
	rcall __subdi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
.L320:
	ldd r24,Y+11
	ldd r25,Y+12
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	cpi r24,10
	cpc r25,__zero_reg__
	brsh .+2
	rjmp .L321
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L322
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __negdi2
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	rjmp .L324
.L322:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
.L324:
	std Y+29,r8
	std Y+30,r9
	std Y+31,r10
	std Y+32,r11
	std Y+33,r12
	std Y+34,r13
	std Y+35,r14
	std Y+36,r15
	ldd r18,Y+29
	ldd r19,Y+30
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	ldd r24,Y+35
	ldd r25,Y+36
/* epilogue start */
	adiw r28,60
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	atoll, .-atoll
.global	bsearch
	.type	bsearch, @function
bsearch:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 18 */
.L__stack_usage = 18
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	std Y+12,r19
	std Y+11,r18
	std Y+14,r17
	std Y+13,r16
	rjmp .L326
.L330:
	ldd r24,Y+9
	ldd r25,Y+10
	lsr r25
	ror r24
	ldd r18,Y+11
	ldd r19,Y+12
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r18,Y+13
	ldd r19,Y+14
	mov r22,r20
	mov r23,r21
	mov r30,r18
	mov r31,r19
	icall
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brge .L327
	ldd r24,Y+9
	ldd r25,Y+10
	lsr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	rjmp .L326
.L327:
	ldd r24,Y+3
	ldd r25,Y+4
	cpi r24,1
	cpc r25,__zero_reg__
	brlt .L328
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	add r24,r18
	adc r25,r19
	std Y+8,r25
	std Y+7,r24
	ldd r24,Y+9
	ldd r25,Y+10
	lsr r25
	ror r24
	ldd r18,Y+9
	ldd r19,Y+10
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
	rjmp .L326
.L328:
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L329
.L326:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .+2
	rjmp .L330
	ldi r24,0
	ldi r25,0
.L329:
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	bsearch, .-bsearch
.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 26 */
.L__stack_usage = 26
	std Y+10,r25
	std Y+9,r24
	std Y+12,r23
	std Y+11,r22
	std Y+14,r21
	std Y+13,r20
	std Y+16,r19
	std Y+15,r18
	std Y+18,r17
	std Y+17,r16
	std Y+20,r15
	std Y+19,r14
	ldd r24,Y+11
	ldd r25,Y+12
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+13
	ldd r25,Y+14
	std Y+4,r25
	std Y+3,r24
	rjmp .L332
.L336:
	ldd r24,Y+3
	ldd r25,Y+4
	asr r25
	ror r24
	ldd r18,Y+15
	ldd r19,Y+16
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	std Y+6,r25
	std Y+5,r24
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r18,Y+17
	ldd r19,Y+18
	mov r30,r18
	mov r31,r19
	icall
	std Y+8,r25
	std Y+7,r24
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brne .L333
	ldd r24,Y+5
	ldd r25,Y+6
	rjmp .L334
.L333:
	ldd r24,Y+7
	ldd r25,Y+8
	cpi r24,1
	cpc r25,__zero_reg__
	brlt .L335
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+15
	ldd r25,Y+16
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
.L335:
	ldd r24,Y+3
	ldd r25,Y+4
	asr r25
	ror r24
	std Y+4,r25
	std Y+3,r24
.L332:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	breq .+2
	rjmp .L336
	ldi r24,0
	ldi r25,0
.L334:
/* epilogue start */
	adiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	bsearch_r, .-bsearch_r
.global	div
	.type	div, @function
div:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	mov r22,r20
	mov r23,r21
	rcall __divmodhi4
	mov r24,r22
	mov r25,r23
	mov r30,r24
	mov r31,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	mov r22,r20
	mov r23,r21
	rcall __divmodhi4
	mov r16,r30
	mov r17,r31
	mov r18,r24
	mov r19,r25
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	div, .-div
.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L340
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	rcall __negdi2
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
.L340:
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	imaxabs, .-imaxabs
.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,42
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 42 */
/* stack size = 60 */
.L__stack_usage = 60
	std Y+18,r25
	std Y+17,r24
	std Y+19,r16
	std Y+20,r17
	std Y+21,r18
	std Y+22,r19
	std Y+23,r20
	std Y+24,r21
	std Y+25,r22
	std Y+26,r23
	std Y+27,r8
	std Y+28,r9
	std Y+29,r10
	std Y+30,r11
	std Y+31,r12
	std Y+32,r13
	std Y+33,r14
	std Y+34,r15
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	ldd r16,Y+33
	ldd r17,Y+34
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	rcall __divdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+35,r8
	std Y+36,r9
	std Y+37,r10
	std Y+38,r11
	std Y+39,r12
	std Y+40,r13
	std Y+41,r14
	std Y+42,r15
	ldd r2,Y+19
	ldd r3,Y+20
	ldd r4,Y+21
	ldd r5,Y+22
	ldd r6,Y+23
	ldd r7,Y+24
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	ldd r16,Y+33
	ldd r17,Y+34
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __moddi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+35
	mov r30,r24
	mov r31,r25
	st Z,r26
	ldd r26,Y+36
	mov r30,r24
	mov r31,r25
	std Z+1,r26
	ldd r26,Y+37
	mov r30,r24
	mov r31,r25
	std Z+2,r26
	ldd r26,Y+38
	mov r30,r24
	mov r31,r25
	std Z+3,r26
	ldd r26,Y+39
	mov r30,r24
	mov r31,r25
	std Z+4,r26
	ldd r26,Y+40
	mov r30,r24
	mov r31,r25
	std Z+5,r26
	ldd r26,Y+41
	mov r30,r24
	mov r31,r25
	std Z+6,r26
	ldd r26,Y+42
	mov r30,r24
	mov r31,r25
	std Z+7,r26
	ldd r24,Y+17
	ldd r25,Y+18
	mov r30,r24
	mov r31,r25
	std Z+8,r16
	mov r30,r24
	mov r31,r25
	std Z+9,r17
	mov r30,r24
	mov r31,r25
	std Z+10,r18
	mov r30,r24
	mov r31,r25
	std Z+11,r19
	mov r30,r24
	mov r31,r25
	std Z+12,r20
	mov r30,r24
	mov r31,r25
	std Z+13,r21
	mov r30,r24
	mov r31,r25
	std Z+14,r22
	mov r30,r24
	mov r31,r25
	std Z+15,r23
	ldd r24,Y+17
	ldd r25,Y+18
/* epilogue start */
	adiw r28,42
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	imaxdiv, .-imaxdiv
.global	labs
	.type	labs, @function
labs:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L345
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
.L345:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	labs, .-labs
.global	ldiv
	.type	ldiv, @function
ldiv:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 44 */
.L__stack_usage = 44
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	std Y+21,r18
	std Y+22,r19
	std Y+23,r20
	std Y+24,r21
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	ldd r16,Y+21
	ldd r17,Y+22
	ldd r18,Y+23
	ldd r19,Y+24
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	mov r21,r19
	mov r20,r18
	mov r19,r17
	mov r18,r16
	rcall __divmodsi4
	mov r27,r21
	mov r26,r20
	mov r25,r19
	mov r24,r18
	mov r12,r24
	mov r13,r25
	mov r14,r26
	mov r15,r27
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	ldd r16,Y+21
	ldd r17,Y+22
	ldd r18,Y+23
	ldd r19,Y+24
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	mov r21,r19
	mov r20,r18
	mov r19,r17
	mov r18,r16
	rcall __divmodsi4
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	std Y+4,r15
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldi r23,0
	ldd r23,Y+1
	ldi r22,0
	ldd r22,Y+2
	ldi r21,0
	ldd r21,Y+3
	ldi r20,0
	ldd r20,Y+4
	ldi r19,0
	ldd r19,Y+5
	ldi r18,0
	ldd r18,Y+6
	ldi r25,0
	ldd r25,Y+7
	ldi r24,0
	ldd r24,Y+8
	std Y+25,r23
	std Y+26,r22
	std Y+27,r21
	std Y+28,r20
	std Y+29,r19
	std Y+30,r18
	std Y+31,r25
	std Y+32,r24
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	ldiv, .-ldiv
.global	llabs
	.type	llabs, @function
llabs:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L350
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	rcall __negdi2
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
.L350:
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	llabs, .-llabs
.global	lldiv
	.type	lldiv, @function
lldiv:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,42
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 42 */
/* stack size = 60 */
.L__stack_usage = 60
	std Y+18,r25
	std Y+17,r24
	std Y+19,r16
	std Y+20,r17
	std Y+21,r18
	std Y+22,r19
	std Y+23,r20
	std Y+24,r21
	std Y+25,r22
	std Y+26,r23
	std Y+27,r8
	std Y+28,r9
	std Y+29,r10
	std Y+30,r11
	std Y+31,r12
	std Y+32,r13
	std Y+33,r14
	std Y+34,r15
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	ldd r16,Y+33
	ldd r17,Y+34
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	rcall __divdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+35,r8
	std Y+36,r9
	std Y+37,r10
	std Y+38,r11
	std Y+39,r12
	std Y+40,r13
	std Y+41,r14
	std Y+42,r15
	ldd r2,Y+19
	ldd r3,Y+20
	ldd r4,Y+21
	ldd r5,Y+22
	ldd r6,Y+23
	ldd r7,Y+24
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	ldd r16,Y+33
	ldd r17,Y+34
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __moddi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+35
	mov r30,r24
	mov r31,r25
	st Z,r26
	ldd r26,Y+36
	mov r30,r24
	mov r31,r25
	std Z+1,r26
	ldd r26,Y+37
	mov r30,r24
	mov r31,r25
	std Z+2,r26
	ldd r26,Y+38
	mov r30,r24
	mov r31,r25
	std Z+3,r26
	ldd r26,Y+39
	mov r30,r24
	mov r31,r25
	std Z+4,r26
	ldd r26,Y+40
	mov r30,r24
	mov r31,r25
	std Z+5,r26
	ldd r26,Y+41
	mov r30,r24
	mov r31,r25
	std Z+6,r26
	ldd r26,Y+42
	mov r30,r24
	mov r31,r25
	std Z+7,r26
	ldd r24,Y+17
	ldd r25,Y+18
	mov r30,r24
	mov r31,r25
	std Z+8,r16
	mov r30,r24
	mov r31,r25
	std Z+9,r17
	mov r30,r24
	mov r31,r25
	std Z+10,r18
	mov r30,r24
	mov r31,r25
	std Z+11,r19
	mov r30,r24
	mov r31,r25
	std Z+12,r20
	mov r30,r24
	mov r31,r25
	std Z+13,r21
	mov r30,r24
	mov r31,r25
	std Z+14,r22
	mov r30,r24
	mov r31,r25
	std Z+15,r23
	ldd r24,Y+17
	ldd r25,Y+18
/* epilogue start */
	adiw r28,42
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	lldiv, .-lldiv
.global	wcschr
	.type	wcschr, @function
wcschr:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	rjmp .L355
.L357:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
.L355:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L356
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brne .L357
.L356:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L358
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L360
.L358:
	ldi r24,0
	ldi r25,0
.L360:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	wcschr, .-wcschr
.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	rjmp .L362
.L364:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	std Y+4,r25
	std Y+3,r24
.L362:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brne .L363
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L363
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L364
.L363:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brlt .L365
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	ldi r20,lo8(1)
	cp r18,r24
	cpc r19,r25
	brlt .L366
	ldi r20,0
.L366:
	mov r24,r20
	ldi r25,0
	rjmp .L368
.L365:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L368:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	wcscmp, .-wcscmp
.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	nop
.L370:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,2
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+3
	ldd r25,Y+4
	mov r20,r24
	mov r21,r25
	subi r20,-2
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L370
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	wcscpy, .-wcscpy
.global	wcslen
	.type	wcslen, @function
wcslen:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	rjmp .L373
.L374:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	std Y+4,r25
	std Y+3,r24
.L373:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L374
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	asr r25
	ror r24
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	wcslen, .-wcslen
.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	rjmp .L377
.L379:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	std Y+4,r25
	std Y+3,r24
.L377:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L378
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brne .L378
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L378
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L379
.L378:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L380
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brlt .L381
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	ldi r20,lo8(1)
	cp r18,r24
	cpc r19,r25
	brlt .L382
	ldi r20,0
.L382:
	mov r24,r20
	ldi r25,0
	rjmp .L385
.L381:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L385
.L380:
	ldi r24,0
	ldi r25,0
.L385:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	wcsncmp, .-wcsncmp
.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	rjmp .L387
.L389:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
.L387:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L388
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brne .L389
.L388:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L390
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L392
.L390:
	ldi r24,0
	ldi r25,0
.L392:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	wmemchr, .-wmemchr
.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	rjmp .L394
.L396:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	std Y+4,r25
	std Y+3,r24
.L394:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L395
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	breq .L396
.L395:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L397
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brlt .L398
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	ldi r20,lo8(1)
	cp r18,r24
	cpc r19,r25
	brlt .L399
	ldi r20,0
.L399:
	mov r24,r20
	ldi r25,0
	rjmp .L402
.L398:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L402
.L397:
	ldi r24,0
	ldi r25,0
.L402:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	wmemcmp, .-wmemcmp
.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	rjmp .L404
.L405:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,2
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+3
	ldd r25,Y+4
	mov r20,r24
	mov r21,r25
	subi r20,-2
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L404:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L405
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	wmemcpy, .-wmemcpy
.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brne .L408
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L409
.L408:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+5
	ldd r25,Y+6
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+7
	ldd r25,Y+8
	lsl r24
	rol r25
	cp r18,r24
	cpc r19,r25
	brsh .L414
	rjmp .L411
.L412:
	ldd r24,Y+7
	ldd r25,Y+8
	lsl r24
	rol r25
	ldd r18,Y+5
	ldd r19,Y+6
	add r18,r24
	adc r19,r25
	ldd r24,Y+7
	ldd r25,Y+8
	lsl r24
	rol r25
	ldd r20,Y+3
	ldd r21,Y+4
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L411:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L412
	rjmp .L413
.L415:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,2
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+3
	ldd r25,Y+4
	mov r20,r24
	mov r21,r25
	subi r20,-2
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L414:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L415
.L413:
	ldd r24,Y+1
	ldd r25,Y+2
.L409:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	wmemmove, .-wmemmove
.global	wmemset
	.type	wmemset, @function
wmemset:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	rjmp .L417
.L418:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r18,r24
	mov r19,r25
	subi r18,-2
	sbci r19,-1
	std Y+4,r19
	std Y+3,r18
	ldd r18,Y+5
	ldd r19,Y+6
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L417:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L418
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	wmemset, .-wmemset
.global	bcopy
	.type	bcopy, @function
bcopy:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	cp r18,r24
	cpc r19,r25
	brsh .L421
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	rjmp .L422
.L423:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
.L422:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L423
	rjmp .L427
.L421:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	cp r18,r24
	cpc r19,r25
	breq .L427
	rjmp .L425
.L426:
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r18
	mov r25,r19
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+3
	ldd r25,Y+4
	mov r20,r24
	mov r21,r25
	subi r20,-1
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
.L425:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L426
.L427:
	nop
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	bcopy, .-bcopy
.global	rotl64
	.type	rotl64, @function
rotl64:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 30 */
.L__stack_usage = 30
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+10,r17
	std Y+9,r16
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r16,Y+9
	rcall __rotldi3
	std Y+11,r18
	std Y+12,r19
	std Y+13,r20
	std Y+14,r21
	std Y+15,r22
	std Y+16,r23
	std Y+17,r24
	std Y+18,r25
	ldd r8,Y+11
	ldd r9,Y+12
	ldd r10,Y+13
	ldd r11,Y+14
	ldd r12,Y+15
	ldd r13,Y+16
	ldd r14,Y+17
	ldd r15,Y+18
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	rotl64, .-rotl64
.global	rotr64
	.type	rotr64, @function
rotr64:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 30 */
.L__stack_usage = 30
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+10,r17
	std Y+9,r16
	ldi r18,lo8(64)
	ldi r19,0
	ldd r24,Y+9
	ldd r25,Y+10
	mov r30,r18
	mov r31,r19
	sub r30,r24
	sbc r31,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	mov r16,r30
	rcall __rotldi3
	std Y+11,r18
	std Y+12,r19
	std Y+13,r20
	std Y+14,r21
	std Y+15,r22
	std Y+16,r23
	std Y+17,r24
	std Y+18,r25
	ldd r8,Y+11
	ldd r9,Y+12
	ldd r10,Y+13
	ldd r11,Y+14
	ldd r12,Y+15
	ldd r13,Y+16
	ldd r14,Y+17
	ldd r15,Y+18
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	rotr64, .-rotr64
.global	rotl32
	.type	rotl32, @function
rotl32:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+6,r21
	std Y+5,r20
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r0,Y+5
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r0
	brpl 1b
	ldd r18,Y+5
	ldd r19,Y+6
	neg r19
	neg r18
	sbc r19,__zero_reg__
	andi r18,31
	clr r19
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotl32, .-rotl32
.global	rotr32
	.type	rotr32, @function
rotr32:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+6,r21
	std Y+5,r20
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r0,Y+5
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r0
	brpl 1b
	ldd r18,Y+5
	ldd r19,Y+6
	neg r19
	neg r18
	sbc r19,__zero_reg__
	andi r18,31
	clr r19
	mov r0,r18
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r0
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotr32, .-rotr32
.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	ldd r0,Y+3
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	ldd r20,Y+3
	ldd r21,Y+4
	neg r21
	neg r20
	sbc r21,__zero_reg__
	andi r20,15
	clr r21
	mov r0,r20
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotl_sz, .-rotl_sz
.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	ldd r0,Y+3
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r0
	brpl 1b
	ldd r20,Y+3
	ldd r21,Y+4
	neg r21
	neg r20
	sbc r21,__zero_reg__
	andi r20,15
	clr r21
	mov r0,r20
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotr_sz, .-rotr_sz
.global	rotl16
	.type	rotl16, @function
rotl16:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	ldd r0,Y+3
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	ldd r20,Y+3
	ldd r21,Y+4
	neg r21
	neg r20
	sbc r21,__zero_reg__
	andi r20,15
	clr r21
	mov r0,r20
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotl16, .-rotl16
.global	rotr16
	.type	rotr16, @function
rotr16:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	ldd r0,Y+3
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r0
	brpl 1b
	ldd r20,Y+3
	ldd r21,Y+4
	neg r21
	neg r20
	sbc r21,__zero_reg__
	andi r20,15
	clr r21
	mov r0,r20
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotr16, .-rotr16
.global	rotl8
	.type	rotl8, @function
rotl8:
	push r28
	push r29
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+1,r24
	std Y+3,r23
	std Y+2,r22
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	ldd r0,Y+2
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	mov r22,r24
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	ldi r20,lo8(8)
	ldi r21,0
	ldd r18,Y+2
	ldd r19,Y+3
	mov r30,r20
	mov r31,r21
	sub r30,r18
	sbc r31,r19
	mov r18,r30
	mov r19,r31
	mov r0,r18
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	or r24,r22
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotl8, .-rotl8
.global	rotr8
	.type	rotr8, @function
rotr8:
	push r28
	push r29
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+1,r24
	std Y+3,r23
	std Y+2,r22
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	ldd r0,Y+2
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	mov r22,r24
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	ldi r20,lo8(8)
	ldi r21,0
	ldd r18,Y+2
	ldd r19,Y+3
	mov r30,r20
	mov r31,r21
	sub r30,r18
	sbc r31,r19
	mov r18,r30
	mov r19,r31
	mov r0,r18
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r22
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	rotr8, .-rotr8
.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	ldi r24,lo8(-1)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r19,r24
	clr r18
	ldd r24,Y+3
	ldd r25,Y+4
	and r24,r18
	and r25,r19
	mov r18,r25
	clr r19
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	and r24,r20
	and r25,r21
	mov r25,r24
	clr r24
	or r24,r18
	or r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	bswap_16, .-bswap_16
.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldi r24,lo8(-1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r23,r24
	clr r22
	clr r21
	clr r20
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	mov r20,r27
	clr r21
	clr r22
	clr r23
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r18,r24
	mov r19,r25
	clr r17
	clr r16
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	and r24,r16
	and r25,r17
	and r26,r18
	and r27,r19
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	clr r16
	mov r17,r24
	mov r18,r25
	mov r19,r26
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	and r24,r16
	and r25,r17
	and r26,r18
	and r27,r19
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	ldd r16,Y+5
	ldd r17,Y+6
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	and r24,r16
	and r25,r17
	and r26,r18
	and r27,r19
	mov r27,r24
	clr r26
	clr r25
	clr r24
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	bswap_32, .-bswap_32
.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,-112
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 144 */
/* stack size = 155 */
.L__stack_usage = 155
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	ldi r24,lo8(-1)
	std Y+1,r24
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(56)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r8
	std Y+17,r18
	ldd r24,Y+10
	mov r25,r24
	and r25,r9
	std Y+18,r25
	ldd r24,Y+11
	mov r18,r24
	and r18,r10
	std Y+19,r18
	ldd r24,Y+12
	mov r25,r24
	and r25,r11
	std Y+20,r25
	ldd r24,Y+13
	mov r18,r24
	and r18,r12
	std Y+21,r18
	ldd r24,Y+14
	mov r25,r24
	and r25,r13
	std Y+22,r25
	ldd r24,Y+15
	mov r18,r24
	and r18,r14
	std Y+23,r18
	ldd r24,Y+16
	mov r25,r24
	and r25,r15
	std Y+24,r25
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	ldi r16,lo8(56)
	rcall __lshrdi3
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(48)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r8
	std Y+33,r18
	ldd r24,Y+10
	mov r25,r24
	and r25,r9
	std Y+34,r25
	ldd r24,Y+11
	mov r18,r24
	and r18,r10
	std Y+35,r18
	ldd r24,Y+12
	mov r25,r24
	and r25,r11
	std Y+36,r25
	ldd r24,Y+13
	mov r18,r24
	and r18,r12
	std Y+37,r18
	ldd r24,Y+14
	mov r25,r24
	and r25,r13
	std Y+38,r25
	ldd r24,Y+15
	mov r18,r24
	and r18,r14
	std Y+39,r18
	ldd r24,Y+16
	mov r25,r24
	and r25,r15
	std Y+40,r25
	ldd r18,Y+33
	ldd r19,Y+34
	ldd r20,Y+35
	ldd r21,Y+36
	ldd r22,Y+37
	ldd r23,Y+38
	ldd r24,Y+39
	ldd r25,Y+40
	ldi r16,lo8(40)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r18,Y+25
	or r18,r8
	std Y+41,r18
	ldd r24,Y+26
	or r24,r9
	std Y+42,r24
	ldd r25,Y+27
	or r25,r10
	std Y+43,r25
	ldd r18,Y+28
	or r18,r11
	std Y+44,r18
	ldd r24,Y+29
	or r24,r12
	std Y+45,r24
	ldd r25,Y+30
	or r25,r13
	std Y+46,r25
	ldd r18,Y+31
	or r18,r14
	std Y+47,r18
	ldd r24,Y+32
	or r24,r15
	std Y+48,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(40)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+9
	mov r25,r24
	and r25,r8
	std Y+49,r25
	ldd r24,Y+10
	mov r18,r24
	and r18,r9
	std Y+50,r18
	ldd r24,Y+11
	mov r25,r24
	and r25,r10
	std Y+51,r25
	ldd r24,Y+12
	mov r18,r24
	and r18,r11
	std Y+52,r18
	ldd r24,Y+13
	mov r25,r24
	and r25,r12
	std Y+53,r25
	ldd r24,Y+14
	mov r18,r24
	and r18,r13
	std Y+54,r18
	ldd r24,Y+15
	mov r25,r24
	and r25,r14
	std Y+55,r25
	ldd r24,Y+16
	mov r18,r24
	and r18,r15
	std Y+56,r18
	ldd r18,Y+49
	ldd r19,Y+50
	ldd r20,Y+51
	ldd r21,Y+52
	ldd r22,Y+53
	ldd r23,Y+54
	ldd r24,Y+55
	ldd r25,Y+56
	ldi r16,lo8(24)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+41
	or r24,r8
	std Y+57,r24
	ldd r25,Y+42
	or r25,r9
	std Y+58,r25
	ldd r18,Y+43
	or r18,r10
	std Y+59,r18
	ldd r24,Y+44
	or r24,r11
	std Y+60,r24
	ldd r25,Y+45
	or r25,r12
	std Y+61,r25
	ldd r18,Y+46
	or r18,r13
	std Y+62,r18
	ldd r24,Y+47
	or r24,r14
	std Y+63,r24
	ldd r25,Y+48
	or r25,r15
	adiw r28,64-63
	std Y+63,r25
	sbiw r28,64-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(32)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r8
	adiw r28,65-63
	std Y+63,r18
	sbiw r28,65-63
	ldd r24,Y+10
	mov r25,r24
	and r25,r9
	adiw r28,66-63
	std Y+63,r25
	sbiw r28,66-63
	ldd r24,Y+11
	mov r18,r24
	and r18,r10
	adiw r28,67-63
	std Y+63,r18
	sbiw r28,67-63
	ldd r24,Y+12
	mov r25,r24
	and r25,r11
	adiw r28,68-63
	std Y+63,r25
	sbiw r28,68-63
	ldd r24,Y+13
	mov r18,r24
	and r18,r12
	adiw r28,69-63
	std Y+63,r18
	sbiw r28,69-63
	ldd r24,Y+14
	mov r25,r24
	and r25,r13
	adiw r28,70-63
	std Y+63,r25
	sbiw r28,70-63
	ldd r24,Y+15
	mov r18,r24
	and r18,r14
	adiw r28,71-63
	std Y+63,r18
	sbiw r28,71-63
	ldd r24,Y+16
	mov r25,r24
	and r25,r15
	adiw r28,72-63
	std Y+63,r25
	sbiw r28,72-63
	adiw r28,65-63
	ldd r18,Y+63
	sbiw r28,65-63
	adiw r28,66-63
	ldd r19,Y+63
	sbiw r28,66-63
	adiw r28,67-63
	ldd r20,Y+63
	sbiw r28,67-63
	adiw r28,68-63
	ldd r21,Y+63
	sbiw r28,68-63
	adiw r28,69-63
	ldd r22,Y+63
	sbiw r28,69-63
	adiw r28,70-63
	ldd r23,Y+63
	sbiw r28,70-63
	adiw r28,71-63
	ldd r24,Y+63
	sbiw r28,71-63
	adiw r28,72-63
	ldd r25,Y+63
	sbiw r28,72-63
	ldi r16,lo8(8)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r18,Y+57
	or r18,r8
	adiw r28,73-63
	std Y+63,r18
	sbiw r28,73-63
	ldd r24,Y+58
	or r24,r9
	adiw r28,74-63
	std Y+63,r24
	sbiw r28,74-63
	ldd r25,Y+59
	or r25,r10
	adiw r28,75-63
	std Y+63,r25
	sbiw r28,75-63
	ldd r18,Y+60
	or r18,r11
	adiw r28,76-63
	std Y+63,r18
	sbiw r28,76-63
	ldd r24,Y+61
	or r24,r12
	adiw r28,77-63
	std Y+63,r24
	sbiw r28,77-63
	ldd r25,Y+62
	or r25,r13
	adiw r28,78-63
	std Y+63,r25
	sbiw r28,78-63
	ldd r18,Y+63
	or r18,r14
	adiw r28,79-63
	std Y+63,r18
	sbiw r28,79-63
	adiw r28,64-63
	ldd r24,Y+63
	sbiw r28,64-63
	or r24,r15
	adiw r28,80-63
	std Y+63,r24
	sbiw r28,80-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(24)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+9
	mov r25,r24
	and r25,r8
	adiw r28,81-63
	std Y+63,r25
	sbiw r28,81-63
	ldd r24,Y+10
	mov r18,r24
	and r18,r9
	adiw r28,82-63
	std Y+63,r18
	sbiw r28,82-63
	ldd r24,Y+11
	mov r25,r24
	and r25,r10
	adiw r28,83-63
	std Y+63,r25
	sbiw r28,83-63
	ldd r24,Y+12
	mov r18,r24
	and r18,r11
	adiw r28,84-63
	std Y+63,r18
	sbiw r28,84-63
	ldd r24,Y+13
	mov r25,r24
	and r25,r12
	adiw r28,85-63
	std Y+63,r25
	sbiw r28,85-63
	ldd r24,Y+14
	mov r18,r24
	and r18,r13
	adiw r28,86-63
	std Y+63,r18
	sbiw r28,86-63
	ldd r24,Y+15
	mov r25,r24
	and r25,r14
	adiw r28,87-63
	std Y+63,r25
	sbiw r28,87-63
	ldd r24,Y+16
	mov r18,r24
	and r18,r15
	adiw r28,88-63
	std Y+63,r18
	sbiw r28,88-63
	adiw r28,81-63
	ldd r18,Y+63
	sbiw r28,81-63
	adiw r28,82-63
	ldd r19,Y+63
	sbiw r28,82-63
	adiw r28,83-63
	ldd r20,Y+63
	sbiw r28,83-63
	adiw r28,84-63
	ldd r21,Y+63
	sbiw r28,84-63
	adiw r28,85-63
	ldd r22,Y+63
	sbiw r28,85-63
	adiw r28,86-63
	ldd r23,Y+63
	sbiw r28,86-63
	adiw r28,87-63
	ldd r24,Y+63
	sbiw r28,87-63
	adiw r28,88-63
	ldd r25,Y+63
	sbiw r28,88-63
	ldi r16,lo8(8)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	adiw r28,73-63
	ldd r24,Y+63
	sbiw r28,73-63
	or r24,r8
	adiw r28,89-63
	std Y+63,r24
	sbiw r28,89-63
	adiw r28,74-63
	ldd r25,Y+63
	sbiw r28,74-63
	or r25,r9
	adiw r28,90-63
	std Y+63,r25
	sbiw r28,90-63
	adiw r28,75-63
	ldd r18,Y+63
	sbiw r28,75-63
	or r18,r10
	adiw r28,91-63
	std Y+63,r18
	sbiw r28,91-63
	adiw r28,76-63
	ldd r24,Y+63
	sbiw r28,76-63
	or r24,r11
	adiw r28,92-63
	std Y+63,r24
	sbiw r28,92-63
	adiw r28,77-63
	ldd r25,Y+63
	sbiw r28,77-63
	or r25,r12
	adiw r28,93-63
	std Y+63,r25
	sbiw r28,93-63
	adiw r28,78-63
	ldd r18,Y+63
	sbiw r28,78-63
	or r18,r13
	adiw r28,94-63
	std Y+63,r18
	sbiw r28,94-63
	adiw r28,79-63
	ldd r24,Y+63
	sbiw r28,79-63
	or r24,r14
	adiw r28,95-63
	std Y+63,r24
	sbiw r28,95-63
	adiw r28,80-63
	ldd r25,Y+63
	sbiw r28,80-63
	or r25,r15
	adiw r28,96-63
	std Y+63,r25
	sbiw r28,96-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(16)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r8
	adiw r28,97-63
	std Y+63,r18
	sbiw r28,97-63
	ldd r24,Y+10
	mov r25,r24
	and r25,r9
	adiw r28,98-63
	std Y+63,r25
	sbiw r28,98-63
	ldd r24,Y+11
	mov r18,r24
	and r18,r10
	adiw r28,99-63
	std Y+63,r18
	sbiw r28,99-63
	ldd r24,Y+12
	mov r25,r24
	and r25,r11
	adiw r28,100-63
	std Y+63,r25
	sbiw r28,100-63
	ldd r24,Y+13
	mov r18,r24
	and r18,r12
	adiw r28,101-63
	std Y+63,r18
	sbiw r28,101-63
	ldd r24,Y+14
	mov r25,r24
	and r25,r13
	adiw r28,102-63
	std Y+63,r25
	sbiw r28,102-63
	ldd r24,Y+15
	mov r18,r24
	and r18,r14
	adiw r28,103-63
	std Y+63,r18
	sbiw r28,103-63
	ldd r24,Y+16
	mov r25,r24
	and r25,r15
	adiw r28,104-63
	std Y+63,r25
	sbiw r28,104-63
	adiw r28,97-63
	ldd r18,Y+63
	sbiw r28,97-63
	adiw r28,98-63
	ldd r19,Y+63
	sbiw r28,98-63
	adiw r28,99-63
	ldd r20,Y+63
	sbiw r28,99-63
	adiw r28,100-63
	ldd r21,Y+63
	sbiw r28,100-63
	adiw r28,101-63
	ldd r22,Y+63
	sbiw r28,101-63
	adiw r28,102-63
	ldd r23,Y+63
	sbiw r28,102-63
	adiw r28,103-63
	ldd r24,Y+63
	sbiw r28,103-63
	adiw r28,104-63
	ldd r25,Y+63
	sbiw r28,104-63
	ldi r16,lo8(24)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	adiw r28,89-63
	ldd r18,Y+63
	sbiw r28,89-63
	or r18,r8
	adiw r28,105-63
	std Y+63,r18
	sbiw r28,105-63
	adiw r28,90-63
	ldd r24,Y+63
	sbiw r28,90-63
	or r24,r9
	adiw r28,106-63
	std Y+63,r24
	sbiw r28,106-63
	adiw r28,91-63
	ldd r25,Y+63
	sbiw r28,91-63
	or r25,r10
	adiw r28,107-63
	std Y+63,r25
	sbiw r28,107-63
	adiw r28,92-63
	ldd r18,Y+63
	sbiw r28,92-63
	or r18,r11
	adiw r28,108-63
	std Y+63,r18
	sbiw r28,108-63
	adiw r28,93-63
	ldd r24,Y+63
	sbiw r28,93-63
	or r24,r12
	adiw r28,109-63
	std Y+63,r24
	sbiw r28,109-63
	adiw r28,94-63
	ldd r25,Y+63
	sbiw r28,94-63
	or r25,r13
	adiw r28,110-63
	std Y+63,r25
	sbiw r28,110-63
	adiw r28,95-63
	ldd r18,Y+63
	sbiw r28,95-63
	or r18,r14
	adiw r28,111-63
	std Y+63,r18
	sbiw r28,111-63
	adiw r28,96-63
	ldd r24,Y+63
	sbiw r28,96-63
	or r24,r15
	adiw r28,112-63
	std Y+63,r24
	sbiw r28,112-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(8)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+9
	mov r25,r24
	and r25,r8
	adiw r28,113-63
	std Y+63,r25
	sbiw r28,113-63
	ldd r24,Y+10
	mov r18,r24
	and r18,r9
	adiw r28,114-63
	std Y+63,r18
	sbiw r28,114-63
	ldd r24,Y+11
	mov r25,r24
	and r25,r10
	adiw r28,115-63
	std Y+63,r25
	sbiw r28,115-63
	ldd r24,Y+12
	mov r18,r24
	and r18,r11
	adiw r28,116-63
	std Y+63,r18
	sbiw r28,116-63
	ldd r24,Y+13
	mov r25,r24
	and r25,r12
	adiw r28,117-63
	std Y+63,r25
	sbiw r28,117-63
	ldd r24,Y+14
	mov r18,r24
	and r18,r13
	adiw r28,118-63
	std Y+63,r18
	sbiw r28,118-63
	ldd r24,Y+15
	mov r25,r24
	and r25,r14
	adiw r28,119-63
	std Y+63,r25
	sbiw r28,119-63
	ldd r24,Y+16
	mov r18,r24
	and r18,r15
	adiw r28,120-63
	std Y+63,r18
	sbiw r28,120-63
	adiw r28,113-63
	ldd r18,Y+63
	sbiw r28,113-63
	adiw r28,114-63
	ldd r19,Y+63
	sbiw r28,114-63
	adiw r28,115-63
	ldd r20,Y+63
	sbiw r28,115-63
	adiw r28,116-63
	ldd r21,Y+63
	sbiw r28,116-63
	adiw r28,117-63
	ldd r22,Y+63
	sbiw r28,117-63
	adiw r28,118-63
	ldd r23,Y+63
	sbiw r28,118-63
	adiw r28,119-63
	ldd r24,Y+63
	sbiw r28,119-63
	adiw r28,120-63
	ldd r25,Y+63
	sbiw r28,120-63
	ldi r16,lo8(40)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	adiw r28,105-63
	ldd r24,Y+63
	sbiw r28,105-63
	or r24,r8
	adiw r28,121-63
	std Y+63,r24
	sbiw r28,121-63
	adiw r28,106-63
	ldd r25,Y+63
	sbiw r28,106-63
	or r25,r9
	adiw r28,122-63
	std Y+63,r25
	sbiw r28,122-63
	adiw r28,107-63
	ldd r18,Y+63
	sbiw r28,107-63
	or r18,r10
	adiw r28,123-63
	std Y+63,r18
	sbiw r28,123-63
	adiw r28,108-63
	ldd r24,Y+63
	sbiw r28,108-63
	or r24,r11
	adiw r28,124-63
	std Y+63,r24
	sbiw r28,124-63
	adiw r28,109-63
	ldd r25,Y+63
	sbiw r28,109-63
	or r25,r12
	adiw r28,125-63
	std Y+63,r25
	sbiw r28,125-63
	adiw r28,110-63
	ldd r18,Y+63
	sbiw r28,110-63
	or r18,r13
	adiw r28,126-63
	std Y+63,r18
	sbiw r28,126-63
	adiw r28,111-63
	ldd r24,Y+63
	sbiw r28,111-63
	or r24,r14
	subi r28,lo8(-127)
	sbci r29,hi8(-127)
	st Y,r24
	subi r28,lo8(127)
	sbci r29,hi8(127)
	adiw r28,112-63
	ldd r25,Y+63
	sbiw r28,112-63
	or r25,r15
	subi r28,lo8(-128)
	sbci r29,hi8(-128)
	st Y,r25
	subi r28,lo8(128)
	sbci r29,hi8(128)
	ldd r25,Y+9
	ldd r24,Y+1
	mov r18,r25
	and r18,r24
	subi r28,lo8(-129)
	sbci r29,hi8(-129)
	st Y,r18
	subi r28,lo8(129)
	sbci r29,hi8(129)
	ldd r25,Y+10
	ldd r24,Y+2
	mov r18,r25
	and r18,r24
	subi r28,lo8(-130)
	sbci r29,hi8(-130)
	st Y,r18
	subi r28,lo8(130)
	sbci r29,hi8(130)
	ldd r25,Y+11
	ldd r24,Y+3
	mov r18,r25
	and r18,r24
	subi r28,lo8(-131)
	sbci r29,hi8(-131)
	st Y,r18
	subi r28,lo8(131)
	sbci r29,hi8(131)
	ldd r25,Y+12
	ldd r24,Y+4
	mov r18,r25
	and r18,r24
	subi r28,lo8(-132)
	sbci r29,hi8(-132)
	st Y,r18
	subi r28,lo8(132)
	sbci r29,hi8(132)
	ldd r25,Y+13
	ldd r24,Y+5
	mov r18,r25
	and r18,r24
	subi r28,lo8(-133)
	sbci r29,hi8(-133)
	st Y,r18
	subi r28,lo8(133)
	sbci r29,hi8(133)
	ldd r25,Y+14
	ldd r24,Y+6
	mov r18,r25
	and r18,r24
	subi r28,lo8(-134)
	sbci r29,hi8(-134)
	st Y,r18
	subi r28,lo8(134)
	sbci r29,hi8(134)
	ldd r25,Y+15
	ldd r24,Y+7
	mov r18,r25
	and r18,r24
	subi r28,lo8(-135)
	sbci r29,hi8(-135)
	st Y,r18
	subi r28,lo8(135)
	sbci r29,hi8(135)
	ldd r25,Y+16
	ldd r24,Y+8
	mov r18,r25
	and r18,r24
	subi r28,lo8(-136)
	sbci r29,hi8(-136)
	st Y,r18
	subi r28,lo8(136)
	sbci r29,hi8(136)
	subi r28,lo8(-129)
	sbci r29,hi8(-129)
	ld r18,Y
	subi r28,lo8(129)
	sbci r29,hi8(129)
	subi r28,lo8(-130)
	sbci r29,hi8(-130)
	ld r19,Y
	subi r28,lo8(130)
	sbci r29,hi8(130)
	subi r28,lo8(-131)
	sbci r29,hi8(-131)
	ld r20,Y
	subi r28,lo8(131)
	sbci r29,hi8(131)
	subi r28,lo8(-132)
	sbci r29,hi8(-132)
	ld r21,Y
	subi r28,lo8(132)
	sbci r29,hi8(132)
	subi r28,lo8(-133)
	sbci r29,hi8(-133)
	ld r22,Y
	subi r28,lo8(133)
	sbci r29,hi8(133)
	subi r28,lo8(-134)
	sbci r29,hi8(-134)
	ld r23,Y
	subi r28,lo8(134)
	sbci r29,hi8(134)
	subi r28,lo8(-135)
	sbci r29,hi8(-135)
	ld r24,Y
	subi r28,lo8(135)
	sbci r29,hi8(135)
	subi r28,lo8(-136)
	sbci r29,hi8(-136)
	ld r25,Y
	subi r28,lo8(136)
	sbci r29,hi8(136)
	ldi r16,lo8(56)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	adiw r28,121-63
	ldd r24,Y+63
	sbiw r28,121-63
	or r24,r8
	subi r28,lo8(-137)
	sbci r29,hi8(-137)
	st Y,r24
	subi r28,lo8(137)
	sbci r29,hi8(137)
	adiw r28,122-63
	ldd r25,Y+63
	sbiw r28,122-63
	or r25,r9
	subi r28,lo8(-138)
	sbci r29,hi8(-138)
	st Y,r25
	subi r28,lo8(138)
	sbci r29,hi8(138)
	adiw r28,123-63
	ldd r18,Y+63
	sbiw r28,123-63
	or r18,r10
	subi r28,lo8(-139)
	sbci r29,hi8(-139)
	st Y,r18
	subi r28,lo8(139)
	sbci r29,hi8(139)
	adiw r28,124-63
	ldd r24,Y+63
	sbiw r28,124-63
	or r24,r11
	subi r28,lo8(-140)
	sbci r29,hi8(-140)
	st Y,r24
	subi r28,lo8(140)
	sbci r29,hi8(140)
	adiw r28,125-63
	ldd r25,Y+63
	sbiw r28,125-63
	or r25,r12
	subi r28,lo8(-141)
	sbci r29,hi8(-141)
	st Y,r25
	subi r28,lo8(141)
	sbci r29,hi8(141)
	adiw r28,126-63
	ldd r18,Y+63
	sbiw r28,126-63
	or r18,r13
	subi r28,lo8(-142)
	sbci r29,hi8(-142)
	st Y,r18
	subi r28,lo8(142)
	sbci r29,hi8(142)
	subi r28,lo8(-127)
	sbci r29,hi8(-127)
	ld r24,Y
	subi r28,lo8(127)
	sbci r29,hi8(127)
	or r24,r14
	subi r28,lo8(-143)
	sbci r29,hi8(-143)
	st Y,r24
	subi r28,lo8(143)
	sbci r29,hi8(143)
	subi r28,lo8(-128)
	sbci r29,hi8(-128)
	ld r25,Y
	subi r28,lo8(128)
	sbci r29,hi8(128)
	or r25,r15
	subi r28,lo8(-144)
	sbci r29,hi8(-144)
	st Y,r25
	subi r28,lo8(144)
	sbci r29,hi8(144)
	subi r28,lo8(-137)
	sbci r29,hi8(-137)
	ld r8,Y
	subi r28,lo8(137)
	sbci r29,hi8(137)
	subi r28,lo8(-138)
	sbci r29,hi8(-138)
	ld r9,Y
	subi r28,lo8(138)
	sbci r29,hi8(138)
	subi r28,lo8(-139)
	sbci r29,hi8(-139)
	ld r10,Y
	subi r28,lo8(139)
	sbci r29,hi8(139)
	subi r28,lo8(-140)
	sbci r29,hi8(-140)
	ld r11,Y
	subi r28,lo8(140)
	sbci r29,hi8(140)
	subi r28,lo8(-141)
	sbci r29,hi8(-141)
	ld r12,Y
	subi r28,lo8(141)
	sbci r29,hi8(141)
	subi r28,lo8(-142)
	sbci r29,hi8(-142)
	ld r13,Y
	subi r28,lo8(142)
	sbci r29,hi8(142)
	subi r28,lo8(-143)
	sbci r29,hi8(-143)
	ld r14,Y
	subi r28,lo8(143)
	sbci r29,hi8(143)
	subi r28,lo8(-144)
	sbci r29,hi8(-144)
	ld r15,Y
	subi r28,lo8(144)
	sbci r29,hi8(144)
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	subi r28,112
	sbci r29,-1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	bswap_64, .-bswap_64
.global	ffs
	.type	ffs, @function
ffs:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L455
.L458:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L456
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	rjmp .L457
.L456:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L455:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlo .L458
	ldi r24,0
	ldi r25,0
.L457:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	ffs, .-ffs
.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	sbiw r24,0
	brne .L460
	ldi r24,0
	ldi r25,0
	rjmp .L461
.L460:
	ldi r16,lo8(1)
	ldi r17,0
	rjmp .L462
.L463:
	asr r25
	ror r24
	subi r16,-1
	sbci r17,-1
.L462:
	mov r18,r24
	andi r18,1<<0
	clr r19
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L463
	mov r24,r16
	mov r25,r17
.L461:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	libiberty_ffs, .-libiberty_ffs
.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-1)
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L465
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cpi r24,lo8(1)
	brlt .L470
.L465:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L469
.L470:
	ldi r24,0
	ldi r25,0
.L469:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	gl_isinff, .-gl_isinff
.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-1)
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L472
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cpi r24,lo8(1)
	brlt .L477
.L472:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L476
.L477:
	ldi r24,0
	ldi r25,0
.L476:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	gl_isinfd, .-gl_isinfd
.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 18 */
.L__stack_usage = 18
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	clr r10
	dec r10
	clr r11
	dec r11
	clr r12
	dec r12
	clr r13
	dec r13
	clr r14
	dec r14
	clr r15
	dec r15
	ldi r16,lo8(-17)
	ldi r17,lo8(-1)
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __ltdf2
	cp r24, __zero_reg__
	brne .L479
	clr r10
	dec r10
	clr r11
	dec r11
	clr r12
	dec r12
	clr r13
	dec r13
	clr r14
	dec r14
	clr r15
	dec r15
	ldi r16,lo8(-17)
	ldi r17,lo8(127)
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gtdf2
	cp r24, __zero_reg__
	breq .L484
.L479:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L483
.L484:
	ldi r24,0
	ldi r25,0
.L483:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	gl_isinfl, .-gl_isinfl
.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+3
	ldd r25,Y+4
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __floatsisf
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __extendsfdf2
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r8
	mov r30,r24
	mov r31,r25
	std Z+1,r9
	mov r30,r24
	mov r31,r25
	std Z+2,r10
	mov r30,r24
	mov r31,r25
	std Z+3,r11
	mov r30,r24
	mov r31,r25
	std Z+4,r12
	mov r30,r24
	mov r31,r25
	std Z+5,r13
	mov r30,r24
	mov r31,r25
	std Z+6,r14
	mov r30,r24
	mov r31,r25
	std Z+7,r15
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	_Qp_itoq, .-_Qp_itoq
.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+10,r21
	std Y+9,r20
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .+2
	rjmp .L487
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __addsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L487
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brge .L489
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(63)
	rjmp .L490
.L489:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(64)
.L490:
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L494:
	ldd r24,Y+9
	ldd r25,Y+10
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L491
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L491:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brge .L492
	adiw r24,1
.L492:
	asr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L497
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	rjmp .L494
.L497:
	nop
.L487:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	ldexpf, .-ldexpf
.global	ldexp
	.type	ldexp, @function
ldexp:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+10,r21
	std Y+9,r20
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __unordsf2
	cp r24, __zero_reg__
	breq .+2
	rjmp .L499
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __addsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L499
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brge .L501
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(63)
	rjmp .L502
.L501:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(64)
.L502:
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L506:
	ldd r24,Y+9
	ldd r25,Y+10
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L503
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L503:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brge .L504
	adiw r24,1
.L504:
	asr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L509
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	rjmp .L506
.L509:
	nop
.L499:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	ldexp, .-ldexp
.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 36 */
.L__stack_usage = 36
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	std Y+18,r17
	std Y+17,r16
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __unorddf2
	cp r24, __zero_reg__
	breq .+2
	rjmp .L511
	ldd r2,Y+9
	ldd r3,Y+10
	ldd r4,Y+11
	ldd r5,Y+12
	ldd r6,Y+13
	ldd r7,Y+14
	ldd r8,Y+15
	ldd r9,Y+16
	mov r10,r2
	mov r11,r3
	mov r12,r4
	mov r13,r5
	mov r14,r6
	mov r15,r7
	mov r16,r8
	mov r17,r9
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __adddf3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __nedf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L511
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	brge .L513
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(-32)
	ldi r23,lo8(63)
	rjmp .L514
.L513:
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,lo8(64)
.L514:
	std Y+1,r16
	std Y+2,r17
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
.L518:
	ldd r24,Y+17
	ldd r25,Y+18
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L515
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __muldf3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
.L515:
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	brge .L516
	adiw r24,1
.L516:
	asr r25
	ror r24
	std Y+18,r25
	std Y+17,r24
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	breq .L521
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __muldf3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	rjmp .L518
.L521:
	nop
.L511:
	ldd r16,Y+9
	ldd r17,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	ldexpl, .-ldexpl
.global	memxor
	.type	memxor, @function
memxor:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+4,r25
	std Y+3,r24
	rjmp .L523
.L524:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	std Y+2,r19
	std Y+1,r18
	mov r30,r24
	mov r31,r25
	ld r20,Z
	ldd r24,Y+3
	ldd r25,Y+4
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	std Y+4,r19
	std Y+3,r18
	mov r30,r24
	mov r31,r25
	ld r18,Z
	eor r18,r20
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
.L523:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L524
	ldd r24,Y+5
	ldd r25,Y+6
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memxor, .-memxor
.global	strncat
	.type	strncat, @function
strncat:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	ldd r24,Y+3
	ldd r25,Y+4
	rcall strlen
	mov r18,r24
	mov r19,r25
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	rjmp .L527
.L529:
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,1
	std Y+8,r25
	std Y+7,r24
.L527:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	breq .L528
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L529
.L528:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brne .L530
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,__zero_reg__
.L530:
	ldd r24,Y+3
	ldd r25,Y+4
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	strncat, .-strncat
.global	strnlen
	.type	strnlen, @function
strnlen:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L533
.L538:
	nop
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L533:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .L534
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L538
.L534:
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	strnlen, .-strnlen
.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	rjmp .L540
.L544:
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	rjmp .L541
.L543:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	std Y+2,r19
	std Y+1,r18
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r18,r24
	brne .L541
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L542
.L541:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L543
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L540:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L544
	ldi r24,0
	ldi r25,0
.L542:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	strpbrk, .-strpbrk
.global	strrchr
	.type	strrchr, @function
strrchr:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r23
	std Y+3,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
.L547:
	mov r30,r24
	mov r31,r25
	ld r18,Z
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	ldd r20,Y+3
	ldd r21,Y+4
	cp r20,r18
	cpc r21,r19
	brne .L546
	std Y+2,r25
	std Y+1,r24
.L546:
	mov r18,r24
	mov r19,r25
	mov r24,r18
	mov r25,r19
	adiw r24,1
	mov r30,r18
	mov r31,r19
	ld r18,Z
	cp r18, __zero_reg__
	brne .L547
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	strrchr, .-strrchr
.global	strstr
	.type	strstr, @function
strstr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	rcall strlen
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brne .L552
	ldd r24,Y+5
	ldd r25,Y+6
	rjmp .L551
.L554:
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	mov r22,r18
	mov r23,r19
	rcall strncmp
	sbiw r24,0
	brne .L553
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L551
.L553:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L552:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r18,r24
	lsl r24
	sbc r19,r19
	ldd r24,Y+1
	ldd r25,Y+2
	mov r22,r18
	mov r23,r19
	rcall strchr
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	brne .L554
	ldi r24,0
	ldi r25,0
.L551:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	strstr, .-strstr
.global	copysign
	.type	copysign, @function
copysign:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L556
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gtsf2
	cpi r24,lo8(1)
	brge .L558
.L556:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cpi r24,lo8(1)
	brlt .L559
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L559
.L558:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	subi r27,0x80
	rjmp .L562
.L559:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L562:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	copysign, .-copysign
.global	memmem
	.type	memmem, @function
memmem:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	std Y+12,r19
	std Y+11,r18
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+11
	ldd r25,Y+12
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	ldd r18,Y+5
	ldd r19,Y+6
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	brne .L566
	ldd r24,Y+5
	ldd r25,Y+6
	rjmp .L567
.L566:
	ldi r20,lo8(1)
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+11
	ldd r25,Y+12
	cp r18,r24
	cpc r19,r25
	brlo .L568
	ldi r20,0
.L568:
	mov r24,r20
	ldi r25,0
	ldi r26,0
	ldi r27,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L569
	ldi r24,0
	ldi r25,0
	rjmp .L567
.L569:
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	rjmp .L570
.L572:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+9
	ldd r25,Y+10
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r18,r24
	brne .L571
	ldd r24,Y+11
	ldd r25,Y+12
	mov r20,r24
	mov r21,r25
	subi r20,1
	sbc r21,__zero_reg__
	ldd r24,Y+9
	ldd r25,Y+10
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	mov r22,r18
	mov r23,r19
	rcall memcmp
	sbiw r24,0
	brne .L571
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L567
.L571:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L570:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brsh .L572
	ldi r24,0
	ldi r25,0
.L567:
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	memmem, .-memmem
.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	std Y+6,r21
	std Y+5,r20
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	mov r22,r18
	mov r23,r19
	rcall memcpy
	mov r18,r24
	mov r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	mempcpy, .-mempcpy
.global	frexp
	.type	frexp, @function
frexp:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+10,r21
	std Y+9,r20
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L576
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	subi r27,0x80
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldi r24,lo8(1)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L576:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gesf2
	cp r24, __zero_reg__
	brlt .L593
	rjmp .L580
.L581:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(64)
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __divsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L580:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gesf2
	cp r24, __zero_reg__
	brge .L581
	rjmp .L582
.L593:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L582
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __nesf2
	cp r24, __zero_reg__
	breq .L582
	rjmp .L585
.L586:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __addsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L585:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L586
.L582:
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r18,Y+3
	ldd r19,Y+4
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L587
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	subi r27,0x80
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L587:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	frexp, .-frexp
.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,40
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 40 */
/* stack size = 52 */
.L__stack_usage = 52
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	std Y+25,r10
	std Y+26,r11
	std Y+27,r12
	std Y+28,r13
	std Y+29,r14
	std Y+30,r15
	std Y+31,r16
	std Y+32,r17
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	ldd r24,Y+17
	std Y+9,r24
	ldd r24,Y+18
	std Y+10,r24
	ldd r24,Y+19
	std Y+11,r24
	ldd r24,Y+20
	std Y+12,r24
	ldd r24,Y+21
	std Y+13,r24
	ldd r24,Y+22
	std Y+14,r24
	ldd r24,Y+23
	std Y+15,r24
	ldd r24,Y+24
	std Y+16,r24
	rjmp .L595
.L597:
	ldd r24,Y+9
	mov r25,r24
	andi r25,lo8(1)
	std Y+33,r25
	ldd r24,Y+10
	mov r25,r24
	andi r25,lo8(0)
	std Y+34,r25
	ldd r24,Y+11
	mov r25,r24
	andi r25,lo8(0)
	std Y+35,r25
	ldd r24,Y+12
	mov r25,r24
	andi r25,lo8(0)
	std Y+36,r25
	ldd r24,Y+13
	mov r25,r24
	andi r25,lo8(0)
	std Y+37,r25
	ldd r24,Y+14
	mov r25,r24
	andi r25,lo8(0)
	std Y+38,r25
	ldd r24,Y+15
	mov r25,r24
	andi r25,lo8(0)
	std Y+39,r25
	ldd r24,Y+16
	mov r25,r24
	andi r25,lo8(0)
	std Y+40,r25
	ldd r18,Y+33
	ldd r19,Y+34
	ldd r20,Y+35
	ldd r21,Y+36
	ldd r22,Y+37
	ldd r23,Y+38
	ldd r24,Y+39
	ldd r25,Y+40
	ldi r26,0
	rcall __cmpdi2_s8
	breq .L596
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r10,Y+25
	ldd r11,Y+26
	ldd r12,Y+27
	ldd r13,Y+28
	ldd r14,Y+29
	ldd r15,Y+30
	ldd r16,Y+31
	ldd r17,Y+32
	rcall __adddi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
.L596:
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	ldd r22,Y+29
	ldd r23,Y+30
	ldd r24,Y+31
	ldd r25,Y+32
	ldi r16,lo8(1)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+25,r8
	std Y+26,r9
	std Y+27,r10
	std Y+28,r11
	std Y+29,r12
	std Y+30,r13
	std Y+31,r14
	std Y+32,r15
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	ldi r16,lo8(1)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
.L595:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r26,0
	rcall __cmpdi2_s8
	breq .+2
	rjmp .L597
	ldd r16,Y+1
	ldd r17,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,40
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__muldi3, .-__muldi3
.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 17 */
/* stack size = 21 */
.L__stack_usage = 21
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	std Y+17,r16
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	rjmp .L600
.L602:
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L600:
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .+2
	rjmp .L603
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .+2
	rjmp .L603
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L602
	rjmp .L603
.L605:
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L604
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	sub r16,r24
	sbc r17,r25
	sbc r18,r26
	sbc r19,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L604:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
.L603:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .+2
	rjmp .L605
	ldd r24,Y+17
	cp r24, __zero_reg__
	breq .L606
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	rjmp .L607
.L606:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L607:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	udivmodsi4, .-udivmodsi4
.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	push r28
	push r29
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+3,r24
	ldd r24,Y+3
	cp r24, __zero_reg__
	brge .L609
	ldd r24,Y+3
	com r24
	std Y+3,r24
.L609:
	ldd r24,Y+3
	cp r24, __zero_reg__
	brne .L610
	ldi r24,lo8(7)
	ldi r25,0
	rjmp .L611
.L610:
	ldd r24,Y+3
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r25,r24
	clr r24
	rcall __clzhi2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
.L611:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__clrsbqi2, .-__clrsbqi2
.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	ldd r24,Y+3
	std Y+11,r24
	ldd r24,Y+4
	std Y+12,r24
	ldd r24,Y+5
	std Y+13,r24
	ldd r24,Y+6
	std Y+14,r24
	ldd r24,Y+7
	std Y+15,r24
	ldd r24,Y+8
	std Y+16,r24
	ldd r24,Y+9
	std Y+17,r24
	ldd r24,Y+10
	std Y+18,r24
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L613
	ldd r24,Y+3
	mov r8,r24
	com r8
	ldd r24,Y+4
	mov r9,r24
	com r9
	ldd r24,Y+5
	mov r10,r24
	com r10
	ldd r24,Y+6
	mov r11,r24
	com r11
	ldd r24,Y+7
	mov r12,r24
	com r12
	ldd r24,Y+8
	mov r13,r24
	com r13
	ldd r24,Y+9
	mov r14,r24
	com r14
	ldd r24,Y+10
	mov r15,r24
	com r15
	std Y+3,r8
	std Y+4,r9
	std Y+5,r10
	std Y+6,r11
	std Y+7,r12
	std Y+8,r13
	std Y+9,r14
	std Y+10,r15
.L613:
	ldd r8,Y+3
	ldd r9,Y+4
	ldd r10,Y+5
	ldd r11,Y+6
	ldd r12,Y+7
	ldd r13,Y+8
	ldd r14,Y+9
	ldd r15,Y+10
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r26,0
	rcall __cmpdi2_s8
	brne .L614
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L615
.L614:
	ldd r8,Y+3
	ldd r9,Y+4
	ldd r10,Y+5
	ldd r11,Y+6
	ldd r12,Y+7
	ldd r13,Y+8
	ldd r14,Y+9
	ldd r15,Y+10
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	rcall __clzdi2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
.L615:
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__clrsbdi2, .-__clrsbdi2
.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L617
.L619:
	ldd r24,Y+3
	ldd r25,Y+4
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L618
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
.L618:
	ldd r24,Y+3
	ldd r25,Y+4
	lsr r25
	ror r24
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+5
	ldd r25,Y+6
	lsl r24
	rol r25
	std Y+6,r25
	std Y+5,r24
.L617:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brne .L619
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__mulsi3, .-__mulsi3
.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+12,r25
	std Y+11,r24
	std Y+14,r23
	std Y+13,r22
	std Y+16,r21
	std Y+15,r20
	ldd r24,Y+15
	ldd r25,Y+16
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+15
	ldd r25,Y+16
	andi r24,248
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+11
	ldd r25,Y+12
	std Y+8,r25
	std Y+7,r24
	ldd r24,Y+13
	ldd r25,Y+14
	std Y+10,r25
	std Y+9,r24
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	cp r18,r24
	cpc r19,r25
	brlo .L622
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+15
	ldd r25,Y+16
	add r18,r24
	adc r19,r25
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .+2
	rjmp .L629
.L622:
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L624
.L625:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+13
	ldd r19,Y+14
	mov r30,r18
	mov r31,r19
	add r30,r24
	adc r31,r25
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+11
	ldd r19,Y+12
	add r24,r18
	adc r25,r19
	ld r16,Z
	ldd r17,Z+1
	ldd r18,Z+2
	ldd r19,Z+3
	ldd r20,Z+4
	ldd r21,Z+5
	ldd r22,Z+6
	ldd r23,Z+7
	mov r30,r24
	mov r31,r25
	st Z,r16
	mov r30,r24
	mov r31,r25
	std Z+1,r17
	mov r30,r24
	mov r31,r25
	std Z+2,r18
	mov r30,r24
	mov r31,r25
	std Z+3,r19
	mov r30,r24
	mov r31,r25
	std Z+4,r20
	mov r30,r24
	mov r31,r25
	std Z+5,r21
	mov r30,r24
	mov r31,r25
	std Z+6,r22
	mov r30,r24
	mov r31,r25
	std Z+7,r23
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L624:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L625
	rjmp .L626
.L627:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+3
	ldd r25,Y+4
	add r18,r24
	adc r19,r25
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L626:
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brlo .L627
	rjmp .L628
.L630:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+15
	ldd r25,Y+16
	add r18,r24
	adc r19,r25
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+15
	ldd r25,Y+16
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
.L629:
	ldd r24,Y+15
	ldd r25,Y+16
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+16,r19
	std Y+15,r18
	sbiw r24,0
	brne .L630
	nop
.L628:
	nop
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	__cmovd, .-__cmovd
.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 16 */
.L__stack_usage = 16
	std Y+10,r25
	std Y+9,r24
	std Y+12,r23
	std Y+11,r22
	std Y+14,r21
	std Y+13,r20
	ldd r24,Y+13
	ldd r25,Y+14
	lsr r25
	ror r24
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+9
	ldd r25,Y+10
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+11
	ldd r25,Y+12
	std Y+8,r25
	std Y+7,r24
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .L632
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+13
	ldd r25,Y+14
	add r18,r24
	adc r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .+2
	rjmp .L638
.L632:
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L634
.L635:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	ldd r18,Y+11
	ldd r19,Y+12
	add r18,r24
	adc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	ldd r20,Y+9
	ldd r21,Y+10
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L634:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	cp r18,r24
	cpc r19,r25
	brlo .L635
	ldd r24,Y+13
	ldd r25,Y+14
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L637
	ldd r24,Y+13
	ldd r25,Y+14
	sbiw r24,1
	ldd r18,Y+7
	ldd r19,Y+8
	add r18,r24
	adc r19,r25
	ldd r24,Y+13
	ldd r25,Y+14
	sbiw r24,1
	ldd r20,Y+5
	ldd r21,Y+6
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	rjmp .L637
.L639:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+13
	ldd r25,Y+14
	add r18,r24
	adc r19,r25
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r24,Y+13
	ldd r25,Y+14
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
.L638:
	ldd r24,Y+13
	ldd r25,Y+14
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+14,r19
	std Y+13,r18
	sbiw r24,0
	brne .L639
	nop
.L637:
	nop
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__cmovh, .-__cmovh
.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 18 */
.L__stack_usage = 18
	std Y+12,r25
	std Y+11,r24
	std Y+14,r23
	std Y+13,r22
	std Y+16,r21
	std Y+15,r20
	ldd r24,Y+15
	ldd r25,Y+16
	lsr r25
	ror r24
	lsr r25
	ror r24
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+15
	ldd r25,Y+16
	andi r24,252
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+11
	ldd r25,Y+12
	std Y+8,r25
	std Y+7,r24
	ldd r24,Y+13
	ldd r25,Y+14
	std Y+10,r25
	std Y+9,r24
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	cp r18,r24
	cpc r19,r25
	brlo .L641
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+15
	ldd r25,Y+16
	add r18,r24
	adc r19,r25
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .+2
	rjmp .L648
.L641:
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L643
.L644:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	ldd r18,Y+13
	ldd r19,Y+14
	add r18,r24
	adc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	ldd r20,Y+11
	ldd r21,Y+12
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L643:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .L644
	rjmp .L645
.L646:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+3
	ldd r25,Y+4
	add r18,r24
	adc r19,r25
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L645:
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brlo .L646
	rjmp .L647
.L649:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+15
	ldd r25,Y+16
	add r18,r24
	adc r19,r25
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r24,Y+15
	ldd r25,Y+16
	add r24,r20
	adc r25,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
.L648:
	ldd r24,Y+15
	ldd r25,Y+16
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+16,r19
	std Y+15,r18
	sbiw r24,0
	brne .L649
	nop
.L647:
	nop
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__cmovw, .-__cmovw
.global	__modi
	.type	__modi, @function
__modi:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	mov r22,r18
	mov r23,r19
	rcall __divmodhi4
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__modi, .-__modi
.global	__uitod
	.type	__uitod, @function
__uitod:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r24,r24
	mov r25,r25
	ldi r26,0
	ldi r27,0
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __floatunsisf
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__uitod, .-__uitod
.global	__uitof
	.type	__uitof, @function
__uitof:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r24,r24
	mov r25,r25
	ldi r26,0
	ldi r27,0
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __floatunsisf
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__uitof, .-__uitof
.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __floatundisf
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__ulltod, .-__ulltod
.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __floatundisf
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__ulltof, .-__ulltof
.global	__umodi
	.type	__umodi, @function
__umodi:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+3
	ldd r19,Y+4
	mov r22,r18
	mov r23,r19
	rcall __udivmodhi4
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__umodi, .-__umodi
.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L663
.L666:
	ldi r24,0
	ldi r25,lo8(-128)
	mov r18,r24
	mov r19,r25
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r0
	brpl 1b
	ldd r24,Y+3
	ldd r25,Y+4
	and r24,r18
	and r25,r19
	sbiw r24,0
	brne .L668
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L663:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L666
	rjmp .L665
.L668:
	nop
.L665:
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__clzhi2, .-__clzhi2
.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+4,r25
	std Y+3,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L670
.L673:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,1
	clr r25
	sbiw r24,0
	brne .L675
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L670:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L673
	rjmp .L672
.L675:
	nop
.L672:
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__ctzhi2, .-__ctzhi2
.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gesf2
	cp r24, __zero_reg__
	brlt .L681
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __subsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __fixsfsi
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	subi r25,-128
	sbci r26,-1
	sbci r27,-1
	rjmp .L679
.L681:
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __fixsfsi
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
.L679:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__fixunssfsi, .-__fixunssfsi
.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+6,r25
	std Y+5,r24
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L683
.L685:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L684
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L684:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L683:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L685
	ldd r24,Y+3
	ldd r25,Y+4
	andi r24,1
	clr r25
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__parityhi2, .-__parityhi2
.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+6,r25
	std Y+5,r24
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L688
.L690:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L689
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L689:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L688:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L690
	ldd r24,Y+3
	ldd r25,Y+4
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__popcounthi2, .-__popcounthi2
.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	rjmp .L693
.L695:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	andi r24,1
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L694
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L694:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L693:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L695
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L700
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L699
.L702:
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	andi r24,1
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L701
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L701:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L700:
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L702
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L699:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	std Y+18,r17
	std Y+17,r16
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	rjmp .L704
.L706:
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L704:
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .+2
	rjmp .L707
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .+2
	rjmp .L707
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L706
	rjmp .L707
.L709:
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L708
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	sub r16,r24
	sbc r17,r25
	sbc r18,r26
	sbc r19,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L708:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
.L707:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .+2
	rjmp .L709
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	breq .L710
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	rjmp .L711
.L710:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L711:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	__udivmodsi4, .-__udivmodsi4
.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L720
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L715
.L720:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cpi r24,lo8(1)
	brlt .L721
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L715
.L721:
	ldi r24,0
	ldi r25,0
.L715:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L730
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L725
.L730:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cpi r24,lo8(1)
	brlt .L731
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L725
.L731:
	ldi r24,0
	ldi r25,0
.L725:
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__mspabi_cmpd, .-__mspabi_cmpd
.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 34 */
.L__stack_usage = 34
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r2,r24
	mov r3,r25
	mov r4,r26
	mov r5,r27
	lsl r27
	sbc r24,r24
	mov r25,r24
	mov r26,r24
	mov r27,r24
	mov r6,r24
	mov r7,r24
	mov r8,r24
	mov r9,r24
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	lsl r27
	sbc r24,r24
	mov r25,r24
	mov r26,r24
	mov r27,r24
	std Y+13,r24
	std Y+14,r24
	std Y+15,r24
	std Y+16,r24
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __muldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 26 */
.L__stack_usage = 26
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r2,r24
	mov r3,r25
	mov r4,r26
	mov r5,r27
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __muldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 11 */
.L__stack_usage = 11
	std Y+7,r25
	std Y+6,r24
	std Y+9,r23
	std Y+8,r22
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	ldd r24,Y+8
	ldd r25,Y+9
	sbiw r24,0
	brge .L737
	ldd r24,Y+8
	ldd r25,Y+9
	neg r25
	neg r24
	sbc r25,__zero_reg__
	std Y+9,r25
	std Y+8,r24
	ldi r24,lo8(1)
	ldi r25,0
	std Y+3,r25
	std Y+2,r24
.L737:
	std Y+1,__zero_reg__
	rjmp .L738
.L741:
	ldd r24,Y+8
	ldd r25,Y+9
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L739
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r24,Y+6
	ldd r25,Y+7
	add r24,r18
	adc r25,r19
	std Y+5,r25
	std Y+4,r24
.L739:
	ldd r24,Y+6
	ldd r25,Y+7
	lsl r24
	rol r25
	std Y+7,r25
	std Y+6,r24
	ldd r24,Y+8
	ldd r25,Y+9
	asr r25
	ror r24
	std Y+9,r25
	std Y+8,r24
	ldd r24,Y+1
	subi r24,lo8(-(1))
	std Y+1,r24
.L738:
	ldd r24,Y+8
	ldd r25,Y+9
	sbiw r24,0
	breq .L740
	ldd r24,Y+1
	cpi r24,lo8(16)
	brlo .L741
.L740:
	ldd r24,Y+2
	ldd r25,Y+3
	sbiw r24,0
	breq .L742
	ldd r24,Y+4
	ldd r25,Y+5
	neg r25
	neg r24
	sbc r25,__zero_reg__
	rjmp .L744
.L742:
	ldd r24,Y+4
	ldd r25,Y+5
.L744:
/* epilogue start */
	adiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__mulhi3, .-__mulhi3
.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r18
	std Y+12,r19
	std Y+13,r20
	std Y+14,r21
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L746
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	ldi r18,lo8(1)
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L747
	ldi r18,0
.L747:
	mov r24,r18
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L746:
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L748
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldi r18,lo8(1)
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L749
	ldi r18,0
.L749:
	mov r24,r18
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L748:
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r12,Y+7
	ldd r13,Y+8
	ldd r14,Y+9
	ldd r15,Y+10
	ldi r16,0
	ldi r17,0
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __udivmodsi4
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L750
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
.L750:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__divsi3, .-__divsi3
.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r18
	std Y+12,r19
	std Y+13,r20
	std Y+14,r21
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L753
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	ldi r24,lo8(1)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L753:
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L754
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
.L754:
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r12,Y+7
	ldd r13,Y+8
	ldd r14,Y+9
	ldd r15,Y+10
	ldi r16,lo8(1)
	ldi r17,0
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __udivmodsi4
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L755
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
.L755:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__modsi3, .-__modsi3
.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+10,r21
	std Y+9,r20
	ldi r24,lo8(1)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L758
.L760:
	ldd r24,Y+7
	ldd r25,Y+8
	lsl r24
	rol r25
	std Y+8,r25
	std Y+7,r24
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	std Y+2,r25
	std Y+1,r24
.L758:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .L761
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L761
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brge .L760
	rjmp .L761
.L763:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .L762
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	std Y+6,r25
	std Y+5,r24
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	or r24,r18
	or r25,r19
	std Y+4,r25
	std Y+3,r24
.L762:
	ldd r24,Y+1
	ldd r25,Y+2
	lsr r25
	ror r24
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+7
	ldd r25,Y+8
	lsr r25
	ror r24
	std Y+8,r25
	std Y+7,r24
.L761:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	brne .L763
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L764
	ldd r24,Y+5
	ldd r25,Y+6
	rjmp .L765
.L764:
	ldd r24,Y+3
	ldd r25,Y+4
.L765:
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__udivmodhi4, .-__udivmodhi4
.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	std Y+18,r17
	std Y+17,r16
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	rjmp .L767
.L769:
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsl r24
	rol r25
	rol r26
	rol r27
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L767:
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .+2
	rjmp .L770
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .+2
	rjmp .L770
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L769
	rjmp .L770
.L772:
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L771
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	sub r16,r24
	sbc r17,r25
	sbc r18,r26
	sbc r19,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L771:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	lsr r27
	ror r26
	ror r25
	ror r24
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
.L770:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .+2
	rjmp .L772
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	breq .L773
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	rjmp .L774
.L773:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L774:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
/* stack size = 40 */
.L__stack_usage = 40
	std Y+19,r18
	std Y+20,r19
	std Y+21,r20
	std Y+22,r21
	std Y+23,r22
	std Y+24,r23
	std Y+25,r24
	std Y+26,r25
	std Y+28,r17
	std Y+27,r16
	ldi r24,lo8(32)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+19
	std Y+3,r24
	ldd r24,Y+20
	std Y+4,r24
	ldd r24,Y+21
	std Y+5,r24
	ldd r24,Y+22
	std Y+6,r24
	ldd r24,Y+23
	std Y+7,r24
	ldd r24,Y+24
	std Y+8,r24
	ldd r24,Y+25
	std Y+9,r24
	ldd r24,Y+26
	std Y+10,r24
	ldd r18,Y+27
	ldd r19,Y+28
	ldd r24,Y+1
	ldd r25,Y+2
	and r24,r18
	and r25,r19
	sbiw r24,0
	breq .L776
	std Y+11,__zero_reg__
	std Y+12,__zero_reg__
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldd r20,Y+27
	ldd r21,Y+28
	ldd r18,Y+1
	ldd r19,Y+2
	mov r16,r20
	mov r17,r21
	sub r16,r18
	sbc r17,r19
	mov r18,r16
	mov r19,r17
	mov r0,r18
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r0
	brpl 1b
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	rjmp .L777
.L776:
	ldd r24,Y+27
	ldd r25,Y+28
	sbiw r24,0
	brne .L778
	ldd r16,Y+19
	ldd r17,Y+20
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	rjmp .L780
.L778:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldd r0,Y+27
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r0
	brpl 1b
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r0,Y+27
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r0
	brpl 1b
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r18,Y+27
	ldd r19,Y+28
	mov r16,r30
	mov r17,r31
	sub r16,r18
	sbc r17,r19
	mov r18,r16
	mov r19,r17
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r18
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
.L777:
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r22,Y+17
	ldd r23,Y+18
.L780:
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__ashldi3, .-__ashldi3
.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
/* stack size = 40 */
.L__stack_usage = 40
	std Y+19,r18
	std Y+20,r19
	std Y+21,r20
	std Y+22,r21
	std Y+23,r22
	std Y+24,r23
	std Y+25,r24
	std Y+26,r25
	std Y+28,r17
	std Y+27,r16
	ldi r24,lo8(32)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+19
	std Y+3,r24
	ldd r24,Y+20
	std Y+4,r24
	ldd r24,Y+21
	std Y+5,r24
	ldd r24,Y+22
	std Y+6,r24
	ldd r24,Y+23
	std Y+7,r24
	ldd r24,Y+24
	std Y+8,r24
	ldd r24,Y+25
	std Y+9,r24
	ldd r24,Y+26
	std Y+10,r24
	ldd r18,Y+27
	ldd r19,Y+28
	ldd r24,Y+1
	ldd r25,Y+2
	and r24,r18
	and r25,r19
	sbiw r24,0
	breq .L782
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r18,Y+1
	ldd r19,Y+2
	subi r18,1
	sbc r19,__zero_reg__
	rjmp 2f
	1:
	asr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r18
	brpl 1b
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r20,Y+27
	ldd r21,Y+28
	ldd r18,Y+1
	ldd r19,Y+2
	mov r22,r20
	mov r23,r21
	sub r22,r18
	sbc r23,r19
	mov r18,r22
	mov r19,r23
	mov r0,r18
	rjmp 2f
	1:
	asr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	rjmp .L783
.L782:
	ldd r24,Y+27
	ldd r25,Y+28
	sbiw r24,0
	brne .L784
	ldd r16,Y+19
	ldd r17,Y+20
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	rjmp .L786
.L784:
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r0,Y+27
	rjmp 2f
	1:
	asr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r18,Y+27
	ldd r19,Y+28
	mov r22,r20
	mov r23,r21
	sub r22,r18
	sbc r23,r19
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r18
	brpl 1b
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldd r0,Y+27
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
.L783:
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r22,Y+17
	ldd r23,Y+18
.L786:
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__ashrdi3, .-__ashrdi3
.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,120
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 120 */
/* stack size = 131 */
.L__stack_usage = 131
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(56)
	rcall __lshrdi3
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(40)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(0)
	std Y+17,r24
	mov r25,r9
	andi r25,lo8(-1)
	std Y+18,r25
	mov r24,r10
	andi r24,lo8(0)
	std Y+19,r24
	mov r25,r11
	andi r25,lo8(0)
	std Y+20,r25
	mov r24,r12
	andi r24,lo8(0)
	std Y+21,r24
	mov r25,r13
	andi r25,lo8(0)
	std Y+22,r25
	mov r24,r14
	andi r24,lo8(0)
	std Y+23,r24
	mov r25,r15
	andi r25,lo8(0)
	std Y+24,r25
	ldd r24,Y+9
	ldd r25,Y+17
	or r24,r25
	std Y+25,r24
	ldd r24,Y+10
	ldd r25,Y+18
	or r24,r25
	std Y+26,r24
	ldd r24,Y+11
	ldd r25,Y+19
	or r24,r25
	std Y+27,r24
	ldd r24,Y+12
	ldd r25,Y+20
	or r24,r25
	std Y+28,r24
	ldd r24,Y+13
	ldd r25,Y+21
	or r24,r25
	std Y+29,r24
	ldd r24,Y+14
	ldd r25,Y+22
	or r24,r25
	std Y+30,r24
	ldd r24,Y+15
	ldd r25,Y+23
	or r24,r25
	std Y+31,r24
	ldd r24,Y+16
	ldd r25,Y+24
	or r24,r25
	std Y+32,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(24)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(0)
	std Y+33,r24
	mov r25,r9
	andi r25,lo8(0)
	std Y+34,r25
	mov r24,r10
	andi r24,lo8(-1)
	std Y+35,r24
	mov r25,r11
	andi r25,lo8(0)
	std Y+36,r25
	mov r24,r12
	andi r24,lo8(0)
	std Y+37,r24
	mov r25,r13
	andi r25,lo8(0)
	std Y+38,r25
	mov r24,r14
	andi r24,lo8(0)
	std Y+39,r24
	mov r25,r15
	andi r25,lo8(0)
	std Y+40,r25
	ldd r24,Y+25
	ldd r25,Y+33
	or r24,r25
	std Y+41,r24
	ldd r24,Y+26
	ldd r25,Y+34
	or r24,r25
	std Y+42,r24
	ldd r24,Y+27
	ldd r25,Y+35
	or r24,r25
	std Y+43,r24
	ldd r24,Y+28
	ldd r25,Y+36
	or r24,r25
	std Y+44,r24
	ldd r24,Y+29
	ldd r25,Y+37
	or r24,r25
	std Y+45,r24
	ldd r24,Y+30
	ldd r25,Y+38
	or r24,r25
	std Y+46,r24
	ldd r24,Y+31
	ldd r25,Y+39
	or r24,r25
	std Y+47,r24
	ldd r24,Y+32
	ldd r25,Y+40
	or r24,r25
	std Y+48,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(8)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(0)
	std Y+49,r24
	mov r25,r9
	andi r25,lo8(0)
	std Y+50,r25
	mov r24,r10
	andi r24,lo8(0)
	std Y+51,r24
	mov r25,r11
	andi r25,lo8(-1)
	std Y+52,r25
	mov r24,r12
	andi r24,lo8(0)
	std Y+53,r24
	mov r25,r13
	andi r25,lo8(0)
	std Y+54,r25
	mov r24,r14
	andi r24,lo8(0)
	std Y+55,r24
	mov r25,r15
	andi r25,lo8(0)
	std Y+56,r25
	ldd r24,Y+41
	ldd r25,Y+49
	or r24,r25
	std Y+57,r24
	ldd r24,Y+42
	ldd r25,Y+50
	or r24,r25
	std Y+58,r24
	ldd r24,Y+43
	ldd r25,Y+51
	or r24,r25
	std Y+59,r24
	ldd r24,Y+44
	ldd r25,Y+52
	or r24,r25
	std Y+60,r24
	ldd r24,Y+45
	ldd r25,Y+53
	or r24,r25
	std Y+61,r24
	ldd r24,Y+46
	ldd r25,Y+54
	or r24,r25
	std Y+62,r24
	ldd r24,Y+47
	ldd r25,Y+55
	or r24,r25
	std Y+63,r24
	ldd r24,Y+48
	ldd r25,Y+56
	or r24,r25
	adiw r28,64-63
	std Y+63,r24
	sbiw r28,64-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(8)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(0)
	adiw r28,65-63
	std Y+63,r24
	sbiw r28,65-63
	mov r25,r9
	andi r25,lo8(0)
	adiw r28,66-63
	std Y+63,r25
	sbiw r28,66-63
	mov r24,r10
	andi r24,lo8(0)
	adiw r28,67-63
	std Y+63,r24
	sbiw r28,67-63
	mov r25,r11
	andi r25,lo8(0)
	adiw r28,68-63
	std Y+63,r25
	sbiw r28,68-63
	mov r24,r12
	andi r24,lo8(-1)
	adiw r28,69-63
	std Y+63,r24
	sbiw r28,69-63
	mov r25,r13
	andi r25,lo8(0)
	adiw r28,70-63
	std Y+63,r25
	sbiw r28,70-63
	mov r24,r14
	andi r24,lo8(0)
	adiw r28,71-63
	std Y+63,r24
	sbiw r28,71-63
	mov r25,r15
	andi r25,lo8(0)
	adiw r28,72-63
	std Y+63,r25
	sbiw r28,72-63
	ldd r24,Y+57
	adiw r28,65-63
	ldd r25,Y+63
	sbiw r28,65-63
	or r24,r25
	adiw r28,73-63
	std Y+63,r24
	sbiw r28,73-63
	ldd r24,Y+58
	adiw r28,66-63
	ldd r25,Y+63
	sbiw r28,66-63
	or r24,r25
	adiw r28,74-63
	std Y+63,r24
	sbiw r28,74-63
	ldd r24,Y+59
	adiw r28,67-63
	ldd r25,Y+63
	sbiw r28,67-63
	or r24,r25
	adiw r28,75-63
	std Y+63,r24
	sbiw r28,75-63
	ldd r24,Y+60
	adiw r28,68-63
	ldd r25,Y+63
	sbiw r28,68-63
	or r24,r25
	adiw r28,76-63
	std Y+63,r24
	sbiw r28,76-63
	ldd r24,Y+61
	adiw r28,69-63
	ldd r25,Y+63
	sbiw r28,69-63
	or r24,r25
	adiw r28,77-63
	std Y+63,r24
	sbiw r28,77-63
	ldd r24,Y+62
	adiw r28,70-63
	ldd r25,Y+63
	sbiw r28,70-63
	or r24,r25
	adiw r28,78-63
	std Y+63,r24
	sbiw r28,78-63
	ldd r24,Y+63
	adiw r28,71-63
	ldd r25,Y+63
	sbiw r28,71-63
	or r24,r25
	adiw r28,79-63
	std Y+63,r24
	sbiw r28,79-63
	adiw r28,64-63
	ldd r24,Y+63
	sbiw r28,64-63
	adiw r28,72-63
	ldd r25,Y+63
	sbiw r28,72-63
	or r24,r25
	adiw r28,80-63
	std Y+63,r24
	sbiw r28,80-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(24)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(0)
	adiw r28,81-63
	std Y+63,r24
	sbiw r28,81-63
	mov r25,r9
	andi r25,lo8(0)
	adiw r28,82-63
	std Y+63,r25
	sbiw r28,82-63
	mov r24,r10
	andi r24,lo8(0)
	adiw r28,83-63
	std Y+63,r24
	sbiw r28,83-63
	mov r25,r11
	andi r25,lo8(0)
	adiw r28,84-63
	std Y+63,r25
	sbiw r28,84-63
	mov r24,r12
	andi r24,lo8(0)
	adiw r28,85-63
	std Y+63,r24
	sbiw r28,85-63
	mov r25,r13
	andi r25,lo8(-1)
	adiw r28,86-63
	std Y+63,r25
	sbiw r28,86-63
	mov r24,r14
	andi r24,lo8(0)
	adiw r28,87-63
	std Y+63,r24
	sbiw r28,87-63
	mov r25,r15
	andi r25,lo8(0)
	adiw r28,88-63
	std Y+63,r25
	sbiw r28,88-63
	adiw r28,73-63
	ldd r24,Y+63
	sbiw r28,73-63
	adiw r28,81-63
	ldd r25,Y+63
	sbiw r28,81-63
	or r24,r25
	adiw r28,89-63
	std Y+63,r24
	sbiw r28,89-63
	adiw r28,74-63
	ldd r24,Y+63
	sbiw r28,74-63
	adiw r28,82-63
	ldd r25,Y+63
	sbiw r28,82-63
	or r24,r25
	adiw r28,90-63
	std Y+63,r24
	sbiw r28,90-63
	adiw r28,75-63
	ldd r24,Y+63
	sbiw r28,75-63
	adiw r28,83-63
	ldd r25,Y+63
	sbiw r28,83-63
	or r24,r25
	adiw r28,91-63
	std Y+63,r24
	sbiw r28,91-63
	adiw r28,76-63
	ldd r24,Y+63
	sbiw r28,76-63
	adiw r28,84-63
	ldd r25,Y+63
	sbiw r28,84-63
	or r24,r25
	adiw r28,92-63
	std Y+63,r24
	sbiw r28,92-63
	adiw r28,77-63
	ldd r24,Y+63
	sbiw r28,77-63
	adiw r28,85-63
	ldd r25,Y+63
	sbiw r28,85-63
	or r24,r25
	adiw r28,93-63
	std Y+63,r24
	sbiw r28,93-63
	adiw r28,78-63
	ldd r24,Y+63
	sbiw r28,78-63
	adiw r28,86-63
	ldd r25,Y+63
	sbiw r28,86-63
	or r24,r25
	adiw r28,94-63
	std Y+63,r24
	sbiw r28,94-63
	adiw r28,79-63
	ldd r24,Y+63
	sbiw r28,79-63
	adiw r28,87-63
	ldd r25,Y+63
	sbiw r28,87-63
	or r24,r25
	adiw r28,95-63
	std Y+63,r24
	sbiw r28,95-63
	adiw r28,80-63
	ldd r24,Y+63
	sbiw r28,80-63
	adiw r28,88-63
	ldd r25,Y+63
	sbiw r28,88-63
	or r24,r25
	adiw r28,96-63
	std Y+63,r24
	sbiw r28,96-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(40)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(0)
	adiw r28,97-63
	std Y+63,r24
	sbiw r28,97-63
	mov r25,r9
	andi r25,lo8(0)
	adiw r28,98-63
	std Y+63,r25
	sbiw r28,98-63
	mov r24,r10
	andi r24,lo8(0)
	adiw r28,99-63
	std Y+63,r24
	sbiw r28,99-63
	mov r25,r11
	andi r25,lo8(0)
	adiw r28,100-63
	std Y+63,r25
	sbiw r28,100-63
	mov r24,r12
	andi r24,lo8(0)
	adiw r28,101-63
	std Y+63,r24
	sbiw r28,101-63
	mov r25,r13
	andi r25,lo8(0)
	adiw r28,102-63
	std Y+63,r25
	sbiw r28,102-63
	mov r24,r14
	andi r24,lo8(-1)
	adiw r28,103-63
	std Y+63,r24
	sbiw r28,103-63
	mov r25,r15
	andi r25,lo8(0)
	adiw r28,104-63
	std Y+63,r25
	sbiw r28,104-63
	adiw r28,89-63
	ldd r24,Y+63
	sbiw r28,89-63
	adiw r28,97-63
	ldd r25,Y+63
	sbiw r28,97-63
	or r24,r25
	adiw r28,105-63
	std Y+63,r24
	sbiw r28,105-63
	adiw r28,90-63
	ldd r24,Y+63
	sbiw r28,90-63
	adiw r28,98-63
	ldd r25,Y+63
	sbiw r28,98-63
	or r24,r25
	adiw r28,106-63
	std Y+63,r24
	sbiw r28,106-63
	adiw r28,91-63
	ldd r24,Y+63
	sbiw r28,91-63
	adiw r28,99-63
	ldd r25,Y+63
	sbiw r28,99-63
	or r24,r25
	adiw r28,107-63
	std Y+63,r24
	sbiw r28,107-63
	adiw r28,92-63
	ldd r24,Y+63
	sbiw r28,92-63
	adiw r28,100-63
	ldd r25,Y+63
	sbiw r28,100-63
	or r24,r25
	adiw r28,108-63
	std Y+63,r24
	sbiw r28,108-63
	adiw r28,93-63
	ldd r24,Y+63
	sbiw r28,93-63
	adiw r28,101-63
	ldd r25,Y+63
	sbiw r28,101-63
	or r24,r25
	adiw r28,109-63
	std Y+63,r24
	sbiw r28,109-63
	adiw r28,94-63
	ldd r24,Y+63
	sbiw r28,94-63
	adiw r28,102-63
	ldd r25,Y+63
	sbiw r28,102-63
	or r24,r25
	adiw r28,110-63
	std Y+63,r24
	sbiw r28,110-63
	adiw r28,95-63
	ldd r24,Y+63
	sbiw r28,95-63
	adiw r28,103-63
	ldd r25,Y+63
	sbiw r28,103-63
	or r24,r25
	adiw r28,111-63
	std Y+63,r24
	sbiw r28,111-63
	adiw r28,96-63
	ldd r24,Y+63
	sbiw r28,96-63
	adiw r28,104-63
	ldd r25,Y+63
	sbiw r28,104-63
	or r24,r25
	adiw r28,112-63
	std Y+63,r24
	sbiw r28,112-63
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(56)
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	adiw r28,105-63
	ldd r24,Y+63
	sbiw r28,105-63
	or r24,r8
	adiw r28,113-63
	std Y+63,r24
	sbiw r28,113-63
	adiw r28,106-63
	ldd r25,Y+63
	sbiw r28,106-63
	or r25,r9
	adiw r28,114-63
	std Y+63,r25
	sbiw r28,114-63
	adiw r28,107-63
	ldd r24,Y+63
	sbiw r28,107-63
	or r24,r10
	adiw r28,115-63
	std Y+63,r24
	sbiw r28,115-63
	adiw r28,108-63
	ldd r25,Y+63
	sbiw r28,108-63
	or r25,r11
	adiw r28,116-63
	std Y+63,r25
	sbiw r28,116-63
	adiw r28,109-63
	ldd r24,Y+63
	sbiw r28,109-63
	or r24,r12
	adiw r28,117-63
	std Y+63,r24
	sbiw r28,117-63
	adiw r28,110-63
	ldd r25,Y+63
	sbiw r28,110-63
	or r25,r13
	adiw r28,118-63
	std Y+63,r25
	sbiw r28,118-63
	adiw r28,111-63
	ldd r24,Y+63
	sbiw r28,111-63
	or r24,r14
	adiw r28,119-63
	std Y+63,r24
	sbiw r28,119-63
	adiw r28,112-63
	ldd r25,Y+63
	sbiw r28,112-63
	or r25,r15
	adiw r28,120-63
	std Y+63,r25
	sbiw r28,120-63
	adiw r28,113-63
	ldd r8,Y+63
	sbiw r28,113-63
	adiw r28,114-63
	ldd r9,Y+63
	sbiw r28,114-63
	adiw r28,115-63
	ldd r10,Y+63
	sbiw r28,115-63
	adiw r28,116-63
	ldd r11,Y+63
	sbiw r28,116-63
	adiw r28,117-63
	ldd r12,Y+63
	sbiw r28,117-63
	adiw r28,118-63
	ldd r13,Y+63
	sbiw r28,118-63
	adiw r28,119-63
	ldd r14,Y+63
	sbiw r28,119-63
	adiw r28,120-63
	ldd r15,Y+63
	sbiw r28,120-63
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	subi r28,-120
	sbci r29,-1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__bswapdi2, .-__bswapdi2
.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r20,r27
	clr r21
	clr r22
	clr r23
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	clr r24
	clr r26
	clr r27
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	clr r24
	clr r25
	clr r27
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r27,r24
	clr r26
	clr r25
	clr r24
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	__bswapsi2, .-__bswapsi2
.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	ldi r16,1
	cpc r26,r16
	cpc r27,__zero_reg__
	brsh .L792
	ldi r24,lo8(16)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L793
.L792:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L793:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldi r18,lo8(16)
	ldi r19,0
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	clr r24
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L794
	ldi r24,lo8(8)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L795
.L794:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L795:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldi r18,lo8(8)
	ldi r19,0
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	andi r24,240
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L796
	ldi r24,lo8(4)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L797
.L796:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L797:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldi r18,lo8(4)
	ldi r19,0
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	andi r24,12
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L798
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L799
.L798:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L799:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldi r18,lo8(2)
	ldi r19,0
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r18
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	andi r24,2
	clr r25
	clr r26
	clr r27
	ldi r18,lo8(1)
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L800
	ldi r18,0
.L800:
	mov r24,r18
	ldi r25,0
	mov r30,r24
	mov r31,r25
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	sub r16,r24
	sbc r17,r25
	sbc r18,r26
	sbc r19,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	mov r18,r24
	mov r19,r25
	mov r24,r30
	mov r25,r31
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	__clzsi2, .-__clzsi2
.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 42 */
.L__stack_usage = 42
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	std Y+25,r10
	std Y+26,r11
	std Y+27,r12
	std Y+28,r13
	std Y+29,r14
	std Y+30,r15
	std Y+31,r16
	std Y+32,r17
	ldd r24,Y+17
	std Y+1,r24
	ldd r24,Y+18
	std Y+2,r24
	ldd r24,Y+19
	std Y+3,r24
	ldd r24,Y+20
	std Y+4,r24
	ldd r24,Y+21
	std Y+5,r24
	ldd r24,Y+22
	std Y+6,r24
	ldd r24,Y+23
	std Y+7,r24
	ldd r24,Y+24
	std Y+8,r24
	ldd r24,Y+25
	std Y+9,r24
	ldd r24,Y+26
	std Y+10,r24
	ldd r24,Y+27
	std Y+11,r24
	ldd r24,Y+28
	std Y+12,r24
	ldd r24,Y+29
	std Y+13,r24
	ldd r24,Y+30
	std Y+14,r24
	ldd r24,Y+31
	std Y+15,r24
	ldd r24,Y+32
	std Y+16,r24
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brge .L803
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L808
.L803:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brge .L805
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L808
.L805:
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L806
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L808
.L806:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L807
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L808
.L807:
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L808:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	__cmpdi2, .-__cmpdi2
.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 34 */
.L__stack_usage = 34
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r10
	std Y+10,r11
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r2,Y+1
	ldd r3,Y+2
	ldd r4,Y+3
	ldd r5,Y+4
	ldd r6,Y+5
	ldd r7,Y+6
	ldd r8,Y+7
	ldd r9,Y+8
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __cmpdi2
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L812
	ldi r24,lo8(16)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L813
.L812:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L813:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L814
	ldi r24,lo8(8)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L815
.L814:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L815:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	andi r24,15
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L816
	ldi r24,lo8(4)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L817
.L816:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L817:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	andi r24,3
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L818
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L819
.L818:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L819:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r18
	brpl 1b
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	andi r24,3
	clr r25
	clr r26
	clr r27
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	com r24
	com r25
	com r26
	com r27
	mov r18,r24
	andi r18,1<<0
	clr r19
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsr r27
	ror r26
	ror r25
	ror r24
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	mov r14,r20
	mov r15,r21
	mov r16,r22
	mov r17,r23
	sub r14,r24
	sbc r15,r25
	sbc r16,r26
	sbc r17,r27
	mov r27,r17
	mov r26,r16
	mov r25,r15
	mov r24,r14
	mov r20,r24
	mov r21,r25
	clr r24
	clr r25
	sub r24,r18
	sbc r25,r19
	mov r18,r24
	mov r19,r25
	and r18,r20
	and r19,r21
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	__ctzsi2, .-__ctzsi2
.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
/* stack size = 40 */
.L__stack_usage = 40
	std Y+19,r18
	std Y+20,r19
	std Y+21,r20
	std Y+22,r21
	std Y+23,r22
	std Y+24,r23
	std Y+25,r24
	std Y+26,r25
	std Y+28,r17
	std Y+27,r16
	ldi r24,lo8(32)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	ldd r16,Y+19
	ldd r17,Y+20
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	std Y+3,r16
	std Y+4,r17
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	std Y+9,r22
	std Y+10,r23
	ldd r18,Y+27
	ldd r19,Y+28
	ldd r24,Y+1
	ldd r25,Y+2
	and r24,r18
	and r25,r19
	sbiw r24,0
	breq .L822
	std Y+15,__zero_reg__
	std Y+16,__zero_reg__
	std Y+17,__zero_reg__
	std Y+18,__zero_reg__
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r20,Y+27
	ldd r21,Y+28
	ldd r18,Y+1
	ldd r19,Y+2
	mov r22,r20
	mov r23,r21
	sub r22,r18
	sbc r23,r19
	mov r18,r22
	mov r19,r23
	mov r0,r18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	rjmp .L823
.L822:
	ldd r24,Y+27
	ldd r25,Y+28
	sbiw r24,0
	brne .L824
	ldd r16,Y+19
	ldd r17,Y+20
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	rjmp .L826
.L824:
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r0,Y+27
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r18,Y+27
	ldd r19,Y+28
	mov r22,r20
	mov r23,r21
	sub r22,r18
	sbc r23,r19
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r18
	brpl 1b
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	ldd r0,Y+27
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
.L823:
	ldd r8,Y+11
	ldd r9,Y+12
	ldd r10,Y+13
	ldd r11,Y+14
	ldd r12,Y+15
	ldd r13,Y+16
	ldd r14,Y+17
	ldd r15,Y+18
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
.L826:
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__lshrdi3, .-__lshrdi3
.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 26 */
/* stack size = 38 */
.L__stack_usage = 38
	std Y+19,r22
	std Y+20,r23
	std Y+21,r24
	std Y+22,r25
	std Y+23,r18
	std Y+24,r19
	std Y+25,r20
	std Y+26,r21
	ldi r24,lo8(16)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ldi r26,lo8(-1)
	ldi r27,lo8(-1)
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	and r12,r24
	and r13,r25
	and r14,r26
	and r15,r27
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
	mov r12,r24
	mov r13,r25
	mov r14,r26
	mov r15,r27
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	2:
	dec r0
	brpl 1b
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	and r24,r16
	and r25,r17
	and r26,r18
	and r27,r19
	ldd r0,Y+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r0
	brpl 1b
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldd r24,Y+23
	ldd r25,Y+24
	ldd r26,Y+25
	ldd r27,Y+26
	mov r12,r24
	mov r13,r25
	mov r14,r26
	mov r15,r27
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	2:
	dec r0
	brpl 1b
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	and r24,r16
	and r25,r17
	and r26,r18
	and r27,r19
	ldd r0,Y+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r0
	brpl 1b
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r26,Y+17
	ldd r27,Y+18
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r26,Y+17
	ldd r27,Y+18
	mov r12,r24
	mov r13,r25
	mov r14,r26
	mov r15,r27
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
	mov r8,r24
	mov r9,r25
	mov r10,r26
	mov r11,r27
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r11
	ror r10
	ror r9
	ror r8
	2:
	dec r0
	brpl 1b
	ldd r24,Y+23
	ldd r25,Y+24
	ldd r26,Y+25
	ldd r27,Y+26
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r22,Y+17
	ldd r23,Y+18
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__muldsi3, .-__muldsi3
.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,40
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 40 */
/* stack size = 56 */
.L__stack_usage = 56
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
	std Y+33,r10
	std Y+34,r11
	std Y+35,r12
	std Y+36,r13
	std Y+37,r14
	std Y+38,r15
	std Y+39,r16
	std Y+40,r17
	ldd r24,Y+25
	std Y+1,r24
	ldd r24,Y+26
	std Y+2,r24
	ldd r24,Y+27
	std Y+3,r24
	ldd r24,Y+28
	std Y+4,r24
	ldd r24,Y+29
	std Y+5,r24
	ldd r24,Y+30
	std Y+6,r24
	ldd r24,Y+31
	std Y+7,r24
	ldd r24,Y+32
	std Y+8,r24
	ldd r24,Y+33
	std Y+9,r24
	ldd r24,Y+34
	std Y+10,r24
	ldd r24,Y+35
	std Y+11,r24
	ldd r24,Y+36
	std Y+12,r24
	ldd r24,Y+37
	std Y+13,r24
	ldd r24,Y+38
	std Y+14,r24
	ldd r24,Y+39
	std Y+15,r24
	ldd r24,Y+40
	std Y+16,r24
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __muldsi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+17,r8
	std Y+18,r9
	std Y+19,r10
	std Y+20,r11
	std Y+21,r12
	std Y+22,r13
	std Y+23,r14
	std Y+24,r15
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
	mov r12,r24
	mov r13,r25
	mov r14,r26
	mov r15,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r8,r24
	mov r9,r25
	mov r10,r26
	mov r11,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r8,r24
	mov r9,r25
	mov r10,r26
	mov r11,r27
	ldd r4,Y+1
	ldd r5,Y+2
	ldd r6,Y+3
	ldd r7,Y+4
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
	ldd r16,Y+17
	ldd r17,Y+18
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,40
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	rcall __negdi2
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r8
	mov r17,r9
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__negdi2, .-__negdi2
.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 22 */
.L__stack_usage = 22
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	ldd r24,Y+13
	std Y+5,r24
	ldd r24,Y+14
	std Y+6,r24
	ldd r24,Y+15
	std Y+7,r24
	ldd r24,Y+16
	std Y+8,r24
	ldd r24,Y+17
	std Y+9,r24
	ldd r24,Y+18
	std Y+10,r24
	ldd r24,Y+19
	std Y+11,r24
	ldd r24,Y+20
	std Y+12,r24
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r25,r27
	mov r24,r26
	clr r26
	clr r27
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	set
	bld __zero_reg__,4-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	andi r18,15
	clr r19
	ldi r24,lo8(-106)
	ldi r25,lo8(105)
	mov r0,r18
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,1
	clr r25
/* epilogue start */
	adiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__paritydi2, .-__paritydi2
.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r25,r27
	mov r24,r26
	clr r26
	clr r27
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	set
	bld __zero_reg__,4-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	andi r18,15
	clr r19
	ldi r24,lo8(-106)
	ldi r25,lo8(105)
	mov r0,r18
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,1
	clr r25
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__paritysi2, .-__paritysi2
.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,44
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 44 */
/* stack size = 60 */
.L__stack_usage = 60
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	ldd r24,Y+13
	std Y+1,r24
	ldd r24,Y+14
	std Y+2,r24
	ldd r24,Y+15
	std Y+3,r24
	ldd r24,Y+16
	std Y+4,r24
	ldd r24,Y+17
	std Y+5,r24
	ldd r24,Y+18
	std Y+6,r24
	ldd r24,Y+19
	std Y+7,r24
	ldd r24,Y+20
	std Y+8,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(1)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(85)
	std Y+21,r24
	mov r25,r9
	andi r25,lo8(85)
	std Y+22,r25
	mov r24,r10
	andi r24,lo8(85)
	std Y+23,r24
	mov r25,r11
	andi r25,lo8(85)
	std Y+24,r25
	mov r24,r12
	andi r24,lo8(85)
	std Y+25,r24
	mov r25,r13
	andi r25,lo8(85)
	std Y+26,r25
	mov r24,r14
	andi r24,lo8(85)
	std Y+27,r24
	mov r25,r15
	andi r25,lo8(85)
	std Y+28,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r10,Y+21
	ldd r11,Y+22
	ldd r12,Y+23
	ldd r13,Y+24
	ldd r14,Y+25
	ldd r15,Y+26
	ldd r16,Y+27
	ldd r17,Y+28
	rcall __subdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(2)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(51)
	std Y+29,r24
	mov r25,r9
	andi r25,lo8(51)
	std Y+30,r25
	mov r24,r10
	andi r24,lo8(51)
	std Y+31,r24
	mov r25,r11
	andi r25,lo8(51)
	std Y+32,r25
	mov r24,r12
	andi r24,lo8(51)
	std Y+33,r24
	mov r25,r13
	andi r25,lo8(51)
	std Y+34,r25
	mov r24,r14
	andi r24,lo8(51)
	std Y+35,r24
	mov r25,r15
	andi r25,lo8(51)
	std Y+36,r25
	ldd r24,Y+1
	mov r25,r24
	andi r25,lo8(51)
	std Y+37,r25
	ldd r24,Y+2
	mov r25,r24
	andi r25,lo8(51)
	std Y+38,r25
	ldd r24,Y+3
	mov r25,r24
	andi r25,lo8(51)
	std Y+39,r25
	ldd r24,Y+4
	mov r25,r24
	andi r25,lo8(51)
	std Y+40,r25
	ldd r24,Y+5
	mov r25,r24
	andi r25,lo8(51)
	std Y+41,r25
	ldd r24,Y+6
	mov r25,r24
	andi r25,lo8(51)
	std Y+42,r25
	ldd r24,Y+7
	mov r25,r24
	andi r25,lo8(51)
	std Y+43,r25
	ldd r24,Y+8
	mov r25,r24
	andi r25,lo8(51)
	std Y+44,r25
	ldd r18,Y+29
	ldd r19,Y+30
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	ldd r24,Y+35
	ldd r25,Y+36
	ldd r10,Y+37
	ldd r11,Y+38
	ldd r12,Y+39
	ldd r13,Y+40
	ldd r14,Y+41
	ldd r15,Y+42
	ldd r16,Y+43
	ldd r17,Y+44
	rcall __adddi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(4)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	rcall __adddi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r8
	andi r24,lo8(15)
	std Y+1,r24
	mov r24,r9
	andi r24,lo8(15)
	std Y+2,r24
	mov r24,r10
	andi r24,lo8(15)
	std Y+3,r24
	mov r24,r11
	andi r24,lo8(15)
	std Y+4,r24
	mov r24,r12
	andi r24,lo8(15)
	std Y+5,r24
	mov r24,r13
	andi r24,lo8(15)
	std Y+6,r24
	mov r24,r14
	andi r24,lo8(15)
	std Y+7,r24
	mov r24,r15
	andi r24,lo8(15)
	std Y+8,r24
	ldd r4,Y+1
	ldd r5,Y+2
	ldd r6,Y+3
	ldd r7,Y+4
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r16,lo8(32)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r27,r11
	mov r26,r10
	mov r25,r9
	mov r24,r8
	add r24,r4
	adc r25,r5
	adc r26,r6
	adc r27,r7
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	mov r25,r27
	mov r24,r26
	clr r26
	clr r27
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	andi r24,127
	clr r25
/* epilogue start */
	adiw r28,44
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	__popcountdi2, .-__popcountdi2
.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsr r27
	ror r26
	ror r25
	ror r24
	andi r24,85
	andi r25,85
	andi r26,85
	andi r27,85
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	sub r16,r24
	sbc r17,r25
	sbc r18,r26
	sbc r19,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r27
	ror r26
	ror r25
	ror r24
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	andi r20,51
	andi r21,51
	andi r22,51
	andi r23,51
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	andi r24,51
	andi r25,51
	andi r26,51
	andi r27,51
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	set
	bld __zero_reg__,4-1
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr __zero_reg__
	brne 1b
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	andi r24,15
	andi r25,15
	andi r26,15
	andi r27,15
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r25,r27
	mov r24,r26
	clr r26
	clr r27
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	mov r18,r24
	mov r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	andi r24,63
	clr r25
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	__popcountsi2, .-__popcountsi2
.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+11
	ldd r25,Y+12
	bst r25,7
	clr r24
	clr r25
	bld r24,0
	mov r24,r24
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(-128)
	ldi r27,lo8(63)
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L846:
	ldd r24,Y+11
	ldd r25,Y+12
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L842
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L842:
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	brge .L843
	adiw r24,1
.L843:
	asr r25
	ror r24
	std Y+12,r25
	std Y+11,r24
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	breq .L851
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	rjmp .L846
.L851:
	nop
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L847
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	rjmp .L849
.L847:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L849:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__powidf2, .-__powidf2
.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+11
	ldd r25,Y+12
	bst r25,7
	clr r24
	clr r25
	bld r24,0
	mov r24,r24
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(-128)
	ldi r27,lo8(63)
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L857:
	ldd r24,Y+11
	ldd r25,Y+12
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L853
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L853:
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	brge .L854
	adiw r24,1
.L854:
	asr r25
	ror r24
	std Y+12,r25
	std Y+11,r24
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	breq .L862
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	rcall __mulsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	rjmp .L857
.L862:
	nop
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L858
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	rjmp .L860
.L858:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L860:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	__powisf2, .-__powisf2
.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 42 */
.L__stack_usage = 42
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	std Y+25,r10
	std Y+26,r11
	std Y+27,r12
	std Y+28,r13
	std Y+29,r14
	std Y+30,r15
	std Y+31,r16
	std Y+32,r17
	ldd r24,Y+17
	std Y+1,r24
	ldd r24,Y+18
	std Y+2,r24
	ldd r24,Y+19
	std Y+3,r24
	ldd r24,Y+20
	std Y+4,r24
	ldd r24,Y+21
	std Y+5,r24
	ldd r24,Y+22
	std Y+6,r24
	ldd r24,Y+23
	std Y+7,r24
	ldd r24,Y+24
	std Y+8,r24
	ldd r24,Y+25
	std Y+9,r24
	ldd r24,Y+26
	std Y+10,r24
	ldd r24,Y+27
	std Y+11,r24
	ldd r24,Y+28
	std Y+12,r24
	ldd r24,Y+29
	std Y+13,r24
	ldd r24,Y+30
	std Y+14,r24
	ldd r24,Y+31
	std Y+15,r24
	ldd r24,Y+32
	std Y+16,r24
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L864
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L869
.L864:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L866
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L869
.L866:
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L867
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L869
.L867:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L868
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L869
.L868:
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L869:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	__ucmpdi2, .-__ucmpdi2
.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 34 */
.L__stack_usage = 34
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r10
	std Y+10,r11
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r2,Y+1
	ldd r3,Y+2
	ldd r4,Y+3
	ldd r5,Y+4
	ldd r6,Y+5
	ldd r7,Y+6
	ldd r8,Y+7
	ldd r9,Y+8
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rcall __ucmpdi2
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
/* epilogue start */
	adiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
.global	__mulsi3
.global	__fixsfsi
.global	__floatundisf
.global	__floatunsisf
.global	__clzdi2
.global	__divsf3
.global	__gesf2
.global	__muldf3
.global	__nedf2
.global	__adddf3
.global	__mulsf3
.global	__nesf2
.global	__addsf3
.global	__extendsfdf2
.global	__floatsisf
.global	__gtdf2
.global	__moddi3
.global	__divdi3
.global	__muldi3
.global	__ltdf2
.global	__unorddf2
.global	__ltsf2
.global	__subsf3
.global	__gtsf2
.global	__unordsf2
	.ident	"GCC: (Fedora 14.2.0-1.fc41) 14.2.0"
.global __do_copy_data
.global __do_clear_bss
