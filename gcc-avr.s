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
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brsh .L2
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	add r24,r18
	adc r25,r19
	std Y+6,r25
	std Y+5,r24
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+11
	ldd r25,Y+12
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	rjmp .L3
.L4:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
	std Y+2,r25
	std Y+1,r24
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
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,1
	std Y+12,r25
	std Y+11,r24
.L3:
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	brne .L4
	rjmp .L5
.L2:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	breq .L5
	ldd r24,Y+7
	ldd r25,Y+8
	std Y+4,r25
	std Y+3,r24
	rjmp .L6
.L7:
	ldd r18,Y+9
	ldd r19,Y+10
	mov r24,r18
	mov r25,r19
	adiw r24,1
	std Y+10,r25
	std Y+9,r24
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
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,1
	std Y+12,r25
	std Y+11,r24
.L6:
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	brne .L7
.L5:
	ldd r24,Y+7
	ldd r25,Y+8
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
	.size	memmove, .-memmove
.global	memccpy
	.type	memccpy, @function
memccpy:
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
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	std Y+10,r19
	std Y+9,r18
	ldd r24,Y+7
	mov r24,r24
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	rjmp .L10
.L12:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	std Y+10,r25
	std Y+9,r24
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L10:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L11
	ldd r24,Y+5
	ldd r25,Y+6
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
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brne .L12
.L11:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L13
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	rjmp .L14
.L13:
	ldi r24,0
	ldi r25,0
.L14:
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
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	rjmp .L16
.L18:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
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
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brne .L18
.L17:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	breq .L19
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L21
.L19:
	ldi r24,0
	ldi r25,0
.L21:
	nop
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
	rjmp .L23
.L25:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,1
	std Y+6,r25
	std Y+5,r24
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
	ldd r24,Y+5
	ldd r25,Y+6
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
	ldd r24,Y+5
	ldd r25,Y+6
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
	nop
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
	.size	memcmp, .-memcmp
.global	memcpy
	.type	memcpy, @function
memcpy:
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
	rjmp .L30
.L31:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
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
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,1
	std Y+8,r25
	std Y+7,r24
.L30:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brne .L31
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
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	rjmp .L34
.L36:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+7
	ldd r25,Y+8
	add r24,r18
	adc r25,r19
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brne .L34
	ldd r18,Y+3
	ldd r19,Y+4
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
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+5
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
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	rjmp .L46
.L48:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L46:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	breq .L47
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brne .L48
.L47:
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
	breq .L54
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
	rjmp .L52
.L54:
	nop
.L52:
	mov r18,r24
	mov r24,r18
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
	rjmp .L56
.L58:
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
.L56:
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
	brne .L57
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L58
.L57:
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
	rjmp .L61
.L62:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L61:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L62
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
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
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+2,r19
	std Y+1,r18
	sbiw r24,0
	brne .L67
	ldi r24,0
	ldi r25,0
	rjmp .L66
.L69:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
	std Y+2,r25
	std Y+1,r24
.L67:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	breq .L68
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	breq .L68
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L68
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r18,r24
	breq .L69
.L68:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r18,r24
	ldi r19,0
	ldd r24,Y+5
	ldd r25,Y+6
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
.L66:
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
	.size	strncmp, .-strncmp
.global	swab
	.type	swab, @function
swab:
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
	rjmp .L71
.L72:
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
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,2
	std Y+6,r25
	std Y+5,r24
.L71:
	ldd r24,Y+5
	ldd r25,Y+6
	cpi r24,2
	cpc r25,__zero_reg__
	brge .L72
	nop
	nop
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
	ldi r19,0
	cpi r24,26
	cpc r25,__zero_reg__
	brlo .L74
	ldi r18,0
	ldi r19,0
.L74:
	mov r24,r18
	mov r25,r19
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
	ldi r18,lo8(1)
	ldi r19,0
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,-128
	cpc r25,__zero_reg__
	brlo .L77
	ldi r18,0
	ldi r19,0
.L77:
	mov r24,r18
	mov r25,r19
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
	breq .L80
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,9
	cpc r25,__zero_reg__
	brne .L81
.L80:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L83
.L81:
	ldi r24,0
	ldi r25,0
.L83:
	nop
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
	brlo .L85
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,127
	cpc r25,__zero_reg__
	brne .L86
.L85:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L88
.L86:
	ldi r24,0
	ldi r25,0
.L88:
	nop
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
	ldi r19,0
	cpi r24,10
	cpc r25,__zero_reg__
	brlo .L90
	ldi r18,0
	ldi r19,0
.L90:
	mov r24,r18
	mov r25,r19
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
	ldi r19,0
	cpi r24,94
	cpc r25,__zero_reg__
	brlo .L93
	ldi r18,0
	ldi r19,0
.L93:
	mov r24,r18
	mov r25,r19
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
	ldi r19,0
	cpi r24,26
	cpc r25,__zero_reg__
	brlo .L96
	ldi r18,0
	ldi r19,0
.L96:
	mov r24,r18
	mov r25,r19
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
	ldi r19,0
	cpi r24,95
	cpc r25,__zero_reg__
	brlo .L99
	ldi r18,0
	ldi r19,0
.L99:
	mov r24,r18
	mov r25,r19
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
	breq .L102
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,9
	cpi r24,5
	cpc r25,__zero_reg__
	brsh .L103
.L102:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L105
.L103:
	ldi r24,0
	ldi r25,0
.L105:
	nop
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
	ldi r19,0
	cpi r24,26
	cpc r25,__zero_reg__
	brlo .L107
	ldi r18,0
	ldi r19,0
.L107:
	mov r24,r18
	mov r25,r19
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
	brlo .L110
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,127
	sbc r25,__zero_reg__
	cpi r24,33
	cpc r25,__zero_reg__
	brlo .L110
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,40
	sbci r25,32
	cpi r24,2
	cpc r25,__zero_reg__
	brlo .L110
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,7
	cpi r24,3
	cpc r25,__zero_reg__
	brsh .L111
.L110:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L113
.L111:
	ldi r24,0
	ldi r25,0
.L113:
	nop
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
	ldi r19,0
	cpi r24,10
	cpc r25,__zero_reg__
	brlo .L115
	ldi r18,0
	ldi r19,0
.L115:
	mov r24,r18
	mov r25,r19
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
	brsh .L118
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	andi r24,127
	clr r25
	ldi r18,lo8(1)
	ldi r19,0
	cpi r24,33
	cpc r25,__zero_reg__
	brsh .L119
	ldi r18,0
	ldi r19,0
.L119:
	mov r24,r18
	mov r25,r19
	rjmp .L120
.L118:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,40
	ldi r18,32
	cpc r25,r18
	brlo .L121
	ldd r24,Y+1
	ldd r25,Y+2
	subi r24,42
	sbci r25,32
	cpi r24,-42
	ldi r18,-73
	cpc r25,r18
	brlo .L121
	ldd r24,Y+1
	ldd r25,Y+2
	subi r25,-32
	cpi r24,-7
	ldi r18,31
	cpc r25,r18
	brsh .L122
.L121:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L120
.L122:
	ldd r24,Y+1
	ldd r25,Y+2
	andi r24,254
	cpi r24,-2
	ldi r18,-1
	cpc r25,r18
	brne .L123
	ldi r24,0
	ldi r25,0
	rjmp .L120
.L123:
	ldi r24,lo8(1)
	ldi r25,0
.L120:
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
	brlo .L125
	ldd r24,Y+1
	ldd r25,Y+2
	ori r24,32
	subi r24,97
	sbc r25,__zero_reg__
	cpi r24,6
	cpc r25,__zero_reg__
	brsh .L126
.L125:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L128
.L126:
	ldi r24,0
	ldi r25,0
.L128:
	nop
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
	push r12
	push r13
	push r14
	push r15
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
/* stack size = 14 */
.L__stack_usage = 14
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
	breq .L143
	ldd r19,Y+1
	ldd r18,Y+2
	ldd r25,Y+3
	ldd r24,Y+4
	rjmp .L134
.L143:
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
	breq .L144
	ldd r19,Y+5
	ldd r18,Y+6
	ldd r25,Y+7
	ldd r24,Y+8
	rjmp .L134
.L144:
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
	brlt .L145
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __subsf3
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	rjmp .L134
.L145:
	ldi r19,0
	ldi r18,0
	ldi r25,0
	ldi r24,0
.L134:
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	adiw r28,8
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
	ret
	.size	fdim, .-fdim
.global	fdimf
	.type	fdimf, @function
fdimf:
	push r12
	push r13
	push r14
	push r15
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
/* stack size = 14 */
.L__stack_usage = 14
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
	breq .L158
	ldd r19,Y+1
	ldd r18,Y+2
	ldd r25,Y+3
	ldd r24,Y+4
	rjmp .L149
.L158:
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
	breq .L159
	ldd r19,Y+5
	ldd r18,Y+6
	ldd r25,Y+7
	ldd r24,Y+8
	rjmp .L149
.L159:
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
	brlt .L160
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __subsf3
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	rjmp .L149
.L160:
	ldi r19,0
	ldi r18,0
	ldi r25,0
	ldi r24,0
.L149:
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	adiw r28,8
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
	breq .L176
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L164
.L176:
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
	breq .L177
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L164
.L177:
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
	breq .L167
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L168
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L164
.L168:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L164
.L167:
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
	brge .L178
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L164
.L178:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L164:
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
	breq .L194
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L182
.L194:
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
	breq .L195
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L182
.L195:
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
	breq .L185
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L186
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L182
.L186:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L182
.L185:
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
	brge .L196
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L182
.L196:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L182:
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
/* stack size = 26 */
.L__stack_usage = 26
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
	breq .L212
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rjmp .L200
.L212:
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
	breq .L213
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rjmp .L200
.L213:
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
	breq .L203
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L204
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rjmp .L200
.L204:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rjmp .L200
.L203:
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
	breq .L214
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rjmp .L200
.L214:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
.L200:
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
	breq .L230
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L218
.L230:
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
	breq .L231
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L218
.L231:
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
	breq .L221
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L222
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L218
.L222:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L218
.L221:
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
	brge .L232
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L218
.L232:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L218:
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
	breq .L248
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L236
.L248:
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
	breq .L249
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L236
.L249:
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
	breq .L239
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L240
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L236
.L240:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	rjmp .L236
.L239:
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
	brge .L250
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	rjmp .L236
.L250:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L236:
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
/* stack size = 26 */
.L__stack_usage = 26
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
	breq .L266
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rjmp .L254
.L266:
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
	breq .L267
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rjmp .L254
.L267:
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
	breq .L257
	ldd r24,Y+8
	mov r24,r24
	ldi r25,0
	andi r24,128
	clr r25
	sbiw r24,0
	breq .L258
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rjmp .L254
.L258:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rjmp .L254
.L257:
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
	breq .L268
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rjmp .L254
.L268:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
.L254:
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
	rjmp .L270
