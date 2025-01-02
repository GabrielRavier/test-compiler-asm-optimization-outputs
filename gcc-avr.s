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
	mov r28,r24
	mov r29,r25
	mov r18,r22
	mov r19,r23
	mov r16,r20
	mov r17,r21
	cp r18,r28
	cpc r19,r29
	brsh .L2
	mov r26,r18
	mov r27,r19
	add r26,r16
	adc r27,r17
	mov r30,r28
	mov r31,r29
	add r30,r16
	adc r31,r17
	or r16,r17
	breq .L3
.L4:
	ld r24,-X
	st -Z,r24
	cp r28,r30
	cpc r29,r31
	brne .L4
.L3:
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L2:
	cp r28,r18
	cpc r29,r19
	breq .L3
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L3
	mov r30,r28
	mov r31,r29
	add r16,r18
	adc r17,r19
.L5:
	mov r26,r18
	mov r27,r19
	subi r18,-1
	sbci r19,-1
	ld r24,X
	st Z+,r24
	cp r18,r16
	cpc r19,r17
	brne .L5
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
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
	mov r26,r18
	mov r27,r19
	ldi r21,0
	sbiw r26,0
	breq .L16
	mov r28,r22
	mov r29,r23
	mov r30,r24
	mov r31,r25
	rjmp .L17
.L19:
	sbiw r26, 1
	breq .L16
.L17:
	ld r25,Y+
	st Z+,r25
	cp r25,r20
	cpc __zero_reg__,r21
	brne .L19
	mov r24,r30
	mov r25,r31
/* epilogue start */
	pop r29
	pop r28
	ret
.L16:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
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
	breq .L32
	mov r30,r24
	mov r31,r25
	rjmp .L29
.L30:
	subi r18, 1
	sbci r19, 0
	breq .L32
.L29:
	mov r24,r30
	mov r25,r31
	ld r20,Z+
	cp r20,r22
	cpc __zero_reg__,r23
	brne .L30
	ret
.L32:
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
	mov r28,r20
	mov r29,r21
	sbiw r28,0
	breq .L39
	mov r20,r24
	mov r21,r25
	mov r18,r22
	mov r19,r23
	rjmp .L35
.L36:
	sbiw r28, 1
	breq .L39
.L35:
	mov r30,r18
	mov r31,r19
	mov r26,r20
	mov r27,r21
	ld r24,X
	subi r20,-1
	sbci r21,-1
	ld r25,Z
	subi r18,-1
	sbci r19,-1
	cp r24,r25
	breq .L36
	sub r24,r25
	sbc r25,r25
/* epilogue start */
	pop r29
	pop r28
	ret
.L39:
	ldi r24,0
	ldi r25,0
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
	breq .L42
	mov r20,r18
	mov r21,r19
	rcall memcpy
.L42:
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
	mov r26,r24
	mov r27,r25
	ldi r23,0
	mov r30,r26
	mov r31,r27
	add r30,r20
	adc r31,r21
	rjmp .L47
.L49:
	sbiw r30,1
	mov r24,r30
	mov r25,r31
	ld r18,Z
	cp r18,r22
	cpc __zero_reg__,r23
	breq .L46
.L47:
	cp r26,r30
	cpc r27,r31
	brne .L49
	ldi r24,0
	ldi r25,0
.L46:
/* epilogue start */
	ret
	.size	memrchr, .-memrchr
.global	memset
	.type	memset, @function
memset:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	mov r18,r22
	mov r19,r23
	mov r30,r20
	mov r31,r21
	sbiw r30,0
	breq .L53
	mov r22,r18
	mov r23,r19
	clr r23
	mov r20,r30
	mov r21,r31
	rcall memset
.L53:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
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
	breq .L57
	adiw r26,1
	adiw r30,1
.L56:
	mov r24,r30
	mov r25,r31
	ld r18,X+
	st Z+,r18
	cpse r18,__zero_reg__
	rjmp .L56
	ret
.L57:
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
	cpse r24,__zero_reg__
	rjmp .L60
	rjmp .L59
.L62:
	adiw r30,1
	ld r24,Z
	cp r24, __zero_reg__
	breq .L59
.L60:
	cp r24,r22
	cpc __zero_reg__,r23
	brne .L62
.L59:
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
	rjmp .L68
.L71:
	cp r18, __zero_reg__
	breq .L70
.L68:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r20
	cpc r0,r21
	brne .L71
/* epilogue start */
	ret
.L70:
	ldi r24,0
	ldi r25,0
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
	ld r18,Z
	adiw r26,1
	adiw r30,1
	cp r24,r18
	breq .L75
	rjmp .L78
.L76:
	ld r24,X+
	ld r18,Z+
	cpse r24,r18
	rjmp .L78
.L75:
	cpse r24,__zero_reg__
	rjmp .L76
	ldi r24,0
	ldi r25,0
	sub r24,r18
	sbc r25,__zero_reg__
/* epilogue start */
	ret
.L78:
	ldi r25,0
	sub r24,r18
	sbc r25,__zero_reg__
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
	breq .L82
	mov r18,r26
	mov r19,r27
	subi r18,-1
	sbci r19,-1
.L81:
	mov r30,r18
	mov r31,r19
	subi r18,-1
	sbci r19,-1
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L81
	mov r24,r30
	mov r25,r31
	sub r24,r26
	sbc r25,r27
	ret
.L82:
	ldi r24,0
	ldi r25,0
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
	mov r26,r24
	mov r27,r25
	mov r30,r22
	mov r31,r23
	mov r18,r20
	mov r19,r21
	ldi r24,0
	ldi r25,0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L84
	ld r24,X
	adiw r26,1
	mov r20,r30
	mov r21,r31
	add r20,r18
	adc r21,r19
	cpse r24,__zero_reg__
	rjmp .L88
	rjmp .L95
.L89:
	cp r30,r20
	cpc r31,r21
	breq .L94
	cpse r18,r24
	rjmp .L94
	ld r24,X+
	cp r24, __zero_reg__
	breq .L96
.L88:
	mov r28,r30
	mov r29,r31
	ld r18,Z+
	cpse r18,__zero_reg__
	rjmp .L89
.L94:
	ldi r25,0
.L87:
	sub r24,r18
	sbc r25,__zero_reg__
.L84:
/* epilogue start */
	pop r29
	pop r28
	ret
.L96:
	ldd r18,Y+1
	ldi r24,0
	ldi r25,0
	rjmp .L87
.L95:
	ld r18,Z
	ldi r24,0
	ldi r25,0
	rjmp .L87
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
	brlt .L97
	andi r18,254
	add r18,r30
	adc r19,r31
.L99:
	ld r24,Z
	ldd r25,Z+1
	st X,r25
	adiw r26,1
	st X,r24
	sbiw r26,1
	adiw r26,2
	adiw r30,2
	cp r30,r18
	cpc r31,r19
	brne .L99
.L97:
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
	brlo .L102
	ldi r24,0
	ldi r25,0
.L102:
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
	brlo .L104
	ldi r24,0
	ldi r25,0
.L104:
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
	cpi r18,32
	cpc r19,__zero_reg__
	breq .L108
	cpi r18,9
	cpc r19,__zero_reg__
	breq .L108
	ldi r24,0
.L108:
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
	ldi r24,lo8(1)
	cpi r18,32
	cpc r19,__zero_reg__
	brlo .L115
	cpi r18,127
	cpc r19,__zero_reg__
	breq .L115
	ldi r24,0
.L115:
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
	ldi r25,0
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L120
	ldi r24,0
	ldi r25,0
.L120:
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
	brlo .L122
	ldi r24,0
	ldi r25,0
.L122:
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
	brlo .L124
	ldi r24,0
	ldi r25,0
.L124:
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
	brlo .L126
	ldi r24,0
	ldi r25,0
.L126:
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
	ldi r24,lo8(1)
	cpi r18,32
	cpc r19,__zero_reg__
	breq .L131
	subi r18,9
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,5
	cpc r19,__zero_reg__
	brsh .L132
.L131:
	ldi r25,0
/* epilogue start */
	ret
.L132:
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
	ldi r25,0
	cpi r18,26
	cpc r19,__zero_reg__
	brlo .L134
	ldi r24,0
	ldi r25,0
.L134:
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
	brlo .L140
	mov r24,r18
	mov r25,r19
	subi r24,127
	sbc r25,__zero_reg__
	cpi r24,33
	cpc r25,__zero_reg__
	brsh .L142
.L140:
	ldi r24,lo8(1)
.L141:
	ldi r25,0
/* epilogue start */
	ret
.L142:
	subi r24,-87
	sbci r25,31
	sbiw r24,2
	brlo .L140
	subi r18,-7
	sbci r19,-1
	ldi r24,lo8(1)
	cpi r18,3
	cpc r19,__zero_reg__
	brlo .L141
	ldi r24,0
	rjmp .L141
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
	brlo .L144
	ldi r24,0
	ldi r25,0
.L144:
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
	brlo .L156
	cpi r18,40
	ldi r20,32
	cpc r19,r20
	brlo .L152
	mov r24,r18
	mov r25,r19
	subi r24,42
	sbci r25,32
	cpi r24,-42
	ldi r20,-73
	cpc r25,r20
	brlo .L152
	subi r24,-42
	sbci r25,-65
	cpi r24,-7
	sbci r25,31
	brlo .L152
	andi r18,254
	ldi r24,lo8(1)
	cpi r18,-2
	sbci r19,-1
	brne .L153
.L154:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L152:
	ldi r24,lo8(1)
.L153:
	ldi r25,0
/* epilogue start */
	ret
.L156:
	subi r18,-1
	sbci r19,-1
	andi r18,127
	clr r19
	ldi r24,lo8(1)
	cpi r18,33
	cpc r19,__zero_reg__
	brlo .L154
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
	brlo .L160
	ori r18,32
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,6
	cpc r19,__zero_reg__
	brsh .L162
	ldi r25,0
/* epilogue start */
	ret
.L160:
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	ret
.L162:
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
	rjmp .L167
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
	rjmp .L168
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
	cp __zero_reg__,r24
	brlt .L172
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L164:
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
.L172:
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
	rjmp .L164
.L167:
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldd r25,Y+29
	rjmp .L164
.L168:
	mov r22,r15
	mov r23,r16
	mov r24,r17
	ldd r25,Y+30
	rjmp .L164
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
	rjmp .L176
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
	rjmp .L177
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
	cp __zero_reg__,r24
	brlt .L181
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L173:
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
.L181:
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
	rjmp .L173
.L176:
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldd r25,Y+29
	rjmp .L173
.L177:
	mov r22,r15
	mov r23,r16
	mov r24,r17
	ldd r25,Y+30
	rjmp .L173
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
	rjmp .L190
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
	rjmp .L189
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r7
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	brne .L193
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
	sbrc r24,7
	rjmp .L190
.L189:
	mov r16,r12
	mov r17,r13
	std Y+9,r14
	std Y+1,r15
	rjmp .L182
.L193:
	or r24,r25
	breq .L189
.L190:
	ldd r24,Y+22
	std Y+9,r24
	ldd r24,Y+21
	std Y+1,r24
.L182:
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
	rjmp .L202
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
	rjmp .L201
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r7
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	brne .L205
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
	sbrc r24,7
	rjmp .L202
.L201:
	mov r16,r12
	mov r17,r13
	std Y+9,r14
	std Y+1,r15
	rjmp .L194
.L205:
	or r24,r25
	breq .L201
.L202:
	ldd r24,Y+22
	std Y+9,r24
	ldd r24,Y+21
	std Y+1,r24
.L194:
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
	std Y+6,r24
	mov r3,r25
	mov r4,r10
	mov r5,r11
	mov r6,r12
	mov r7,r13
	mov r8,r14
	mov r9,r15
	std Y+8,r16
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
	rjmp .L212
	mov r10,r4
	mov r11,r5
	mov r12,r6
	mov r13,r7
	mov r14,r8
	mov r15,r9
	ldd r16,Y+8
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
	rjmp .L213
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	brne .L217
	mov r18,r2
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	mov r25,r3
	rcall __ltdf2
	cp r24, __zero_reg__
	breq .L216
	std Y+6,r16
	mov r25,r17
.L210:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+6
.L206:
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
.L217:
	or r24,r25
	breq .L213
	mov r24,r16
	mov r25,r17
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	rjmp .L206
.L213:
	mov r18,r2
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	mov r25,r3
	rjmp .L206
