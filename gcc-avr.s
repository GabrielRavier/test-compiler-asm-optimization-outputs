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
	ld r25,-Z
	st -X,r25
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
	cp r24,r22
	cpc r25,r23
	breq .L5
	mov r28,r24
	mov r29,r25
	add r20,r22
	adc r21,r23
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r21,0
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	rjmp .L9
.L11:
	subi r18,1
	sbc r19,__zero_reg__
.L9:
	mov r22,r30
	mov r23,r31
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L10
	ld r25,X+
	st Z+,r25
	mov r28,r30
	mov r29,r31
	ld r25,-Y
	cp r25,r20
	cpc __zero_reg__,r21
	brne .L11
.L10:
	mov r24,r22
	mov r25,r23
	adiw r24,1
	or r18,r19
	breq .L14
.L12:
/* epilogue start */
	pop r29
	pop r28
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
	ldi r23,0
	mov r30,r24
	mov r31,r25
	rjmp .L16
.L18:
	subi r20,1
	sbc r21,__zero_reg__
.L16:
	mov r18,r30
	mov r19,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L17
	ld r25,Z+
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L18
.L17:
	or r20,r21
	breq .L20
	mov r24,r18
	mov r25,r19
	ret
.L20:
	ldi r24,0
	ldi r25,0
/* epilogue start */
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
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	rjmp .L22
.L24:
	subi r20,1
	sbc r21,__zero_reg__
.L22:
	mov r28,r30
	mov r29,r31
	mov r18,r26
	mov r19,r27
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L23
	ld r25,X+
	ld r24,Z+
	cp r25,r24
	breq .L24
.L23:
	ldi r24,0
	ldi r25,0
	or r20,r21
	breq .L25
	mov r30,r18
	mov r31,r19
	ld r24,Z
	ld r25,Y
	sub r24,r25
	sbc r25,r25
.L25:
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
	mov r18,r24
	mov r19,r25
	mov r30,r24
	mov r31,r25
	add r20,r22
	adc r21,r23
	rjmp .L28
.L29:
	subi r22,-1
	sbci r23,-1
	mov r26,r22
	mov r27,r23
	ld r25,-X
	st Z+,r25
.L28:
	cp r22,r20
	cpc r23,r21
	brne .L29
	mov r24,r18
	mov r25,r19
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
	mov r30,r24
	mov r31,r25
	add r30,r20
	adc r31,r21
	mov r20,r24
	mov r21,r25
	mov r18,r24
	mov r19,r25
	com r18
	com r19
.L31:
	mov r26,r18
	mov r27,r19
	add r26,r30
	adc r27,r31
	cp r30,r20
	cpc r31,r21
	breq .L35
	ld r25,-Z
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L31
	mov r24,r28
	mov r25,r29
	add r24,r26
	adc r25,r27
	rjmp .L32
.L35:
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
	add r20,r24
	adc r21,r25
	mov r30,r24
	mov r31,r25
	rjmp .L37
.L38:
	st Z+,r22
.L37:
	cp r30,r20
	cpc r31,r21
	brne .L38
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
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
.L40:
	mov r18,r30
	mov r19,r31
	ld r25,X+
	st Z+,r25
	cpse r25,__zero_reg__
	rjmp .L40
	mov r24,r18
	mov r25,r19
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
	ldi r23,0
	mov r30,r24
	mov r31,r25
.L44:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	cp r25, __zero_reg__
	breq .L43
	mov r26,r30
	mov r27,r31
	ld r25,-X
	cp r25,r22
	cpc __zero_reg__,r23
	brne .L44
.L43:
	mov r24,r18
	mov r25,r19
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
	mov r30,r24
	mov r31,r25
.L48:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	mov __tmp_reg__,r25
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r25,r22
	cpc r0,r23
	breq .L49
	mov r26,r30
	mov r27,r31
	ld r24,-X
	cpse r24,__zero_reg__
	rjmp .L48
	ldi r24,0
	ldi r25,0
	ret
.L49:
	mov r24,r18
	mov r25,r19
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
.L53:
	mov r18,r26
	mov r19,r27
	mov r20,r30
	mov r21,r31
	ld r25,Z+
	ld r24,X+
	cpse r25,r24
	rjmp .L52
	mov r28,r30
	mov r29,r31
	ld r24,-Y
	cpse r24,__zero_reg__
	rjmp .L53
.L52:
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
	mov r30,r24
	mov r31,r25
.L56:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	cpse r25,__zero_reg__
	rjmp .L56
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
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L62
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	add r20,r24
	adc r21,r25
.L61:
	mov r22,r26
	mov r23,r27
	mov r16,r30
	mov r17,r31
	ld r25,Z+
	cp r25, __zero_reg__
	breq .L60
	ld r25,X
	cp r25, __zero_reg__
	breq .L60
	cp r30,r20
	cpc r31,r21
	breq .L60
	mov r28,r30
	mov r29,r31
	ld r18,-Y
	ld r25,X+
	cp r18,r25
	breq .L61
.L60:
	mov r30,r16
	mov r31,r17
	ld r24,Z
	mov r30,r22
	mov r31,r23
	ld r25,Z
	sub r24,r25
	sbc r25,r25
.L59:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L62:
	ldi r24,0
	ldi r25,0
	rjmp .L59
	.size	strncmp, .-strncmp
.global	swab
	.type	swab, @function
swab:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	add r20,r24
	adc r21,r25
	rjmp .L65
.L66:
	ldd r25,Z+1
	st X,r25
	ld r25,Z
	adiw r26,1
	st X,r25
	sbiw r26,1
	adiw r26,2
	adiw r30,2
.L65:
	mov r18,r20
	mov r19,r21
	sub r18,r30
	sbc r19,r31
	cpi r18,2
	cpc r19,__zero_reg__
	brge .L66
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
	brlo .L68
	ldi r24,0
.L68:
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
	brlo .L70
	ldi r24,0
.L70:
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
	cpi r24,32
	cpc r25,__zero_reg__
	breq .L73
	sbiw r24,9
	breq .L75
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L75:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L73:
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
	cpi r24,32
	cpc r25,__zero_reg__
	brlo .L78
	cpi r24,127
	cpc r25,__zero_reg__
	breq .L80
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L80:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L78:
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
	brlo .L82
	ldi r24,0
.L82:
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
	brlo .L84
	ldi r24,0
.L84:
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
	brlo .L86
	ldi r24,0
.L86:
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
	brlo .L88
	ldi r24,0
.L88:
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
	cpi r24,32
	cpc r25,__zero_reg__
	breq .L91
	sbiw r24,9
	sbiw r24,5
	brsh .L92
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L91:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L92:
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
	brlo .L94
	ldi r24,0
.L94:
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
	cpi r24,32
	cpc r25,__zero_reg__
	brlo .L97
	mov r18,r24
	mov r19,r25
	subi r18,127
	sbc r19,__zero_reg__
	cpi r18,33
	cpc r19,__zero_reg__
	brlo .L98
	subi r18,-87
	sbci r19,31
	cpi r18,2
	cpc r19,__zero_reg__
	brlo .L99
	adiw r24,7
	sbiw r24,3
	brsh .L100
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L97:
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
	brlo .L102
	ldi r24,0
.L102:
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
	cpi r24,-1
	cpc r25,__zero_reg__
	brlo .L111
	cpi r24,40
	ldi r18,32
	cpc r25,r18
	brlo .L107
	mov r18,r24
	mov r19,r25
	subi r18,42
	sbci r19,32
	cpi r18,-42
	ldi r20,-73
	cpc r19,r20
	brlo .L108
	subi r18,-42
	sbci r19,-65
	cpi r18,-7
	sbci r19,31
	brlo .L109
	andi r24,254
	adiw r24,2
	breq .L110
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L111:
	adiw r24,1
	andi r24,127
	clr r25
	ldi r18,lo8(1)
	sbiw r24,33
	brsh .L105
	ldi r18,0
.L105:
	mov r24,r18
	ldi r25,0
	ret