.L271:
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
.L270:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L271
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
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
	lds r18,seed
	lds r19,seed+1
	lds r20,seed+2
	lds r21,seed+3
	lds r22,seed+4
	lds r23,seed+5
	lds r24,seed+6
	lds r25,seed+7
	rcall __muldi3
	mov r16,r18
	mov r17,r19
	mov r29,r20
	mov r28,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r16
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r26,lo8(1)
	rcall __adddi3_s8
	mov r16,r18
	mov r17,r19
	mov r29,r20
	mov r28,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	sts seed,r16
	sts seed+1,r17
	sts seed+2,r29
	sts seed+3,r28
	sts seed+4,r27
	sts seed+5,r26
	sts seed+6,r31
	sts seed+7,r30
	lds r18,seed
	lds r19,seed+1
	lds r20,seed+2
	lds r21,seed+3
	lds r22,seed+4
	lds r23,seed+5
	lds r24,seed+6
	lds r25,seed+7
	ldi r16,lo8(33)
	rcall __lshrdi3
	mov r25,r18
	mov r24,r19
	mov r18,r25
	mov r25,r24
	mov r24,r18
/* epilogue start */
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
	.size	rand, .-rand
.global	insque
	.type	insque, @function
insque:
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
	ldd r25,Y+4
	sbiw r24,0
	brne .L277
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
	rjmp .L276
.L277:
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
	breq .L276
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
.L276:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L280
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
.L280:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ldd r24,Z+2
	ldd r25,Z+3
	sbiw r24,0
	breq .L282
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
.L282:
	nop
/* epilogue start */
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
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	std Y+14,r19
	std Y+13,r18
	std Y+16,r17
	std Y+15,r16
	ldd r16,Y+13
	ldd r17,Y+14
	mov r24,r16
	mov r25,r17
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+11
	ldd r25,Y+12
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	std Y+6,r25
	std Y+5,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L284
.L287:
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	mov r20,r24
	mov r21,r25
	add r20,r18
	adc r21,r19
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r18,Y+15
	ldd r19,Y+16
	mov r22,r20
	mov r23,r21
	mov r30,r18
	mov r31,r19
	icall
	sbiw r24,0
	brne .L285
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	rjmp .L286
.L285:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L284:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .L287
	ldd r24,Y+5
	ldd r25,Y+6
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	ldd r24,Y+11
	ldd r25,Y+12
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r18,Y+7
	ldd r19,Y+8
	mov r22,r18
	mov r23,r19
	rcall memcpy
.L286:
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
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	std Y+14,r19
	std Y+13,r18
	std Y+16,r17
	std Y+15,r16
	ldd r16,Y+13
	ldd r17,Y+14
	mov r24,r16
	mov r25,r17
	sbiw r24,1
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+11
	ldd r25,Y+12
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	std Y+6,r25
	std Y+5,r24
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L289
.L292:
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	mov r20,r24
	mov r21,r25
	add r20,r18
	adc r21,r19
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r18,Y+15
	ldd r19,Y+16
	mov r22,r20
	mov r23,r21
	mov r30,r18
	mov r31,r19
	icall
	sbiw r24,0
	brne .L290
	ldd r18,Y+1
	ldd r19,Y+2
	mov r24,r16
	mov r25,r17
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	rjmp .L291
.L290:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L289:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .L292
	ldi r24,0
	ldi r25,0
.L291:
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
	brge .L294
	neg r25
	neg r24
	sbc r25,__zero_reg__
.L294:
	mov r18,r24
	mov r24,r18
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
	rjmp .L297
.L298:
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L297:
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
	brne .L298
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
	breq .L299
	cpi r24,45
	cpc r25,__zero_reg__
	brne .L301
	ldi r24,lo8(1)
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
.L299:
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
	rjmp .L301
.L302:
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
.L301:
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
	brlo .L302
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brne .L303
	ldd r24,Y+1
	ldd r25,Y+2
	neg r25
	neg r24
	sbc r25,__zero_reg__
	rjmp .L305
.L303:
	ldd r24,Y+1
	ldd r25,Y+2
.L305:
	nop
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
	rjmp .L307
.L308:
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	std Y+8,r25
	std Y+7,r24
.L307:
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
	brne .L308
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
	breq .L309
	cpi r24,45
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L311
	ldi r24,lo8(1)
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
.L309:
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	std Y+8,r25
	std Y+7,r24
	rjmp .L311
.L312:
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
.L311:
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
	rjmp .L312
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	brne .L313
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
	rjmp .L315
.L313:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L315:
	nop
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
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 26 */
.L__stack_usage = 26
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
	rjmp .L317
.L318:
	ldd r24,Y+11
	ldd r25,Y+12
	adiw r24,1
	std Y+12,r25
	std Y+11,r24
.L317:
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
	brne .L318
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
	breq .L319
	cpi r24,45
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L321
	ldi r24,lo8(1)
	ldi r25,0
	std Y+10,r25
	std Y+9,r24
.L319:
	ldd r24,Y+11
	ldd r25,Y+12
	adiw r24,1
	std Y+12,r25
	std Y+11,r24
	rjmp .L321
.L322:
	ldd r13,Y+1
	ldd r14,Y+2
	ldd r15,Y+3
	ldd r17,Y+4
	ldd r27,Y+5
	ldd r26,Y+6
	ldd r31,Y+7
	ldd r30,Y+8
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(2)
	rcall __ashldi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	mov r18,r6
	mov r19,r7
	mov r20,r8
	mov r21,r9
	mov r22,r10
	mov r23,r11
	mov r24,r12
	mov r25,r16
	mov r10,r13
	mov r11,r14
	mov r12,r15
	mov r13,r17
	mov r14,r27
	mov r15,r26
	mov r16,r31
	mov r17,r30
	rcall __adddi3
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(1)
	rcall __ashldi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r13,r25
	mov r14,r6
	mov r15,r7
	mov r16,r8
	mov r17,r9
	mov r27,r10
	mov r26,r11
	mov r31,r12
	mov r30,r13
	mov r10,r14
	mov r11,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r12,r31
	mov r13,r30
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
	mov r19,r24
	mov r18,r25
	mov r14,r19
	mov r15,r18
	mov r24,r25
	lsl r24
	sbc r24,r24
	mov r16,r24
	mov r17,r24
	mov r27,r24
	mov r26,r24
	mov r31,r24
	mov r30,r24
	mov r18,r10
	mov r19,r11
	mov r24,r12
	mov r25,r13
	mov r10,r14
	mov r11,r15
	mov r12,r16
	mov r13,r17
	mov r14,r27
	mov r15,r26
	mov r16,r31
	mov r17,r30
	rcall __subdi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
.L321:
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
	rjmp .L322
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L323
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __negdi2
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	rjmp .L325
.L323:
	ldd r14,Y+1
	ldd r15,Y+2
	ldd r16,Y+3
	ldd r17,Y+4
	ldd r27,Y+5
	ldd r26,Y+6
	ldd r31,Y+7
	ldd r30,Y+8
.L325:
	nop
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
/* epilogue start */
	adiw r28,12
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
	rjmp .L327
.L332:
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
	brge .L328
	ldd r24,Y+9
	ldd r25,Y+10
	lsr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	rjmp .L327
.L328:
	ldd r24,Y+3
	ldd r25,Y+4
	cpi r24,1
	cpc r25,__zero_reg__
	brlt .L330
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
	rjmp .L327
.L330:
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L331
.L327:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .+2
	rjmp .L332
	ldi r24,0
	ldi r25,0
.L331:
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
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 24 */
.L__stack_usage = 24
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	std Y+14,r19
	std Y+13,r18
	std Y+16,r17
	std Y+15,r16
	std Y+18,r15
	std Y+17,r14
	ldd r24,Y+11
	ldd r25,Y+12
	std Y+2,r25
	std Y+1,r24
	rjmp .L334
.L338:
	ldd r24,Y+1
	ldd r25,Y+2
	asr r25
	ror r24
	ldd r18,Y+13
	ldd r19,Y+14
	mov r22,r18
	mov r23,r19
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	ldd r20,Y+17
	ldd r21,Y+18
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r18,Y+15
	ldd r19,Y+16
	mov r30,r18
	mov r31,r19
	icall
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	brne .L335
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L336
.L335:
	ldd r24,Y+5
	ldd r25,Y+6
	cpi r24,1
	cpc r25,__zero_reg__
	brlt .L337
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+13
	ldd r25,Y+14
	add r24,r18
	adc r25,r19
	std Y+10,r25
	std Y+9,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
	std Y+2,r25
	std Y+1,r24
.L337:
	ldd r24,Y+1
	ldd r25,Y+2
	asr r25
	ror r24
	std Y+2,r25
	std Y+1,r24
.L334:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .+2
	rjmp .L338
	ldi r24,0
	ldi r25,0
.L336:
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
	mov r25,r22
	mov r24,r23
	mov r16,r25
	mov r17,r24
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	mov r22,r20
	mov r23,r21
	rcall __divmodhi4
	mov r20,r24
	mov r24,r25
	mov r25,r20
	mov r30,r16
	mov r31,r17
	mov r21,r30
	mov r20,r31
	mov r18,r25
	mov r19,r24
	mov r25,r18
	mov r24,r19
	mov r19,r20
	mov r18,r25
	mov r25,r24
	mov r22,r21
	mov r23,r19
	mov r24,r18
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
/* stack size = 22 */
.L__stack_usage = 22
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r13,Y+1
	ldd r14,Y+2
	ldd r15,Y+3
	ldd r16,Y+4
	ldd r17,Y+5
	ldd r27,Y+6
	ldd r31,Y+7
	ldd r30,Y+8
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r16
	mov r22,r17
	mov r23,r27
	mov r24,r31
	mov r25,r30
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L342
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r16
	mov r22,r17
	mov r23,r27
	mov r24,r31
	mov r25,r30
	rcall __negdi2
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r26,r25
	mov r13,r6
	mov r14,r7
	mov r15,r8
	mov r16,r9
	mov r17,r10
	mov r27,r11
	mov r31,r12
	mov r30,r26
.L342:
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r16
	mov r22,r17
	mov r23,r27
	mov r24,r31
	mov r25,r30
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
	sbiw r28,34
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 34 */
/* stack size = 52 */
.L__stack_usage = 52
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r2,r14
	mov r3,r15
	mov r4,r16
	mov r5,r17
	mov r6,r27
	mov r7,r26
	mov r8,r31
	mov r9,r30
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	ldd r16,Y+33
	ldd r17,Y+34
	rcall __moddi3
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	mov r16,r22
	mov r17,r23
	mov r27,r24
	mov r26,r25
	mov r31,r12
	mov r30,r13
	mov r23,r14
	mov r22,r15
	mov r21,r16
	mov r20,r17
	mov r19,r27
	mov r18,r26
	ldd r24,Y+17
	ldd r25,Y+18
	mov r26,r24
	mov r27,r25
	st X,r2
	mov r26,r24
	mov r27,r25
	adiw r26,1
	st X,r3
	mov r26,r24
	mov r27,r25
	adiw r26,2
	st X,r4
	mov r26,r24
	mov r27,r25
	adiw r26,3
	st X,r5
	mov r26,r24
	mov r27,r25
	adiw r26,4
	st X,r6
	mov r26,r24
	mov r27,r25
	adiw r26,5
	st X,r7
	mov r26,r24
	mov r27,r25
	adiw r26,6
	st X,r8
	mov r26,r24
	mov r27,r25
	adiw r26,7
	st X,r9
	ldd r24,Y+17
	ldd r25,Y+18
	mov r26,r24
	mov r27,r25
	adiw r26,8
	st X,r31
	mov r26,r24
	mov r27,r25
	adiw r26,9
	st X,r30
	mov r30,r24
	mov r31,r25
	std Z+10,r23
	mov r26,r24
	mov r27,r25
	adiw r26,11
	st X,r22
	mov r30,r24
	mov r31,r25
	std Z+12,r21
	mov r26,r24
	mov r27,r25
	adiw r26,13
	st X,r20
	mov r30,r24
	mov r31,r25
	std Z+14,r19
	mov r26,r24
	mov r27,r25
	adiw r26,15
	st X,r18
	sbiw r26,15
	ldd r24,Y+17
	ldd r25,Y+18
