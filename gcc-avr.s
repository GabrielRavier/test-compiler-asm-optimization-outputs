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
	cp r30,r18
	cpc r31,r19
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
	subi r18,-1
	sbci r19,-1
	mov r26,r18
	mov r27,r19
	ld r24,-X
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
	mov r26,r18
	mov r27,r19
	ldi r21,0
	sbiw r26,0
	breq .L9
	mov r28,r22
	mov r29,r23
	mov r30,r16
	mov r31,r17
.L10:
	mov r16,r30
	mov r17,r31
	ld r25,Y+
	st Z+,r25
	cp r25,r20
	cpc __zero_reg__,r21
	breq .L9
	sbiw r26,1
	mov r16,r30
	mov r17,r31
	sbiw r26,0
	brne .L10
.L9:
	mov r24,r16
	mov r25,r17
	adiw r24,1
	or r26,r27
	breq .L14
.L8:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L14:
	ldi r24,0
	ldi r25,0
	rjmp .L8
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L16
	mov r30,r24
	mov r31,r25
.L17:
	mov r24,r30
	mov r25,r31
	ld r20,Z+
	cp r20,r22
	cpc __zero_reg__,r23
	breq .L16
	mov r24,r30
	mov r25,r31
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L17
.L16:
	or r18,r19
	breq .L21
.L15:
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L23
	mov r26,r16
	mov r27,r17
	mov r30,r28
	mov r31,r29
.L24:
	mov r28,r30
	mov r29,r31
	mov r16,r26
	mov r17,r27
	ld r25,X+
	ld r24,Z+
	cpse r25,r24
	rjmp .L23
	subi r18,1
	sbc r19,__zero_reg__
	mov r16,r26
	mov r17,r27
	mov r28,r30
	mov r29,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L24
.L23:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L22
	mov r30,r16
	mov r31,r17
	ld r24,Z
	ld r25,Y
	sub r24,r25
	sbc r25,r25
.L22:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
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
	mov r26,r20
	mov r27,r21
	sbiw r26,0
	breq .L29
	mov r30,r24
	mov r31,r25
	mov r22,r18
	mov r23,r19
	add r22,r26
	adc r23,r27
.L30:
	subi r18,-1
	sbci r19,-1
	mov r26,r18
	mov r27,r19
	ld r20,-X
	st Z+,r20
	cp r18,r22
	cpc r19,r23
	brne .L30
.L29:
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
.L33:
	mov r26,r18
	mov r27,r19
	add r26,r30
	adc r27,r31
	cp r30,r20
	cpc r31,r21
	breq .L37
	ld r25,-Z
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L33
	mov r24,r28
	mov r25,r29
	add r24,r26
	adc r25,r27
	rjmp .L32
.L37:
	ldi r24,0
	ldi r25,0
.L32:
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
	mov r26,r24
	mov r27,r25
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L39
	add r18,r26
	adc r19,r27
	mov r30,r26
	mov r31,r27
.L40:
	st Z+,r22
	cp r30,r18
	cpc r31,r19
	brne .L40
.L39:
	mov r24,r26
	mov r25,r27
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
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	ld r24,X
	st Z,r24
	cp r24, __zero_reg__
	breq .L45
	adiw r26,1
	adiw r30,1
.L44:
	mov r24,r30
	mov r25,r31
	ld r18,X+
	st Z+,r18
	mov r28,r30
	mov r29,r31
	ld r18,-Y
	cpse r18,__zero_reg__
	rjmp .L44
.L42:
/* epilogue start */
	pop r29
	pop r28
	ret
.L45:
	mov r24,r30
	rjmp .L42
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
	breq .L51
.L49:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	cp r18,r22
	cpc __zero_reg__,r23
	breq .L52
	mov r24,r30
	mov r25,r31
	ld r18,Z
	cpse r18,__zero_reg__
	rjmp .L49
.L47:
/* epilogue start */
	ret
.L52:
	ret
.L51:
	mov r24,r30
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
.L55:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r20
	cpc r0,r21
	breq .L53
	mov r26,r30
	mov r27,r31
	ld r24,-X
	cpse r24,__zero_reg__
	rjmp .L55
	ldi r25,0
.L53:
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
	mov r28,r24
	mov r29,r25
	mov r26,r22
	mov r27,r23
	ld r25,Y
	ld r24,X
	cpse r25,r24
	rjmp .L58
	mov r30,r28
	mov r31,r29
.L59:
	mov r28,r30
	mov r29,r31
	ld r24,Z+
	cp r24, __zero_reg__
	breq .L58
	mov r28,r30
	mov r29,r31
	adiw r26,1
	ld r25,Z
	ld r24,X
	cp r25,r24
	breq .L59
.L58:
	ld r24,Y
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r24
	mov r27,r25
	ld r24,X
	cp r24, __zero_reg__
	breq .L64
	mov r30,r26
	mov r31,r27
	adiw r30,1
.L63:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	cpse r25,__zero_reg__
	rjmp .L63
.L62:
	mov r24,r18
	mov r25,r19
	sub r24,r26
	sbc r25,r27
/* epilogue start */
	ret
.L64:
	mov r18,r26
	mov r19,r27
	rjmp .L62
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
	ldi r24,0
	ldi r25,0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L66
	mov r28,r14
	mov r29,r15
	ld r24,Y
	cp r24, __zero_reg__
	breq .L68
	mov r30,r18
	mov r31,r19
	mov r26,r14
	mov r27,r15
	add r16,r18
	adc r17,r19
.L69:
	mov r18,r30
	mov r19,r31
	mov r14,r26
	mov r15,r27
	ld r24,Z+
	cp r24, __zero_reg__
	breq .L68
	cp r30,r16
	cpc r31,r17
	breq .L68
	ld r25,X+
	mov r20,r30
	mov r21,r31
	subi r20,1
	sbc r21,__zero_reg__
	mov r28,r20
	mov r29,r21
	ld r24,Y
	cpse r25,r24
	rjmp .L68
	mov r14,r26
	mov r15,r27
	mov r18,r30
	mov r19,r31
	ld r24,X
	cpse r24,__zero_reg__
	rjmp .L69
.L68:
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r28,r18
	mov r29,r19
	ld r25,Y
	sub r24,r25
	sbc r25,r25
.L66:
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
	brlt .L72
	mov r24,r18
	mov r25,r19
	sbiw r24,2
	andi r24,254
	adiw r24,2
	add r24,r30
	adc r25,r31
.L74:
	ldd r18,Z+1
	st X,r18
	ld r18,Z
	adiw r26,1
	st X,r18
	sbiw r26,1
	adiw r26,2
	adiw r30,2
	cp r30,r24
	cpc r31,r25
	brne .L74
.L72:
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
	brlo .L77
	ldi r24,0
