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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r22
	mov r31,r23
	mov r26,r20
	mov r27,r21
	cp r22,r24
	cpc r23,r25
	brsh .L2
	add r30,r20
	adc r31,r21
	add r26,r24
	adc r27,r25
	mov r20,r24
	mov r21,r25
	rjmp .L3
.L4:
	ld r18,-Z
	st -X,r18
.L3:
	cp r26,r20
	cpc r27,r21
	brne .L4
	rjmp .L5
.L2:
	cp r24,r22
	cpc r25,r23
	breq .L5
	mov r18,r24
	mov r19,r25
	mov r22,r20
	mov r23,r21
	add r22,r30
	adc r23,r31
	rjmp .L6
.L7:
	adiw r30,1
	mov r20,r30
	mov r21,r31
	subi r20,1
	sbc r21,__zero_reg__
	mov r26,r20
	mov r27,r21
	ld r20,X
	mov r26,r18
	mov r27,r19
	st X+,r20
	mov r18,r26
	mov r19,r27
.L6:
	cp r30,r22
	cpc r31,r23
	brne .L7
.L5:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	memmove, .-memmove
.global	memccpy
	.type	memccpy, @function
memccpy:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	ldi r21,0
	mov r14,r22
	mov r15,r23
	mov r30,r24
	mov r31,r25
	rjmp .L9
.L11:
	subi r18,1
	sbc r19,__zero_reg__
.L9:
	mov r16,r30
	mov r17,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L10
	mov r26,r14
	mov r27,r15
	ld r25,X+
	mov r14,r26
	mov r15,r27
	st Z+,r25
	mov r22,r30
	mov r23,r31
	subi r22,1
	sbc r23,__zero_reg__
	mov r26,r22
	mov r27,r23
	ld r25,X
	cp r25,r20
	cpc __zero_reg__,r21
	brne .L11
.L10:
	mov r24,r16
	mov r25,r17
	adiw r24,1
	or r18,r19
	brne .L12
.L13:
	ldi r24,0
	ldi r25,0
.L12:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	memccpy, .-memccpy
.global	memchr
	.type	memchr, @function
memchr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r23,0
	mov r30,r24
	mov r31,r25
	rjmp .L15
.L17:
	subi r20,1
	sbc r21,__zero_reg__
.L15:
	mov r18,r30
	mov r19,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L16
	ld r25,Z+
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L17
.L16:
	mov r24,r18
	mov r25,r19
	or r20,r21
	brne .L18
.L19:
	ldi r24,0
	ldi r25,0
.L18:
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	rjmp .L21
.L23:
	subi r20,1
	sbc r21,__zero_reg__
.L21:
	mov r18,r30
	mov r19,r31
	mov r22,r26
	mov r23,r27
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L22
	ld r25,X+
	ld r24,Z+
	cp r25,r24
	breq .L23
.L22:
	ldi r24,0
	ldi r25,0
	or r20,r21
	breq .L24
	mov r30,r22
	mov r31,r23
	ld r24,Z
	mov r30,r18
	mov r31,r19
	ld r25,Z
	sub r24,r25
	sbc r25,r25
	rjmp .L24
.L24:
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r30,r24
	mov r31,r25
	add r20,r22
	adc r21,r23
	rjmp .L27
.L28:
	subi r22,-1
	sbci r23,-1
	mov r26,r22
	mov r27,r23
	ld r25,-X
	st Z+,r25
.L27:
	cp r22,r20
	cpc r23,r21
	brne .L28
	mov r24,r18
	mov r25,r19
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r26,r24
	mov r27,r25
	ldi r23,0
	mov r30,r24
	mov r31,r25
	add r30,r20
	adc r31,r21
	mov r20,r24
	mov r21,r25
	rjmp .L30
.L32:
	ld r25,-Z
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L30
	mov r24,r26
	mov r25,r27
	add r24,r18
	adc r25,r19
	rjmp .L31
.L30:
	mov r18,r26
	mov r19,r27
	com r18
	com r19
	add r18,r30
	adc r19,r31
	cp r30,r20
	cpc r31,r21
	brne .L32
	ldi r24,0
	ldi r25,0
.L31:
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	add r20,r24
	adc r21,r25
	mov r30,r24
	mov r31,r25
	rjmp .L34
.L35:
	st Z+,r22
.L34:
	cp r30,r20
	cpc r31,r21
	brne .L35
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	memset, .-memset
.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
.L37:
	mov r18,r30
	mov r19,r31
	ld r25,X+
	st Z+,r25
	cpse r25,__zero_reg__
	rjmp .L37
	mov r24,r18
	mov r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	stpcpy, .-stpcpy
.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r23,0
	mov r30,r24
	mov r31,r25
.L40:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	cp r25, __zero_reg__
	breq .L39
	mov r26,r30
	mov r27,r31
	ld r25,-X
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L40
.L39:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strchrnul, .-strchrnul
.global	strchr
	.type	strchr, @function
strchr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
.L43:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	mov __tmp_reg__,r25
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r25,r22
	cpc r0,r23
	breq .L44
	mov r26,r30
	mov r27,r31
	ld r24,-X
	cpse r24,__zero_reg__
	rjmp .L43
	ldi r24,0
	ldi r25,0
	rjmp .L42
.L44:
	mov r24,r18
	mov r25,r19
.L42:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strchr, .-strchr
.global	strcmp
	.type	strcmp, @function
strcmp:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
.L47:
	mov r18,r22
	mov r19,r23
	mov r20,r30
	mov r21,r31
	ld r25,Z+
	mov r26,r22
	mov r27,r23
	ld r24,X+
	mov r22,r26
	mov r23,r27
	cpse r25,r24
	rjmp .L46
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	mov r26,r24
	mov r27,r25
	ld r24,X
	cpse r24,__zero_reg__
	rjmp .L47
.L46:
	mov r30,r20
	mov r31,r21
	ld r24,Z
	mov r26,r18
	mov r27,r19
	ld r25,X
	sub r24,r25
	sbc r25,r25
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strcmp, .-strcmp
.global	strlen
	.type	strlen, @function
strlen:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r20,r24
	mov r21,r25
	mov r30,r24
	mov r31,r25
.L49:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	cpse r25,__zero_reg__
	rjmp .L49
	mov r24,r18
	mov r25,r19
	sub r24,r20
	sbc r25,r21
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strlen, .-strlen
.global	strncmp
	.type	strncmp, @function
strncmp:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L54
	mov r30,r24
	mov r31,r25
	mov r14,r22
	mov r15,r23
	add r20,r24
	adc r21,r25
.L53:
	mov r22,r14
	mov r23,r15
	mov r16,r30
	mov r17,r31
	ld r25,Z+
	cp r25, __zero_reg__
	breq .L52
	mov r26,r14
	mov r27,r15
	ld r25,X
	cp r25, __zero_reg__
	breq .L52
	cp r30,r20
	cpc r31,r21
	breq .L52
	mov r18,r30
	mov r19,r31
	subi r18,1
	sbc r19,__zero_reg__
	mov r26,r18
	mov r27,r19
	ld r18,X
	mov r26,r14
	mov r27,r15
	ld r25,X+
	mov r14,r26
	mov r15,r27
	cp r18,r25
	breq .L53
.L52:
	mov r30,r16
	mov r31,r17
	ld r24,Z
	mov r26,r22
	mov r27,r23
	ld r25,X
	sub r24,r25
	sbc r25,r25
	rjmp .L51
.L54:
	ldi r24,0
	ldi r25,0
.L51:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	strncmp, .-strncmp
.global	swab
	.type	swab, @function
swab:
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
	mov r16,r24
	mov r17,r25
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	rjmp .L56
.L57:
	ldd r25,Z+1
	st X,r25
	ld r25,Z
	adiw r26,1
	st X,r25
	sbiw r26,1
	adiw r26,2
	adiw r30,2
.L56:
	mov r18,r16
	mov r19,r17
	add r18,r20
	adc r19,r21
	sub r18,r30
	sbc r19,r31
	cpi r18,2
	cpc r19,__zero_reg__
	brge .L57
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	swab, .-swab
.global	isalpha
	.type	isalpha, @function
isalpha:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ori r24,32
	mov r18,r24
	mov r19,r25
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L59
	ldi r24,0
.L59:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isalpha, .-isalpha
.global	isascii
	.type	isascii, @function
isascii:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	ldi r24,lo8(1)
	cpi r18,-128
	cpc r19,__zero_reg__
	brlo .L61
	ldi r24,0
.L61:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isascii, .-isascii
.global	isblank
	.type	isblank, @function
isblank:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cpi r24,32
	cpc r25,__zero_reg__
	breq .L64
	sbiw r24,9
	brne .L65
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L63
.L64:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L63
.L65:
	ldi r24,0
	ldi r25,0
.L63:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isblank, .-isblank
.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cpi r24,32
	cpc r25,__zero_reg__
	brlo .L68
	cpi r24,127
	cpc r25,__zero_reg__
	brne .L69
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L67
.L68:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L67
.L69:
	ldi r24,0
	ldi r25,0
.L67:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	iscntrl, .-iscntrl
.global	isdigit
	.type	isdigit, @function
isdigit:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	subi r18,48
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L71
	ldi r24,0
.L71:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isdigit, .-isdigit
.global	isgraph
	.type	isgraph, @function
isgraph:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	subi r18,33
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,94
	cpc r19,__zero_reg__
	brlo .L73
	ldi r24,0
.L73:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isgraph, .-isgraph
.global	islower
	.type	islower, @function
islower:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L75
	ldi r24,0
.L75:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	islower, .-islower
.global	isprint
	.type	isprint, @function
isprint:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	subi r18,32
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,95
	cpc r19,__zero_reg__
	brlo .L77
	ldi r24,0
.L77:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isprint, .-isprint
.global	isspace
	.type	isspace, @function
isspace:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cpi r24,32
	cpc r25,__zero_reg__
	breq .L80
	sbiw r24,9
	sbiw r24,5
	brsh .L81
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L79
.L80:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L79
.L81:
	ldi r24,0
	ldi r25,0
.L79:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isspace, .-isspace
.global	isupper
	.type	isupper, @function
isupper:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	subi r18,65
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L83
	ldi r24,0
.L83:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	isupper, .-isupper
.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cpi r24,32
	cpc r25,__zero_reg__
	brlo .L86
	mov r18,r24
	mov r19,r25
	subi r18,127
	sbc r19,__zero_reg__
	cpi r18,33
	cpc r19,__zero_reg__
	brlo .L87
	subi r18,-87
	sbci r19,31
	cpi r18,2
	cpc r19,__zero_reg__
	brlo .L88
	adiw r24,7
	sbiw r24,3
	brsh .L89
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L85
.L86:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L85
.L87:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L85
.L88:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L85
.L89:
	ldi r24,0
	ldi r25,0
.L85:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	iswcntrl, .-iswcntrl
.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	subi r18,48
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L91
	ldi r24,0
.L91:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	iswdigit, .-iswdigit
.global	iswprint
	.type	iswprint, @function
iswprint:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cpi r24,-1
	cpc r25,__zero_reg__
	brsh .L93
	adiw r24,1
	andi r24,127
	clr r25
	ldi r18,lo8(1)
	sbiw r24,33
	brsh .L94
	ldi r18,0
.L94:
	mov r24,r18
	ldi r25,0
	rjmp .L95
.L93:
	cpi r24,40
	ldi r18,32
	cpc r25,r18
	brlo .L96
	mov r18,r24
	mov r19,r25
	subi r18,42
	sbci r19,32
	cpi r18,-42
	ldi r20,-73
	cpc r19,r20
	brlo .L97
	subi r18,-42
	sbci r19,-65
	cpi r18,-7
	sbci r19,31
	brlo .L98
	andi r24,254
	adiw r24,2
	breq .L99
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L95
.L96:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L95
.L97:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L95
.L98:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L95
.L99:
	ldi r24,0
	ldi r25,0