.L216:
	mov r4,r2
	ldd r5,Y+1
	ldd r6,Y+2
	ldd r7,Y+3
	ldd r8,Y+4
	ldd r9,Y+5
	std Y+7,r3
	mov r25,r3
	rjmp .L210
.L212:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+8
	ldd r25,Y+7
	rjmp .L206
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
	rjmp .L224
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
	rjmp .L226
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L220
	or r24,r25
	breq .L224
.L226:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L218
.L220:
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
	sbrc r24,7
	rjmp .L226
.L224:
	mov r12,r14
	mov r13,r15
	std Y+9,r16
	std Y+1,r17
.L218:
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
	rjmp .L235
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
	rjmp .L237
	mov r24,r11
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L231
	or r24,r25
	breq .L235
.L237:
	ldd r24,Y+22
	std Y+9,r24
	ldd r18,Y+21
	std Y+1,r18
	rjmp .L229
.L231:
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
	sbrc r24,7
	rjmp .L237
.L235:
	mov r12,r14
	mov r13,r15
	std Y+9,r16
	std Y+1,r17
.L229:
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
	rjmp .L246
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
	rjmp .L248
	ldd r18,Y+7
	mov r24,r18
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r9
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	brne .L251
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
	breq .L250
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
.L244:
	ldd r18,Y+8
	ldd r25,Y+7
.L240:
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
.L251:
	or r24,r25
	breq .L246
.L248:
	ldd r18,Y+8
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	ldd r25,Y+7
	rjmp .L240
.L246:
	mov r18,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	mov r25,r9
	rjmp .L240
.L250:
	std Y+8,r2
	mov r19,r3
	mov r20,r4
	mov r21,r5
	mov r22,r6
	mov r23,r7
	mov r24,r8
	std Y+7,r9
	rjmp .L244
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
	breq .L253
.L254:
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
	ldi r24,6
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	dec r24
	brne 1b
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	cpc r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L254
.L253:
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
	ldi r24,lo8(45)
	mov r10,r24
	ldi r25,lo8(127)
	mov r11,r25
	ldi r18,lo8(-107)
	mov r12,r18
	ldi r19,lo8(76)
	mov r13,r19
	ldi r20,lo8(45)
	mov r14,r20
	ldi r21,lo8(-12)
	mov r15,r21
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
	breq .L265
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
	breq .L259
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L259:
/* epilogue start */
	ret
.L265:
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
	breq .L267
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
.L267:
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	sbiw r30,0
	breq .L266
	std Z+1,r27
	st Z,r26
.L266:
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
	mov r12,r18
	mov r13,r19
	mov r10,r16
	mov r11,r17
	mov r30,r6
	mov r31,r7
	ld r8,Z
	ldd r9,Z+1
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	breq .L276
	mov r28,r4
	mov r29,r5
	ldi r16,0
	ldi r17,0
	rjmp .L278
.L290:
	subi r16,-1
	sbci r17,-1
	add r28,r12
	adc r29,r13
	cp r8,r16
	cpc r9,r17
	breq .L276
.L278:
	mov r14,r28
	mov r15,r29
	mov r22,r28
	mov r23,r29
	mov r24,r3
	mov r25,r2
	mov r30,r10
	mov r31,r11
	icall
	or r24,r25
	brne .L290
.L275:
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
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.L276:
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
	mov r14,r4
	mov r15,r5
	add r14,r24
	adc r15,r25
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L275
	mov r20,r12
	mov r21,r13
	mov r22,r3
	mov r23,r2
	mov r24,r14
	mov r25,r15
	rcall memmove
	rjmp .L275
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
	breq .L292
	mov r28,r22
	mov r29,r23
	ldi r16,0
	ldi r17,0
	rjmp .L294
.L302:
	subi r16,-1
	sbci r17,-1
	add r28,r12
	adc r29,r13
	cp r10,r16
	cpc r11,r17
	breq .L292
.L294:
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
	brne .L302
.L291:
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
.L292:
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	rjmp .L291
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
	sbrs r19,7
	rjmp .L304
	neg r19
	neg r18
	sbc r19,__zero_reg__
.L304:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	ret
	.size	abs, .-abs
.global	atoi
	.type	atoi, @function
atoi:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r30,r24
	mov r31,r25
.L306:
	mov r26,r30
	mov r27,r31
	ld r25,Z+
	cpi r25,lo8(32)
	breq .L306
	mov r20,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r21,r21
	mov r18,r20
	mov r19,r21
	subi r18,9
	sbc r19,__zero_reg__
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L306
	cpi r25,lo8(43)
	brne .+2
	rjmp .L308
	cpi r25,lo8(45)
	brne .L326
	mov r30,r26
	mov r31,r27
	adiw r30,1
	adiw r26,1
	ld r25,X
	mov r20,r25
	lsl r25
	sbc r21,r21
	mov r24,r20
	mov r25,r21
	sbiw r24,48
	sbiw r24,10
	brlo .+2
	rjmp .L317
	ldi r28,lo8(1)
	ldi r29,0
.L311:
	adiw r30,1
	ldi r22,0
	ldi r23,0
.L314:
	mov r18,r22
	mov r19,r23
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r18,r22
	adc r19,r23
	lsl r18
	rol r19
	mov r26,r20
	mov r27,r21
	sbiw r26,48
	mov r22,r18
	mov r23,r19
	sub r22,r26
	sbc r23,r27
	ld r25,Z+
	mov r20,r25
	lsl r25
	sbc r21,r21
	mov r24,r20
	mov r25,r21
	sbiw r24,48
	sbiw r24,10
	brlo .L314
	or r28,r29
	brne .L305
	mov r22,r26
	mov r23,r27
	sub r22,r18
	sbc r23,r19
.L305:
	mov r24,r22
	mov r25,r23
/* epilogue start */
	pop r29
	pop r28
	ret
.L326:
	mov r24,r20
	mov r25,r21
	sbiw r24,48
	mov r30,r26
	mov r31,r27
	sbiw r24,10
	brsh .L317
.L325:
	ldi r28,0
	ldi r29,0
	rjmp .L311
.L308:
	mov r30,r26
	mov r31,r27
	adiw r30,1
	adiw r26,1
	ld r25,X
	mov r20,r25
	lsl r25
	sbc r21,r21
	mov r24,r20
	mov r25,r21
	sbiw r24,48
	sbiw r24,10
	brlo .L325
.L317:
	ldi r22,0
	ldi r23,0
	mov r24,r22
	mov r25,r23
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	atoi, .-atoi
.global	atol
	.type	atol, @function
atol:
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
	mov r30,r24
	mov r31,r25
.L328:
	mov r26,r30
	mov r27,r31
	ld r23,Z+
	cpi r23,lo8(32)
	breq .L328
	mov r18,r23
	mov __tmp_reg__,r23
	lsl r0
	sbc r19,r19
	mov r24,r18
	mov r25,r19
	sbiw r24,9
	sbiw r24,5
	brlo .L328
	cpi r23,lo8(43)
	brne .+2
	rjmp .L330
	cpi r23,lo8(45)
	breq .+2
	rjmp .L348
	mov r30,r26
	mov r31,r27
	adiw r30,1
	adiw r26,1
	ld r23,X
	mov r18,r23
	lsl r23
	sbc r19,r19
	mov r24,r18
	mov r25,r19
	sbiw r24,48
	sbiw r24,10
	brlo .+2
	rjmp .L339
	ldi r20,lo8(1)
	ldi r21,0
.L333:
	adiw r30,1
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L336:
	mov r27,r11
	mov r26,r10
	mov r25,r9
	mov r24,r8
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
	lsl r24
	rol r25
	rol r26
	rol r27
	subi r18,48
	sbc r19,__zero_reg__
	mov r12,r18
	mov r13,r19
	mov __tmp_reg__,r13
	lsl r0
	sbc r14,r14
	sbc r15,r15
	mov r8,r24
	mov r9,r25
	mov r10,r26
	mov r11,r27
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	ld r23,Z+
	mov r18,r23
	lsl r23
	sbc r19,r19
	mov r28,r18
	mov r29,r19
	sbiw r28,48
	sbiw r28,10
	brlo .L336
	or r20,r21
	brne .L327
	mov r8,r12
	mov r9,r13
	mov r10,r14
	mov r11,r15
	sub r8,r24
	sbc r9,r25
	sbc r10,r26
	sbc r11,r27
.L327:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
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
.L348:
	mov r24,r18
	mov r25,r19
	sbiw r24,48
	mov r30,r26
	mov r31,r27
	sbiw r24,10
	brsh .L339
.L347:
	ldi r20,0
	ldi r21,0
	rjmp .L333
.L330:
	mov r30,r26
	mov r31,r27
	adiw r30,1
	adiw r26,1
	ld r23,X
	mov r18,r23
	lsl r23
	sbc r19,r19
	mov r24,r18
	mov r25,r19
	sbiw r24,48
	sbiw r24,10
	brlo .L347
.L339:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	rjmp .L327
	.size	atol, .-atol
.global	atoll
	.type	atoll, @function
atoll:
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
	mov r30,r24
	mov r31,r25
.L350:
	std Y+4,r31
	std Y+3,r30
	ld r24,Z+
	cpi r24,lo8(32)
	breq .L350
	mov r26,r24
	mov __tmp_reg__,r24
	lsl r0
	sbc r27,r27
	mov r18,r26
	mov r19,r27
	subi r18,9
	sbc r19,__zero_reg__
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L350
	cpi r24,lo8(43)
	brne .+2
	rjmp .L352
	cpi r24,lo8(45)
	breq .+2
	rjmp .L370
	ldd r30,Y+3
	ldd r31,Y+4
	adiw r30,1
	ldd r26,Y+3
	ldd r27,Y+4
	adiw r26,1
	ld r24,X
	mov r26,r24
	lsl r24
	sbc r27,r27
	mov r24,r26
	mov r25,r27
	sbiw r24,48
	sbiw r24,10
	brlo .+2
	rjmp .L361
	ldi r24,lo8(1)
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
.L355:
	adiw r30,1
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	mov r2,__zero_reg__
	ldi r17,0
.L358:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r2
	mov r25,r17
	ldi r16,lo8(2)
	rcall __ashldi3
	mov r16,r2
	rcall __adddi3
	ldi r16,lo8(1)
	rcall __ashldi3
	mov r3,r18
	mov r4,r19
	mov r5,r20
	mov r6,r21
	mov r7,r22
	mov r8,r23
	mov r9,r24
	std Y+2,r25
	mov r24,r26
	mov r25,r27
	sbiw r24,48
	std Y+6,r25
	std Y+5,r24
	lsl r25
	sbc r25,r25
	std Y+1,r25
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	ldd r25,Y+2
	ldd r10,Y+5
	ldd r11,Y+6
	ldd r12,Y+1
	mov r13,r12
	mov r14,r12
	mov r15,r12
	mov r16,r12
	mov r17,r12
	rcall __subdi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r2,r24
	mov r17,r25
	ld r26,Z+
	mov __tmp_reg__,r26
	lsl r0
	sbc r27,r27
	mov r24,r26
	mov r25,r27
	sbiw r24,48
	sbiw r24,10
	brsh .+2
	rjmp .L358
	ldd r26,Y+3
	ldd r27,Y+4
	or r26,r27
	brne .L349
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+1
	mov r21,r20
	mov r22,r20
	mov r23,r20
	mov r24,r20
	mov r25,r20
	mov r10,r3
	mov r11,r4
	mov r12,r5
	mov r13,r6
	mov r14,r7
	mov r15,r8
	mov r16,r9
	ldd r17,Y+2
	rcall __subdi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r2,r24
	mov r17,r25
.L349:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r2
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
.L370:
	mov r24,r26
	mov r25,r27
	sbiw r24,48
	ldd r30,Y+3
	ldd r31,Y+4
	sbiw r24,10
	brsh .L361
.L369:
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L355
.L352:
	ldd r30,Y+3
	ldd r31,Y+4
	adiw r30,1
	ldd r26,Y+3
	ldd r27,Y+4
	adiw r26,1
	ld r24,X
	mov r26,r24
	lsl r24
	sbc r27,r27
	mov r24,r26
	mov r25,r27
	sbiw r24,48
	sbiw r24,10
	brlo .L369
.L361:
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	mov r2,__zero_reg__
	ldi r17,0
	rjmp .L349
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
.L384:
	sbiw r28,0
	breq .L372
