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
	mov r18,r22
	mov r19,r23
	mov r28,r20
	mov r29,r21
	cp r18,r16
	cpc r19,r17
	brsh .L2
	mov r26,r18
	mov r27,r19
	add r26,r28
	adc r27,r29
	mov r30,r16
	mov r31,r17
	add r30,r28
	adc r31,r29
	or r28,r29
	breq .L3
	mov r18,r16
	mov r19,r17
.L4:
	ld r24,-X
	st -Z,r24
	cp r18,r30
	cpc r19,r31
	brne .L4
.L3:
	mov r24,r16
	mov r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L2:
	cp r16,r18
	cpc r17,r19
	breq .L3
	sbiw r28,0
	breq .L3
	mov r30,r16
	mov r31,r17
	add r28,r18
	adc r29,r19
.L5:
	mov r26,r18
	mov r27,r19
	subi r18,-1
	sbci r19,-1
	ld r24,X
	st Z+,r24
	cp r18,r28
	cpc r19,r29
	brne .L5
	rjmp .L3
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
	mov r16,r24
	mov r17,r25
	mov r30,r18
	mov r31,r19
	ldi r21,0
	sbiw r30,0
	breq .L10
	mov r28,r22
	mov r29,r23
	mov r26,r16
	mov r27,r17
.L11:
	mov r16,r26
	mov r17,r27
	ld r25,Y+
	st X+,r25
	cp r25,r20
	cpc __zero_reg__,r21
	breq .L10
	sbiw r30,1
	sbiw r30,0
	brne .L11
	mov r16,r26
	mov r17,r27
.L10:
	mov r24,r16
	mov r25,r17
	adiw r24,1
	or r30,r31
	breq .L16
.L9:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L16:
	ldi r24,0
	ldi r25,0
	rjmp .L9
	.size	memccpy, .-memccpy
.global	memchr
	.type	memchr, @function
memchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r20
	mov r31,r21
	ldi r23,0
	sbiw r30,0
	breq .L22
	mov r18,r24
	mov r19,r25
.L19:
	mov r26,r18
	mov r27,r19
	subi r18,-1
	sbci r19,-1
	ld r24,X
	cp r24,r22
	cpc __zero_reg__,r23
	breq .L18
	sbiw r30,1
	sbiw r30,0
	brne .L19
	mov r26,r18
	mov r27,r19
.L18:
	or r30,r31
	breq .L24
.L17:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	ret
.L22:
	mov r26,r24
	mov r27,r25
	rjmp .L18
.L24:
	ldi r26,0
	ldi r27,0
	rjmp .L17
	.size	memchr, .-memchr
.global	memcmp
	.type	memcmp, @function
memcmp:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L26
	mov r20,r26
	mov r21,r27
	mov r24,r30
	mov r25,r31
.L27:
	mov r30,r24
	mov r31,r25
	mov r26,r20
	mov r27,r21
	subi r20,-1
	sbci r21,-1
	adiw r24,1
	ld r23,X
	ld r22,Z
	cpse r23,r22
	rjmp .L26
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L27
	mov r26,r20
	mov r27,r21
	mov r30,r24
	mov r31,r25
.L26:
	or r18,r19
	breq .L30
	ld r24,X
	ld r25,Z
	sub r24,r25
	sbc r25,r25
	ret
.L30:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
	.size	memcmp, .-memcmp
.global	memcpy
	.type	memcpy, @function
memcpy:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L33
	mov r20,r18
	mov r21,r19
	rcall memcpy
.L33:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	memcpy, .-memcpy
.global	memrchr
	.type	memrchr, @function
memrchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	ldi r23,0
	mov r30,r18
	mov r31,r19
	add r30,r20
	adc r31,r21
	mov r20,r18
	mov r21,r19
.L35:
	cp r30,r20
	cpc r31,r21
	breq .L38
	sbiw r30,1
	mov r24,r30
	mov r25,r31
	ld r18,Z
	cp r18,r22
	cpc __zero_reg__,r23
	brne .L35
	ret
.L38:
	ldi r24,0
	ldi r25,0
.L34:
/* epilogue start */
	ret
	.size	memrchr, .-memrchr
.global	memset
	.type	memset, @function
memset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r24
	mov r27,r25
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L40
	add r18,r26
	adc r19,r27
	mov r30,r26
	mov r31,r27
.L41:
	st Z+,r22
	cp r18,r30
	cpc r19,r31
	brne .L41
.L40:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	ret
	.size	memset, .-memset
.global	stpcpy
	.type	stpcpy, @function
stpcpy:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	ld r24,X
	st Z,r24
	cp r24, __zero_reg__
	breq .L46
	adiw r26,1
	adiw r30,1
.L45:
	mov r24,r30
	mov r25,r31
	ld r18,X+
	st Z+,r18
	cpse r18,__zero_reg__
	rjmp .L45
	ret
.L46:
	mov r24,r30
/* epilogue start */
	ret
	.size	stpcpy, .-stpcpy
.global	strchrnul
	.type	strchrnul, @function
strchrnul:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	ldi r23,0
	ld r24,Z
	cp r24, __zero_reg__
	breq .L52
.L49:
	cp r24,r22
	cpc __zero_reg__,r23
	breq .L52
	adiw r30,1
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L49
.L52:
	mov r24,r30
	mov r25,r31
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
.L56:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r20
	cpc r0,r21
	breq .L54
	cpse r18,__zero_reg__
	rjmp .L56
	ldi r24,0
	ldi r25,0
.L54:
/* epilogue start */
	ret
	.size	strchr, .-strchr
.global	strcmp
	.type	strcmp, @function
strcmp:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	ld r24,X
	ld r25,Z
	cpse r24,r25
	rjmp .L59
	adiw r26,1
	adiw r30,1
.L60:
	cp r24, __zero_reg__
	breq .L59
	ld r24,X+
	ld r25,Z+
	cp r24,r25
	breq .L60
.L59:
	sub r24,r25
	sbc r25,r25
/* epilogue start */
	ret
	.size	strcmp, .-strcmp
.global	strlen
	.type	strlen, @function
strlen:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r24
	mov r27,r25
	ld r24,X
	cp r24, __zero_reg__
	breq .L65
	mov r18,r26
	mov r19,r27
	subi r18,-1
	sbci r19,-1
.L64:
	mov r30,r18
	mov r31,r19
	subi r18,-1
	sbci r19,-1
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L64
.L63:
	mov r24,r30
	mov r25,r31
	sub r24,r26
	sbc r25,r27
/* epilogue start */
	ret
.L65:
	mov r30,r26
	mov r31,r27
	rjmp .L63
	.size	strlen, .-strlen
.global	strncmp
	.type	strncmp, @function
strncmp:
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
	mov r28,r22
	mov r29,r23
	mov r18,r20
	mov r19,r21
	ldi r24,0
	ldi r25,0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L67
	mov r30,r16
	mov r31,r17
	ld r24,Z
	cp r24, __zero_reg__
	breq .L69
	mov r30,r28
	mov r31,r29
	mov r26,r16
	mov r27,r17
	adiw r26,1
	add r18,r16
	adc r19,r17
.L70:
	mov r28,r30
	mov r29,r31
	ld r25,Z+
	cp r25, __zero_reg__
	breq .L69
	cp r26,r18
	cpc r27,r19
	breq .L69
	cpse r25,r24
	rjmp .L69
	ld r24,X+
	cpse r24,__zero_reg__
	rjmp .L70
	mov r28,r30
	mov r29,r31
.L69:
	ld r25,Y
	sub r24,r25
	sbc r25,r25
.L67:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	strncmp, .-strncmp
.global	swab
	.type	swab, @function
swab:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	mov r18,r20
	mov r19,r21
	cpi r18,2
	cpc r19,__zero_reg__
	brlt .L74
	andi r18,254
	add r18,r30
	adc r19,r31
.L76:
	ldd r24,Z+1
	st X,r24
	ld r24,Z
	adiw r26,1
	st X,r24
	sbiw r26,1
	adiw r26,2
	adiw r30,2
	cp r30,r18
	cpc r31,r19
	brne .L76
.L74:
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
	ldi r25,0
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L79
	ldi r24,0
	ldi r25,0
.L79:
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
	ldi r25,0
	cpi r18,-128
	cpc r19,__zero_reg__
	brlo .L81
	ldi r24,0
	ldi r25,0
.L81:
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
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,32
	cpc r19,__zero_reg__
	breq .L82
	cpi r18,9
	cpc r19,__zero_reg__
	breq .L82
	ldi r24,0
	ret
.L82:
/* epilogue start */
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
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,32
	cpc r19,__zero_reg__
	brlo .L86
	cpi r18,127
	cpc r19,__zero_reg__
	breq .L86
	ldi r24,0
	ret
.L86:
/* epilogue start */
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
	ldi r25,0
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L91
	ldi r24,0
	ldi r25,0
.L91:
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
	ldi r25,0
	cpi r18,94
	cpc r19,__zero_reg__
	brlo .L93
	ldi r24,0
	ldi r25,0
.L93:
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
	ldi r25,0
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L95
	ldi r24,0
	ldi r25,0
.L95:
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
	ldi r25,0
	cpi r18,95
	cpc r19,__zero_reg__
	brlo .L97
	ldi r24,0
	ldi r25,0
.L97:
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
	breq .L101
	subi r18,9
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L98
	ldi r24,0
	ret
.L101:
	ldi r24,lo8(1)
	ldi r25,0
.L98:
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
	ldi r25,0
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L103
	ldi r24,0
	ldi r25,0
.L103:
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
	brlo .L109
	mov r24,r18
	mov r25,r19
	subi r24,127
	sbc r25,__zero_reg__
	cpi r24,33
	cpc r25,__zero_reg__
	brlo .L109
	subi r24,-87
	sbci r25,31
	sbiw r24,2
	brlo .L109
	subi r18,-7
	sbci r19,-1
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,3
	cpc r19,__zero_reg__
	brlo .L104
	ldi r24,0
	ret
.L109:
	ldi r24,lo8(1)
	ldi r25,0
.L104:
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
	ldi r25,0
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L111
	ldi r24,0
	ldi r25,0
.L111:
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
	brlo .L121
	cpi r18,40
	ldi r20,32
	cpc r19,r20
	brlo .L119
	mov r24,r18
	mov r25,r19
	subi r24,42
	sbci r25,32
	cpi r24,-42
	ldi r20,-73
	cpc r25,r20
	brlo .L119
	subi r24,-42
	sbci r25,-65
	cpi r24,-7
	sbci r25,31
	brlo .L119
	andi r18,254
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,-2
	sbci r19,-1
	brne .L112
	rjmp .L120
.L121:
	subi r18,-1
	sbci r19,-1
	andi r18,127
	clr r19
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,33
	cpc r19,__zero_reg__
	brsh .L112
.L120:
	ldi r24,0
	ret
.L119:
	ldi r24,lo8(1)
	ldi r25,0
.L112:
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
	brlo .L125
	ori r18,32
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,0
	cpi r18,6
	cpc r19,__zero_reg__
	brlo .L122
	ldi r24,0
	ret
