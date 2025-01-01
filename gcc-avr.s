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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r30,r22
	mov r31,r23
	mov r26,r20
	mov r27,r21
	cp r30,r18
	cpc r31,r19
	brsh .L2
	add r30,r26
	adc r31,r27
	add r26,r18
	adc r27,r19
	mov r20,r18
	mov r21,r19
	rjmp .L3
.L4:
	ld r24,-Z
	st -X,r24
.L3:
	cp r26,r20
	cpc r27,r21
	brne .L4
.L5:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
.L2:
	cp r18,r30
	cpc r19,r31
	breq .L5
	mov r28,r18
	mov r29,r19
	mov r20,r26
	mov r21,r27
	add r20,r30
	adc r21,r31
	rjmp .L6
.L7:
	adiw r30,1
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	mov r26,r24
	mov r27,r25
	ld r24,X
	st Y+,r24
.L6:
	cp r30,r20
	cpc r31,r21
	brne .L7
	rjmp .L5
	.size	memmove, .-memmove
.global	memccpy
	.type	memccpy, @function
memccpy:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r26,r18
	mov r27,r19
	ldi r21,0
	mov r16,r22
	mov r17,r23
	mov r30,r24
	mov r31,r25
	rjmp .L9
.L11:
	sbiw r26,1
.L9:
	mov r22,r30
	mov r23,r31
	sbiw r26,0
	breq .L10
	mov r28,r16
	mov r29,r17
	ld r25,Y+
	mov r16,r28
	mov r17,r29
	st Z+,r25
	mov r18,r30
	mov r19,r31
	subi r18,1
	sbc r19,__zero_reg__
	mov r28,r18
	mov r29,r19
	ld r25,Y
	cp r25,r20
	cpc __zero_reg__,r21
	brne .L11
.L10:
	mov r24,r22
	mov r25,r23
	adiw r24,1
	or r26,r27
	breq .L14
.L12:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L14:
	ldi r24,0
	ldi r25,0
	rjmp .L12
	.size	memccpy, .-memccpy
.global	memchr
	.type	memchr, @function
memchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r20
	mov r19,r21
	ldi r23,0
	mov r30,r24
	mov r31,r25
	rjmp .L16
.L18:
	subi r18,1
	sbc r19,__zero_reg__
.L16:
	mov r24,r30
	mov r25,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L17
	ld r20,Z+
	cp r20,r22
	cpc __zero_reg__,r23
	brne .L18
.L17:
	or r18,r19
	breq .L21
.L19:
/* epilogue start */
	ret
.L21:
	ldi r24,0
	ldi r25,0
	ret
	.size	memchr, .-memchr
.global	memcmp
	.type	memcmp, @function
memcmp:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r20
	mov r19,r21
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	rjmp .L23
.L25:
	subi r18,1
	sbc r19,__zero_reg__
.L23:
	mov r28,r30
	mov r29,r31
	mov r20,r26
	mov r21,r27
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L24
	ld r25,X+
	ld r24,Z+
	cp r25,r24
	breq .L25
.L24:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L26
	mov r30,r20
	mov r31,r21
	ld r24,Z
	ld r25,Y
	sub r24,r25
	sbc r25,r25
.L26:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	memcmp, .-memcmp
.global	memcpy
	.type	memcpy, @function
memcpy:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r22
	mov r19,r23
	mov r30,r24
	mov r31,r25
	mov r22,r18
	mov r23,r19
	add r22,r20
	adc r23,r21
	rjmp .L29
.L30:
	subi r18,-1
	sbci r19,-1
	mov r26,r18
	mov r27,r19
	ld r21,-X
	st Z+,r21
.L29:
	cp r18,r22
	cpc r19,r23
	brne .L30
/* epilogue start */
	ret
	.size	memcpy, .-memcpy
.global	memrchr
	.type	memrchr, @function
memrchr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
	mov r29,r25
	ldi r23,0
	mov r30,r28
	mov r31,r29
	add r30,r20
	adc r31,r21
	mov r20,r28
	mov r21,r29
	mov r18,r28
	mov r19,r29
	com r18
	com r19
.L32:
	mov r26,r18
	mov r27,r19
	add r26,r30
	adc r27,r31
	cp r30,r20
	cpc r31,r21
	breq .L36
	ld r25,-Z
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L32
	mov r24,r28
	mov r25,r29
	add r24,r26
	adc r25,r27
	rjmp .L33
.L36:
	ldi r24,0
	ldi r25,0
.L33:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	memrchr, .-memrchr
.global	memset
	.type	memset, @function
memset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	add r20,r18
	adc r21,r19
	mov r30,r18
	mov r31,r19
	rjmp .L38
.L39:
	st Z+,r22
.L38:
	cp r30,r20
	cpc r31,r21
	brne .L39
	mov r24,r18
	mov r25,r19
/* epilogue start */
	ret
	.size	memset, .-memset
.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
.L41:
	mov r24,r30
	mov r25,r31
	ld r18,X+
	st Z+,r18
	mov r28,r30
	mov r29,r31
	ld r18,-Y
	cpse r18,__zero_reg__
	rjmp .L41
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	stpcpy, .-stpcpy
.global	strchrnul
	.type	strchrnul, @function
strchrnul:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r23,0
	mov r30,r24
	mov r31,r25
.L45:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	cp r18, __zero_reg__
	breq .L44
	mov r26,r30
	mov r27,r31
	ld r18,-X
	cp r18,r22
	cpc __zero_reg__,r23
	brne .L45
.L44:
/* epilogue start */
	ret
	.size	strchrnul, .-strchrnul
.global	strchr
	.type	strchr, @function
strchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r22
	mov r21,r23
	mov r30,r24
	mov r31,r25
.L49:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r20
	cpc r0,r21
	breq .L48
	mov r26,r30
	mov r27,r31
	ld r24,-X
	cpse r24,__zero_reg__
	rjmp .L49
	ldi r25,0
.L48:
/* epilogue start */
	ret
	.size	strchr, .-strchr
.global	strcmp
	.type	strcmp, @function
strcmp:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
.L54:
	mov r18,r26
	mov r19,r27
	mov r20,r30
	mov r21,r31
	ld r25,Z+
	ld r24,X+
	cpse r25,r24
	rjmp .L53
	mov r28,r30
	mov r29,r31
	ld r24,-Y
	cpse r24,__zero_reg__
	rjmp .L54
.L53:
	mov r30,r20
	mov r31,r21
	ld r24,Z
	mov r30,r18
	mov r31,r19
	ld r25,Z
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r30,r20
	mov r31,r21
.L57:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	cpse r25,__zero_reg__
	rjmp .L57
	mov r24,r18
	mov r25,r19
	sub r24,r20
	sbc r25,r21
/* epilogue start */
	ret
	.size	strlen, .-strlen
.global	strncmp
	.type	strncmp, @function
strncmp:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r28,r20
	mov r29,r21
	ldi r24,0
	ldi r25,0
	sbiw r28,0
	breq .L60
	mov r30,r18
	mov r31,r19
	mov r26,r22
	mov r27,r23
	add r18,r28
	adc r19,r29
.L62:
	mov r20,r26
	mov r21,r27
	mov r22,r30
	mov r23,r31
	ld r24,Z+
	cp r24, __zero_reg__
	breq .L61
	ld r24,X
	cp r24, __zero_reg__
	breq .L61
	cp r30,r18
	cpc r31,r19
	breq .L61
	mov r28,r30
	mov r29,r31
	ld r25,-Y
	ld r24,X+
	cp r25,r24
	breq .L62
.L61:
	mov r30,r22
	mov r31,r23
	ld r24,Z
	mov r30,r20
	mov r31,r21
	ld r25,Z
	sub r24,r25
	sbc r25,r25
.L60:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strncmp, .-strncmp
.global	swab
	.type	swab, @function
swab:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	mov r26,r22
	mov r27,r23
	mov r30,r18
	mov r31,r19
	add r20,r18
	adc r21,r19
	rjmp .L66
.L67:
	ldd r24,Z+1
	st X,r24
	ld r24,Z
	adiw r26,1
	st X,r24
	sbiw r26,1
	adiw r26,2
	adiw r30,2
.L66:
	mov r24,r20
	mov r25,r21
	sub r24,r30
	sbc r25,r31
	sbiw r24,2
	brge .L67
/* epilogue start */
	ret
	.size	swab, .-swab
.global	isalpha
	.type	isalpha, @function
isalpha:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ori r24,32
	mov r18,r24
	mov r19,r25
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L69
	ldi r24,0
.L69:
	ldi r25,0
/* epilogue start */
	ret
	.size	isalpha, .-isalpha
.global	isascii
	.type	isascii, @function
isascii:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	ldi r24,lo8(1)
	cpi r18,-128
	cpc r19,__zero_reg__
	brlo .L71
	ldi r24,0
.L71:
	ldi r25,0
/* epilogue start */
	ret
	.size	isascii, .-isascii
.global	isblank
	.type	isblank, @function
isblank:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	cpi r18,32
	cpc r19,__zero_reg__
	breq .L74
	cpi r18,9
	cpc r19,__zero_reg__
	breq .L76
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L76:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L74:
	ldi r24,lo8(1)
	ldi r25,0
	ret
	.size	isblank, .-isblank
.global	iscntrl
	.type	iscntrl, @function
iscntrl:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	cpi r18,32
	cpc r19,__zero_reg__
	brlo .L79
	cpi r18,127
	cpc r19,__zero_reg__
	breq .L81
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L81:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L79:
	ldi r24,lo8(1)
	ldi r25,0
	ret
	.size	iscntrl, .-iscntrl
.global	isdigit
	.type	isdigit, @function
isdigit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	subi r18,48
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L83
	ldi r24,0
.L83:
	ldi r25,0
/* epilogue start */
	ret
	.size	isdigit, .-isdigit
.global	isgraph
	.type	isgraph, @function
isgraph:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	subi r18,33
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,94
	cpc r19,__zero_reg__
	brlo .L85
	ldi r24,0
.L85:
	ldi r25,0
/* epilogue start */
	ret
	.size	isgraph, .-isgraph
.global	islower
	.type	islower, @function
islower:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L87
	ldi r24,0
.L87:
	ldi r25,0
/* epilogue start */
	ret
	.size	islower, .-islower
.global	isprint
	.type	isprint, @function
isprint:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	subi r18,32
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,95
	cpc r19,__zero_reg__
	brlo .L89
	ldi r24,0
.L89:
	ldi r25,0
/* epilogue start */
	ret
	.size	isprint, .-isprint
.global	isspace
	.type	isspace, @function
isspace:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	cpi r18,32
	cpc r19,__zero_reg__
	breq .L92
	subi r18,9
	sbc r19,__zero_reg__
	cpi r18,5
	cpc r19,__zero_reg__
	brsh .L93
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L92:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L93:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
	.size	isspace, .-isspace
.global	isupper
	.type	isupper, @function
isupper:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	subi r18,65
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L95
	ldi r24,0
.L95:
	ldi r25,0
/* epilogue start */
	ret
	.size	isupper, .-isupper
.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	cpi r18,32
	cpc r19,__zero_reg__
	brlo .L98
	mov r24,r18
	mov r25,r19
	subi r24,127
	sbc r25,__zero_reg__
	cpi r24,33
	cpc r25,__zero_reg__
	brlo .L99
	subi r24,-87
	sbci r25,31
	sbiw r24,2
	brlo .L100
	subi r18,-7
	sbci r19,-1
	cpi r18,3
	cpc r19,__zero_reg__
	brsh .L101
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L98:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L99:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L100:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L101:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
	.size	iswcntrl, .-iswcntrl
.global	iswdigit
	.type	iswdigit, @function
iswdigit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	subi r18,48
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L103
	ldi r24,0
.L103:
	ldi r25,0
/* epilogue start */
	ret
	.size	iswdigit, .-iswdigit
.global	iswprint
	.type	iswprint, @function
iswprint:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	cpi r18,-1
	cpc r19,__zero_reg__
	brlo .L112
	cpi r18,40
	ldi r20,32
	cpc r19,r20
	brlo .L108
	mov r24,r18
	mov r25,r19
	subi r24,42
	sbci r25,32
	cpi r24,-42
	ldi r20,-73
	cpc r25,r20
	brlo .L109
	subi r24,-42
	sbci r25,-65
	cpi r24,-7
	sbci r25,31
	brlo .L110
	andi r18,254
	cpi r18,-2
	sbci r19,-1
	breq .L111
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L112:
	subi r18,-1
	sbci r19,-1
	andi r18,127
	clr r19
	ldi r24,lo8(1)
	cpi r18,33
	cpc r19,__zero_reg__
	brsh .L106
	ldi r24,0
.L106:
	ldi r25,0
	ret
.L108:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L109:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L110:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L111:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
	.size	iswprint, .-iswprint
.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	mov r24,r18
	mov r25,r19
	sbiw r24,48
	sbiw r24,10
	brlo .L115
	ori r18,32
	subi r18,97
	sbc r19,__zero_reg__
	cpi r18,6
	cpc r19,__zero_reg__
	brsh .L116
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L115:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L116:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
	.size	iswxdigit, .-iswxdigit