/* epilogue start */
	adiw r28,34
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
	brge .L347
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
.L347:
	mov r20,r24
	mov r19,r25
	mov r18,r26
	mov r25,r27
	mov r22,r20
	mov r23,r19
	mov r24,r18
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 32 */
.L__stack_usage = 32
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
	mov r22,r18
	mov r18,r19
	mov r25,r20
	mov r24,r21
	mov r12,r22
	mov r13,r18
	mov r14,r25
	mov r15,r24
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
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	std Y+4,r15
	std Y+5,r19
	std Y+6,r18
	std Y+7,r25
	std Y+8,r24
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
	mov r14,r23
	mov r15,r22
	mov r16,r21
	mov r17,r20
	mov r27,r19
	mov r26,r18
	mov r31,r25
	mov r30,r24
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
/* epilogue start */
	adiw r28,24
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
	.size	ldiv, .-ldiv
.global	llabs
	.type	llabs, @function
llabs:
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
/* stack size = 22 */
.L__stack_usage = 22
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r13,Y+1
	ldd r14,Y+2
	ldd r15,Y+3
	ldd r16,Y+4
	ldd r17,Y+5
	ldd r27,Y+6
	ldd r31,Y+7
	ldd r30,Y+8
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r16
	mov r22,r17
	mov r23,r27
	mov r24,r31
	mov r25,r30
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L352
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r16
	mov r22,r17
	mov r23,r27
	mov r24,r31
	mov r25,r30
	rcall __negdi2
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r26,r25
	mov r13,r6
	mov r14,r7
	mov r15,r8
	mov r16,r9
	mov r17,r10
	mov r27,r11
	mov r31,r12
	mov r30,r26
.L352:
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r16
	mov r22,r17
	mov r23,r27
	mov r24,r31
	mov r25,r30
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
	sbiw r28,34
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 34 */
/* stack size = 52 */
.L__stack_usage = 52
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r2,r14
	mov r3,r15
	mov r4,r16
	mov r5,r17
	mov r6,r27
	mov r7,r26
	mov r8,r31
	mov r9,r30
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	ldd r16,Y+33
	ldd r17,Y+34
	rcall __moddi3
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	mov r16,r22
	mov r17,r23
	mov r27,r24
	mov r26,r25
	mov r31,r12
	mov r30,r13
	mov r23,r14
	mov r22,r15
	mov r21,r16
	mov r20,r17
	mov r19,r27
	mov r18,r26
	ldd r24,Y+17
	ldd r25,Y+18
	mov r26,r24
	mov r27,r25
	st X,r2
	mov r26,r24
	mov r27,r25
	adiw r26,1
	st X,r3
	mov r26,r24
	mov r27,r25
	adiw r26,2
	st X,r4
	mov r26,r24
	mov r27,r25
	adiw r26,3
	st X,r5
	mov r26,r24
	mov r27,r25
	adiw r26,4
	st X,r6
	mov r26,r24
	mov r27,r25
	adiw r26,5
	st X,r7
	mov r26,r24
	mov r27,r25
	adiw r26,6
	st X,r8
	mov r26,r24
	mov r27,r25
	adiw r26,7
	st X,r9
	ldd r24,Y+17
	ldd r25,Y+18
	mov r26,r24
	mov r27,r25
	adiw r26,8
	st X,r31
	mov r26,r24
	mov r27,r25
	adiw r26,9
	st X,r30
	mov r30,r24
	mov r31,r25
	std Z+10,r23
	mov r26,r24
	mov r27,r25
	adiw r26,11
	st X,r22
	mov r30,r24
	mov r31,r25
	std Z+12,r21
	mov r26,r24
	mov r27,r25
	adiw r26,13
	st X,r20
	mov r30,r24
	mov r31,r25
	std Z+14,r19
	mov r26,r24
	mov r27,r25
	adiw r26,15
	st X,r18
	sbiw r26,15
	ldd r24,Y+17
	ldd r25,Y+18
/* epilogue start */
	adiw r28,34
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
	rjmp .L357
.L359:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
.L357:
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
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brne .L359
.L358:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L360
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L362
.L360:
	ldi r24,0
	ldi r25,0
.L362:
	nop
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
	rjmp .L364
.L366:
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
.L364:
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
	brne .L365
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L365
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L366
.L365:
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
	brlt .L367
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
	brlt .L368
	ldi r20,0
.L368:
	mov r24,r20
	ldi r25,0
	rjmp .L370
.L367:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L370:
	nop
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
.L372:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,2
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r24
	mov r21,r25
	subi r20,-2
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
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
	brne .L372
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
	rjmp .L375
.L376:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,2
	std Y+2,r25
	std Y+1,r24
.L375:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L376
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
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
	rjmp .L379
.L381:
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
.L379:
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
	brne .L380
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L380
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L381
.L380:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L382
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
	brlt .L383
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
	brlt .L384
	ldi r20,0
.L384:
	mov r24,r20
	ldi r25,0
	rjmp .L387
.L383:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L387
.L382:
	ldi r24,0
	ldi r25,0
.L387:
	nop
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
	rjmp .L389
.L391:
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
.L389:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L390
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
	brne .L391
.L390:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L392
	ldd r24,Y+1
	ldd r25,Y+2
	rjmp .L394
.L392:
	ldi r24,0
	ldi r25,0
.L394:
	nop
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
	rjmp .L396
.L398:
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
.L396:
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
	breq .L398
.L397:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L399
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
	brlt .L400
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
	brlt .L401
	ldi r20,0
.L401:
	mov r24,r20
	ldi r25,0
	rjmp .L404
.L400:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L404
.L399:
	ldi r24,0
	ldi r25,0
.L404:
	nop
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
	rjmp .L406
.L407:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,2
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r24
	mov r21,r25
	subi r20,-2
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L406:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L407
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
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brne .L410
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L411
.L410:
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
	brsh .L412
	rjmp .L413
.L414:
	ldd r24,Y+7
	ldd r25,Y+8
	lsl r24
	rol r25
	ldd r18,Y+3
	ldd r19,Y+4
	add r24,r18
	adc r25,r19
	ldd r18,Y+7
	ldd r19,Y+8
	lsl r18
	rol r19
	ldd r20,Y+5
	ldd r21,Y+6
	add r18,r20
	adc r19,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L413:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L414
	rjmp .L415
.L412:
	ldd r24,Y+3
	ldd r25,Y+4
	std Y+2,r25
	std Y+1,r24
	rjmp .L416
.L417:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,2
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r24
	mov r21,r25
	subi r20,-2
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	mov r30,r18
	mov r31,r19
	ld r18,Z
	ldd r19,Z+1
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L416:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L417
.L415:
	ldd r24,Y+3
	ldd r25,Y+4
.L411:
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
	rjmp .L419
.L420:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r18,r24
	mov r19,r25
	subi r18,-2
	sbci r19,-1
	std Y+2,r19
	std Y+1,r18
	ldd r18,Y+5
	ldd r19,Y+6
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L419:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+8,r19
	std Y+7,r18
	sbiw r24,0
	brne .L420
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
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brsh .L423
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	std Y+4,r25
	std Y+3,r24
	rjmp .L424
.L425:
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
.L424:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L425
	rjmp .L429
.L423:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	breq .L429
	rjmp .L427
.L428:
	ldd r18,Y+5
	ldd r19,Y+6
	mov r24,r18
	mov r25,r19
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+7
	ldd r25,Y+8
	mov r20,r24
	mov r21,r25
	subi r20,-1
	sbci r21,-1
	std Y+8,r21
	std Y+7,r20
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
.L427:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L428
.L429:
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
	push r14
	push r15
	push r16
	push r17
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
/* stack size = 16 */
.L__stack_usage = 16
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
/* epilogue start */
	adiw r28,10
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
	.size	rotl64, .-rotl64
.global	rotr64
	.type	rotr64, @function