.L385:
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
	sbrc r15,7
	rjmp .L376
	or r14,r15
	breq .L371
	mov r10,r16
	mov r11,r17
	add r10,r12
	adc r11,r13
	sbiw r28,1
	sub r28,r8
	sbc r29,r9
	sbiw r28,0
	brne .L385
.L372:
	ldi r16,0
	ldi r17,0
.L371:
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
.L376:
	mov r28,r8
	mov r29,r9
	rjmp .L384
	.size	bsearch, .-bsearch
.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
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
	mov r8,r22
	mov r9,r23
	mov r10,r18
	mov r11,r19
	mov r4,r16
	mov r5,r17
	mov r16,r20
	mov r17,r21
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L391
.L387:
	mov r6,r16
	mov r7,r17
	asr r7
	ror r6
	mov r24,r6
	mov r25,r7
	mov r22,r10
	mov r23,r11
	rcall __mulhi3
	mov r28,r8
	mov r29,r9
	add r28,r24
	adc r29,r25
	mov r20,r14
	mov r21,r15
	mov r22,r28
	mov r23,r29
	mov r24,r3
	mov r25,r2
	mov r30,r4
	mov r31,r5
	icall
	mov r12,r24
	mov r13,r25
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L386
	brlt .L389
	mov r8,r28
	mov r9,r29
	add r8,r10
	adc r9,r11
	subi r16,1
	sbc r17,__zero_reg__
	asr r17
	ror r16
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L387
.L391:
	ldi r28,0
	ldi r29,0
.L386:
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
.L389:
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L391
	mov r16,r6
	mov r17,r7
	rjmp .L387
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
	brge .L401
	rcall __negdi2
	mov r15,r18
	mov r16,r19
	mov r17,r20
	mov r29,r21
	mov r28,r22
	mov r27,r23
	mov r31,r24
	mov r30,r25
.L401:
	mov r18,r15
	mov r19,r16
	mov r20,r17
	mov r21,r29
	mov r22,r28
	mov r23,r27
	mov r24,r31
	mov r25,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
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
	sbrs r19,7
	rjmp .L404
	com r19
	com r18
	com r17
	neg r16
	sbci r17,lo8(-1)
	sbci r18,lo8(-1)
	sbci r19,lo8(-1)
.L404:
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
	pop r17
	pop r16
	ret
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
	brge .L407
	rcall __negdi2
	mov r15,r18
	mov r16,r19
	mov r17,r20
	mov r29,r21
	mov r28,r22
	mov r27,r23
	mov r31,r24
	mov r30,r25
.L407:
	mov r18,r15
	mov r19,r16
	mov r20,r17
	mov r21,r29
	mov r22,r28
	mov r23,r27
	mov r24,r31
	mov r25,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
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
	mov r18,r22
	mov r19,r23
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L410
	rjmp .L413
.L412:
	adiw r30,2
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L413
.L410:
	cp r18,r24
	cpc r19,r25
	brne .L412
	mov r24,r30
	mov r25,r31
	ret
.L413:
	ldi r24,0
	ldi r25,0
/* epilogue start */
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
	brne .L416
	adiw r26,2
	adiw r30,2
	rjmp .L417
.L418:
	ld r18,X+
	ld r19,X+
	ld r20,Z+
	ld r21,Z+
	cp r18,r20
	cpc r19,r21
	brne .L416
.L417:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L418
.L416:
	cp r18,r20
	cpc r19,r21
	brlt .L421
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brge .L422
	ldi r25,0
	ret
.L421:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
/* epilogue start */
	ret
.L422:
	ldi r24,0
	ldi r25,0
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
.L424:
	mov r30,r18
	mov r31,r19
	ld r20,Z
	ldd r21,Z+1
	subi r18,-2
	sbci r19,-1
	st X+,r20
	st X+,r21
	or r20,r21
	brne .L424
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
	breq .L429
	mov r18,r26
	mov r19,r27
	subi r18,-2
	sbci r19,-1
.L428:
	mov r30,r18
	mov r31,r19
	subi r18,-2
	sbci r19,-1
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L428
	mov r24,r30
	mov r25,r31
	sub r24,r26
	sbc r25,r27
	asr r25
	ror r24
	ret
.L429:
	ldi r24,0
	ldi r25,0
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L440
	mov r30,r24
	mov r31,r25
	mov r24,r22
	mov r25,r23
	rjmp .L433
.L441:
	or r20,r21
	breq .L434
	subi r18, 1
	sbci r19, 0
	breq .L440
.L433:
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
	breq .L441
.L434:
	ld r20,Y
	ldd r21,Y+1
	ld r18,X+
	ld r19,X
	cp r20,r18
	cpc r21,r19
	brge .L437
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
/* epilogue start */
	pop r29
	pop r28
	ret
.L437:
	ldi r24,lo8(1)
	cp r18,r20
	cpc r19,r21
	brge .L440
	ldi r25,0
.L442:
/* epilogue start */
	pop r29
	pop r28
	ret
.L440:
	ldi r24,0
	ldi r25,0
	rjmp .L442
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
	breq .L448
	mov r30,r24
	mov r31,r25
	rjmp .L445
.L446:
	subi r18, 1
	sbci r19, 0
	breq .L448
.L445:
	mov r24,r30
	mov r25,r31
	ld r20,Z+
	ld r21,Z+
	cp r20,r26
	cpc r21,r27
	brne .L446
	ret
.L448:
	ldi r24,0
	ldi r25,0
/* epilogue start */
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
	mov r28,r20
	mov r29,r21
	sbiw r28,0
	breq .L459
	mov r18,r24
	mov r19,r25
	mov r24,r22
	mov r25,r23
	rjmp .L451
.L452:
	sbiw r28, 1
	breq .L459
.L451:
	mov r30,r24
	mov r31,r25
	mov r26,r18
	mov r27,r19
	ld r22,X+
	ld r23,X
	subi r18,-2
	sbci r19,-1
	ld r20,Z
	ldd r21,Z+1
	adiw r24,2
	cp r22,r20
	cpc r23,r21
	breq .L452
	cp r22,r20
	cpc r23,r21
	brlt .L460
	ldi r24,lo8(1)
	cp r20,r22
	cpc r21,r23
	brge .L459
.L454:
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
.L459:
	ldi r24,0
	rjmp .L454
.L460:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
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
	breq .L462
	mov r20,r18
	mov r21,r19
	lsl r20
	rol r21
	mov r24,r29
	rcall memcpy
.L462:
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
	breq .L474
	mov r26,r28
	mov r27,r29
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
	brsh .L479
	or r30,r31
	breq .L474
	mov r30,r18
	mov r31,r19
	add r30,r20
	adc r31,r21
	mov r26,r28
	mov r27,r29
	add r26,r20
	adc r27,r21
.L471:
	ld r25,-Z
	ld r24,-Z
	st -X,r25
	st -X,r24
	cp r18,r30
	cpc r19,r31
	brne .L471
.L474:
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	ret
.L479:
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	or r30,r31
	breq .L474
.L472:
	mov r30,r18
	mov r31,r19
	ld r22,Z
	ldd r23,Z+1
	subi r18,-2
	sbci r19,-1
	st X+,r22
	st X+,r23
	sbiw r24,1
	brcc .L472
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
	breq .L481
	mov r18,r24
	mov r19,r25
.L482:
	mov r30,r18
	mov r31,r19
	st Z,r22
	subi r18,-2
	sbci r19,-1
	std Z+1,r23
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L482
.L481:
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
	mov r30,r22
	mov r31,r23
	mov r16,r20
	mov r17,r21
	cp r28,r30
	cpc r29,r31
	brsh .L488
	add r28,r16
	adc r29,r17
	mov r26,r30
	mov r27,r31
	add r26,r16
	adc r27,r17
	or r16,r17
	breq .L487
.L490:
	ld r24,-Y
	st -X,r24
	cp r30,r26
	cpc r31,r27
	brne .L490
.L487:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L488:
	cp r28,r30
	cpc r29,r31
	breq .L487
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L487
	add r16,r28
	adc r17,r29
.L491:
	mov r26,r28
	mov r27,r29
	adiw r28,1
	ld r24,X
	st Z+,r24
	cp r28,r16
	cpc r29,r17
	brne .L491
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
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
	mov r18,r24
	mov r19,r25
	sbrc r18,0
	rjmp .L516
	sbrc r18,1
	rjmp .L517
	sbrc r18,2
	rjmp .L518
	sbrc r18,3
	rjmp .L519
	sbrc r18,4
	rjmp .L520
	sbrc r18,5
	rjmp .L521
	sbrc r18,6
	rjmp .L522
	sbrc r18,7
	rjmp .L523
	sbrc r19,0
	rjmp .L524
	sbrc r19,1
	rjmp .L525
	sbrc r19,2
	rjmp .L526
	sbrc r19,3
	rjmp .L527
	sbrc r19,4
	rjmp .L528
	sbrc r19,5
	rjmp .L529
	sbrc r19,6
	rjmp .L530
	ldi r24,lo8(16)
	or r18,r19
	brne .L532
	ldi r24,0
.L532:
	ldi r25,0
/* epilogue start */
	ret
.L516:
	ldi r24,lo8(1)
	rjmp .L532
.L517:
	ldi r24,lo8(2)
	rjmp .L532
.L528:
	ldi r24,lo8(13)
	rjmp .L532
.L518:
	ldi r24,lo8(3)
	rjmp .L532
.L519:
	ldi r24,lo8(4)
	rjmp .L532
.L520:
	ldi r24,lo8(5)
	rjmp .L532
.L521:
	ldi r24,lo8(6)
	rjmp .L532
.L522:
	ldi r24,lo8(7)
	rjmp .L532
.L523:
	ldi r24,lo8(8)
	rjmp .L532
.L524:
	ldi r24,lo8(9)
	rjmp .L532
.L525:
	ldi r24,lo8(10)
	rjmp .L532
.L526:
	ldi r24,lo8(11)
	rjmp .L532
.L527:
	ldi r24,lo8(12)
	rjmp .L532
.L529:
	ldi r24,lo8(14)
	rjmp .L532
.L530:
	ldi r24,lo8(15)
	rjmp .L532
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
	breq .L536
	mov r24,r18
	andi r24,1<<0
	clr r25
	sbrc r18,0
	rjmp .L533
	ldi r24,lo8(1)
	ldi r25,0
.L535:
	asr r19
	ror r18
	adiw r24,1
	sbrs r18,0
	rjmp .L535
	ret
.L536:
	ldi r24,0
	ldi r25,0
.L533:
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
	sbrc r24,7
	rjmp .L542
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
	cp __zero_reg__,r24
	brge .L543
.L541:
	mov r24,r15
	ldi r25,0
.L539:
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
.L542:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L539
.L543:
	mov r15,__zero_reg__
	rjmp .L541
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
	sbrc r24,7
	rjmp .L547
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
	cp __zero_reg__,r24
	brge .L548
.L546:
	mov r24,r15
	ldi r25,0
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
	pop r9
	pop r8
	ret
.L547:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L544
.L548:
	mov r15,__zero_reg__
	rjmp .L546
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
	rjmp .L552
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
	cp r24, __zero_reg__
	breq .L553
.L551:
	mov r24,r3
	ldi r25,0
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
.L552:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L549
.L553:
	mov r3,__zero_reg__
	rjmp .L551
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
	mov r16,r22
	mov r17,r23
	std Y+34,r24
	std Y+33,r25
	mov r2,r20
	mov r3,r21
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
	rjmp .L556
	std Y+17,r16
	std Y+18,r17
	std Y+19,r14
	std Y+20,r15
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	std Y+21,r16
	std Y+22,r17
	std Y+23,r14
	std Y+24,r15
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __addsf3
	std Y+25,r22
	std Y+26,r23
	std Y+27,r24
	std Y+28,r25
	ldd r18,Y+25
	ldd r19,Y+26
	ldd r20,Y+27
	ldd r21,Y+28
	std Y+29,r16
	std Y+30,r17
	std Y+31,r14
	std Y+32,r15
	ldd r22,Y+29
	ldd r23,Y+30
	ldd r24,Y+31
	ldd r25,Y+32
	rcall __nesf2
	cp r24, __zero_reg__
	brne .+2
	rjmp .L556
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	mov r13,__zero_reg__
	ldi r19,lo8(63)
	mov r12,r19
	sbrc r3,7
	rjmp .L558
	ldi r18,lo8(64)
	mov r12,r18
.L558:
	sbrs r2,0
	rjmp .L559