.L125:
	ldi r24,lo8(1)
	ldi r25,0
.L122:
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
	sbiw r28,30
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 30 */
/* stack size = 46 */
.L__stack_usage = 46
	mov r12,r22
	mov r13,r23
	mov r14,r24
	std Y+29,r25
	mov r15,r18
	mov r16,r19
	mov r17,r20
	std Y+30,r21
	ldd r24,Y+29
	mov r8,r22
	mov r9,r23
	mov r10,r14
	mov r11,r24
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r22
	std Y+2,r23
	std Y+3,r14
	std Y+4,r24
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L130
	ldd r24,Y+30
	mov r4,r15
	mov r5,r16
	mov r6,r17
	mov r7,r24
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+9,r15
	std Y+10,r16
	std Y+11,r17
	std Y+12,r24
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L131
	std Y+13,r15
	std Y+14,r16
	std Y+15,r17
	std Y+16,r7
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	std Y+17,r12
	std Y+18,r13
	std Y+19,r14
	std Y+20,r11
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L134
	brlt .L134
	std Y+21,r15
	std Y+22,r16
	std Y+23,r17
	std Y+24,r7
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	std Y+25,r12
	std Y+26,r13
	std Y+27,r14
	std Y+28,r11
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+27
	ldd r25,Y+28
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
	adiw r28,30
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
.L130:
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldd r25,Y+29
	rjmp .L127
.L131:
	mov r22,r15
	mov r23,r16
	mov r24,r17
	ldd r25,Y+30
	rjmp .L127
.L134:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L127
	.size	fdim, .-fdim
.global	fdimf
	.type	fdimf, @function
fdimf:
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
	sbiw r28,30
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 30 */
/* stack size = 46 */
.L__stack_usage = 46
	mov r12,r22
	mov r13,r23
	mov r14,r24
	std Y+29,r25
	mov r15,r18
	mov r16,r19
	mov r17,r20
	std Y+30,r21
	ldd r24,Y+29
	mov r8,r22
	mov r9,r23
	mov r10,r14
	mov r11,r24
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r22
	std Y+2,r23
	std Y+3,r14
	std Y+4,r24
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L138
	ldd r24,Y+30
	mov r4,r15
	mov r5,r16
	mov r6,r17
	mov r7,r24
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+9,r15
	std Y+10,r16
	std Y+11,r17
	std Y+12,r24
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L139
	std Y+13,r15
	std Y+14,r16
	std Y+15,r17
	std Y+16,r7
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	std Y+17,r12
	std Y+18,r13
	std Y+19,r14
	std Y+20,r11
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L142
	brlt .L142
	std Y+21,r15
	std Y+22,r16
	std Y+23,r17
	std Y+24,r7
	ldd r18,Y+21
	ldd r19,Y+22
	ldd r20,Y+23
	ldd r21,Y+24
	std Y+25,r12
	std Y+26,r13
	std Y+27,r14
	std Y+28,r11
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+27
	ldd r25,Y+28
	rcall __subsf3
.L135:
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
/* epilogue start */
	adiw r28,30
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
.L138:
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldd r25,Y+29
	rjmp .L135
.L139:
	mov r22,r15
	mov r23,r16
	mov r24,r17
	ldd r25,Y+30
	rjmp .L135
.L142:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L135
	.size	fdimf, .-fdimf
.global	fmax
	.type	fmax, @function
fmax:
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
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r18
	mov r17,r19
	std Y+22,r20
	std Y+21,r21
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
	rjmp .L151
	ldd r25,Y+22
	ldd r24,Y+21
	mov r4,r16
	mov r5,r17
	mov r6,r25
	mov r7,r24
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
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
	rjmp .L150
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r7
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L145
	or r24,r25
	brne .L151
.L150:
	mov r16,r12
	mov r17,r13
	std Y+9,r14
	std Y+1,r15
	rjmp .L143
.L145:
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
	std Y+17,r12
	std Y+18,r13
	std Y+19,r14
	std Y+20,r15
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L150
.L151:
	ldd r24,Y+22
	std Y+9,r24
	ldd r24,Y+21
	std Y+1,r24
.L143:
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
	pop r5
	pop r4
	ret
	.size	fmax, .-fmax
.global	fmaxf
	.type	fmaxf, @function
fmaxf:
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
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r16,r18
	mov r17,r19
	std Y+22,r20
	std Y+21,r21
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
	rjmp .L160
	ldd r25,Y+22
	ldd r24,Y+21
	mov r4,r16
	mov r5,r17
	mov r6,r25
	mov r7,r24
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
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
	rjmp .L159
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r7
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L154
	or r24,r25
	brne .L160
.L159:
	mov r16,r12
	mov r17,r13
	std Y+9,r14
	std Y+1,r15
	rjmp .L152
.L154:
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
	std Y+17,r12
	std Y+18,r13
	std Y+19,r14
	std Y+20,r15
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L159
.L160:
	ldd r24,Y+22
	std Y+9,r24
	ldd r24,Y+21
	std Y+1,r24
.L152:
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
	pop r5
	pop r4
	ret
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
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 27 */
.L__stack_usage = 27
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	mov r2,r24
	mov r3,r25
	mov r4,r10
	mov r5,r11
	mov r6,r12
	mov r7,r13
	mov r8,r14
	mov r9,r15
	std Y+9,r16
	std Y+8,r17
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
	rjmp .L169
	mov r10,r4
	mov r11,r5
	mov r12,r6
	mov r13,r7
	mov r14,r8
	mov r15,r9
	ldd r16,Y+9
	ldd r17,Y+8
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
	rjmp .L168
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L163
	or r24,r25
	brne .L169
.L168:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	mov r25,r3
	rjmp .L161
.L163:
	ldi r24,lo8(1)
	std Y+7,r24
	ldd r16,Y+9
	ldd r17,Y+8
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	mov r25,r3
	rcall __ltdf2
	cpse r24,__zero_reg__
	rjmp .L166
	std Y+7,__zero_reg__
.L166:
	ldd r24,Y+7
	cpse r24,__zero_reg__
	rjmp .L169
	ldd r4,Y+1
	ldd r5,Y+2
	ldd r6,Y+3
	ldd r7,Y+4
	ldd r8,Y+5
	ldd r9,Y+6
	std Y+9,r2
	std Y+8,r3
.L169:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+9
	ldd r25,Y+8
.L161:
/* epilogue start */
	adiw r28,9
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
	.size	fmaxl, .-fmaxl
.global	fmin
	.type	fmin, @function
fmin:
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
	mov r12,r22
	mov r13,r23
	std Y+22,r24
	std Y+21,r25
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	ldd r25,Y+22
	ldd r24,Y+21
	mov r8,r22
	mov r9,r23
	mov r10,r25
	mov r11,r24
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
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
	rjmp .L176
	mov r4,r14
	mov r5,r15
	mov r6,r16
	mov r7,r17
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L178
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L172
	or r24,r25
	brne .L178
.L176:
	mov r12,r14
	mov r13,r15
	std Y+9,r16
	std Y+1,r17
.L170:
	ldd r25,Y+9
	ldd r24,Y+1
	std Y+5,r12
	std Y+6,r13
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
	pop r5
	pop r4
	ret
.L172:
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r25,Y+22
	ldd r24,Y+21
	std Y+17,r12
	std Y+18,r13
	std Y+19,r25
	std Y+20,r24
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L176
.L178:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L170
	.size	fmin, .-fmin
.global	fminf
	.type	fminf, @function
fminf:
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
	mov r12,r22
	mov r13,r23
	std Y+22,r24
	std Y+21,r25
	mov r14,r18
	mov r15,r19
	mov r16,r20
	mov r17,r21
	ldd r25,Y+22
	ldd r24,Y+21
	mov r8,r22
	mov r9,r23
	mov r10,r25
	mov r11,r24
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
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
	rjmp .L185
	mov r4,r14
	mov r5,r15
	mov r6,r16
	mov r7,r17
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	std Y+9,r14
	std Y+10,r15
	std Y+11,r16
	std Y+12,r17
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L187
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L181
	or r24,r25
	brne .L187
.L185:
	mov r12,r14
	mov r13,r15
	std Y+9,r16
	std Y+1,r17
.L179:
	ldd r25,Y+9
	ldd r24,Y+1
	std Y+5,r12
	std Y+6,r13
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
	pop r5
	pop r4
	ret
.L181:
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r25,Y+22
	ldd r24,Y+21
	std Y+17,r12
	std Y+18,r13
	std Y+19,r25
	std Y+20,r24
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __ltsf2
	cp r24, __zero_reg__
	brge .L185
.L187:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L179
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
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 27 */
.L__stack_usage = 27
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	mov r2,r24
	std Y+8,r25
	mov r3,r10
	mov r4,r11
	mov r5,r12
	mov r6,r13
	mov r7,r14
	mov r8,r15
	mov r9,r16
	std Y+9,r17
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
	rjmp .L194
	mov r10,r3
	mov r11,r4
	mov r12,r5
	mov r13,r6
	mov r14,r7
	mov r15,r8
	mov r16,r9
	ldd r17,Y+9
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	mov r25,r17
	rcall __unorddf2
	cpse r24,__zero_reg__
	rjmp .L196
	ldd r18,Y+8
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L190
	or r24,r25
	brne .L196
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	mov r25,r17
	rjmp .L188
.L190:
	ldi r24,lo8(1)
	std Y+7,r24
	ldd r17,Y+9
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	ldd r25,Y+8
	rcall __ltdf2
	cpse r24,__zero_reg__
	rjmp .L193
	std Y+7,__zero_reg__
.L193:
	ldd r25,Y+7
	cp r25, __zero_reg__
	breq .L191
.L196:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
.L197:
	ldd r25,Y+8
.L188:
/* epilogue start */
	adiw r28,9
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
.L191:
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	ldd r25,Y+9
	std Y+8,r25
	rjmp .L197
.L194:
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	ldd r25,Y+9
	rjmp .L188
	.size	fminl, .-fminl
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
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	cpc r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L199
.L200:
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
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	cpc r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L200
.L199:
	st Z,__zero_reg__
	ldi r24,lo8(s.0)
	ldi r25,hi8(s.0)
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	l64a, .-l64a
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
	breq .L208
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+1,r25
	st Z,r24
	std Z+3,r27
	std Z+2,r26
	st X+,r30
	st X,r31
	ld r26,Z
	ldd r27,Z+1
	sbiw r26,0
	breq .L205
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L205:
/* epilogue start */
	ret
.L208:
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
	ld r26,Z
	ldd r27,Z+1
	sbiw r26,0
	breq .L210
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
.L210:
	ldd r26,Z+2
	ldd r27,Z+3
	sbiw r26,0
	breq .L209
	ld r24,Z
	ldd r25,Z+1
	st X+,r24
	st X,r25
.L209:
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
	mov r4,r24
	mov r5,r25
	mov r10,r22
	mov r11,r23
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
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	breq .L213
	mov r28,r10
	mov r29,r11
	ldi r16,0
	ldi r17,0