.L95:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	iswprint, .-iswprint
.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	subi r18,48
	sbc r19,__zero_reg__
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L102
	ori r24,32
	subi r24,97
	sbc r25,__zero_reg__
	sbiw r24,6
	brsh .L103
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L101
.L102:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L101
.L103:
	ldi r24,0
	ldi r25,0
.L101:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	iswxdigit, .-iswxdigit
.global	toascii
	.type	toascii, @function
toascii:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	andi r24,127
	clr r25
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	toascii, .-toascii
.global	fdim
	.type	fdim, @function
fdim:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L108
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L109
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L112
	brlt .L112
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __subsf3
	rjmp .L106
.L108:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L106
.L109:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L106
.L112:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L106:
/* epilogue start */
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
	.size	fdim, .-fdim
.global	fdimf
	.type	fdimf, @function
fdimf:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L116
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L117
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L120
	brlt .L120
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __subsf3
	rjmp .L114
.L116:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L114
.L117:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L114
.L120:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L114:
/* epilogue start */
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
	.size	fdimf, .-fdimf
.global	fmax
	.type	fmax, @function
fmax:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L125
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L126
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L123
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L127
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L122
.L123:
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L130
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L122
.L125:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L122
.L126:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L122
.L127:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L122
.L130:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L122:
/* epilogue start */
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
	.size	fmax, .-fmax
.global	fmaxf
	.type	fmaxf, @function
fmaxf:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L135
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L136
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L133
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L137
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L132
.L133:
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L140
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L132
.L135:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L132
.L136:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L132
.L137:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L132
.L140:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L132:
/* epilogue start */
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
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L145
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L146
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	ldd r18,Y+8
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L143
	ldd r18,Y+8
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L147
	mov r8,r10
	mov r9,r11
	mov r10,r12
	mov r11,r13
	mov r12,r14
	mov r13,r15
	mov r14,r16
	mov r15,r17
	rjmp .L142
.L143:
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
	breq .L150
	mov r8,r10
	mov r9,r11
	mov r10,r12
	mov r11,r13
	mov r12,r14
	mov r13,r15
	mov r14,r16
	mov r15,r17
	rjmp .L142
.L145:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	rjmp .L142
.L146:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L142
.L147:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L142
.L150:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
.L142:
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L155
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L156
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r11
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L153
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L157
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L152
.L153:
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L160
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L152
.L155:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L152
.L156:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L152
.L157:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L152
.L160:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L152:
/* epilogue start */
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
	.size	fmin, .-fmin
.global	fminf
	.type	fminf, @function
fminf:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L165
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L166
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r11
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L163
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L167
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L162
.L163:
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L170
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L162
.L165:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L162
.L166:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L162
.L167:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L162
.L170:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L162:
/* epilogue start */
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
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L175
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L176
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	ldd r18,Y+8
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L173
	ldd r18,Y+8
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L177
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	mov r15,r18
	rjmp .L172
.L173:
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
	breq .L180
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L172
.L175:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	rjmp .L172
.L176:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L172
.L177:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	rjmp .L172
.L180:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
.L172:
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
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
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	ldi r16,lo8(s.0)
	ldi r17,hi8(s.0)
	rjmp .L182
.L183:
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	andi r20,63
	clr r21
	clr r22
	clr r23
	subi r20,lo8(-(digits))
	sbci r21,hi8(-(digits))
	mov r30,r20
	mov r31,r21
	ld r18,Z
	mov r30,r16
	mov r31,r17
	st Z+,r18
	mov r16,r30
	mov r17,r31
	set
	bld __zero_reg__,6-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
.L182:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L183
	mov r30,r16
	mov r31,r17
	st Z,__zero_reg__
	ldi r24,lo8(s.0)
	ldi r25,hi8(s.0)
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
	mov r17,r25
	subi r16,1
	sbc r17,__zero_reg__
	sts seed,r16
	sts seed+1,r17
	sts seed+2,__zero_reg__
	sts seed+3,__zero_reg__
	sts seed+4,__zero_reg__
	sts seed+5,__zero_reg__
	sts seed+6,__zero_reg__
	sts seed+7,__zero_reg__
/* epilogue start */
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
	ldi r26,lo8(1)
	rcall __adddi3_s8
	sts seed,r18
	sts seed+1,r19
	sts seed+2,r20
	sts seed+3,r21
	sts seed+4,r22
	sts seed+5,r23
	sts seed+6,r24
	sts seed+7,r25
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldi r16,lo8(33)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	sbiw r26,0
	brne .L187
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L186
.L187:
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+1,r25
	st Z,r24
	std Z+3,r23
	std Z+2,r22
	st X+,r30
	st X,r31
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L186
	mov r26,r24
	mov r27,r25
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L186:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	insque, .-insque
.global	remque
	.type	remque, @function
remque:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L190
	mov r26,r24
	mov r27,r25
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
.L190:
	ldd r24,Z+2
	ldd r25,Z+3
	sbiw r24,0
	breq .L189
	mov r26,r24
	mov r27,r25
	ld r24,Z
	ldd r25,Z+1
	st X+,r24
	st X,r25
.L189:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	remque, .-remque
.global	lsearch
	.type	lsearch, @function
lsearch:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	mov r10,r24
	mov r11,r25
	mov r4,r22
	mov r5,r23
	mov r2,r20
	mov r3,r21
	mov r12,r18
	mov r13,r19
	mov r6,r16
	mov r7,r17
	mov r30,r20
	mov r31,r21
	ld r8,Z
	ldd r9,Z+1
	mov r14,r22
	mov r15,r23
	ldi r16,0
	ldi r17,0
	rjmp .L193
.L196:
	mov r22,r14
	mov r23,r15
	mov r24,r10
	mov r25,r11
	mov r30,r6
	mov r31,r7
	icall
	add r14,r12
	adc r15,r13
	or r24,r25
	brne .L194
	mov r24,r16
	mov r25,r17
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	add r24,r4
	adc r25,r5
	rjmp .L195
.L194:
	subi r16,-1
	sbci r17,-1
.L193:
	cp r16,r8
	cpc r17,r9
	brne .L196
	mov r24,r8
	mov r25,r9
	adiw r24,1
	mov r30,r2
	mov r31,r3
	std Z+1,r25
	st Z,r24
	mov r24,r12
	mov r25,r13
	mov r22,r8
	mov r23,r9
	rcall __mulhi3
	mov r20,r12
	mov r21,r13
	mov r22,r10
	mov r23,r11
	add r24,r4
	adc r25,r5
	rcall memcpy
.L195:
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	lsearch, .-lsearch
.global	lfind
	.type	lfind, @function
lfind:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r10,r24
	mov r11,r25
	mov r4,r22
	mov r5,r23
	mov r12,r18
	mov r13,r19
	mov r6,r16
	mov r7,r17
	mov r30,r20
	mov r31,r21
	ld r8,Z
	ldd r9,Z+1
	mov r14,r22
	mov r15,r23
	ldi r16,0
	ldi r17,0
	rjmp .L198
.L201:
	mov r22,r14
	mov r23,r15
	mov r24,r10
	mov r25,r11
	mov r30,r6
	mov r31,r7
	icall
	add r14,r12
	adc r15,r13
	or r24,r25
	brne .L199
	mov r24,r16
	mov r25,r17
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	add r24,r4
	adc r25,r5
	rjmp .L200
.L199:
	subi r16,-1
	sbci r17,-1
.L198:
	cp r16,r8
	cpc r17,r9
	brne .L201
	ldi r24,0
	ldi r25,0
.L200:
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	lfind, .-lfind
.global	abs
	.type	abs, @function
abs:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	tst r25
	brge .L203
	neg r25
	neg r24
	sbc r25,__zero_reg__
.L203:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	abs, .-abs
.global	atoi
	.type	atoi, @function
atoi:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r16,r24
	mov r17,r25
.L205:
	mov r14,r16
	mov r15,r17
	mov r30,r16
	mov r31,r17
	ld r24,Z+
	mov r16,r30
	mov r17,r31
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L205
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L211
	ldi r20,lo8(1)
	ldi r21,0
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L206
	rjmp .L212
.L211:
	ldi r20,0
	ldi r21,0
.L206:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
	rjmp .L207
.L212:
	ldi r20,0
	ldi r21,0
.L207:
	mov r30,r14
	mov r31,r15
	ldi r22,0
	ldi r23,0
	rjmp .L208
.L209:
	mov r24,r22
	mov r25,r23
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r22
	adc r25,r23
	lsl r24
	rol r25
	mov r26,r30
	mov r27,r31
	ld r18,-X
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	subi r18,48
	sbc r19,__zero_reg__
	mov r22,r24
	mov r23,r25
	sub r22,r18
	sbc r23,r19
.L208:
	ld r18,Z+
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	subi r18,48
	sbc r19,__zero_reg__
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L209
	mov r24,r22
	mov r25,r23
	or r20,r21
	brne .L210
	clr r24
	clr r25
	sub r24,r22
	sbc r25,r23
	rjmp .L210
.L210:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	atoi, .-atoi
.global	atol
	.type	atol, @function
atol:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r16,r24
	mov r17,r25
.L215:
	mov r14,r16
	mov r15,r17
	mov r30,r16
	mov r31,r17
	ld r24,Z+
	mov r16,r30
	mov r17,r31
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L215
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L221
	cpi r18,45
	cpc r19,__zero_reg__
	brne .L222
	ldi r18,lo8(1)
	ldi r19,0
	rjmp .L216
.L221:
	ldi r18,0
	ldi r19,0
.L216:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
	rjmp .L217
.L222:
	ldi r18,0
	ldi r19,0
.L217:
	mov r30,r14
	mov r31,r15
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L218
.L219:
	mov r23,r15
	mov r22,r14
	mov r21,r13
	mov r20,r12
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
	lsl r20
	rol r21
	rol r22
	rol r23
	mov r26,r30
	mov r27,r31
	ld r24,-X
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
.L218:
	ld r24,Z+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .L219
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	or r18,r19
	brne .L220
	clr r22
	clr r23
	clr r24
	clr r25
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	rjmp .L220
.L220:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 38 */
.L__stack_usage = 38
	mov r12,r24
	mov r13,r25
.L225:
	mov r14,r12
	mov r15,r13
	mov r30,r12
	mov r31,r13
	ld r24,Z+
	mov r12,r30
	mov r13,r31
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L225
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L231
	clr r6
	inc r6
	mov r7,__zero_reg__
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L226
	rjmp .L232
.L231:
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.L226:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
	rjmp .L227
.L232:
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.L227:
	mov r26,r14
	mov r27,r15
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	rjmp .L228
.L229:
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
	ldi r16,lo8(2)
	rcall __ashldi3
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	rcall __adddi3
	ldi r16,lo8(1)
	rcall __ashldi3
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	mov r30,r26
	mov r31,r27
	sbiw r30,1
	ld r30,Z
	mov __tmp_reg__,r30
	lsl r0
	sbc r31,r31
	sbiw r30,48
	std Y+18,r31
	std Y+17,r30
	lsl r31
	sbc r30,r30
	mov r31,r30
	std Y+19,r30
	std Y+20,r30
	std Y+21,r30
	std Y+22,r30
	std Y+23,r30
	std Y+24,r30
	ldd r10,Y+17
	ldd r11,Y+18
	mov r12,r30
	mov r13,r30
	mov r14,r30
	mov r15,r30
	mov r16,r30
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
.L228:
	ld r24,X+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brsh .+2
	rjmp .L229
	or r6,r7
	brne .L233
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
	rjmp .L230
.L233:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
.L230:
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r8,r24
	mov r9,r25
	mov r10,r22
	mov r11,r23
	mov r14,r20
	mov r15,r21
	mov r12,r18
	mov r13,r19
	mov r6,r16
	mov r7,r17
	rjmp .L235
.L239:
	mov r24,r14
	mov r25,r15
	lsr r25
	ror r24
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	mov r16,r10
	mov r17,r11
	add r16,r24
	adc r17,r25
	mov r22,r16
	mov r23,r17
	mov r24,r8
	mov r25,r9
	mov r30,r6
	mov r31,r7
	icall
	tst r25
	brge .L236
	lsr r15
	ror r14
	rjmp .L235