.L107:
	ldi r24,lo8(1)
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
	subi r18,48
	sbc r19,__zero_reg__
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L114
	ori r24,32
	subi r24,97
	sbc r25,__zero_reg__
	sbiw r24,6
	brsh .L115
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L114:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L115:
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
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L120
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
	rjmp .L121
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
	breq .L124
	brlt .L124
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __subsf3
.L118:
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
.L120:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L118
.L121:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L118
.L124:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L118
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
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L128
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
	rjmp .L129
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
	breq .L132
	brlt .L132
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __subsf3
.L126:
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
.L128:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L126
.L129:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L126
.L132:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L126
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
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L137
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
	rjmp .L138
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L135
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L139
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
.L134:
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
.L135:
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
	brge .L142
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L134
.L137:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L134
.L138:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L134
.L139:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L134
.L142:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L134
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
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L147
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
	rjmp .L148
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r15
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L145
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L149
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
.L144:
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
.L145:
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
	brge .L152
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L144
.L147:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L144
.L148:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L144
.L149:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L144
.L152:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L144
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
	rjmp .L157
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
	rjmp .L158
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	ldd r18,Y+8
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L155
	ldd r18,Y+8
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L159
	mov r8,r10
	mov r9,r11
	mov r10,r12
	mov r11,r13
	mov r12,r14
	mov r13,r15
	mov r14,r16
	mov r15,r17
.L154:
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
.L155:
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
	breq .L162
	mov r8,r10
	mov r9,r11
	mov r10,r12
	mov r11,r13
	mov r12,r14
	mov r13,r15
	mov r14,r16
	mov r15,r17
	rjmp .L154
.L157:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	rjmp .L154
.L158:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L154
.L159:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L154
.L162:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L154
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
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L167
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
	rjmp .L168
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r11
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L165
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L169
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
.L164:
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
.L165:
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
	brge .L172
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L164
.L167:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L164
.L168:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L164
.L169:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L164
.L172:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L164
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
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L177
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
	rjmp .L178
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r11
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L175
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	breq .L179
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
.L174:
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
.L175:
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
	brge .L182
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L174
.L177:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L174
.L178:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L174
.L179:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L174
.L182:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L174
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
	rjmp .L187
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
	rjmp .L188
	mov r24,r17
	ldi r25,0
	andi r24,128
	clr r25
	ldd r18,Y+8
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L185
	ldd r18,Y+8
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	or r24,r25
	brne .+2
	rjmp .L189
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	mov r15,r18
.L184:
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
.L185:
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
	breq .L192
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L184
.L187:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	rjmp .L184
.L188:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L184
.L189:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	rjmp .L184
.L192:
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	rjmp .L184
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r27,r25
	mov r26,r24
	mov r25,r23
	mov r24,r22
	ldi r30,lo8(s.0)
	ldi r31,hi8(s.0)
	rjmp .L194
.L195:
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
	mov r28,r20
	mov r29,r21
	ld r18,Y
	st Z+,r18
	set
	bld __zero_reg__,6-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
.L194:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L195
	st Z,__zero_reg__
	ldi r24,lo8(s.0)
	ldi r25,hi8(s.0)
/* epilogue start */
	pop r29
	pop r28
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
	ldi r16,lo8(33)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r24,r8
	mov r25,r9
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
	breq .L201
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
	breq .L198
	mov r26,r24
	mov r27,r25
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L198:
/* epilogue start */
	ret
.L201:
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
	breq .L203
	mov r26,r24
	mov r27,r25
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
.L203:
	ldd r24,Z+2
	ldd r25,Z+3
	sbiw r24,0
	breq .L202
	mov r26,r24
	mov r27,r25
	ld r24,Z
	ldd r25,Z+1
	st X+,r24
	st X,r25
.L202:
/* epilogue start */
	ret
	.size	remque, .-remque
.global	lsearch
	.type	lsearch, @function
lsearch:
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
	mov r10,r24
	mov r11,r25
	mov r4,r22
	mov r5,r23
	mov r6,r20
	mov r7,r21
	mov r12,r18
	mov r13,r19
	mov r30,r20
	mov r31,r21
	ld r8,Z
	ldd r9,Z+1
	mov r14,r22
	mov r15,r23
	ldi r28,0
	ldi r29,0
	rjmp .L206
.L207:
	adiw r28,1
.L206:
	cp r28,r8
	cpc r29,r9
	breq .L210
	mov r22,r14
	mov r23,r15
	mov r24,r10
	mov r25,r11
	mov r30,r16
	mov r31,r17
	icall
	add r14,r12
	adc r15,r13
	or r24,r25
	brne .L207
	mov r24,r28
	mov r25,r29
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	add r24,r4
	adc r25,r5
	rjmp .L208
.L210:
	mov r24,r8
	mov r25,r9
	adiw r24,1
	mov r30,r6
	mov r31,r7
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
.L208:
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
	mov r10,r24
	mov r11,r25
	mov r6,r22
	mov r7,r23
	mov r12,r18
	mov r13,r19
	mov r30,r20
	mov r31,r21
	ld r8,Z
	ldd r9,Z+1
	mov r14,r22
	mov r15,r23
	ldi r28,0
	ldi r29,0
	rjmp .L212
.L213:
	adiw r28,1
.L212:
	cp r28,r8
	cpc r29,r9
	breq .L216
	mov r22,r14
	mov r23,r15
	mov r24,r10
	mov r25,r11
	mov r30,r16
	mov r31,r17
	icall
	add r14,r12
	adc r15,r13
	or r24,r25
	brne .L213
	mov r24,r28
	mov r25,r29
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	add r24,r6
	adc r25,r7
	rjmp .L214
.L216:
	ldi r24,0
	ldi r25,0
.L214:
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
	tst r25
	brlt .L219
.L218:
/* epilogue start */
	ret
.L219:
	neg r25
	neg r24
	sbc r25,__zero_reg__
	ret
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
.L221:
	mov r16,r28
	mov r17,r29
	ld r24,Y+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L221
	mov r30,r16
	mov r31,r17
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L227
	ldi r20,lo8(1)
	ldi r21,0
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L222
	ldi r20,0
	ldi r21,0
	rjmp .L223
.L227:
	ldi r20,0
	ldi r21,0
.L222:
	subi r16,-1
	sbci r17,-1
.L223:
	mov r30,r16
	mov r31,r17
	ldi r22,0
	ldi r23,0
	rjmp .L224
.L225:
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
.L224:
	ld r18,Z+
	mov __tmp_reg__,r18
	lsl r0
	sbc r19,r19
	subi r18,48
	sbc r19,__zero_reg__
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L225
	mov r24,r22
	mov r25,r23
	or r20,r21
	brne .L226
	clr r24
	clr r25
	sub r24,r22
	sbc r25,r23
.L226:
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
.L232:
	mov r14,r28
	mov r15,r29
	ld r24,Y+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L232
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L238
	cpi r18,45
	cpc r19,__zero_reg__
	brne .L239
	ldi r18,lo8(1)
	ldi r19,0
.L233:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
.L234:
	mov r30,r14
	mov r31,r15
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L235
.L238:
	ldi r18,0
	ldi r19,0
	rjmp .L233
.L239:
	ldi r18,0
	ldi r19,0
	rjmp .L234
.L236:
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
.L235:
	ld r24,Z+
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brlo .L236
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	or r18,r19
	brne .L237
	clr r22
	clr r23
	clr r24
	clr r25
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
.L237:
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
/* stack size = 40 */
.L__stack_usage = 40
	std Y+2,r25
	std Y+1,r24
.L243:
	ldd r14,Y+1
	ldd r15,Y+2
	mov r30,r14
	mov r31,r15
	ld r24,Z+
	std Y+2,r31
	std Y+1,r30
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	rcall isspace
	or r24,r25
	brne .L243
	mov r30,r14
	mov r31,r15
	ld r24,Z
	mov r18,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r19,r19
	cpi r24,lo8(43)
	breq .L249
	clr r4
	inc r4
	mov r5,__zero_reg__
	cpi r18,45
	cpc r19,__zero_reg__
	breq .L244
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	rjmp .L245
.L249:
	mov r4,__zero_reg__
	mov r5,__zero_reg__