.L215:
	mov r2,r28
	mov r3,r29
	mov r22,r28
	mov r23,r29
	mov r24,r4
	mov r25,r5
	mov r30,r12
	mov r31,r13
	icall
	or r24,r25
	breq .L212
	subi r16,-1
	sbci r17,-1
	add r28,r14
	adc r29,r15
	cp r8,r16
	cpc r9,r17
	brne .L215
.L213:
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
	mov r22,r4
	mov r23,r5
	add r24,r10
	adc r25,r11
	rcall memcpy
	mov r2,r24
	mov r3,r25
.L212:
	mov r24,r2
	mov r25,r3
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
	mov r9,r24
	mov r8,r25
	mov r12,r18
	mov r13,r19
	mov r14,r16
	mov r15,r17
	mov r30,r20
	mov r31,r21
	ld r10,Z
	ldd r11,Z+1
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L218
	mov r28,r22
	mov r29,r23
	ldi r16,0
	ldi r17,0
.L220:
	mov r6,r28
	mov r7,r29
	mov r22,r28
	mov r23,r29
	mov r24,r9
	mov r25,r8
	mov r30,r14
	mov r31,r15
	icall
	or r24,r25
	breq .L217
	subi r16,-1
	sbci r17,-1
	add r28,r12
	adc r29,r13
	cp r10,r16
	cpc r11,r17
	brne .L220
.L218:
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.L217:
	mov r24,r6
	mov r25,r7
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
	brlt .L224
.L223:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	ret
.L224:
	neg r19
	neg r18
	sbc r19,__zero_reg__
	rjmp .L223
	.size	abs, .-abs
.global	atoi
	.type	atoi, @function
atoi:
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	mov r16,r24
	mov r17,r25
.L226:
	mov r12,r16
	mov r13,r17
	mov r30,r16
	mov r31,r17
	ld r15,Z+
	mov r16,r30
	mov r17,r31
	mov r24,r15
	mov __tmp_reg__,r15
	lsl r0
	sbc r25,r25
	rcall isspace
	mov r28,r24
	mov r29,r25
	sbiw r28,0
	brne .L226
	ldi r31,lo8(43)
	cp r15,r31
	breq .L233
	ldi r24,lo8(45)
	ldi r20,lo8(1)
	ldi r21,0
	cp r15,r24
	breq .L227
	ldi r20,0
	ldi r21,0
	rjmp .L228
.L233:
	ldi r20,0
	ldi r21,0
.L227:
	ldi r30,-1
	sub r12,r30
	sbc r13,r30
.L228:
	mov r30,r12
	mov r31,r13
	ld r18,Z
	mov r24,r18
	mov __tmp_reg__,r18
	lsl r0
	sbc r25,r25
	sbiw r24,48
	adiw r30,1
	sbiw r24,10
	brsh .L230
.L229:
	mov r24,r28
	mov r25,r29
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r28
	adc r25,r29
	lsl r24
	rol r25
	subi r18,lo8(-(-48))
	mov r28,r24
	mov r29,r25
	sub r28,r18
	sbc r29,__zero_reg__
	sbrc r18,7
	inc r29
	ld r18,Z+
	mov r24,r18
	mov __tmp_reg__,r18
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .L229
.L230:
	or r20,r21
	brne .L225
	neg r29
	neg r28
	sbc r29,__zero_reg__
.L225:
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	ret
	.size	atoi, .-atoi
.global	atol
	.type	atol, @function
atol:
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	mov r16,r24
	mov r17,r25
.L238:
	mov r12,r16
	mov r13,r17
	mov r30,r16
	mov r31,r17
	ld r15,Z+
	mov r16,r30
	mov r17,r31
	mov r24,r15
	mov __tmp_reg__,r15
	lsl r0
	sbc r25,r25
	rcall isspace
	mov r28,r24
	mov r29,r25
	sbiw r28,0
	brne .L238
	ldi r31,lo8(43)
	cp r15,r31
	breq .L239
	ldi r24,lo8(45)
	cpse r15,r24
	rjmp .L240
	ldi r28,lo8(1)
	ldi r29,0
.L239:
	ldi r30,-1
	sub r12,r30
	sbc r13,r30
.L240:
	mov r30,r12
	mov r31,r13
	ld r20,Z
	mov r24,r20
	mov __tmp_reg__,r20
	lsl r0
	sbc r25,r25
	sbiw r24,48
	adiw r30,1
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	sbiw r24,10
	brlo .+2
	rjmp .L247
.L241:
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	add r24,r16
	adc r25,r17
	adc r26,r18
	adc r27,r19
	lsl r24
	rol r25
	rol r26
	rol r27
	subi r20,lo8(-(-48))
	mov __tmp_reg__,r20
	lsl r0
	sbc r21,r21
	sbc r22,r22
	sbc r23,r23
	mov r16,r24
	mov r17,r25
	mov r18,r26
	mov r19,r27
	sub r16,r20
	sbc r17,r21
	sbc r18,r22
	sbc r19,r23
	ld r20,Z+
	mov r24,r20
	mov __tmp_reg__,r20
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .L241
.L242:
	or r28,r29
	brne .L237
	com r19
	com r18
	com r17
	neg r16
	sbci r17,lo8(-1)
	sbci r18,lo8(-1)
	sbci r19,lo8(-1)
.L237:
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	ret
.L247:
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	rjmp .L242
	.size	atol, .-atol
.global	atoll
	.type	atoll, @function
atoll:
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
	mov r14,r24
	mov r15,r25
.L249:
	mov r12,r14
	mov r13,r15
	mov r26,r14
	mov r27,r15
	ld r17,X+
	mov r14,r26
	mov r15,r27
	mov r24,r17
	mov __tmp_reg__,r17
	lsl r0
	sbc r25,r25
	rcall isspace
	mov r28,r24
	mov r29,r25
	sbiw r28,0
	brne .L249
	cpi r17,lo8(43)
	breq .L250
	cpi r17,lo8(45)
	brne .L251
	ldi r28,lo8(1)
	ldi r29,0
.L250:
	ldi r27,-1
	sub r12,r27
	sbc r13,r27
.L251:
	mov r26,r12
	mov r27,r13
	ld r30,X
	mov r24,r30
	mov __tmp_reg__,r30
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .+2
	rjmp .L258
	mov r26,r12
	mov r27,r13
	adiw r26,1
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r31,0
	ldi r17,0
.L252:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r31
	mov r25,r17
	ldi r16,lo8(2)
	rcall __ashldi3
	mov r16,r31
	rcall __adddi3
	ldi r16,lo8(1)
	rcall __ashldi3
	subi r30,lo8(-(-48))
	mov r17,r30
	lsl r17
	sbc r17,r17
	mov r10,r30
	mov r11,r17
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
	mov r31,r24
	mov r17,r25
	ld r30,X+
	mov r24,r30
	mov __tmp_reg__,r30
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .L252
.L253:
	or r28,r29
	brne .L248
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r31
	mov r25,r17
	rcall __negdi2
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r31,r24
	mov r17,r25
.L248:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r31
	mov r25,r17
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
.L258:
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r31,0
	ldi r17,0
	rjmp .L253
	.size	atoll, .-atoll
.global	bsearch
	.type	bsearch, @function
bsearch:
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
	mov r10,r22
	mov r11,r23
	mov r28,r20
	mov r29,r21
	mov r12,r18
	mov r13,r19
	mov r6,r16
	mov r7,r17
	rjmp .L266
.L264:
	mov r28,r8
	mov r29,r9
.L266:
	sbiw r28,0
	breq .L260
	mov r8,r28
	mov r9,r29
	lsr r9
	ror r8
	mov r24,r8
	mov r25,r9
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	mov r16,r10
	mov r17,r11
	add r16,r24
	adc r17,r25
	mov r22,r16
	mov r23,r17
	mov r24,r4
	mov r25,r5
	mov r30,r6
	mov r31,r7
	icall
	mov r14,r24
	mov r15,r25
	tst r15
	brlt .L264
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L259
	brlt .L259
	mov r10,r16
	mov r11,r17
	add r10,r12
	adc r11,r13
	sbiw r28,1
	sub r28,r8
	sbc r29,r9
	rjmp .L266
.L260:
	ldi r16,0
	ldi r17,0
.L259:
	mov r24,r16
	mov r25,r17
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
	mov r6,r22
	mov r7,r23
	mov r10,r18
	mov r11,r19
	mov r8,r16
	mov r9,r17
	mov r28,r20
	mov r29,r21
	sbiw r28,0
	brne .L271
.L268:
	ldi r16,0
	ldi r17,0
.L267:
	mov r24,r16
	mov r25,r17
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
.L270:
	asr r29
	ror r28
	sbiw r28,0
	breq .L268
.L271:
	mov r24,r28
	mov r25,r29
	asr r25
	ror r24
	mov r22,r10
	mov r23,r11
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
	mov r30,r8
	mov r31,r9
	icall
	mov r12,r24
	mov r13,r25
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L267
	brlt .L270
	mov r6,r16
	mov r7,r17
	add r6,r10
	adc r7,r11
	sbiw r28,1
	rjmp .L270
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
	brge .L275
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L275:
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
	std Y+9,r24
	std Y+10,r25
	std Y+1,r16
	std Y+2,r17
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	mov r2,r10
	mov r3,r11
	mov r4,r12
	mov r5,r13
	mov r6,r14
	mov r7,r15
	mov r10,r8
	mov r11,r9
	mov r12,r2
	mov r13,r3
	mov r14,r4
	mov r15,r5
	mov r16,r6
	mov r17,r7
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __divdi3
	ldd r30,Y+9
	ldd r31,Y+10
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	std Z+6,r24
	std Z+7,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __moddi3
	ldd r30,Y+9
	ldd r31,Y+10
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
	brlt .L279
.L278:
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
	pop r17
	pop r16
	ret
.L279:
	com r19
	com r18
	com r17
	neg r16
	sbci r17,lo8(-1)
	sbci r18,lo8(-1)
	sbci r19,lo8(-1)
	rjmp .L278
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
	brge .L282
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L282:
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
	std Y+9,r24
	std Y+10,r25
	std Y+1,r16
	std Y+2,r17
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	mov r2,r10
	mov r3,r11
	mov r4,r12
	mov r5,r13
	mov r6,r14
	mov r7,r15
	mov r10,r8
	mov r11,r9
	mov r12,r2
	mov r13,r3
	mov r14,r4
	mov r15,r5
	mov r16,r6
	mov r17,r7
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __divdi3
	ldd r30,Y+9
	ldd r31,Y+10
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	std Z+6,r24
	std Z+7,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __moddi3
	ldd r30,Y+9
	ldd r31,Y+10
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
	.size	lldiv, .-lldiv
.global	wcschr
	.type	wcschr, @function
wcschr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	mov r20,r22
	mov r21,r23
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L289
.L285:
	cp r20,r18
	cpc r21,r19
	breq .L289
	adiw r30,2
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L285
.L289:
	mov r24,r30
	mov r25,r31
	or r18,r19
	breq .L291
.L284:
/* epilogue start */
	ret
.L291:
	ldi r24,0
	ldi r25,0
	ret
	.size	wcschr, .-wcschr
.global	wcscmp
	.type	wcscmp, @function