.global	toascii
	.type	toascii, @function
toascii:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	andi r24,127
	clr r25
/* epilogue start */
	ret
	.size	toascii, .-toascii
.global	fdim
	.type	fdim, @function
fdim:
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
	std Y+17,r22
	std Y+18,r23
	mov r3,r24
	mov r2,r25
	mov r17,r18
	mov r16,r19
	std Y+28,r20
	std Y+27,r21
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L121
	ldd r25,Y+28
	ldd r24,Y+27
	mov r12,r17
	mov r13,r16
	mov r14,r25
	mov r15,r24
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+9,r17
	std Y+10,r16
	std Y+11,r25
	std Y+12,r24
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L122
	mov r4,r17
	mov r5,r16
	mov r6,r14
	mov r7,r15
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+13,r8
	std Y+14,r9
	std Y+15,r3
	std Y+16,r2
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L125
	brlt .L125
	std Y+19,r17
	std Y+20,r16
	std Y+21,r14
	std Y+22,r15
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	std Y+23,r8
	std Y+24,r9
	std Y+25,r3
	std Y+26,r2
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	rcall __subsf3
.L119:
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
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
.L121:
	ldd r22,Y+17
	ldd r23,Y+18
	mov r24,r3
	mov r25,r2
	rjmp .L119
.L122:
	mov r22,r17
	mov r23,r16
	ldd r24,Y+28
	ldd r25,Y+27
	rjmp .L119
.L125:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L119
	.size	fdim, .-fdim
.global	fdimf
	.type	fdimf, @function
fdimf:
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
	std Y+17,r22
	std Y+18,r23
	mov r3,r24
	mov r2,r25
	mov r17,r18
	mov r16,r19
	std Y+28,r20
	std Y+27,r21
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L129
	ldd r25,Y+28
	ldd r24,Y+27
	mov r12,r17
	mov r13,r16
	mov r14,r25
	mov r15,r24
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+9,r17
	std Y+10,r16
	std Y+11,r25
	std Y+12,r24
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L130
	mov r4,r17
	mov r5,r16
	mov r6,r14
	mov r7,r15
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+13,r8
	std Y+14,r9
	std Y+15,r3
	std Y+16,r2
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L133
	brlt .L133
	std Y+19,r17
	std Y+20,r16
	std Y+21,r14
	std Y+22,r15
	ldd r18,Y+19
	ldd r19,Y+20
	ldd r20,Y+21
	ldd r21,Y+22
	std Y+23,r8
	std Y+24,r9
	std Y+25,r3
	std Y+26,r2
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+25
	ldd r25,Y+26
	rcall __subsf3
.L127:
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
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
.L129:
	ldd r22,Y+17
	ldd r23,Y+18
	mov r24,r3
	mov r25,r2
	rjmp .L127
.L130:
	mov r22,r17
	mov r23,r16
	ldd r24,Y+28
	ldd r25,Y+27
	rjmp .L127
.L133:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L127
	.size	fdimf, .-fdimf
.global	fmax
	.type	fmax, @function
fmax:
	push r2
	push r3
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
	sbiw r28,22
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 22 */
/* stack size = 38 */
.L__stack_usage = 38
	mov r6,r22
	mov r7,r23
	std Y+22,r24
	std Y+21,r25
	mov r2,r18
	mov r3,r19
	mov r16,r20
	mov r17,r21
	ldd r25,Y+22
	ldd r24,Y+21
	mov r12,r22
	mov r13,r23
	mov r14,r25
	mov r15,r24
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+1,r22
	std Y+2,r23
	std Y+3,r25
	std Y+4,r24
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L138
	mov r8,r2
	mov r9,r3
	mov r10,r16
	mov r11,r17
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+9,r2
	std Y+10,r3
	std Y+11,r16
	std Y+12,r17
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L139
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L136
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L140
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
.L135:
	ldd r19,Y+9
	ldd r18,Y+1
	std Y+5,r25
	std Y+6,r24
	std Y+7,r19
	std Y+8,r18
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
/* epilogue start */
	adiw r28,22
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
	pop r3
	pop r2
	ret
.L136:
	std Y+13,r2
	std Y+14,r3
	std Y+15,r16
	std Y+16,r17
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r25,Y+22
	ldd r24,Y+21
	std Y+17,r6
	std Y+18,r7
	std Y+19,r25
	std Y+20,r24
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L143
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L135
.L138:
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L135
.L139:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L135
.L140:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L135
.L143:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L135
	.size	fmax, .-fmax
.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push r2
	push r3
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
	sbiw r28,22
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 22 */
/* stack size = 38 */
.L__stack_usage = 38
	mov r6,r22
	mov r7,r23
	std Y+22,r24
	std Y+21,r25
	mov r2,r18
	mov r3,r19
	mov r16,r20
	mov r17,r21
	ldd r25,Y+22
	ldd r24,Y+21
	mov r12,r22
	mov r13,r23
	mov r14,r25
	mov r15,r24
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+1,r22
	std Y+2,r23
	std Y+3,r25
	std Y+4,r24
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L148
	mov r8,r2
	mov r9,r3
	mov r10,r16
	mov r11,r17
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+9,r2
	std Y+10,r3
	std Y+11,r16
	std Y+12,r17
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L149
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L146
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L150
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
.L145:
	ldd r19,Y+9
	ldd r18,Y+1
	std Y+5,r25
	std Y+6,r24
	std Y+7,r19
	std Y+8,r18
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
/* epilogue start */
	adiw r28,22
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
	pop r3
	pop r2
	ret
.L146:
	std Y+13,r2
	std Y+14,r3
	std Y+15,r16
	std Y+16,r17
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r25,Y+22
	ldd r24,Y+21
	std Y+17,r6
	std Y+18,r7
	std Y+19,r25
	std Y+20,r24
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L153
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L145
.L148:
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L145
.L149:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L145
.L150:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L145
.L153:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L145
	.size	fmaxf, .-fmaxf
.global	fmaxl
	.type	fmaxl, @function
fmaxl:
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
	std Y+8,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+4,r22
	std Y+5,r23
	std Y+6,r24
	std Y+7,r25
	mov r2,r10
	mov r3,r11
	mov r4,r12
	mov r5,r13
	mov r6,r14
	mov r7,r15
	mov r8,r16
	mov r9,r17
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
	rjmp .L158
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
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L159
	mov r24,r9
	ldi r25,0
	andi r24,128
	clr r25
	ldd r18,Y+7
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L156
	ldd r18,Y+7
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L160
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
.L155:
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
.L156:
	ldd r18,Y+8
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	ldd r25,Y+7
	rcall __ltdf2
	cp r24, __zero_reg__
	breq .L163
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rjmp .L155
.L158:
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rjmp .L155
.L159:
	ldd r18,Y+8
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	ldd r25,Y+7
	rjmp .L155
.L160:
	ldd r18,Y+8
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	ldd r25,Y+7
	rjmp .L155
.L163:
	ldd r18,Y+8
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	ldd r25,Y+7
	rjmp .L155
	.size	fmaxl, .-fmaxl
.global	fmin
	.type	fmin, @function
fmin:
	push r2
	push r3
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
	sbiw r28,22
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 22 */
/* stack size = 38 */
.L__stack_usage = 38
	mov r6,r22
	mov r7,r23
	mov r2,r24
	mov r3,r25
	mov r16,r18
	mov r17,r19
	std Y+22,r20
	std Y+21,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L168
	ldd r25,Y+22
	ldd r24,Y+21
	mov r8,r16
	mov r9,r17
	mov r10,r25
	mov r11,r24
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+9,r16
	std Y+10,r17
	std Y+11,r25
	std Y+12,r24
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L169
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r3
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L166
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L170
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
.L165:
	ldd r25,Y+9
	ldd r24,Y+1
	std Y+5,r16
	std Y+6,r17
	std Y+7,r25
	std Y+8,r24
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
/* epilogue start */
	adiw r28,22
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
	pop r3
	pop r2
	ret
.L166:
	ldd r25,Y+22
	ldd r24,Y+21
	std Y+13,r16
	std Y+14,r17
	std Y+15,r25
	std Y+16,r24
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	std Y+17,r6
	std Y+18,r7
	std Y+19,r2
	std Y+20,r3
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L173
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L165
.L168:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L165
.L169:
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L165
.L170:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L165
.L173:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L165
	.size	fmin, .-fmin
.global	fminf
	.type	fminf, @function
fminf:
	push r2
	push r3
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
	sbiw r28,22
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 22 */
/* stack size = 38 */
.L__stack_usage = 38
	mov r6,r22
	mov r7,r23
	mov r2,r24
	mov r3,r25
	mov r16,r18
	mov r17,r19
	std Y+22,r20
	std Y+21,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L178
	ldd r25,Y+22
	ldd r24,Y+21
	mov r8,r16
	mov r9,r17
	mov r10,r25
	mov r11,r24
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+9,r16
	std Y+10,r17
	std Y+11,r25
	std Y+12,r24
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L179
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r3
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L176
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L180
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
.L175:
	ldd r25,Y+9
	ldd r24,Y+1
	std Y+5,r16
	std Y+6,r17
	std Y+7,r25
	std Y+8,r24
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
/* epilogue start */
	adiw r28,22
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
	pop r3
	pop r2
	ret
.L176:
	ldd r25,Y+22
	ldd r24,Y+21
	std Y+13,r16
	std Y+14,r17
	std Y+15,r25
	std Y+16,r24
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	std Y+17,r6
	std Y+18,r7
	std Y+19,r2
	std Y+20,r3
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L183
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L175
.L178:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L175
.L179:
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L175
.L180:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L175
.L183:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L175
	.size	fminf, .-fminf
.global	fminl
	.type	fminl, @function
fminl:
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
	mov r2,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+4,r22
	std Y+5,r23
	mov r3,r24
	std Y+8,r25
	mov r4,r10
	mov r5,r11
	mov r6,r12
	mov r7,r13
	mov r8,r14
	mov r9,r15
	std Y+6,r16
	std Y+7,r17
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
	rjmp .L188
	mov r10,r4
	mov r11,r5
	mov r12,r6
	mov r13,r7
	mov r14,r8
	mov r15,r9
	ldd r16,Y+6
	ldd r17,Y+7
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	mov r24,r16
	mov r25,r17
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L189
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	ldd r18,Y+8
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L186
	ldd r18,Y+8
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L190
	mov r18,r2
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	mov r24,r3
	ldd r25,Y+8
.L185:
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
.L186:
	ldd r16,Y+6
	ldd r17,Y+7
	mov r18,r2
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	mov r24,r3
	ldd r25,Y+8
	rcall __ltdf2
	cp r24, __zero_reg__
	breq .L193
	mov r18,r2
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	mov r24,r3
	ldd r25,Y+8
	rjmp .L185
.L188:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+6
	ldd r25,Y+7
	rjmp .L185
.L189:
	mov r18,r2
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	mov r24,r3
	ldd r25,Y+8
	rjmp .L185
.L190:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+6
	ldd r25,Y+7
	rjmp .L185
.L193:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+6
	ldd r25,Y+7
	rjmp .L185
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	ldi r30,lo8(s.0)
	ldi r31,hi8(s.0)
	rjmp .L195
.L196:
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	andi r24,63
	clr r25
	clr r26
	clr r27
	subi r24,lo8(-(digits))
	sbci r25,hi8(-(digits))
	mov r26,r24
	mov r27,r25
	ld r24,X
	st Z+,r24
	set
	bld __zero_reg__,6-1
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	lsr __zero_reg__
	brne 1b
.L195:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	cpc r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L196
	st Z,__zero_reg__
	ldi r24,lo8(s.0)
	ldi r25,hi8(s.0)
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,1
.global	srand
	.type	srand, @function
srand:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	sbiw r24,1
	sts seed,r24
	sts seed+1,r25
	sts seed+2,__zero_reg__
	sts seed+3,__zero_reg__
	sts seed+4,__zero_reg__
	sts seed+5,__zero_reg__
	sts seed+6,__zero_reg__
	sts seed+7,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	lds r18,seed
	lds r19,seed+1
	lds r20,seed+2
	lds r21,seed+3
	lds r22,seed+4
	lds r23,seed+5
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
	lds r24,seed+6
	lds r25,seed+7
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
	ldi r16,lo8(33)
	rcall __lshrdi3
	mov r24,r18
	mov r25,r19
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	sbiw r26,0
	breq .L202
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+1,r25
	st Z,r24
	std Z+3,r27
	std Z+2,r26
	st X+,r30
	st X,r31
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L199
	mov r26,r24
	mov r27,r25
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L199:
/* epilogue start */
	ret
.L202:
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ret
	.size	insque, .-insque
.global	remque
	.type	remque, @function
remque:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L204
	mov r26,r24
	mov r27,r25
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
.L204:
	ldd r24,Z+2
	ldd r25,Z+3
	sbiw r24,0
	breq .L203
	mov r26,r24
	mov r27,r25
	ld r24,Z
	ldd r25,Z+1
	st X+,r24
	st X,r25