.L236:
	sbiw r24,0
	breq .L240
	brlt .L240
	mov r10,r16
	mov r11,r17
	add r10,r12
	adc r11,r13
	mov r24,r14
	mov r25,r15
	lsr r25
	ror r24
	ldi r31,1
	sub r14,r31
	sbc r15,__zero_reg__
	sub r14,r24
	sbc r15,r25
.L235:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L239
	ldi r24,0
	ldi r25,0
	rjmp .L238
.L240:
	mov r24,r16
	mov r25,r17
.L238:
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
	pop r9
	pop r8
	pop r7
	pop r6
	ret
	.size	bsearch, .-bsearch
.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r10,r24
	mov r11,r25
	mov r12,r18
	mov r13,r19
	mov r6,r16
	mov r7,r17
	mov r4,r14
	mov r5,r15
	mov r16,r20
	mov r17,r21
	mov r8,r22
	mov r9,r23
	rjmp .L242
.L245:
	mov r24,r16
	mov r25,r17
	asr r25
	ror r24
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	mov r14,r8
	mov r15,r9
	add r14,r24
	adc r15,r25
	mov r20,r4
	mov r21,r5
	mov r22,r14
	mov r23,r15
	mov r24,r10
	mov r25,r11
	mov r30,r6
	mov r31,r7
	icall
	sbiw r24,0
	breq .L246
	brlt .L244
	mov r8,r14
	mov r9,r15
	add r8,r12
	adc r9,r13
	subi r16,1
	sbc r17,__zero_reg__
.L244:
	asr r17
	ror r16
.L242:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L245
	ldi r24,0
	ldi r25,0
	rjmp .L243
.L246:
	mov r24,r14
	mov r25,r15
.L243:
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	bsearch_r, .-bsearch_r
.global	div
	.type	div, @function
div:
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
	rcall __divmodhi4
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
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
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L249
	rcall __negdi2
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L249:
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
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
	.size	imaxabs, .-imaxabs
.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
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
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 46 */
.L__stack_usage = 46
	mov r6,r24
	mov r7,r25
	std Y+1,r16
	std Y+2,r17
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
	mov r10,r8
	mov r11,r9
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
	rcall __divdi3
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	std Y+29,r22
	std Y+30,r23
	ldd r24,Y+23
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
	rcall __moddi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r14,r24
	ldd r24,Y+25
	mov r30,r6
	mov r31,r7
	st Z,r24
	ldd r24,Y+26
	std Z+1,r24
	ldd r24,Y+27
	std Z+2,r24
	ldd r24,Y+28
	std Z+3,r24
	ldd r24,Y+29
	std Z+4,r24
	ldd r24,Y+30
	std Z+5,r24
	ldd r24,Y+31
	std Z+6,r24
	ldd r24,Y+24
	std Z+7,r24
	std Z+8,r8
	std Z+9,r9
	std Z+10,r10
	std Z+11,r11
	std Z+12,r12
	std Z+13,r23
	std Z+14,r14
	std Z+15,r25
	mov r24,r6
	mov r25,r7
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
	pop r7
	pop r6
	ret
	.size	imaxdiv, .-imaxdiv
.global	labs
	.type	labs, @function
labs:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	tst r25
	brge .L252
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.L252:
/* epilogue start */
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
	rcall __divmodsi4
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
/* epilogue start */
	adiw r28,16
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
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L255
	rcall __negdi2
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L255:
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
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
	.size	llabs, .-llabs
.global	lldiv
	.type	lldiv, @function
lldiv:
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
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 46 */
.L__stack_usage = 46
	mov r6,r24
	mov r7,r25
	std Y+1,r16
	std Y+2,r17
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
	mov r10,r8
	mov r11,r9
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
	rcall __divdi3
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	std Y+29,r22
	std Y+30,r23
	ldd r24,Y+23
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
	rcall __moddi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r14,r24
	ldd r24,Y+25
	mov r30,r6
	mov r31,r7
	st Z,r24
	ldd r24,Y+26
	std Z+1,r24
	ldd r24,Y+27
	std Z+2,r24
	ldd r24,Y+28
	std Z+3,r24
	ldd r24,Y+29
	std Z+4,r24
	ldd r24,Y+30
	std Z+5,r24
	ldd r24,Y+31
	std Z+6,r24
	ldd r24,Y+24
	std Z+7,r24
	std Z+8,r8
	std Z+9,r9
	std Z+10,r10
	std Z+11,r11
	std Z+12,r12
	std Z+13,r23
	std Z+14,r14
	std Z+15,r25
	mov r24,r6
	mov r25,r7
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
	pop r7
	pop r6
	ret
	.size	lldiv, .-lldiv
.global	wcschr
	.type	wcschr, @function
wcschr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
.L259:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	ld r19,Z+
	or r18,r19
	breq .L258
	mov r26,r30
	mov r27,r31
	ld r19,-X
	ld r18,-X
	cp r22,r18
	cpc r23,r19
	brne .L259
.L258:
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	or r18,r19
	brne .L260
	ldi r24,0
	ldi r25,0
.L260:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	wcschr, .-wcschr
.global	wcscmp
	.type	wcscmp, @function
wcscmp:
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
	mov r30,r24
	mov r31,r25
	mov r16,r22
	mov r17,r23
.L264:
	mov r20,r16
	mov r21,r17
	mov r22,r30
	mov r23,r31
	ld r18,Z+
	ld r19,Z+
	mov r26,r16
	mov r27,r17
	ld r24,X+
	ld r25,X+
	mov r16,r26
	mov r17,r27
	cp r18,r24
	cpc r19,r25
	brne .L263
	mov r24,r30
	mov r25,r31
	sbiw r24,2
	mov r26,r24
	mov r27,r25
	ld r24,X+
	ld r25,X
	or r24,r25
	breq .L263
	mov r24,r16
	mov r25,r17
	sbiw r24,2
	mov r26,r24
	mov r27,r25
	ld r24,X+
	ld r25,X
	or r24,r25
	brne .L264
.L263:
	mov r30,r22
	mov r31,r23
	ld r18,Z
	ldd r19,Z+1
	mov r26,r20
	mov r27,r21
	ld r24,X+
	ld r25,X
	cp r18,r24
	cpc r19,r25
	brlt .L267
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L266
	ldi r24,0
.L266:
	ldi r25,0
	rjmp .L265
.L267:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L265:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	wcscmp, .-wcscmp
.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
.L269:
	subi r22,-2
	sbci r23,-1
	mov r26,r22
	mov r27,r23
	ld r19,-X
	ld r18,-X
	st Z+,r18
	st Z+,r19
	mov r26,r30
	mov r27,r31
	ld r19,-X
	ld r18,-X
	or r18,r19
	brne .L269
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	wcscpy, .-wcscpy
.global	wcslen
	.type	wcslen, @function
wcslen:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
.L271:
	mov r20,r30
	mov r21,r31
	ld r18,Z+
	ld r19,Z+
	or r18,r19
	brne .L271
	mov r18,r20
	mov r19,r21
	sub r18,r24
	sbc r19,r25
	mov r24,r18
	mov r25,r19
	asr r25
	ror r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	wcslen, .-wcslen
.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
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
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	rjmp .L273
.L275:
	subi r20,1
	sbc r21,__zero_reg__
.L273:
	mov r22,r26
	mov r23,r27
	mov r16,r30
	mov r17,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L274
	ld r18,Z
	ldd r19,Z+1
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	brne .L274
	ld r24,Z+
	ld r25,Z+
	or r24,r25
	breq .L274
	ld r24,X+
	ld r25,X+
	or r24,r25
	brne .L275
.L274:
	ldi r24,0
	ldi r25,0
	or r20,r21
	breq .L276
	mov r30,r16
	mov r31,r17
	ld r18,Z
	ldd r19,Z+1
	mov r30,r22
	mov r31,r23
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brlt .L279
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L277
	ldi r24,0
.L277:
	ldi r25,0
	rjmp .L276
.L279:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L276:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	wcsncmp, .-wcsncmp
.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	rjmp .L281
.L283:
	subi r20,1
	sbc r21,__zero_reg__
.L281:
	mov r24,r30
	mov r25,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L282
	ld r18,Z+
	ld r19,Z+
	cp r22,r18
	cpc r23,r19
	brne .L283
.L282:
	or r20,r21
	brne .L284
	ldi r24,0
	ldi r25,0
.L284:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	wmemchr, .-wmemchr
.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
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
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	rjmp .L287
.L289:
	subi r20,1
	sbc r21,__zero_reg__
.L287:
	mov r22,r30
	mov r23,r31
	mov r16,r26
	mov r17,r27
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L288
	ld r18,X+
	ld r19,X+
	ld r24,Z+
	ld r25,Z+
	cp r18,r24
	cpc r19,r25
	breq .L289
.L288:
	ldi r24,0
	ldi r25,0
	or r20,r21
	breq .L290
	mov r30,r16
	mov r31,r17
	ld r18,Z
	ldd r19,Z+1
	mov r30,r22
	mov r31,r23
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brlt .L293
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L291
	ldi r24,0
.L291:
	ldi r25,0
	rjmp .L290
.L293:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L290:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	wmemcmp, .-wmemcmp
.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	rjmp .L295
.L296:
	subi r22,-2
	sbci r23,-1
	mov r26,r22
	mov r27,r23
	ld r19,-X
	ld r18,-X
	st Z+,r18
	st Z+,r19
.L295:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L296
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cp r24,r22
	cpc r25,r23
	breq .L298
	mov r30,r20
	mov r31,r21
	lsl r30
	rol r31
	mov r18,r24
	mov r19,r25
	sub r18,r22
	sbc r19,r23
	cp r18,r30
	cpc r19,r31
	brlo .L299
	mov r30,r24
	mov r31,r25
	rjmp .L300
.L299:
	mov r26,r20
	mov r27,r21
	lsl r26
	rol r27
	mov r30,r22
	mov r31,r23
	add r30,r26
	adc r31,r27
	add r26,r24
	adc r27,r25
	rjmp .L301
.L302:
	ld r19,-Z
	ld r18,-Z
	st -X,r19
	st -X,r18
.L301:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L302
	rjmp .L298
.L303:
	subi r22,-2
	sbci r23,-1
	mov r26,r22
	mov r27,r23
	ld r19,-X
	ld r18,-X
	st Z+,r18
	st Z+,r19
.L300:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L303
.L298:
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	rjmp .L305
.L306:
	subi r18,-2
	sbci r19,-1
	mov r30,r18
	mov r31,r19
	st -Z,r23
	st -Z,r22
.L305:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L306
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	mov r26,r20
	mov r27,r21
	cp r24,r22
	cpc r25,r23
	brsh .L308
	add r30,r20
	adc r31,r21
	add r26,r22
	adc r27,r23
	rjmp .L309
.L310:
	ld r24,-Z
	st -X,r24
.L309:
	cp r26,r22
	cpc r27,r23
	brne .L310
	rjmp .L307
.L308:
	cp r24,r22
	cpc r25,r23
	breq .L307
	mov r18,r20
	mov r19,r21
	add r18,r24
	adc r19,r25
	rjmp .L312
.L313:
	adiw r30,1
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	mov r26,r24
	mov r27,r25
	ld r24,X
	mov r26,r22
	mov r27,r23
	st X+,r24
	mov r22,r26
	mov r23,r27
.L312:
	cp r30,r18
	cpc r31,r19
	brne .L313
.L307:
/* epilogue start */
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
	rcall __rotldi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
	mov r8,r18
	mov r9,r19
	mov r14,r24
	mov r15,r25
	ldi r24,lo8(64)
	ldi r25,0
	mov r18,r24
	mov r19,r25
	sub r18,r16
	sbc r19,r17
	mov r16,r18
	mov r17,r19
	mov r18,r8
	mov r19,r9
	mov r24,r14
	mov r25,r15
	rcall __rotldi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
	.size	rotr64, .-rotr64