wcscmp:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	ld r18,X+
	ld r19,X
	sbiw r26,1
	ld r20,Z
	ldd r21,Z+1
	cp r18,r20
	cpc r19,r21
	brne .L293
	adiw r26,2
	adiw r30,2
.L294:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L293
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L293
	ld r18,X+
	ld r19,X+
	ld r20,Z+
	ld r21,Z+
	cp r18,r20
	cpc r19,r21
	breq .L294
.L293:
	cp r18,r20
	cpc r19,r21
	brlt .L298
	ldi r24,lo8(1)
	ldi r25,0
	cp r20,r18
	cpc r21,r19
	brlt .L292
	ldi r24,0
	ret
.L298:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L292:
/* epilogue start */
	ret
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
	mov r26,r24
	mov r27,r25
.L300:
	mov r30,r18
	mov r31,r19
	ld r20,Z
	ldd r21,Z+1
	subi r18,-2
	sbci r19,-1
	st X+,r20
	st X+,r21
	or r20,r21
	brne .L300
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
	mov r26,r24
	mov r27,r25
	ld r24,X+
	ld r25,X
	sbiw r26,1
	or r24,r25
	breq .L305
	mov r18,r26
	mov r19,r27
	subi r18,-2
	sbci r19,-1
.L304:
	mov r30,r18
	mov r31,r19
	subi r18,-2
	sbci r19,-1
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L304
.L303:
	mov r24,r30
	mov r25,r31
	sub r24,r26
	sbc r25,r27
	asr r25
	ror r24
/* epilogue start */
	ret
.L305:
	mov r30,r26
	mov r31,r27
	rjmp .L303
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
	mov r28,r24
	mov r29,r25
	mov r26,r22
	mov r27,r23
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L308
	mov r30,r28
	mov r31,r29
	mov r24,r26
	mov r25,r27
.L309:
	mov r26,r24
	mov r27,r25
	mov r28,r30
	mov r29,r31
	ld r20,Z+
	ld r21,Z+
	adiw r24,2
	ld r22,X+
	ld r23,X
	sbiw r26,1
	cp r20,r22
	cpc r21,r23
	brne .L308
	or r20,r21
	breq .L308
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L309
	mov r28,r30
	mov r29,r31
	mov r26,r24
	mov r27,r25
.L308:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L307
	ld r18,Y
	ldd r19,Y+1
	ld r20,X+
	ld r21,X
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	cp r18,r20
	cpc r19,r21
	brlt .L307
	ldi r24,lo8(1)
	ldi r25,0
	cp r20,r18
	cpc r21,r19
	brlt .L307
	ldi r24,0
.L307:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	wcsncmp, .-wcsncmp
.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r22
	mov r29,r23
	mov r30,r20
	mov r31,r21
	sbiw r30,0
	breq .L321
	mov r18,r24
	mov r19,r25
.L318:
	mov r26,r18
	mov r27,r19
	subi r18,-2
	sbci r19,-1
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r24,r28
	cpc r25,r29
	breq .L317
	sbiw r30,1
	sbiw r30,0
	brne .L318
	mov r26,r18
	mov r27,r19
.L317:
	or r30,r31
	breq .L323
.L316:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop r29
	pop r28
	ret
.L321:
	mov r26,r24
	mov r27,r25
	rjmp .L317
.L323:
	ldi r26,0
	ldi r27,0
	rjmp .L316
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
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L325
	mov r20,r26
	mov r21,r27
	mov r24,r30
	mov r25,r31
.L326:
	mov r30,r24
	mov r31,r25
	mov r26,r20
	mov r27,r21
	subi r20,-2
	sbci r21,-1
	adiw r24,2
	ld r28,X+
	ld r29,X
	sbiw r26,1
	ld r22,Z
	ldd r23,Z+1
	cp r28,r22
	cpc r29,r23
	brne .L325
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L326
	mov r26,r20
	mov r27,r21
	mov r30,r24
	mov r31,r25
.L325:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L324
	ld r18,X+
	ld r19,X
	ld r20,Z
	ldd r21,Z+1
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	cp r18,r20
	cpc r19,r21
	brlt .L324
	ldi r24,lo8(1)
	ldi r25,0
	cp r20,r18
	cpc r21,r19
	brlt .L324
	ldi r24,0
.L324:
/* epilogue start */
	pop r29
	pop r28
	ret
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
	mov r29,r24
	mov r28,r25
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L334
	mov r20,r18
	mov r21,r19
	lsl r20
	rol r21
	rcall memcpy
.L334:
	mov r24,r29
	mov r25,r28
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
	mov r29,r25
	mov r18,r22
	mov r19,r23
	mov r30,r20
	mov r31,r21
	cp r28,r18
	cpc r29,r19
	breq .L336
	mov r26,r28
	mov r27,r29
	mov r22,r18
	mov r23,r19
	mov r20,r30
	mov r21,r31
	lsl r20
	rol r21
	mov r24,r28
	mov r25,r29
	sub r24,r18
	sbc r25,r19
	cp r24,r20
	cpc r25,r21
	brlo .L337
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	or r30,r31
	breq .L336
.L340:
	mov r30,r18
	mov r31,r19
	ld r22,Z
	ldd r23,Z+1
	subi r18,-2
	sbci r19,-1
	st X+,r22
	st X+,r23
	sbiw r24,1
	brcc .L340
	rjmp .L336
.L337:
	or r30,r31
	breq .L336
	mov r30,r22
	mov r31,r23
	add r30,r20
	adc r31,r21
	mov r26,r28
	mov r27,r29
	add r26,r20
	adc r27,r21
.L339:
	ld r25,-Z
	ld r24,-Z
	st -X,r25
	st -X,r24
	cp r22,r30
	cpc r23,r31
	brne .L339
.L336:
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	ret
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
	mov r20,r18
	mov r21,r19
	subi r20,1
	sbc r21,__zero_reg__
	or r18,r19
	breq .L344
	mov r18,r24
	mov r19,r25
.L345:
	mov r30,r18
	mov r31,r19
	st Z,r22
	subi r18,-2
	sbci r19,-1
	std Z+1,r23
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L345
.L344:
/* epilogue start */
	ret
	.size	wmemset, .-wmemset
.global	bcopy
	.type	bcopy, @function
bcopy:
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
	mov r26,r22
	mov r27,r23
	mov r16,r20
	mov r17,r21
	cp r28,r26
	cpc r29,r27
	brsh .L348
	add r28,r16
	adc r29,r17
	mov r30,r26
	mov r31,r27
	add r30,r16
	adc r31,r17
	or r16,r17
	breq .L347
.L350:
	ld r24,-Y
	st -Z,r24
	cp r26,r30
	cpc r27,r31
	brne .L350
.L347:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L348:
	cp r28,r26
	cpc r29,r27
	breq .L347
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L347
	mov r30,r26
	mov r31,r27
	add r16,r28
	adc r17,r29
.L351:
	mov r26,r28
	mov r27,r29
	adiw r28,1
	ld r24,X
	st Z+,r24
	cp r28,r16
	cpc r29,r17
	brne .L351
	rjmp .L347
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
	mov r25,r24
	andi r22,7
	clr r23
	mov r0,r22
	rjmp 2f
	1:
	lsl r24
	2:
	dec r0
	brpl 1b
	neg r23
	neg r22
	sbc r23,__zero_reg__
	andi r22,7
	clr r23
	rjmp 2f
	1:
	lsr r25
	2:
	dec r22
	brpl 1b
	or r24,r25
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
	mov r25,r24
	andi r22,7
	clr r23
	mov r0,r22
	rjmp 2f
	1:
	lsr r24
	2:
	dec r0
	brpl 1b
	neg r23
	neg r22
	sbc r23,__zero_reg__
	andi r22,7
	clr r23
	rjmp 2f
	1:
	lsl r25
	2:
	dec r22
	brpl 1b
	or r24,r25
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall __bswapsi2
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r15,r18
	mov r17,r19
	mov r29,r20
	mov r28,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	ldi r16,lo8(56)
	rcall __ashldi3
	mov r8,r18
	mov r10,r19
	mov r11,r20
	mov r12,r21
	mov r13,r22
	mov r14,r23
	mov r9,r24
	mov r6,r25
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __lshrdi3
	mov r7,r25
	or r8,r18
	or r10,r19
	or r11,r20
	or r12,r21
	or r13,r22
	or r14,r23
	or r9,r24
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(40)
	rcall __lshrdi3
	or r10,r19
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(24)
	rcall __lshrdi3
	or r11,r20
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(8)
	rcall __lshrdi3
	or r12,r21
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __ashldi3
	or r13,r22
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(24)
	rcall __ashldi3
	or r14,r23
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(40)
	rcall __ashldi3
	mov r18,r8
	mov r19,r10
	mov r20,r11
	mov r21,r12
	mov r22,r13
	mov r23,r14
	or r24,r9
	mov r25,r6
	or r25,r7
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
	ldi r18,0
	ldi r19,0
.L370:
	mov r24,r20
	mov r25,r21
	mov r0,r18
	rjmp 2f
	1:
	lsr r25
	ror r24
	2:
	dec r0
	brpl 1b
	subi r18,-1
	sbci r19,-1
	sbrc r24,0
	rjmp .L372
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L370
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L372:
	mov r24,r18
	mov r25,r19
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L376
	mov r24,r18
	andi r24,1<<0
	clr r25
	sbrc r18,0
	rjmp .L373
	ldi r24,lo8(1)
	ldi r25,0
.L375:
	asr r19
	ror r18
	adiw r24,1
	sbrs r18,0
	rjmp .L375
	ret
.L376:
	ldi r24,0
	ldi r25,0
.L373:
/* epilogue start */
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
	brlt .L381
	clr r14
	inc r14
	mov r15,__zero_reg__
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
	breq .L382
	brlt .L382
.L380:
	mov r24,r14
	mov r25,r15
.L378:
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
.L382:
	mov r14,__zero_reg__
	rjmp .L380
.L381:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L378
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
	brlt .L386
	clr r14
	inc r14
	mov r15,__zero_reg__
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
	breq .L387
	brlt .L387
.L385:
	mov r24,r14
	mov r25,r15
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
	ret
.L387:
	mov r14,__zero_reg__
	rjmp .L385
.L386:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L383
	.size	gl_isinfd, .-gl_isinfd
.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
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
	rjmp .L391
	clr r2
	inc r2
	mov r3,__zero_reg__
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
	cpse r24,__zero_reg__
	rjmp .L390
	mov r2,__zero_reg__
.L390:
	mov r24,r2
	mov r25,r3
.L388:
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
.L391:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L388
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
	sbiw r28,38
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 38 */
/* stack size = 56 */
.L__stack_usage = 56
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	std Y+37,r20
	std Y+38,r21
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
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
	rjmp .L394
	std Y+17,r14
	std Y+18,r15
	std Y+19,r16
	std Y+20,r17
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	std Y+21,r14
	std Y+22,r15
	std Y+23,r16
	std Y+24,r17
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __addsf3
	std Y+25,r14
	std Y+26,r15
	std Y+27,r16
	std Y+28,r17
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
	ldd r22,Y+29
	ldd r23,Y+30
	ldd r24,Y+31
	ldd r25,Y+32
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L394
	ldd r18,Y+37
	ldd r19,Y+38
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	tst r19
	brlt .L403
	set
	clr r11
	bld r11,6
	mov r3,r14
	mov r2,r15
	rjmp .L399