.L203:
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	mov r3,r24
	mov r2,r25
	mov r4,r22
	mov r5,r23
	mov r6,r20
	mov r7,r21
	mov r14,r18
	mov r15,r19
	mov r12,r16
	mov r13,r17
	mov r30,r6
	mov r31,r7
	ld r8,Z
	ldd r9,Z+1
	mov r16,r4
	mov r17,r5
	ldi r28,0
	ldi r29,0
	rjmp .L207
.L208:
	adiw r28,1
.L207:
	cp r28,r8
	cpc r29,r9
	breq .L211
	mov r22,r16
	mov r23,r17
	mov r24,r3
	mov r25,r2
	mov r30,r12
	mov r31,r13
	icall
	add r16,r14
	adc r17,r15
	or r24,r25
	brne .L208
	mov r24,r28
	mov r25,r29
	mov r22,r14
	mov r23,r15
	rcall __mulhi3
	mov r10,r4
	mov r11,r5
	add r10,r24
	adc r11,r25
	rjmp .L209
.L211:
	mov r24,r8
	mov r25,r9
	adiw r24,1
	mov r30,r6
	mov r31,r7
	std Z+1,r25
	st Z,r24
	mov r24,r14
	mov r25,r15
	mov r22,r8
	mov r23,r9
	rcall __mulhi3
	mov r20,r14
	mov r21,r15
	mov r22,r3
	mov r23,r2
	add r24,r4
	adc r25,r5
	rcall memcpy
	mov r10,r24
	mov r11,r25
.L209:
	mov r24,r10
	mov r25,r11
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r6,r24
	mov r7,r25
	mov r10,r22
	mov r11,r23
	mov r14,r18
	mov r15,r19
	mov r12,r16
	mov r13,r17
	mov r30,r20
	mov r31,r21
	ld r8,Z
	ldd r9,Z+1
	mov r16,r10
	mov r17,r11
	ldi r28,0
	ldi r29,0
	rjmp .L213
.L214:
	adiw r28,1
.L213:
	cp r28,r8
	cpc r29,r9
	breq .L217
	mov r22,r16
	mov r23,r17
	mov r24,r6
	mov r25,r7
	mov r30,r12
	mov r31,r13
	icall
	add r16,r14
	adc r17,r15
	or r24,r25
	brne .L214
	mov r24,r28
	mov r25,r29
	mov r22,r14
	mov r23,r15
	rcall __mulhi3
	add r24,r10
	adc r25,r11
	rjmp .L215
.L217:
	ldi r24,0
	ldi r25,0
.L215:
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
	.size	lfind, .-lfind
.global	abs
	.type	abs, @function
abs:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	tst r19
	brlt .L220
.L219:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	ret
.L220:
	neg r19
	neg r18
	sbc r19,__zero_reg__
	rjmp .L219
	.size	abs, .-abs
.global	atoi
	.type	atoi, @function
atoi:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	mov r29,r25
.L222:
	mov r16,r28
	mov r17,r29
	ld r24,Y+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L222
	mov r30,r16
	mov r31,r17
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L228
	ldi r20,lo8(1)
	ldi r21,0
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L223
	ldi r20,0
	ldi r21,0
	rjmp .L224
.L228:
	ldi r20,0
	ldi r21,0
.L223:
	subi r16,-1
	sbci r17,-1
.L224:
	mov r30,r16
	mov r31,r17
	ldi r22,0
	ldi r23,0
	rjmp .L225
.L226:
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
.L225:
	ld r18,Z+
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	subi r18,48
	sbc r19,__zero_reg__
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L226
	mov r24,r22
	mov r25,r23
	or r20,r21
	brne .L227
	clr r24
	clr r25
	sub r24,r22
	sbc r25,r23
.L227:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	atoi, .-atoi
.global	atol
	.type	atol, @function
atol:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r29,r25
.L233:
	mov r14,r28
	mov r15,r29
	ld r24,Y+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L233
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L239
	cpi r18,45
	cpc r19,__zero_reg__
	brne .L240
	ldi r18,lo8(1)
	ldi r19,0
.L234:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
.L235:
	mov r30,r14
	mov r31,r15
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L236
.L239:
	ldi r18,0
	ldi r19,0
	rjmp .L234
.L240:
	ldi r18,0
	ldi r19,0
	rjmp .L235
.L237:
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
.L236:
	ld r24,Z+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .L237
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	or r18,r19
	brne .L238
	clr r22
	clr r23
	clr r24
	clr r25
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
.L238:
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	atol, .-atol
.global	atoll
	.type	atoll, @function
atoll:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	mov r28,r24
	mov r29,r25
.L244:
	mov r14,r28
	mov r15,r29
	ld r24,Y+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L244
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L250
	ldi r28,lo8(1)
	ldi r29,0
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L245
	ldi r28,0
	ldi r29,0
	rjmp .L246
.L250:
	ldi r28,0
	ldi r29,0
.L245:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
.L246:
	mov r26,r14
	mov r27,r15
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	mov r9,__zero_reg__
	ldi r17,0
	rjmp .L247
.L248:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r9
	mov r25,r17
	ldi r16,lo8(2)
	rcall __ashldi3
	mov r16,r9
	rcall __adddi3
	ldi r16,lo8(1)
	rcall __ashldi3
	mov r30,r26
	mov r31,r27
	sbiw r30,1
	ld r30,Z
	mov __tmp_reg__,r30
	lsl r0
	sbc r31,r31
	sbiw r30,48
	mov r17,r31
	lsl r17
	sbc r17,r17
	mov r10,r30
	mov r11,r31
	mov r12,r17
	mov r13,r17
	mov r14,r17
	mov r15,r17
	mov r16,r17
	rcall __subdi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r9,r24
	mov r17,r25
.L247:
	ld r30,X+
	mov __tmp_reg__,r30
	lsl r0
	sbc r31,r31
	sbiw r30,48
	sbiw r30,10
	brlo .L248
	or r28,r29
	brne .L252
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r9
	mov r25,r17
	rcall __negdi2
.L249:
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
	ret
.L252:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r9
	mov r25,r17
	rjmp .L249
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r6,r24
	mov r7,r25
	mov r10,r22
	mov r11,r23
	mov r28,r20
	mov r29,r21
	mov r12,r18
	mov r13,r19
	mov r8,r16
	mov r9,r17
	rjmp .L255
.L262:
	lsr r29
	ror r28
.L255:
	sbiw r28,0
	breq .L261
	mov r24,r28
	mov r25,r29
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
	mov r24,r6
	mov r25,r7
	mov r30,r8
	mov r31,r9
	icall
	mov r14,r24
	mov r15,r25
	tst r15
	brlt .L262
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L260
	brlt .L260
	mov r10,r16
	mov r11,r17
	add r10,r12
	adc r11,r13
	mov r24,r28
	mov r25,r29
	lsr r25
	ror r24
	sbiw r28,1
	sub r28,r24
	sbc r29,r25
	rjmp .L255
.L261:
	ldi r24,0
	ldi r25,0
.L258:
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
.L260:
	mov r24,r16
	mov r25,r17
	rjmp .L258
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r4,r24
	mov r5,r25
	mov r8,r18
	mov r9,r19
	mov r10,r16
	mov r11,r17
	mov r28,r20
	mov r29,r21
	mov r6,r22
	mov r7,r23
	rjmp .L264
.L266:
	asr r29
	ror r28
.L264:
	sbiw r28,0
	breq .L269
	mov r24,r28
	mov r25,r29
	asr r25
	ror r24
	mov r22,r8
	mov r23,r9
	rcall __mulhi3
	mov r16,r6
	mov r17,r7
	add r16,r24
	adc r17,r25
	mov r20,r14
	mov r21,r15
	mov r22,r16
	mov r23,r17
	mov r24,r4
	mov r25,r5
	mov r30,r10
	mov r31,r11
	icall
	mov r12,r24
	mov r13,r25
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L268
	brlt .L266
	mov r6,r16
	mov r7,r17
	add r6,r8
	adc r7,r9
	sbiw r28,1
	rjmp .L266
.L269:
	ldi r24,0
	ldi r25,0
.L265:
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
.L268:
	mov r24,r16
	mov r25,r17
	rjmp .L265
	.size	bsearch_r, .-bsearch_r
.global	div
	.type	div, @function
div:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
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
	pop r17
	pop r16
	ret
	.size	div, .-div
.global	imaxabs
	.type	imaxabs, @function
imaxabs:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L272
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L272:
	mov r18,r7
	mov r19,r8
	mov r20,r9
	mov r21,r10
	mov r22,r11
	mov r23,r12
	mov r24,r13
	mov r25,r14
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
	std Y+17,r24
	std Y+18,r25
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
	mov r2,r18
	mov r3,r19
	mov r4,r20
	mov r5,r21
	mov r6,r22
	mov r7,r23
	mov r8,r24
	mov r9,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __moddi3
	ldd r30,Y+17
	ldd r31,Y+18
	st Z,r2
	std Z+1,r3
	std Z+2,r4
	std Z+3,r5
	std Z+4,r6
	std Z+5,r7
	std Z+6,r8
	std Z+7,r9
	std Z+8,r18
	std Z+9,r19
	std Z+10,r20
	std Z+11,r21
	std Z+12,r22
	std Z+13,r23
	std Z+14,r24
	std Z+15,r25
	mov r24,r30
	mov r25,r31
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
	.size	imaxdiv, .-imaxdiv
.global	labs
	.type	labs, @function
labs:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	tst r19
	brlt .L276
.L275:
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
	pop r17
	pop r16
	ret
.L276:
	com r19
	com r18
	com r17
	neg r16
	sbci r17,lo8(-1)
	sbci r18,lo8(-1)
	sbci r19,lo8(-1)
	rjmp .L275
	.size	labs, .-labs
.global	ldiv
	.type	ldiv, @function
ldiv:
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
	rcall __divmodsi4
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
	.size	ldiv, .-ldiv
.global	llabs
	.type	llabs, @function
llabs:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
	ldi r26,0
	rcall __cmpdi2_s8
	brge .L279
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L279:
	mov r18,r7
	mov r19,r8
	mov r20,r9
	mov r21,r10
	mov r22,r11
	mov r23,r12
	mov r24,r13
	mov r25,r14
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
	std Y+17,r24
	std Y+18,r25
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
	mov r2,r18
	mov r3,r19
	mov r4,r20
	mov r5,r21
	mov r6,r22
	mov r7,r23
	mov r8,r24
	mov r9,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __moddi3
	ldd r30,Y+17
	ldd r31,Y+18
	st Z,r2
	std Z+1,r3
	std Z+2,r4
	std Z+3,r5
	std Z+4,r6
	std Z+5,r7
	std Z+6,r8
	std Z+7,r9
	std Z+8,r18
	std Z+9,r19
	std Z+10,r20
	std Z+11,r21
	std Z+12,r22
	std Z+13,r23
	std Z+14,r24
	std Z+15,r25
	mov r24,r30
	mov r25,r31
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
	.size	lldiv, .-lldiv
.global	wcschr
	.type	wcschr, @function
wcschr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r22
	mov r19,r23
	mov r30,r24
	mov r31,r25
.L283:
	mov r28,r30
	mov r29,r31
	ld r24,Z+
	ld r25,Z+
	or r24,r25
	breq .L282
	mov r26,r30
	mov r27,r31
	ld r25,-X
	ld r24,-X
	cp r18,r24
	cpc r19,r25
	brne .L283
.L282:
	ld r24,Y
	ldd r25,Y+1
	or r24,r25
	breq .L285
	mov r24,r28
	mov r25,r29
.L284:
/* epilogue start */
	pop r29
	pop r28
	ret
.L285:
	ldi r24,0
	ldi r25,0
	rjmp .L284
	.size	wcschr, .-wcschr
.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
.L289:
	mov r20,r26
	mov r21,r27
	mov r22,r30
	mov r23,r31
	ld r18,Z+
	ld r19,Z+
	ld r24,X+
	ld r25,X+
	cp r18,r24
	cpc r19,r25
	brne .L288
	mov r28,r30
	mov r29,r31
	ld r25,-Y
	ld r24,-Y
	or r24,r25
	breq .L288
	mov r28,r26
	mov r29,r27
	ld r25,-Y
	ld r24,-Y
	or r24,r25
	brne .L289
.L288:
	mov r30,r22
	mov r31,r23
	ld r18,Z
	ldd r19,Z+1
	mov r30,r20
	mov r31,r21
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brlt .L292
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L291
	ldi r24,0
.L291:
	ldi r25,0
.L290:
/* epilogue start */
	pop r29
	pop r28
	ret
.L292:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L290
	.size	wcscmp, .-wcscmp
.global	wcscpy
	.type	wcscpy, @function
wcscpy:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r22
	mov r19,r23
	mov r30,r24
	mov r31,r25
.L295:
	subi r18,-2
	sbci r19,-1
	mov r26,r18
	mov r27,r19
	ld r21,-X
	ld r20,-X
	st Z+,r20
	st Z+,r21
	mov r26,r30
	mov r27,r31
	ld r21,-X
	ld r20,-X
	or r20,r21
	brne .L295