.global	rotl32
	.type	rotl32, @function
rotl32:
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
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r0,r20
	rjmp 2f
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	2:
	dec r0
	brpl 1b
	neg r21
	neg r20
	sbc r21,__zero_reg__
	andi r20,31
	clr r21
	rjmp 2f
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	2:
	dec r20
	brpl 1b
	or r22,r16
	or r23,r17
	or r24,r18
	or r25,r19
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	rotl32, .-rotl32
.global	rotr32
	.type	rotr32, @function
rotr32:
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
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r0,r20
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	neg r21
	neg r20
	sbc r21,__zero_reg__
	andi r20,31
	clr r21
	rjmp 2f
	1:
	lsl r22
	rol r23
	rol r24
	rol r25
	2:
	dec r20
	brpl 1b
	or r22,r16
	or r23,r17
	or r24,r18
	or r25,r19
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	rotr32, .-rotr32
.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r0,r22
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	neg r23
	neg r22
	sbc r23,__zero_reg__
	andi r22,15
	clr r23
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r22
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rotl_sz, .-rotl_sz
.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r0,r22
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	neg r23
	neg r22
	sbc r23,__zero_reg__
	andi r22,15
	clr r23
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r22
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rotr_sz, .-rotr_sz
.global	rotl16
	.type	rotl16, @function
rotl16:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r0,r22
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	neg r23
	neg r22
	sbc r23,__zero_reg__
	andi r22,15
	clr r23
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r22
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rotl16, .-rotl16
.global	rotr16
	.type	rotr16, @function
rotr16:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r0,r22
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	neg r23
	neg r22
	sbc r23,__zero_reg__
	andi r22,15
	clr r23
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r22
	brpl 1b
	or r24,r18
	or r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rotr16, .-rotr16
.global	rotl8
	.type	rotl8, @function
rotl8:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	ldi r19,0
	mov r24,r18
	mov r25,r19
	mov r0,r22
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	ldi r20,lo8(8)
	ldi r21,0
	sub r20,r22
	sbc r21,r23
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r20
	brpl 1b
	or r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rotl8, .-rotl8
.global	rotr8
	.type	rotr8, @function
rotr8:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	ldi r19,0
	mov r24,r18
	mov r25,r19
	mov r0,r22
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	ldi r20,lo8(8)
	ldi r21,0
	sub r20,r22
	sbc r21,r23
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r20
	brpl 1b
	or r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rotr8, .-rotr8
.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	eor r25,r24
	eor r24,r25
	eor r25,r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	bswap_16, .-bswap_16
.global	bswap_32
	.type	bswap_32, @function
bswap_32:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r12,r25
	clr r13
	clr r14
	clr r15
	clr r22
	clr r23
	clr r25
	mov r22,r23
	mov r23,r24
	mov r24,r25
	clr r25
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	clr r12
	clr r14
	clr r15
	mov r15,r14
	mov r14,r13
	mov r13,r12
	clr r12
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
	mov r19,r16
	clr r18
	clr r17
	clr r16
	or r22,r16
	or r23,r17
	or r24,r18
	or r25,r19
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 35 */
.L__stack_usage = 35
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
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
	ldd r14,Y+23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldi r25,0
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
	ldd r24,Y+9
	or r24,r8
	std Y+1,r24
	ldd r24,Y+10
	or r24,r9
	std Y+2,r24
	ldd r24,Y+11
	or r24,r10
	std Y+3,r24
	ldd r24,Y+12
	or r24,r11
	std Y+4,r24
	ldd r24,Y+13
	or r24,r12
	std Y+5,r24
	ldd r24,Y+14
	or r24,r13
	std Y+6,r24
	ldd r24,Y+15
	or r24,r14
	std Y+7,r24
	ldd r24,Y+16
	or r24,r15
	std Y+8,r24
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r14,__zero_reg__
	ldd r13,Y+22
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldi r25,0
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
	ldd r24,Y+1
	or r24,r8
	std Y+9,r24
	ldd r24,Y+2
	or r24,r9
	std Y+10,r24
	ldd r24,Y+3
	or r24,r10
	std Y+11,r24
	ldd r24,Y+4
	or r24,r11
	std Y+12,r24
	ldd r24,Y+5
	or r24,r12
	std Y+13,r24
	ldd r24,Y+6
	or r24,r13
	std Y+14,r24
	ldd r24,Y+7
	or r24,r14
	std Y+15,r24
	ldd r24,Y+8
	or r24,r15
	std Y+16,r24
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	ldd r12,Y+21
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldi r25,0
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
	ldd r24,Y+9
	or r24,r8
	std Y+1,r24
	ldd r24,Y+10
	or r24,r9
	std Y+2,r24
	ldd r24,Y+11
	or r24,r10
	std Y+3,r24
	ldd r24,Y+12
	or r24,r11
	std Y+4,r24
	ldd r24,Y+13
	or r24,r12
	std Y+5,r24
	ldd r24,Y+14
	or r24,r13
	std Y+6,r24
	ldd r24,Y+15
	or r24,r14
	std Y+7,r24
	ldd r24,Y+16
	or r24,r15
	std Y+8,r24
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	ldd r11,Y+20
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldi r25,0
	rcall __ashldi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+1
	or r24,r8
	std Y+9,r24
	ldd r24,Y+2
	or r24,r9
	std Y+10,r24
	ldd r24,Y+3
	or r24,r10
	std Y+11,r24
	ldd r24,Y+4
	or r24,r11
	std Y+12,r24
	ldd r24,Y+5
	or r24,r12
	std Y+13,r24
	ldd r24,Y+6
	or r24,r13
	std Y+14,r24
	ldd r24,Y+7
	or r24,r14
	std Y+15,r24
	ldd r24,Y+8
	or r24,r15
	std Y+16,r24
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	ldd r10,Y+19
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldi r25,0
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
	or r24,r8
	std Y+1,r24
	ldd r24,Y+10
	or r24,r9
	std Y+2,r24
	ldd r24,Y+11
	or r24,r10
	std Y+3,r24
	ldd r24,Y+12
	or r24,r11
	std Y+4,r24
	ldd r24,Y+13
	or r24,r12
	std Y+5,r24
	ldd r24,Y+14
	or r24,r13
	std Y+6,r24
	ldd r24,Y+15
	or r24,r14
	std Y+7,r24
	ldd r24,Y+16
	or r24,r15
	std Y+8,r24
	mov r8,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	ldd r9,Y+18
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldi r25,0
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
	ldd r24,Y+1
	or r24,r8
	std Y+9,r24
	ldd r24,Y+2
	or r24,r9
	std Y+10,r24
	ldd r24,Y+3
	or r24,r10
	std Y+11,r24
	ldd r24,Y+4
	or r24,r11
	std Y+12,r24
	ldd r24,Y+5
	or r24,r12
	std Y+13,r24
	ldd r24,Y+6
	or r24,r13
	std Y+14,r24
	ldd r24,Y+7
	or r24,r14
	std Y+15,r24
	ldd r24,Y+8
	or r24,r15
	std Y+16,r24
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	ldd r8,Y+17
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldi r25,0
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
	or r24,r8
	std Y+1,r24
	ldd r24,Y+10
	or r24,r9
	std Y+2,r24
	ldd r24,Y+11
	or r24,r10
	std Y+3,r24
	ldd r24,Y+12
	or r24,r11
	std Y+4,r24
	ldd r24,Y+13
	or r24,r12
	std Y+5,r24
	ldd r24,Y+14
	or r24,r13
	std Y+6,r24
	ldd r24,Y+15
	or r24,r14
	std Y+7,r24
	ldd r24,Y+16
	or r24,r15
	std Y+8,r24
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	mov r15,r24
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	adiw r28,24
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r18,0
	ldi r19,0
	rjmp .L328
.L331:
	mov r20,r24
	mov r21,r25
	mov r0,r18
	rjmp 2f
	1:
	lsr r21
	ror r20
	2:
	dec r0
	brpl 1b
	sbrs r20,0
	rjmp .L329
	mov r24,r18
	mov r25,r19
	adiw r24,1
	rjmp .L330
.L329:
	subi r18,-1
	sbci r19,-1
.L328:
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L331
	ldi r24,0
	ldi r25,0
.L330:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	ffs, .-ffs
.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r18,lo8(1)
	ldi r19,0
	sbiw r24,0
	brne .L334
	rjmp .L336
.L335:
	asr r25
	ror r24
	subi r18,-1
	sbci r19,-1
.L334:
	sbrs r24,0
	rjmp .L335
	mov r24,r18
	mov r25,r19
	rjmp .L333
.L336:
	ldi r24,0
	ldi r25,0
.L333:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	libiberty_ffs, .-libiberty_ffs
.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-1)
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L340
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L343
	brlt .L343
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L338
.L340:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L338
.L343:
	ldi r24,0
	ldi r25,0
.L338:
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	gl_isinff, .-gl_isinff
.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-1)
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L347
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L350
	brlt .L350
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L345
.L347:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L345
.L350:
	ldi r24,0
	ldi r25,0
.L345:
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
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
	rcall __ltdf2
	cpse r24,__zero_reg__
	rjmp .L354
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
	breq .L357
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L352
.L354:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L352
.L357:
	ldi r24,0
	ldi r25,0
.L352:
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
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r16,r24
	mov r17,r25
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	rcall __floatsisf
	rcall __extendsfdf2
	mov r30,r16
	mov r31,r17
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	std Z+6,r24
	std Z+7,r25
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
	pop r9
	pop r8
	ret
	.size	_Qp_itoq, .-_Qp_itoq
.global	ldexpf
	.type	ldexpf, @function
ldexpf:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L360
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __addsf3
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __nesf2
	cp r24, __zero_reg__
	breq .L360
	mov __tmp_reg__,r31
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	tst r17
	brlt .L365
.L366:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	set
	clr r11
	bld r11,6
.L365:
	sbrs r16,0
	rjmp .L363
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L363:
	mov r24,r16
	mov r25,r17
	tst r25
	brge .L364
	adiw r24,1
.L364:
	mov r16,r24
	mov r17,r25
	asr r17
	ror r16
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L360
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L365
.L360:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
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
	pop r9
	pop r8
	ret
	.size	ldexpf, .-ldexpf
.global	ldexp
	.type	ldexp, @function
ldexp:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r20
	mov r17,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L369
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __addsf3
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __nesf2
	cp r24, __zero_reg__
	breq .L369
	mov __tmp_reg__,r31
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	tst r17
	brlt .L374
.L375:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	set
	clr r11
	bld r11,6
.L374:
	sbrs r16,0
	rjmp .L372
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L372:
	mov r24,r16
	mov r25,r17
	tst r25
	brge .L373
	adiw r24,1
.L373:
	mov r16,r24
	mov r17,r25
	asr r17
	ror r16
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L369
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L374
.L369:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
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
	pop r9
	pop r8
	ret
	.size	ldexp, .-ldexp
.global	ldexpl
	.type	ldexpl, @function
ldexpl:
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
	mov r6,r16
	mov r7,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L378
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
	rcall __adddf3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	mov r16,r18
	mov r17,r19
	mov r18,r20
	mov r19,r21
	mov r10,r16
	mov r11,r17
	mov r12,r18
	mov r13,r19
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
	rjmp .L378
	tst r7
	brge .L384
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	ldi r24,lo8(-32)
	std Y+7,r24
	ldi r24,lo8(63)
	std Y+8,r24
	rjmp .L383
.L384:
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	ldi r24,lo8(64)
	std Y+8,r24
.L383:
	sbrs r6,0
	rjmp .L381
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
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
.L381:
	mov r24,r6
	mov r25,r7
	tst r25
	brge .L382
	adiw r24,1
.L382:
	mov r6,r24
	mov r7,r25
	asr r7
	ror r6
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L378
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
	rcall __muldf3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	rjmp .L383
.L378:
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
	.size	ldexpl, .-ldexpl