.L403:
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	mov r3,r14
	mov r2,r15
	rjmp .L399
.L397:
	ldd r24,Y+37
	ldd r25,Y+38
	tst r25
	brlt .L404
.L398:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+38,r19
	std Y+37,r18
	or r18,r19
	breq .L402
	mov r4,r8
	mov r5,r9
	mov r6,r10
	mov r7,r11
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	mov r12,r8
	mov r13,r9
	mov r14,r10
	mov r15,r11
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
.L399:
	ldd r24,Y+37
	ldd r25,Y+38
	sbrs r24,0
	rjmp .L397
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
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
	rjmp .L397
.L404:
	adiw r24,1
	rjmp .L398
.L402:
	mov r14,r3
	mov r15,r2
.L394:
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
/* epilogue start */
	adiw r28,38
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
	sbiw r28,38
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 38 */
/* stack size = 56 */
.L__stack_usage = 56
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	std Y+37,r20
	std Y+38,r21
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
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
	rjmp .L406
	std Y+17,r14
	std Y+18,r15
	std Y+19,r16
	std Y+20,r17
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	std Y+21,r14
	std Y+22,r15
	std Y+23,r16
	std Y+24,r17
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __addsf3
	std Y+25,r14
	std Y+26,r15
	std Y+27,r16
	std Y+28,r17
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
	ldd r22,Y+29
	ldd r23,Y+30
	ldd r24,Y+31
	ldd r25,Y+32
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L406
	ldd r18,Y+37
	ldd r19,Y+38
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	tst r19
	brlt .L415
	set
	clr r11
	bld r11,6
	mov r3,r14
	mov r2,r15
	rjmp .L411
.L415:
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	mov r3,r14
	mov r2,r15
	rjmp .L411
.L409:
	ldd r24,Y+37
	ldd r25,Y+38
	tst r25
	brlt .L416
.L410:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+38,r19
	std Y+37,r18
	or r18,r19
	breq .L414
	mov r4,r8
	mov r5,r9
	mov r6,r10
	mov r7,r11
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	mov r12,r8
	mov r13,r9
	mov r14,r10
	mov r15,r11
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
.L411:
	ldd r24,Y+37
	ldd r25,Y+38
	sbrs r24,0
	rjmp .L409
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
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
	rjmp .L409
.L416:
	adiw r24,1
	rjmp .L410
.L414:
	mov r14,r3
	mov r15,r2
.L406:
	std Y+13,r14
	std Y+14,r15
	std Y+15,r16
	std Y+16,r17
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
/* epilogue start */
	adiw r28,38
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
	rjmp .L418
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r16
	mov r25,r17
	rcall __adddf3
	rcall __nedf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L418
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	tst r7
	brlt .L426
	std Y+10,__zero_reg__
	ldi r24,lo8(64)
	std Y+9,r24
	rjmp .L423
.L426:
	ldi r24,lo8(-32)
	std Y+10,r24
	ldi r24,lo8(63)
	std Y+9,r24
	rjmp .L423
.L421:
	mov r24,r6
	mov r25,r7
	tst r25
	brlt .L427
.L422:
	mov r6,r24
	mov r7,r25
	asr r7
	ror r6
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L418
	mov r10,r2
	mov r11,r3
	mov r12,r4
	mov r13,r5
	mov r14,r8
	mov r15,r9
	ldd r16,Y+10
	ldd r17,Y+9
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r8
	mov r23,r9
	mov r24,r16
	mov r25,r17
	rcall __muldf3
	mov r2,r18
	mov r3,r19
	mov r4,r20
	mov r5,r21
	mov r8,r22
	mov r9,r23
	std Y+10,r24
	std Y+9,r25
.L423:
	sbrs r6,0
	rjmp .L421
	mov r10,r2
	mov r11,r3
	mov r12,r4
	mov r13,r5
	mov r14,r8
	mov r15,r9
	ldd r16,Y+10
	ldd r17,Y+9
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
	rjmp .L421
.L427:
	adiw r24,1
	rjmp .L422
.L418:
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
	mov r28,r20
	mov r29,r21
	sbiw r28,0
	breq .L429
	add r28,r18
	adc r29,r19
	mov r22,r24
	mov r23,r25
.L430:
	mov r26,r18
	mov r27,r19
	subi r18,-1
	sbci r19,-1
	mov r30,r22
	mov r31,r23
	subi r22,-1
	sbci r23,-1
	ld r20,Z
	ld r21,X
	eor r20,r21
	st Z,r20
	cp r18,r28
	cpc r19,r29
	brne .L430
.L429:
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
	sbiw r30,1
	mov r28,r30
	mov r29,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L433
	mov r26,r22
	mov r27,r23
.L434:
	mov r28,r30
	mov r29,r31
	ld r24,X+
	st Z+,r24
	cp r24, __zero_reg__
	breq .L433
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L434
	mov r28,r30
	mov r29,r31
.L433:
	or r18,r19
	brne .L436
	st Y,__zero_reg__
.L436:
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L442
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
.L440:
	ld r20,Z+
	cpse r20,__zero_reg__
	rjmp .L444
.L438:
/* epilogue start */
	ret
.L444:
	adiw r24,1
	cp r18,r24
	cpc r19,r25
	brne .L440
	ret
.L442:
	ldi r24,0
	ldi r25,0
	ret
	.size	strnlen, .-strnlen
.global	strpbrk
	.type	strpbrk, @function
strpbrk:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r24
	mov r27,r25
	ld r25,X
	cp r25, __zero_reg__
	breq .L450
.L446:
	mov r30,r22
	mov r31,r23
.L449:
	ld r24,Z+
	cp r24, __zero_reg__
	breq .L452
	cpse r24,r25
	rjmp .L449
.L447:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	ret
.L452:
	adiw r26,1
	ld r25,X
	cpse r25,__zero_reg__
	rjmp .L446
.L450:
	ldi r26,0
	ldi r27,0
	rjmp .L447
	.size	strpbrk, .-strpbrk
.global	strrchr
	.type	strrchr, @function
strrchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
	rjmp .L455
.L454:
	cp r18, __zero_reg__
	breq .L458
.L455:
	mov r20,r30
	mov r19,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r26
	cpc r0,r27
	brne .L454
	mov r24,r20
	mov r25,r19
	rjmp .L454
.L458:
/* epilogue start */
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
	mov r18,r24
	mov r19,r25
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
	mov r28,r18
	mov r29,r19
	cp r16,r30
	cpc r17,r31
	breq .L459
	mov r30,r16
	mov r31,r17
	ld r14,Z
	mov __tmp_reg__,r14
	lsl r0
	sbc r15,r15
.L461:
	mov r22,r14
	mov r23,r15
	mov r24,r18
	mov r25,r19
	rcall strchr
	mov r28,r24
	mov r29,r25
	sbiw r28,0
	breq .L459
	mov r20,r12
	mov r21,r13
	mov r22,r16
	mov r23,r17
	mov r24,r28
	mov r25,r29
	rcall strncmp
	or r24,r25
	breq .L459
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	rjmp .L461
.L459:
	mov r24,r28
	mov r25,r29
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
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r17,r18
	mov r29,r19
	mov r16,r20
	mov r28,r21
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
	brlt .L473
.L465:
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
	breq .L468
	brlt .L468
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r8,r17
	mov r9,r29
	mov r10,r16
	mov r11,r28
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L467
.L468:
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L473:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r4,r17
	mov r5,r29
	mov r6,r16
	mov r7,r28
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L465
	brlt .L465
.L467:
	bst r15,7
	com r15
	bld r15,7
	com r15
	rjmp .L468
	.size	copysign, .-copysign
.global	memmem
	.type	memmem, @function
memmem:
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
	mov r16,r22
	mov r17,r23
	mov r12,r18
	mov r13,r19
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L478
	cp r16,r12
	cpc r17,r13
	brlo .L480
	sub r16,r12
	sbc r17,r13
	add r16,r28
	adc r17,r29
	cp r16,r28
	cpc r17,r29
	brlo .L480
	mov r10,r20
	mov r11,r21
	mov r30,r10
	mov r31,r11
	ld r9,Z+
	mov r10,r30
	mov r11,r31
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	rjmp .L477
.L476:
	cp r16,r28
	cpc r17,r29
	brlo .L480
.L477:
	ld r24,Y
	mov r14,r28
	mov r15,r29
	adiw r28,1
	cpse r24,r9
	rjmp .L476
	mov r20,r12
	mov r21,r13
	mov r22,r10
	mov r23,r11
	mov r24,r28
	mov r25,r29
	rcall memcmp
	or r24,r25
	brne .L476
	rjmp .L474
.L478:
	mov r14,r24
	mov r15,r25
	rjmp .L474
.L480:
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L474:
	mov r24,r14
	mov r25,r15
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
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	cp r24, __zero_reg__
	brge .+2
	rjmp .L507
.L484:
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
	rjmp .L504
	ldi r28,0
	ldi r29,0
.L488:
	adiw r28,1
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r15,r11
	mov r14,r10
	mov r13,r9
	mov r12,r8
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
	brge .L488
.L489:
	mov r30,r16
	mov r31,r17
	std Z+1,r29
	st Z,r28
	or r2,r3
	breq .L493
	bst r15,7
	com r15
	bld r15,7
	com r15
.L493:
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
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L507:
	bst r15,7
	com r15
	bld r15,7
	com r15
	clr r2
	inc r2
	mov r3,__zero_reg__
	rjmp .L484
.L504:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	ldi r28,0
	ldi r29,0
	cp r24, __zero_reg__
	brge .L489
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __nesf2
	ldi r28,0
	ldi r29,0
	cp r24, __zero_reg__
	brne .+2
	rjmp .L489
.L492:
	sbiw r28,1
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __addsf3
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	mov r15,r7
	mov r14,r6
	mov r13,r5
	mov r12,r4
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
	brlt .L492
	rjmp .L489
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
	mov r30,r18
	mov r31,r19
	mov r27,r20
	std Y+5,r21
	std Y+6,r22
	mov r9,r23
	mov r8,r24
	mov r7,r25
	std Y+1,r10
	std Y+2,r11
	std Y+3,r12
	mov r6,r13
	mov r5,r14
	mov r4,r15
	mov r3,r16
	mov r2,r17
	ldi r26,0
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	std Y+4,__zero_reg__
	ldi r17,0
	rcall __cmpdi2_s8
	brne .+2
	rjmp .L508