.L244:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
.L245:
	mov r6,r14
	mov r7,r15
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	rjmp .L246
.L247:
	ldd r24,Y+1
	std Y+17,r24
	ldd r25,Y+2
	std Y+18,r25
	ldd r30,Y+3
	std Y+19,r30
	ldd r31,Y+4
	std Y+20,r31
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r30,Y+7
	ldd r31,Y+8
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	mov r22,r24
	mov r23,r25
	mov r24,r30
	mov r25,r31
	ldi r16,lo8(2)
	rcall __ashldi3
	ldd r10,Y+1
	ldd r11,Y+2
	ldd r12,Y+3
	ldd r13,Y+4
	ldd r14,Y+5
	ldd r15,Y+6
	mov r16,r30
	mov r17,r31
	rcall __adddi3
	ldi r16,lo8(1)
	rcall __ashldi3
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	mov r18,r6
	mov r19,r7
	subi r18,1
	sbc r19,__zero_reg__
	mov r30,r18
	mov r31,r19
	ld r8,Z
	mov __tmp_reg__,r8
	lsl r0
	sbc r9,r9
	ldi r31,48
	sub r8,r31
	sbc r9,__zero_reg__
	std Y+10,r9
	std Y+9,r8
	lsl r9
	sbc r8,r8
	mov r9,r8
	std Y+11,r8
	std Y+12,r8
	std Y+13,r8
	std Y+14,r8
	std Y+15,r8
	std Y+16,r8
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r10,Y+9
	ldd r11,Y+10
	mov r12,r8
	mov r13,r8
	mov r14,r8
	mov r15,r8
	mov r16,r8
	mov r17,r8
	rcall __subdi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
.L246:
	mov r30,r6
	mov r31,r7
	ld r24,Z+
	mov r6,r30
	mov r7,r31
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	sbiw r24,48
	sbiw r24,10
	brsh .+2
	rjmp .L247
	or r4,r5
	brne .L251
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
.L248:
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
	pop r5
	pop r4
	ret
.L251:
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	rjmp .L248
	.size	atoll, .-atoll
.global	bsearch
	.type	bsearch, @function
bsearch:
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
	mov r10,r24
	mov r11,r25
	mov r12,r22
	mov r13,r23
	mov r28,r20
	mov r29,r21
	mov r14,r18
	mov r15,r19
	rjmp .L254
.L261:
	lsr r29
	ror r28
.L254:
	sbiw r28,0
	breq .L260
	mov r24,r28
	mov r25,r29
	lsr r25
	ror r24
	mov r22,r14
	mov r23,r15
	rcall __mulhi3
	mov r8,r12
	mov r9,r13
	add r8,r24
	adc r9,r25
	mov r22,r8
	mov r23,r9
	mov r24,r10
	mov r25,r11
	mov r30,r16
	mov r31,r17
	icall
	tst r25
	brlt .L261
	sbiw r24,0
	breq .L259
	brlt .L259
	mov r12,r8
	mov r13,r9
	add r12,r14
	adc r13,r15
	mov r24,r28
	mov r25,r29
	lsr r25
	ror r24
	sbiw r28,1
	sub r28,r24
	sbc r29,r25
	rjmp .L254
.L260:
	ldi r24,0
	ldi r25,0
.L257:
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
.L259:
	mov r24,r8
	mov r25,r9
	rjmp .L257
	.size	bsearch, .-bsearch
.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
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
	mov r10,r24
	mov r11,r25
	mov r12,r18
	mov r13,r19
	mov r6,r14
	mov r7,r15
	mov r28,r20
	mov r29,r21
	mov r8,r22
	mov r9,r23
	rjmp .L263
.L265:
	asr r29
	ror r28
.L263:
	sbiw r28,0
	breq .L268
	mov r24,r28
	mov r25,r29
	asr r25
	ror r24
	mov r22,r12
	mov r23,r13
	rcall __mulhi3
	mov r14,r8
	mov r15,r9
	add r14,r24
	adc r15,r25
	mov r20,r6
	mov r21,r7
	mov r22,r14
	mov r23,r15
	mov r24,r10
	mov r25,r11
	mov r30,r16
	mov r31,r17
	icall
	sbiw r24,0
	breq .L267
	brlt .L265
	mov r8,r14
	mov r9,r15
	add r8,r12
	adc r9,r13
	sbiw r28,1
	rjmp .L265
.L268:
	ldi r24,0
	ldi r25,0
.L264:
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
.L267:
	mov r24,r14
	mov r25,r15
	rjmp .L264
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
	brge .L271
	rcall __negdi2
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L271:
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	mov r24,r14
	std Y+7,r14
	std Y+8,r15
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
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
	sbiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 26 */
/* stack size = 44 */
.L__stack_usage = 44
	std Y+26,r25
	std Y+25,r24
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
	mov r20,r22
	ldd r30,Y+25
	ldd r31,Y+26
	st Z,r2
	std Z+1,r3
	std Z+2,r4
	std Z+3,r5
	std Z+4,r6
	std Z+5,r7
	std Z+6,r8
	std Z+7,r9
	std Z+8,r16
	std Z+9,r17
	std Z+10,r18
	std Z+11,r19
	std Z+12,r20
	std Z+13,r23
	std Z+14,r24
	std Z+15,r25
	mov r24,r30
	mov r25,r31
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	tst r25
	brlt .L275
.L274:
/* epilogue start */
	ret
.L275:
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
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
	brge .L278
	rcall __negdi2
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L278:
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	mov r24,r14
	std Y+7,r14
	std Y+8,r15
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
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
	sbiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 26 */
/* stack size = 44 */
.L__stack_usage = 44
	std Y+26,r25
	std Y+25,r24
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
	mov r20,r22
	ldd r30,Y+25
	ldd r31,Y+26
	st Z,r2
	std Z+1,r3
	std Z+2,r4
	std Z+3,r5
	std Z+4,r6
	std Z+5,r7
	std Z+6,r8
	std Z+7,r9
	std Z+8,r16
	std Z+9,r17
	std Z+10,r18
	std Z+11,r19
	std Z+12,r20
	std Z+13,r23
	std Z+14,r24
	std Z+15,r25
	mov r24,r30
	mov r25,r31
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
	mov r30,r24
	mov r31,r25
.L282:
	mov r28,r30
	mov r29,r31
	ld r18,Z+
	ld r19,Z+
	or r18,r19
	breq .L281
	mov r26,r30
	mov r27,r31
	ld r19,-X
	ld r18,-X
	cp r22,r18
	cpc r23,r19
	brne .L282
.L281:
	ld r24,Y
	ldd r25,Y+1
	or r24,r25
	breq .L284
	mov r24,r28
	mov r25,r29
.L283:
/* epilogue start */
	pop r29
	pop r28
	ret
.L284:
	ldi r24,0
	ldi r25,0
	rjmp .L283
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
.L288:
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
	brne .L287
	mov r28,r30
	mov r29,r31
	ld r25,-Y
	ld r24,-Y
	or r24,r25
	breq .L287
	mov r28,r26
	mov r29,r27
	ld r25,-Y
	ld r24,-Y
	or r24,r25
	brne .L288
.L287:
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
	brlt .L291
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L290
	ldi r24,0
.L290:
	ldi r25,0
.L289:
/* epilogue start */
	pop r29
	pop r28
	ret
.L291:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L289
	.size	wcscmp, .-wcscmp
.global	wcscpy
	.type	wcscpy, @function
wcscpy:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
.L294:
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
	brne .L294
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
	mov r30,r24
	mov r31,r25