.L561:
	std Y+1,r15
	std Y+2,r14
	std Y+3,r13
	std Y+4,r12
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	std Y+5,r16
	std Y+6,r17
	ldd r24,Y+34
	std Y+7,r24
	ldd r25,Y+33
	std Y+8,r25
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r16,r22
	mov r17,r23
	std Y+34,r24
	std Y+33,r25
.L559:
	sbrs r3,7
	rjmp .L560
	mov r24,r2
	mov r25,r3
	adiw r24,1
	mov r2,r24
	mov r3,r25
.L560:
	asr r3
	ror r2
	cp r2,__zero_reg__
	cpc r3,__zero_reg__
	breq .L556
.L563:
	mov r8,r15
	mov r9,r14
	mov r10,r13
	mov r11,r12
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r15
	mov r5,r14
	mov r6,r13
	mov r7,r12
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r15,r22
	mov r14,r23
	mov r13,r24
	mov r12,r25
	sbrc r2,0
	rjmp .L561
	sbrs r3,7
	rjmp .L562
	mov r24,r2
	mov r25,r3
	adiw r24,1
	mov r2,r24
	mov r3,r25
.L562:
	asr r3
	ror r2
	rjmp .L563
.L556:
	std Y+13,r16
	std Y+14,r17
	ldd r25,Y+34
	std Y+15,r25
	ldd r24,Y+33
	std Y+16,r24
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
	mov r16,r22
	mov r17,r23
	std Y+34,r24
	std Y+33,r25
	mov r2,r20
	mov r3,r21
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
	rjmp .L574
	std Y+17,r16
	std Y+18,r17
	std Y+19,r14
	std Y+20,r15
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	std Y+21,r16
	std Y+22,r17
	std Y+23,r14
	std Y+24,r15
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __addsf3
	std Y+25,r16
	std Y+26,r17
	std Y+27,r14
	std Y+28,r15
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
	rjmp .L574
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	mov r13,__zero_reg__
	ldi r19,lo8(63)
	mov r12,r19
	sbrc r3,7
	rjmp .L576
	ldi r18,lo8(64)
	mov r12,r18
.L576:
	sbrs r2,0
	rjmp .L577
.L579:
	std Y+1,r15
	std Y+2,r14
	std Y+3,r13
	std Y+4,r12
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	std Y+5,r16
	std Y+6,r17
	ldd r24,Y+34
	std Y+7,r24
	ldd r25,Y+33
	std Y+8,r25
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	rcall __mulsf3
	mov r16,r22
	mov r17,r23
	std Y+34,r24
	std Y+33,r25
.L577:
	sbrs r3,7
	rjmp .L578
	mov r24,r2
	mov r25,r3
	adiw r24,1
	mov r2,r24
	mov r3,r25
.L578:
	asr r3
	ror r2
	cp r2,__zero_reg__
	cpc r3,__zero_reg__
	breq .L574
.L581:
	mov r8,r15
	mov r9,r14
	mov r10,r13
	mov r11,r12
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r15
	mov r5,r14
	mov r6,r13
	mov r7,r12
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r15,r22
	mov r14,r23
	mov r13,r24
	mov r12,r25
	sbrc r2,0
	rjmp .L579
	sbrs r3,7
	rjmp .L580
	mov r24,r2
	mov r25,r3
	adiw r24,1
	mov r2,r24
	mov r3,r25
.L580:
	asr r3
	ror r2
	rjmp .L581
.L574:
	std Y+13,r16
	std Y+14,r17
	ldd r25,Y+34
	std Y+15,r25
	ldd r18,Y+33
	std Y+16,r18
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
	rjmp .L592
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
	rjmp .L592
	ldd r24,Y+9
	ldd r25,Y+10
	mov r9,__zero_reg__
	mov r8,__zero_reg__
	mov r7,__zero_reg__
	mov r6,__zero_reg__
	mov r5,__zero_reg__
	mov r4,__zero_reg__
	ldi r21,lo8(-32)
	mov r3,r21
	ldi r22,lo8(63)
	mov r2,r22
	sbrc r25,7
	rjmp .L594
	mov r3,__zero_reg__
	ldi r20,lo8(64)
	mov r2,r20
.L594:
	sbrs r24,0
	rjmp .L595
.L597:
	mov r10,r9
	mov r11,r8
	mov r12,r7
	mov r13,r6
	mov r14,r5
	mov r15,r4
	mov r16,r3
	mov r17,r2
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
.L595:
	ldd r24,Y+9
	ldd r25,Y+10
	sbrs r25,7
	rjmp .L596
	adiw r24,1
	std Y+10,r25
	std Y+9,r24
.L596:
	ldd r24,Y+9
	ldd r25,Y+10
	asr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	or r24,r25
	breq .L592
.L599:
	mov r10,r9
	mov r11,r8
	mov r12,r7
	mov r13,r6
	mov r14,r5
	mov r15,r4
	mov r16,r3
	mov r17,r2
	mov r18,r9
	mov r19,r8
	mov r20,r7
	mov r21,r6
	mov r22,r5
	mov r23,r4
	mov r24,r3
	mov r25,r2
	rcall __muldf3
	mov r9,r18
	mov r8,r19
	mov r7,r20
	mov r6,r21
	mov r5,r22
	mov r4,r23
	mov r3,r24
	mov r2,r25
	ldd r24,Y+9
	ldd r25,Y+10
	sbrc r24,0
	rjmp .L597
	sbrs r25,7
	rjmp .L598
	adiw r24,1
	std Y+10,r25
	std Y+9,r24
.L598:
	ldd r24,Y+9
	ldd r25,Y+10
	asr r25
	ror r24
	std Y+10,r25
	std Y+9,r24
	rjmp .L599
.L592:
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
	breq .L609
	add r28,r18
	adc r29,r19
	mov r22,r24
	mov r23,r25
.L610:
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
	cp r28,r18
	cpc r29,r19
	brne .L610
.L609:
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
	mov r28,r24
	mov r29,r25
	mov r18,r20
	mov r19,r21
	ld r24,Y
	cp r24, __zero_reg__
	breq .L622
	mov r24,r28
	mov r25,r29
	adiw r24,1
.L617:
	mov r30,r24
	mov r31,r25
	adiw r24,1
	ld r20,Z
	cpse r20,__zero_reg__
	rjmp .L617
.L616:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L618
	mov r26,r22
	mov r27,r23
	rjmp .L619
.L620:
	subi r18, 1
	sbci r19, 0
	breq .L618
.L619:
	ld r24,X+
	st Z+,r24
	cpse r24,__zero_reg__
	rjmp .L620
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	ret
.L618:
	st Z,__zero_reg__
	mov r24,r28
	mov r25,r29
/* epilogue start */
	pop r29
	pop r28
	ret
.L622:
	mov r30,r28
	mov r31,r29
	rjmp .L616
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
	breq .L632
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
.L630:
	ld r20,Z+
	cpse r20,__zero_reg__
	rjmp .L635
/* epilogue start */
	ret
.L635:
	adiw r24,1
	cp r18,r24
	cpc r19,r25
	brne .L630
/* epilogue start */
	ret
.L632:
	ldi r24,0
	ldi r25,0
/* epilogue start */
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
	breq .L641
.L637:
	mov r30,r22
	mov r31,r23
	rjmp .L640
.L639:
	cp r24,r25
	breq .L638
.L640:
	ld r24,Z+
	cpse r24,__zero_reg__
	rjmp .L639
	adiw r26,1
	ld r25,X
	cpse r25,__zero_reg__
	rjmp .L637
.L641:
	ldi r26,0
	ldi r27,0
.L638:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	ret
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
.L645:
	mov r20,r30
	mov r19,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r26
	cpc r0,r27
	brne .L644
	mov r24,r20
	mov r25,r19
.L644:
	cpse r18,__zero_reg__
	rjmp .L645
/* epilogue start */
	ret
	.size	strrchr, .-strrchr
.global	strstr
	.type	strstr, @function
strstr:
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r30,r24
	mov r31,r25
	mov r20,r22
	mov r21,r23
	mov r26,r20
	mov r27,r21
	ld r17,X
	cp r17, __zero_reg__
	brne .+2
	rjmp .L657
	mov r24,r20
	mov r25,r21
	adiw r24,1
.L649:
	mov r26,r24
	mov r27,r25
	adiw r24,1
	ld r18,X
	cpse r18,__zero_reg__
	rjmp .L649
	mov r22,r26
	mov r23,r27
	sub r22,r20
	sbc r23,r21
	cp r26,r20
	cpc r27,r21
	brne .L655
	rjmp .L657
.L665:
	cp r24, __zero_reg__
	breq .L664
.L655:
	mov r26,r30
	mov r27,r31
	ld r24,Z
	adiw r30,1
	cpse r24,r17
	rjmp .L665
	mov r24,r17
	mov r18,r20
	mov r19,r21
	mov r14,r22
	mov r15,r23
	add r14,r26
	adc r15,r27
	rjmp .L651
.L667:
	cp r30,r14
	cpc r31,r15
	breq .L652
	cpse r25,r24
	rjmp .L652
	ld r24,Z+
	cp r24, __zero_reg__
	breq .L666
.L651:
	mov r28,r18
	mov r29,r19
	ld r25,Y
	subi r18,-1
	sbci r19,-1
	cpse r25,__zero_reg__
	rjmp .L667
.L652:
	ld r25,Y
	cp r24,r25
	breq .L647
	mov r30,r26
	mov r31,r27
	adiw r30,1
	rjmp .L655
.L664:
	ldi r26,0
	ldi r27,0
.L647:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
.L666:
	mov r28,r18
	mov r29,r19
	rjmp .L652
.L657:
	mov r26,r30
	mov r27,r31
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
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
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	sbrc r24,7
	rjmp .L678
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp __zero_reg__,r24
	brge .L672
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
	sbrc r24,7
	rjmp .L671
.L672:
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
.L678:
	mov r4,r17
	mov r5,r29
	mov r6,r16
	mov r7,r28
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __gtsf2
	cp __zero_reg__,r24
	brge .L672
.L671:
	bst r15,7
	com r15
	bld r15,7
	com r15
	rjmp .L672
	.size	copysign, .-copysign
.global	memmem
	.type	memmem, @function
memmem:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	mov r14,r18
	mov r15,r19
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L679
	cp r26,r14
	cpc r27,r15
	brlo .L687
	mov r22,r26
	mov r23,r27
	sub r22,r14
	sbc r23,r15
	add r22,r30
	adc r23,r31
	cp r22,r30
	cpc r23,r31
	brlo .L687
	mov r16,r20
	mov r17,r21
	mov r26,r16
	mov r27,r17
	ld r13,X+
	mov r16,r26
	mov r17,r27
	ldi r27,1
	sub r14,r27
	sbc r15,__zero_reg__
	rjmp .L684
.L681:
	cp r22,r30
	cpc r23,r31
	brlo .L687
.L684:
	ld r18,Z
	mov r24,r30
	mov r25,r31
	adiw r30,1
	cpse r18,r13
	rjmp .L681
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L679
	mov r28,r16
	mov r29,r17
	mov r26,r30
	mov r27,r31
	mov r20,r30
	mov r21,r31
	add r20,r14
	adc r21,r15
.L682:
	ld r19,X+
	ld r18,Y+
	cpse r19,r18
	rjmp .L681
	cp r26,r20
	cpc r27,r21
	brne .L682
.L679:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
.L687:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.size	memmem, .-memmem
.global	mempcpy
	.type	mempcpy, @function
mempcpy:
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
	mov r28,r20
	mov r29,r21
	sbiw r28,0
	breq .L693
	mov r20,r28
	mov r21,r29
	mov r24,r16
	mov r25,r17
	rcall memmove
.L693:
	mov r24,r16
	mov r25,r17
	add r24,r28
	adc r25,r29
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
	sbrc r24,7
	rjmp .L719
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gesf2
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	sbrc r24,7
	rjmp .L720
.L700:
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
.L706:
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
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
	sbrs r24,7
	rjmp .L706
.L707:
	ldd r24,Y+1
	ldd r25,Y+2
	mov r30,r16
	mov r31,r17
	std Z+1,r25
	st Z,r24
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	or r2,r3
	breq .L697
	subi r25,0x80
.L697:
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
.L720:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __ltsf2
	sbrs r24,7
	rjmp .L703
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
	rjmp .L712