rotr64:
	push r14
	push r15
	push r16
	push r17
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
/* stack size = 16 */
.L__stack_usage = 16
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
/* epilogue start */
	adiw r28,10
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
	mov r19,r24
	ldi r18,0
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
/* stack size = 30 */
.L__stack_usage = 30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r30,r24
	mov r31,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r14
	ldd r24,Y+10
	mov r19,r24
	and r19,r15
	ldd r24,Y+11
	mov r20,r24
	and r20,r16
	ldd r24,Y+12
	mov r21,r24
	and r21,r17
	ldd r24,Y+13
	mov r22,r24
	and r22,r27
	ldd r24,Y+14
	mov r23,r24
	and r23,r26
	ldd r24,Y+15
	and r30,r24
	ldd r24,Y+16
	mov r25,r24
	and r25,r31
	mov r24,r30
	ldi r16,lo8(56)
	rcall __lshrdi3
	mov r6,r18
	mov r7,r19
	mov r15,r20
	mov r8,r21
	mov r9,r22
	mov r10,r23
	mov r11,r24
	mov r12,r25
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
	mov r13,r18
	mov r14,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r30,r24
	mov r31,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r13
	ldd r24,Y+10
	mov r19,r24
	and r19,r14
	ldd r24,Y+11
	mov r20,r24
	and r20,r16
	ldd r24,Y+12
	mov r21,r24
	and r21,r17
	ldd r24,Y+13
	mov r22,r24
	and r22,r27
	ldd r24,Y+14
	mov r23,r24
	and r23,r26
	ldd r24,Y+15
	and r30,r24
	ldd r24,Y+16
	mov r25,r24
	and r25,r31
	mov r24,r30
	ldi r16,lo8(40)
	rcall __lshrdi3
	mov r13,r18
	mov r14,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	or r13,r6
	or r14,r7
	or r15,r16
	or r17,r8
	or r27,r9
	or r26,r10
	or r31,r11
	or r30,r12
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
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r16,r24
	mov r12,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r6
	ldd r24,Y+10
	mov r19,r24
	and r19,r7
	ldd r24,Y+11
	mov r20,r24
	and r20,r8
	ldd r24,Y+12
	mov r21,r24
	and r21,r9
	ldd r24,Y+13
	mov r22,r24
	and r22,r10
	ldd r24,Y+14
	mov r23,r24
	and r23,r11
	ldd r24,Y+15
	and r16,r24
	ldd r24,Y+16
	mov r25,r24
	and r25,r12
	mov r24,r16
	ldi r16,lo8(24)
	rcall __lshrdi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	or r13,r6
	or r14,r7
	or r15,r8
	or r17,r9
	or r27,r10
	or r26,r11
	or r31,r12
	or r30,r16
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
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r16,r24
	mov r12,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r6
	ldd r24,Y+10
	mov r19,r24
	and r19,r7
	ldd r24,Y+11
	mov r20,r24
	and r20,r8
	ldd r24,Y+12
	mov r21,r24
	and r21,r9
	ldd r24,Y+13
	mov r22,r24
	and r22,r10
	ldd r24,Y+14
	mov r23,r24
	and r23,r11
	ldd r24,Y+15
	and r16,r24
	ldd r24,Y+16
	mov r25,r24
	and r25,r12
	mov r24,r16
	ldi r16,lo8(8)
	rcall __lshrdi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	or r13,r6
	or r14,r7
	or r15,r8
	or r17,r9
	or r27,r10
	or r26,r11
	or r31,r12
	or r30,r16
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
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r16,r24
	mov r12,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r6
	ldd r24,Y+10
	mov r19,r24
	and r19,r7
	ldd r24,Y+11
	mov r20,r24
	and r20,r8
	ldd r24,Y+12
	mov r21,r24
	and r21,r9
	ldd r24,Y+13
	mov r22,r24
	and r22,r10
	ldd r24,Y+14
	mov r23,r24
	and r23,r11
	ldd r24,Y+15
	and r16,r24
	ldd r24,Y+16
	mov r25,r24
	and r25,r12
	mov r24,r16
	ldi r16,lo8(8)
	rcall __ashldi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	or r13,r6
	or r14,r7
	or r15,r8
	or r17,r9
	or r27,r10
	or r26,r11
	or r31,r12
	or r30,r16
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
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r16,r24
	mov r12,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r6
	ldd r24,Y+10
	mov r19,r24
	and r19,r7
	ldd r24,Y+11
	mov r20,r24
	and r20,r8
	ldd r24,Y+12
	mov r21,r24
	and r21,r9
	ldd r24,Y+13
	mov r22,r24
	and r22,r10
	ldd r24,Y+14
	mov r23,r24
	and r23,r11
	ldd r24,Y+15
	and r16,r24
	ldd r24,Y+16
	mov r25,r24
	and r25,r12
	mov r24,r16
	ldi r16,lo8(24)
	rcall __ashldi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	or r13,r6
	or r14,r7
	or r15,r8
	or r17,r9
	or r27,r10
	or r26,r11
	or r31,r12
	or r30,r16
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
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r16,r24
	mov r12,r25
	ldd r24,Y+9
	mov r18,r24
	and r18,r6
	ldd r24,Y+10
	mov r19,r24
	and r19,r7
	ldd r24,Y+11
	mov r20,r24
	and r20,r8
	ldd r24,Y+12
	mov r21,r24
	and r21,r9
	ldd r24,Y+13
	mov r22,r24
	and r22,r10
	ldd r24,Y+14
	mov r23,r24
	and r23,r11
	ldd r24,Y+15
	and r16,r24
	ldd r24,Y+16
	mov r25,r24
	and r25,r12
	mov r24,r16
	ldi r16,lo8(40)
	rcall __ashldi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	or r13,r6
	or r14,r7
	or r15,r8
	or r17,r9
	or r27,r10
	or r26,r11
	or r31,r12
	or r30,r16
	ldd r25,Y+9
	ldd r24,Y+1
	mov r18,r25
	and r18,r24
	ldd r25,Y+10
	ldd r24,Y+2
	mov r19,r25
	and r19,r24
	ldd r25,Y+11
	ldd r24,Y+3
	mov r20,r25
	and r20,r24
	ldd r25,Y+12
	ldd r24,Y+4
	mov r21,r25
	and r21,r24
	ldd r25,Y+13
	ldd r24,Y+5
	mov r22,r25
	and r22,r24
	ldd r25,Y+14
	ldd r24,Y+6
	mov r23,r25
	and r23,r24
	ldd r25,Y+15
	ldd r24,Y+7
	mov r16,r25
	and r16,r24
	ldd r25,Y+16
	ldd r24,Y+8
	and r25,r24
	mov r24,r16
	ldi r16,lo8(56)
	rcall __ashldi3
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	mov r18,r13
	or r18,r6
	mov r19,r14
	or r19,r7
	mov r20,r15
	or r20,r8
	mov r21,r17
	or r21,r9
	mov r22,r27
	or r22,r10
	mov r23,r26
	or r23,r11
	mov r24,r31
	or r24,r12
	mov r25,r30
	or r25,r16
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
	rjmp .L457
.L460:
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
	breq .L458
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	rjmp .L459
.L458:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L457:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlo .L460
	ldi r24,0
	ldi r25,0
.L459:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	sbiw r24,0
	brne .L462
	ldi r28,0
	ldi r29,0
	rjmp .L463
.L462:
	ldi r28,lo8(1)
	ldi r29,0
	rjmp .L464
.L465:
	asr r25
	ror r24
	adiw r28,1
.L464:
	mov r18,r24
	andi r18,1<<0
	clr r19
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L465
	nop
.L463:
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
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
	brlt .L467
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
	brlt .L472
.L467:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L471
.L472:
	ldi r24,0
	ldi r25,0
.L471:
	nop
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
	brlt .L474
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
	brlt .L479
.L474:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L478
.L479:
	ldi r24,0
	ldi r25,0
.L478:
	nop
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
	brne .L481
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
	breq .L486
.L481:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L485
.L486:
	ldi r24,0
	ldi r25,0
.L485:
	nop
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
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 12 */
.L__stack_usage = 12
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	std Y+5,r24
	std Y+6,r25
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,r14
	mov r30,r24
	mov r31,r25
	std Z+1,r15
	mov r30,r24
	mov r31,r25
	std Z+2,r16
	mov r30,r24
	mov r31,r25
	std Z+3,r17
	mov r30,r24
	mov r31,r25
	std Z+4,r27
	mov r30,r24
	mov r31,r25
	std Z+5,r26
	ldd r18,Y+5
	mov r30,r24
	mov r31,r25
	std Z+6,r18
	ldd r18,Y+6
	mov r30,r24
	mov r31,r25
	std Z+7,r18
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_Qp_itoq, .-_Qp_itoq
.global	ldexpf
	.type	ldexpf, @function
ldexpf:
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
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 18 */
.L__stack_usage = 18
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
	rjmp .L489
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
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L489
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brge .L491
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(63)
	rjmp .L492
.L491:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(64)
.L492:
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L496:
	ldd r24,Y+9
	ldd r25,Y+10
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L493
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
.L493:
	ldd r25,Y+9
	ldd r24,Y+10
	mov r16,r25
	mov r17,r24
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brge .L494
	subi r16,-1
	sbci r17,-1
.L494:
	mov r24,r16
	mov r25,r17
	asr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L499
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
	rjmp .L496
.L499:
	nop
.L489:
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
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	ldexpf, .-ldexpf
.global	ldexp
	.type	ldexp, @function
ldexp:
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
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 18 */
.L__stack_usage = 18
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
	rjmp .L501
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
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L501
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brge .L503
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(63)
	rjmp .L504
.L503:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(64)
.L504:
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L508:
	ldd r24,Y+9
	ldd r25,Y+10
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L505
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
.L505:
	ldd r25,Y+9
	ldd r24,Y+10
	mov r16,r25
	mov r17,r24
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brge .L506
	subi r16,-1
	sbci r17,-1
.L506:
	mov r24,r16
	mov r25,r17
	asr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L511
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
	rjmp .L508
.L511:
	nop
.L501:
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
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	ldexp, .-ldexp
.global	ldexpl
	.type	ldexpl, @function
ldexpl:
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
	rjmp .L513
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	rcall __adddf3
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r23,r14
	mov r22,r15
	mov r21,r16
	mov r20,r17
	mov r19,r27
	mov r18,r26
	mov r25,r31
	mov r24,r30
	mov r10,r23
	mov r11,r22
	mov r12,r21
	mov r13,r20
	mov r14,r19
	mov r15,r18
	mov r16,r25
	mov r17,r24
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
	rjmp .L513
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	brge .L515
	ldi r23,0
	ldi r22,0
	ldi r21,0
	ldi r20,0
	ldi r19,0
	ldi r18,0
	ldi r25,lo8(-32)
	ldi r24,lo8(63)
	rjmp .L516
.L515:
	ldi r23,0
	ldi r22,0
	ldi r21,0
	ldi r20,0
	ldi r19,0
	ldi r18,0
	ldi r25,0
	ldi r24,lo8(64)
.L516:
	std Y+1,r23
	std Y+2,r22
	std Y+3,r21
	std Y+4,r20
	std Y+5,r19
	std Y+6,r18
	std Y+7,r25
	std Y+8,r24
.L520:
	ldd r24,Y+17
	ldd r25,Y+18
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L517
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	std Y+13,r27
	std Y+14,r26
	std Y+15,r31
	std Y+16,r30
.L517:
	ldd r25,Y+17
	ldd r24,Y+18
	mov r8,r25
	mov r9,r24
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	brge .L518
	ldi r24,-1
	sub r8,r24
	sbc r9,r24
.L518:
	mov r24,r8
	mov r25,r9
	asr r25
	ror r24
	std Y+18,r25
	std Y+17,r24
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	breq .L523
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	std Y+1,r14
	std Y+2,r15
	std Y+3,r16
	std Y+4,r17
	std Y+5,r27
	std Y+6,r26
	std Y+7,r31
	std Y+8,r30
	rjmp .L520
.L523:
	nop
.L513:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
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
	.size	ldexpl, .-ldexpl
.global	memxor
	.type	memxor, @function
memxor:
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
	rjmp .L525
.L526:
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
	ld r20,Z
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
	eor r18,r20
	mov r30,r24
	mov r31,r25
	st Z,r18
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,1
	std Y+8,r25
	std Y+7,r24
.L525:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brne .L526
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
	rjmp .L529
.L531:
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
.L529:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	breq .L530
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
	brne .L531
.L530:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brne .L532
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	st Z,__zero_reg__
.L532:
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
	rjmp .L535
.L540:
	nop
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L535:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .L536
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
	brne .L540
.L536:
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
	rjmp .L542
.L546:
	ldd r24,Y+5
	ldd r25,Y+6
	std Y+2,r25
	std Y+1,r24
	rjmp .L543
.L545:
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
	brne .L543
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L544
.L543:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L545
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L542:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r24, __zero_reg__
	brne .L546
	ldi r24,0
	ldi r25,0
.L544:
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
.L549:
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
	brne .L548
	std Y+2,r25
	std Y+1,r24
.L548:
	mov r18,r24
	mov r19,r25
	mov r24,r18
	mov r25,r19
	adiw r24,1
	mov r30,r18
	mov r31,r19
	ld r18,Z
	cp r18, __zero_reg__
	brne .L549
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
	ldd r24,Y+7
	ldd r25,Y+8
	rcall strlen
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	brne .L554
	ldd r24,Y+5
	ldd r25,Y+6
	rjmp .L553
.L556:
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	mov r22,r18
	mov r23,r19
	rcall strncmp
	sbiw r24,0
	brne .L555
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L553
.L555:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L554:
	ldd r24,Y+7
	ldd r25,Y+8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	mov r18,r24
	lsl r24
	sbc r19,r19
	ldd r24,Y+5
	ldd r25,Y+6
	mov r22,r18
	mov r23,r19
	rcall strchr
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brne .L556
	ldi r24,0
	ldi r25,0
.L553:
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
	brge .L558
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
	brge .L560
.L558:
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
	brlt .L561
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
	brge .L561
.L560:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	subi r27,0x80
	rjmp .L564