.L297:
	mov r20,r30
	mov r21,r31
	ld r18,Z+
	ld r19,Z+
	or r18,r19
	brne .L297
	mov r18,r20
	mov r19,r21
	sub r18,r24
	sbc r19,r25
	mov r24,r18
	mov r25,r19
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
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
.L300:
	mov r28,r26
	mov r29,r27
	mov r22,r30
	mov r23,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L301
	ld r18,Z
	ldd r19,Z+1
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	brne .L301
	ld r24,Z+
	ld r25,Z+
	or r24,r25
	breq .L301
	ld r24,X+
	ld r25,X+
	or r24,r25
	breq .L301
	subi r20,1
	sbc r21,__zero_reg__
	rjmp .L300
.L301:
	ldi r24,0
	ldi r25,0
	or r20,r21
	breq .L303
	mov r30,r22
	mov r31,r23
	ld r18,Z
	ldd r19,Z+1
	ld r24,Y
	ldd r25,Y+1
	cp r18,r24
	cpc r19,r25
	brlt .L306
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L304
	ldi r24,0
.L304:
	ldi r25,0
.L303:
/* epilogue start */
	pop r29
	pop r28
	ret
.L306:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L303
	.size	wcsncmp, .-wcsncmp
.global	wmemchr
	.type	wmemchr, @function
wmemchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	rjmp .L308
.L310:
	subi r20,1
	sbc r21,__zero_reg__
.L308:
	mov r24,r30
	mov r25,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L309
	ld r18,Z+
	ld r19,Z+
	cp r22,r18
	cpc r23,r19
	brne .L310
.L309:
	or r20,r21
	breq .L313
.L311:
/* epilogue start */
	ret
.L313:
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
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	rjmp .L315
.L317:
	subi r20,1
	sbc r21,__zero_reg__
.L315:
	mov r28,r30
	mov r29,r31
	mov r22,r26
	mov r23,r27
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L316
	ld r18,X+
	ld r19,X+
	ld r24,Z+
	ld r25,Z+
	cp r18,r24
	cpc r19,r25
	breq .L317
.L316:
	ldi r24,0
	ldi r25,0
	or r20,r21
	breq .L318
	mov r30,r22
	mov r31,r23
	ld r18,Z
	ldd r19,Z+1
	ld r24,Y
	ldd r25,Y+1
	cp r18,r24
	cpc r19,r25
	brlt .L321
	mov r20,r24
	mov r21,r25
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L319
	ldi r24,0
.L319:
	ldi r25,0
.L318:
/* epilogue start */
	pop r29
	pop r28
	ret
.L321:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L318
	.size	wmemcmp, .-wmemcmp
.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	rjmp .L323
.L324:
	subi r22,-2
	sbci r23,-1
	mov r26,r22
	mov r27,r23
	ld r19,-X
	ld r18,-X
	st Z+,r18
	st Z+,r19
.L323:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L324
/* epilogue start */
	ret
	.size	wmemcpy, .-wmemcpy
.global	wmemmove
	.type	wmemmove, @function
wmemmove:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r24,r22
	cpc r25,r23
	breq .L326
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
	brlo .L327
	mov r30,r24
	mov r31,r25
	rjmp .L328
.L327:
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
	rjmp .L329
.L330:
	ld r19,-Z
	ld r18,-Z
	st -X,r19
	st -X,r18
.L329:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L330
	ret
.L331:
	subi r22,-2
	sbci r23,-1
	mov r26,r22
	mov r27,r23
	ld r19,-X
	ld r18,-X
	st Z+,r18
	st Z+,r19
.L328:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L331
.L326:
/* epilogue start */
	ret
	.size	wmemmove, .-wmemmove
.global	wmemset
	.type	wmemset, @function
wmemset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	rjmp .L333
.L334:
	subi r18,-2
	sbci r19,-1
	mov r30,r18
	mov r31,r19
	st -Z,r23
	st -Z,r22
.L333:
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L334
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
	cp r24,r22
	cpc r25,r23
	brsh .L336
	add r30,r20
	adc r31,r21
	add r26,r22
	adc r27,r23
	rjmp .L337
.L338:
	ld r24,-Z
	st -X,r24
.L337:
	cp r26,r28
	cpc r27,r29
	brne .L338
.L335:
/* epilogue start */
	pop r29
	pop r28
	ret
.L336:
	cp r24,r22
	cpc r25,r23
	breq .L335
	mov r18,r20
	mov r19,r21
	add r18,r24
	adc r19,r25
	rjmp .L340
.L341:
	adiw r30,1
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	mov r26,r24
	mov r27,r25
	ld r24,X
	st Y+,r24
.L340:
	cp r30,r18
	cpc r31,r19
	brne .L341
	rjmp .L335
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	rcall __rotldi3
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
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
	.size	rotr64, .-rotr64
.global	rotl32
	.type	rotl32, @function
rotl32:
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
	pop r17
	pop r16
	ret
	.size	rotl32, .-rotl32
.global	rotr32
	.type	rotr32, @function
rotr32:
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
	pop r17
	pop r16
	ret
	.size	rotr32, .-rotr32
.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	ret
	.size	rotl_sz, .-rotl_sz
.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	ret
	.size	rotr_sz, .-rotr_sz
.global	rotl16
	.type	rotl16, @function
rotl16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	ret
	.size	rotl16, .-rotl16
.global	rotr16
	.type	rotr16, @function
rotr16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	ret
	.size	rotr16, .-rotr16
.global	rotl8
	.type	rotl8, @function
rotl8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	ret
	.size	rotl8, .-rotl8
.global	rotr8
	.type	rotr8, @function
rotr8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r16,lo8(56)
	rcall __lshrdi3
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	ldd r24,Y+23
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r25,0
	ldi r16,lo8(40)
	rcall __lshrdi3
	std Y+15,r24
	mov r24,r18
	or r24,r8
	std Y+1,r24
	mov r24,r19
	or r24,r9
	std Y+2,r24
	mov r24,r20
	or r24,r10
	std Y+3,r24
	mov r24,r21
	or r24,r11
	std Y+4,r24
	mov r24,r22
	or r24,r12
	std Y+5,r24
	mov r24,r23
	or r24,r13
	std Y+6,r24
	ldd r24,Y+15
	or r24,r14
	std Y+7,r24
	mov r24,r25
	or r24,r15
	std Y+8,r24
	ldd r24,Y+22
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	mov r23,r24
	ldi r24,0
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
	ldd r24,Y+21
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r22,r24
	ldi r23,0
	ldi r24,0
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
	ldd r24,Y+20
	ldi r18,0
	ldi r19,0
	ldi r20,0
	mov r21,r24
	ldi r22,0
	ldi r23,0
	ldi r24,0
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
	ldd r24,Y+19
	ldi r18,0
	ldi r19,0
	mov r20,r24
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
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
	ldd r24,Y+18
	ldi r18,0
	mov r19,r24
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
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
	ldd r24,Y+17
	mov r18,r24
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r16,lo8(56)
	rcall __ashldi3
	std Y+7,r24
	ldd r8,Y+9
	or r8,r18
	ldd r9,Y+10
	or r9,r19
	ldd r10,Y+11
	or r10,r20
	ldd r11,Y+12
	or r11,r21
	ldd r12,Y+13
	or r12,r22
	ldd r13,Y+14
	or r13,r23
	ldd r14,Y+15
	ldd r24,Y+7
	or r14,r24
	ldd r15,Y+16
	or r15,r25
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,0
	ldi r19,0
.L356:
	cpi r18,16
	cpc r19,__zero_reg__
	breq .L360
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
	sbrc r20,0
	rjmp .L361
	subi r18,-1
	sbci r19,-1
	rjmp .L356
.L361:
	mov r24,r18
	mov r25,r19
	adiw r24,1
	ret
.L360:
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
	ldi r18,lo8(1)
	ldi r19,0
	sbiw r24,0
	brne .L364
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L365:
	asr r25
	ror r24
	subi r18,-1
	sbci r19,-1
.L364:
	sbrs r24,0
	rjmp .L365
	mov r24,r18
	mov r25,r19
	ret
	.size	libiberty_ffs, .-libiberty_ffs