.L703:
	mov r30,r16
	mov r31,r17
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L697
.L719:
	mov r27,r15
	mov r26,r14
	mov r25,r13
	mov r24,r12
	subi r27,0x80
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(-65)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __lesf2
	cp __zero_reg__,r24
	brlt .L721
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	clr r2
	inc r2
	mov r3,__zero_reg__
	rjmp .L700
.L721:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(-65)
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __gtsf2
	cp __zero_reg__,r24
	brlt .L710
	mov r26,r16
	mov r27,r17
	st X+,__zero_reg__
	st X,__zero_reg__
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rjmp .L697
.L710:
	clr r2
	inc r2
	mov r3,__zero_reg__
.L701:
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
.L708:
	ldd r26,Y+1
	ldd r27,Y+2
	sbiw r26,1
	std Y+2,r27
	std Y+1,r26
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
	sbrc r24,7
	rjmp .L708
	rjmp .L707
.L712:
	std Y+1,r12
	std Y+2,r13
	std Y+3,r14
	std Y+4,r15
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	rjmp .L701
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
	mov r31,r10
	mov r27,r11
	std Y+5,r12
	mov r6,r13
	mov r5,r14
	mov r4,r15
	mov r3,r16
	mov r2,r17
	mov r30,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+6,r22
	mov r9,r23
	mov r8,r24
	mov r7,r25
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
	rjmp .L722
.L724:
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
	and r18,r31
	and r19,r27
	ldd r26,Y+5
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
	mov r18,r31
	mov r19,r27
	mov r20,r26
	mov r21,r6
	mov r22,r5
	mov r23,r4
	mov r24,r3
	mov r25,r2
	ldi r16,lo8(1)
	rcall __ashldi3
	mov r31,r18
	mov r27,r19
	std Y+5,r20
	mov r6,r21
	mov r5,r22
	mov r4,r23
	mov r3,r24
	mov r2,r25
	mov r18,r30
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+6
	mov r23,r9
	mov r24,r8
	mov r25,r7
	rcall __lshrdi3
	mov r30,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+6,r22
	mov r9,r23
	mov r8,r24
	mov r7,r25
	ldi r26,0
	rcall __cmpdi2_s8
	breq .+2
	rjmp .L724
.L722:
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
	brsh .L729
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L728
.L732:
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
	brsh .L730
	subi r18, 1
	sbci r19, 0
	breq .L738
.L728:
	sbrs r15,7
	rjmp .L732
.L729:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L734:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L733
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
.L733:
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
	brne .L734
.L731:
	cp r16, __zero_reg__
	breq .L727
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
.L727:
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
.L730:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L729
.L738:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L731
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
	breq .L743
	ldi r24,0
	rcall __clzhi2
	sbiw r24,1
	ret
.L743:
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
	breq .L746
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
.L744:
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
.L746:
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L744
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
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L750
	mov r24,r18
	andi r24,1<<0
	clr r25
	neg r25
	neg r24
	sbc r25,__zero_reg__
	and r24,r22
	and r25,r23
	mov r22,r18
	mov r23,r19
	lsr r23
	ror r22
	mov r30,r20
	mov r31,r21
	lsl r30
	rol r31
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	lsr r23
	ror r22
	lsr r23
	ror r22
	mov r30,r20
	mov r31,r21
	lsl r30
	rol r31
	lsl r30
	rol r31
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	lsr r23
	ror r22
	lsr r23
	ror r22
	lsr r23
	ror r22
	mov r30,r20
	mov r31,r21
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	swap r23
	swap r22
	andi r22,0x0f
	eor r22,r23
	andi r23,0x0f
	eor r22,r23
	mov r30,r20
	mov r31,r21
	swap r30
	swap r31
	andi r31,0xf0
	eor r31,r30
	andi r30,0xf0
	eor r31,r30
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	lsr r23
	ror r22
	swap r23
	swap r22
	andi r22,0x0f
	eor r22,r23
	andi r23,0x0f
	eor r22,r23
	mov r30,r20
	mov r31,r21
	lsl r30
	rol r31
	swap r30
	swap r31
	andi r31,0xf0
	eor r31,r30
	andi r30,0xf0
	eor r31,r30
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	clr __tmp_reg__
	lsl r22
	rol r23
	rol __tmp_reg__
	lsl r22
	rol r23
	rol __tmp_reg__
	mov r22,r23
	mov r23,__tmp_reg__
	mov r30,r20
	mov r31,r21
	clr __tmp_reg__
	lsr r31
	ror r30
	ror __tmp_reg__
	lsr r31
	ror r30
	ror __tmp_reg__
	mov r31,r30
	mov r30,__tmp_reg__
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	lsl r22
	mov r22,r23
	rol r22
	sbc r23,r23
	neg r23
	mov r30,r20
	mov r31,r21
	lsr r31
	mov r31,r30
	clr r30
	ror r31
	ror r30
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r19
	clr r23
	mov r31,r20
	clr r30
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	mov r22,r23
	clr r23
	lsr r22
	mov r30,r20
	mov r31,r21
	mov r31,r30
	clr r30
	lsl r31
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	mov r22,r23
	clr r23
	lsr r22
	lsr r22
	mov r30,r20
	mov r31,r21
	mov r31,r30
	clr r30
	lsl r31
	lsl r31
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	mov r22,r23
	clr r23
	lsr r22
	lsr r22
	lsr r22
	mov r30,r20
	mov r31,r21
	mov r31,r30
	clr r30
	lsl r31
	lsl r31
	lsl r31
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	mov r22,r23
	clr r23
	swap r22
	andi r22,0x0f
	mov r30,r20
	mov r31,r21
	mov r31,r30
	clr r30
	swap r31
	andi r31,0xf0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	mov r22,r23
	clr r23
	swap r22
	lsr r22
	andi r22,0x07
	mov r30,r20
	mov r31,r21
	mov r31,r30
	clr r30
	swap r31
	lsl r31
	andi r31,0xe0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L747
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	mov r22,r18
	mov r23,r19
	clr r22
	lsl r23
	rol r22
	lsl r23
	rol r22
	clr r23
	mov r30,r20
	mov r31,r21
	clr r31
	lsr r30
	ror r31
	lsr r30
	ror r31
	clr r30
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L747
	clr r21
	lsr r20
	ror r21
	clr r20
	lsl r19
	sbc r18,r18
	mov r19,r18
	and r18,r20
	and r19,r21
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r30
	and r23,r31
	add r24,r22
	adc r25,r23
	add r24,r18
	adc r25,r19
	ret
.L750:
	ldi r24,0
	ldi r25,0
.L747:
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
	brlo .L794
	mov r26,r18
	mov r27,r19
	add r26,r28
	adc r27,r29
	cp r26,r16
	cpc r27,r17
	brlo .+2
	rjmp .L807
.L794:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L797
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
.L798:
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
	brne .L798
.L797:
	cp r24,r28
	cpc r25,r29
	brsh .L793
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
.L799:
	ld r24,Z+
	st X+,r24
	cp r30,r18
	cpc r31,r19
	brne .L799
.L793:
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
.L807:
	sbiw r28,0
	breq .L793
	add r28,r16
	adc r29,r17
.L800:
	ld r24,-X
	st -Y,r24
	cp r18,r26
	cpc r19,r27
	brne .L800
	rjmp .L793
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
	brlo .L809
	mov r30,r16
	mov r31,r17
	add r30,r14
	adc r31,r15
	cp r30,r28
	cpc r31,r29
	brsh .L824
.L809:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L812
	mov r30,r16
	mov r31,r17
	mov r26,r28
	mov r27,r29
	lsl r18
	rol r19
	add r18,r16
	adc r19,r17
.L813:
	ld r24,Z+
	ld r25,Z+
	st X+,r24
	st X+,r25
	cp r30,r18
	cpc r31,r19
	brne .L813
.L812:
	sbrs r14,0
	rjmp .L808
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
.L808:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L824:
	add r28,r14
	adc r29,r15
	or r14,r15
	breq .L808
.L815:
	ld r24,-Z
	st -Y,r24
	cp r16,r30
	cpc r17,r31
	brne .L815
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
	brlo .L826
	mov r24,r18
	mov r25,r19
	add r24,r16
	adc r25,r17
	cp r24,r14
	cpc r25,r15
	brsh .L839
.L826:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L829
	mov r30,r18
	mov r31,r19
	mov r28,r14
	mov r29,r15
	lsl r20
	rol r21
	add r20,r18
	adc r21,r19
.L830:
	ld r24,Z+
	ld r25,Z+
	st Y+,r24
	st Y+,r25
	cp r30,r20
	cpc r31,r21
	brne .L830
.L829:
	cp r26,r16
	cpc r27,r17
	brsh .L825
	mov r30,r18
	mov r31,r19
	add r30,r26
	adc r31,r27
	add r26,r14
	adc r27,r15
	add r18,r16
	adc r19,r17
.L831:
	ld r24,Z+
	st X+,r24
	cp r30,r18
	cpc r31,r19
	brne .L831
.L825:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L839:
	mov r26,r24
	mov r27,r25
	mov r30,r14
	mov r31,r15
	add r30,r16
	adc r31,r17
	or r16,r17
	breq .L825
.L832:
	ld r24,-X
	st -Z,r24
	cp r18,r26
	cpc r19,r27
	brne .L832
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
	mov r18,r24
	mov r19,r25
	sbrc r19,7
	rjmp .L849
	sbrc r19,6
	rjmp .L850
	sbrc r19,5
	rjmp .L851
	sbrc r19,4
	rjmp .L852
	sbrc r19,3
	rjmp .L853
	sbrc r19,2
	rjmp .L854
	sbrc r19,1
	rjmp .L855
	sbrc r19,0
	rjmp .L856
	sbrc r18,7
	rjmp .L857
	sbrc r18,6
	rjmp .L858
	sbrc r18,5
	rjmp .L859
	sbrc r18,4
	rjmp .L860
	sbrc r18,3
	rjmp .L861
	sbrc r18,2
	rjmp .L862
	sbrc r18,1
	rjmp .L863
	or r18,r19
	brne .L865
	ldi r24,lo8(16)
	ldi r25,0
/* epilogue start */
	ret
.L849:
	ldi r24,0
	ldi r25,0
	ret
.L850:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L861:
	ldi r24,lo8(12)
	ldi r25,0
	ret
.L851:
	ldi r24,lo8(2)
	ldi r25,0
	ret
.L852:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L853:
	ldi r24,lo8(4)
	ldi r25,0
	ret
.L854:
	ldi r24,lo8(5)
	ldi r25,0
	ret
.L855:
	ldi r24,lo8(6)
	ldi r25,0
	ret
.L856:
	ldi r24,lo8(7)
	ldi r25,0
	ret
.L857:
	ldi r24,lo8(8)
	ldi r25,0
	ret
.L858:
	ldi r24,lo8(9)
	ldi r25,0
	ret
.L859:
	ldi r24,lo8(10)
	ldi r25,0
	ret
.L860:
	ldi r24,lo8(11)
	ldi r25,0
	ret
.L862:
	ldi r24,lo8(13)
	ldi r25,0
	ret
.L863:
	ldi r24,lo8(14)
	ldi r25,0
	ret
.L865:
	ldi r24,lo8(15)
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
	mov r18,r24
	mov r19,r25
	sbrc r18,0
	rjmp .L869
	sbrc r18,1
	rjmp .L870
	sbrc r18,2
	rjmp .L871
	sbrc r18,3
	rjmp .L872
	sbrc r18,4
	rjmp .L873
	sbrc r18,5
	rjmp .L874
	sbrc r18,6
	rjmp .L875
	sbrc r18,7
	rjmp .L876
	sbrc r19,0
	rjmp .L877
	sbrc r19,1
	rjmp .L878
	sbrc r19,2
	rjmp .L879
	sbrc r19,3
	rjmp .L880
	sbrc r19,4
	rjmp .L881
	sbrc r19,5
	rjmp .L882
	sbrc r19,6
	rjmp .L883
	or r18,r19
	brne .L885
	ldi r24,lo8(16)
	ldi r25,0
/* epilogue start */
	ret
.L869:
	ldi r24,0
	ldi r25,0
	ret
.L870:
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L881:
	ldi r24,lo8(12)
	ldi r25,0
	ret
.L871:
	ldi r24,lo8(2)
	ldi r25,0
	ret
.L872:
	ldi r24,lo8(3)
	ldi r25,0
	ret
.L873:
	ldi r24,lo8(4)
	ldi r25,0
	ret