.L510:
	mov r18,r30
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rcall __negdi2
	ldd r26,Y+1
	and r18,r26
	ldd r26,Y+2
	and r19,r26
	ldd r26,Y+3
	and r20,r26
	and r21,r6
	and r22,r5
	and r23,r4
	and r24,r3
	and r25,r2
	ldd r16,Y+4
	rcall __adddi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	std Y+4,r24
	mov r17,r25
	ldd r18,Y+1
	ldd r19,Y+2
	mov r20,r26
	mov r21,r6
	mov r22,r5
	mov r23,r4
	mov r24,r3
	mov r25,r2
	ldi r16,lo8(1)
	rcall __ashldi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	mov r6,r21
	mov r5,r22
	mov r4,r23
	mov r3,r24
	mov r2,r25
	mov r18,r30
	mov r19,r31
	mov r20,r27
	ldd r21,Y+5
	ldd r22,Y+6
	mov r23,r9
	mov r24,r8
	mov r25,r7
	rcall __lshrdi3
	mov r30,r18
	mov r31,r19
	mov r27,r20
	std Y+5,r21
	std Y+6,r22
	mov r9,r23
	mov r8,r24
	mov r7,r25
	ldi r26,0
	rcall __cmpdi2_s8
	breq .+2
	rjmp .L510
.L508:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	ldd r24,Y+4
	mov r25,r17
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
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L515
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L514:
	tst r15
	brlt .L515
	lsl r12
	rol r13
	rol r14
	rol r15
	lsl r24
	rol r25
	rol r26
	rol r27
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L515
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L514
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L515:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L516
.L517:
	cpse r16,__zero_reg__
	rjmp .L526
.L513:
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
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
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r15
	ror r14
	ror r13
	ror r12
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L517
.L516:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L519
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L519
.L526:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L513
	.size	udivmodsi4, .-udivmodsi4
.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	lsl r18
	sbc r18,r18
	mov r25,r24
	eor r25,r18
	cp r24,r18
	breq .L529
	ldi r24,0
	rcall __clzhi2
	sbiw r24,1
	ret
.L529:
	ldi r24,lo8(7)
	ldi r25,0
/* epilogue start */
	ret
	.size	__clrsbqi2, .-__clrsbqi2
.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 22 */
.L__stack_usage = 22
	mov r8,r18
	mov r9,r19
	std Y+4,r20
	std Y+3,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	ldi r16,lo8(63)
	rcall __ashrdi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	mov r2,r8
	eor r2,r18
	mov r3,r9
	eor r3,r19
	ldd r4,Y+4
	eor r4,r20
	ldd r5,Y+3
	eor r5,r21
	mov r6,r27
	eor r6,r22
	mov r7,r26
	eor r7,r23
	mov r24,r31
	eor r24,r16
	std Y+1,r24
	mov r24,r30
	eor r24,r17
	std Y+2,r24
	mov r18,r8
	mov r19,r9
	ldd r20,Y+4
	ldd r21,Y+3
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __cmpdi2
	breq .L532
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	ldd r24,Y+1
	ldd r25,Y+2
	rcall __clzdi2
	sbiw r24,1
.L530:
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L532:
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L530
	.size	__clrsbdi2, .-__clrsbdi2
.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r24
	mov r21,r25
	mov r30,r22
	mov r31,r23
	ldi r24,0
	ldi r25,0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L536
.L535:
	mov r18,r20
	andi r18,1<<0
	clr r19
	neg r19
	neg r18
	sbc r19,__zero_reg__
	and r18,r30
	and r19,r31
	add r24,r18
	adc r25,r19
	lsr r21
	ror r20
	lsl r30
	rol r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L535
	ret
.L536:
/* epilogue start */
	ret
	.size	__mulsi3, .-__mulsi3
.global	__cmovd
	.type	__cmovd, @function
__cmovd:
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
	mov r16,r24
	mov r17,r25
	mov r18,r22
	mov r19,r23
	mov r28,r20
	mov r29,r21
	mov r12,r28
	mov r13,r29
	lsr r13
	ror r12
	lsr r13
	ror r12
	lsr r13
	ror r12
	mov r24,r28
	mov r25,r29
	andi r24,248
	cp r16,r18
	cpc r17,r19
	brlo .+2
	rjmp .L539
.L542:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L541
	mov r30,r18
	mov r31,r19
	mov r26,r16
	mov r27,r17
	lsl r12
	rol r13
	lsl r12
	rol r13
	lsl r12
	rol r13
	add r12,r18
	adc r13,r19
.L545:
	ld r10,Z
	ldd r11,Z+1
	ldd r14,Z+2
	ldd r15,Z+3
	ldd r23,Z+4
	ldd r22,Z+5
	ldd r21,Z+6
	ldd r20,Z+7
	adiw r30,8
	st X,r10
	adiw r26,1
	st X,r11
	sbiw r26,1
	adiw r26,2
	st X,r14
	sbiw r26,2
	adiw r26,3
	st X,r15
	sbiw r26,3
	adiw r26,4
	st X,r23
	sbiw r26,4
	adiw r26,5
	st X,r22
	sbiw r26,5
	adiw r26,6
	st X,r21
	sbiw r26,6
	adiw r26,7
	st X,r20
	sbiw r26,7
	adiw r26,8
	cp r30,r12
	cpc r31,r13
	brne .L545
.L541:
	cp r24,r28
	cpc r25,r29
	brsh .L538
	mov r30,r18
	mov r31,r19
	add r30,r24
	adc r31,r25
	mov r26,r16
	mov r27,r17
	add r26,r24
	adc r27,r25
	add r18,r28
	adc r19,r29
.L546:
	ld r24,Z+
	st X+,r24
	cp r30,r18
	cpc r31,r19
	brne .L546
.L538:
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
.L539:
	mov r26,r18
	mov r27,r19
	add r26,r28
	adc r27,r29
	cp r26,r16
	cpc r27,r17
	brsh .+2
	rjmp .L542
	sbiw r28,0
	breq .L538
	add r28,r16
	adc r29,r17
.L547:
	ld r24,-X
	st -Y,r24
	cp r26,r18
	cpc r27,r19
	brne .L547
	rjmp .L538
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
	mov r18,r14
	mov r19,r15
	lsr r19
	ror r18
	cp r28,r16
	cpc r29,r17
	brsh .L552
.L555:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L554
	mov r30,r16
	mov r31,r17
	mov r26,r28
	mov r27,r29
	lsl r18
	rol r19
	add r18,r16
	adc r19,r17
.L558:
	ld r24,Z+
	ld r25,Z+
	st X+,r24
	st X+,r25
	cp r30,r18
	cpc r31,r19
	brne .L558
.L554:
	sbrs r14,0
	rjmp .L551
	ldi r24,1
	sub r14,r24
	sbc r15,__zero_reg__
	mov r30,r16
	mov r31,r17
	add r30,r14
	adc r31,r15
	ld r24,Z
	add r28,r14
	adc r29,r15
	st Y,r24
.L551:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L552:
	mov r30,r16
	mov r31,r17
	add r30,r14
	adc r31,r15
	cp r30,r28
	cpc r31,r29
	brlo .L555
	add r28,r14
	adc r29,r15
	or r14,r15
	breq .L551
.L559:
	ld r24,-Z
	st -Y,r24
	cp r30,r16
	cpc r31,r17
	brne .L559
	rjmp .L551
	.size	__cmovh, .-__cmovh
.global	__cmovw
	.type	__cmovw, @function
__cmovw:
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
	mov r14,r24
	mov r15,r25
	mov r18,r22
	mov r19,r23
	mov r16,r20
	mov r17,r21
	mov r20,r16
	mov r21,r17
	lsr r21
	ror r20
	lsr r21
	ror r20
	mov r26,r16
	mov r27,r17
	andi r26,252
	cp r14,r18
	cpc r15,r19
	brsh .L563
.L566:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L565
	mov r30,r18
	mov r31,r19
	mov r28,r14
	mov r29,r15
	lsl r20
	rol r21
	add r20,r18
	adc r21,r19
.L569:
	ld r24,Z+
	ld r25,Z+
	st Y+,r24
	st Y+,r25
	cp r30,r20
	cpc r31,r21
	brne .L569
.L565:
	cp r26,r16
	cpc r27,r17
	brsh .L562
	mov r30,r18
	mov r31,r19
	add r30,r26
	adc r31,r27
	add r26,r14
	adc r27,r15
	add r18,r16
	adc r19,r17
.L570:
	ld r24,Z+
	st X+,r24
	cp r30,r18
	cpc r31,r19
	brne .L570
.L562:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L563:
	mov r24,r18
	mov r25,r19
	add r24,r16
	adc r25,r17
	cp r24,r14
	cpc r25,r15
	brlo .L566
	mov r26,r24
	mov r27,r25
	mov r30,r14
	mov r31,r15
	add r30,r16
	adc r31,r17
	or r16,r17
	breq .L562
.L571:
	ld r24,-X
	st -Z,r24
	cp r26,r18
	cpc r27,r19
	brne .L571
	rjmp .L562
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
	tst r21
	brlt .L581
	ldi r22,0
	ldi r23,lo8(-128)
.L583:
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L586
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
	breq .L583
.L581:
/* epilogue start */
	ret
.L586:
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
.L589:
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
	rjmp .L587
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	brne .L589
.L587:
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
	std Y+10,r22
	std Y+9,r23
	mov r17,r24
	mov r16,r25
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
	brge .L597
	ldd r4,Y+10
	ldd r5,Y+9
	mov r6,r17
	mov r7,r16
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __fixsfsi
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
.L591:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
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
.L597:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(71)
	std Y+1,r12
	std Y+2,r13
	std Y+3,r17
	std Y+4,r16
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
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	ldi r18,-128
	add r9,r18
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	rjmp .L591
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
.L599:
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
	andi r20,1
	clr r21
	add r24,r20
	adc r25,r21
	subi r18,-1
	sbci r19,-1
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L599
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
.L602:
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
	andi r20,1
	clr r21
	add r24,r20
	adc r25,r21
	subi r18,-1
	sbci r19,-1
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L602
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
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L604
.L606:
	mov r24,r12
	andi r24,1<<0
	clr r25
	clr r26
	clr r27
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	and r24,r8
	and r25,r9
	and r26,r10
	and r27,r11
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	lsr r15
	ror r14
	ror r13
	ror r12
	lsl r8
	rol r9
	rol r10
	rol r11
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L606
.L604:
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
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
	brne .L615
	rjmp .L609
.L611:
	mov r24,r12
	andi r24,1<<0
	clr r25
	clr r26
	clr r27
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	and r24,r8
	and r25,r9
	and r26,r10
	and r27,r11
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	lsl r8
	rol r9
	rol r10
	rol r11
	lsr r15
	ror r14
	ror r13
	ror r12
.L615:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L611
.L609:
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
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
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L618
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L617:
	tst r15
	brlt .L618
	lsl r12
	rol r13
	rol r14
	rol r15
	lsl r24
	rol r25
	rol r26
	rol r27
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L618
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L617
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L618:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L619
.L620:
	or r30,r31
	brne .L629
.L616:
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
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
.L622:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r15
	ror r14
	ror r13
	ror r12
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L620
.L619:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L622
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L622
.L629:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L616
	.size	__udivmodsi4, .-__udivmodsi4