.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
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
	brlt .L370
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
	breq .L373
	brlt .L373
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L368
.L370:
	ldi r24,lo8(1)
	ldi r25,0
.L368:
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L373:
	ldi r24,0
	ldi r25,0
	rjmp .L368
	.size	gl_isinff, .-gl_isinff
.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
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
	brlt .L377
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
	breq .L380
	brlt .L380
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L375
.L377:
	ldi r24,lo8(1)
	ldi r25,0
.L375:
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L380:
	ldi r24,0
	ldi r25,0
	rjmp .L375
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
	rjmp .L384
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
	breq .L387
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L382
.L384:
	ldi r24,lo8(1)
	ldi r25,0
.L382:
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
.L387:
	ldi r24,0
	ldi r25,0
	rjmp .L382
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r28,r24
	mov r29,r25
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	rcall __floatsisf
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r28,r20
	mov r29,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L390
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
	breq .L390
	mov __tmp_reg__,r31
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	tst r29
	brlt .L395
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	set
	clr r11
	bld r11,6
	rjmp .L395
.L393:
	mov r24,r28
	mov r25,r29
	tst r29
	brlt .L398
.L394:
	mov r28,r24
	mov r29,r25
	asr r29
	ror r28
	sbiw r28,0
	breq .L390
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
.L395:
	sbrs r28,0
	rjmp .L393
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
	rjmp .L393
.L398:
	adiw r24,1
	rjmp .L394
.L390:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r28,r20
	mov r29,r21
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	rcall __unordsf2
	cpse r24,__zero_reg__
	rjmp .L400
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
	breq .L400
	mov __tmp_reg__,r31
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	tst r29
	brlt .L405
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	set
	clr r11
	bld r11,6
	rjmp .L405
.L403:
	mov r24,r28
	mov r25,r29
	tst r29
	brlt .L408
.L404:
	mov r28,r24
	mov r29,r25
	asr r29
	ror r28
	sbiw r28,0
	breq .L400
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
.L405:
	sbrs r28,0
	rjmp .L403
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
	rjmp .L403
.L408:
	adiw r24,1
	rjmp .L404
.L400:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
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
	rjmp .L410
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
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	ldd r24,Y+7
	std Y+23,r24
	std Y+24,r25
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	ldd r16,Y+23
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
	rjmp .L410
	tst r7
	brlt .L418
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	ldi r24,lo8(64)
	std Y+8,r24
	rjmp .L415
.L418:
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
	rjmp .L415
.L413:
	mov r24,r6
	mov r25,r7
	tst r25
	brlt .L419
.L414:
	mov r6,r24
	mov r7,r25
	asr r7
	ror r6
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L410
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
.L415:
	sbrs r6,0
	rjmp .L413
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
	rjmp .L413
.L419:
	adiw r24,1
	rjmp .L414
.L410:
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
	mov r26,r24
	mov r27,r25
	mov r28,r22
	mov r29,r23
	add r28,r20
	adc r29,r21
	mov r18,r24
	mov r19,r25
	rjmp .L421
.L422:
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
.L421:
	cp r22,r28
	cpc r23,r29
	brne .L422
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	memxor, .-memxor
.global	strncat
	.type	strncat, @function
strncat:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	mov r19,r25
	mov r30,r24
	mov r31,r25
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	mov r26,r22
	mov r27,r23
	sbiw r30,1
	rjmp .L424
.L426:
	subi r20,1
	sbc r21,__zero_reg__
.L424:
	mov r22,r30
	mov r23,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L425
	ld r24,X+
	st Z+,r24
	mov r28,r30
	mov r29,r31
	ld r25,-Y
	cpse r25,__zero_reg__
	rjmp .L426
.L425:
	or r20,r21
	brne .L427
	mov r30,r22
	mov r31,r23
	st Z,__zero_reg__
.L427:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	strncat, .-strncat
.global	strnlen
	.type	strnlen, @function
strnlen:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
.L429:
	cp r24,r22
	cpc r25,r23
	breq .L430
	ld r18,Z+
	cpse r18,__zero_reg__
	rjmp .L431
.L430:
/* epilogue start */
	ret
.L431:
	adiw r24,1
	rjmp .L429
	.size	strnlen, .-strnlen
.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r20,r24
	mov r21,r25
.L433:
	mov r16,r20
	mov r17,r21
	mov r30,r20
	mov r31,r21
	ld r24,Z+
	mov r20,r30
	mov r21,r31
	cp r24, __zero_reg__
	breq .L438
	mov r30,r22
	mov r31,r23
	mov r28,r20
	mov r29,r21
	sbiw r28,1
.L436:
	ld r25,Z+
	cp r25, __zero_reg__
	breq .L433
	mov r26,r30
	mov r27,r31
	ld r18,-X
	ld r25,Y
	cpse r18,r25
	rjmp .L436
	mov r24,r16
	mov r25,r17
.L434:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L438:
	ldi r24,0
	ldi r25,0
	rjmp .L434
	.size	strpbrk, .-strpbrk
.global	strrchr
	.type	strrchr, @function
strrchr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	mov r31,r25
	ldi r20,0
	ldi r21,0
	rjmp .L441
.L440:
	mov r26,r30
	mov r27,r31
	ld r25,-X
	cp r25, __zero_reg__
	breq .L444
.L441:
	mov r18,r30
	mov r19,r31
	ld r25,Z+
	mov __tmp_reg__,r25
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r25,r22
	cpc r0,r23
	brne .L440
	mov r20,r18
	mov r21,r19
	rjmp .L440
.L444:
	mov r24,r20
	mov r25,r21
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
	mov r16,r22
	mov r17,r23
	mov r30,r22
	mov r31,r23
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	mov r12,r30
	mov r13,r31
	sub r12,r22
	sbc r13,r23
	cp r22,r30
	cpc r23,r31
	breq .L446
	mov r30,r22
	mov r31,r23
	ld r14,Z
	mov __tmp_reg__,r14
	lsl r0
	sbc r15,r15
	mov r28,r24
	mov r29,r25
.L447:
	mov r22,r14
	mov r23,r15
	mov r24,r28
	mov r25,r29
	rcall strchr
	mov r28,r24
	mov r29,r25
	or r24,r25
	breq .L451
	mov r20,r12
	mov r21,r13
	mov r22,r16
	mov r23,r17
	mov r24,r28
	mov r25,r29
	rcall strncmp
	or r24,r25
	breq .L450
	adiw r28,1
	rjmp .L447
.L451:
	ldi r24,0
	ldi r25,0
.L446:
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
.L450:
	mov r24,r28
	mov r25,r29
	rjmp .L446
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
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L465
.L453:
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
	breq .L463
	brlt .L463
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
	brlt .L455
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
.L456:
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
	breq .L453
	brlt .L453
.L455:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	subi r25,0x80
	rjmp .L456
.L463:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L456
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
	mov r14,r20
	mov r15,r21
	mov r8,r22
	mov r9,r23
	sub r8,r18
	sbc r9,r19
	add r8,r24
	adc r9,r25
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L467
	ldi r20,lo8(1)
	cp r22,r18
	cpc r23,r19
	brlo .L468
	ldi r20,0
.L468:
	cpse r20,__zero_reg__
	rjmp .L473
	mov r28,r24
	mov r29,r25
	mov r12,r18
	mov r13,r19
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	mov r10,r14
	mov r11,r15
	ldi r30,-1
	sub r10,r30
	sbc r11,r30
.L469:
	mov r16,r28
	mov r17,r29
	cp r8,r28
	cpc r9,r29
	brlo .L475
	ld r25,Y+
	mov r30,r14
	mov r31,r15
	ld r24,Z
	cpse r25,r24
	rjmp .L469
	mov r20,r12
	mov r21,r13
	mov r22,r10
	mov r23,r11
	mov r24,r28
	mov r25,r29
	rcall memcmp
	or r24,r25
	brne .L469
	mov r24,r16
	mov r25,r17
	rjmp .L467
.L475:
	ldi r24,0
	ldi r25,0