.global	memxor
	.type	memxor, @function
memxor:
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
	mov r26,r24
	mov r27,r25
	mov r16,r22
	mov r17,r23
	add r16,r20
	adc r17,r21
	mov r18,r24
	mov r19,r25
	rjmp .L387
.L388:
	subi r22,-1
	sbci r23,-1
	mov r30,r22
	mov r31,r23
	ld r25,-Z
	subi r18,-1
	sbci r19,-1
	mov r30,r18
	mov r31,r19
	ld r21,-Z
	eor r25,r21
	st Z,r25
.L387:
	cp r22,r16
	cpc r23,r17
	brne .L388
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	memxor, .-memxor
.global	strncat
	.type	strncat, @function
strncat:
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
	mov r18,r24
	mov r19,r25
	mov r30,r24
	mov r31,r25
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	mov r16,r22
	mov r17,r23
	sbiw r30,1
	rjmp .L390
.L392:
	subi r20,1
	sbc r21,__zero_reg__
.L390:
	mov r22,r30
	mov r23,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L391
	mov r26,r16
	mov r27,r17
	ld r24,X+
	mov r16,r26
	mov r17,r27
	st Z+,r24
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	mov r26,r24
	mov r27,r25
	ld r25,X
	cpse r25,__zero_reg__
	rjmp .L392
.L391:
	or r20,r21
	brne .L393
	mov r30,r22
	mov r31,r23
	st Z,__zero_reg__
.L393:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	strncat, .-strncat
.global	strnlen
	.type	strnlen, @function
strnlen:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
	rjmp .L395
.L397:
	adiw r24,1
.L395:
	cp r24,r22
	cpc r25,r23
	breq .L396
	ld r18,Z+
	cpse r18,__zero_reg__
	rjmp .L397
.L396:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strnlen, .-strnlen
.global	strpbrk
	.type	strpbrk, @function
strpbrk:
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
	mov r20,r24
	mov r21,r25
	rjmp .L399
.L401:
	mov r26,r30
	mov r27,r31
	ld r18,-X
	mov r26,r20
	mov r27,r21
	ld r25,-X
	cp r18,r25
	breq .L403
.L402:
	ld r25,Z+
	cpse r25,__zero_reg__
	rjmp .L401
.L399:
	mov r16,r20
	mov r17,r21
	mov r30,r20
	mov r31,r21
	ld r24,Z+
	mov r20,r30
	mov r21,r31
	cp r24, __zero_reg__
	breq .L404
	mov r30,r22
	mov r31,r23
	rjmp .L402
.L403:
	mov r24,r16
	mov r25,r17
	rjmp .L400
.L404:
	ldi r24,0
	ldi r25,0
.L400:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	strpbrk, .-strpbrk
.global	strrchr
	.type	strrchr, @function
strrchr:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	ldi r20,0
	ldi r21,0
.L407:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	mov __tmp_reg__,r25
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r25,r22
	cpc r0,r23
	brne .L406
	mov r20,r18
	mov r21,r19
.L406:
	mov r26,r30
	mov r27,r31
	ld r25,-X
	cpse r25,__zero_reg__
	rjmp .L407
	mov r24,r20
	mov r25,r21
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strrchr, .-strrchr
.global	strstr
	.type	strstr, @function
strstr:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r14,r22
	mov r15,r23
	mov r30,r22
	mov r31,r23
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	mov r10,r30
	mov r11,r31
	sub r10,r22
	sbc r11,r23
	cp r22,r30
	cpc r23,r31
	breq .L410
	mov r30,r22
	mov r31,r23
	ld r12,Z
	mov __tmp_reg__,r12
	lsl r0
	sbc r13,r13
	mov r16,r24
	mov r17,r25
	rjmp .L411
.L412:
	mov r20,r10
	mov r21,r11
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
	rcall strncmp
	or r24,r25
	breq .L414
	subi r16,-1
	sbci r17,-1
.L411:
	mov r22,r12
	mov r23,r13
	mov r24,r16
	mov r25,r17
	rcall strchr
	mov r16,r24
	mov r17,r25
	or r24,r25
	brne .L412
	ldi r24,0
	ldi r25,0
	rjmp .L410
.L414:
	mov r24,r16
	mov r25,r17
.L410:
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
	.size	strstr, .-strstr
.global	copysign
	.type	copysign, @function
copysign:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L416
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .+2
	brge .L418
.L416:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L426
	brlt .L426
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L427
.L418:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	subi r25,0x80
	rjmp .L419
.L426:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L419
.L427:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
.L419:
/* epilogue start */
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
	.size	copysign, .-copysign
.global	memmem
	.type	memmem, @function
memmem:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r12,r20
	mov r13,r21
	mov r10,r18
	mov r11,r19
	mov r8,r22
	mov r9,r23
	sub r8,r18
	sbc r9,r19
	add r8,r24
	adc r9,r25
	or r18,r19
	breq .L429
	ldi r18,lo8(1)
	cp r22,r10
	cpc r23,r11
	brlo .L430
	ldi r18,0
.L430:
	cpse r18,__zero_reg__
	rjmp .L434
	mov r16,r24
	mov r17,r25
	rjmp .L431
.L432:
	mov r30,r16
	mov r31,r17
	ld r24,Z+
	mov r16,r30
	mov r17,r31
	mov r30,r12
	mov r31,r13
	ld r25,Z
	cpse r24,r25
	rjmp .L431
	mov r20,r10
	mov r21,r11
	subi r20,1
	sbc r21,__zero_reg__
	mov r22,r12
	mov r23,r13
	subi r22,-1
	sbci r23,-1
	mov r24,r16
	mov r25,r17
	rcall memcmp
	or r24,r25
	breq .L435
.L431:
	mov r14,r16
	mov r15,r17
	cp r8,r16
	cpc r9,r17
	brsh .L432
	ldi r24,0
	ldi r25,0
	rjmp .L429
.L434:
	ldi r24,0
	ldi r25,0
	rjmp .L429
.L435:
	mov r24,r14
	mov r25,r15
.L429:
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
	pop r9
	pop r8
	ret
	.size	memmem, .-memmem
.global	mempcpy
	.type	mempcpy, @function
mempcpy:
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
	mov r16,r20
	mov r17,r21
	rcall memcpy
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	mempcpy, .-mempcpy
.global	frexp
	.type	frexp, @function
frexp:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r12,r20
	mov r13,r21
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	rcall __ltsf2
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	cp r24, __zero_reg__
	brge .L438
	bst r11,7
	com r11
	bld r11,7
	com r11
	clr r14
	inc r14
	mov r15,__zero_reg__
	rjmp .L438
.L438:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __gesf2
	ldi r16,0
	ldi r17,0
	cp r24, __zero_reg__
	brge .L440
	rjmp .L455
.L442:
	subi r16,-1
	sbci r17,-1
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L440
.L440:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __gesf2
	cp r24, __zero_reg__
	brge .L442
	rjmp .L443
.L455:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __ltsf2
	ldi r16,0
	ldi r17,0
	cp r24, __zero_reg__
	brge .L443
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __nesf2
	ldi r16,0
	ldi r17,0
	cp r24, __zero_reg__
	breq .L443
	rjmp .L451
.L446:
	subi r16,1
	sbc r17,__zero_reg__
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __addsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L445
.L451:
	ldi r16,0
	ldi r17,0
.L445:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L446
	rjmp .L443
.L443:
	mov r30,r12
	mov r31,r13
	std Z+1,r17
	st Z,r16
	or r14,r15
	breq .L447
	bst r11,7
	com r11
	bld r11,7
	com r11
.L447:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
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
	pop r9
	pop r8
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
	std Y+31,r24
	std Y+9,r10
	std Y+10,r11
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	ldd r24,Y+31
	std Y+7,r24
	std Y+8,r25
	std Y+25,__zero_reg__
	std Y+26,__zero_reg__
	std Y+27,__zero_reg__
	std Y+28,__zero_reg__
	std Y+29,__zero_reg__
	std Y+30,__zero_reg__
	std Y+31,__zero_reg__
	std Y+32,__zero_reg__
	rjmp .L458
.L460:
	ldd r24,Y+1
	andi r24,lo8(1)
	std Y+17,r24
	std Y+18,__zero_reg__
	std Y+19,__zero_reg__
	std Y+20,__zero_reg__
	std Y+21,__zero_reg__
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	mov r18,r24
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r26,0
	rcall __cmpdi2_s8
	breq .L459
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	ldd r22,Y+29
	ldd r23,Y+30
	ldd r24,Y+31
	ldd r25,Y+32
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	ldd r16,Y+15
	ldd r17,Y+16
	rcall __adddi3
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
.L459:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	ldi r16,lo8(1)
	rcall __ashldi3
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
	rcall __lshrdi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
.L458:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldi r26,0
	rcall __cmpdi2_s8
	breq .+2
	rjmp .L460
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
	.size	__muldi3, .-__muldi3
.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r27,r21
	mov r26,r20
	mov r25,r19
	mov r24,r18
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L462
.L464:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r20
	rol r21
	rol r22
	rol r23
.L462:
	cp r24,r12
	cpc r25,r13
	cpc r26,r14
	cpc r27,r15
	brsh .L469
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L470
	tst r27
	brge .L464
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L466
.L467:
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L465
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	or r8,r20
	or r9,r21
	or r10,r22
	or r11,r23
.L465:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
	rjmp .L466
.L469:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L466
.L470:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L466:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L467
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	cp r16, __zero_reg__
	breq .L468
.L471:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L468:
/* epilogue start */
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
	.size	udivmodsi4, .-udivmodsi4
.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	cp r24, __zero_reg__
	brge .L473
	com r24
.L473:
	cp r24, __zero_reg__
	breq .L475
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r25,r24
	clr r24
	rcall __clzhi2
	sbiw r24,1
	rjmp .L474
.L475:
	ldi r24,lo8(7)
	ldi r25,0
.L474:
/* epilogue start */
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
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L477
	mov r16,r18
	com r16
	mov r17,r19
	com r17
	mov r18,r20
	com r18
	mov r19,r21
	com r19
	mov r20,r22
	com r20
	mov r21,r23
	com r21
	mov r22,r24
	com r22
	mov r23,r25
	com r23
	mov r8,r16
	mov r9,r17
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
.L477:
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
	breq .L479
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	rcall __clzdi2
	sbiw r24,1
	rjmp .L478
.L479:
	ldi r24,lo8(63)
	ldi r25,0
.L478:
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
	.size	__clrsbdi2, .-__clrsbdi2
.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	ldi r24,0
	ldi r25,0
	rjmp .L481
.L483:
	sbrs r18,0
	rjmp .L482
	add r24,r22
	adc r25,r23
.L482:
	lsr r19
	ror r18
	lsl r22
	rol r23
.L481:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L483
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__mulsi3, .-__mulsi3
.global	__cmovd
	.type	__cmovd, @function
__cmovd:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r14,r20
	mov r15,r21
	lsr r15
	ror r14
	lsr r15
	ror r14
	lsr r15
	ror r14
	mov r18,r20
	mov r19,r21
	andi r18,248
	cp r24,r22
	cpc r25,r23
	brsh .L485
.L487:
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	mov r6,r14
	mov r7,r15
	ldi r16,0
	ldi r17,0
	rjmp .L486
.L485:
	mov r30,r22
	mov r31,r23
	add r30,r20
	adc r31,r21
	cp r30,r24
	cpc r31,r25
	brlo .L487
	mov r30,r22
	mov r31,r23
	add r30,r20
	adc r31,r21
	mov r26,r24
	mov r27,r25
	add r26,r20
	adc r27,r21
	rjmp .L488