.L77:
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
	brlo .L79
	ldi r24,0
.L79:
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
	breq .L83
	ldi r24,lo8(1)
	cpi r18,9
	cpc r19,__zero_reg__
	breq .L82
	ldi r24,0
.L82:
	ldi r25,0
	ret
.L83:
	ldi r24,lo8(1)
	ldi r25,0
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
	cpi r18,32
	cpc r19,__zero_reg__
	brlo .L87
	ldi r24,lo8(1)
	cpi r18,127
	cpc r19,__zero_reg__
	breq .L86
	ldi r24,0
.L86:
	ldi r25,0
	ret
.L87:
	ldi r24,lo8(1)
	ldi r25,0
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
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L89
	ldi r24,0
.L89:
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
	brlo .L91
	ldi r24,0
.L91:
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
	brlo .L93
	ldi r24,0
.L93:
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
	brlo .L95
	ldi r24,0
.L95:
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
	breq .L99
	subi r18,9
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L98
	ldi r24,0
.L98:
	ldi r25,0
	ret
.L99:
	ldi r24,lo8(1)
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
	brlo .L101
	ldi r24,0
.L101:
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
	brlo .L105
	mov r24,r18
	mov r25,r19
	subi r24,127
	sbc r25,__zero_reg__
	cpi r24,33
	cpc r25,__zero_reg__
	brlo .L106
	subi r24,-87
	sbci r25,31
	sbiw r24,2
	brlo .L107
	subi r18,-7
	sbci r19,-1
	ldi r24,lo8(1)
	cpi r18,3
	cpc r19,__zero_reg__
	brlo .L104
	ldi r24,0
.L104:
	ldi r25,0
	ret
.L105:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L106:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L107:
	ldi r24,lo8(1)
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
	brlo .L109
	ldi r24,0
.L109:
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
	brlo .L118
	cpi r18,40
	ldi r20,32
	cpc r19,r20
	brlo .L115
	mov r24,r18
	mov r25,r19
	subi r24,42
	sbci r25,32
	cpi r24,-42
	ldi r20,-73
	cpc r25,r20
	brlo .L116
	subi r24,-42
	sbci r25,-65
	cpi r24,-7
	sbci r25,31
	brlo .L117
	andi r18,254
	ldi r24,lo8(1)
	cpi r18,-2
	sbci r19,-1
	breq .L119
.L114:
	ldi r25,0
	ret
.L118:
	subi r18,-1
	sbci r19,-1
	andi r18,127
	clr r19
	ldi r24,lo8(1)
	cpi r18,33
	cpc r19,__zero_reg__
	brsh .L112
	ldi r24,0
.L112:
	ldi r25,0
	ret
.L119:
	ldi r24,0
	rjmp .L114
.L115:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L116:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L117:
	ldi r24,lo8(1)
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
	brlo .L123
	ori r18,32
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,6
	cpc r19,__zero_reg__
	brlo .L122
	ldi r24,0
.L122:
	ldi r25,0
	ret
.L123:
	ldi r24,lo8(1)
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
	rjmp .L128
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
	rjmp .L129
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
	breq .L132
	brlt .L132
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
.L125:
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
.L128:
	ldd r22,Y+17
	ldd r23,Y+18
	mov r24,r3
	mov r25,r2
	rjmp .L125
.L129:
	mov r22,r17
	mov r23,r16
	ldd r24,Y+28
	ldd r25,Y+27
	rjmp .L125
.L132:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L125
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
	rjmp .L136
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
	rjmp .L137
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
	breq .L140
	brlt .L140
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
.L133:
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
.L136:
	ldd r22,Y+17
	ldd r23,Y+18
	mov r24,r3
	mov r25,r2
	rjmp .L133
.L137:
	mov r22,r17
	mov r23,r16
	ldd r24,Y+28
	ldd r25,Y+27
	rjmp .L133
.L140:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L133
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
	rjmp .L147
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
	rjmp .L148
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L143
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L149
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
.L141:
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
.L143:
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
	brge .L145
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L141
.L145:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L141
.L147:
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L141
.L148:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L141
.L149:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L141
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
	rjmp .L156
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
	rjmp .L157
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L152
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L158
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
.L150:
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
.L152:
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
	brge .L154
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L150
.L154:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L150
.L156:
	mov r25,r2
	mov r24,r3
	std Y+9,r16
	std Y+1,r17
	rjmp .L150
.L157:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L150
.L158:
	mov r25,r6
	mov r24,r7
	ldd r18,Y+22
	std Y+9,r18
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L150
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
	rjmp .L165
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
	rjmp .L166
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	ldd r18,Y+8
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L161
	ldd r18,Y+8
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L167
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	mov r25,r17
	rjmp .L159
.L161:
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
	rjmp .L162
	std Y+7,__zero_reg__
.L162:
	ldd r25,Y+7
	cp r25, __zero_reg__
	breq .L163
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	ldd r25,Y+9
	std Y+8,r25
.L164:
	ldd r25,Y+8
.L159:
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
.L163:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	rjmp .L164
.L165:
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	ldd r25,Y+9
	rjmp .L159
.L166:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	ldd r25,Y+8
	rjmp .L159
.L167:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	ldd r25,Y+8
	rjmp .L159
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
	rjmp .L174
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
	rjmp .L175
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r3
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L170
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L176
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
.L168:
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
.L170:
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
	brge .L172
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L168
.L172:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L168
.L174:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L168
.L175:
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L168
.L176:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L168
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
	rjmp .L183
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
	rjmp .L184
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r3
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L179
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L185
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
.L177:
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
.L179:
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
	brge .L181
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L177
.L181:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L177
.L183:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L177
.L184:
	mov r16,r6
	mov r17,r7
	std Y+9,r2
	std Y+1,r3
	rjmp .L177
.L185:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L177
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
	mov r3,r25
	mov r4,r10
	mov r5,r11
	mov r6,r12
	mov r7,r13
	mov r8,r14
	mov r9,r15
	std Y+7,r16
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
	rjmp .L192
	mov r10,r4
	mov r11,r5
	mov r12,r6
	mov r13,r7
	mov r14,r8
	mov r15,r9
	ldd r16,Y+7
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
	rjmp .L193
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r3
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L188
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L194
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	mov r25,r3
	rjmp .L186
.L188:
	ldi r24,lo8(1)
	std Y+9,r24
	ldd r16,Y+7
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
	rjmp .L189
	std Y+9,__zero_reg__
.L189:
	ldd r18,Y+9
	cp r18, __zero_reg__
	breq .L191
	ldd r4,Y+1
	ldd r5,Y+2
	ldd r6,Y+3
	ldd r7,Y+4
	ldd r8,Y+5
	ldd r9,Y+6
	std Y+7,r2
	std Y+8,r3
.L191:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+7
	ldd r25,Y+8