.L467:
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
.L473:
	ldi r24,0
	ldi r25,0
	rjmp .L467
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	mov r14,r20
	mov r15,r21
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	rcall __ltsf2
	ldi r16,0
	ldi r17,0
	cp r24, __zero_reg__
	brlt .L497
.L478:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __gesf2
	ldi r28,0
	ldi r29,0
	cp r24, __zero_reg__
	brge .L480
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __ltsf2
	ldi r28,0
	ldi r29,0
	cp r24, __zero_reg__
	brge .L483
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __nesf2
	ldi r28,0
	ldi r29,0
	cp r24, __zero_reg__
	breq .L483
	ldi r28,0
	ldi r29,0
	rjmp .L485
.L497:
	bst r11,7
	com r11
	bld r11,7
	com r11
	ldi r16,lo8(1)
	ldi r17,0
	rjmp .L478
.L482:
	adiw r28,1
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
.L480:
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
	brge .L482
.L483:
	mov r30,r14
	mov r31,r15
	std Z+1,r29
	st Z,r28
	or r16,r17
	breq .L487
	bst r11,7
	com r11
	bld r11,7
	com r11
.L487:
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
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L486:
	sbiw r28,1
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
.L485:
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
	brlt .L486
	rjmp .L483
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
	rjmp .L499
.L500:
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
.L499:
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
	breq .L502
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
	brne .+2
	rjmp .L500
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
	rjmp .L500
.L502:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
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
	rjmp .L504
.L506:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r20
	rol r21
	rol r22
	rol r23
.L504:
	cp r24,r12
	cpc r25,r13
	cpc r26,r14
	cpc r27,r15
	brsh .L511
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L512
	tst r27
	brge .L506
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L507
.L511:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L507
.L512:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L507
.L508:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
.L507:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L514
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L508
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	or r8,r20
	or r9,r21
	or r10,r22
	or r11,r23
	rjmp .L508
.L514:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	cpse r16,__zero_reg__
	rjmp .L515
.L510:
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
.L515:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L510
	.size	udivmodsi4, .-udivmodsi4
.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r24, __zero_reg__
	brlt .L520
.L517:
	cp r24, __zero_reg__
	breq .L519
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r25,r24
	clr r24
	rcall __clzhi2
	sbiw r24,1
	ret
.L520:
	com r24
	rjmp .L517
.L519:
	ldi r24,lo8(7)
	ldi r25,0
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
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
	brlt .L525
.L522:
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
	breq .L524
	mov r24,r14
	rcall __clzdi2
	sbiw r24,1
.L523:
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
.L525:
	mov r24,r18
	com r24
	mov r25,r19
	com r25
	mov r26,r20
	com r26
	mov r27,r21
	com r27
	mov r28,r22
	com r28
	mov r29,r23
	com r29
	mov r30,r14
	com r30
	mov r31,r15
	com r31
	mov r8,r24
	mov r9,r25
	mov r10,r26
	mov r11,r27
	mov r12,r28
	mov r13,r29
	mov r14,r30
	mov r15,r31
	rjmp .L522
.L524:
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L523
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
	ldi r24,0
	ldi r25,0
	rjmp .L527
.L528:
	lsr r19
	ror r18
	lsl r22
	rol r23
.L527:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L530
	sbrs r18,0
	rjmp .L528
	add r24,r22
	adc r25,r23
	rjmp .L528
.L530:
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
	mov r16,r20
	mov r17,r21
	lsr r17
	ror r16
	lsr r17
	ror r16
	lsr r17
	ror r16
	mov r18,r20
	mov r19,r21
	andi r18,248
	cp r24,r22
	cpc r25,r23
	brsh .L532
.L534:
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	ldi r28,0
	ldi r29,0
	rjmp .L533
.L532:
	mov r30,r22
	mov r31,r23
	add r30,r20
	adc r31,r21
	cp r30,r24
	cpc r31,r25
	brlo .L534
	mov r30,r22
	mov r31,r23
	add r30,r20
	adc r31,r21
	mov r26,r24
	mov r27,r25
	add r26,r20
	adc r27,r21
	rjmp .L535
.L536:
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
	adiw r28,1
.L533:
	cp r28,r16
	cpc r29,r17
	brne .L536
	mov r30,r22
	mov r31,r23
	add r30,r18
	adc r31,r19
	mov r26,r24
	mov r27,r25
	add r26,r18
	adc r27,r19
	rjmp .L537
.L538:
	ld r24,Z+
	st X+,r24
	subi r18,-1
	sbci r19,-1
.L537:
	cp r18,r20
	cpc r19,r21
	brlo .L538
.L531:
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
.L540:
	ld r24,-Z
	st -X,r24
.L535:
	cp r30,r22
	cpc r31,r23
	brne .L540
	rjmp .L531
	.size	__cmovd, .-__cmovd
.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r20
	mov r17,r21
	lsr r17
	ror r16
	cp r24,r22
	cpc r25,r23
	brsh .L542
.L544:
	mov r26,r22
	mov r27,r23
	mov r30,r24
	mov r31,r25
	ldi r18,0
	ldi r19,0
	rjmp .L543
.L542:
	mov r18,r22
	mov r19,r23
	add r18,r20
	adc r19,r21
	cp r18,r24
	cpc r19,r25
	brlo .L544
	mov r30,r18
	mov r31,r19
	mov r26,r24
	mov r27,r25
	add r26,r20
	adc r27,r21
	rjmp .L545
.L546:
	ld r28,X+
	ld r29,X+
	st Z+,r28
	st Z+,r29
	subi r18,-1
	sbci r19,-1
.L543:
	cp r18,r16
	cpc r19,r17
	brne .L546
	sbrs r20,0
	rjmp .L541
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
.L541:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L548:
	ld r24,-Z
	st -X,r24
.L545:
	cp r30,r22
	cpc r31,r23
	brne .L548
	rjmp .L541
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
	mov r14,r20
	mov r15,r21
	lsr r15
	ror r14
	lsr r15
	ror r14
	mov r24,r20
	mov r25,r21
	andi r24,252
	cp r12,r22
	cpc r13,r23
	brsh .L550
.L552:
	mov r26,r30
	mov r27,r31
	mov r28,r12
	mov r29,r13
	ldi r18,0
	ldi r19,0
	rjmp .L551
.L550:
	mov r18,r22
	mov r19,r23
	add r18,r20
	adc r19,r21
	cp r18,r12
	cpc r19,r13
	brlo .L552
	mov r28,r18
	mov r29,r19
	mov r26,r12
	mov r27,r13
	add r26,r20
	adc r27,r21
	rjmp .L553
.L554:
	ld r16,X+
	ld r17,X+
	st Y+,r16
	st Y+,r17
	subi r18,-1
	sbci r19,-1
.L551:
	cp r18,r14
	cpc r19,r15
	brne .L554
	add r30,r24
	adc r31,r25
	mov r26,r12
	mov r27,r13
	add r26,r24
	adc r27,r25
	rjmp .L555
.L556:
	ld r18,Z+
	st X+,r18
	adiw r24,1
.L555:
	cp r24,r20
	cpc r25,r21
	brlo .L556
.L549:
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
.L558:
	ld r24,-Y
	st -X,r24
.L553:
	cp r28,r30
	cpc r29,r31
	brne .L558
	rjmp .L549
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	rcall __floatunsisf
/* epilogue start */
	ret
	.size	__uitod, .-__uitod
.global	__uitof
	.type	__uitof, @function
__uitof:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r22,r24
	mov r23,r25
	ldi r24,0
	ldi r25,0
	rcall __floatunsisf
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	rcall __floatundisf
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	rcall __floatundisf
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
.L566:
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L567
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
	brne .L567
	adiw r24,1
	rjmp .L566
.L567:
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
.L570:
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L571
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
	rjmp .L571
	adiw r24,1
	rjmp .L570
.L571:
/* epilogue start */
	ret
	.size	__ctzhi2, .-__ctzhi2