.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
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
	mov r3,r22
	mov r2,r23
	mov r6,r24
	mov r7,r25
	std Y+10,r18
	std Y+9,r19
	mov r17,r20
	mov r16,r21
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
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
	brlt .L633
	clr r14
	inc r14
	mov r15,__zero_reg__
	std Y+1,r8
	std Y+2,r9
	std Y+3,r17
	std Y+4,r16
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	std Y+5,r3
	std Y+6,r2
	std Y+7,r6
	std Y+8,r7
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L634
	brlt .L634
.L632:
	mov r24,r14
	mov r25,r15
.L630:
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
	pop r3
	pop r2
	ret
.L634:
	mov r14,__zero_reg__
	rjmp .L632
.L633:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L630
	.size	__mspabi_cmpf, .-__mspabi_cmpf
.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
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
	mov r3,r22
	mov r2,r23
	mov r6,r24
	mov r7,r25
	std Y+10,r18
	std Y+9,r19
	mov r17,r20
	mov r16,r21
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
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
	brlt .L638
	clr r14
	inc r14
	mov r15,__zero_reg__
	std Y+1,r8
	std Y+2,r9
	std Y+3,r17
	std Y+4,r16
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	std Y+5,r3
	std Y+6,r2
	std Y+7,r6
	std Y+8,r7
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L639
	brlt .L639
.L637:
	mov r24,r14
	mov r25,r15
.L635:
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
	pop r3
	pop r2
	ret
.L639:
	mov r14,__zero_reg__
	rjmp .L637
.L638:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L635
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
	mov r30,r24
	mov r31,r25
	mov r20,r22
	mov r21,r23
	ldi r26,0
	ldi r27,0
	tst r21
	brlt .L650
.L643:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L648
	ldi r25,lo8(16)
	ldi r22,0
	ldi r23,0
.L645:
	mov r18,r20
	andi r18,1<<0
	clr r19
	neg r19
	neg r18
	sbc r19,__zero_reg__
	and r18,r30
	and r19,r31
	add r22,r18
	adc r23,r19
	lsl r30
	rol r31
	asr r21
	ror r20
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L644
	subi r25,lo8(-(-1))
	cpse r25,__zero_reg__
	rjmp .L645
.L644:
	or r26,r27
	breq .L642
	neg r23
	neg r22
	sbc r23,__zero_reg__
.L642:
	mov r24,r22
	mov r25,r23
/* epilogue start */
	ret
.L650:
	neg r21
	neg r20
	sbc r21,__zero_reg__
	ldi r26,lo8(1)
	ldi r27,0
	rjmp .L643
.L648:
	ldi r22,0
	ldi r23,0
	rjmp .L644
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
	brlt .L656
.L652:
	tst r11
	brlt .L657
.L653:
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
	breq .L651
	com r7
	com r6
	com r5
	com r4
	adc r4,__zero_reg__
	adc r5,__zero_reg__
	adc r6,__zero_reg__
	adc r7,__zero_reg__
.L651:
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
.L656:
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
	rjmp .L652
.L657:
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	ldi r24,1
	eor r28,r24
	rjmp .L653
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
	mov r4,r18
	mov r5,r19
	mov r6,r20
	mov r7,r21
	ldi r28,0
	ldi r29,0
	tst r15
	brlt .L663
.L659:
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	tst r7
	brlt .L664
.L660:
	ldi r16,lo8(1)
	ldi r17,0
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __udivmodsi4
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	or r28,r29
	breq .L658
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
.L658:
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L663:
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
	rjmp .L659
.L664:
	clr r18
	clr r19
	clr r20
	clr r21
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	rjmp .L660
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
	ldi r20,lo8(1)
	ldi r21,0
	cp r18,r30
	cpc r19,r31
	brsh .L667
	ldi r20,lo8(16)
	ldi r21,0
	ldi r24,lo8(1)
	ldi r25,0
.L666:
	tst r19
	brlt .L674
	lsl r18
	rol r19
	lsl r24
	rol r25
	cp r18,r30
	cpc r19,r31
	brsh .L674
	subi r20,1
	sbc r21,__zero_reg__
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L666
	rjmp .L667
.L674:
	mov r20,r24
	mov r21,r25
.L667:
	ldi r24,0
	ldi r25,0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L668
.L669:
	or r26,r27
	brne .L679
.L665:
/* epilogue start */
	ret
.L671:
	lsr r21
	ror r20
	lsr r19
	ror r18
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L669
.L668:
	cp r30,r18
	cpc r31,r19
	brlo .L671
	sub r30,r18
	sbc r31,r19
	or r24,r20
	or r25,r21
	rjmp .L671
.L679:
	mov r24,r30
	mov r25,r31
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
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L682
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L681:
	tst r15
	brlt .L682
	lsl r12
	rol r13
	rol r14
	rol r15
	lsl r24
	rol r25
	rol r26
	rol r27
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brsh .L682
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L681
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L682:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L683
.L684:
	or r30,r31
	brne .L693
.L680:
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
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
.L686:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r15
	ror r14
	ror r13
	ror r12
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L684
.L683:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L686
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L686
.L693:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L680
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
	mov r30,r16
	mov r31,r17
	sbrs r30,5
	rjmp .L695
	sbiw r30,32
	mov r27,r11
	mov r26,r10
	mov r25,r9
	mov r24,r8
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r30
	brpl 1b
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
.L696:
	mov r31,r16
	mov r30,r17
	mov r20,r18
	mov r21,r19
	mov r22,r24
	mov r23,r25
	mov r17,r26
	mov r25,r27
.L694:
	mov r18,r31
	mov r19,r30
	mov r24,r17
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
.L695:
	sbiw r30,0
	breq .L698
	mov r19,r11
	mov r18,r10
	mov r17,r9
	mov r16,r8
	mov r0,r30
	rjmp 2f
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	2:
	dec r0
	brpl 1b
	ldi r24,lo8(32)
	ldi r25,0
	sub r24,r30
	sbc r25,r31
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
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
	dec r30
	brpl 1b
	or r24,r20
	or r25,r21
	or r26,r22
	or r27,r23
	rjmp .L696
.L698:
	mov r31,r18
	mov r30,r19
	mov r17,r24
	rjmp .L694
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
	mov r30,r16
	mov r31,r17
	sbrs r30,5
	rjmp .L700
	mov r19,r15
	mov r18,r14
	mov r17,r13
	mov r16,r12
	lsl r19
	sbc r16,r16
	mov r17,r16
	mov r18,r16
	mov r19,r16
	sbiw r30,32
	mov r27,r15
	mov r26,r14
	mov r25,r13
	mov r24,r12
	rjmp 2f
	1:
	asr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r30
	brpl 1b
.L701:
	mov r31,r24
	mov r30,r25
	mov r20,r26
	mov r21,r27
	mov r22,r16
	mov r23,r17
	mov r24,r18
	mov r25,r19
.L699:
	mov r18,r31
	mov r19,r30
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
.L700:
	sbiw r30,0
	breq .L703
	mov r19,r15
	mov r18,r14
	mov r17,r13
	mov r16,r12
	mov r0,r30
	rjmp 2f
	1:
	asr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	ldi r24,lo8(32)
	ldi r25,0
	sub r24,r30
	sbc r25,r31
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
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	rjmp 2f
	1:
	lsr r11
	ror r10
	ror r9
	ror r8
	2:
	dec r30
	brpl 1b
	or r24,r8
	or r25,r9
	or r26,r10
	or r27,r11
	rjmp .L701
.L703:
	mov r31,r18
	mov r30,r19
	rjmp .L699
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r15,r18
	mov r17,r19
	mov r29,r20
	mov r28,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	ldi r16,lo8(56)
	rcall __lshrdi3
	mov r8,r18
	mov r10,r19
	mov r11,r20
	mov r12,r21
	mov r13,r22
	mov r14,r23
	mov r9,r24
	mov r6,r25
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __ashldi3
	mov r7,r25
	or r8,r18
	or r10,r19
	or r11,r20
	or r12,r21
	or r13,r22
	or r14,r23
	or r9,r24
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(40)
	rcall __lshrdi3
	or r10,r19
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(24)
	rcall __lshrdi3
	or r11,r20
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(8)
	rcall __lshrdi3
	or r12,r21
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __ashldi3
	or r13,r22
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(24)
	rcall __ashldi3
	or r14,r23
	mov r18,r15
	mov r19,r17
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	ldi r16,lo8(40)
	rcall __ashldi3
	mov r18,r8
	mov r19,r10
	mov r20,r11
	mov r21,r12
	mov r22,r13
	mov r23,r14
	or r24,r9
	mov r25,r6
	or r25,r7
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
	.size	__bswapdi2, .-__bswapdi2
.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall __bswapsi2
/* epilogue start */
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
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	ldi r24,1
	cpc r18,r24
	cpc r19,__zero_reg__
	brlo .L707
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L707:
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	ldi r24,lo8(16)
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
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	clr r12
	clr r14
	clr r15
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	or r12,r13
	or r12,r14
	or r12,r15
	breq .L708
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L708:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	ldi r30,lo8(8)
	ldi r31,0
	sub r30,r24
	sbc r31,r25
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r30
	brpl 1b
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	ldi r20,240
	and r12,r20
	clr r13
	clr r14
	clr r15
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	or r12,r13
	or r12,r14
	or r12,r15
	breq .L709
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L709:
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	ldi r30,lo8(4)
	ldi r31,0
	sub r30,r20
	sbc r31,r21
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r30
	brpl 1b
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	add r12,r24
	adc r13,r25
	adc r14,r26
	adc r15,r27
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	andi r24,12
	clr r25
	clr r26
	clr r27
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L710
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L710:
	lsl r20
	rol r21
	rol r22
	rol r23
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
	sbrc r16,1
	rjmp .L711
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	sub r24,r16
	sbc r25,r17
	sbc r26,r18
	sbc r27,r19
	mov r18,r24
	mov r19,r25
.L712:
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	add r24,r18
	adc r25,r19
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L711:
	ldi r18,0
	ldi r19,0
	rjmp .L712
	.size	__clzsi2, .-__clzsi2
.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
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
	mov r31,r10
	mov r30,r11
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r24,r14
	mov r25,r15
	mov r26,r16
	mov r27,r17
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brlt .L717
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlt .L718
	mov r24,r18
	mov r25,r19
	mov r26,r20
	mov r27,r21
	mov r20,r31
	mov r21,r30
	mov r22,r12
	mov r23,r13
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L717
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L718
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L713
.L717:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L713:
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
.L718:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L713
	.size	__cmpdi2, .-__cmpdi2
.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
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
	mov r31,r10
	mov r30,r11
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r24,r14
	mov r25,r15
	mov r26,r16
	mov r27,r17
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brlt .L723
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlt .L724
	mov r24,r18
	mov r25,r19
	mov r26,r20
	mov r27,r21
	mov r20,r31
	mov r21,r30
	mov r22,r12
	mov r23,r13
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L723
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L724
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L720
.L723:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L720:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
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
	pop r9
	pop r8
	ret
.L724:
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L720
	.size	__aeabi_lcmp, .-__aeabi_lcmp