.L186:
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
.L192:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+7
	ldd r25,Y+8
	rjmp .L186
.L193:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	mov r24,r2
	mov r25,r3
	rjmp .L186
.L194:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+7
	ldd r25,Y+8
	rjmp .L186
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
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	cpc r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L198
	ldi r30,lo8(s.0)
	ldi r31,hi8(s.0)
.L197:
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
	brne .L197
.L196:
	st Z,__zero_reg__
	ldi r24,lo8(s.0)
	ldi r25,hi8(s.0)
/* epilogue start */
	pop r17
	pop r16
	ret
.L198:
	ldi r30,lo8(s.0)
	ldi r31,hi8(s.0)
	rjmp .L196
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
	breq .L205
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
	breq .L202
	mov r26,r24
	mov r27,r25
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L202:
/* epilogue start */
	ret
.L205:
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
	breq .L207
	mov r26,r24
	mov r27,r25
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
.L207:
	ldd r24,Z+2
	ldd r25,Z+3
	sbiw r24,0
	breq .L206
	mov r26,r24
	mov r27,r25
	ld r24,Z
	ldd r25,Z+1
	st X+,r24
	st X,r25
.L206:
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
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	breq .L210
	mov r16,r4
	mov r17,r5
	ldi r28,0
	ldi r29,0
.L213:
	mov r22,r16
	mov r23,r17
	mov r24,r3
	mov r25,r2
	mov r30,r12
	mov r31,r13
	icall
	or r24,r25
	breq .L215
	adiw r28,1
	add r16,r14
	adc r17,r15
	cp r28,r8
	cpc r29,r9
	brne .L213
.L210:
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
.L215:
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
	mov r7,r24
	mov r6,r25
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
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	breq .L220
	mov r16,r10
	mov r17,r11
	ldi r28,0
	ldi r29,0
.L219:
	mov r22,r16
	mov r23,r17
	mov r24,r7
	mov r25,r6
	mov r30,r12
	mov r31,r13
	icall
	or r24,r25
	breq .L222
	adiw r28,1
	add r16,r14
	adc r17,r15
	cp r28,r8
	cpc r29,r9
	brne .L219
	ldi r24,0
	ldi r25,0
	rjmp .L216
.L222:
	mov r24,r28
	mov r25,r29
	mov r22,r14
	mov r23,r15
	rcall __mulhi3
	add r24,r10
	adc r25,r11
.L216:
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
.L220:
	ldi r24,0
	ldi r25,0
	rjmp .L216
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
	brlt .L225
.L224:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	ret
.L225:
	neg r19
	neg r18
	sbc r19,__zero_reg__
	rjmp .L224
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
	mov r16,r24
	mov r17,r25
.L227:
	mov r28,r16
	mov r29,r17
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
	brne .L227
	ld r24,Y
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L233
	ldi r20,lo8(1)
	ldi r21,0
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L228
	ldi r20,0
	ldi r21,0
	rjmp .L229
.L233:
	ldi r20,0
	ldi r21,0
.L228:
	adiw r28,1
.L229:
	ld r24,Y
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brsh .L235
	ldi r24,0
	ldi r25,0
.L231:
	mov r18,r24
	mov r19,r25
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r24,r18
	adc r25,r19
	lsl r24
	rol r25
	adiw r28,1
	mov r30,r28
	mov r31,r29
	ld r18,-Z
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	subi r18,48
	sbc r19,__zero_reg__
	sub r24,r18
	sbc r25,r19
	ld r18,Y
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	subi r18,48
	sbc r19,__zero_reg__
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L231
.L230:
	or r20,r21
	brne .L226
	neg r25
	neg r24
	sbc r25,__zero_reg__
.L226:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L235:
	ldi r24,0
	ldi r25,0
	rjmp .L230
	.size	atoi, .-atoi
.global	atol
	.type	atol, @function
atol:
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
.L239:
	mov r28,r16
	mov r29,r17
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
	brne .L239
	ld r24,Y
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	brne .+2
	rjmp .L245
	cpi r18,45
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L246
	ldi r18,lo8(1)
	ldi r19,0
.L240:
	adiw r28,1
.L241:
	ld r24,Y
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .+2
	rjmp .L247
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L243:
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
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	lsl r20
	rol r21
	rol r22
	rol r23
	adiw r28,1
	mov r30,r28
	mov r31,r29
	ld r24,-Z
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	sub r20,r24
	sbc r21,r25
	sbc r22,r26
	sbc r23,r27
	ld r24,Y
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .L243
.L242:
	or r18,r19
	brne .L238
	com r23
	com r22
	com r21
	neg r20
	sbci r21,lo8(-1)
	sbci r22,lo8(-1)
	sbci r23,lo8(-1)
.L238:
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L245:
	ldi r18,0
	ldi r19,0
	rjmp .L240
.L246:
	ldi r18,0
	ldi r19,0
	rjmp .L241
.L247:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L242
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
	mov r14,r24
	mov r15,r25
.L251:
	mov r28,r14
	mov r29,r15
	mov r30,r14
	mov r31,r15
	ld r24,Z+
	mov r14,r30
	mov r15,r31
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L251
	ld r24,Y
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L257
	ldi r26,lo8(1)
	ldi r27,0
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L252
	ldi r26,0
	ldi r27,0
	rjmp .L253
.L257:
	ldi r26,0
	ldi r27,0
.L252:
	adiw r28,1
.L253:
	ld r24,Y
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .+2
	rjmp .L259
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	mov r9,__zero_reg__
	ldi r17,0
.L255:
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
	adiw r28,1
	mov r30,r28
	mov r31,r29
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
	ld r30,Y
	mov __tmp_reg__,r30
	lsl r0
	sbc r31,r31
	sbiw r30,48
	sbiw r30,10
	brlo .L255
.L254:
	or r26,r27
	brne .L250
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r9
	mov r25,r17
	rcall __negdi2
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r9,r24
	mov r17,r25
.L250:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r9
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
	ret
.L259:
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	mov r9,__zero_reg__
	ldi r17,0
	rjmp .L254
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
	sbiw r28,0
	brne .L266
	ldi r16,0
	ldi r17,0
	rjmp .L262
.L270:
	lsr r29
	ror r28
.L265:
	sbiw r28,0
	breq .L269
.L266:
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
	brlt .L270
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L262
	brlt .L262
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
	rjmp .L265
.L269:
	ldi r16,0
	ldi r17,0
.L262:
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
	brne .L274
	ldi r16,0
	ldi r17,0
	rjmp .L271
.L273:
	asr r29
	ror r28
	sbiw r28,0
	breq .L277
.L274:
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
	breq .L271
	brlt .L273
	mov r6,r16
	mov r7,r17
	add r6,r10
	adc r7,r11
	sbiw r28,1
	rjmp .L273