.L561:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L564:
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
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+8,r21
	std Y+7,r20
	std Y+10,r19
	std Y+9,r18
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+9
	ldd r25,Y+10
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	ldd r18,Y+3
	ldd r19,Y+4
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	brne .L568
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L569
.L568:
	ldi r20,lo8(1)
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+9
	ldd r25,Y+10
	cp r18,r24
	cpc r19,r25
	brlo .L570
	ldi r20,0
.L570:
	mov r24,r20
	ldi r25,0
	ldi r26,0
	ldi r27,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L572
	ldi r24,0
	ldi r25,0
	rjmp .L569
.L574:
	ldd r24,Y+3
	ldd r25,Y+4
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r24,Y+7
	ldd r25,Y+8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	cp r18,r24
	brne .L573
	ldd r24,Y+3
	ldd r25,Y+4
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	ldd r24,Y+9
	ldd r25,Y+10
	mov r20,r24
	mov r21,r25
	subi r20,1
	sbc r21,__zero_reg__
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	mov r22,r24
	mov r23,r25
	mov r24,r18
	mov r25,r19
	rcall memcmp
	sbiw r24,0
	brne .L573
	ldd r24,Y+3
	ldd r25,Y+4
	rjmp .L569
.L573:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L572:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r24
	cpc r19,r25
	brsh .L574
	ldi r24,0
	ldi r25,0
.L569:
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
	brge .L578
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
.L578:
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
	brlt .L595
	rjmp .L582
.L583:
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
.L582:
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
	brge .L583
	rjmp .L584
.L595:
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
	brge .L584
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
	breq .L584
	rjmp .L587
.L588:
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
.L587:
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
	brlt .L588
.L584:
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
	breq .L589
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	subi r27,0x80
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L589:
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
	rjmp .L597
.L599:
	ldd r24,Y+9
	mov r18,r24
	andi r18,lo8(1)
	ldd r24,Y+10
	mov r19,r24
	andi r19,lo8(0)
	ldd r24,Y+11
	mov r20,r24
	andi r20,lo8(0)
	ldd r24,Y+12
	mov r21,r24
	andi r21,lo8(0)
	ldd r24,Y+13
	mov r22,r24
	andi r22,lo8(0)
	ldd r24,Y+14
	mov r23,r24
	andi r23,lo8(0)
	ldd r24,Y+15
	mov r30,r24
	andi r30,lo8(0)
	ldd r24,Y+16
	mov r25,r24
	andi r25,lo8(0)
	mov r24,r30
	ldi r26,0
	rcall __cmpdi2_s8
	breq .L598
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	std Y+1,r14
	std Y+2,r15
	std Y+3,r16
	std Y+4,r17
	std Y+5,r27
	std Y+6,r26
	std Y+7,r31
	std Y+8,r30
.L598:
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	std Y+25,r14
	std Y+26,r15
	std Y+27,r16
	std Y+28,r17
	std Y+29,r27
	std Y+30,r26
	std Y+31,r31
	std Y+32,r30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	std Y+13,r27
	std Y+14,r26
	std Y+15,r31
	std Y+16,r30
.L597:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	ldi r26,0
	rcall __cmpdi2_s8
	breq .+2
	rjmp .L599
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
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
	rjmp .L602
.L604:
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
.L602:
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
	rjmp .L605
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .+2
	rjmp .L605
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L604
	rjmp .L605
.L607:
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
	brlo .L606
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
.L606:
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
.L605:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .+2
	rjmp .L607
	ldd r24,Y+17
	cp r24, __zero_reg__
	breq .L608
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	rjmp .L609
.L608:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L609:
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
	brge .L611
	ldd r24,Y+3
	com r24
	std Y+3,r24
.L611:
	ldd r24,Y+3
	cp r24, __zero_reg__
	brne .L612
	ldi r24,lo8(7)
	ldi r25,0
	rjmp .L613
.L612:
	ldd r24,Y+3
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r25,r24
	ldi r24,0
	rcall __clzhi2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
.L613:
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
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L615
	ldd r24,Y+3
	mov r23,r24
	com r23
	ldd r24,Y+4
	mov r22,r24
	com r22
	ldd r24,Y+5
	mov r21,r24
	com r21
	ldd r24,Y+6
	mov r20,r24
	com r20
	ldd r24,Y+7
	mov r19,r24
	com r19
	ldd r24,Y+8
	mov r18,r24
	com r18
	ldd r24,Y+9
	mov r25,r24
	com r25
	ldd r24,Y+10
	com r24
	std Y+3,r23
	std Y+4,r22
	std Y+5,r21
	std Y+6,r20
	std Y+7,r19
	std Y+8,r18
	std Y+9,r25
	std Y+10,r24
.L615:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	ldi r26,0
	rcall __cmpdi2_s8
	brne .L616
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L617
.L616:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	rcall __clzdi2
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,1
.L617:
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
	rjmp .L619
.L621:
	ldd r24,Y+3
	ldd r25,Y+4
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L620
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	std Y+2,r25
	std Y+1,r24
.L620:
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
.L619:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,0
	brne .L621
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
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+11
	ldd r25,Y+12
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+11
	ldd r25,Y+12
	andi r24,248
	std Y+4,r25
	std Y+3,r24
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	cp r18,r24
	cpc r19,r25
	brlo .L624
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	add r18,r24
	adc r19,r25
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .+2
	rjmp .L631
.L624:
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L626
.L627:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	ldd r18,Y+1
	ldd r19,Y+2
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	ldd r20,Y+9
	ldd r21,Y+10
	add r18,r20
	adc r19,r21
	mov r30,r18
	mov r31,r19
	ld r27,Z
	mov r30,r18
	mov r31,r19
	ldd r26,Z+1
	mov r30,r18
	mov r31,r19
	ldd r31,Z+2
	std Y+13,r31
	mov r30,r18
	mov r31,r19
	ldd r31,Z+3
	std Y+14,r31
	mov r30,r18
	mov r31,r19
	ldd r23,Z+4
	mov r30,r18
	mov r31,r19
	ldd r22,Z+5
	mov r30,r18
	mov r31,r19
	ldd r21,Z+6
	mov r30,r18
	mov r31,r19
	ldd r20,Z+7
	mov r30,r24
	mov r31,r25
	st Z,r27
	mov r30,r24
	mov r31,r25
	std Z+1,r26
	ldd r18,Y+13
	mov r30,r24
	mov r31,r25
	std Z+2,r18
	ldd r18,Y+14
	mov r30,r24
	mov r31,r25
	std Z+3,r18
	mov r30,r24
	mov r31,r25
	std Z+4,r23
	mov r30,r24
	mov r31,r25
	std Z+5,r22
	mov r30,r24
	mov r31,r25
	std Z+6,r21
	mov r30,r24
	mov r31,r25
	std Z+7,r20
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L626:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L627
	rjmp .L628
.L629:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r18,Y+3
	ldd r19,Y+4
	add r18,r20
	adc r19,r21
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
.L628:
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brlo .L629
	rjmp .L630
.L632:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+11
	ldd r25,Y+12
	add r24,r18
	adc r25,r19
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	add r18,r20
	adc r19,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
.L631:
	ldd r24,Y+11
	ldd r25,Y+12
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+12,r19
	std Y+11,r18
	sbiw r24,0
	brne .L632
	nop
.L630:
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
	.size	__cmovd, .-__cmovd
.global	__cmovh
	.type	__cmovh, @function
__cmovh:
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
	ldd r24,Y+9
	ldd r25,Y+10
	lsr r25
	ror r24
	std Y+4,r25
	std Y+3,r24
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .L634
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	add r18,r24
	adc r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .+2
	rjmp .L640
.L634:
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L636
.L637:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	ldd r18,Y+5
	ldd r19,Y+6
	add r24,r18
	adc r25,r19
	ldd r18,Y+1
	ldd r19,Y+2
	lsl r18
	rol r19
	ldd r20,Y+7
	ldd r21,Y+8
	add r18,r20
	adc r19,r21
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
.L636:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	cp r18,r24
	cpc r19,r25
	brlo .L637
	ldd r24,Y+9
	ldd r25,Y+10
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L639
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,1
	ldd r18,Y+5
	ldd r19,Y+6
	add r24,r18
	adc r25,r19
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	add r18,r20
	adc r19,r21
	subi r18,1
	sbc r19,__zero_reg__
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	rjmp .L639
.L641:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+9
	ldd r25,Y+10
	add r24,r18
	adc r25,r19
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	add r18,r20
	adc r19,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
.L640:
	ldd r24,Y+9
	ldd r25,Y+10
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+10,r19
	std Y+9,r18
	sbiw r24,0
	brne .L641
	nop
.L639:
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
	.size	__cmovh, .-__cmovh
.global	__cmovw
	.type	__cmovw, @function
__cmovw:
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
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+11
	ldd r25,Y+12
	lsr r25
	ror r24
	lsr r25
	ror r24
	std Y+6,r25
	std Y+5,r24
	ldd r24,Y+11
	ldd r25,Y+12
	andi r24,252
	std Y+4,r25
	std Y+3,r24
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	cp r18,r24
	cpc r19,r25
	brlo .L643
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	add r18,r24
	adc r19,r25
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .+2
	rjmp .L650
.L643:
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L645
.L646:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	ldd r18,Y+1
	ldd r19,Y+2
	lsl r18
	rol r19
	ldd r20,Y+9
	ldd r21,Y+10
	add r18,r20
	adc r19,r21
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
.L645:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlo .L646
	rjmp .L647
.L648:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r18,Y+3
	ldd r19,Y+4
	add r18,r20
	adc r19,r21
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
.L647:
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r18,Y+3
	ldd r19,Y+4
	cp r18,r24
	cpc r19,r25
	brlo .L648
	rjmp .L649
.L651:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+11
	ldd r25,Y+12
	add r24,r18
	adc r25,r19
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r18,Y+11
	ldd r19,Y+12
	add r18,r20
	adc r19,r21
	mov r30,r18
	mov r31,r19
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
.L650:
	ldd r24,Y+11
	ldd r25,Y+12
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	std Y+12,r19
	std Y+11,r18
	sbiw r24,0
	brne .L651
	nop
.L649:
	nop
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
	rjmp .L665
.L668:
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
	brne .L670
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L665:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L668
	rjmp .L667
.L670:
	nop
.L667:
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
	rjmp .L672
.L675:
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
	brne .L677
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L672:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L675
	rjmp .L674
.L677:
	nop
.L674:
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
/* stack size = 10 */
.L__stack_usage = 10
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
	brlt .L683
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __subsf3
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __fixsfsi
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	subi r25,-128
	sbci r26,-1
	sbci r27,-1
	rjmp .L681
.L683:
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __fixsfsi
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
.L681:
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
	pop r15
	pop r14
	pop r13
	pop r12
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
	rjmp .L685
.L687:
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
	breq .L686
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L686:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L685:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L687
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
	rjmp .L690
.L692:
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
	breq .L691
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L691:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L690:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,16
	cpc r25,__zero_reg__
	brlt .L692
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
	rjmp .L695
.L697:
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
	breq .L696
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
.L696:
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
.L695:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L697
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
	brne .L702
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L701
.L704:
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
	breq .L703
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
.L703:
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
.L702:
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L704
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L701:
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
	rjmp .L706
.L708:
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
.L706:
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
	rjmp .L709
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .+2
	rjmp .L709
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L708
	rjmp .L709