.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
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
	brge .L579
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __fixsfsi
.L576:
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L579:
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
	rjmp .L576
	.size	__fixunssfsi, .-__fixunssfsi
.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,0
	ldi r23,0
	ldi r18,0
	ldi r19,0
	rjmp .L581
.L582:
	subi r18,-1
	sbci r19,-1
.L581:
	cpi r18,16
	cpc r19,__zero_reg__
	breq .L584
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
	rjmp .L582
	subi r22,-1
	sbci r23,-1
	rjmp .L582
.L584:
	mov r24,r22
	andi r24,1<<0
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
/* epilogue start */
	ret
	.size	__popcounthi2, .-__popcounthi2
.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
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
	rjmp .L591
.L592:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsl r20
	rol r21
	rol r22
	rol r23
.L591:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L594
	sbrs r24,0
	rjmp .L592
	add r16,r20
	adc r17,r21
	adc r18,r22
	adc r19,r23
	rjmp .L592
.L594:
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
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
	brne .L597
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L596
.L598:
	lsl r12
	rol r13
	rol r14
	rol r15
	lsr r27
	ror r26
	ror r25
	ror r24
.L597:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L601
	sbrs r24,0
	rjmp .L598
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
	rjmp .L598
.L601:
	mov r25,r23
	mov r24,r22
	mov r23,r21
	mov r22,r20
.L596:
/* epilogue start */
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
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
	rjmp .L606
.L610:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L606
.L611:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L606
.L607:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
.L606:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L613
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L607
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	or r8,r20
	or r9,r21
	or r10,r22
	or r11,r23
	rjmp .L607
.L613:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	or r16,r17
	brne .L614
.L609:
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
.L614:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L609
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
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L617
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
	brge .L618
	ldi r24,0
	ldi r25,0
.L616:
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
.L617:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L616
.L618:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L616
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
	rcall __ltsf2
	cp r24, __zero_reg__
	brlt .L621
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
	brge .L622
	ldi r24,0
	ldi r25,0
.L620:
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
.L621:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L620
.L622:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L620
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
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 32 */
.L__stack_usage = 32
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	mov r23,r21
	mov r22,r20
	mov r21,r19
	mov r20,r18
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
	std Y+9,r20
	std Y+10,r21
	std Y+11,r22
	std Y+12,r23
	lsl r23
	sbc r20,r20
	mov r21,r20
	mov r22,r20
	mov r23,r20
	std Y+13,r20
	std Y+14,r20
	std Y+15,r20
	std Y+16,r20
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	mov r14,r20
	mov r15,r20
	mov r16,r20
	mov r17,r20
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	mov r22,r4
	mov r23,r4
	mov r24,r4
	mov r25,r4
	rcall __muldi3
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
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
	mov r10,r22
	mov r11,r23
	mov r12,r24
	mov r13,r25
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	std Y+1,r22
	std Y+2,r11
	std Y+3,r12
	std Y+4,r13
	std Y+5,r14
	std Y+6,r15
	std Y+7,r16
	std Y+8,r17
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
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rcall __muldi3
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
	.size	__mspabi_mpyull, .-__mspabi_mpyull
.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	ldi r30,0
	ldi r31,0
	tst r23
	brlt .L634
.L626:
	ldi r25,lo8(17)
	ldi r20,0
	ldi r21,0
	rjmp .L627
.L634:
	neg r23
	neg r22
	sbc r23,__zero_reg__
	ldi r30,lo8(1)
	ldi r31,0
	rjmp .L626
.L628:
	lsl r18
	rol r19
	asr r23
	ror r22
.L627:
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L629
	subi r25,lo8(-(-1))
	cp r25, __zero_reg__
	breq .L629
	sbrs r22,0
	rjmp .L628
	add r20,r18
	adc r21,r19
	rjmp .L628
.L629:
	or r30,r31
	breq .L633
	clr r24
	clr r25
	sub r24,r20
	sbc r25,r21
	ret
.L633:
	mov r24,r20
	mov r25,r21
/* epilogue start */
	ret
	.size	__mulhi3, .-__mulhi3
.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r28,0
	ldi r29,0
	tst r25
	brlt .L641
.L636:
	tst r21
	brlt .L642
.L637:
	ldi r16,0
	ldi r17,0
	rcall __udivmodsi4
	or r28,r29
	breq .L639
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.L639:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L641:
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
	ldi r28,lo8(1)
	ldi r29,0
	rjmp .L636
.L642:
	com r21
	com r20
	com r19
	neg r18
	sbci r19,lo8(-1)
	sbci r20,lo8(-1)
	sbci r21,lo8(-1)
	ldi r30,lo8(1)
	or r28,r29
	breq .L638
	ldi r30,0
.L638:
	mov r28,r30
	ldi r29,0
	rjmp .L637
	.size	__divsi3, .-__divsi3
.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r28,0
	ldi r29,0
	tst r25
	brlt .L648
.L644:
	tst r21
	brlt .L649
.L645:
	ldi r16,lo8(1)
	ldi r17,0
	rcall __udivmodsi4
	or r28,r29
	breq .L646
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.L646:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L648:
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
	ldi r28,lo8(1)
	ldi r29,0
	rjmp .L644
.L649:
	com r21
	com r20
	com r19
	neg r18
	sbci r19,lo8(-1)
	sbci r20,lo8(-1)
	sbci r21,lo8(-1)
	rjmp .L645
	.size	__modsi3, .-__modsi3
.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(1)
	ldi r19,0
.L651:
	cp r22,r24
	cpc r23,r25
	brsh .L658
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L659
	tst r23
	brlt .L661
	lsl r22
	rol r23
	lsl r18
	rol r19
	rjmp .L651
.L661:
	ldi r30,0
	ldi r31,0
	rjmp .L654
.L658:
	ldi r30,0
	ldi r31,0
	rjmp .L654
.L659:
	ldi r30,0
	ldi r31,0
	rjmp .L654
.L655:
	lsr r19
	ror r18
	lsr r23
	ror r22
.L654:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L662
	cp r24,r22
	cpc r25,r23
	brlo .L655
	sub r24,r22
	sbc r25,r23
	or r30,r18
	or r31,r19
	rjmp .L655
.L662:
	or r20,r21
	brne .L657
	mov r24,r30
	mov r25,r31
.L657:
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
	rjmp .L664
.L666:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r20
	rol r21
	rol r22
	rol r23
.L664:
	cp r24,r12
	cpc r25,r13
	cpc r26,r14
	cpc r27,r15
	brsh .L671
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L672
	tst r27
	brge .L666
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L667
.L671:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L667
.L672:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L667
.L668:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
.L667:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L674
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L668
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	or r8,r20
	or r9,r21
	or r10,r22
	or r11,r23
	rjmp .L668
.L674:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	or r16,r17
	brne .L675
.L670:
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
.L675:
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L670
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
	rjmp .L677
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
.L678:
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
.L679:
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
.L677:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L680
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
	rjmp .L678
.L680:
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	rjmp .L679
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
	rjmp .L682
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
.L683:
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
.L684:
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
.L682:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L685
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
	rjmp .L683