.L874:
	ldi r24,lo8(5)
	ldi r25,0
	ret
.L875:
	ldi r24,lo8(6)
	ldi r25,0
	ret
.L876:
	ldi r24,lo8(7)
	ldi r25,0
	ret
.L877:
	ldi r24,lo8(8)
	ldi r25,0
	ret
.L878:
	ldi r24,lo8(9)
	ldi r25,0
	ret
.L879:
	ldi r24,lo8(10)
	ldi r25,0
	ret
.L880:
	ldi r24,lo8(11)
	ldi r25,0
	ret
.L882:
	ldi r24,lo8(13)
	ldi r25,0
	ret
.L883:
	ldi r24,lo8(14)
	ldi r25,0
	ret
.L885:
	ldi r24,lo8(15)
	ldi r25,0
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
	sbrs r24,7
	rjmp .L892
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
.L886:
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
.L892:
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
	subi r23,-128
	sbci r24,-1
	sbci r25,-1
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	rjmp .L886
	.size	__fixunssfsi, .-__fixunssfsi
.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	bst r18,1
	clr r24
	clr r25
	bld r24,0
	mov r20,r18
	andi r20,1<<0
	clr r21
	add r24,r20
	adc r25,r21
	bst r18,2
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r18,3
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r18,4
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r18,5
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r18,6
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r18,7
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	mov r20,r19
	andi r20,1<<0
	clr r21
	add r24,r20
	adc r25,r21
	bst r19,1
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r19,2
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r19,3
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r19,4
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r19,5
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r19,6
	clr r20
	clr r21
	bld r20,0
	add r24,r20
	adc r25,r21
	bst r19,7
	clr r18
	clr r19
	bld r18,0
	add r24,r18
	adc r25,r19
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
	mov r20,r24
	mov r21,r25
	bst r20,1
	clr r18
	clr r19
	bld r18,0
	mov r24,r20
	andi r24,1<<0
	clr r25
	add r18,r24
	adc r19,r25
	bst r20,2
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r20,3
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r20,4
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r20,5
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r20,6
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r20,7
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	mov r24,r21
	andi r24,1<<0
	clr r25
	add r18,r24
	adc r19,r25
	bst r21,1
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r21,2
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r21,3
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r21,4
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r21,5
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r21,6
	clr r24
	clr r25
	bld r24,0
	add r18,r24
	adc r19,r25
	bst r21,7
	clr r24
	clr r25
	bld r24,0
	add r24,r18
	adc r25,r19
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
	breq .L895
.L897:
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
	brne .L897
.L895:
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
	brne .L906
	rjmp .L900
.L902:
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
.L906:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L902
.L900:
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
	brsh .L909
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L908
.L912:
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
	brsh .L910
	subi r18, 1
	sbci r19, 0
	breq .L918
.L908:
	sbrs r15,7
	rjmp .L912
.L909:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L914:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L913
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
.L913:
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
	brne .L914
.L911:
	or r30,r31
	breq .L907
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
.L907:
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
.L910:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L909
.L918:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L911
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
	sbrc r24,7
	rjmp .L924
	clr r15
	inc r15
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
	cp __zero_reg__,r24
	brge .L925
.L923:
	mov r24,r15
	ldi r25,0
.L921:
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
.L925:
	mov r15,__zero_reg__
	rjmp .L923
.L924:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L921
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
	sbrc r24,7
	rjmp .L929
	clr r15
	inc r15
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
	cp __zero_reg__,r24
	brge .L930
.L928:
	mov r24,r15
	ldi r25,0
.L926:
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
.L930:
	mov r15,__zero_reg__
	rjmp .L928
.L929:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L926
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
	mov r10,r14
	mov r11,r15
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
	mov r30,r22
	mov r31,r23
	sbrc r31,7
	rjmp .L982
	sbiw r30,0
	brne .+2
	rjmp .L941
	mov r24,r30
	andi r24,1<<0
	clr r25
	neg r25
	neg r24
	sbc r25,__zero_reg__
	and r24,r20
	and r25,r21
	mov r22,r20
	mov r23,r21
	lsl r22
	rol r23
	mov r18,r30
	mov r19,r31
	asr r19
	ror r18
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L983
	andi r18,1
	clr r19
	neg r19
	neg r18
	sbc r19,__zero_reg__
	and r18,r22
	and r19,r23
	add r24,r18
	adc r25,r19
	lsl r20
	rol r21
	lsl r20
	rol r21
	mov r18,r30
	mov r19,r31
	asr r19
	ror r18
	asr r19
	ror r18
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L933
	ldi r30,0
	ldi r31,0
.L939:
	mov r22,r18
	andi r22,1<<0
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r20
	and r23,r21
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	lsl r26
	rol r27
	mov r22,r18
	mov r23,r19
	asr r23
	ror r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	lsl r26
	rol r27
	lsl r26
	rol r27
	mov r22,r18
	mov r23,r19
	asr r23
	ror r22
	asr r23
	ror r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	lsl r26
	rol r27
	lsl r26
	rol r27
	lsl r26
	rol r27
	mov r22,r18
	mov r23,r19
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	swap r26
	swap r27
	andi r27,0xf0
	eor r27,r26
	andi r26,0xf0
	eor r27,r26
	mov r22,r18
	mov r23,r19
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	lsl r26
	rol r27
	swap r26
	swap r27
	andi r27,0xf0
	eor r27,r26
	andi r26,0xf0
	eor r27,r26
	mov r22,r18
	mov r23,r19
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	asr r23
	ror r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	clr __tmp_reg__
	lsr r27
	ror r26
	ror __tmp_reg__
	lsr r27
	ror r26
	ror __tmp_reg__
	mov r27,r26
	mov r26,__tmp_reg__
	mov r22,r18
	mov r23,r19
	mov __tmp_reg__,r22
	mov r22,r23
	lsl __tmp_reg__
	rol r22
	sbc r23,r23
	lsl __tmp_reg__
	rol r22
	rol r23
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	lsr r27
	mov r27,r26
	clr r26
	ror r27
	ror r26
	mov r22,r18
	mov r23,r19
	lsl r22
	mov r22,r23
	rol r22
	sbc r23,r23
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r27,r20
	clr r26
	mov r22,r19
	clr r23
	sbrc r22,7
	dec r23
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	mov r27,r26
	clr r26
	lsl r27
	mov r22,r18
	mov r23,r19
	mov r22,r23
	lsl r23
	sbc r23,r23
	asr r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	mov r27,r26
	clr r26
	lsl r27
	lsl r27
	mov r22,r18
	mov r23,r19
	mov r22,r23
	lsl r23
	sbc r23,r23
	asr r22
	asr r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L940
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	mov r26,r20
	mov r27,r21
	mov r27,r26
	clr r26
	lsl r27
	lsl r27
	lsl r27
	mov r22,r18
	mov r23,r19
	mov r22,r23
	lsl r23
	sbc r23,r23
	asr r22
	asr r22
	asr r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L940
	mov r21,r20
	clr r20
	swap r21
	andi r21,0xf0
	mov r18,r19
	lsl r19
	sbc r19,r19
	asr r18
	asr r18
	asr r18
	asr r18
	neg r19
	neg r18
	sbc r19,__zero_reg__
	and r18,r20
	and r19,r21
	andi r22,1
	clr r23
	neg r23
	neg r22
	sbc r23,__zero_reg__
	and r22,r26
	and r23,r27
	add r24,r22
	adc r25,r23
	add r24,r18
	adc r25,r19
.L940:
	or r30,r31
	breq .L933
.L936:
	neg r25
	neg r24
	sbc r25,__zero_reg__
	ret
.L941:
	ldi r24,0
	ldi r25,0
.L933:
/* epilogue start */
	ret
.L982:
	clr r22
	clr r23
	sub r22,r30
	sbc r23,r31
	mov r18,r30
	andi r18,1<<0
	clr r19
	neg r19
	neg r18
	sbc r19,__zero_reg__
	mov r24,r18
	mov r25,r19
	and r24,r20
	and r25,r21
	mov r30,r20
	mov r31,r21
	lsl r30
	rol r31
	mov r18,r22
	mov r19,r23
	asr r19
	ror r18
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L936
	andi r18,1
	clr r19
	neg r19
	neg r18
	sbc r19,__zero_reg__
	and r18,r30
	and r19,r31
	add r24,r18
	adc r25,r19
	lsl r20
	rol r21
	lsl r20
	rol r21
	mov r18,r22
	mov r19,r23
	asr r19
	ror r18
	asr r19
	ror r18
	ldi r30,lo8(1)
	ldi r31,0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L939
	rjmp .L936
.L983:
	ret
	.size	__mulhi3, .-__mulhi3
.global	__divsi3
	.type	__divsi3, @function
__divsi3:
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
	ldi r24,lo8(1)
	ldi r18,0
	ldi r19,0
	sbrs r11,7
	rjmp .L985
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	ldi r24,0
	ldi r18,lo8(1)
	ldi r19,0
.L985:
	sbrs r15,7
	rjmp .L986
	com r15
	com r14
	com r13
	com r12
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	mov r18,r24
	ldi r19,0
.L986:
	mov r27,r15
	mov r26,r14
	mov r25,r13
	mov r24,r12
	mov r15,r11
	mov r14,r10
	mov r13,r9
	mov r12,r8
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brsh .L988
	ldi r30,lo8(32)
	ldi r31,0
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L987
.L990:
	sbiw r30, 1
	breq .L991
.L987:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r20
	rol r21
	rol r22
	rol r23
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L990
.L991:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1002
.L988:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L993:
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L992
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
	or r8,r20
	or r9,r21
	or r10,r22
	or r11,r23
.L992:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L993
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
.L989:
	or r18,r19
	breq .L984
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.L984:
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
.L1002:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L989
	.size	__divsi3, .-__divsi3
.global	__modsi3
	.type	__modsi3, @function
__modsi3:
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
	ldi r30,0
	ldi r31,0
	sbrs r11,7
	rjmp .L1004
	com r11
	com r10
	com r9
	com r8
	adc r8,__zero_reg__
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	ldi r30,lo8(1)
	ldi r31,0
.L1004:
	mov r12,r18
	mov r13,r19
	mov r14,r20
	mov r15,r21
	sbrs r15,7
	rjmp .L1005
	com r15
	com r14
	com r13
	com r12
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
.L1005:
	mov r27,r15
	mov r26,r14
	mov r25,r13
	mov r24,r12
	mov r15,r11
	mov r14,r10
	mov r13,r9
	mov r12,r8
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brsh .L1012
	ldi r18,lo8(32)
	ldi r19,0
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L1006
.L1009:
	subi r18, 1
	sbci r19, 0
	breq .L1010
.L1006:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r20
	rol r21
	rol r22
	rol r23
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L1009
.L1010:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L1021
.L1012:
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L1011
	sub r12,r24
	sbc r13,r25
	sbc r14,r26
	sbc r15,r27
.L1011:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr r27
	ror r26
	ror r25
	ror r24
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L1012
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
.L1008:
	or r30,r31
	breq .L1003
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.L1003:
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
.L1021:
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rjmp .L1008
	.size	__modsi3, .-__modsi3