.L711:
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
	brlo .L710
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
.L710:
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
.L709:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .+2
	rjmp .L711
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	breq .L712
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	rjmp .L713
.L712:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L713:
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
	brge .L722
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L717
.L722:
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
	brlt .L723
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L717
.L723:
	ldi r24,0
	ldi r25,0
.L717:
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
	brge .L732
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L727
.L732:
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
	brlt .L733
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L727
.L733:
	ldi r24,0
	ldi r25,0
.L727:
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
/* stack size = 22 */
.L__stack_usage = 22
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
	mov r21,r24
	mov r20,r25
	mov r19,r26
	mov r18,r27
	mov r6,r21
	mov r7,r20
	mov r8,r19
	mov r9,r18
	lsl r27
	sbc r24,r24
	mov r25,r24
	mov r26,r24
	mov r27,r24
	mov r22,r24
	mov r23,r24
	mov r31,r24
	mov r30,r24
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r21,r24
	mov r20,r25
	mov r19,r26
	mov r18,r27
	mov r15,r21
	mov r16,r20
	mov r17,r19
	mov r21,r18
	lsl r27
	sbc r24,r24
	mov r25,r24
	mov r26,r24
	mov r27,r24
	mov r20,r24
	mov r19,r24
	mov r18,r24
	mov r10,r15
	mov r11,r16
	mov r12,r17
	mov r13,r21
	mov r14,r20
	mov r15,r19
	mov r16,r18
	mov r17,r24
	mov r18,r6
	mov r19,r7
	mov r20,r8
	mov r21,r9
	mov r24,r31
	mov r25,r30
	rcall __muldi3
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
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
	brge .L739
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
.L739:
	std Y+1,__zero_reg__
	rjmp .L740
.L743:
	ldd r24,Y+8
	ldd r25,Y+9
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L741
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r24,Y+6
	ldd r25,Y+7
	add r24,r18
	adc r25,r19
	std Y+5,r25
	std Y+4,r24
.L741:
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
.L740:
	ldd r24,Y+8
	ldd r25,Y+9
	sbiw r24,0
	breq .L742
	ldd r24,Y+1
	cpi r24,lo8(16)
	brlo .L743
.L742:
	ldd r24,Y+2
	ldd r25,Y+3
	sbiw r24,0
	breq .L744
	ldd r24,Y+4
	ldd r25,Y+5
	neg r25
	neg r24
	sbc r25,__zero_reg__
	rjmp .L746
.L744:
	ldd r24,Y+4
	ldd r25,Y+5
.L746:
	nop
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
	brge .L748
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
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L750
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
	breq .L751
	ldi r18,0
.L751:
	mov r24,r18
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
.L750:
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
	breq .L752
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
.L752:
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
	brge .L755
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
.L755:
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L756
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
.L756:
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
	breq .L757
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
.L757:
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
	rjmp .L760
.L762:
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
.L760:
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brsh .L763
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	breq .L763
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,0
	brge .L762
	rjmp .L763
.L765:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	cp r18,r24
	cpc r19,r25
	brlo .L764
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
.L764:
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
.L763:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,0
	brne .L765
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,0
	breq .L766
	ldd r24,Y+5
	ldd r25,Y+6
	rjmp .L767
.L766:
	ldd r24,Y+3
	ldd r25,Y+4
.L767:
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
	rjmp .L769
.L771:
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
.L769:
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
	rjmp .L772
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .+2
	rjmp .L772
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brge .L771
	rjmp .L772
.L774:
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
	brlo .L773
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
.L773:
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
.L772:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .+2
	rjmp .L774
	ldd r24,Y+17
	ldd r25,Y+18
	sbiw r24,0
	breq .L775
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	rjmp .L776
.L775:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
.L776:
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
/* stack size = 36 */
.L__stack_usage = 36
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
	breq .L778
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
	rjmp .L779
.L778:
	ldd r24,Y+27
	ldd r25,Y+28
	sbiw r24,0
	brne .L780
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	rjmp .L782
.L780:
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
	ldd r19,Y+7
	ldd r18,Y+8
	ldd r25,Y+9
	ldd r24,Y+10
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r23,r15
	mov r22,r14
	mov r21,r13
	mov r20,r12
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
.L779:
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
.L782:
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
	ret
	.size	__ashldi3, .-__ashldi3
.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
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
/* stack size = 36 */
.L__stack_usage = 36
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
	breq .L784
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
	rjmp .L785
.L784:
	ldd r24,Y+27
	ldd r25,Y+28
	sbiw r24,0
	brne .L786
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	rjmp .L788
.L786:
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
	ldd r19,Y+7
	ldd r18,Y+8
	ldd r25,Y+9
	ldd r24,Y+10
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+27
	ldd r25,Y+28
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	mov r23,r15
	mov r22,r14
	mov r21,r13
	mov r20,r12
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r24
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
.L785:
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
.L788:
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
	ret
	.size	__ashrdi3, .-__ashrdi3
.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
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
/* stack size = 22 */
.L__stack_usage = 22
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
	mov r13,r18
	mov r6,r19
	mov r7,r20
	mov r8,r21
	mov r9,r22
	mov r10,r23
	mov r11,r24
	mov r12,r25
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r23,r14
	andi r23,lo8(0)
	mov r22,r15
	andi r22,lo8(-1)
	mov r21,r16
	andi r21,lo8(0)
	mov r20,r17
	andi r20,lo8(0)
	mov r19,r27
	andi r19,lo8(0)
	mov r18,r26
	andi r18,lo8(0)
	mov r25,r31
	andi r25,lo8(0)
	mov r24,r30
	andi r24,lo8(0)
	mov r14,r23
	mov r15,r22
	mov r16,r21
	mov r17,r20
	mov r27,r19
	mov r26,r18
	mov r31,r25
	mov r30,r24
	or r13,r14
	or r6,r15
	or r7,r16
	or r8,r17
	or r9,r27
	or r10,r26
	or r11,r31
	or r12,r30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r23,r14
	andi r23,lo8(0)
	mov r22,r15
	andi r22,lo8(0)
	mov r21,r16
	andi r21,lo8(-1)
	mov r20,r17
	andi r20,lo8(0)
	mov r19,r27
	andi r19,lo8(0)
	mov r18,r26
	andi r18,lo8(0)
	mov r25,r31
	andi r25,lo8(0)
	mov r24,r30
	andi r24,lo8(0)
	mov r14,r23
	mov r15,r22
	mov r16,r21
	mov r17,r20
	mov r27,r19
	mov r26,r18
	mov r31,r25
	mov r30,r24
	or r13,r14
	or r6,r15
	or r7,r16
	or r8,r17
	or r9,r27
	or r10,r26
	or r11,r31
	or r12,r30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r23,r14
	andi r23,lo8(0)
	mov r22,r15
	andi r22,lo8(0)
	mov r21,r16
	andi r21,lo8(0)
	mov r20,r17
	andi r20,lo8(-1)
	mov r19,r27
	andi r19,lo8(0)
	mov r18,r26
	andi r18,lo8(0)
	mov r25,r31
	andi r25,lo8(0)
	mov r24,r30
	andi r24,lo8(0)
	mov r14,r23
	mov r15,r22
	mov r16,r21
	mov r17,r20
	mov r27,r19
	mov r26,r18
	mov r31,r25
	mov r30,r24
	or r13,r14
	or r6,r15
	or r7,r16
	or r8,r17
	or r9,r27
	or r10,r26
	or r11,r31
	or r12,r30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r23,r14
	andi r23,lo8(0)
	mov r22,r15
	andi r22,lo8(0)
	mov r21,r16
	andi r21,lo8(0)
	mov r20,r17
	andi r20,lo8(0)
	mov r19,r27
	andi r19,lo8(-1)
	mov r18,r26
	andi r18,lo8(0)
	mov r25,r31
	andi r25,lo8(0)
	mov r24,r30
	andi r24,lo8(0)
	mov r14,r23
	mov r15,r22
	mov r16,r21
	mov r17,r20
	mov r27,r19
	mov r26,r18
	mov r31,r25
	mov r30,r24
	or r13,r14
	or r6,r15
	or r7,r16
	or r8,r17
	or r9,r27
	or r10,r26
	or r11,r31
	or r12,r30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r23,r14
	andi r23,lo8(0)
	mov r22,r15
	andi r22,lo8(0)
	mov r21,r16
	andi r21,lo8(0)
	mov r20,r17
	andi r20,lo8(0)
	mov r19,r27
	andi r19,lo8(0)
	mov r18,r26
	andi r18,lo8(-1)
	mov r25,r31
	andi r25,lo8(0)
	mov r24,r30
	andi r24,lo8(0)
	mov r14,r23
	mov r15,r22
	mov r16,r21
	mov r17,r20
	mov r27,r19
	mov r26,r18
	mov r31,r25
	mov r30,r24
	or r13,r14
	or r6,r15
	or r7,r16
	or r8,r17
	or r9,r27
	or r10,r26
	or r11,r31
	or r12,r30
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r23,r14
	andi r23,lo8(0)
	mov r22,r15
	andi r22,lo8(0)
	mov r21,r16
	andi r21,lo8(0)
	mov r20,r17
	andi r20,lo8(0)
	mov r19,r27
	andi r19,lo8(0)
	mov r18,r26
	andi r18,lo8(0)
	mov r25,r31
	andi r25,lo8(-1)
	mov r24,r30
	andi r24,lo8(0)
	mov r14,r23
	mov r15,r22
	mov r16,r21
	mov r17,r20
	mov r27,r19
	mov r26,r18
	mov r31,r25
	mov r30,r24
	or r13,r14
	mov r14,r6
	or r14,r15
	mov r15,r7
	or r15,r16
	or r17,r8
	or r27,r9
	or r26,r10
	or r31,r11
	or r30,r12
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
	mov r6,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r16,r25
	mov r18,r13
	or r18,r6
	mov r19,r14
	or r19,r7
	mov r20,r15
	or r20,r8
	mov r21,r17
	or r21,r9
	mov r22,r27
	or r22,r10
	mov r23,r26
	or r23,r11
	mov r24,r31
	or r24,r12
	mov r25,r30
	or r25,r16
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
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,56
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 56 */
/* stack size = 58 */
.L__stack_usage = 58
	std Y+53,r22
	std Y+54,r23
	std Y+55,r24
	std Y+56,r25
	ldd r24,Y+53
	ldd r25,Y+54
	ldd r26,Y+55
	ldd r27,Y+56
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	ldi r18,1
	cpc r26,r18
	cpc r27,__zero_reg__
	brsh .L794
	ldi r24,lo8(16)
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
	ldi r18,lo8(16)
	ldi r19,0
	ldd r24,Y+5
	ldd r25,Y+6
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
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	clr r24
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L796
	ldi r24,lo8(8)
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
	std Y+17,r24
	std Y+18,r25
	std Y+19,r26
	std Y+20,r27
	ldi r18,lo8(8)
	ldi r19,0
	ldd r24,Y+17
	ldd r25,Y+18
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
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
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+25,r24
	std Y+26,r25
	std Y+27,r26
	std Y+28,r27
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
	andi r24,240
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L798
	ldi r24,lo8(4)
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
	std Y+29,r24
	std Y+30,r25
	std Y+31,r26
	std Y+32,r27
	ldi r18,lo8(4)
	ldi r19,0
	ldd r24,Y+29
	ldd r25,Y+30
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
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
	std Y+33,r24
	std Y+34,r25
	std Y+35,r26
	std Y+36,r27
	ldd r20,Y+25
	ldd r21,Y+26
	ldd r22,Y+27
	ldd r23,Y+28
	ldd r24,Y+29
	ldd r25,Y+30
	ldd r26,Y+31
	ldd r27,Y+32
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+37,r24
	std Y+38,r25
	std Y+39,r26
	std Y+40,r27
	ldd r24,Y+33
	ldd r25,Y+34
	ldd r26,Y+35
	ldd r27,Y+36
	andi r24,12
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L800
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L801
.L800:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L801:
	std Y+41,r24
	std Y+42,r25
	std Y+43,r26
	std Y+44,r27
	ldi r18,lo8(2)
	ldi r19,0
	ldd r24,Y+41
	ldd r25,Y+42
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+33
	ldd r25,Y+34
	ldd r26,Y+35
	ldd r27,Y+36
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r18
	brpl 1b
	std Y+45,r24
	std Y+46,r25
	std Y+47,r26
	std Y+48,r27
	ldd r20,Y+37
	ldd r21,Y+38
	ldd r22,Y+39
	ldd r23,Y+40
	ldd r24,Y+41
	ldd r25,Y+42
	ldd r26,Y+43
	ldd r27,Y+44
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+49,r24
	std Y+50,r25
	std Y+51,r26
	std Y+52,r27
	ldd r24,Y+45
	ldd r25,Y+46
	ldd r26,Y+47
	ldd r27,Y+48
	andi r24,2
	clr r25
	clr r26
	clr r27
	ldi r18,lo8(1)
	ldi r19,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L802
	ldi r18,0
	ldi r19,0