.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
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
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L726
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L726:
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
	lsl r20
	rol r21
	rol r22
	rol r23
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
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	cp r16, __zero_reg__
	breq .L727
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L727:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
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
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	mov r23,r19
	mov r22,r18
	mov r21,r17
	mov r20,r16
	andi r20,15
	clr r21
	clr r22
	clr r23
	clr r8
	inc r8
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	or r20,r21
	or r20,r22
	or r20,r23
	breq .L728
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L728:
	lsl r8
	rol r9
	rol r10
	rol r11
	lsl r8
	rol r9
	rol r10
	rol r11
	mov r0,r8
	rjmp 2f
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	2:
	dec r0
	brpl 1b
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
	mov r23,r19
	mov r22,r18
	mov r21,r17
	mov r20,r16
	andi r20,3
	clr r21
	clr r22
	clr r23
	clr r12
	inc r12
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	or r20,r21
	or r20,r22
	or r20,r23
	breq .L729
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L729:
	lsl r12
	rol r13
	rol r14
	rol r15
	mov r0,r12
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
	mov r23,r19
	mov r22,r18
	mov r21,r17
	mov r20,r16
	com r20
	com r21
	com r22
	com r23
	mov r30,r20
	andi r30,1<<0
	clr r31
	lsr r19
	ror r18
	ror r17
	ror r16
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sub r20,r16
	sbc r21,r17
	sbc r22,r18
	sbc r23,r19
	clr r18
	clr r19
	sub r18,r30
	sbc r19,r31
	and r18,r20
	and r19,r21
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	add r24,r18
	adc r25,r19
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
	.size	__ctzsi2, .-__ctzsi2
.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
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
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r30,r16
	mov r31,r17
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	sbrs r30,5
	rjmp .L731
	sbiw r30,32
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r30
	brpl 1b
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.L732:
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r22,r4
	mov r23,r5
	mov r24,r6
	mov r25,r7
.L730:
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
.L731:
	sbiw r30,0
	breq .L734
	mov r4,r20
	mov r5,r21
	mov r6,r22
	mov r7,r23
	mov r0,r16
	rjmp 2f
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	2:
	dec r0
	brpl 1b
	ldi r24,lo8(32)
	ldi r25,0
	mov r2,r24
	mov r3,r25
	sub r2,r30
	sbc r3,r31
	rjmp 2f
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	2:
	dec r2
	brpl 1b
	rjmp 2f
	1:
	lsr r11
	ror r10
	ror r9
	ror r8
	2:
	dec r16
	brpl 1b
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	or r24,r8
	or r25,r9
	or r26,r10
	or r27,r11
	rjmp .L732
.L734:
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	rjmp .L730
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
	sbiw r28,24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 24 */
/* stack size = 42 */
.L__stack_usage = 42
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r4,r18
	mov r5,r19
	mov r6,r20
	mov r7,r21
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	clr r20
	clr r21
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
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
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __mulsi3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r19,r11
	mov r18,r10
	clr r20
	clr r21
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	mov r25,r15
	mov r24,r14
	clr r26
	clr r27
	std Y+21,r24
	std Y+22,r25
	std Y+23,r26
	std Y+24,r27
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __mulsi3
	ldd r12,Y+17
	ldd r13,Y+18
	ldd r14,Y+19
	ldd r15,Y+20
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	clr r10
	clr r11
	mov r26,r12
	mov r27,r13
	clr r25
	clr r24
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	mov r19,r27
	mov r18,r26
	clr r20
	clr r21
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	mov r9,r7
	mov r8,r6
	clr r10
	clr r11
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	rcall __mulsi3
	ldd r4,Y+17
	ldd r5,Y+18
	ldd r6,Y+19
	ldd r7,Y+20
	add r4,r22
	adc r5,r23
	adc r6,r24
	adc r7,r25
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	clr r26
	clr r27
	mov r22,r4
	mov r23,r5
	clr r21
	clr r20
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r17,r24
	mov r16,r25
	mov r3,r26
	mov r2,r27
	mov r25,r15
	mov r24,r14
	clr r26
	clr r27
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __mulsi3
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	add r22,r18
	adc r23,r19
	adc r24,r20
	adc r25,r21
	mov r5,r7
	mov r4,r6
	clr r6
	clr r7
	add r4,r22
	adc r5,r23
	adc r6,r24
	adc r7,r25
	mov r22,r4
	mov r23,r5
	mov r18,r17
	mov r19,r16
	mov r20,r3
	mov r21,r2
	mov r24,r6
	mov r25,r7
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
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __muldsi3
	mov r2,r18
	mov r3,r19
	mov r4,r20
	mov r5,r21
	mov r6,r22
	mov r7,r23
	mov r8,r24
	mov r9,r25
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	mov r22,r10
	mov r23,r11
	mov r24,r12
	mov r25,r13
	rcall __mulsi3
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	mov r18,r14
	mov r19,r15
	mov r20,r16
	mov r21,r17
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __mulsi3
	ldd r12,Y+9
	ldd r13,Y+10
	ldd r14,Y+11
	ldd r15,Y+12
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	add r12,r6
	adc r13,r7
	adc r14,r8
	adc r15,r9
	mov r22,r12
	mov r23,r13
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r24,r14
	mov r25,r15
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
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	eor r8,r22
	eor r9,r23
	eor r10,r24
	eor r11,r25
	mov r25,r11
	mov r24,r10
	clr r26
	clr r27
	eor r24,r8
	eor r25,r9
	eor r26,r10
	eor r27,r11
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
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 21 */
.L__stack_usage = 21
	mov r8,r18
	mov r9,r19
	std Y+9,r20
	std Y+1,r21
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
	mov r18,r8
	mov r19,r9
	ldd r20,Y+9
	ldd r21,Y+1
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	rcall __subdi3
	mov r10,r18
	std Y+9,r19
	std Y+1,r20
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
	ldd r16,Y+9
	andi r16,lo8(51)
	std Y+9,r16
	ldd r16,Y+1
	andi r16,lo8(51)
	std Y+1,r16
	andi r27,lo8(51)
	andi r26,lo8(51)
	andi r31,lo8(51)
	mov r16,r30
	andi r16,lo8(51)
	andi r17,lo8(51)
	andi r24,lo8(51)
	andi r25,lo8(51)
	ldd r11,Y+9
	ldd r12,Y+1
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
	mov r8,r18
	andi r19,lo8(15)
	mov r9,r19
	andi r20,lo8(15)
	mov r10,r20
	andi r21,lo8(15)
	mov r11,r21
	andi r22,lo8(15)
	andi r23,lo8(15)
	andi r24,lo8(15)
	andi r25,lo8(15)
	ldi r16,lo8(32)
	rcall __lshrdi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
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
	adiw r28,9
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
	sub r16,r24
	sbc r17,r25
	sbc r18,r26
	sbc r19,r27
	mov r23,r19
	mov r22,r18
	mov r21,r17
	mov r20,r16
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
	andi r16,51
	andi r17,51
	andi r18,51
	andi r19,51
	add r20,r16
	adc r21,r17
	adc r22,r18
	adc r23,r19
	mov r27,r23
	mov r26,r22
	mov r25,r21
	mov r24,r20
	set
	bld __zero_reg__,4-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
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
	std Y+19,r25
	std Y+13,r20
	std Y+14,r21
	ldd r14,Y+13
	ldd r15,Y+14
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	set
	clr r12
	bld r12,7
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r13,r31
	mov r31,__tmp_reg__
	rjmp .L746
.L743:
	mov r24,r14
	mov r25,r15
	tst r25
	brlt .L748
.L744:
	mov r14,r24
	mov r15,r25
	asr r15
	ror r14
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L745
	mov r8,r16
	mov r9,r17
	ldd r10,Y+20
	ldd r11,Y+19
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r16
	mov r5,r17
	mov r6,r10
	mov r7,r11
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r16,r22
	mov r17,r23
	std Y+20,r24
	std Y+19,r25
.L746:
	sbrs r14,0
	rjmp .L743
	std Y+1,r16
	std Y+2,r17
	ldd r24,Y+20
	std Y+3,r24
	ldd r25,Y+19
	std Y+4,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
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
	rjmp .L743
.L748:
	adiw r24,1
	rjmp .L744
.L745:
	ldd r24,Y+13
	ldd r25,Y+14
	tst r25
	brlt .L749
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
.L749:
	std Y+15,r2
	std Y+16,r3
	std Y+17,r12
	std Y+18,r13
	ldd r18,Y+15
	ldd r19,Y+16
	ldd r20,Y+17
	ldd r21,Y+18
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r2,r22
	mov r3,r23
	mov r12,r24
	mov r13,r25
	rjmp .L742
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
	std Y+19,r25
	std Y+13,r20
	std Y+14,r21
	ldd r14,Y+13
	ldd r15,Y+14
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	set
	clr r12
	bld r12,7
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r13,r31
	mov r31,__tmp_reg__
	rjmp .L754
.L751:
	mov r24,r14
	mov r25,r15
	tst r25
	brlt .L756
.L752:
	mov r14,r24
	mov r15,r25
	asr r15
	ror r14
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L753
	mov r8,r16
	mov r9,r17
	ldd r10,Y+20
	ldd r11,Y+19
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r16
	mov r5,r17
	mov r6,r10
	mov r7,r11
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r16,r22
	mov r17,r23
	std Y+20,r24
	std Y+19,r25
.L754:
	sbrs r14,0
	rjmp .L751
	std Y+1,r16
	std Y+2,r17
	ldd r24,Y+20
	std Y+3,r24
	ldd r25,Y+19
	std Y+4,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
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
	rjmp .L751
.L756:
	adiw r24,1
	rjmp .L752
.L753:
	ldd r24,Y+13
	ldd r25,Y+14
	tst r25
	brlt .L757
.L750:
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
.L757:
	std Y+15,r2
	std Y+16,r3
	std Y+17,r12
	std Y+18,r13
	ldd r18,Y+15
	ldd r19,Y+16
	ldd r20,Y+17
	ldd r21,Y+18
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
	mov r2,r22
	mov r3,r23
	mov r12,r24
	mov r13,r25
	rjmp .L750
	.size	__powisf2, .-__powisf2
.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
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
	mov r31,r10
	mov r30,r11
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r24,r14
	mov r25,r15
	mov r26,r16
	mov r27,r17
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brlo .L762
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L763
	mov r24,r18
	mov r25,r19
	mov r26,r20
	mov r27,r21
	mov r20,r31
	mov r21,r30
	mov r22,r12
	mov r23,r13
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L762
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L763
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L758
.L762:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L758:
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
.L763:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L758
	.size	__ucmpdi2, .-__ucmpdi2
.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
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
	mov r31,r10
	mov r30,r11
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r24,r14
	mov r25,r15
	mov r26,r16
	mov r27,r17
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brlo .L768
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L769
	mov r24,r18
	mov r25,r19
	mov r26,r20
	mov r27,r21
	mov r20,r31
	mov r21,r30
	mov r22,r12
	mov r23,r13
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L768
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L769
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L765
.L768:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L765:
	mov r22,r24
	mov r23,r25
	mov r24,r26
	mov r25,r27
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
	pop r9
	pop r8
	ret
.L769:
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L765
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.local	seed
	.comm	seed,8,1
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