.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r30,r24
	mov r31,r25
	mov r26,r22
	mov r27,r23
	mov r28,r20
	mov r29,r21
	cp r26,r30
	cpc r27,r31
	brlo .+2
	rjmp .L1134
	sbrc r27,7
	rjmp .L1025
	mov r18,r26
	mov r19,r27
	lsl r18
	rol r19
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1026
	sbrc r19,7
	rjmp .L1027
	mov r18,r26
	mov r19,r27
	lsl r18
	rol r19
	lsl r18
	rol r19
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1028
	sbrc r19,7
	rjmp .L1029
	mov r18,r26
	mov r19,r27
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1030
	sbrc r19,7
	rjmp .L1031
	mov r18,r26
	mov r19,r27
	swap r18
	swap r19
	andi r19,0xf0
	eor r19,r18
	andi r18,0xf0
	eor r19,r18
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1032
	sbrc r19,7
	rjmp .L1033
	mov r18,r26
	mov r19,r27
	lsl r18
	rol r19
	swap r18
	swap r19
	andi r19,0xf0
	eor r19,r18
	andi r18,0xf0
	eor r19,r18
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1034
	sbrc r19,7
	rjmp .L1035
	mov r18,r26
	mov r19,r27
	clr __tmp_reg__
	lsr r19
	ror r18
	ror __tmp_reg__
	lsr r19
	ror r18
	ror __tmp_reg__
	mov r19,r18
	mov r18,__tmp_reg__
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1036
	sbrc r19,7
	rjmp .L1037
	mov r18,r26
	mov r19,r27
	lsr r19
	mov r19,r18
	clr r18
	ror r19
	ror r18
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1038
	sbrc r19,7
	rjmp .L1039
	mov r19,r26
	clr r18
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1040
	sbrc r19,7
	rjmp .L1041
	mov r18,r26
	mov r19,r27
	mov r19,r18
	clr r18
	lsl r19
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1042
	sbrc r19,7
	rjmp .L1043
	mov r18,r26
	mov r19,r27
	mov r19,r18
	clr r18
	lsl r19
	lsl r19
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1044
	sbrc r19,7
	rjmp .L1045
	mov r18,r26
	mov r19,r27
	mov r19,r18
	clr r18
	lsl r19
	lsl r19
	lsl r19
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1046
	sbrc r19,7
	rjmp .L1047
	mov r18,r26
	mov r19,r27
	mov r19,r18
	clr r18
	swap r19
	andi r19,0xf0
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1048
	sbrc r19,7
	rjmp .L1049
	mov r18,r26
	mov r19,r27
	mov r19,r18
	clr r18
	swap r19
	lsl r19
	andi r19,0xe0
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1050
	sbrc r19,7
	rjmp .L1051
	mov r18,r26
	mov r19,r27
	clr r19
	lsr r18
	ror r19
	lsr r18
	ror r19
	clr r18
	cp r18,r30
	cpc r19,r31
	brlo .+2
	rjmp .L1052
	sbrc r19,7
	rjmp .L1053
	mov r20,r26
	mov r21,r27
	clr r21
	lsr r20
	ror r21
	clr r20
	cp r20,r30
	cpc r21,r31
	brlo .+2
	rjmp .L1054
	mov r24,r30
	mov r25,r31
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .+2
	rjmp .L1135
.L1055:
	or r28,r29
	brne .L1022
	mov r24,r20
	mov r25,r21
.L1022:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L1042:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1088
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,0
	ldi r23,lo8(2)
	ldi r20,0
	ldi r21,lo8(2)
.L1057:
	mov r30,r22
	mov r31,r23
	lsr r31
	ror r30
	lsr r31
	ror r30
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	lsr r27
	ror r26
	sbiw r30,0
	breq .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1058
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1058:
	mov r30,r22
	mov r31,r23
	lsr r31
	ror r30
	lsr r31
	ror r30
	lsr r31
	ror r30
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	lsr r27
	ror r26
	lsr r27
	ror r26
	sbiw r30,0
	breq .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1059
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1059:
	mov r30,r22
	mov r31,r23
	swap r31
	swap r30
	andi r30,0x0f
	eor r30,r31
	andi r31,0x0f
	eor r30,r31
	mov r26,r18
	mov r27,r19
	swap r27
	swap r26
	andi r26,0x0f
	eor r26,r27
	andi r27,0x0f
	eor r26,r27
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1060
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1060:
	mov r30,r22
	mov r31,r23
	lsr r31
	ror r30
	swap r31
	swap r30
	andi r30,0x0f
	eor r30,r31
	andi r31,0x0f
	eor r30,r31
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	swap r27
	swap r26
	andi r26,0x0f
	eor r26,r27
	andi r27,0x0f
	eor r26,r27
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1061
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1061:
	mov r30,r22
	mov r31,r23
	clr __tmp_reg__
	lsl r30
	rol r31
	rol __tmp_reg__
	lsl r30
	rol r31
	rol __tmp_reg__
	mov r30,r31
	mov r31,__tmp_reg__
	mov r26,r18
	mov r27,r19
	clr __tmp_reg__
	lsl r26
	rol r27
	rol __tmp_reg__
	lsl r26
	rol r27
	rol __tmp_reg__
	mov r26,r27
	mov r27,__tmp_reg__
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1062
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1062:
	mov r30,r22
	mov r31,r23
	lsl r30
	mov r30,r31
	rol r30
	sbc r31,r31
	neg r31
	mov r26,r18
	mov r27,r19
	lsl r26
	mov r26,r27
	rol r26
	sbc r27,r27
	neg r27
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1063
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1063:
	mov r30,r23
	clr r31
	mov r26,r19
	clr r27
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1064
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1064:
	mov r30,r22
	mov r31,r23
	mov r30,r31
	clr r31
	lsr r30
	mov r26,r18
	mov r27,r19
	mov r26,r27
	clr r27
	lsr r26
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1065
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1065:
	mov r30,r22
	mov r31,r23
	mov r30,r31
	clr r31
	lsr r30
	lsr r30
	mov r26,r18
	mov r27,r19
	mov r26,r27
	clr r27
	lsr r26
	lsr r26
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1066
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1066:
	mov r30,r22
	mov r31,r23
	mov r30,r31
	clr r31
	lsr r30
	lsr r30
	lsr r30
	mov r26,r18
	mov r27,r19
	mov r26,r27
	clr r27
	lsr r26
	lsr r26
	lsr r26
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1067
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1067:
	mov r30,r22
	mov r31,r23
	mov r30,r31
	clr r31
	swap r30
	andi r30,0x0f
	mov r26,r18
	mov r27,r19
	mov r26,r27
	clr r27
	swap r26
	andi r26,0x0f
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1068
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1068:
	mov r30,r22
	mov r31,r23
	mov r30,r31
	clr r31
	swap r30
	lsr r30
	andi r30,0x07
	mov r26,r18
	mov r27,r19
	mov r26,r27
	clr r27
	swap r26
	lsr r26
	andi r26,0x07
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1069
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1069:
	mov r30,r22
	mov r31,r23
	clr r30
	lsl r31
	rol r30
	lsl r31
	rol r30
	clr r31
	mov r26,r18
	mov r27,r19
	clr r26
	lsl r27
	rol r26
	lsl r27
	rol r26
	clr r27
	sbiw r30,0
	brne .+2
	rjmp .L1055
	cp r24,r26
	cpc r25,r27
	brlo .L1070
	sub r24,r26
	sbc r25,r27
	or r20,r30
	or r21,r31
.L1070:
	bst r19,7
	clr r18
	clr r19
	bld r18,0
	cp r22,__zero_reg__
	sbci r23,64
	brne .+2
	rjmp .L1055
	cp r24,r18
	cpc r25,r19
	brlo .L1078
	sub r24,r18
	sbc r25,r19
	ori r20,1
	rjmp .L1055
.L1078:
	ldi r24,0
	ldi r25,0
	rjmp .L1055
.L1134:
	mov r24,r30
	mov r25,r31
	ldi r20,0
	ldi r21,0
	cp r26,r30
	cpc r27,r31
	breq .+2
	rjmp .L1055
	ldi r20,lo8(1)
	ldi r21,0
	ldi r24,0
	ldi r25,0
	rjmp .L1055
.L1025:
	mov r24,r30
	mov r25,r31
	sub r24,r26
	sbc r25,r27
	ldi r20,lo8(1)
	ldi r21,0
	rjmp .L1055
.L1026:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1080
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,lo8(2)
	ldi r23,0
	ldi r20,lo8(2)
	ldi r21,0
	rjmp .L1057
.L1027:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	andi r27,127
	ldi r16,lo8(1)
	ldi r17,0
	ldi r22,lo8(2)
	ldi r23,0
	ldi r20,lo8(2)
	ldi r21,0
.L1075:
	cp r24,r26
	cpc r25,r27
	brsh .+2
	rjmp .L1057
	sub r24,r26
	sbc r25,r27
	or r20,r16
	or r21,r17
	rjmp .L1057
.L1028:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1081
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,lo8(4)
	ldi r23,0
	ldi r20,lo8(4)
	ldi r21,0
	rjmp .L1057
.L1029:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,lo8(2)
	ldi r17,0
	ldi r22,lo8(4)
	ldi r23,0
	ldi r20,lo8(4)
	ldi r21,0
	rjmp .L1075
.L1030:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1082
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,lo8(8)
	ldi r23,0
	ldi r20,lo8(8)
	ldi r21,0
	rjmp .L1057
.L1031:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,lo8(4)
	ldi r17,0
	ldi r22,lo8(8)
	ldi r23,0
	ldi r20,lo8(8)
	ldi r21,0
	rjmp .L1075
.L1032:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1083
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,lo8(16)
	ldi r23,0
	ldi r20,lo8(16)
	ldi r21,0
	rjmp .L1057
.L1033:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,lo8(8)
	ldi r17,0
	ldi r22,lo8(16)
	ldi r23,0
	ldi r20,lo8(16)
	ldi r21,0
	rjmp .L1075
.L1034:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1084
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,lo8(32)
	ldi r23,0
	ldi r20,lo8(32)
	ldi r21,0
	rjmp .L1057
.L1035:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,lo8(16)
	ldi r17,0
	ldi r22,lo8(32)
	ldi r23,0
	ldi r20,lo8(32)
	ldi r21,0
	rjmp .L1075
.L1036:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1085
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,lo8(64)
	ldi r23,0
	ldi r20,lo8(64)
	ldi r21,0
	rjmp .L1057
.L1037:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,lo8(32)
	ldi r17,0
	ldi r22,lo8(64)
	ldi r23,0
	ldi r20,lo8(64)
	ldi r21,0
	rjmp .L1075
.L1038:
	cp r30,r18
	cpc r31,r19
	brsh .+2
	rjmp .L1086
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,lo8(-128)
	ldi r23,0
	ldi r20,lo8(-128)
	ldi r21,0
	rjmp .L1057
.L1039:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,lo8(64)
	ldi r17,0
	ldi r22,lo8(-128)
	ldi r23,0
	ldi r20,lo8(-128)
	ldi r21,0
	rjmp .L1075
.L1041:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,lo8(-128)
	ldi r17,0
	ldi r22,0
	ldi r23,lo8(1)
	ldi r20,0
	ldi r21,lo8(1)
	rjmp .L1075
.L1043:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,0
	ldi r17,lo8(1)
	ldi r22,0
	ldi r23,lo8(2)
	ldi r20,0
	ldi r21,lo8(2)
	rjmp .L1075
.L1080:
	ldi r22,lo8(2)
	ldi r23,0
.L1074:
	mov r16,r22
	mov r17,r23
	lsr r17
	ror r16
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	mov r24,r30
	mov r25,r31
	ldi r20,0
	ldi r21,0
	rjmp .L1075
.L1045:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,0
	ldi r17,lo8(2)
	ldi r22,0
	ldi r23,lo8(4)
	ldi r20,0
	ldi r21,lo8(4)
	rjmp .L1075
.L1047:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,0
	ldi r17,lo8(4)
	ldi r22,0
	ldi r23,lo8(8)
	ldi r20,0
	ldi r21,lo8(8)
	rjmp .L1075
.L1081:
	ldi r22,lo8(4)
	ldi r23,0
	rjmp .L1074
.L1082:
	ldi r22,lo8(8)
	ldi r23,0
	rjmp .L1074
.L1049:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,0
	ldi r17,lo8(8)
	ldi r22,0
	ldi r23,lo8(16)
	ldi r20,0
	ldi r21,lo8(16)
	rjmp .L1075
.L1051:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,0
	ldi r17,lo8(16)
	ldi r22,0
	ldi r23,lo8(32)
	ldi r20,0
	ldi r21,lo8(32)
	rjmp .L1075
.L1083:
	ldi r22,lo8(16)
	ldi r23,0
	rjmp .L1074
.L1053:
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	mov r26,r18
	mov r27,r19
	lsr r27
	ror r26
	ldi r16,0
	ldi r17,lo8(32)
	ldi r22,0
	ldi r23,lo8(64)
	ldi r20,0
	ldi r21,lo8(64)
	rjmp .L1075
.L1084:
	ldi r22,lo8(32)
	ldi r23,0
	rjmp .L1074
.L1085:
	ldi r22,lo8(64)
	ldi r23,0
	rjmp .L1074
.L1054:
	ldi r18,0
	ldi r19,lo8(-128)
	ldi r22,0
	ldi r23,lo8(-128)
	ldi r20,0
	ldi r21,lo8(-128)
	ldi r24,0
	ldi r25,0
	sbrc r31,7
	rjmp .L1057
	rjmp .L1074