.L802:
	mov r30,r18
	mov r18,r19
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldd r24,Y+45
	ldd r25,Y+46
	ldd r26,Y+47
	ldd r27,Y+48
	sub r20,r24
	sbc r21,r25
	sbc r22,r26
	sbc r23,r27
	mov r24,r30
	mov r25,r18
	mov r22,r20
	mov r23,r21
	rcall __mulhi3
	mov r18,r24
	mov r19,r25
	ldd r24,Y+49
	ldd r25,Y+50
	add r24,r18
	adc r25,r19
/* epilogue start */
	adiw r28,56
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
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
	brge .L805
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L810
.L805:
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
	brge .L807
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L810
.L807:
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
	brsh .L808
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L810
.L808:
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
	brsh .L809
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L810
.L809:
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L810:
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
/* stack size = 26 */
.L__stack_usage = 26
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
	ldd r14,Y+9
	ldd r15,Y+10
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r27,Y+13
	ldd r26,Y+14
	ldd r31,Y+15
	ldd r30,Y+16
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	mov r10,r14
	mov r11,r15
	mov r12,r16
	mov r13,r17
	mov r14,r27
	mov r15,r26
	mov r16,r31
	mov r17,r30
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
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
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
/* stack size = 68 */
.L__stack_usage = 68
	std Y+57,r22
	std Y+58,r23
	std Y+59,r24
	std Y+60,r25
	ldd r24,Y+57
	ldd r25,Y+58
	ldd r26,Y+59
	ldd r27,Y+60
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
	brne .L814
	ldi r24,lo8(16)
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
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	ldd r0,Y+5
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L816
	ldi r24,lo8(8)
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
	std Y+17,r24
	std Y+18,r25
	std Y+19,r26
	std Y+20,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	ldd r0,Y+17
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+25,r24
	std Y+26,r25
	std Y+27,r26
	std Y+28,r27
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
	andi r24,15
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L818
	ldi r24,lo8(4)
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
	std Y+29,r24
	std Y+30,r25
	std Y+31,r26
	std Y+32,r27
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
	ldd r0,Y+29
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+33,r24
	std Y+34,r25
	std Y+35,r26
	std Y+36,r27
	ldd r20,Y+25
	ldd r21,Y+26
	ldd r22,Y+27
	ldd r23,Y+28
	ldd r24,Y+29
	ldd r25,Y+30
	ldd r26,Y+31
	ldd r27,Y+32
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+37,r24
	std Y+38,r25
	std Y+39,r26
	std Y+40,r27
	ldd r24,Y+33
	ldd r25,Y+34
	ldd r26,Y+35
	ldd r27,Y+36
	andi r24,3
	clr r25
	clr r26
	clr r27
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L820
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L821
.L820:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L821:
	std Y+41,r24
	std Y+42,r25
	std Y+43,r26
	std Y+44,r27
	ldd r24,Y+33
	ldd r25,Y+34
	ldd r26,Y+35
	ldd r27,Y+36
	ldd r0,Y+41
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	std Y+45,r24
	std Y+46,r25
	std Y+47,r26
	std Y+48,r27
	ldd r24,Y+45
	ldd r25,Y+46
	ldd r26,Y+47
	ldd r27,Y+48
	andi r24,3
	clr r25
	clr r26
	clr r27
	std Y+49,r24
	std Y+50,r25
	std Y+51,r26
	std Y+52,r27
	ldd r20,Y+37
	ldd r21,Y+38
	ldd r22,Y+39
	ldd r23,Y+40
	ldd r24,Y+41
	ldd r25,Y+42
	ldd r26,Y+43
	ldd r27,Y+44
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+53,r24
	std Y+54,r25
	std Y+55,r26
	std Y+56,r27
	ldd r24,Y+49
	ldd r25,Y+50
	ldd r26,Y+51
	ldd r27,Y+52
	mov r16,r24
	mov r17,r25
	mov r18,r26
	mov r19,r27
	com r16
	com r17
	com r18
	com r19
	ldd r24,Y+49
	ldd r25,Y+50
	ldd r26,Y+51
	ldd r27,Y+52
	lsr r27
	ror r26
	ror r25
	ror r24
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	mov r27,r15
	mov r26,r14
	mov r25,r13
	mov r24,r12
	mov r18,r16
	andi r18,1<<0
	clr r19
	neg r19
	neg r18
	sbc r19,__zero_reg__
	and r18,r24
	and r19,r25
	ldd r24,Y+53
	ldd r25,Y+54
	add r24,r18
	adc r25,r19
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
	ret
	.size	__ctzsi2, .-__ctzsi2
.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
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
/* stack size = 32 */
.L__stack_usage = 32
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
	breq .L824
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
	rjmp .L825
.L824:
	ldd r24,Y+27
	ldd r25,Y+28
	sbiw r24,0
	brne .L826
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	rjmp .L828
.L826:
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
.L825:
	ldd r18,Y+11
	ldd r19,Y+12
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
.L828:
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
	ret
	.size	__lshrdi3, .-__lshrdi3
.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
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
	sbiw r28,46
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 46 */
/* stack size = 62 */
.L__stack_usage = 62
	std Y+31,r22
	std Y+32,r23
	std Y+33,r24
	std Y+34,r25
	std Y+35,r18
	std Y+36,r19
	std Y+37,r20
	std Y+38,r21
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
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	and r16,r24
	and r17,r25
	and r18,r26
	and r19,r27
	std Y+39,r16
	std Y+40,r17
	std Y+41,r18
	std Y+42,r19
	ldd r20,Y+35
	ldd r21,Y+36
	ldd r22,Y+37
	ldd r23,Y+38
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
	ldd r22,Y+39
	ldd r23,Y+40
	ldd r24,Y+41
	ldd r25,Y+42
	rcall __mulsi3
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	std Y+23,r19
	std Y+24,r18
	std Y+25,r25
	std Y+26,r24
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
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
	ldd r24,Y+23
	ldd r25,Y+24
	ldd r26,Y+25
	ldd r27,Y+26
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	std Y+23,r24
	std Y+24,r25
	std Y+25,r26
	std Y+26,r27
	ldd r24,Y+31
	ldd r25,Y+32
	ldd r26,Y+33
	ldd r27,Y+34
	mov r16,r24
	mov r17,r25
	mov r18,r26
	mov r19,r27
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	std Y+43,r16
	std Y+44,r17
	std Y+45,r18
	std Y+46,r19
	ldd r20,Y+35
	ldd r21,Y+36
	ldd r22,Y+37
	ldd r23,Y+38
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
	ldd r22,Y+43
	ldd r23,Y+44
	ldd r24,Y+45
	ldd r25,Y+46
	rcall __mulsi3
	mov r20,r22
	mov r19,r23
	mov r18,r24
	mov r24,r25
	mov r4,r20
	mov r5,r19
	mov r6,r18
	mov r7,r24
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
	add r24,r4
	adc r25,r5
	adc r26,r6
	adc r27,r7
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r18,Y+13
	ldd r19,Y+14
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
	std Y+23,r24
	std Y+24,r25
	std Y+25,r26
	std Y+26,r27
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
	std Y+27,r24
	std Y+28,r25
	std Y+29,r26
	std Y+30,r27
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
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	ldd r24,Y+23
	ldd r25,Y+24
	ldd r26,Y+25
	ldd r27,Y+26
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	and r24,r20
	and r25,r21
	and r26,r22
	and r27,r23
	std Y+23,r24
	std Y+24,r25
	std Y+25,r26
	std Y+26,r27
	ldd r24,Y+35
	ldd r25,Y+36
	ldd r26,Y+37
	ldd r27,Y+38
	mov r4,r24
	mov r5,r25
	mov r6,r26
	mov r7,r27
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	2:
	dec r0
	brpl 1b
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
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
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsi3
	mov r20,r22
	mov r19,r23
	mov r18,r24
	mov r24,r25
	mov r8,r20
	mov r9,r19
	mov r10,r18
	mov r11,r24
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r26,Y+17
	ldd r27,Y+18
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
	std Y+19,r24
	std Y+20,r25
	std Y+21,r26
	std Y+22,r27
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r16,Y+19
	ldd r17,Y+20
	ldd r18,Y+21
	ldd r19,Y+22
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
	std Y+23,r24
	std Y+24,r25
	std Y+25,r26
	std Y+26,r27
	ldd r20,Y+27
	ldd r21,Y+28
	ldd r22,Y+29
	ldd r23,Y+30
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
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
	std Y+27,r24
	std Y+28,r25
	std Y+29,r26
	std Y+30,r27
	ldd r8,Y+27
	ldd r9,Y+28
	ldd r10,Y+29
	ldd r11,Y+30
	ldd r24,Y+31
	ldd r25,Y+32
	ldd r26,Y+33
	ldd r27,Y+34
	mov r4,r24
	mov r5,r25
	mov r6,r26
	mov r7,r27
	ldd r0,Y+1
	rjmp 2f
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	2:
	dec r0
	brpl 1b
	ldd r24,Y+35
	ldd r25,Y+36
	ldd r26,Y+37
	ldd r27,Y+38
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
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsi3
	mov r20,r22
	mov r19,r23
	mov r18,r24
	mov r24,r25
	mov r12,r20
	mov r13,r19
	mov r14,r18
	mov r15,r24
	mov r27,r11
	mov r26,r10
	mov r25,r9
	mov r24,r8
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	std Y+27,r24
	std Y+28,r25
	std Y+29,r26
	std Y+30,r27
	ldd r18,Y+23
	ldd r19,Y+24
	ldd r20,Y+25
	ldd r21,Y+26
	ldd r22,Y+27
	ldd r23,Y+28
	ldd r24,Y+29
	ldd r25,Y+30