.L277:
	ldi r16,0
	ldi r17,0
.L271:
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
	brge .L280
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L280:
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
	brlt .L284
.L283:
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
	pop r17
	pop r16
	ret
.L284:
	com r19
	com r18
	com r17
	neg r16
	sbci r17,lo8(-1)
	sbci r18,lo8(-1)
	sbci r19,lo8(-1)
	rjmp .L283
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
	brge .L287
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L287:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	mov r20,r22
	mov r21,r23
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	breq .L294
.L291:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	ld r19,Z+
	cp r20,r18
	cpc r21,r19
	breq .L290
	mov r24,r30
	mov r25,r31
	ld r18,Z
	ldd r19,Z+1
	or r18,r19
	brne .L291
.L290:
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	or r18,r19
	breq .L295
.L289:
/* epilogue start */
	ret
.L294:
	mov r24,r30
	mov r25,r31
	rjmp .L290
.L295:
	ldi r24,0
	ldi r25,0
	ret
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
	mov r18,r24
	mov r19,r25
	mov r28,r22
	mov r29,r23
	mov r30,r18
	mov r31,r19
	ld r20,Z
	ldd r21,Z+1
	ld r24,Y
	ldd r25,Y+1
	cp r20,r24
	cpc r21,r25
	brne .L297
	mov r26,r28
	mov r27,r29
.L298:
	mov r28,r26
	mov r29,r27
	mov r18,r30
	mov r19,r31
	ld r24,Z+
	ld r25,Z+
	or r24,r25
	breq .L297
	ld r24,X+
	ld r25,X+
	or r24,r25
	breq .L297
	mov r18,r30
	mov r19,r31
	mov r28,r26
	mov r29,r27
	ld r20,Z
	ldd r21,Z+1
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r20,r24
	cpc r21,r25
	breq .L298
.L297:
	mov r30,r18
	mov r31,r19
	ld r20,Z
	ldd r21,Z+1
	ld r24,Y
	ldd r25,Y+1
	cp r20,r24
	cpc r21,r25
	brlt .L302
	mov r18,r20
	mov r19,r21
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L301
	ldi r24,0
.L301:
	ldi r25,0
.L296:
/* epilogue start */
	pop r29
	pop r28
	ret
.L302:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L296
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
.L304:
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
	brne .L304
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
	breq .L309
	mov r30,r26
	mov r31,r27
	adiw r30,2
.L308:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	ld r19,Z+
	or r18,r19
	brne .L308
.L307:
	sub r24,r26
	sbc r25,r27
	asr r25
	ror r24
/* epilogue start */
	ret
.L309:
	mov r24,r26
	mov r25,r27
	rjmp .L307
	.size	wcslen, .-wcslen
.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
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
	mov r16,r24
	mov r17,r25
	mov r14,r22
	mov r15,r23
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L312
	mov r30,r16
	mov r31,r17
	mov r26,r14
	mov r27,r15
.L313:
	mov r14,r26
	mov r15,r27
	mov r16,r30
	mov r17,r31
	ld r20,Z+
	ld r21,Z+
	ld r24,X+
	ld r25,X+
	cp r20,r24
	cpc r21,r25
	brne .L312
	mov r24,r30
	mov r25,r31
	sbiw r24,2
	mov r28,r24
	mov r29,r25
	ld r24,Y
	ldd r25,Y+1
	or r24,r25
	breq .L312
	mov r24,r26
	mov r25,r27
	sbiw r24,2
	mov r28,r24
	mov r29,r25
	ld r24,Y
	ldd r25,Y+1
	or r24,r25
	breq .L312
	subi r18,1
	sbc r19,__zero_reg__
	mov r16,r30
	mov r17,r31
	mov r14,r26
	mov r15,r27
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L313
.L312:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L311
	mov r30,r16
	mov r31,r17
	ld r18,Z
	ldd r19,Z+1
	mov r28,r14
	mov r29,r15
	ld r24,Y
	ldd r25,Y+1
	cp r18,r24
	cpc r19,r25
	brlt .L318
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L316
	ldi r24,0
.L316:
	ldi r25,0
.L311:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L318:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L311
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L320
	mov r30,r24
	mov r31,r25
.L321:
	mov r24,r30
	mov r25,r31
	ld r20,Z+
	ld r21,Z+
	cp r26,r20
	cpc r27,r21
	breq .L320
	subi r18,1
	sbc r19,__zero_reg__
	mov r24,r30
	mov r25,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L321
.L320:
	or r18,r19
	breq .L325
.L319:
/* epilogue start */
	ret
.L325:
	ldi r24,0
	ldi r25,0
	ret
	.size	wmemchr, .-wmemchr
.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L327
	mov r26,r16
	mov r27,r17
	mov r30,r28
	mov r31,r29
.L328:
	mov r28,r30
	mov r29,r31
	mov r16,r26
	mov r17,r27
	ld r20,X+
	ld r21,X+
	ld r24,Z+
	ld r25,Z+
	cp r20,r24
	cpc r21,r25
	brne .L327
	subi r18,1
	sbc r19,__zero_reg__
	mov r16,r26
	mov r17,r27
	mov r28,r30
	mov r29,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L328
.L327:
	ldi r24,0
	ldi r25,0
	or r18,r19
	breq .L326
	mov r30,r16
	mov r31,r17
	ld r18,Z
	ldd r19,Z+1
	ld r24,Y
	ldd r25,Y+1
	cp r18,r24
	cpc r19,r25
	brlt .L333
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L331
	ldi r24,0
.L331:
	ldi r25,0
.L326:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L333:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L326
	.size	wmemcmp, .-wmemcmp
.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r22
	mov r19,r23
	mov r30,r20
	mov r31,r21
	mov r20,r30
	mov r21,r31
	subi r20,1
	sbc r21,__zero_reg__
	or r30,r31
	breq .L335
	mov r30,r24
	mov r31,r25
.L336:
	subi r18,-2
	sbci r19,-1
	mov r26,r18
	mov r27,r19
	ld r23,-X
	ld r22,-X
	st Z+,r22
	st Z+,r23
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L336
.L335:
/* epilogue start */
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
	breq .L339
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
	brlo .L340
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	or r30,r31
	breq .L339
	mov r30,r28
	mov r31,r29
.L343:
	subi r18,-2
	sbci r19,-1
	mov r26,r18
	mov r27,r19
	ld r21,-X
	ld r20,-X
	st Z+,r20
	st Z+,r21
	sbiw r24,1
	brcc .L343
	rjmp .L339
.L340:
	sbiw r30,0
	breq .L339
	lsl r30
	rol r31
	mov r26,r18
	mov r27,r19
	add r26,r30
	adc r27,r31
	add r30,r28
	adc r31,r29