/* epilogue start */
	ret
	.size	wcscpy, .-wcscpy
.global	wcslen
	.type	wcslen, @function
wcslen:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r30,r20
	mov r31,r21
.L298:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	ld r19,Z+
	or r18,r19
	brne .L298
	sub r24,r20
	sbc r25,r21
	asr r25
	ror r24
/* epilogue start */
	ret
	.size	wcslen, .-wcslen
.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r20
	mov r19,r21
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
.L301:
	mov r28,r26
	mov r29,r27
	mov r22,r30
	mov r23,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L302
	ld r20,Z
	ldd r21,Z+1
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r20,r24
	cpc r21,r25
	brne .L302
	ld r24,Z+
	ld r25,Z+
	or r24,r25
	breq .L302
	ld r24,X+
	ld r25,X+
	or r24,r25
	breq .L302
	subi r18,1
	sbc r19,__zero_reg__
	rjmp .L301
.L302:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L304
	mov r30,r22
	mov r31,r23
	ld r18,Z
	ldd r19,Z+1
	ld r24,Y
	ldd r25,Y+1
	cp r18,r24
	cpc r19,r25
	brlt .L307
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L305
	ldi r24,0
.L305:
	ldi r25,0
.L304:
/* epilogue start */
	pop r29
	pop r28
	ret
.L307:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L304
	.size	wcsncmp, .-wcsncmp
.global	wmemchr
	.type	wmemchr, @function
wmemchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r22
	mov r27,r23
	mov r18,r20
	mov r19,r21
	mov r30,r24
	mov r31,r25
	rjmp .L309
.L311:
	subi r18,1
	sbc r19,__zero_reg__
.L309:
	mov r24,r30
	mov r25,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L310
	ld r20,Z+
	ld r21,Z+
	cp r26,r20
	cpc r27,r21
	brne .L311
.L310:
	or r18,r19
	breq .L314
.L312:
/* epilogue start */
	ret
.L314:
	ldi r24,0
	ldi r25,0
	ret
	.size	wmemchr, .-wmemchr
.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r20
	mov r19,r21
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	rjmp .L316
.L318:
	subi r18,1
	sbc r19,__zero_reg__
.L316:
	mov r28,r30
	mov r29,r31
	mov r22,r26
	mov r23,r27
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L317
	ld r20,X+
	ld r21,X+
	ld r24,Z+
	ld r25,Z+
	cp r20,r24
	cpc r21,r25
	breq .L318
.L317:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L319
	mov r30,r22
	mov r31,r23
	ld r18,Z
	ldd r19,Z+1
	ld r24,Y
	ldd r25,Y+1
	cp r18,r24
	cpc r19,r25
	brlt .L322
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L320
	ldi r24,0
.L320:
	ldi r25,0
.L319:
/* epilogue start */
	pop r29
	pop r28
	ret
.L322:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L319
	.size	wmemcmp, .-wmemcmp
.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r22
	mov r31,r23
	mov r18,r20
	mov r19,r21
	mov r26,r24
	mov r27,r25
	rjmp .L324
.L325:
	adiw r30,2
	mov r28,r30
	mov r29,r31
	ld r21,-Y
	ld r20,-Y
	st X+,r20
	st X+,r21
.L324:
	subi r18,1
	sbc r19,__zero_reg__
	brcc .L325
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	wmemcpy, .-wmemcpy
.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
	mov r17,r25
	mov r30,r22
	mov r31,r23
	mov r18,r20
	mov r19,r21
	cp r16,r30
	cpc r17,r31
	breq .L327
	mov r20,r18
	mov r21,r19
	lsl r20
	rol r21
	mov r24,r16
	mov r25,r17
	sub r24,r30
	sbc r25,r31
	mov r26,r16
	mov r27,r17
	cp r24,r20
	cpc r25,r21
	brsh .L329
	mov r26,r18
	mov r27,r19
	lsl r26
	rol r27
	add r30,r26
	adc r31,r27
	add r26,r16
	adc r27,r17
	rjmp .L330
.L331:
	ld r25,-Z
	ld r24,-Z
	st -X,r25
	st -X,r24
.L330:
	subi r18,1
	sbc r19,__zero_reg__
	brcc .L331
.L327:
	mov r24,r16
	mov r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L332:
	adiw r30,2
	mov r24,r30
	mov r25,r31
	sbiw r24,2
	mov r28,r24
	mov r29,r25
	ld r24,Y
	ldd r25,Y+1
	st X+,r24
	st X+,r25
.L329:
	subi r18,1
	sbc r19,__zero_reg__
	brcc .L332
	rjmp .L327
	.size	wmemmove, .-wmemmove
.global	wmemset
	.type	wmemset, @function
wmemset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r20
	mov r19,r21
	mov r20,r24
	mov r21,r25
	rjmp .L334
.L335:
	subi r20,-2
	sbci r21,-1
	mov r30,r20
	mov r31,r21
	sbiw r30,2
	st Z,r22
	std Z+1,r23
.L334:
	subi r18,1
	sbc r19,__zero_reg__
	brcc .L335
/* epilogue start */
	ret
	.size	wmemset, .-wmemset
.global	bcopy
	.type	bcopy, @function
bcopy:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
	mov r28,r22
	mov r29,r23
	mov r26,r20
	mov r27,r21
	cp r30,r28
	cpc r31,r29
	brsh .L337
	add r30,r26
	adc r31,r27
	add r26,r28
	adc r27,r29
	rjmp .L338
.L339:
	ld r24,-Z
	st -X,r24
.L338:
	cp r26,r28
	cpc r27,r29
	brne .L339
.L336:
/* epilogue start */
	pop r29
	pop r28
	ret
.L337:
	cp r30,r28
	cpc r31,r29
	breq .L336
	mov r18,r26
	mov r19,r27
	add r18,r30
	adc r19,r31
	rjmp .L341
.L342:
	adiw r30,1
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	mov r26,r24
	mov r27,r25
	ld r24,X
	st Y+,r24
.L341:
	cp r30,r18
	cpc r31,r19
	brne .L342
	rjmp .L336
	.size	bcopy, .-bcopy
.global	rotl64
	.type	rotl64, @function
rotl64:
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	rcall __rotldi3
/* epilogue start */
	pop r16
	ret
	.size	rotl64, .-rotl64
.global	rotr64
	.type	rotr64, @function
rotr64:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r30,lo8(64)
	ldi r31,0
	mov r26,r30
	mov r27,r31
	sub r26,r16
	sbc r27,r17
	mov r16,r26
	mov r17,r27
	rcall __rotldi3
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	rotr64, .-rotr64
.global	rotl32
	.type	rotl32, @function
rotl32:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r30,r20
	mov r31,r21
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	rjmp 2f
	1:
	lsl r12
	rol r13
	rol r14
	rol r15
	2:
	dec r20
	brpl 1b
	neg r31
	neg r30
	sbc r31,__zero_reg__
	andi r30,31
	clr r31
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
	rjmp 2f
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	2:
	dec r30
	brpl 1b
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	rotl32, .-rotl32
.global	rotr32
	.type	rotr32, @function
rotr32:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r30,r20
	mov r31,r21
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	rjmp 2f
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	2:
	dec r20
	brpl 1b
	neg r31
	neg r30
	sbc r31,__zero_reg__
	andi r30,31
	clr r31
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
	rjmp 2f
	1:
	lsl r22
	rol r23
	rol r24
	rol r25
	2:
	dec r30
	brpl 1b
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	rotr32, .-rotr32
.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r18,r22
	mov r19,r23
	mov r24,r20
	mov r25,r21
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r22
	brpl 1b
	neg r19
	neg r18
	sbc r19,__zero_reg__
	andi r18,15
	clr r19
	rjmp 2f
	1:
	lsr r21
	ror r20
	2:
	dec r18
	brpl 1b
	or r24,r20
	or r25,r21
/* epilogue start */
	ret
	.size	rotl_sz, .-rotl_sz
.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r18,r22
	mov r19,r23
	mov r24,r20
	mov r25,r21
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r22
	brpl 1b
	neg r19
	neg r18
	sbc r19,__zero_reg__
	andi r18,15
	clr r19
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r18
	brpl 1b
	or r24,r20
	or r25,r21
/* epilogue start */
	ret
	.size	rotr_sz, .-rotr_sz
.global	rotl16
	.type	rotl16, @function
rotl16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r18,r22
	mov r19,r23
	mov r24,r20
	mov r25,r21
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r22
	brpl 1b
	neg r19
	neg r18
	sbc r19,__zero_reg__
	andi r18,15
	clr r19
	rjmp 2f
	1:
	lsr r21
	ror r20
	2:
	dec r18
	brpl 1b
	or r24,r20
	or r25,r21
/* epilogue start */
	ret
	.size	rotl16, .-rotl16
.global	rotr16
	.type	rotr16, @function
rotr16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r18,r22
	mov r19,r23
	mov r24,r20
	mov r25,r21
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r22
	brpl 1b
	neg r19
	neg r18
	sbc r19,__zero_reg__
	andi r18,15
	clr r19
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r18
	brpl 1b
	or r24,r20
	or r25,r21
/* epilogue start */
	ret
	.size	rotr16, .-rotr16
.global	rotl8
	.type	rotl8, @function
rotl8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r22
	mov r31,r23
	mov r18,r24
	ldi r19,0
	mov r24,r18
	mov r25,r19
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r22
	brpl 1b
	ldi r20,lo8(8)
	ldi r21,0
	sub r20,r30
	sbc r21,r31
	rjmp 2f
	1:
	lsr r19
	ror r18
	2:
	dec r20
	brpl 1b
	or r24,r18
/* epilogue start */
	ret
	.size	rotl8, .-rotl8
.global	rotr8
	.type	rotr8, @function
rotr8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r22
	mov r31,r23
	mov r18,r24
	ldi r19,0
	mov r24,r18
	mov r25,r19
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r22
	brpl 1b
	ldi r20,lo8(8)
	ldi r21,0
	sub r20,r30
	sbc r21,r31
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r20
	brpl 1b
	or r24,r18
/* epilogue start */
	ret
	.size	rotr8, .-rotr8
.global	bswap_16
	.type	bswap_16, @function
bswap_16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	eor r25,r24
	eor r24,r25
	eor r25,r24
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r12,r19
	clr r13
	clr r14
	clr r15
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	mov r28,r18
	mov r29,r19
	mov r15,r20
	mov r13,r21
	mov r10,r22
	mov r9,r23
	mov r31,r24
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r16,lo8(56)
	rcall __lshrdi3
	mov r30,r18
	mov r2,r19
	mov r3,r20
	mov r4,r21
	mov r5,r22
	mov r6,r23
	mov r7,r24
	mov r8,r25
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	mov r24,r31
	ldi r25,0
	ldi r16,lo8(40)
	rcall __lshrdi3
	mov r11,r18
	or r11,r30
	mov r12,r19
	or r12,r2
	mov r14,r20
	or r14,r3
	mov r17,r21
	or r17,r4
	mov r27,r22
	or r27,r5
	mov r30,r23
	or r30,r6
	mov r26,r24
	or r26,r7
	mov r31,r25
	or r31,r8
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	mov r23,r9
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(24)
	rcall __lshrdi3
	or r11,r18
	or r12,r19
	or r14,r20
	or r17,r21
	or r27,r22
	or r30,r23
	or r26,r24
	or r31,r25
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r22,r10
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(8)
	rcall __lshrdi3
	or r11,r18
	or r12,r19
	or r14,r20
	or r17,r21
	or r27,r22
	or r30,r23
	or r26,r24
	or r31,r25
	ldi r18,0
	ldi r19,0
	ldi r20,0
	mov r21,r13
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rcall __ashldi3
	or r11,r18
	mov r13,r12
	or r13,r19
	or r14,r20
	or r17,r21
	or r27,r22
	or r30,r23
	or r26,r24
	or r31,r25
	ldi r18,0
	ldi r19,0
	mov r20,r15
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(24)
	rcall __ashldi3
	mov r12,r11
	or r12,r18
	or r13,r19
	mov r15,r14
	or r15,r20
	or r17,r21
	or r27,r22
	or r30,r23
	or r26,r24
	or r31,r25
	ldi r18,0
	mov r19,r29
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(40)
	rcall __ashldi3
	or r12,r18
	mov r14,r13
	or r14,r19
	or r15,r20
	mov r29,r17
	or r29,r21
	or r27,r22
	or r30,r23
	or r26,r24
	or r31,r25
	mov r18,r28
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(56)
	rcall __ashldi3
	or r18,r12
	or r19,r14
	or r20,r15
	or r21,r29
	or r22,r27
	or r23,r30
	or r24,r26
	or r25,r31
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
	.size	bswap_64, .-bswap_64
.global	ffs
	.type	ffs, @function
ffs:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	ldi r24,0
	ldi r25,0
.L357:
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L361
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
	rjmp .L362
	adiw r24,1
	rjmp .L357
.L362:
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
	mov r24,r18
	mov r25,r19
	ret
.L361:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
	.size	ffs, .-ffs