.L489:
	ld r8,X
	adiw r26,1
	ld r9,X
	sbiw r26,1
	adiw r26,2
	ld r10,X
	sbiw r26,2
	adiw r26,3
	ld r11,X
	sbiw r26,3
	adiw r26,4
	ld r12,X
	sbiw r26,4
	adiw r26,5
	ld r13,X
	sbiw r26,5
	adiw r26,6
	ld r14,X
	sbiw r26,6
	adiw r26,7
	ld r15,X
	sbiw r26,7
	adiw r26,8
	st Z,r8
	std Z+1,r9
	std Z+2,r10
	std Z+3,r11
	std Z+4,r12
	std Z+5,r13
	std Z+6,r14
	std Z+7,r15
	adiw r30,8
	subi r16,-1
	sbci r17,-1
.L486:
	cp r16,r6
	cpc r17,r7
	brne .L489
	mov r30,r22
	mov r31,r23
	add r30,r18
	adc r31,r19
	mov r26,r24
	mov r27,r25
	add r26,r18
	adc r27,r19
	rjmp .L490
.L491:
	ld r24,Z+
	st X+,r24
	subi r18,-1
	sbci r19,-1
.L490:
	cp r18,r20
	cpc r19,r21
	brlo .L491
	rjmp .L484
.L493:
	ld r24,-Z
	st -X,r24
.L488:
	cp r30,r22
	cpc r31,r23
	brne .L493
.L484:
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
	pop r9
	pop r8
	pop r7
	pop r6
	ret
	.size	__cmovd, .-__cmovd
.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r14,r20
	mov r15,r21
	lsr r15
	ror r14
	cp r24,r22
	cpc r25,r23
	brsh .L495
.L497:
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	ldi r18,0
	ldi r19,0
	rjmp .L496
.L495:
	mov r18,r22
	mov r19,r23
	add r18,r20
	adc r19,r21
	cp r18,r24
	cpc r19,r25
	brlo .L497
	mov r30,r18
	mov r31,r19
	mov r26,r24
	mov r27,r25
	add r26,r20
	adc r27,r21
	rjmp .L498
.L499:
	ld r16,X+
	ld r17,X+
	st Z+,r16
	st Z+,r17
	subi r18,-1
	sbci r19,-1
.L496:
	cp r18,r14
	cpc r19,r15
	brne .L499
	sbrs r20,0
	rjmp .L494
	subi r20,1
	sbc r21,__zero_reg__
	add r22,r20
	adc r23,r21
	add r24,r20
	adc r25,r21
	mov r30,r22
	mov r31,r23
	ld r18,Z
	mov r30,r24
	mov r31,r25
	st Z,r18
	rjmp .L494
.L501:
	ld r24,-Z
	st -X,r24
.L498:
	cp r30,r22
	cpc r31,r23
	brne .L501
.L494:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	__cmovh, .-__cmovh
.global	__cmovw
	.type	__cmovw, @function
__cmovw:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r16,r24
	mov r17,r25
	mov r12,r20
	mov r13,r21
	lsr r13
	ror r12
	lsr r13
	ror r12
	mov r24,r20
	mov r25,r21
	andi r24,252
	cp r16,r22
	cpc r17,r23
	brsh .L503
.L505:
	mov r30,r22
	mov r31,r23
	mov r26,r16
	mov r27,r17
	ldi r18,0
	ldi r19,0
	rjmp .L504
.L503:
	mov r18,r22
	mov r19,r23
	add r18,r20
	adc r19,r21
	cp r18,r16
	cpc r19,r17
	brlo .L505
	mov r24,r18
	mov r25,r19
	mov r26,r16
	mov r27,r17
	add r26,r20
	adc r27,r21
	rjmp .L506
.L507:
	ld r14,Z+
	ld r15,Z+
	st X+,r14
	st X+,r15
	subi r18,-1
	sbci r19,-1
.L504:
	cp r18,r12
	cpc r19,r13
	brne .L507
	mov r30,r22
	mov r31,r23
	add r30,r24
	adc r31,r25
	mov r26,r16
	mov r27,r17
	add r26,r24
	adc r27,r25
	rjmp .L508
.L509:
	ld r18,Z+
	st X+,r18
	adiw r24,1
.L508:
	cp r24,r20
	cpc r25,r21
	brlo .L509
	rjmp .L502
.L511:
	mov r30,r24
	mov r31,r25
	ld r18,-Z
	mov r24,r30
	mov r25,r31
	st -X,r18
.L506:
	cp r24,r22
	cpc r25,r23
	brne .L511
.L502:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__cmovw, .-__cmovw
.global	__modi
	.type	__modi, @function
__modi:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	rcall __divmodhi4
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__modi, .-__modi
.global	__uitod
	.type	__uitod, @function
__uitod:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	rcall __floatunsisf
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__uitod, .-__uitod
.global	__uitof
	.type	__uitof, @function
__uitof:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	rcall __floatunsisf
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__uitof, .-__uitof
.global	__ulltod
	.type	__ulltod, @function
__ulltod:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	rcall __floatundisf
/* epilogue start */
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
	.size	__ulltod, .-__ulltod
.global	__ulltof
	.type	__ulltof, @function
__ulltof:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	rcall __floatundisf
/* epilogue start */
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
	.size	__ulltof, .-__ulltof
.global	__umodi
	.type	__umodi, @function
__umodi:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	rcall __udivmodhi4
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__umodi, .-__umodi
.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r20,r24
	mov r21,r25
	ldi r24,0
	ldi r25,0
	rjmp .L519
.L521:
	ldi r18,0
	ldi r19,lo8(-128)
	mov r0,r24
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r0
	brpl 1b
	and r18,r20
	and r19,r21
	or r18,r19
	brne .L520
	adiw r24,1
.L519:
	cpi r24,16
	cpc r25,__zero_reg__
	brne .L521
.L520:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__clzhi2, .-__clzhi2
.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r20,r24
	mov r21,r25
	ldi r24,0
	ldi r25,0
	rjmp .L523
.L525:
	mov r18,r20
	mov r19,r21
	mov r0,r24
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r0
	brpl 1b
	sbrc r18,0
	rjmp .L524
	adiw r24,1
.L523:
	cpi r24,16
	cpc r25,__zero_reg__
	brne .L525
.L524:
/* epilogue start */
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	rcall __gesf2
	cp r24, __zero_reg__
	brlt .L531
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __subsf3
	rcall __fixsfsi
	subi r23,-128
	sbci r24,-1
	sbci r25,-1
	rjmp .L529
.L531:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __fixsfsi
.L529:
/* epilogue start */
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r22,0
	ldi r23,0
	ldi r18,0
	ldi r19,0
	rjmp .L533
.L535:
	mov r20,r24
	mov r21,r25
	mov r0,r18
	rjmp 2f
	1:
	lsr r21
	ror r20
	2:
	dec r0
	brpl 1b
	sbrs r20,0
	rjmp .L534
	subi r22,-1
	sbci r23,-1
.L534:
	subi r18,-1
	sbci r19,-1
.L533:
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L535
	mov r24,r22
	andi r24,1<<0
	clr r25
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__parityhi2, .-__parityhi2
.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	ldi r18,0
	ldi r19,0
	rjmp .L537
.L539:
	mov r20,r22
	mov r21,r23
	mov r0,r18
	rjmp 2f
	1:
	lsr r21
	ror r20
	2:
	dec r0
	brpl 1b
	sbrc r20,0
	adiw r24,1
.L538:
	subi r18,-1
	sbci r19,-1
.L537:
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L539
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__popcounthi2, .-__popcounthi2
.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
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
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
	mov r21,r19
	mov r20,r18
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	rjmp .L541
.L543:
	sbrs r24,0
	rjmp .L542
	add r16,r20
	adc r17,r21
	adc r18,r22
	adc r19,r23
.L542:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsl r20
	rol r21
	rol r22
	rol r23
.L541:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L543
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r27,r21
	mov r26,r20
	mov r25,r19
	mov r24,r18
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L546
	rjmp .L549
.L548:
	sbrs r24,0
	rjmp .L547
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
.L547:
	lsl r12
	rol r13
	rol r14
	rol r15
	lsr r27
	ror r26
	ror r25
	ror r24
.L546:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L548
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
	rjmp .L545
.L549:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L545:
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r27,r21
	mov r26,r20
	mov r25,r19
	mov r24,r18
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L551
.L553:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r20
	rol r21
	rol r22
	rol r23
.L551:
	cp r24,r12
	cpc r25,r13
	cpc r26,r14
	cpc r27,r15
	brsh .L558
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L559
	tst r27
	brge .L553
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L555
.L556:
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L554
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	or r8,r20
	or r9,r21
	or r10,r22
	or r11,r23
.L554:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
	rjmp .L555
.L558:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L555
.L559:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L555:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L556
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	or r16,r17
	breq .L557
.L560:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L557:
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
	pop r9
	pop r8
	ret
	.size	__udivmodsi4, .-__udivmodsi4
.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L563
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .+2
	brge .L564
	ldi r24,0
	ldi r25,0
	rjmp .L562
.L563:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L562
.L564:
	ldi r24,lo8(1)
	ldi r25,0
.L562:
/* epilogue start */
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
	.size	__mspabi_cmpf, .-__mspabi_cmpf
.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L567
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .+2
	brge .L568
	ldi r24,0
	ldi r25,0
	rjmp .L566
.L567:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L566
.L568:
	ldi r24,lo8(1)
	ldi r25,0
.L566:
/* epilogue start */
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
	.size	__mspabi_cmpd, .-__mspabi_cmpd
.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
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
/* stack size = 24 */
.L__stack_usage = 24
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	mov r27,r21
	mov r26,r20
	mov r25,r19
	mov r24,r18
	std Y+1,r4
	std Y+2,r5
	std Y+3,r6
	std Y+4,r7
	lsl r7
	sbc r4,r4
	mov r5,r4
	mov r6,r4
	mov r7,r4
	std Y+5,r4
	std Y+6,r4
	std Y+7,r4
	std Y+8,r4
	mov r16,r18
	mov r17,r19
	mov r18,r20
	mov r19,r21
	lsl r27
	sbc r24,r24
	mov r25,r24
	mov r26,r24
	mov r27,r24
	mov r10,r16
	mov r11,r17
	mov r12,r18
	mov r13,r19
	mov r14,r24
	mov r15,r24
	mov r16,r24
	mov r17,r24
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	mov r22,r4
	mov r23,r4
	mov r24,r4
	mov r25,r4
	rcall __muldi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
	mov r2,r22
	mov r3,r23
	mov r4,r24
	mov r5,r25
	mov r16,r18
	mov r17,r19
	mov r18,r20
	mov r19,r21
	mov r10,r16
	mov r11,r17
	mov r12,r18
	mov r13,r19
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	mov r18,r22
	mov r19,r3
	mov r20,r4
	mov r21,r5
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rcall __muldi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	ldi r30,0
	ldi r31,0
	tst r23
	brge .L572
	neg r23
	neg r22
	sbc r23,__zero_reg__
	ldi r30,lo8(1)
	ldi r31,0
	rjmp .L572
.L572:
	ldi r25,lo8(17)
	ldi r20,0
	ldi r21,0
	rjmp .L573
.L576:
	sbrs r22,0
	rjmp .L574
	add r20,r18
	adc r21,r19
.L574:
	lsl r18
	rol r19
	asr r23
	ror r22
.L573:
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L575
	subi r25,lo8(-(-1))
	cpse r25,__zero_reg__
	rjmp .L576
.L575:
	mov r24,r20
	mov r25,r21
	or r30,r31
	breq .L577
	clr r24
	clr r25
	sub r24,r20
	sbc r25,r21
	rjmp .L577
.L577:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__mulhi3, .-__mulhi3
.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	tst r25
	brge .L581
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
	clr r14
	inc r14
	mov r15,__zero_reg__
	rjmp .L581
.L581:
	tst r21
	brge .L582
	com r21
	com r20
	com r19
	neg r18
	sbci r19,lo8(-1)
	sbci r20,lo8(-1)
	sbci r21,lo8(-1)
	ldi r30,lo8(1)
	or r14,r15
	breq .L583
	ldi r30,0
.L583:
	mov r14,r30
	mov r15,__zero_reg__