.L342:
	ld r25,-X
	ld r24,-X
	st -Z,r25
	st -Z,r24
	cp r26,r18
	cpc r27,r19
	brne .L342
.L339:
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
	breq .L347
	mov r18,r24
	mov r19,r25
.L348:
	subi r18,-2
	sbci r19,-1
	mov r30,r18
	mov r31,r19
	sbiw r30,2
	st Z,r22
	std Z+1,r23
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L348
.L347:
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
	brsh .L351
	add r28,r16
	adc r29,r17
	mov r30,r26
	mov r31,r27
	add r30,r16
	adc r31,r17
	or r16,r17
	breq .L350
.L353:
	ld r24,-Y
	st -Z,r24
	cp r30,r26
	cpc r31,r27
	brne .L353
.L350:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L351:
	cp r28,r26
	cpc r29,r27
	breq .L350
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L350
	mov r30,r26
	mov r31,r27
	add r16,r28
	adc r17,r29
.L354:
	adiw r28,1
	mov r26,r28
	mov r27,r29
	ld r24,-X
	st Z+,r24
	cp r28,r16
	cpc r29,r17
	brne .L354
	rjmp .L350
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
.L373:
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
	rjmp .L375
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	brne .L373
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L375:
	mov r18,r24
	mov r19,r25
	subi r18,-1
	sbci r19,-1
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
	breq .L379
	sbrc r18,0
	rjmp .L380
	ldi r24,lo8(1)
	ldi r25,0
.L378:
	asr r19
	ror r18
	adiw r24,1
	sbrs r18,0
	rjmp .L378
	ret
.L379:
	ldi r24,0
	ldi r25,0
	ret
.L380:
	ldi r24,lo8(1)
	ldi r25,0
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
	brlt .L385
	clr r15
	inc r15
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
	breq .L386
	brlt .L386
.L384:
	mov r24,r15
	ldi r25,0
.L382:
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
.L386:
	mov r15,__zero_reg__
	rjmp .L384
.L385:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L382
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
	brlt .L390
	clr r15
	inc r15
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
	breq .L391
	brlt .L391
.L389:
	mov r24,r15
	ldi r25,0
.L387:
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
.L391:
	mov r15,__zero_reg__
	rjmp .L389
.L390:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L387
	.size	gl_isinfd, .-gl_isinfd
.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
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
/* stack size = 17 */
.L__stack_usage = 17
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
	rjmp .L395
	clr r3
	inc r3
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
	rjmp .L394
	mov r3,__zero_reg__
.L394:
	mov r24,r3
	ldi r25,0
.L392:
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
	ret
.L395:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L392
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
	rjmp .L398
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
	rjmp .L398
	ldd r18,Y+33
	ldd r19,Y+34
	tst r19
	brlt .L407
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	set
	clr r15
	bld r15,6
	mov r3,r6
	mov r2,r7
	rjmp .L403
.L407:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r15,r31
	mov r31,__tmp_reg__
	mov r3,r6
	mov r2,r7
	rjmp .L403
.L401:
	ldd r24,Y+33
	ldd r25,Y+34
	tst r25
	brlt .L408
.L402:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+34,r19
	std Y+33,r18
	or r18,r19
	breq .L406
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
.L403:
	ldd r18,Y+33
	ldd r19,Y+34
	sbrs r18,0
	rjmp .L401
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
	rjmp .L401
.L408:
	adiw r24,1
	rjmp .L402
.L406:
	mov r6,r3
	mov r7,r2
.L398:
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
	rjmp .L410
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
	rjmp .L410
	ldd r18,Y+33
	ldd r19,Y+34
	tst r19
	brlt .L419
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	set
	clr r15
	bld r15,6
	mov r3,r6
	mov r2,r7
	rjmp .L415
.L419:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r15,r31
	mov r31,__tmp_reg__
	mov r3,r6
	mov r2,r7
	rjmp .L415
.L413:
	ldd r24,Y+33
	ldd r25,Y+34
	tst r25
	brlt .L420
.L414:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+34,r19
	std Y+33,r18
	or r18,r19
	breq .L418
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
.L415:
	ldd r18,Y+33
	ldd r19,Y+34
	sbrs r18,0
	rjmp .L413
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
	rjmp .L413
.L420:
	adiw r24,1
	rjmp .L414
.L418:
	mov r6,r3
	mov r7,r2
.L410:
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
	rjmp .L422
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
	rjmp .L422
	ldd r18,Y+9
	ldd r19,Y+10
	tst r19
	brlt .L430
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
	rjmp .L427
.L430:
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
	rjmp .L427
.L425:
	ldd r24,Y+9
	ldd r25,Y+10
	tst r25
	brge .+2
	rjmp .L431
.L426:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+10,r19
	std Y+9,r18
	or r18,r19
	breq .L422
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
.L427:
	ldd r24,Y+9
	ldd r25,Y+10
	sbrs r24,0
	rjmp .L425
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
	rjmp .L425
.L431:
	adiw r24,1
	rjmp .L426
.L422:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r22
	mov r19,r23
	mov r26,r20
	mov r27,r21
	sbiw r26,0
	breq .L433
	add r26,r18
	adc r27,r19
	mov r22,r24
	mov r23,r25
.L434:
	subi r18,-1
	sbci r19,-1
	mov r30,r18
	mov r31,r19
	ld r21,-Z
	subi r22,-1
	sbci r23,-1
	mov r30,r22
	mov r31,r23
	ld r20,-Z
	eor r20,r21
	st Z,r20
	cp r18,r26
	cpc r19,r27
	brne .L434
.L433:
/* epilogue start */
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
	breq .L437
	mov r26,r22
	mov r27,r23
.L438:
	mov r28,r30
	mov r29,r31
	ld r24,X+
	st Z+,r24
	cp r24, __zero_reg__
	breq .L437
	mov r28,r30
	mov r29,r31
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L438
.L437:
	or r18,r19
	brne .L440
	st Y,__zero_reg__
.L440:
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
	breq .L445
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
.L443:
	ld r20,Z+
	cpse r20,__zero_reg__
	rjmp .L446
.L441:
/* epilogue start */
	ret
.L446:
	adiw r24,1
	cp r24,r18
	cpc r25,r19
	brne .L443
	ret
.L445:
	ldi r24,0
	ldi r25,0
	ret
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
	mov r28,r24
	mov r29,r25
	ld r24,Y
	cp r24, __zero_reg__
	breq .L454
.L448:
	mov r30,r22
	mov r31,r23
.L451:
	ld r24,Z+
	cp r24, __zero_reg__
	breq .L455
	mov r26,r30
	mov r27,r31
	ld r25,-X
	ld r24,Y
	cpse r25,r24
	rjmp .L451
.L449:
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	ret
.L454:
	ldi r28,0
	ldi r29,0
	rjmp .L449