.L685:
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	rjmp .L684
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
	std Y+49,__zero_reg__
	std Y+51,__zero_reg__
	std Y+52,__zero_reg__
	std Y+53,__zero_reg__
	std Y+54,__zero_reg__
	std Y+55,__zero_reg__
	std Y+56,__zero_reg__
	std Y+50,r19
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
	std Y+3,r20
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
	std Y+9,__zero_reg__
	std Y+10,__zero_reg__
	std Y+11,__zero_reg__
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	std Y+15,__zero_reg__
	std Y+16,__zero_reg__
	std Y+12,r21
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	mov r24,r14
	mov r25,r15
	rcall __ashldi3
	std Y+17,__zero_reg__
	std Y+18,__zero_reg__
	std Y+19,__zero_reg__
	std Y+20,__zero_reg__
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	std Y+21,r22
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
	std Y+25,__zero_reg__
	std Y+26,__zero_reg__
	std Y+27,__zero_reg__
	std Y+28,__zero_reg__
	std Y+29,__zero_reg__
	std Y+31,__zero_reg__
	std Y+32,__zero_reg__
	std Y+30,r23
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
	std Y+33,__zero_reg__
	std Y+34,__zero_reg__
	std Y+35,__zero_reg__
	std Y+36,__zero_reg__
	std Y+37,__zero_reg__
	std Y+38,__zero_reg__
	std Y+40,__zero_reg__
	std Y+39,r24
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
	std Y+47,r24
	mov r8,r18
	ldd r24,Y+57
	or r8,r24
	mov r9,r19
	ldd r24,Y+58
	or r9,r24
	mov r10,r20
	ldd r24,Y+59
	or r10,r24
	mov r11,r21
	ldd r24,Y+60
	or r11,r24
	mov r12,r22
	ldd r24,Y+61
	or r12,r24
	mov r13,r23
	ldd r24,Y+62
	or r13,r24
	ldd r14,Y+47
	ldd r24,Y+63
	or r14,r24
	mov r15,r25
	adiw r28,64-63
	ldd r24,Y+63
	sbiw r28,64-63
	or r15,r24
	ldi r24,0
	or r24,r8
	std Y+41,r24
	ldd r24,Y+50
	or r24,r9
	std Y+42,r24
	ldi r24,0
	or r24,r10
	std Y+43,r24
	ldi r24,0
	or r24,r11
	std Y+44,r24
	ldi r24,0
	or r24,r12
	std Y+45,r24
	ldi r24,0
	or r24,r13
	std Y+46,r24
	ldi r24,0
	or r24,r14
	std Y+47,r24
	std Y+48,r15
	ldi r16,0
	ldi r17,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldd r24,Y+41
	or r16,r24
	ldd r24,Y+42
	or r17,r24
	ldd r18,Y+3
	ldd r24,Y+43
	or r18,r24
	ldd r24,Y+44
	or r19,r24
	ldd r24,Y+45
	or r20,r24
	ldd r24,Y+46
	or r21,r24
	ldd r24,Y+47
	or r22,r24
	ldi r24,0
	or r24,r16
	std Y+1,r24
	ldi r24,0
	or r24,r17
	std Y+2,r24
	ldi r24,0
	or r24,r18
	std Y+3,r24
	ldd r24,Y+12
	or r24,r19
	std Y+4,r24
	ldi r24,0
	or r24,r20
	std Y+5,r24
	ldi r24,0
	or r24,r21
	std Y+6,r24
	ldi r24,0
	or r24,r22
	std Y+7,r24
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r21,0
	ldi r22,0
	ldd r24,Y+1
	or r16,r24
	ldd r24,Y+2
	or r17,r24
	ldd r24,Y+3
	or r18,r24
	ldd r24,Y+4
	or r19,r24
	ldd r20,Y+21
	ldd r24,Y+5
	or r20,r24
	ldd r24,Y+6
	or r21,r24
	ldd r24,Y+7
	or r22,r24
	ldi r24,0
	or r24,r16
	std Y+1,r24
	ldi r24,0
	or r24,r17
	std Y+2,r24
	ldi r24,0
	or r24,r18
	std Y+3,r24
	ldi r24,0
	or r24,r19
	std Y+4,r24
	ldi r24,0
	or r24,r20
	std Y+5,r24
	ldd r24,Y+30
	or r24,r21
	std Y+6,r24
	ldi r24,0
	or r24,r22
	std Y+7,r24
	std Y+8,r15
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldd r24,Y+1
	or r16,r24
	ldd r24,Y+2
	or r17,r24
	ldd r24,Y+3
	or r18,r24
	ldd r24,Y+4
	or r19,r24
	ldd r24,Y+5
	or r20,r24
	ldd r24,Y+6
	or r21,r24
	ldd r22,Y+39
	ldd r24,Y+7
	or r22,r24
	std Y+1,r16
	std Y+2,r17
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	mov r18,r16
	mov r19,r17
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
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
	brlo .L689
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
.L689:
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
	breq .L690
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L690:
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
	breq .L691
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L691:
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
	breq .L692
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L692:
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
.L693:
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
	brlt .L700
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
	brlt .L701
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
	brlo .L702
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
	brlo .L703
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L699
.L700:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L699:
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
.L701:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L699
.L702:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L699
.L703:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L699
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
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
	breq .L706
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
.L706:
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
	breq .L707
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L707:
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
	breq .+2
	rjmp .L712
	ldi r24,lo8(4)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L708:
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
	brne .L713
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L709:
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
	pop r17
	pop r16
	ret
.L712:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L708
.L713:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L709
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
	rjmp .L715
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
.L716:
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
.L717:
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
.L715:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L718
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
	rjmp .L716
.L718:
	ldd r8,Y+17
	ldd r9,Y+18
	ldd r10,Y+19
	ldd r11,Y+20
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
	rjmp .L717
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
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
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
	ldd r4,Y+21
	ldd r5,Y+22
	ldd r6,Y+23
	ldd r7,Y+24
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	rcall __mulsi3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	rcall __mulsi3
	add r8,r22
	adc r9,r23
	adc r10,r24
	adc r11,r25
	add r4,r8
	adc r5,r9
	adc r6,r10
	adc r7,r11
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	std Y+29,r4
	std Y+30,r5
	std Y+31,r6
	std Y+32,r7
	mov r18,r8
	mov r19,r9
	mov r20,r10
	mov r21,r11
	mov r22,r4
	mov r23,r5
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
	rcall __negdi2
	std Y+9,r18
	std Y+10,r19
	std Y+11,r20
	std Y+12,r21
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	ret
	.size	__popcountsi2, .-__popcountsi2
.global	__powidf2
	.type	__powidf2, @function
__powidf2:
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
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r28,r20
	mov r29,r21
	bst r21,7
	clr r16
	clr r17
	bld r16,0
	mov __tmp_reg__,r31
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	ldi r31,lo8(-128)
	mov r10,r31
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	rjmp .L730
.L727:
	mov r24,r28
	mov r25,r29
	tst r29
	brlt .L733
.L728:
	mov r28,r24
	mov r29,r25
	asr r29
	ror r28
	sbiw r28,0
	breq .L729
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L730:
	sbrs r28,0
	rjmp .L727
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L727
.L733:
	adiw r24,1
	rjmp .L728
.L729:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	or r16,r17
	breq .L731
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
.L731:
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
	.size	__powidf2, .-__powidf2
.global	__powisf2
	.type	__powisf2, @function
__powisf2:
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
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
	mov r28,r20
	mov r29,r21
	bst r21,7
	clr r16
	clr r17
	bld r16,0
	mov __tmp_reg__,r31
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	ldi r31,lo8(-128)
	mov r10,r31
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	rjmp .L738
.L735:
	mov r24,r28
	mov r25,r29
	tst r29
	brlt .L741
.L736:
	mov r28,r24
	mov r29,r25
	asr r29
	ror r28
	sbiw r28,0
	breq .L737
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsf3
	mov r12,r22
	mov r13,r23
	mov r14,r24
	mov r15,r25
.L738:
	sbrs r28,0
	rjmp .L735
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsf3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L735
.L741:
	adiw r24,1
	rjmp .L736
.L737:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	or r16,r17
	breq .L739
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	rcall __divsf3
.L739:
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
	brlo .L744
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
	brlo .L745
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
	brlo .L746
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
	brlo .L747
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L743
.L744:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L743:
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
.L745:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L743
.L746:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L743
.L747:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L743
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
	std Y+17,r10
	std Y+18,r11
	std Y+19,r12
	std Y+20,r13
	std Y+21,r14
	std Y+22,r15
	std Y+23,r16
	std Y+24,r17
	ldd r22,Y+23
	ldd r23,Y+24
	ldd r24,Y+1
	std Y+9,r24
	ldd r24,Y+2
	std Y+10,r24
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
	std Y+16,r25
	mov r16,r22
	mov r17,r23
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
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