.L582:
	ldi r16,0
	ldi r17,0
	rcall __udivmodsi4
	or r14,r15
	breq .L584
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.L584:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	__divsi3, .-__divsi3
.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	tst r25
	brge .L587
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
	clr r14
	inc r14
	mov r15,__zero_reg__
	rjmp .L587
.L587:
	tst r21
	brge .L588
	com r21
	com r20
	com r19
	neg r18
	sbci r19,lo8(-1)
	sbci r20,lo8(-1)
	sbci r21,lo8(-1)
.L588:
	ldi r16,lo8(1)
	ldi r17,0
	rcall __udivmodsi4
	or r14,r15
	breq .L589
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.L589:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	__modsi3, .-__modsi3
.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r18,lo8(1)
	ldi r19,0
	rjmp .L592
.L594:
	lsl r22
	rol r23
	lsl r18
	rol r19
.L592:
	cp r22,r24
	cpc r23,r25
	brsh .L599
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L600
	tst r23
	brge .L594
	ldi r30,0
	ldi r31,0
	rjmp .L596
.L597:
	cp r24,r22
	cpc r25,r23
	brlo .L595
	sub r24,r22
	sbc r25,r23
	or r30,r18
	or r31,r19
.L595:
	lsr r19
	ror r18
	lsr r23
	ror r22
	rjmp .L596
.L599:
	ldi r30,0
	ldi r31,0
	rjmp .L596
.L600:
	ldi r30,0
	ldi r31,0
.L596:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L597
	or r20,r21
	brne .L598
	mov r24,r30
	mov r25,r31
.L598:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__udivmodhi4, .-__udivmodhi4
.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r27,r21
	mov r26,r20
	mov r25,r19
	mov r24,r18
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L603
.L605:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r20
	rol r21
	rol r22
	rol r23
.L603:
	cp r24,r12
	cpc r25,r13
	cpc r26,r14
	cpc r27,r15
	brsh .L610
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L611
	tst r27
	brge .L605
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L607
.L608:
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L606
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	or r8,r20
	or r9,r21
	or r10,r22
	or r11,r23
.L606:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
	rjmp .L607
.L610:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L607
.L611:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L607:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L608
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	or r16,r17
	breq .L609
.L612:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L609:
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
	pop r9
	pop r8
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 36 */
.L__stack_usage = 36
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	sbrs r16,5
	rjmp .L614
	std Y+9,__zero_reg__
	std Y+10,__zero_reg__
	std Y+11,__zero_reg__
	std Y+12,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	subi r16,32
	sbc r17,__zero_reg__
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r16
	brpl 1b
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	rjmp .L615
.L614:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L617
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	mov r0,r16
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r0
	brpl 1b
	std Y+9,r20
	std Y+10,r21
	std Y+11,r22
	std Y+12,r23
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	mov r0,r16
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r0
	brpl 1b
	ldi r18,lo8(32)
	ldi r19,0
	sub r18,r16
	sbc r19,r17
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
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
.L615:
	ldd r24,Y+9
	std Y+17,r24
	ldd r24,Y+10
	std Y+18,r24
	ldd r24,Y+11
	std Y+19,r24
	ldd r24,Y+12
	std Y+20,r24
	ldd r24,Y+13
	std Y+21,r24
	ldd r24,Y+14
	std Y+22,r24
	ldd r24,Y+15
	std Y+23,r24
	ldd r24,Y+16
	std Y+24,r24
	rjmp .L616
.L617:
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
.L616:
	ldd r8,Y+17
	ldd r9,Y+18
	ldd r10,Y+19
	ldd r11,Y+20
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 36 */
.L__stack_usage = 36
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	sbrs r16,5
	rjmp .L619
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	lsl r23
	sbc r20,r20
	mov r21,r20
	mov r22,r20
	mov r23,r20
	std Y+13,r20
	std Y+14,r21
	std Y+15,r22
	std Y+16,r23
	subi r16,32
	sbc r17,__zero_reg__
	rjmp 2f
	1:
	asr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r16
	brpl 1b
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	rjmp .L620
.L619:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L622
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	mov r0,r16
	rjmp 2f
	1:
	asr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r0
	brpl 1b
	std Y+13,r20
	std Y+14,r21
	std Y+15,r22
	std Y+16,r23
	ldi r18,lo8(32)
	ldi r19,0
	sub r18,r16
	sbc r19,r17
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r18
	brpl 1b
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r16
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L620:
	ldd r24,Y+9
	std Y+17,r24
	ldd r24,Y+10
	std Y+18,r24
	ldd r24,Y+11
	std Y+19,r24
	ldd r24,Y+12
	std Y+20,r24
	ldd r24,Y+13
	std Y+21,r24
	ldd r24,Y+14
	std Y+22,r24
	ldd r24,Y+15
	std Y+23,r24
	ldd r24,Y+16
	std Y+24,r24
	rjmp .L621
.L622:
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
.L621:
	ldd r8,Y+17
	ldd r9,Y+18
	ldd r10,Y+19
	ldd r11,Y+20
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
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
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,64
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 64 */
/* stack size = 76 */
.L__stack_usage = 76
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r16,lo8(56)
	rcall __lshrdi3
	std Y+57,r18
	std Y+58,r19
	std Y+59,r20
	std Y+60,r21
	std Y+61,r22
	std Y+62,r23
	std Y+63,r24
	adiw r28,64-63
	std Y+63,r25
	sbiw r28,64-63
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(40)
	rcall __lshrdi3
	std Y+9,__zero_reg__
	std Y+11,__zero_reg__
	std Y+12,__zero_reg__
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	std Y+15,__zero_reg__
	std Y+16,__zero_reg__
	std Y+10,r19
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(24)
	rcall __lshrdi3
	std Y+17,__zero_reg__
	std Y+18,__zero_reg__
	std Y+20,__zero_reg__
	std Y+21,__zero_reg__
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	std Y+19,r20
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(8)
	rcall __lshrdi3
	std Y+25,__zero_reg__
	std Y+26,__zero_reg__
	std Y+27,__zero_reg__
	std Y+29,__zero_reg__
	std Y+30,__zero_reg__
	std Y+31,__zero_reg__
	std Y+32,__zero_reg__
	std Y+28,r21
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	rcall __ashldi3
	std Y+33,__zero_reg__
	std Y+34,__zero_reg__
	std Y+35,__zero_reg__
	std Y+36,__zero_reg__
	std Y+38,__zero_reg__
	std Y+39,__zero_reg__
	std Y+40,__zero_reg__
	std Y+37,r22
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(24)
	rcall __ashldi3
	std Y+41,__zero_reg__
	std Y+42,__zero_reg__
	std Y+43,__zero_reg__
	std Y+44,__zero_reg__
	std Y+45,__zero_reg__
	std Y+47,__zero_reg__
	std Y+48,__zero_reg__
	std Y+46,r23
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldi r16,lo8(40)
	rcall __ashldi3
	std Y+49,__zero_reg__
	std Y+50,__zero_reg__
	std Y+51,__zero_reg__
	std Y+52,__zero_reg__
	std Y+53,__zero_reg__
	std Y+54,__zero_reg__
	std Y+56,__zero_reg__
	std Y+55,r24
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
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
	ldd r24,Y+57
	or r24,r8
	std Y+1,r24
	ldd r24,Y+58
	or r24,r9
	std Y+2,r24
	ldd r24,Y+59
	or r24,r10
	std Y+3,r24
	ldd r24,Y+60
	or r24,r11
	std Y+4,r24
	ldd r24,Y+61
	or r24,r12
	std Y+5,r24
	ldd r24,Y+62
	or r24,r13
	std Y+6,r24
	ldd r24,Y+63
	or r24,r14
	std Y+7,r24
	adiw r28,64-63
	ldd r24,Y+63
	sbiw r28,64-63
	or r24,r15
	std Y+8,r24
	ldd r8,Y+1
	ldi r24,0
	or r8,r24
	ldd r9,Y+2
	ldd r24,Y+10
	or r9,r24
	ldd r10,Y+3
	ldi r24,0
	or r10,r24
	ldd r11,Y+4
	or r11,r24
	ldd r12,Y+5
	or r12,r24
	ldd r13,Y+6
	or r13,r24
	ldd r14,Y+7
	or r14,r24
	ldd r15,Y+8
	ldi r16,0
	ldi r17,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	or r16,r8
	or r17,r9
	ldd r18,Y+19
	or r18,r10
	or r19,r11
	or r20,r12
	or r21,r13
	or r22,r14
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	or r8,r16
	or r9,r17
	or r10,r18
	ldd r11,Y+28
	or r11,r19
	or r12,r20
	or r13,r21
	or r14,r22
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r21,0
	ldi r22,0
	or r16,r8
	or r17,r9
	or r18,r10
	or r19,r11
	ldd r20,Y+37
	or r20,r12
	or r21,r13
	or r22,r14
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r14,__zero_reg__
	or r8,r16
	or r9,r17
	or r10,r18
	or r11,r19
	or r12,r20
	ldd r13,Y+46
	or r13,r21
	or r14,r22
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	or r16,r8
	or r17,r9
	or r18,r10
	or r19,r11
	or r20,r12
	or r21,r13
	ldd r22,Y+55
	or r22,r14
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r18,r16
	mov r19,r17
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
/* epilogue start */
	subi r28,-64
	sbci r29,-1
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
	.size	__bswapdi2, .-__bswapdi2
.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r8,r27
	clr r9
	clr r10
	clr r11
	mov r12,r25
	mov r13,r26
	mov r14,r27
	clr r15
	clr r12
	clr r14
	clr r15
	clr r16
	mov r17,r24
	mov r18,r25
	mov r19,r26
	clr r16
	clr r17
	clr r19
	mov r27,r24
	clr r26
	clr r25
	clr r24
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	or r22,r8
	or r23,r9
	or r24,r10
	or r25,r11
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
	or r22,r16
	or r23,r17
	or r24,r18
	or r25,r19
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
	pop r9
	pop r8
	ret
	.size	__bswapsi2, .-__bswapsi2
.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	ldi r16,lo8(16)
	ldi r17,0
	ldi r18,0
	ldi r19,0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	ldi r24,1
	cpc r22,r24
	cpc r23,__zero_reg__
	brlo .L626
.L631:
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
.L626:
	ldi r24,lo8(16)
	ldi r25,0
	sub r24,r16
	sbc r25,r17
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r24
	brpl 1b
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	clr r24
	clr r26
	clr r27
	set
	clr r12
	bld r12,3
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L627
.L632:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L627:
	ldi r24,lo8(8)
	ldi r25,0
	sub r24,r12
	sbc r25,r13
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r24
	brpl 1b
	add r16,r12
	adc r17,r13
	adc r18,r14
	adc r19,r15
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	andi r24,240
	clr r25
	clr r26
	clr r27
	set
	clr r12
	bld r12,2
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L628
.L633:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L628:
	ldi r24,lo8(4)
	ldi r25,0
	sub r24,r12
	sbc r25,r13
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r24
	brpl 1b
	add r16,r12
	adc r17,r13
	adc r18,r14
	adc r19,r15
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	andi r24,12
	clr r25
	clr r26
	clr r27
	set
	clr r12
	bld r12,1
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L629
.L634:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L629:
	ldi r24,lo8(2)
	ldi r25,0
	sub r24,r12
	sbc r25,r13
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r24
	brpl 1b
	add r16,r12
	adc r17,r13
	adc r18,r14
	adc r19,r15
	ldi r24,lo8(1)
	sbrc r20,1
	ldi r24,0
.L630:
	set
	clr r12
	bld r12,1
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	sub r12,r20
	sbc r13,r21
	sbc r14,r22
	sbc r15,r23
	ldi r25,0
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__clzsi2, .-__clzsi2
.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
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
	brlt .L637
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlt .L638
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
	brlo .L639
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L640
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L636
.L637:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L636
.L638:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L636
.L639:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L636
.L640:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L636:
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
	rcall __cmpdi2
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
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
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	clr r26
	clr r27
	ldi r16,lo8(16)
	ldi r17,0
	ldi r18,0
	ldi r19,0
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L643
.L647:
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
.L643:
	mov r0,r16
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r0
	brpl 1b
	ldi r24,lo8(8)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	cp r20, __zero_reg__
	breq .L644