.L455:
	adiw r28,1
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L448
	ldi r28,0
	ldi r29,0
	rjmp .L449
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
	rjmp .L458
.L457:
	mov r26,r30
	mov r27,r31
	ld r18,-X
	cp r18, __zero_reg__
	breq .L461
.L458:
	mov r20,r30
	mov r19,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r28
	cpc r0,r29
	brne .L457
	mov r24,r20
	mov r25,r19
	rjmp .L457
.L461:
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
	breq .L462
	mov r30,r16
	mov r31,r17
	ld r14,Z
	mov __tmp_reg__,r14
	lsl r0
	sbc r15,r15
.L464:
	mov r22,r14
	mov r23,r15
	mov r24,r18
	mov r25,r19
	rcall strchr
	mov r28,r24
	mov r29,r25
	sbiw r28,0
	breq .L467
	mov r20,r12
	mov r21,r13
	mov r22,r16
	mov r23,r17
	mov r24,r28
	mov r25,r29
	rcall strncmp
	or r24,r25
	breq .L462
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	rjmp .L464
.L467:
	ldi r28,0
	ldi r29,0
.L462:
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
	brlt .L477
.L469:
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
	breq .L472
	brlt .L472
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
	brlt .L471
.L472:
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
.L477:
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
	breq .L469
	brlt .L469
.L471:
	bst r7,7
	com r7
	bld r7,7
	com r7
	rjmp .L472
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
	mov r30,r22
	mov r31,r23
	mov r12,r18
	mov r13,r19
	mov r16,r30
	mov r17,r31
	sub r16,r12
	sbc r17,r13
	add r16,r28
	adc r17,r29
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L483
	ldi r24,lo8(1)
	cp r30,r12
	cpc r31,r13
	brlo .L480
	ldi r24,0
.L480:
	cpse r24,__zero_reg__
	rjmp .L484
	cp r16,r28
	cpc r17,r29
	brlo .L485
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
	rjmp .L482
.L481:
	cp r16,r28
	cpc r17,r29
	brlo .L487
.L482:
	mov r14,r28
	mov r15,r29
	ld r24,Y+
	cpse r24,r9
	rjmp .L481
	mov r20,r12
	mov r21,r13
	mov r22,r10
	mov r23,r11
	mov r24,r28
	mov r25,r29
	rcall memcmp
	or r24,r25
	brne .L481
	rjmp .L478
.L487:
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L478:
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
.L483:
	mov r14,r24
	mov r15,r25
	rjmp .L478
.L484:
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L478
.L485:
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L478
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
	brge .+2
	rjmp .L513
.L490:
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
	rjmp .L510
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
.L494:
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
	brge .L494
.L495:
	ldd r24,Y+5
	ldd r25,Y+6
	mov r30,r16
	mov r31,r17
	std Z+1,r25
	st Z,r24
	or r10,r11
	breq .L499
	bst r15,7
	com r15
	bld r15,7
	com r15
.L499:
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
.L513:
	bst r15,7
	com r15
	bld r15,7
	com r15
	clr r10
	inc r10
	mov r11,__zero_reg__
	rjmp .L490
.L510:
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
	brge .L511
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __nesf2
	cp r24, __zero_reg__
	breq .L512
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
.L498:
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
	brlt .L498
	rjmp .L495
.L511:
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L495
.L512:
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L495
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,13
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 13 */
/* stack size = 31 */
.L__stack_usage = 31
	mov r30,r10
	mov r31,r11
	mov r27,r12
	std Y+12,r13
	std Y+13,r14
	mov r9,r15
	mov r8,r16
	mov r7,r17
	mov r6,r18
	mov r5,r19
	mov r4,r20
	mov r3,r21
	mov r2,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
	ldi r26,0
	rcall __cmpdi2_s8
	brne .+2
	rjmp .L517
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
.L516:
	mov r18,r6
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rcall __negdi2
	mov r10,r30
	and r10,r18
	mov r11,r31
	and r11,r19
	mov r12,r27
	and r12,r20
	ldd r13,Y+12
	and r13,r21
	ldd r14,Y+13
	and r14,r22
	mov r15,r9
	and r15,r23
	mov r16,r8
	and r16,r24
	mov r17,r7
	and r17,r25
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __adddi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	mov r18,r30
	mov r19,r31
	mov r20,r27
	ldd r21,Y+12
	ldd r22,Y+13
	mov r23,r9
	mov r24,r8
	mov r25,r7
	ldi r16,lo8(1)
	rcall __ashldi3
	mov r30,r18
	mov r31,r19
	mov r27,r20
	std Y+12,r21
	std Y+13,r22
	mov r9,r23
	mov r8,r24
	mov r7,r25
	mov r18,r6
	mov r19,r5
	mov r20,r4
	mov r21,r3
	mov r22,r2
	ldd r23,Y+9
	ldd r24,Y+10
	ldd r25,Y+11
	rcall __lshrdi3
	mov r6,r18
	mov r5,r19
	mov r4,r20
	mov r3,r21
	mov r2,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
	ldi r26,0
	rcall __cmpdi2_s8
	breq .+2
	rjmp .L516
.L514:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
/* epilogue start */
	adiw r28,13
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
.L517:
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	rjmp .L514
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
	brsh .L521
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L520:
	tst r15
	brlt .L521
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
	brsh .L521
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L520
.L521:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L524
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L523
.L526:
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
	breq .L524
.L523:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L526
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L526
.L524:
	cpse r16,__zero_reg__
	rjmp .L532
.L519:
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
.L532:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L519
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
	mov r25,r18
	eor r25,r24
	cp r18,r24
	breq .L535
	ldi r24,0
	rcall __clzhi2
	sbiw r24,1
	ret
.L535:
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
	mov r17,r19
	mov r29,r20
	mov r28,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	ldi r16,lo8(63)
	rcall __ashrdi3
	mov r16,r18
	eor r16,r15
	mov r15,r19
	eor r15,r17
	mov r17,r20
	eor r17,r29
	mov r29,r21
	eor r29,r28
	mov r28,r22
	eor r28,r27
	mov r27,r23
	eor r27,r26
	eor r31,r24
	eor r30,r25
	mov r18,r16
	mov r19,r15
	mov r20,r17
	mov r21,r29
	mov r22,r28
	mov r23,r27
	mov r24,r31
	mov r25,r30
	ldi r26,0
	rcall __cmpdi2_s8
	breq .L538
	rcall __clzdi2
	sbiw r24,1
.L536:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L538:
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L536
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
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L542
	ldi r24,0
	ldi r25,0
.L541:
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
	brne .L541
	ret