.L1135:
	mov r24,r30
	mov r25,r31
	subi r25,-128
	ldi r26,0
	ldi r27,lo8(64)
	ldi r16,0
	ldi r17,lo8(64)
	ldi r18,0
	ldi r19,lo8(-128)
	ldi r22,0
	ldi r23,lo8(-128)
	ldi r20,0
	ldi r21,lo8(-128)
	rjmp .L1075
.L1086:
	ldi r22,lo8(-128)
	ldi r23,0
	rjmp .L1074
.L1040:
	cp r30,r18
	cpc r31,r19
	brlo .L1087
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,0
	ldi r23,lo8(1)
	ldi r20,0
	ldi r21,lo8(1)
	rjmp .L1057
.L1087:
	ldi r22,0
	ldi r23,lo8(1)
	rjmp .L1074
.L1044:
	cp r30,r18
	cpc r31,r19
	brlo .L1089
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,0
	ldi r23,lo8(4)
	ldi r20,0
	ldi r21,lo8(4)
	rjmp .L1057
.L1052:
	cp r30,r18
	cpc r31,r19
	brlo .L1093
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,0
	ldi r23,lo8(64)
	ldi r20,0
	ldi r21,lo8(64)
	rjmp .L1057
.L1089:
	ldi r22,0
	ldi r23,lo8(4)
	rjmp .L1074
.L1093:
	ldi r22,0
	ldi r23,lo8(64)
	rjmp .L1074
.L1088:
	ldi r22,0
	ldi r23,lo8(2)
	rjmp .L1074
.L1050:
	cp r30,r18
	cpc r31,r19
	brlo .L1092
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,0
	ldi r23,lo8(32)
	ldi r20,0
	ldi r21,lo8(32)
	rjmp .L1057
.L1048:
	cp r30,r18
	cpc r31,r19
	brlo .L1091
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,0
	ldi r23,lo8(16)
	ldi r20,0
	ldi r21,lo8(16)
	rjmp .L1057
.L1046:
	cp r30,r18
	cpc r31,r19
	brlo .L1090
	mov r24,r30
	mov r25,r31
	sub r24,r18
	sbc r25,r19
	ldi r22,0
	ldi r23,lo8(8)
	ldi r20,0
	ldi r21,lo8(8)
	rjmp .L1057
.L1092:
	ldi r22,0
	ldi r23,lo8(32)
	rjmp .L1074
.L1091:
	ldi r22,0
	ldi r23,lo8(16)
	rjmp .L1074
.L1090:
	ldi r22,0
	ldi r23,lo8(8)
	rjmp .L1074
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
	brsh .L1138
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L1137
.L1141:
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
	brsh .L1139
	subi r18, 1
	sbci r19, 0
	breq .L1147
.L1137:
	sbrs r15,7
	rjmp .L1141
.L1138:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L1143:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L1142
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
.L1142:
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
	brne .L1143
.L1140:
	or r30,r31
	breq .L1136
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
.L1136:
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
.L1139:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L1138
.L1147:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L1140
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
	rjmp .L1151
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
.L1152:
	mov r31,r16
	mov r30,r17
	mov r20,r18
	mov r21,r19
	mov r22,r24
	mov r23,r25
	mov r17,r26
	mov r25,r27
.L1150:
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
.L1151:
	sbiw r30,0
	breq .L1154
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
	rjmp .L1152
.L1154:
	mov r31,r18
	mov r30,r19
	mov r17,r24
	rjmp .L1150
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
	rjmp .L1156
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
.L1157:
	mov r31,r24
	mov r30,r25
	mov r20,r26
	mov r21,r27
	mov r22,r16
	mov r23,r17
	mov r24,r18
	mov r25,r19
.L1155:
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
.L1156:
	sbiw r30,0
	breq .L1159
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
	rjmp .L1157
.L1159:
	mov r31,r18
	mov r30,r19
	rjmp .L1155
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
	brlo .L1163
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L1163:
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
	breq .L1164
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L1164:
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
	breq .L1165
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L1165:
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
	breq .L1166
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L1166:
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
	rjmp .L1167
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
.L1168:
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
.L1167:
	ldi r18,0
	ldi r19,0
	rjmp .L1168
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
	brlt .L1182
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlt .L1183
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
	brlo .L1182
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L1183
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1178
.L1182:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L1178:
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
.L1183:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1178
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
	brlt .L1189
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlt .L1188
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
	brlo .L1189
	ldi r18,lo8(1)
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L1190
	mov r22,r18
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1184
.L1189:
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L1184:
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
.L1190:
	ldi r18,0
	mov r22,r18
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1184
.L1188:
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1184
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
	breq .L1192
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L1192:
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
	breq .L1193
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L1193:
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
	breq .L1194
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L1194:
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
	breq .L1195
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L1195:
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
	rjmp .L1209
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
.L1210:
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r22,r4
	mov r23,r5
	mov r24,r6
	mov r25,r7
.L1208:
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
.L1209:
	sbiw r30,0
	breq .L1212
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
	rjmp .L1210
.L1212:
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	rjmp .L1208
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
	sbiw r28,36
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 36 */
/* stack size = 54 */
.L__stack_usage = 54
	std Y+29,r22
	std Y+30,r23
	std Y+31,r24
	std Y+32,r25
	std Y+33,r14
	std Y+34,r15
	std Y+35,r16
	std Y+36,r17
	std Y+13,r10
	std Y+14,r11
	std Y+15,r12
	std Y+16,r13
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	ldd r8,Y+17
	ldd r9,Y+18
	ldd r10,Y+19
	ldd r11,Y+20
	clr r10
	clr r11
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	clr r14
	clr r15
	mov r21,r15
	mov r20,r14
	mov r19,r13
	mov r18,r12
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsi3
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	mov r5,r21
	mov r4,r20
	clr r6
	clr r7
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	mov r25,r27
	mov r24,r26
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
	mov r25,r15
	mov r24,r14
	mov r23,r13
	mov r22,r12
	rcall __mulsi3
	add r4,r22
	adc r5,r23
	adc r6,r24
	adc r7,r25
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	clr r26
	clr r27
	mov r14,r4
	mov r15,r5
	clr r13
	clr r12
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	add r18,r12
	adc r19,r13
	adc r20,r14
	adc r21,r15
	std Y+25,r18
	std Y+26,r19
	std Y+27,r20
	std Y+28,r21
	mov r13,r15
	mov r12,r14
	clr r14
	clr r15
	ldd r24,Y+13
	ldd r25,Y+14
	ldd r26,Y+15
	ldd r27,Y+16
	mov r25,r27
	mov r24,r26
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
	mov r25,r11
	mov r24,r10
	mov r23,r9
	mov r22,r8
	rcall __mulsi3
	mov r8,r22
	mov r9,r23
	mov r10,r24
	mov r11,r25
	add r8,r12
	adc r9,r13
	adc r10,r14
	adc r11,r15
	ldd r24,Y+25
	ldd r25,Y+26
	ldd r26,Y+27
	ldd r27,Y+28
	clr r26
	clr r27
	mov r22,r8
	mov r23,r9
	clr r21
	clr r20
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	mov r3,r24
	mov r2,r25
	mov r16,r26
	mov r17,r27
	mov r13,r7
	mov r12,r6
	clr r14
	clr r15
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r20,Y+11
	ldd r21,Y+12
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	rcall __mulsi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
	mov r25,r11
	mov r24,r10
	clr r26
	clr r27
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	mov r12,r24
	mov r13,r25
	mov r14,r26
	mov r15,r27
	ldd r18,Y+33
	ldd r19,Y+34
	ldd r20,Y+35
	ldd r21,Y+36
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	rcall __mulsi3
	mov r4,r22
	mov r5,r23
	mov r6,r24
	mov r7,r25
	add r4,r12
	adc r5,r13
	adc r6,r14
	adc r7,r15
	ldd r18,Y+29
	ldd r19,Y+30
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	rcall __mulsi3
	add r4,r22
	adc r5,r23
	adc r6,r24
	adc r7,r25
	mov r22,r4
	mov r23,r5
	mov r18,r3
	mov r19,r2
	mov r20,r16
	mov r21,r17
	mov r24,r6
	mov r25,r7
/* epilogue start */
	adiw r28,36
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
	ldi r19,4
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r19
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
	ldi r30,4
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r30
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
	ldi r31,4
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r31
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
	mov r17,r22
	mov r16,r23
	mov r15,r24
	mov r14,r25
	std Y+9,r20
	std Y+10,r21
	ldd r24,Y+9
	ldd r25,Y+10
	std Y+20,r25
	std Y+19,r24
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	ldi r20,lo8(-128)
	mov r12,r20
	ldi r21,lo8(63)
	mov r13,r21
	sbrs r24,0
	rjmp .L1221
.L1224:
	std Y+1,r17
	std Y+2,r16
	std Y+3,r15
	std Y+4,r14
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
.L1221:
	ldd r24,Y+19
	ldd r25,Y+20
	sbrs r25,7
	rjmp .L1222
	adiw r24,1
	std Y+20,r25
	std Y+19,r24
.L1222:
	ldd r24,Y+19
	ldd r25,Y+20
	asr r25
	ror r24
	std Y+20,r25
	std Y+19,r24
	or r24,r25
	breq .L1223
.L1226:
	mov r8,r17
	mov r9,r16
	mov r10,r15
	mov r11,r14
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r17
	mov r5,r16
	mov r6,r15
	mov r7,r14
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r17,r22
	mov r16,r23
	mov r15,r24
	mov r14,r25
	ldd r24,Y+19
	ldd r25,Y+20
	sbrc r24,0
	rjmp .L1224
	sbrs r25,7
	rjmp .L1225
	adiw r24,1
	std Y+20,r25
	std Y+19,r24
.L1225:
	ldd r24,Y+19
	ldd r25,Y+20
	asr r25
	ror r24
	std Y+20,r25
	std Y+19,r24
	rjmp .L1226
.L1223:
	ldd r24,Y+9
	ldd r25,Y+10
	sbrs r25,7
	rjmp .L1220
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
.L1220:
	std Y+11,r2
	std Y+12,r3
	std Y+13,r12
	std Y+14,r13
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
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
	mov r17,r22
	mov r16,r23
	mov r15,r24
	mov r14,r25
	std Y+9,r20
	std Y+10,r21
	ldd r24,Y+9
	ldd r25,Y+10
	std Y+20,r25
	std Y+19,r24
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	ldi r20,lo8(-128)
	mov r12,r20
	ldi r21,lo8(63)
	mov r13,r21
	sbrs r24,0
	rjmp .L1231
.L1234:
	std Y+1,r17
	std Y+2,r16
	std Y+3,r15
	std Y+4,r14
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
.L1231:
	ldd r24,Y+19
	ldd r25,Y+20
	sbrs r25,7
	rjmp .L1232
	adiw r24,1
	std Y+20,r25
	std Y+19,r24
.L1232:
	ldd r24,Y+19
	ldd r25,Y+20
	asr r25
	ror r24
	std Y+20,r25
	std Y+19,r24
	or r24,r25
	breq .L1233
.L1236:
	mov r8,r17
	mov r9,r16
	mov r10,r15
	mov r11,r14
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r17
	mov r5,r16
	mov r6,r15
	mov r7,r14
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r17,r22
	mov r16,r23
	mov r15,r24
	mov r14,r25
	ldd r24,Y+19
	ldd r25,Y+20
	sbrc r24,0
	rjmp .L1234
	sbrs r25,7
	rjmp .L1235
	adiw r24,1
	std Y+20,r25
	std Y+19,r24
.L1235:
	ldd r24,Y+19
	ldd r25,Y+20
	asr r25
	ror r24
	std Y+20,r25
	std Y+19,r24
	rjmp .L1236
.L1233:
	ldd r24,Y+9
	ldd r25,Y+10
	sbrs r25,7
	rjmp .L1230
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
.L1230:
	std Y+11,r2
	std Y+12,r3
	std Y+13,r12
	std Y+14,r13
	ldd r22,Y+11
	ldd r23,Y+12
	ldd r24,Y+13
	ldd r25,Y+14
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
	brlo .L1244
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L1245
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
	brlo .L1244
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L1245
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1240
.L1244:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L1240:
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
.L1245:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1240
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
	brlo .L1251
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L1250
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
	brlo .L1251
	ldi r18,lo8(1)
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L1252
	mov r22,r18
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1246
.L1251:
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L1246:
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
.L1252:
	ldi r18,0
	mov r22,r18
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1246
.L1250:
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1246
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
.global	__lesf2
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