/* epilogue start */
	adiw r28,46
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	std Y+17,r14
	std Y+18,r15
	std Y+19,r16
	std Y+20,r17
	std Y+21,r27
	std Y+22,r26
	std Y+23,r31
	std Y+24,r30
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
	ldd r8,Y+5
	ldd r9,Y+6
	ldd r10,Y+7
	ldd r11,Y+8
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
	mov r20,r22
	mov r19,r23
	mov r18,r24
	mov r24,r25
	std Y+41,r20
	std Y+42,r19
	std Y+43,r18
	std Y+44,r24
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsi3
	mov r20,r22
	mov r19,r23
	mov r18,r24
	mov r24,r25
	mov r4,r20
	mov r5,r19
	mov r6,r18
	mov r7,r24
	ldd r24,Y+41
	ldd r25,Y+42
	ldd r26,Y+43
	ldd r27,Y+44
	add r24,r4
	adc r25,r5
	adc r26,r6
	adc r27,r7
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
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
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
.global	__negdi2
	.type	__negdi2, @function
__negdi2:
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
/* stack size = 14 */
.L__stack_usage = 14
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
	rcall __negdi2
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
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
	ret
	.size	__negdi2, .-__negdi2
.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
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
/* stack size = 34 */
.L__stack_usage = 34
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
	ldd r24,Y+25
	std Y+17,r24
	ldd r24,Y+26
	std Y+18,r24
	ldd r24,Y+27
	std Y+19,r24
	ldd r24,Y+28
	std Y+20,r24
	ldd r24,Y+29
	std Y+21,r24
	ldd r24,Y+30
	std Y+22,r24
	ldd r24,Y+31
	std Y+23,r24
	ldd r24,Y+32
	std Y+24,r24
	ldd r20,Y+21
	ldd r21,Y+22
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
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
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	set
	bld __zero_reg__,4-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+13
	ldd r25,Y+14
	andi r24,15
	clr r25
	ldi r18,lo8(-106)
	ldi r19,lo8(105)
	mov r20,r18
	mov r21,r19
	rjmp 2f
	1:
	asr r21
	ror r20
	2:
	dec r24
	brpl 1b
	mov r24,r20
	mov r25,r21
	andi r24,1
	clr r25
/* epilogue start */
	adiw r28,32
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
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
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
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	set
	bld __zero_reg__,4-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+13
	ldd r25,Y+14
	andi r24,15
	clr r25
	ldi r18,lo8(-106)
	ldi r19,lo8(105)
	mov r20,r18
	mov r21,r19
	rjmp 2f
	1:
	asr r21
	ror r20
	2:
	dec r24
	brpl 1b
	mov r24,r20
	mov r25,r21
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
	.size	__paritysi2, .-__paritysi2
.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	push r4
	push r5
	push r6
	push r7
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
	sbiw r28,48
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 48 */
/* stack size = 62 */
.L__stack_usage = 62
	std Y+41,r18
	std Y+42,r19
	std Y+43,r20
	std Y+44,r21
	std Y+45,r22
	std Y+46,r23
	std Y+47,r24
	std Y+48,r25
	ldd r24,Y+41
	std Y+1,r24
	ldd r24,Y+42
	std Y+2,r24
	ldd r24,Y+43
	std Y+3,r24
	ldd r24,Y+44
	std Y+4,r24
	ldd r24,Y+45
	std Y+5,r24
	ldd r24,Y+46
	std Y+6,r24
	ldd r24,Y+47
	std Y+7,r24
	ldd r24,Y+48
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
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r24,r14
	andi r24,lo8(85)
	mov r14,r24
	mov r24,r15
	andi r24,lo8(85)
	mov r15,r24
	andi r16,lo8(85)
	andi r17,lo8(85)
	andi r27,lo8(85)
	andi r26,lo8(85)
	andi r31,lo8(85)
	andi r30,lo8(85)
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	mov r10,r14
	mov r11,r15
	mov r12,r16
	mov r13,r17
	mov r14,r27
	mov r15,r26
	mov r16,r31
	mov r17,r30
	rcall __subdi3
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	std Y+13,r27
	std Y+14,r26
	std Y+15,r31
	std Y+16,r30
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	ldi r16,lo8(2)
	rcall __lshrdi3
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	andi r18,lo8(51)
	mov r19,r15
	andi r19,lo8(51)
	mov r20,r16
	andi r20,lo8(51)
	mov r21,r17
	andi r21,lo8(51)
	mov r22,r27
	andi r22,lo8(51)
	mov r23,r26
	andi r23,lo8(51)
	mov r24,r31
	andi r24,lo8(51)
	mov r13,r24
	mov r25,r30
	andi r25,lo8(51)
	ldd r24,Y+9
	mov r30,r24
	andi r30,lo8(51)
	mov r14,r30
	ldd r24,Y+10
	mov r30,r24
	andi r30,lo8(51)
	mov r15,r30
	ldd r24,Y+11
	mov r16,r24
	andi r16,lo8(51)
	ldd r24,Y+12
	mov r17,r24
	andi r17,lo8(51)
	ldd r24,Y+13
	mov r27,r24
	andi r27,lo8(51)
	ldd r24,Y+14
	mov r26,r24
	andi r26,lo8(51)
	ldd r24,Y+15
	mov r31,r24
	andi r31,lo8(51)
	ldd r24,Y+16
	mov r30,r24
	andi r30,lo8(51)
	mov r24,r13
	mov r10,r14
	mov r11,r15
	mov r12,r16
	mov r13,r17
	mov r14,r27
	mov r15,r26
	mov r16,r31
	mov r17,r30
	rcall __adddi3
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	ldi r16,lo8(4)
	rcall __lshrdi3
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldd r10,Y+17
	ldd r11,Y+18
	ldd r12,Y+19
	ldd r13,Y+20
	ldd r14,Y+21
	ldd r15,Y+22
	ldd r16,Y+23
	ldd r17,Y+24
	rcall __adddi3
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r24,r14
	andi r24,lo8(15)
	std Y+25,r24
	mov r24,r15
	andi r24,lo8(15)
	std Y+26,r24
	mov r24,r16
	andi r24,lo8(15)
	std Y+27,r24
	mov r24,r17
	andi r24,lo8(15)
	std Y+28,r24
	mov r24,r27
	andi r24,lo8(15)
	std Y+29,r24
	mov r24,r26
	andi r24,lo8(15)
	std Y+30,r24
	mov r24,r31
	andi r24,lo8(15)
	std Y+31,r24
	mov r24,r30
	andi r24,lo8(15)
	std Y+32,r24
	ldd r12,Y+25
	ldd r13,Y+26
	ldd r14,Y+27
	ldd r15,Y+28
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	ldd r22,Y+29
	ldd r23,Y+30
	ldd r24,Y+31
	ldd r25,Y+32
	ldi r16,lo8(32)
	rcall __lshrdi3
	mov r23,r18
	mov r22,r19
	mov r25,r20
	mov r24,r21
	mov r19,r23
	mov r18,r22
	mov r4,r19
	mov r5,r18
	mov r6,r25
	mov r7,r24
	mov r27,r15
	mov r26,r14
	mov r25,r13
	mov r24,r12
	add r24,r4
	adc r25,r5
	adc r26,r6
	adc r27,r7
	std Y+33,r24
	std Y+34,r25
	std Y+35,r26
	std Y+36,r27
	ldd r24,Y+33
	ldd r25,Y+34
	ldd r26,Y+35
	ldd r27,Y+36
	mov r25,r27
	mov r24,r26
	clr r26
	clr r27
	ldd r20,Y+33
	ldd r21,Y+34
	ldd r22,Y+35
	ldd r23,Y+36
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+37,r24
	std Y+38,r25
	std Y+39,r26
	std Y+40,r27
	ldd r24,Y+37
	ldd r25,Y+38
	ldd r26,Y+39
	ldd r27,Y+40
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	ldd r18,Y+37
	ldd r19,Y+38
	add r24,r18
	adc r25,r19
	andi r24,127
	clr r25
/* epilogue start */
	adiw r28,48
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	ldd r24,Y+21
	ldd r25,Y+22
	ldd r26,Y+23
	ldd r27,Y+24
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
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
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
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	andi r24,51
	andi r25,51
	andi r26,51
	andi r27,51
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
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	andi r24,15
	andi r25,15
	andi r26,15
	andi r27,15
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	mov r25,r27
	mov r24,r26
	clr r26
	clr r27
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+17,r24
	std Y+18,r25
	std Y+19,r26
	std Y+20,r27
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	ldd r18,Y+17
	ldd r19,Y+18
	add r24,r18
	adc r25,r19
	andi r24,63
	clr r25
/* epilogue start */
	adiw r28,24
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
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+12
	bst r24,7
	clr r24
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
.L848:
	ldd r24,Y+11
	ldd r25,Y+12
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L844
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
.L844:
	ldd r25,Y+11
	ldd r24,Y+12
	mov r16,r25
	mov r17,r24
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brge .L845
	subi r16,-1
	sbci r17,-1
.L845:
	mov r24,r16
	mov r25,r17
	asr r25
	ror r24
	std Y+12,r25
	std Y+11,r24
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	breq .L853
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
	rjmp .L848
.L853:
	nop
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L849
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	rjmp .L851
.L849:
	ldd r19,Y+1
	ldd r18,Y+2
	ldd r25,Y+3
	ldd r24,Y+4
.L851:
	nop
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	adiw r28,12
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
	.size	__powidf2, .-__powidf2
.global	__powisf2
	.type	__powisf2, @function
__powisf2:
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
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+12,r21
	std Y+11,r20
	ldd r24,Y+12
	bst r24,7
	clr r24
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
.L859:
	ldd r24,Y+11
	ldd r25,Y+12
	andi r24,1
	clr r25
	sbiw r24,0
	breq .L855
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
.L855:
	ldd r25,Y+11
	ldd r24,Y+12
	mov r16,r25
	mov r17,r24
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brge .L856
	subi r16,-1
	sbci r17,-1
.L856:
	mov r24,r16
	mov r25,r17
	asr r25
	ror r24
	std Y+12,r25
	std Y+11,r24
	ldd r24,Y+11
	ldd r25,Y+12
	sbiw r24,0
	breq .L864
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
	rjmp .L859
.L864:
	nop
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,0
	breq .L860
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r19,r22
	mov r18,r23
	mov r20,r24
	mov r24,r25
	mov r25,r20
	rjmp .L862
.L860:
	ldd r19,Y+1
	ldd r18,Y+2
	ldd r25,Y+3
	ldd r24,Y+4
.L862:
	nop
	mov r12,r19
	mov r13,r18
	mov r14,r25
	mov r15,r24
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	adiw r28,12
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
	brsh .L866
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L871
.L866:
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
	brsh .L868
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L871
.L868:
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
	brsh .L869
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L871
.L869:
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
	brsh .L870
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L871
.L870:
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L871:
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
/* stack size = 26 */
.L__stack_usage = 26
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
	ldd r14,Y+9
	ldd r15,Y+10
	ldd r16,Y+11
	ldd r17,Y+12
	ldd r27,Y+13
	ldd r26,Y+14
	ldd r31,Y+15
	ldd r30,Y+16
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	mov r10,r14
	mov r11,r15
	mov r12,r16
	mov r13,r17
	mov r14,r27
	mov r15,r26
	mov r16,r31
	mov r17,r30
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