.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	ldi r20,lo8(1)
	ldi r21,0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L365
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L366:
	asr r19
	ror r18
	subi r20,-1
	sbci r21,-1
.L365:
	sbrs r18,0
	rjmp .L366
	mov r24,r20
	mov r25,r21
	ret
	.size	libiberty_ffs, .-libiberty_ffs
.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r16,r22
	mov r17,r23
	mov r29,r24
	mov r28,r25
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-1)
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L371
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	mov r8,r16
	mov r9,r17
	mov r10,r29
	mov r11,r28
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L374
	brlt .L374
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L369
.L371:
	ldi r24,lo8(1)
	ldi r25,0
.L369:
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
.L374:
	ldi r24,0
	ldi r25,0
	rjmp .L369
	.size	gl_isinff, .-gl_isinff
.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r16,r22
	mov r17,r23
	mov r29,r24
	mov r28,r25
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-1)
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L378
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	mov r8,r16
	mov r9,r17
	mov r10,r29
	mov r11,r28
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L381
	brlt .L381
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L376
.L378:
	ldi r24,lo8(1)
	ldi r25,0
.L376:
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
.L381:
	ldi r24,0
	ldi r25,0
	rjmp .L376
	.size	gl_isinfd, .-gl_isinfd
.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r4,r18
	mov r5,r19
	mov r6,r20
	mov r7,r21
	mov r8,r22
	mov r9,r23
	mov r29,r24
	mov r28,r25
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
	rjmp .L385
	ldi r17,lo8(127)
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	mov r24,r29
	mov r25,r28
	rcall __gtdf2
	cp r24, __zero_reg__
	breq .L388
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L383
.L385:
	ldi r24,lo8(1)
	ldi r25,0
.L383:
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
.L388:
	ldi r24,0
	ldi r25,0
	rjmp .L383
	.size	gl_isinfl, .-gl_isinfl
.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r29,r25
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	rcall __floatsisf
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __extendsfdf2
	st Y,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+4,r22
	std Y+5,r23
	std Y+6,r24
	std Y+7,r25
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Qp_itoq, .-_Qp_itoq
.global	ldexpf
	.type	ldexpf, @function
ldexpf:
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
	mov r6,r22
	mov r7,r23
	mov r16,r24
	mov r17,r25
	std Y+33,r20
	std Y+34,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L391
	mov r2,r6
	mov r3,r7
	mov r4,r16
	mov r5,r17
	mov r21,r5
	mov r20,r4
	mov r19,r3
	mov r18,r2
	std Y+17,r6
	std Y+18,r7
	std Y+19,r16
	std Y+20,r17
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __addsf3
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	std Y+25,r6
	std Y+26,r7
	std Y+27,r16
	std Y+28,r17
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+27
	ldd r25,Y+28
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L391
	ldd r18,Y+33
	ldd r19,Y+34
	tst r19
	brlt .L400
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	set
	clr r15
	bld r15,6
	mov r3,r6
	mov r2,r7
	rjmp .L396
.L400:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r15,r31
	mov r31,__tmp_reg__
	mov r3,r6
	mov r2,r7
	rjmp .L396
.L394:
	ldd r24,Y+33
	ldd r25,Y+34
	tst r25
	brlt .L401
.L395:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+34,r19
	std Y+33,r18
	or r18,r19
	breq .L399
	mov r8,r12
	mov r9,r13
	mov r10,r14
	mov r11,r15
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	std Y+4,r15
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L396:
	ldd r18,Y+33
	ldd r19,Y+34
	sbrs r18,0
	rjmp .L394
	mov r4,r12
	mov r5,r13
	mov r6,r14
	mov r7,r15
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+5,r3
	std Y+6,r2
	std Y+7,r16
	std Y+8,r17
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r3,r22
	mov r2,r23
	mov r16,r24
	mov r17,r25
	rjmp .L394
.L401:
	adiw r24,1
	rjmp .L395
.L399:
	mov r6,r3
	mov r7,r2
.L391:
	std Y+13,r6
	std Y+14,r7
	std Y+15,r16
	std Y+16,r17
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
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
	.size	ldexpf, .-ldexpf
.global	ldexp
	.type	ldexp, @function
ldexp:
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
	mov r6,r22
	mov r7,r23
	mov r16,r24
	mov r17,r25
	std Y+33,r20
	std Y+34,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L403
	mov r2,r6
	mov r3,r7
	mov r4,r16
	mov r5,r17
	mov r21,r5
	mov r20,r4
	mov r19,r3
	mov r18,r2
	std Y+17,r6
	std Y+18,r7
	std Y+19,r16
	std Y+20,r17
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __addsf3
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	std Y+25,r6
	std Y+26,r7
	std Y+27,r16
	std Y+28,r17
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+27
	ldd r25,Y+28
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L403
	ldd r18,Y+33
	ldd r19,Y+34
	tst r19
	brlt .L412
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	set
	clr r15
	bld r15,6
	mov r3,r6
	mov r2,r7
	rjmp .L408
.L412:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r15,r31
	mov r31,__tmp_reg__
	mov r3,r6
	mov r2,r7
	rjmp .L408
.L406:
	ldd r24,Y+33
	ldd r25,Y+34
	tst r25
	brlt .L413
.L407:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+34,r19
	std Y+33,r18
	or r18,r19
	breq .L411
	mov r8,r12
	mov r9,r13
	mov r10,r14
	mov r11,r15
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	std Y+4,r15
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L408:
	ldd r18,Y+33
	ldd r19,Y+34
	sbrs r18,0
	rjmp .L406
	mov r4,r12
	mov r5,r13
	mov r6,r14
	mov r7,r15
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+5,r3
	std Y+6,r2
	std Y+7,r16
	std Y+8,r17
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r3,r22
	mov r2,r23
	mov r16,r24
	mov r17,r25
	rjmp .L406
.L413:
	adiw r24,1
	rjmp .L407
.L411:
	mov r6,r3
	mov r7,r2
.L403:
	std Y+13,r6
	std Y+14,r7
	std Y+15,r16
	std Y+16,r17
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
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
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
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
	std Y+9,r16
	std Y+10,r17
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
	rjmp .L415
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
	rcall __adddf3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __nedf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L415
	ldd r18,Y+9
	ldd r19,Y+10
	tst r19
	brlt .L423
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	mov r8,__zero_reg__
	set
	clr r9
	bld r9,6
	rjmp .L420
.L423:
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(-32)
	mov r8,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r9,r31
	mov r31,__tmp_reg__
	rjmp .L420
.L418:
	ldd r24,Y+9
	ldd r25,Y+10
	tst r25
	brge .+2
	rjmp .L424
.L419:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+10,r19
	std Y+9,r18
	or r18,r19
	breq .L415
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
	rcall __muldf3
	mov r2,r18
	mov r3,r19
	mov r4,r20
	mov r5,r21
	mov r6,r22
	mov r7,r23
	mov r8,r24
	mov r9,r25
.L420:
	ldd r24,Y+9
	ldd r25,Y+10
	sbrs r24,0
	rjmp .L418
	mov r10,r2
	mov r11,r3
	mov r12,r4
	mov r13,r5
	mov r14,r6
	mov r15,r7
	mov r16,r8
	mov r17,r9
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __muldf3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	rjmp .L418
.L424:
	adiw r24,1
	rjmp .L419
.L415:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r22
	mov r19,r23
	mov r28,r18
	mov r29,r19
	add r28,r20
	adc r29,r21
	mov r22,r24
	mov r23,r25
	rjmp .L426
.L427:
	subi r18,-1
	sbci r19,-1
	mov r30,r18
	mov r31,r19
	ld r21,-Z
	subi r22,-1
	sbci r23,-1
	mov r30,r22
	mov r31,r23
	ld r26,-Z
	eor r21,r26
	st Z,r21
.L426:
	cp r18,r28
	cpc r19,r29
	brne .L427
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	memxor, .-memxor
.global	strncat
	.type	strncat, @function
strncat:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
	mov r17,r25
	mov r18,r20
	mov r19,r21
	mov r30,r16
	mov r31,r17
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	mov r26,r22
	mov r27,r23
	sbiw r30,1
	rjmp .L429
.L431:
	subi r18,1
	sbc r19,__zero_reg__
.L429:
	mov r20,r30
	mov r21,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L430
	ld r24,X+
	st Z+,r24
	mov r28,r30
	mov r29,r31
	ld r24,-Y
	cpse r24,__zero_reg__
	rjmp .L431
.L430:
	or r18,r19
	brne .L432
	mov r30,r20
	mov r31,r21
	st Z,__zero_reg__
.L432:
	mov r24,r16
	mov r25,r17
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r22
	mov r19,r23
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
.L434:
	cp r24,r18
	cpc r25,r19
	breq .L435
	ld r20,Z+
	cpse r20,__zero_reg__
	rjmp .L436
.L435:
/* epilogue start */
	ret
.L436:
	adiw r24,1
	rjmp .L434
	.size	strnlen, .-strnlen
.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r20,r24
	mov r21,r25
.L438:
	mov r24,r20
	mov r25,r21
	mov r26,r20
	mov r27,r21
	ld r18,X+
	mov r20,r26
	mov r21,r27
	cp r18, __zero_reg__
	breq .L443
	mov r30,r22
	mov r31,r23
	mov r28,r26
	mov r29,r27
	sbiw r28,1
.L441:
	ld r18,Z+
	cp r18, __zero_reg__
	breq .L438
	mov r26,r30
	mov r27,r31
	ld r19,-X
	ld r18,Y
	cpse r19,r18
	rjmp .L441
.L439:
/* epilogue start */
	pop r29
	pop r28
	ret
.L443:
	ldi r24,0
	ldi r25,0
	rjmp .L439
	.size	strpbrk, .-strpbrk
.global	strrchr
	.type	strrchr, @function
strrchr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r22
	mov r29,r23
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
	rjmp .L446
.L445:
	mov r26,r30
	mov r27,r31
	ld r18,-X
	cp r18, __zero_reg__
	breq .L449
.L446:
	mov r20,r30
	mov r19,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r28
	cpc r0,r29
	brne .L445
	mov r24,r20
	mov r25,r19
	rjmp .L445
.L449:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strrchr, .-strrchr
.global	strstr
	.type	strstr, @function
strstr:
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
/* stack size = 8 */
.L__stack_usage = 8
	mov r16,r22
	mov r17,r23
	mov r30,r16
	mov r31,r17
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	mov r12,r30
	mov r13,r31
	sub r12,r16
	sbc r13,r17
	cp r16,r30
	cpc r17,r31
	breq .L451
	mov r30,r16
	mov r31,r17
	ld r14,Z
	mov __tmp_reg__,r14
	lsl r0
	sbc r15,r15
	mov r28,r24
	mov r29,r25
.L452:
	mov r22,r14
	mov r23,r15
	mov r24,r28
	mov r25,r29
	rcall strchr
	mov r28,r24
	mov r29,r25
	sbiw r28,0
	breq .L456
	mov r20,r12
	mov r21,r13
	mov r22,r16
	mov r23,r17
	mov r24,r28
	mov r25,r29
	rcall strncmp
	or r24,r25
	breq .L455
	adiw r28,1
	rjmp .L452
.L456:
	ldi r24,0
	ldi r25,0
.L451:
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
.L455:
	mov r24,r28
	mov r25,r29
	rjmp .L451
	.size	strstr, .-strstr
.global	copysign
	.type	copysign, @function
copysign:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	mov r16,r18
	mov r17,r19
	mov r29,r20
	mov r28,r21
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L470
.L458:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L468
	brlt .L468
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r12,r16
	mov r13,r17
	mov r14,r29
	mov r15,r28
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L460
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
.L461:
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
.L470:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r8,r16
	mov r9,r17
	mov r10,r29
	mov r11,r28
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L458
	brlt .L458
.L460:
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	subi r25,0x80
	rjmp .L461
.L468:
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rjmp .L461
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r28,r24
	mov r29,r25
	mov r30,r22
	mov r31,r23
	mov r10,r20
	mov r11,r21
	mov r14,r18
	mov r15,r19
	mov r16,r30
	mov r17,r31
	sub r16,r14
	sbc r17,r15
	add r16,r28
	adc r17,r29
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L472
	ldi r24,lo8(1)
	cp r30,r14
	cpc r31,r15
	brlo .L473
	ldi r24,0
.L473:
	cpse r24,__zero_reg__
	rjmp .L478
	ldi r24,1
	sub r14,r24
	sbc r15,__zero_reg__
	mov r12,r10
	mov r13,r11
	ldi r30,-1
	sub r12,r30
	sbc r13,r30
.L474:
	mov r8,r28
	mov r9,r29
	cp r16,r28
	cpc r17,r29
	brlo .L480
	ld r19,Y+
	mov r30,r10
	mov r31,r11
	ld r18,Z
	cpse r19,r18
	rjmp .L474
	mov r20,r14
	mov r21,r15
	mov r22,r12
	mov r23,r13
	mov r24,r28
	mov r25,r29
	rcall memcmp
	or r24,r25
	brne .L474
	mov r24,r8
	mov r25,r9
	rjmp .L472