.L542:
	ldi r24,0
	ldi r25,0
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
	brlo .L545
	mov r20,r18
	mov r21,r19
	add r20,r28
	adc r21,r29
	cp r20,r16
	cpc r21,r17
	brlo .L545
	sbiw r28,0
	brne .+2
	rjmp .L544
	mov r26,r18
	mov r27,r19
	add r26,r28
	adc r27,r29
	add r28,r16
	adc r29,r17
.L551:
	ld r24,-X
	st -Y,r24
	cp r26,r18
	cpc r27,r19
	brne .L551
	rjmp .L544
.L545:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L548
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
.L549:
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
	brne .L549
.L548:
	cp r24,r28
	cpc r25,r29
	brsh .L544
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
.L550:
	ld r24,Z+
	st X+,r24
	cp r30,r18
	cpc r31,r19
	brne .L550
.L544:
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
	brlo .L556
	mov r24,r16
	mov r25,r17
	add r24,r14
	adc r25,r15
	cp r24,r28
	cpc r25,r29
	brlo .L556
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L555
	mov r30,r16
	mov r31,r17
	add r30,r14
	adc r31,r15
	add r28,r14
	adc r29,r15
.L561:
	ld r24,-Z
	st -Y,r24
	cp r30,r16
	cpc r31,r17
	brne .L561
	rjmp .L555
.L556:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L559
	mov r30,r16
	mov r31,r17
	mov r26,r28
	mov r27,r29
	lsl r18
	rol r19
	add r18,r16
	adc r19,r17
.L560:
	ld r24,Z+
	ld r25,Z+
	st X+,r24
	st X+,r25
	cp r30,r18
	cpc r31,r19
	brne .L560
.L559:
	sbrs r14,0
	rjmp .L555
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
.L555:
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
	brlo .L565
	mov r24,r18
	mov r25,r19
	add r24,r16
	adc r25,r17
	cp r24,r14
	cpc r25,r15
	brlo .L565
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L564
	mov r26,r18
	mov r27,r19
	add r26,r16
	adc r27,r17
	mov r30,r14
	mov r31,r15
	add r30,r16
	adc r31,r17
.L571:
	ld r24,-X
	st -Z,r24
	cp r26,r18
	cpc r27,r19
	brne .L571
	rjmp .L564
.L565:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L568
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
.L568:
	cp r26,r16
	cpc r27,r17
	brsh .L564
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
.L564:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
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
	tst r21
	brlt .L585
	ldi r24,0
	ldi r25,0
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
.L585:
	ldi r24,0
	ldi r25,0
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
	brge .L597
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
.L591:
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
.L597:
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
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L607
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
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
.L607:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L604
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
	breq .L609
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L613
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
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
.L613:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L609
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
	brsh .L617
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L616:
	tst r15
	brlt .L617
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
	brsh .L617
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L616
.L617:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L620
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L619
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
.L620:
	or r30,r31
	brne .L628
.L615:
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
.L628:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L615
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
	std Y+8,r22
	std Y+7,r23
	std Y+5,r24
	std Y+6,r25
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
	brlt .L632
	clr r15
	inc r15
	mov r8,r2
	mov r9,r3
	mov r10,r16
	mov r11,r17
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	ldd r24,Y+6
	std Y+4,r24
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L633
	brlt .L633
.L631:
	mov r24,r15
	ldi r25,0
.L629:
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
.L633:
	mov r15,__zero_reg__
	rjmp .L631
.L632:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L629
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
	std Y+8,r22
	std Y+7,r23
	std Y+5,r24
	std Y+6,r25
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
	brlt .L637
	clr r15
	inc r15
	mov r8,r2
	mov r9,r3
	mov r10,r16
	mov r11,r17
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	ldd r24,Y+6
	std Y+4,r24
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	rcall __gtsf2
	cp r24, __zero_reg__
	breq .L638
	brlt .L638
.L636:
	mov r24,r15
	ldi r25,0
.L634:
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
.L638:
	mov r15,__zero_reg__
	rjmp .L636
.L637:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L634
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
	brlt .L649
.L642:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L647
	ldi r25,lo8(16)
	ldi r22,0
	ldi r23,0
.L644:
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
	breq .L643
	subi r25,lo8(-(-1))
	cpse r25,__zero_reg__
	rjmp .L644
.L643:
	or r26,r27
	breq .L641
	neg r23
	neg r22
	sbc r23,__zero_reg__
.L641:
	mov r24,r22
	mov r25,r23
/* epilogue start */
	ret
.L649:
	neg r21
	neg r20
	sbc r21,__zero_reg__
	ldi r26,lo8(1)
	ldi r27,0
	rjmp .L642
.L647:
	ldi r22,0
	ldi r23,0
	rjmp .L643
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
	brlt .L655
.L651:
	tst r11
	brlt .L656
.L652:
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
.L655:
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
	rjmp .L651
.L656:
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	andi r28,1
	ldi r24,lo8(1)
	eor r28,r24
	ldi r29,0
	rjmp .L652
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
	brlt .L662
.L658:
	mov r21,r7
	mov r20,r6
	mov r19,r5
	mov r18,r4
	tst r7
	brlt .L663
.L659:
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
	breq .L657
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
.L657:
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
.L662:
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
	rjmp .L658
.L663:
	clr r18
	clr r19
	clr r20
	clr r21
	sub r18,r4
	sbc r19,r5
	sbc r20,r6
	sbc r21,r7
	rjmp .L659
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
	brsh .L666
	ldi r20,lo8(1)
	ldi r21,0
.L665:
	tst r19
	brlt .L666
	lsl r18
	rol r19
	lsl r20
	rol r21
	cp r18,r30
	cpc r19,r31
	brsh .L666
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L665
.L666:
	ldi r24,0
	ldi r25,0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L669
	ldi r24,0
	ldi r25,0
	rjmp .L668
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
.L669:
	or r26,r27
	brne .L677
.L664:
/* epilogue start */
	ret
.L677:
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
	brsh .L680
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L679:
	tst r15
	brlt .L680
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
	brsh .L680
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L679
.L680:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L683
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L682
.L685:
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
	breq .L683
.L682:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L685
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L685
.L683:
	or r30,r31
	brne .L691
.L678:
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
.L691:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L678
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
	rjmp .L693
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
.L694:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
.L692:
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
.L693:
	sbiw r30,0
	breq .L692
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
	rjmp .L694
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
	rjmp .L698
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
.L699:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
.L697:
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
.L698:
	sbiw r30,0
	breq .L697
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
	rjmp .L699
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
	ldi r24,lo8(1)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	ldi r20,1
	cpc r18,r20
	cpc r19,__zero_reg__
	brlo .L705
	ldi r24,0
.L705:
	ldi r25,0
	ldi r26,0
	ldi r27,0
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
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
	or r12,r13
	or r12,r14
	or r12,r15
	breq .L706
	ldi r24,0