.L648:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L644:
	mov r0,r24
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r0
	brpl 1b
	add r16,r24
	adc r17,r25
	adc r18,r26
	adc r19,r27
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	andi r24,15
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L649
	ldi r24,lo8(4)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L645
.L649:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L645:
	mov r0,r24
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r0
	brpl 1b
	add r16,r24
	adc r17,r25
	adc r18,r26
	adc r19,r27
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	andi r24,3
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L650
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L646
.L650:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L646:
	mov r0,r24
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r0
	brpl 1b
	andi r20,3
	clr r21
	clr r22
	clr r23
	add r16,r24
	adc r17,r25
	adc r18,r26
	adc r19,r27
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	com r24
	com r25
	com r26
	com r27
	mov r30,r24
	andi r30,1<<0
	clr r31
	lsr r23
	ror r22
	ror r21
	ror r20
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	sub r24,r20
	sbc r25,r21
	sbc r26,r22
	sbc r27,r23
	clr r20
	clr r21
	sub r20,r30
	sbc r21,r31
	and r24,r20
	and r25,r21
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 36 */
.L__stack_usage = 36
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	sbrs r16,5
	rjmp .L652
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	std Y+15,__zero_reg__
	std Y+16,__zero_reg__
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	subi r16,32
	sbc r17,__zero_reg__
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r16
	brpl 1b
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	rjmp .L653
.L652:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L655
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	mov r0,r16
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r0
	brpl 1b
	std Y+13,r20
	std Y+14,r21
	std Y+15,r22
	std Y+16,r23
	ldi r18,lo8(32)
	ldi r19,0
	sub r18,r16
	sbc r19,r17
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r18
	brpl 1b
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	rjmp 2f
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	2:
	dec r16
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L653:
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
	rjmp .L654
.L655:
	ldd r8,Y+17
	ldd r9,Y+18
	ldd r10,Y+19
	ldd r11,Y+20
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
.L654:
	std Y+17,r8
	std Y+18,r9
	std Y+19,r10
	std Y+20,r11
	std Y+21,r12
	std Y+22,r13
	std Y+23,r14
	std Y+24,r15
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
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
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__lshrdi3, .-__lshrdi3
.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
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
	sbiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
/* stack size = 46 */
.L__stack_usage = 46
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	clr r20
	clr r21
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	ldd r4,Y+25
	ldd r5,Y+26
	ldd r6,Y+27
	ldd r7,Y+28
	clr r6
	clr r7
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r9,r27
	mov r8,r26
	clr r10
	clr r11
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	clr r20
	clr r21
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	mov r25,r15
	mov r24,r14
	clr r26
	clr r27
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __mulsi3
	add r8,r22
	adc r9,r23
	adc r10,r24
	adc r11,r25
	mov r26,r8
	mov r27,r9
	clr r25
	clr r24
	mov r13,r11
	mov r12,r10
	clr r14
	clr r15
	mov r9,r27
	mov r8,r26
	clr r10
	clr r11
	ldd r24,Y+25
	ldd r25,Y+26
	ldd r26,Y+27
	ldd r27,Y+28
	mov r5,r27
	mov r4,r26
	clr r6
	clr r7
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __mulsi3
	add r8,r22
	adc r9,r23
	adc r10,r24
	adc r11,r25
	mov r26,r8
	mov r27,r9
	clr r25
	clr r24
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	mov r17,r24
	mov r16,r25
	mov r3,r26
	mov r2,r27
	mov r9,r11
	mov r8,r10
	clr r10
	clr r11
	add r8,r12
	adc r9,r13
	adc r10,r14
	adc r11,r15
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __mulsi3
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
	std Y+9,r17
	std Y+10,r16
	std Y+11,r3
	std Y+12,r2
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	mov r18,r17
	mov r19,r16
	mov r20,r3
	mov r21,r2
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
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
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	__muldsi3, .-__muldsi3
.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
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
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 50 */
.L__stack_usage = 50
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
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __muldsi3
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
	std Y+21,r22
	std Y+22,r23
	ldd r24,Y+31
	std Y+23,r24
	std Y+24,r25
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	rcall __mulsi3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
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
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	std Y+29,r24
	std Y+30,r25
	std Y+31,r26
	std Y+32,r27
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
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
	rcall __negdi2
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	mov r21,r27
	mov r20,r26
	clr r22
	clr r23
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
	mov r20,r25
	mov r21,r26
	mov r22,r27
	clr r23
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
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
	eor r24,r20
	eor r25,r21
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
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__paritydi2, .-__paritydi2
.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
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
	mov r17,r25
	mov r16,r24
	clr r18
	clr r19
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	eor r24,r16
	eor r25,r17
	eor r26,r18
	eor r27,r19
	mov r20,r25
	mov r21,r26
	mov r22,r27
	clr r23
	eor r24,r20
	eor r25,r21
	eor r26,r22
	eor r27,r23
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
	eor r24,r20
	eor r25,r21
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
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	__paritysi2, .-__paritysi2
.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 36 */
.L__stack_usage = 36
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldi r16,lo8(1)
	rcall __lshrdi3
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	mov r24,r18
	andi r24,lo8(85)
	std Y+9,r24
	mov r25,r19
	andi r25,lo8(85)
	std Y+10,r25
	mov r26,r20
	andi r26,lo8(85)
	std Y+11,r26
	mov r27,r21
	andi r27,lo8(85)
	std Y+12,r27
	mov r24,r22
	andi r24,lo8(85)
	std Y+13,r24
	mov r25,r23
	andi r25,lo8(85)
	std Y+14,r25
	ldd r26,Y+23
	andi r26,lo8(85)
	ldd r27,Y+24
	andi r27,lo8(85)
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	mov r16,r26
	mov r17,r27
	rcall __subdi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldi r16,lo8(2)
	rcall __lshrdi3
	std Y+15,r24
	std Y+16,r25
	mov r24,r18
	andi r24,lo8(51)
	mov r8,r24
	mov r25,r19
	andi r25,lo8(51)
	mov r9,r25
	mov r26,r20
	andi r26,lo8(51)
	mov r10,r26
	mov r27,r21
	andi r27,lo8(51)
	mov r11,r27
	mov r24,r22
	andi r24,lo8(51)
	mov r12,r24
	mov r25,r23
	andi r25,lo8(51)
	mov r13,r25
	ldd r26,Y+15
	andi r26,lo8(51)
	mov r14,r26
	ldd r27,Y+16
	andi r27,lo8(51)
	mov r15,r27
	ldd r24,Y+1
	andi r24,lo8(51)
	std Y+9,r24
	ldd r25,Y+2
	andi r25,lo8(51)
	std Y+10,r25
	ldd r26,Y+3
	andi r26,lo8(51)
	std Y+11,r26
	ldd r27,Y+4
	andi r27,lo8(51)
	std Y+12,r27
	ldd r24,Y+5
	andi r24,lo8(51)
	std Y+13,r24
	ldd r25,Y+6
	andi r25,lo8(51)
	std Y+14,r25
	ldd r26,Y+7
	andi r26,lo8(51)
	std Y+15,r26
	ldd r27,Y+8
	andi r27,lo8(51)
	std Y+16,r27
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	ldd r14,Y+13
	ldd r15,Y+14
	mov r16,r26
	mov r17,r27
	rcall __adddi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldi r16,lo8(4)
	rcall __lshrdi3
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r16,Y+7
	ldd r17,Y+8
	rcall __adddi3
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r24,r18
	andi r24,lo8(15)
	std Y+1,r24
	mov r25,r9
	andi r25,lo8(15)
	std Y+2,r25
	mov r26,r10
	andi r26,lo8(15)
	std Y+3,r26
	mov r27,r11
	andi r27,lo8(15)
	std Y+4,r27
	mov r24,r12
	andi r24,lo8(15)
	std Y+5,r24
	mov r25,r13
	andi r25,lo8(15)
	std Y+6,r25
	mov r26,r14
	andi r26,lo8(15)
	std Y+7,r26
	mov r27,r15
	andi r27,lo8(15)
	std Y+8,r27
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	ldi r16,lo8(32)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	add r8,r24
	adc r9,r25
	adc r10,r26
	adc r11,r27
	mov r25,r11
	mov r24,r10
	clr r26
	clr r27
	add r8,r24
	adc r9,r25
	adc r10,r26
	adc r11,r27
	clr r27
	mov r26,r11
	mov r25,r10
	mov r24,r9
	add r24,r8
	adc r25,r9
	andi r24,127
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
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__popcountdi2, .-__popcountdi2
.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	lsr r23
	ror r22
	ror r21
	ror r20
	andi r20,85
	andi r21,85
	andi r22,85
	andi r23,85
	sub r24,r20
	sbc r25,r21
	sbc r26,r22
	sbc r27,r23
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r23
	ror r22
	ror r21
	ror r20
	andi r20,51
	andi r21,51
	andi r22,51
	andi r23,51
	andi r24,51
	andi r25,51
	andi r26,51
	andi r27,51
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
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
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	andi r24,15
	andi r25,15
	andi r26,15
	andi r27,15
	mov r21,r27
	mov r20,r26
	clr r22
	clr r23
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r20,r25
	mov r21,r26
	mov r22,r27
	clr r23
	add r24,r20
	adc r25,r21
	andi r24,63
	clr r25
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	__popcountsi2, .-__popcountsi2
.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r16,r20
	mov r17,r21
	bst r21,7
	clr r14
	clr r15
	bld r14,0
	mov __tmp_reg__,r31
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	ldi r31,lo8(-128)
	mov r6,r31
	ldi r31,lo8(63)
	mov r7,r31
	mov r31,__tmp_reg__
.L667:
	sbrs r16,0
	rjmp .L664
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
.L664:
	mov r24,r16
	mov r25,r17
	tst r25
	brge .L665
	adiw r24,1
.L665:
	mov r16,r24
	mov r17,r25
	asr r17
	ror r16
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L666
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L667
.L666:
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	or r14,r15
	breq .L668
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	rjmp .L668
.L668:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	__powidf2, .-__powidf2
.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r16,r20
	mov r17,r21
	bst r21,7
	clr r14
	clr r15
	bld r14,0
	mov __tmp_reg__,r31
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	ldi r31,lo8(-128)
	mov r6,r31
	ldi r31,lo8(63)
	mov r7,r31
	mov r31,__tmp_reg__
.L674:
	sbrs r16,0
	rjmp .L671
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
.L671:
	mov r24,r16
	mov r25,r17
	tst r25
	brge .L672
	adiw r24,1
.L672:
	mov r16,r24
	mov r17,r25
	asr r17
	ror r16
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L673
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L674
.L673:
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	or r14,r15
	breq .L675
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	rjmp .L675
.L675:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	__powisf2, .-__powisf2
.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
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
	brlo .L679
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	ldd r20,Y+13
	ldd r21,Y+14
	ldd r22,Y+15
	ldd r23,Y+16
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L680
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
	brlo .L681
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r23,Y+12
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L682
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L678
.L679:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L678
.L680:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L678
.L681:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L678
.L682:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L678:
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
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
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+1
	std Y+17,r24
	ldd r24,Y+2
	std Y+18,r24
	ldd r24,Y+3
	std Y+19,r24
	ldd r24,Y+4
	std Y+20,r24
	ldd r24,Y+5
	std Y+21,r24
	ldd r24,Y+6
	std Y+22,r24
	ldd r24,Y+7
	std Y+23,r24
	std Y+24,r25
	mov r16,r22
	mov r17,r23
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	rcall __ucmpdi2
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
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
	pop r11
	pop r10
	ret
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
.global	__divsf3
.global	__mulsi3
.global	__fixsfsi
.global	__floatundisf
.global	__floatunsisf
.global	__clzdi2
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