.L480:
	ldi r24,0
	ldi r25,0
.L472:
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
.L478:
	ldi r24,0
	ldi r25,0
	rjmp .L472
	.size	memmem, .-memmem
.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r20
	mov r29,r21
	mov r20,r28
	mov r21,r29
	rcall memcpy
	add r24,r28
	adc r25,r29
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	mempcpy, .-mempcpy
.global	frexp
	.type	frexp, @function
frexp:
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
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 20 */
.L__stack_usage = 20
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r20
	mov r17,r21
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	cp r24, __zero_reg__
	brlt .L502
.L483:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gesf2
	cp r24, __zero_reg__
	brge .+2
	rjmp .L503
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L485
.L502:
	bst r15,7
	com r15
	bld r15,7
	com r15
	clr r10
	inc r10
	mov r11,__zero_reg__
	rjmp .L483
.L487:
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	mov r15,r7
	mov r14,r6
	mov r13,r5
	mov r12,r4
.L485:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gesf2
	cp r24, __zero_reg__
	brge .L487
.L488:
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r16
	mov r31,r17
	std Z+1,r25
	st Z,r24
	or r10,r11
	breq .L492
	bst r15,7
	com r15
	bld r15,7
	com r15
.L492:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
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
	pop r13
	pop r12
	pop r11
	pop r10
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L503:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L501
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __nesf2
	cpse r24,__zero_reg__
	rjmp .L496
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L488
.L491:
	ldd r30,Y+5
	ldd r31,Y+6
	sbiw r30,1
	std Y+6,r31
	std Y+5,r30
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __addsf3
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
.L490:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L491
	rjmp .L488
.L496:
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L490
.L501:
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L488
	.size	frexp, .-frexp
.global	__muldi3
	.type	__muldi3, @function
__muldi3:
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
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 24 */
.L__stack_usage = 24
	mov r2,r10
	mov r3,r11
	mov r4,r12
	mov r5,r13
	mov r6,r14
	std Y+1,r15
	std Y+2,r16
	std Y+3,r17
	mov r30,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	std Y+6,r22
	std Y+5,r23
	mov r27,r24
	mov r31,r25
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r17,0
	std Y+4,__zero_reg__
	rjmp .L505
.L506:
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	ldd r23,Y+1
	ldd r24,Y+2
	ldd r25,Y+3
	ldi r16,lo8(1)
	rcall __ashldi3
	mov r2,r18
	mov r3,r19
	mov r4,r20
	mov r5,r21
	mov r6,r22
	std Y+1,r23
	std Y+2,r24
	std Y+3,r25
	mov r18,r30
	mov r19,r7
	mov r20,r8
	mov r21,r9
	ldd r22,Y+6
	ldd r23,Y+5
	mov r24,r27
	mov r25,r31
	rcall __lshrdi3
	mov r30,r18
	mov r7,r19
	mov r8,r20
	mov r9,r21
	std Y+6,r22
	std Y+5,r23
	mov r27,r24
	mov r31,r25
.L505:
	mov r18,r30
	mov r19,r7
	mov r20,r8
	mov r21,r9
	ldd r22,Y+6
	ldd r23,Y+5
	mov r24,r27
	mov r25,r31
	ldi r26,0
	rcall __cmpdi2_s8
	breq .L508
	mov r18,r30
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r26,0
	rcall __cmpdi2_s8
	breq .L506
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r17
	ldd r25,Y+4
	mov r10,r2
	mov r11,r3
	mov r12,r4
	mov r13,r5
	mov r14,r6
	ldd r15,Y+1
	ldd r16,Y+2
	ldd r17,Y+3
	rcall __adddi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r17,r24
	std Y+4,r25
	rjmp .L506
.L508:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r17
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L510
.L512:
	lsl r12
	rol r13
	rol r14
	rol r15
	lsl r24
	rol r25
	rol r26
	rol r27
.L510:
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L517
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L518
	tst r15
	brge .L512
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L513
.L517:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L513
.L518:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L513
.L514:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r15
	ror r14
	ror r13
	ror r12
.L513:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L520
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L514
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L514
.L520:
	cpse r16,__zero_reg__
	rjmp .L519
	mov r19,r20
	mov r18,r21
	mov r24,r22
	mov r25,r23
.L516:
	mov r22,r19
	mov r23,r18
/* epilogue start */
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
.L519:
	mov r19,r8
	mov r18,r9
	mov r24,r10
	mov r25,r11
	rjmp .L516
	.size	udivmodsi4, .-udivmodsi4
.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r25,r24
	cp r24, __zero_reg__
	brlt .L525
.L522:
	cp r25, __zero_reg__
	breq .L524
	ldi r24,0
	rcall __clzhi2
	sbiw r24,1
	ret
.L525:
	com r25
	rjmp .L522
.L524:
	ldi r24,lo8(7)
	ldi r25,0
/* epilogue start */
	ret
	.size	__clrsbqi2, .-__clrsbqi2
.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r15,r18
	mov r16,r19
	mov r17,r20
	mov r29,r21
	mov r28,r22
	mov r27,r23
	mov r31,r24
	mov r30,r25
	ldi r26,0
	rcall __cmpdi2_s8
	brlt .L530
.L527:
	mov r18,r15
	mov r19,r16
	mov r20,r17
	mov r21,r29
	mov r22,r28
	mov r23,r27
	mov r24,r31
	mov r25,r30
	ldi r26,0
	rcall __cmpdi2_s8
	breq .L529
	rcall __clzdi2
	sbiw r24,1
.L528:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L530:
	com r15
	com r16
	com r17
	com r29
	com r28
	com r27
	com r31
	com r30
	rjmp .L527
.L529:
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L528
	.size	__clrsbdi2, .-__clrsbdi2
.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	mov r20,r22
	mov r21,r23
	ldi r24,0
	ldi r25,0
	rjmp .L532
.L533:
	lsr r19
	ror r18
	lsl r20
	rol r21
.L532:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L535
	sbrs r18,0
	rjmp .L533
	add r24,r20
	adc r25,r21
	rjmp .L533
.L535:
/* epilogue start */
	ret
	.size	__mulsi3, .-__mulsi3
.global	__cmovd
	.type	__cmovd, @function
__cmovd:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r14,r24
	mov r15,r25
	mov r28,r22
	mov r29,r23
	mov r16,r20
	mov r17,r21
	mov r12,r16
	mov r13,r17
	lsr r13
	ror r12
	lsr r13
	ror r12
	lsr r13
	ror r12
	mov r24,r16
	mov r25,r17
	andi r24,248
	cp r14,r28
	cpc r15,r29
	brsh .L537
.L539:
	mov r26,r28
	mov r27,r29
	mov r30,r14
	mov r31,r15
	ldi r18,0
	ldi r19,0
	rjmp .L538
.L537:
	mov r18,r28
	mov r19,r29
	add r18,r16
	adc r19,r17
	cp r18,r14
	cpc r19,r15
	brlo .L539
	mov r30,r18
	mov r31,r19
	mov r26,r14
	mov r27,r15
	add r26,r16
	adc r27,r17
	rjmp .L540
.L541:
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
	ld r23,X
	sbiw r26,4
	adiw r26,5
	ld r22,X
	sbiw r26,5
	adiw r26,6
	ld r21,X
	sbiw r26,6
	adiw r26,7
	ld r20,X
	sbiw r26,7
	adiw r26,8
	st Z,r8
	std Z+1,r9
	std Z+2,r10
	std Z+3,r11
	std Z+4,r23
	std Z+5,r22
	std Z+6,r21
	std Z+7,r20
	adiw r30,8
	subi r18,-1
	sbci r19,-1
.L538:
	cp r18,r12
	cpc r19,r13
	brne .L541
	add r28,r24
	adc r29,r25
	mov r26,r14
	mov r27,r15
	add r26,r24
	adc r27,r25
	rjmp .L542
.L543:
	ld r18,Y+
	st X+,r18
	adiw r24,1
.L542:
	cp r24,r16
	cpc r25,r17
	brlo .L543
.L536:
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
.L545:
	ld r24,-Z
	st -X,r24
.L540:
	cp r30,r28
	cpc r31,r29
	brne .L545
	rjmp .L536
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r29,r25
	mov r16,r22
	mov r17,r23
	mov r14,r20
	mov r15,r21
	mov r20,r14
	mov r21,r15
	lsr r21
	ror r20
	cp r28,r16
	cpc r29,r17
	brsh .L547
.L549:
	mov r26,r16
	mov r27,r17
	mov r30,r28
	mov r31,r29
	ldi r24,0
	ldi r25,0
	rjmp .L548
.L547:
	mov r24,r16
	mov r25,r17
	add r24,r14
	adc r25,r15
	cp r24,r28
	cpc r25,r29
	brlo .L549
	mov r30,r24
	mov r31,r25
	add r28,r14
	adc r29,r15
	rjmp .L550
.L551:
	ld r18,X+
	ld r19,X+
	st Z+,r18
	st Z+,r19
	adiw r24,1
.L548:
	cp r24,r20
	cpc r25,r21
	brne .L551
	sbrs r14,0
	rjmp .L546
	ldi r24,1
	sub r14,r24
	sbc r15,__zero_reg__
	mov r30,r16
	mov r31,r17
	add r30,r14
	adc r31,r15
	add r28,r14
	adc r29,r15
	ld r24,Z
	st Y,r24
.L546:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L553:
	ld r24,-Z
	st -Y,r24
.L550:
	cp r30,r16
	cpc r31,r17
	brne .L553
	rjmp .L546
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,r24
	mov r13,r25
	mov r30,r22
	mov r31,r23
	mov r16,r20
	mov r17,r21
	mov r14,r16
	mov r15,r17
	lsr r15
	ror r14
	lsr r15
	ror r14
	mov r24,r16
	mov r25,r17
	andi r24,252
	cp r12,r30
	cpc r13,r31
	brsh .L555
.L557:
	mov r26,r30
	mov r27,r31
	mov r28,r12
	mov r29,r13
	ldi r18,0
	ldi r19,0
	rjmp .L556
.L555:
	mov r18,r30
	mov r19,r31
	add r18,r16
	adc r19,r17
	cp r18,r12
	cpc r19,r13
	brlo .L557
	mov r28,r18
	mov r29,r19
	mov r26,r12
	mov r27,r13
	add r26,r16
	adc r27,r17
	rjmp .L558
.L559:
	ld r22,X+
	ld r23,X+
	st Y+,r22
	st Y+,r23
	subi r18,-1
	sbci r19,-1
.L556:
	cp r18,r14
	cpc r19,r15
	brne .L559
	add r30,r24
	adc r31,r25
	mov r26,r12
	mov r27,r13
	add r26,r24
	adc r27,r25
	rjmp .L560
.L561:
	ld r18,Z+
	st X+,r18
	adiw r24,1
.L560:
	cp r24,r16
	cpc r25,r17
	brlo .L561
.L554:
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
.L563:
	ld r24,-Y
	st -X,r24
.L558:
	cp r28,r30
	cpc r29,r31
	brne .L563
	rjmp .L554
	.size	__cmovw, .-__cmovw
.global	__modi
	.type	__modi, @function
__modi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall __divmodhi4
/* epilogue start */
	ret
	.size	__modi, .-__modi
.global	__uitod
	.type	__uitod, @function
__uitod:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	rcall __floatunsisf
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__uitod, .-__uitod
.global	__uitof
	.type	__uitof, @function
__uitof:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	rcall __floatunsisf
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__uitof, .-__uitof
.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	rcall __floatundisf
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__ulltod, .-__ulltod
.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	rcall __floatundisf
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	__ulltof, .-__ulltof
.global	__umodi
	.type	__umodi, @function
__umodi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall __udivmodhi4
/* epilogue start */
	ret
	.size	__umodi, .-__umodi
.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	ldi r24,0
	ldi r25,0
	ldi r22,0
	ldi r23,lo8(-128)
.L571:
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L572
	mov r18,r22
	mov r19,r23
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
	brne .L572
	adiw r24,1
	rjmp .L571
.L572:
/* epilogue start */
	ret
	.size	__clzhi2, .-__clzhi2
.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	ldi r24,0
	ldi r25,0
.L575:
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L576
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
	rjmp .L576
	adiw r24,1
	rjmp .L575
.L576:
/* epilogue start */
	ret
	.size	__ctzhi2, .-__ctzhi2
.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
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
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 26 */
.L__stack_usage = 26
	mov r16,r22
	mov r17,r23
	std Y+10,r24
	std Y+9,r25
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gesf2
	cp r24, __zero_reg__
	brge .L584
	mov r8,r16
	mov r9,r17
	ldd r10,Y+10
	ldd r11,Y+9
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __fixsfsi
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
.L581:
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
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
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L584:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	std Y+1,r16
	std Y+2,r17
	std Y+3,r14
	std Y+4,r15
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __subsf3
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __fixsfsi
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	ldi r18,-128
	add r5,r18
	adc r6,__zero_reg__
	adc r7,__zero_reg__
	rjmp .L581
	.size	__fixunssfsi, .-__fixunssfsi