.L706:
	ldi r25,0
	ldi r26,0
	ldi r27,0
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
	or r12,r13
	or r12,r14
	or r12,r15
	breq .L707
	ldi r20,0
.L707:
	ldi r21,0
	ldi r22,0
	ldi r23,0
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
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	ldi r20,12
	and r12,r20
	clr r13
	clr r14
	clr r15
	ldi r20,lo8(1)
	or r12,r13
	or r12,r14
	or r12,r15
	breq .L708
	ldi r20,0
.L708:
	ldi r21,0
	ldi r22,0
	ldi r23,0
	lsl r20
	rol r21
	rol r22
	rol r23
	ldi r30,lo8(2)
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
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	clr r20
	sbrs r16,1
	inc r20
	ldi r21,0
	set
	clr r12
	bld r12,1
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	mov r8,r12
	mov r9,r13
	mov r10,r14
	mov r11,r15
	sub r8,r16
	sbc r9,r17
	sbc r10,r18
	sbc r11,r19
	mov r19,r11
	mov r18,r10
	mov r17,r9
	mov r16,r8
	neg r21
	neg r20
	sbc r21,__zero_reg__
	mov r18,r20
	mov r19,r21
	and r18,r16
	and r19,r17
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
	brlt .L711
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
	brlt .L712
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
	brlo .L713
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
	brlo .L714
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L709
.L711:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L709:
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
.L712:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L709
.L713:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L709
.L714:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L709
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
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	clr r26
	clr r27
	ldi r20,lo8(1)
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L717
	ldi r20,0
.L717:
	ldi r21,0
	ldi r22,0
	ldi r23,0
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
	ldi r24,lo8(1)
	cpse r16,__zero_reg__
	ldi r24,0
.L718:
	ldi r25,0
	ldi r26,0
	ldi r27,0
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
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	ldi r20,15
	and r12,r20
	clr r13
	clr r14
	clr r15
	ldi r20,lo8(1)
	or r12,r13
	or r12,r14
	or r12,r15
	breq .L719
	ldi r20,0
.L719:
	ldi r21,0
	ldi r22,0
	ldi r23,0
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
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r12,r16
	mov r13,r17
	mov r14,r18
	mov r15,r19
	ldi r20,3
	and r12,r20
	clr r13
	clr r14
	clr r15
	ldi r20,lo8(1)
	or r12,r13
	or r12,r14
	or r12,r15
	breq .L720
	ldi r20,0
.L720:
	ldi r21,0
	ldi r22,0
	ldi r23,0
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
	andi r16,3
	clr r17
	clr r18
	clr r19
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r23,r19
	mov r22,r18
	mov r21,r17
	mov r20,r16
	com r20
	com r21
	com r22
	com r23
	andi r20,1
	clr r21
	lsr r19
	ror r18
	ror r17
	ror r16
	set
	clr r12
	bld r12,1
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	sub r12,r16
	sbc r13,r17
	sbc r14,r18
	sbc r15,r19
	neg r21
	neg r20
	sbc r21,__zero_reg__
	and r20,r12
	and r21,r13
	add r24,r20
	adc r25,r21
/* epilogue start */
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
	rjmp .L722
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
.L723:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
.L721:
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
.L722:
	sbiw r30,0
	breq .L721
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
	rjmp .L723
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
	sbiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
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
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
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
	mov r19,r11
	mov r18,r10
	clr r20
	clr r21
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	mov r27,r11
	mov r26,r10
	mov r25,r9
	mov r24,r8
	clr r26
	clr r27
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	mov r19,r15
	mov r18,r14
	clr r20
	clr r21
	std Y+21,r18
	std Y+22,r19
	std Y+23,r20
	std Y+24,r21
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __mulsi3
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	add r18,r22
	adc r19,r23
	adc r20,r24
	adc r21,r25
	mov r10,r18
	mov r11,r19
	clr r9
	clr r8
	mov r19,r21
	mov r18,r20
	clr r20
	clr r21
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	mov r9,r11
	mov r8,r10
	clr r10
	clr r11
	mov r13,r7
	mov r12,r6
	clr r14
	clr r15
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __mulsi3
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	add r4,r8
	adc r5,r9
	adc r6,r10
	adc r7,r11
	mov r26,r4
	mov r27,r5
	clr r25
	clr r24
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	mov r8,r24
	mov r9,r25
	mov r10,r26
	mov r11,r27
	mov r5,r7
	mov r4,r6
	clr r6
	clr r7
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	add r4,r24
	adc r5,r25
	adc r6,r26
	adc r7,r27
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __mulsi3
	add r4,r22
	adc r5,r23
	adc r6,r24
	adc r7,r25
	mov r22,r4
	mov r23,r5
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
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
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
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
	mov r8,r18
	mov r9,r19
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
	mov r18,r8
	mov r19,r9
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
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	andi r24,lo8(15)
	andi r25,lo8(15)
	ldi r16,lo8(32)
	rcall __lshrdi3
	mov r24,r18
	mov r25,r19
	mov r26,r20
	mov r27,r21
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
	mov r27,r19
	mov r26,r18
	mov r25,r17
	mov r24,r16
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr r27
	ror r26
	ror r25
	ror r24
	andi r24,51
	andi r25,51
	andi r26,51
	andi r27,51
	andi r16,51
	andi r17,51
	andi r18,51
	andi r19,51
	add r24,r16
	adc r25,r17
	adc r26,r18
	adc r27,r19
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
	mov r20,r24
	mov r21,r25
	mov r22,r26
	mov r23,r27
	andi r20,15
	andi r21,15
	andi r22,15
	andi r23,15
	mov r25,r23
	mov r24,r22
	clr r26
	clr r27
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
	rjmp .L737
.L734:
	mov r24,r14
	mov r25,r15
	tst r25
	brlt .L739
.L735:
	mov r14,r24
	mov r15,r25
	asr r15
	ror r14
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L736
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
.L737:
	sbrs r14,0
	rjmp .L734
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
	rjmp .L734
.L739:
	adiw r24,1
	rjmp .L735
.L736:
	ldd r18,Y+17
	ldd r19,Y+18
	or r18,r19
	breq .L733
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
.L733:
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
	rjmp .L744
.L741:
	mov r24,r14
	mov r25,r15
	tst r25
	brlt .L746
.L742:
	mov r14,r24
	mov r15,r25
	asr r15
	ror r14
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L743
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
.L744:
	sbrs r14,0
	rjmp .L741
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
	rjmp .L741
.L746:
	adiw r24,1
	rjmp .L742
.L743:
	ldd r18,Y+17
	ldd r19,Y+18
	or r18,r19
	breq .L740
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
.L740:
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
	brlo .L749
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
	brlo .L750
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
	brlo .L751
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
	brlo .L752
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L747
.L749:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L747:
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
.L750:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L747
.L751:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L747
.L752:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L747
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