.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	ldi r18,0
	ldi r19,0
	rjmp .L586
.L587:
	subi r18,-1
	sbci r19,-1
.L586:
	cpi r18,16
	cpc r19,__zero_reg__
	breq .L589
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
	sbrs r20,0
	rjmp .L587
	adiw r24,1
	rjmp .L587
.L589:
	andi r24,1
	clr r25
/* epilogue start */
	ret
	.size	__parityhi2, .-__parityhi2
.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	ldi r18,0
	ldi r19,0
	rjmp .L591
.L592:
	subi r18,-1
	sbci r19,-1
.L591:
	cpi r18,16
	cpc r19,__zero_reg__
	breq .L594
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
	sbrs r20,0
	rjmp .L592
	adiw r24,1
	rjmp .L592
.L594:
/* epilogue start */
	ret
	.size	__popcounthi2, .-__popcounthi2
.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L596
.L597:
	lsr r15
	ror r14
	ror r13
	ror r12
	lsl r8
	rol r9
	rol r10
	rol r11
.L596:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L599
	sbrs r12,0
	rjmp .L597
	add r22,r8
	adc r23,r9
	adc r24,r10
	adc r25,r11
	rjmp .L597
.L599:
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .L602
	ldi r19,0
	ldi r18,0
	ldi r24,0
	ldi r25,0
	rjmp .L601
.L603:
	lsl r8
	rol r9
	rol r10
	rol r11
	lsr r15
	ror r14
	ror r13
	ror r12
.L602:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L606
	sbrs r12,0
	rjmp .L603
	add r20,r8
	adc r21,r9
	adc r22,r10
	adc r23,r11
	rjmp .L603
.L606:
	mov r19,r20
	mov r18,r21
	mov r24,r22
	mov r25,r23
.L601:
	mov r22,r19
	mov r23,r18
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
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
	mov r30,r16
	mov r31,r17
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L608
.L610:
	lsl r12
	rol r13
	rol r14
	rol r15
	lsl r24
	rol r25
	rol r26
	rol r27
.L608:
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L615
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L616
	tst r15
	brge .L610
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L611
.L615:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L611
.L616:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L611
.L612:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r15
	ror r14
	ror r13
	ror r12
.L611:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L618
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L612
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L612
.L618:
	or r30,r31
	brne .L617
	mov r19,r20
	mov r18,r21
	mov r24,r22
	mov r25,r23
.L614:
	mov r22,r19
	mov r23,r18
/* epilogue start */
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
.L617:
	mov r19,r8
	mov r18,r9
	mov r24,r10
	mov r25,r11
	rjmp .L614
	.size	__udivmodsi4, .-__udivmodsi4
.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	push r2
	push r3
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
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 26 */
.L__stack_usage = 26
	std Y+10,r22
	std Y+9,r23
	mov r10,r24
	mov r11,r25
	mov r2,r18
	mov r3,r19
	mov r16,r20
	mov r17,r21
	mov r4,r18
	mov r5,r19
	mov r6,r20
	mov r7,r21
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L621
	mov r12,r2
	mov r13,r3
	mov r14,r16
	mov r15,r17
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	ldd r24,Y+10
	std Y+5,r24
	ldd r24,Y+9
	std Y+6,r24
	std Y+7,r10
	std Y+8,r11
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .+2
	brge .L622
	ldi r24,0
	ldi r25,0
.L620:
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
	pop r11
	pop r10
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L621:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L620
.L622:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L620
	.size	__mspabi_cmpf, .-__mspabi_cmpf
.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	push r2
	push r3
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
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 26 */
.L__stack_usage = 26
	std Y+10,r22
	std Y+9,r23
	mov r10,r24
	mov r11,r25
	mov r2,r18
	mov r3,r19
	mov r16,r20
	mov r17,r21
	mov r4,r18
	mov r5,r19
	mov r6,r20
	mov r7,r21
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L625
	mov r12,r2
	mov r13,r3
	mov r14,r16
	mov r15,r17
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	ldd r24,Y+10
	std Y+5,r24
	ldd r24,Y+9
	std Y+6,r24
	std Y+7,r10
	std Y+8,r11
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .+2
	brge .L626
	ldi r24,0
	ldi r25,0
.L624:
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
	pop r11
	pop r10
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L625:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L624
.L626:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L624
	.size	__mspabi_cmpd, .-__mspabi_cmpd
.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
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
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 18 */
.L__stack_usage = 18
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	mov r27,r7
	mov r26,r6
	mov r25,r5
	mov r24,r4
	lsl r27
	sbc r24,r24
	mov r25,r24
	mov r26,r24
	mov r27,r24
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	mov r27,r17
	mov r26,r16
	mov r25,r15
	mov r24,r14
	lsl r27
	sbc r24,r24
	mov r25,r24
	mov r26,r24
	mov r27,r24
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r24
	mov r15,r24
	mov r16,r24
	mov r17,r24
	mov r18,r22
	mov r19,r23
	mov r20,r6
	mov r21,r7
	ldd r22,Y+1
	mov r23,r22
	mov r24,r22
	mov r25,r22
	rcall __muldi3
/* epilogue start */
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
	pop r13
	pop r12
	pop r11
	pop r10
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
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
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
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
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rcall __muldi3
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
	.size	__mspabi_mpyull, .-__mspabi_mpyull
.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r18,r22
	mov r19,r23
	ldi r30,0
	ldi r31,0
	tst r19
	brlt .L638
.L630:
	ldi r25,lo8(17)
	ldi r22,0
	ldi r23,0
	rjmp .L631
.L638:
	neg r19
	neg r18
	sbc r19,__zero_reg__
	ldi r30,lo8(1)
	ldi r31,0
	rjmp .L630
.L632:
	lsl r20
	rol r21
	asr r19
	ror r18
.L631:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L633
	subi r25,lo8(-(-1))
	cp r25, __zero_reg__
	breq .L633
	sbrs r18,0
	rjmp .L632
	add r22,r20
	adc r23,r21
	rjmp .L632
.L633:
	or r30,r31
	breq .L637
	clr r24
	clr r25
	sub r24,r22
	sbc r25,r23
	ret
.L637:
	mov r24,r22
	mov r25,r23
/* epilogue start */
	ret
	.size	__mulhi3, .-__mulhi3
.global	__divsi3
	.type	__divsi3, @function
__divsi3:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	ldi r28,0
	ldi r29,0
	tst r15
	brlt .L645
.L640:
	tst r11
	brlt .L646
.L641:
	ldi r16,0
	ldi r17,0
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __udivmodsi4
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	or r28,r29
	breq .L643
	com r7
	com r6
	com r5
	com r4
	adc r4,__zero_reg__
	adc r5,__zero_reg__
	adc r6,__zero_reg__
	adc r7,__zero_reg__
.L643:
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
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
.L645:
	com r15
	com r14
	com r13
	com r12
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r28,lo8(1)
	ldi r29,0
	rjmp .L640
.L646:
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	ldi r24,lo8(1)
	or r28,r29
	breq .L642
	ldi r24,0
.L642:
	mov r28,r24
	ldi r29,0
	rjmp .L641
	.size	__divsi3, .-__divsi3
.global	__modsi3
	.type	__modsi3, @function
__modsi3:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	ldi r28,0
	ldi r29,0
	tst r15
	brlt .L652
.L648:
	tst r11
	brlt .L653
.L649:
	ldi r16,lo8(1)
	ldi r17,0
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __udivmodsi4
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	or r28,r29
	breq .L650
	com r7
	com r6
	com r5
	com r4
	adc r4,__zero_reg__
	adc r5,__zero_reg__
	adc r6,__zero_reg__
	adc r7,__zero_reg__
.L650:
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
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
.L652:
	com r15
	com r14
	com r13
	com r12
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r28,lo8(1)
	ldi r29,0
	rjmp .L648
.L653:
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	rjmp .L649
	.size	__modsi3, .-__modsi3
.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	mov r18,r22
	mov r19,r23
	mov r26,r20
	mov r27,r21
	ldi r24,lo8(1)
	ldi r25,0
.L655:
	cp r18,r30
	cpc r19,r31
	brsh .L662
	sbiw r24,0
	breq .L663
	tst r19
	brlt .L665
	lsl r18
	rol r19
	lsl r24
	rol r25
	rjmp .L655
.L665:
	ldi r20,0
	ldi r21,0
	rjmp .L658
.L662:
	ldi r20,0
	ldi r21,0
	rjmp .L658
.L663:
	ldi r20,0
	ldi r21,0
	rjmp .L658
.L659:
	lsr r25
	ror r24
	lsr r19
	ror r18
.L658:
	sbiw r24,0
	breq .L666
	cp r30,r18
	cpc r31,r19
	brlo .L659
	sub r30,r18
	sbc r31,r19
	or r20,r24
	or r21,r25
	rjmp .L659
.L666:
	or r26,r27
	brne .L664
	mov r24,r20
	mov r25,r21
	ret
.L664:
	mov r24,r30
	mov r25,r31
/* epilogue start */
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
	mov r30,r16
	mov r31,r17
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L668
.L670:
	lsl r12
	rol r13
	rol r14
	rol r15
	lsl r24
	rol r25
	rol r26
	rol r27
.L668:
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L675
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L676
	tst r15
	brge .L670
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L671
.L675:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L671
.L676:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L671
.L672:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r15
	ror r14
	ror r13
	ror r12
.L671:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L678
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L672
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L672
.L678:
	or r30,r31
	brne .L677
	mov r19,r20
	mov r18,r21
	mov r24,r22
	mov r25,r23
.L674:
	mov r22,r19
	mov r23,r18
/* epilogue start */
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
.L677:
	mov r19,r8
	mov r18,r9
	mov r24,r10
	mov r25,r11
	rjmp .L674
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
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
	mov r30,r16
	mov r31,r17
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	sbrs r30,5
	rjmp .L680
	std Y+9,__zero_reg__
	std Y+10,__zero_reg__
	std Y+11,__zero_reg__
	std Y+12,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r30,32
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r30
	brpl 1b
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
.L681:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
.L682:
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
.L680:
	sbiw r30,0
	breq .L682
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
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r16
	brpl 1b
	ldi r18,lo8(32)
	ldi r19,0
	sub r18,r30
	sbc r19,r31
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
	rjmp .L681
	.size	__ashldi3, .-__ashldi3
.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
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
	mov r30,r16
	mov r31,r17
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	sbrs r30,5
	rjmp .L685
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
	sbiw r30,32
	rjmp 2f
	1:
	asr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r30
	brpl 1b
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L686:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
.L687:
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
.L685:
	sbiw r30,0
	breq .L687
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
	sub r18,r30
	sbc r19,r31
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
	rjmp .L686
	.size	__ashrdi3, .-__ashrdi3
.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
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
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 21 */
.L__stack_usage = 21
	mov r15,r18
	mov r17,r19
	std Y+3,r20
	std Y+2,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	std Y+1,r25
	ldi r16,lo8(56)
	rcall __lshrdi3
	mov r2,r18
	mov r3,r19
	mov r4,r20
	mov r5,r21
	mov r6,r22
	mov r7,r23
	mov r8,r24
	mov r14,r25
	mov r18,r15
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+2
	mov r22,r27
	mov r23,r26
	mov r24,r31
	ldd r25,Y+1
	ldi r16,lo8(40)
	rcall __lshrdi3
	mov r9,r19
	mov r18,r15
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+2
	mov r22,r27
	mov r23,r26
	mov r24,r31
	ldd r25,Y+1
	ldi r16,lo8(24)
	rcall __lshrdi3
	mov r10,r20
	mov r18,r15
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+2
	mov r22,r27
	mov r23,r26
	mov r24,r31
	ldd r25,Y+1
	ldi r16,lo8(8)
	rcall __lshrdi3
	mov r11,r21
	mov r18,r15
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+2
	mov r22,r27
	mov r23,r26
	mov r24,r31
	ldd r25,Y+1
	rcall __ashldi3
	mov r12,r22
	mov r18,r15
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+2
	mov r22,r27
	mov r23,r26
	mov r24,r31
	ldd r25,Y+1
	ldi r16,lo8(24)
	rcall __ashldi3
	mov r30,r23
	mov r18,r15
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+2
	mov r22,r27
	mov r23,r26
	mov r24,r31
	ldd r25,Y+1
	ldi r16,lo8(40)
	rcall __ashldi3
	mov r13,r24
	mov r18,r15
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+2
	mov r22,r27
	mov r23,r26
	mov r24,r31
	ldd r25,Y+1
	ldi r16,lo8(56)
	rcall __ashldi3
	or r18,r2
	or r19,r3
	or r20,r4
	or r21,r5
	or r22,r6
	or r23,r7
	or r24,r8
	or r19,r9
	or r20,r10
	or r21,r11
	or r22,r12
	or r23,r30
	or r24,r13
	or r25,r14
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
	.size	__bswapdi2, .-__bswapdi2
.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r4,r19
	clr r5
	clr r6
	clr r7
	mov r8,r17
	mov r9,r18
	mov r10,r19
	clr r11
	clr r8
	clr r10
	clr r11
	clr r12
	mov r13,r16
	mov r14,r17
	mov r15,r18
	clr r12
	clr r13
	clr r15
	mov r19,r16
	clr r18
	clr r17
	clr r16
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
	or r22,r4
	or r23,r5
	or r24,r6
	or r25,r7
	or r22,r8
	or r23,r9
	or r24,r10
	or r25,r11
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	set
	clr r12
	bld r12,4
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	ldi r24,1
	cpc r18,r24
	cpc r19,__zero_reg__
	brlo .L692
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L692:
	ldi r24,lo8(16)
	ldi r25,0
	sub r24,r12
	sbc r25,r13
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r24
	brpl 1b
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	clr r24
	clr r26
	clr r27
	ldi r20,lo8(8)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L693
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L693:
	ldi r24,lo8(8)
	ldi r25,0
	sub r24,r20
	sbc r25,r21
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r24
	brpl 1b
	add r12,r20
	adc r13,r21
	adc r14,r22
	adc r15,r23
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	andi r24,240
	clr r25
	clr r26
	clr r27
	ldi r20,lo8(4)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L694
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L694:
	ldi r24,lo8(4)
	ldi r25,0
	sub r24,r20
	sbc r25,r21
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r24
	brpl 1b
	add r12,r20
	adc r13,r21
	adc r14,r22
	adc r15,r23
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	andi r24,12
	clr r25
	clr r26
	clr r27
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L695
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L695:
	ldi r24,lo8(2)
	ldi r25,0
	sub r24,r20
	sbc r25,r21
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r24
	brpl 1b
	add r12,r20
	adc r13,r21
	adc r14,r22
	adc r15,r23
	ldi r24,lo8(1)
	sbrc r16,1
	ldi r24,0
.L696:
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sub r20,r16
	sbc r21,r17
	sbc r22,r18
	sbc r23,r19
	ldi r25,0
	mov r22,r20
	mov r23,r21
	rcall __mulhi3
	mov r30,r24
	mov r31,r25
	mov r24,r30
	mov r25,r31
	add r24,r12
	adc r25,r13
/* epilogue start */
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
	brlt .L703
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
	brlt .L704
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
	brlo .L705
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
	brlo .L706
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L702
.L703:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L702:
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
.L704:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L702
.L705:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L702
.L706:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L702
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	rcall __cmpdi2
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L713
	ldi r24,lo8(16)
	ldi r31,0
	ldi r30,0
	ldi r25,0
.L709:
	mov r0,r24
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	mov r20,r24
	mov r21,r31
	mov r22,r30
	mov r23,r25
	ldi r24,lo8(8)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	cp r16, __zero_reg__
	breq .L710
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L710:
	mov r0,r24
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	andi r24,15
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L715
	ldi r24,lo8(4)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L711:
	mov r0,r24
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	andi r24,3
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L716
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L712:
	mov r0,r24
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	andi r16,3
	clr r17
	clr r18
	clr r19
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	com r24
	com r25
	com r26
	com r27
	mov r30,r24
	andi r30,1<<0
	clr r31
	lsr r19
	ror r18
	ror r17
	ror r16
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	sub r24,r16
	sbc r25,r17
	sbc r26,r18
	sbc r27,r19
	clr r18
	clr r19
	sub r18,r30
	sbc r19,r31
	and r24,r18
	and r25,r19
	add r24,r20
	adc r25,r21
/* epilogue start */
	pop r17
	pop r16
	ret
.L713:
	ldi r24,0
	ldi r31,0
	ldi r30,0
	ldi r25,0
	rjmp .L709
.L715:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L711
.L716:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L712
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
	mov r30,r16
	mov r31,r17
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	sbrs r30,5
	rjmp .L718
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	std Y+15,__zero_reg__
	std Y+16,__zero_reg__
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	sbiw r30,32
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r30
	brpl 1b
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
.L719:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
.L720:
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
.L718:
	sbiw r30,0
	breq .L720
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
	sub r18,r30
	sbc r19,r31
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
	rjmp .L719
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
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	mov r4,r18
	mov r5,r19
	mov r6,r20
	mov r7,r21
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	clr r20
	clr r21
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	mov r27,r7
	mov r26,r6
	mov r25,r5
	mov r24,r4
	clr r26
	clr r27
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __mulsi3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r13,r11
	mov r12,r10
	clr r14
	clr r15
	clr r10
	clr r11
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	mov r19,r21
	mov r18,r20
	clr r20
	clr r21
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __mulsi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	mov r26,r12
	mov r27,r13
	clr r25
	clr r24
	mov r19,r15
	mov r18,r14
	clr r20
	clr r21
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	mov r13,r27
	mov r12,r26
	clr r14
	clr r15
	std Y+21,r8
	std Y+22,r9
	std Y+23,r10
	std Y+24,r11
	mov r9,r7
	mov r8,r6
	clr r10
	clr r11
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __mulsi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	mov r26,r12
	mov r27,r13
	clr r25
	clr r24
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	mov r4,r24
	mov r5,r25
	mov r6,r26
	mov r7,r27
	mov r13,r15
	mov r12,r14
	clr r14
	clr r15
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	add r12,r24
	adc r13,r25
	adc r14,r26
	adc r15,r27
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __mulsi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	mov r22,r12
	mov r23,r13
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
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
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	std Y+25,r24
	std Y+26,r25
	std Y+27,r26
	std Y+28,r27
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
	rcall __muldsi3
	mov r17,r18
	mov r16,r19
	mov r3,r20
	mov r2,r21
	std Y+21,r22
	std Y+22,r23
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
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	rcall __mulsi3
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	rcall __mulsi3
	add r4,r22
	adc r5,r23
	adc r6,r24
	adc r7,r25
	add r4,r12
	adc r5,r13
	adc r6,r14
	adc r7,r15
	mov r22,r4
	mov r23,r5
	mov r18,r17
	mov r19,r16
	mov r20,r3
	mov r21,r2
	mov r24,r6
	mov r25,r7
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
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
.global	__negdi2
	.type	__negdi2, @function
__negdi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall __negdi2
/* epilogue start */
	ret
	.size	__negdi2, .-__negdi2
.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
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
	ret
	.size	__paritydi2, .-__paritydi2
.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
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
	pop r17
	pop r16
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r6,r18
	mov r7,r19
	mov r29,r20
	mov r28,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	ldi r16,lo8(1)
	rcall __lshrdi3
	andi r18,lo8(85)
	mov r10,r18
	andi r19,lo8(85)
	mov r11,r19
	andi r20,lo8(85)
	mov r12,r20
	andi r21,lo8(85)
	mov r13,r21
	andi r22,lo8(85)
	mov r14,r22
	andi r23,lo8(85)
	mov r15,r23
	mov r16,r24
	andi r16,lo8(85)
	mov r17,r25
	andi r17,lo8(85)
	mov r18,r6
	mov r19,r7
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __subdi3
	mov r10,r18
	mov r29,r19
	mov r28,r20
	mov r27,r21
	mov r26,r22
	mov r31,r23
	mov r30,r24
	mov r17,r25
	ldi r16,lo8(2)
	rcall __lshrdi3
	andi r18,lo8(51)
	andi r19,lo8(51)
	andi r20,lo8(51)
	andi r21,lo8(51)
	andi r22,lo8(51)
	andi r23,lo8(51)
	mov r16,r10
	andi r16,lo8(51)
	mov r10,r16
	andi r29,lo8(51)
	andi r28,lo8(51)
	andi r27,lo8(51)
	andi r26,lo8(51)
	andi r31,lo8(51)
	mov r16,r30
	andi r16,lo8(51)
	andi r17,lo8(51)
	andi r24,lo8(51)
	andi r25,lo8(51)
	mov r11,r29
	mov r12,r28
	mov r13,r27
	mov r14,r26
	mov r15,r31
	rcall __adddi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r30,r24
	mov r17,r25
	ldi r16,lo8(4)
	rcall __lshrdi3
	mov r16,r30
	rcall __adddi3
	andi r18,lo8(15)
	andi r19,lo8(15)
	andi r20,lo8(15)
	andi r21,lo8(15)
	andi r22,lo8(15)
	andi r23,lo8(15)
	mov r4,r18
	mov r5,r19
	mov r6,r20
	mov r7,r21
	andi r24,lo8(15)
	andi r25,lo8(15)
	ldi r16,lo8(32)
	rcall __lshrdi3
	mov r24,r18
	mov r25,r19
	mov r26,r20
	mov r27,r21
	add r24,r4
	adc r25,r5
	adc r26,r6
	adc r27,r7
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
	andi r24,127
	clr r25
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r16,r22
	mov r17,r23
	mov r18,r24
	mov r19,r25
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	lsr r27
	ror r26
	ror r25
	ror r24
	andi r24,85
	andi r25,85
	andi r26,85
	andi r27,85
	mov r23,r19
	mov r22,r18
	mov r21,r17
	mov r20,r16
	sub r20,r24
	sbc r21,r25
	sbc r22,r26
	sbc r23,r27
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
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
	pop r17
	pop r16
	ret
	.size	__popcountsi2, .-__popcountsi2
.global	__powidf2
	.type	__powidf2, @function
__powidf2:
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
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 38 */
.L__stack_usage = 38
	mov r16,r22
	mov r17,r23
	std Y+20,r24
	mov r14,r20
	mov r15,r21
	bst r21,7
	clr r24
	bld r24,0
	mov r18,r24
	ldi r19,0
	std Y+18,r19
	std Y+17,r18
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	set
	clr r12
	bld r12,7
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r13,r31
	mov r31,__tmp_reg__
	std Y+19,r25
	rjmp .L733
.L730:
	mov r24,r14
	mov r25,r15
	tst r25
	brlt .L736
.L731:
	mov r14,r24
	mov r15,r25
	asr r15
	ror r14
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L732
	mov r8,r16
	mov r9,r17
	ldd r10,Y+20
	ldd r11,Y+19
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r16
	std Y+2,r17
	std Y+3,r10
	std Y+4,r11
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r16,r22
	mov r17,r23
	std Y+20,r24
	std Y+19,r25
.L733:
	sbrs r14,0
	rjmp .L730
	mov r4,r16
	mov r5,r17
	ldd r6,Y+20
	ldd r7,Y+19
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+5,r2
	std Y+6,r3
	std Y+7,r12
	std Y+8,r13
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r2,r22
	mov r3,r23
	mov r12,r24
	mov r13,r25
	rjmp .L730
.L736:
	adiw r24,1
	rjmp .L731
.L732:
	ldd r18,Y+17
	ldd r19,Y+18
	or r18,r19
	breq .L734
	std Y+13,r2
	std Y+14,r3
	std Y+15,r12
	std Y+16,r13
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r2,r22
	mov r3,r23
	mov r12,r24
	mov r13,r25
.L734:
	std Y+9,r2
	std Y+10,r3
	std Y+11,r12
	std Y+12,r13
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
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
	.size	__powidf2, .-__powidf2
.global	__powisf2
	.type	__powisf2, @function
__powisf2:
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
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 38 */
.L__stack_usage = 38
	mov r16,r22
	mov r17,r23
	std Y+20,r24
	mov r14,r20
	mov r15,r21
	bst r21,7
	clr r24
	bld r24,0
	mov r18,r24
	ldi r19,0
	std Y+18,r19
	std Y+17,r18
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	set
	clr r12
	bld r12,7
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r13,r31
	mov r31,__tmp_reg__
	std Y+19,r25
	rjmp .L741
.L738:
	mov r24,r14
	mov r25,r15
	tst r25
	brlt .L744
.L739:
	mov r14,r24
	mov r15,r25
	asr r15
	ror r14
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L740
	mov r8,r16
	mov r9,r17
	ldd r10,Y+20
	ldd r11,Y+19
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r16
	std Y+2,r17
	std Y+3,r10
	std Y+4,r11
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __mulsf3
	mov r16,r22
	mov r17,r23
	std Y+20,r24
	std Y+19,r25
.L741:
	sbrs r14,0
	rjmp .L738
	mov r4,r16
	mov r5,r17
	ldd r6,Y+20
	ldd r7,Y+19
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+5,r2
	std Y+6,r3
	std Y+7,r12
	std Y+8,r13
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r2,r22
	mov r3,r23
	mov r12,r24
	mov r13,r25
	rjmp .L738
.L744:
	adiw r24,1
	rjmp .L739
.L740:
	ldd r18,Y+17
	ldd r19,Y+18
	or r18,r19
	breq .L742
	std Y+13,r2
	std Y+14,r3
	std Y+15,r12
	std Y+16,r13
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r2,r22
	mov r3,r23
	mov r12,r24
	mov r13,r25
.L742:
	std Y+9,r2
	std Y+10,r3
	std Y+11,r12
	std Y+12,r13
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
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
	brlo .L747
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
	brlo .L748
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
	brlo .L749
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
	brlo .L750
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L746
.L747:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L746:
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
.L748:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L746
.L749:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L746
.L750:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L746
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	rcall __ucmpdi2
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
/* epilogue start */
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
