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
	breq .L20
	mov r28,r22
	mov r29,r23
	mov r26,r16
	mov r27,r17
.L17:
	ld r25,Y+
	st X+,r25
	cp r25,r20
	cpc __zero_reg__,r21
	breq .L27
	sbiw r30,1
	sbiw r30,0
	brne .L17
.L20:
	ldi r24,0
	ldi r25,0
	rjmp .L15
.L27:
	mov r24,r26
	mov r25,r27
	or r30,r31
	breq .L20
.L15:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
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
	breq .L34
	mov r18,r24
	mov r19,r25
.L30:
	mov r26,r18
	mov r27,r19
	subi r18,-1
	sbci r19,-1
	ld r24,X
	cp r24,r22
	cpc __zero_reg__,r23
	breq .L37
	sbiw r30,1
	sbiw r30,0
	brne .L30
.L34:
	ldi r26,0
	ldi r27,0
	rjmp .L28
.L37:
	or r30,r31
	breq .L34
.L28:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	ret
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
	breq .L43
	mov r20,r26
	mov r21,r27
	mov r24,r30
	mov r25,r31
.L40:
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
	rjmp .L50
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L40
.L43:
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L50:
	or r18,r19
	breq .L43
	mov r24,r23
	sub r24,r22
	sbc r25,r25
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
	breq .L52
	mov r20,r18
	mov r21,r19
	rcall memcpy
.L52:
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
.L57:
	cp r26,r30
	cpc r27,r31
	breq .L60
	sbiw r30,1
	mov r24,r30
	mov r25,r31
	ld r18,Z
	cp r18,r22
	cpc __zero_reg__,r23
	brne .L57
	ret
.L60:
	ldi r24,0
	ldi r25,0
.L56:
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
	breq .L62
	add r18,r26
	adc r19,r27
	mov r30,r26
	mov r31,r27
.L63:
	st Z+,r22
	cp r18,r30
	cpc r19,r31
	brne .L63
.L62:
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
	breq .L71
	adiw r26,1
	adiw r30,1
.L70:
	mov r24,r30
	mov r25,r31
	ld r18,X+
	st Z+,r18
	cpse r18,__zero_reg__
	rjmp .L70
	ret
.L71:
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
	breq .L73
.L74:
	cp r24,r22
	cpc __zero_reg__,r23
	breq .L73
	adiw r30,1
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L74
.L73:
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
.L82:
	mov r24,r30
	mov r25,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r20
	cpc r0,r21
	breq .L80
	cpse r18,__zero_reg__
	rjmp .L82
	ldi r24,0
	ldi r25,0
.L80:
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
	rjmp .L85
	adiw r26,1
	adiw r30,1
.L86:
	cp r24, __zero_reg__
	breq .L85
	ld r24,X+
	ld r25,Z+
	cp r24,r25
	breq .L86
.L85:
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
	breq .L91
	mov r18,r26
	mov r19,r27
	subi r18,-1
	sbci r19,-1
.L90:
	mov r30,r18
	mov r31,r19
	subi r18,-1
	sbci r19,-1
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L90
.L89:
	mov r24,r30
	mov r25,r31
	sub r24,r26
	sbc r25,r27
/* epilogue start */
	ret
.L91:
	mov r30,r26
	mov r31,r27
	rjmp .L89
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
	breq .L93
	mov r30,r16
	mov r31,r17
	ld r24,Z
	cp r24, __zero_reg__
	breq .L95
	mov r30,r28
	mov r31,r29
	mov r26,r16
	mov r27,r17
	adiw r26,1
	add r18,r16
	adc r19,r17
.L96:
	mov r28,r30
	mov r29,r31
	ld r25,Z+
	cp r25, __zero_reg__
	breq .L95
	cp r26,r18
	cpc r27,r19
	breq .L95
	cpse r25,r24
	rjmp .L95
	ld r24,X+
	cpse r24,__zero_reg__
	rjmp .L96
	mov r28,r30
	mov r29,r31
.L95:
	ld r25,Y
	sub r24,r25
	sbc r25,r25
.L93:
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
	brlt .L106
	andi r18,254
	add r18,r30
	adc r19,r31
.L108:
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
	brne .L108
.L106:
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
	brlo .L111
	ldi r24,0
	ldi r25,0
.L111:
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
	brlo .L113
	ldi r24,0
	ldi r25,0
.L113:
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
	breq .L117
	cpi r18,9
	cpc r19,__zero_reg__
	breq .L117
	ldi r24,0
.L117:
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
	brlo .L124
	cpi r18,127
	cpc r19,__zero_reg__
	breq .L124
	ldi r24,0
.L124:
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
	brlo .L129
	ldi r24,0
	ldi r25,0
.L129:
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
	brlo .L131
	ldi r24,0
	ldi r25,0
.L131:
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
	brlo .L133
	ldi r24,0
	ldi r25,0
.L133:
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
	brlo .L135
	ldi r24,0
	ldi r25,0
.L135:
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
	breq .L140
	subi r18,9
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L140
	ldi r24,0
.L140:
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
	brlo .L142
	ldi r24,0
	ldi r25,0
.L142:
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
	brlo .L148
	mov r24,r18
	mov r25,r19
	subi r24,127
	sbc r25,__zero_reg__
	cpi r24,33
	cpc r25,__zero_reg__
	brlo .L148
	subi r24,-87
	sbci r25,31
	sbiw r24,2
	brlo .L148
	subi r18,-7
	sbci r19,-1
	ldi r24,lo8(1)
	cpi r18,3
	cpc r19,__zero_reg__
	brlo .L149
	ldi r24,0
	rjmp .L149
.L148:
	ldi r24,lo8(1)
.L149:
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
	ldi r25,0
	cpi r18,10
	cpc r19,__zero_reg__
	brlo .L151
	ldi r24,0
	ldi r25,0
.L151:
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
	brlo .L162
	cpi r18,40
	ldi r20,32
	cpc r19,r20
	brlo .L159
	mov r24,r18
	mov r25,r19
	subi r24,42
	sbci r25,32
	cpi r24,-42
	ldi r20,-73
	cpc r25,r20
	brlo .L159
	subi r24,-42
	sbci r25,-65
	cpi r24,-7
	sbci r25,31
	brlo .L159
	andi r18,254
	ldi r24,lo8(1)
	cpi r18,-2
	sbci r19,-1
	brne .L160
	rjmp .L161
.L162:
	subi r18,-1
	sbci r19,-1
	andi r18,127
	clr r19
	ldi r24,lo8(1)
	cpi r18,33
	cpc r19,__zero_reg__
	brsh .L160
.L161:
	ldi r24,0
	rjmp .L160
.L159:
	ldi r24,lo8(1)
.L160:
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
	brlo .L166
	ori r18,32
	subi r18,97
	sbc r19,__zero_reg__
	ldi r24,lo8(1)
	cpi r18,6
	cpc r19,__zero_reg__
	brlo .L167
	ldi r24,0
	rjmp .L167
.L166:
	ldi r24,lo8(1)
.L167:
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
	rjmp .L172
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
	rjmp .L173
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
	breq .L176
	brlt .L176
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
.L169:
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
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldd r25,Y+29
	rjmp .L169
.L173:
	mov r22,r15
	mov r23,r16
	mov r24,r17
	ldd r25,Y+30
	rjmp .L169
.L176:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L169
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
	rjmp .L180
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
	rjmp .L181
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
	breq .L184
	brlt .L184
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
.L177:
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
.L180:
	mov r22,r12
	mov r23,r13
	mov r24,r14
	ldd r25,Y+29
	rjmp .L177
.L181:
	mov r22,r15
	mov r23,r16
	mov r24,r17
	ldd r25,Y+30
	rjmp .L177
.L184:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L177
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
	rjmp .L193
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
	rjmp .L192
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r7
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L187
	or r24,r25
	breq .L192
.L193:
	ldd r24,Y+22
	std Y+9,r24
	ldd r24,Y+21
	std Y+1,r24
.L185:
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
.L187:
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
	brlt .L193
.L192:
	mov r16,r12
	mov r17,r13
	std Y+9,r14
	std Y+1,r15
	rjmp .L185
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
	rjmp .L204
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
	rjmp .L203
	mov r24,r15
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r7
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L198
	or r24,r25
	breq .L203
.L204:
	ldd r24,Y+22
	std Y+9,r24
	ldd r24,Y+21
	std Y+1,r24
.L196:
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
.L198:
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
	brlt .L204
.L203:
	mov r16,r12
	mov r17,r13
	std Y+9,r14
	std Y+1,r15
	rjmp .L196
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
	rjmp .L215
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
	rjmp .L214
	mov r24,r3
	ldi r25,0
	andi r24,128
	clr r25
	mov r18,r17
	andi r18,lo8(-128)
	cp r18,r24
	cpc __zero_reg__,r25
	breq .L209
	or r24,r25
	breq .+2
	rjmp .L215
.L214:
	mov r18,r2
	ldd r19,Y+1
	ldd r20,Y+2
	ldd r21,Y+3
	ldd r22,Y+4
	ldd r23,Y+5
	ldd r24,Y+6
	mov r25,r3
	rjmp .L207
.L209:
	ldd r16,Y+8
	ldd r17,Y+7
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
	breq .L217
	std Y+6,r16
.L211:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+6
	ldd r25,Y+7
.L207:
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
	mov r4,r2
	ldd r5,Y+1
	ldd r6,Y+2
	ldd r7,Y+3
	ldd r8,Y+4
	ldd r9,Y+5
	std Y+7,r3
	rjmp .L211
.L215:
	mov r18,r4
	mov r19,r5
	mov r20,r6
	mov r21,r7
	mov r22,r8
	mov r23,r9
	ldd r24,Y+8
	ldd r25,Y+7
	rjmp .L207
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
	cp r24, __zero_reg__
	brlt .L226
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
	cp r24, __zero_reg__
	brlt .L237
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
	breq .L242
	or r24,r25
	brne .L248
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
.L242:
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
	breq .L252
.L253:
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
	brne .L253
.L252:
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
	breq .L264
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
	breq .L258
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L258:
/* epilogue start */
	ret
.L264:
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
	breq .L266
	ldd r24,Z+2
	ldd r25,Z+3
	adiw r26,2+1
	st X,r25
	st -X,r24
	sbiw r26,2
.L266:
	ldd r26,Z+2
	ldd r27,Z+3
	sbiw r26,0
	breq .L265
	ld r24,Z
	ldd r25,Z+1
	st X+,r24
	st X,r25
.L265:
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
	breq .L275
	mov r28,r10
	mov r29,r11
	ldi r16,0
	ldi r17,0
.L277:
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
	breq .L274
	subi r16,-1
	sbci r17,-1
	add r28,r14
	adc r29,r15
	cp r8,r16
	cpc r9,r17
	brne .L277
.L275:
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
.L274:
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
	breq .L286
	mov r28,r22
	mov r29,r23
	ldi r16,0
	ldi r17,0
.L288:
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
	breq .L285
	subi r16,-1
	sbci r17,-1
	add r28,r12
	adc r29,r13
	cp r10,r16
	cpc r11,r17
	brne .L288
.L286:
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.L285:
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
	brlt .L298
.L297:
	mov r24,r18
	mov r25,r19
/* epilogue start */
	ret
.L298:
	neg r19
	neg r18
	sbc r19,__zero_reg__
	rjmp .L297
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
.L300:
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
	brne .L300
	ldi r31,lo8(43)
	cp r15,r31
	breq .L307
	ldi r24,lo8(45)
	ldi r20,lo8(1)
	ldi r21,0
	cp r15,r24
	breq .L301
	ldi r20,0
	ldi r21,0
	rjmp .L302
.L307:
	ldi r20,0
	ldi r21,0
.L301:
	ldi r30,-1
	sub r12,r30
	sbc r13,r30
.L302:
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
	brsh .L304
.L303:
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
	brlo .L303
.L304:
	or r20,r21
	brne .L299
	neg r29
	neg r28
	sbc r29,__zero_reg__
.L299:
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
.L312:
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
	brne .L312
	ldi r31,lo8(43)
	cp r15,r31
	breq .L313
	ldi r24,lo8(45)
	cpse r15,r24
	rjmp .L314
	ldi r28,lo8(1)
	ldi r29,0
.L313:
	ldi r30,-1
	sub r12,r30
	sbc r13,r30
.L314:
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
	rjmp .L324
.L315:
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
	brlo .L315
.L316:
	or r28,r29
	brne .L311
	com r19
	com r18
	com r17
	neg r16
	sbci r17,lo8(-1)
	sbci r18,lo8(-1)
	sbci r19,lo8(-1)
.L311:
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
.L324:
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	rjmp .L316
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
.L326:
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
	brne .L326
	cpi r17,lo8(43)
	breq .L327
	cpi r17,lo8(45)
	brne .L328
	ldi r28,lo8(1)
	ldi r29,0
.L327:
	ldi r27,-1
	sub r12,r27
	sbc r13,r27
.L328:
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
	rjmp .L338
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
.L329:
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
	brlo .L329
.L330:
	or r28,r29
	brne .L325
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
.L325:
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
.L338:
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r31,0
	ldi r17,0
	rjmp .L330
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
	rjmp .L349
.L344:
	mov r28,r8
	mov r29,r9
.L349:
	sbiw r28,0
	breq .L340
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
	brlt .L344
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L339
	brlt .L339
	mov r10,r16
	mov r11,r17
	add r10,r12
	adc r11,r13
	sbiw r28,1
	sub r28,r8
	sbc r29,r9
	rjmp .L349
.L340:
	ldi r16,0
	ldi r17,0
.L339:
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
	mov r28,r20
	mov r29,r21
	sbiw r28,0
	brne .L354
.L351:
	ldi r16,0
	ldi r17,0
.L350:
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
	pop r3
	pop r2
	ret
.L353:
	mov r28,r6
	mov r29,r7
	sbiw r28,0
	breq .L351
.L354:
	mov r6,r28
	mov r7,r29
	asr r7
	ror r6
	mov r24,r6
	mov r25,r7
	mov r22,r10
	mov r23,r11
	rcall __mulhi3
	mov r16,r8
	mov r17,r9
	add r16,r24
	adc r17,r25
	mov r20,r14
	mov r21,r15
	mov r22,r16
	mov r23,r17
	mov r24,r3
	mov r25,r2
	mov r30,r4
	mov r31,r5
	icall
	mov r12,r24
	mov r13,r25
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L350
	brlt .L353
	mov r8,r16
	mov r9,r17
	add r8,r10
	adc r9,r11
	sbiw r28,1
	mov r6,r28
	mov r7,r29
	asr r7
	ror r6
	rjmp .L353
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
	brge .L364
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L364:
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
	brlt .L368
.L367:
	mov r25,r19
	mov r24,r18
	mov r23,r17
	mov r22,r16
/* epilogue start */
	pop r17
	pop r16
	ret
.L368:
	com r19
	com r18
	com r17
	neg r16
	sbci r17,lo8(-1)
	sbci r18,lo8(-1)
	sbci r19,lo8(-1)
	rjmp .L367
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
	brge .L371
	rcall __negdi2
	mov r7,r18
	mov r8,r19
	mov r9,r20
	mov r10,r21
	mov r11,r22
	mov r12,r23
	mov r13,r24
	mov r14,r25
.L371:
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
	breq .L379
.L374:
	cp r20,r18
	cpc r21,r19
	breq .L382
	adiw r30,2
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L374
.L379:
	ldi r24,0
	ldi r25,0
	ret
.L382:
	mov r24,r30
	mov r25,r31
	or r18,r19
	breq .L379
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
	brne .L384
	adiw r26,2
	adiw r30,2
.L385:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L384
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L384
	ld r18,X+
	ld r19,X+
	ld r20,Z+
	ld r21,Z+
	cp r18,r20
	cpc r19,r21
	breq .L385
.L384:
	cp r18,r20
	cpc r19,r21
	brlt .L389
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L388
	ldi r24,0
.L388:
	ldi r25,0
	ret
.L389:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
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
.L394:
	mov r30,r18
	mov r31,r19
	ld r20,Z
	ldd r21,Z+1
	subi r18,-2
	sbci r19,-1
	st X+,r20
	st X+,r21
	or r20,r21
	brne .L394
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
	breq .L399
	mov r18,r26
	mov r19,r27
	subi r18,-2
	sbci r19,-1
.L398:
	mov r30,r18
	mov r31,r19
	subi r18,-2
	sbci r19,-1
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L398
.L397:
	mov r24,r30
	mov r25,r31
	sub r24,r26
	sbc r25,r27
	asr r25
	ror r24
/* epilogue start */
	ret
.L399:
	mov r30,r26
	mov r31,r27
	rjmp .L397
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
	breq .L415
	mov r30,r28
	mov r31,r29
	mov r24,r26
	mov r25,r27
.L403:
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
	brne .L402
	or r20,r21
	breq .L402
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L403
.L415:
	ldi r24,0
.L406:
	ldi r25,0
.L401:
/* epilogue start */
	pop r29
	pop r28
	ret
.L402:
	or r18,r19
	breq .L415
	ld r18,Y
	ldd r19,Y+1
	ld r20,X+
	ld r21,X
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	cp r18,r20
	cpc r19,r21
	brlt .L401
	ldi r24,lo8(1)
	cp r20,r18
	cpc r21,r19
	brlt .L406
	rjmp .L415
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
	breq .L422
	mov r18,r24
	mov r19,r25
.L418:
	mov r26,r18
	mov r27,r19
	subi r18,-2
	sbci r19,-1
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r24,r28
	cpc r25,r29
	breq .L425
	sbiw r30,1
	sbiw r30,0
	brne .L418
.L422:
	ldi r26,0
	ldi r27,0
	rjmp .L416
.L425:
	or r30,r31
	breq .L422
.L416:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	pop r29
	pop r28
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
	mov r18,r20
	mov r19,r21
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L440
	mov r20,r26
	mov r21,r27
	mov r24,r30
	mov r25,r31
.L428:
	mov r30,r24
	mov r31,r25
	mov r26,r20
	mov r27,r21
	subi r20,-2
	sbci r21,-1
	adiw r24,2
	ld r28,X+
	ld r29,X
	ld r22,Z
	ldd r23,Z+1
	cp r28,r22
	cpc r29,r23
	brne .L441
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L428
.L440:
	ldi r24,0
.L431:
	ldi r25,0
.L426:
/* epilogue start */
	pop r29
	pop r28
	ret
.L441:
	or r18,r19
	breq .L440
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	cp r28,r22
	cpc r29,r23
	brlt .L426
	ldi r24,lo8(1)
	cp r22,r28
	cpc r23,r29
	brlt .L431
	rjmp .L440
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
	breq .L443
	mov r20,r18
	mov r21,r19
	lsl r20
	rol r21
	rcall memcpy
.L443:
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
	breq .L448
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
	brlo .L449
	mov r24,r30
	mov r25,r31
	sbiw r24,1
	or r30,r31
	breq .L448
.L452:
	mov r30,r18
	mov r31,r19
	ld r22,Z
	ldd r23,Z+1
	subi r18,-2
	sbci r19,-1
	st X+,r22
	st X+,r23
	sbiw r24,1
	brcc .L452
	rjmp .L448
.L449:
	or r30,r31
	breq .L448
	mov r30,r18
	mov r31,r19
	add r30,r20
	adc r31,r21
	mov r26,r28
	mov r27,r29
	add r26,r20
	adc r27,r21
.L451:
	ld r25,-Z
	ld r24,-Z
	st -X,r25
	st -X,r24
	cp r18,r30
	cpc r19,r31
	brne .L451
.L448:
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
	breq .L459
	mov r18,r24
	mov r19,r25
.L460:
	mov r30,r18
	mov r31,r19
	st Z,r22
	subi r18,-2
	sbci r19,-1
	std Z+1,r23
	subi r20,1
	sbc r21,__zero_reg__
	brcc .L460
.L459:
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
	brsh .L466
	add r28,r16
	adc r29,r17
	mov r26,r30
	mov r27,r31
	add r26,r16
	adc r27,r17
	or r16,r17
	breq .L465
.L468:
	ld r24,-Y
	st -X,r24
	cp r30,r26
	cpc r31,r27
	brne .L468
.L465:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L466:
	cp r28,r30
	cpc r29,r31
	breq .L465
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L465
	add r16,r28
	adc r17,r29
.L469:
	mov r26,r28
	mov r27,r29
	adiw r28,1
	ld r24,X
	st Z+,r24
	cp r28,r16
	cpc r29,r17
	brne .L469
	rjmp .L465
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
.L494:
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
	rjmp .L496
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L494
	ldi r24,0
	ldi r25,0
/* epilogue start */
	ret
.L496:
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
	breq .L500
	mov r24,r18
	andi r24,1<<0
	clr r25
	sbrc r18,0
	rjmp .L497
	ldi r24,lo8(1)
	ldi r25,0
.L499:
	asr r19
	ror r18
	adiw r24,1
	sbrs r18,0
	rjmp .L499
	ret
.L500:
	ldi r24,0
	ldi r25,0
.L497:
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
	brlt .L506
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
	breq .L507
	brlt .L507
.L505:
	mov r24,r15
	ldi r25,0
.L503:
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
.L507:
	mov r15,__zero_reg__
	rjmp .L505
.L506:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L503
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
	brlt .L511
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
	breq .L512
	brlt .L512
.L510:
	mov r24,r15
	ldi r25,0
.L508:
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
.L512:
	mov r15,__zero_reg__
	rjmp .L510
.L511:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L508
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
	rjmp .L516
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
	rjmp .L515
	mov r3,__zero_reg__
.L515:
	mov r24,r3
	ldi r25,0
.L513:
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
.L516:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L513
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
	rjmp .L519
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
	rjmp .L519
	ldd r18,Y+37
	ldd r19,Y+38
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	tst r19
	brlt .L534
	set
	clr r11
	bld r11,6
	mov r3,r14
	mov r2,r15
	rjmp .L524
.L534:
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	mov r3,r14
	mov r2,r15
	rjmp .L524
.L522:
	ldd r24,Y+37
	ldd r25,Y+38
	tst r25
	brlt .L535
.L523:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+38,r19
	std Y+37,r18
	or r18,r19
	breq .L533
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
.L524:
	ldd r24,Y+37
	ldd r25,Y+38
	sbrs r24,0
	rjmp .L522
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
	rjmp .L522
.L535:
	adiw r24,1
	rjmp .L523
.L533:
	mov r14,r3
	mov r15,r2
.L519:
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
	rjmp .L537
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
	rjmp .L537
	ldd r18,Y+37
	ldd r19,Y+38
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	tst r19
	brlt .L552
	set
	clr r11
	bld r11,6
	mov r3,r14
	mov r2,r15
	rjmp .L542
.L552:
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r11,r31
	mov r31,__tmp_reg__
	mov r3,r14
	mov r2,r15
	rjmp .L542
.L540:
	ldd r24,Y+37
	ldd r25,Y+38
	tst r25
	brlt .L553
.L541:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+38,r19
	std Y+37,r18
	or r18,r19
	breq .L551
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
.L542:
	ldd r24,Y+37
	ldd r25,Y+38
	sbrs r24,0
	rjmp .L540
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
	rjmp .L540
.L553:
	adiw r24,1
	rjmp .L541
.L551:
	mov r14,r3
	mov r15,r2
.L537:
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
	rjmp .L555
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
	rjmp .L555
	ldd r18,Y+9
	ldd r19,Y+10
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
	tst r19
	brlt .L560
	mov r8,__zero_reg__
	set
	clr r9
	bld r9,6
	rjmp .L560
.L558:
	ldd r24,Y+9
	ldd r25,Y+10
	tst r25
	brge .+2
	rjmp .L569
.L559:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+10,r19
	std Y+9,r18
	or r18,r19
	breq .L555
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
.L560:
	ldd r24,Y+9
	ldd r25,Y+10
	sbrs r24,0
	rjmp .L558
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
	rjmp .L558
.L569:
	adiw r24,1
	rjmp .L559
.L555:
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
	breq .L571
	add r28,r18
	adc r29,r19
	mov r22,r24
	mov r23,r25
.L572:
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
	brne .L572
.L571:
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
	breq .L583
	mov r26,r22
	mov r27,r23
.L579:
	mov r28,r30
	mov r29,r31
	ld r24,X+
	st Z+,r24
	cp r24, __zero_reg__
	breq .L587
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L579
	mov r28,r30
	mov r29,r31
	rjmp .L583
.L587:
	or r18,r19
	brne .L581
.L583:
	st Y,__zero_reg__
.L581:
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
	breq .L592
	mov r30,r24
	mov r31,r25
	ldi r24,0
	ldi r25,0
.L590:
	ld r20,Z+
	cpse r20,__zero_reg__
	rjmp .L594
.L588:
/* epilogue start */
	ret
.L594:
	adiw r24,1
	cp r18,r24
	cpc r19,r25
	brne .L590
	ret
.L592:
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
	breq .L600
.L596:
	mov r30,r22
	mov r31,r23
.L599:
	ld r24,Z+
	cp r24, __zero_reg__
	breq .L602
	cpse r24,r25
	rjmp .L599
.L597:
	mov r24,r26
	mov r25,r27
/* epilogue start */
	ret
.L602:
	adiw r26,1
	ld r25,X
	cpse r25,__zero_reg__
	rjmp .L596
.L600:
	ldi r26,0
	ldi r27,0
	rjmp .L597
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
	rjmp .L605
.L604:
	cp r18, __zero_reg__
	breq .L608
.L605:
	mov r20,r30
	mov r19,r31
	ld r18,Z+
	mov __tmp_reg__,r18
	rol __tmp_reg__
	sbc __tmp_reg__,__tmp_reg__
	cp r18,r26
	cpc r0,r27
	brne .L604
	mov r24,r20
	mov r25,r19
	rjmp .L604
.L608:
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
	breq .L609
	mov r30,r16
	mov r31,r17
	ld r14,Z
	mov __tmp_reg__,r14
	lsl r0
	sbc r15,r15
.L611:
	mov r22,r14
	mov r23,r15
	mov r24,r18
	mov r25,r19
	rcall strchr
	mov r28,r24
	mov r29,r25
	sbiw r28,0
	breq .L609
	mov r20,r12
	mov r21,r13
	mov r22,r16
	mov r23,r17
	mov r24,r28
	mov r25,r29
	rcall strncmp
	or r24,r25
	breq .L609
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	rjmp .L611
.L609:
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
	brlt .L626
.L618:
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
	breq .L621
	brlt .L621
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
	brlt .L620
.L621:
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
.L626:
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
	breq .L618
	brlt .L618
.L620:
	bst r15,7
	com r15
	bld r15,7
	com r15
	rjmp .L621
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
	breq .L631
	cp r16,r12
	cpc r17,r13
	brlo .L633
	sub r16,r12
	sbc r17,r13
	add r16,r28
	adc r17,r29
	cp r16,r28
	cpc r17,r29
	brlo .L633
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
	rjmp .L630
.L629:
	cp r16,r28
	cpc r17,r29
	brlo .L633
.L630:
	ld r24,Y
	mov r14,r28
	mov r15,r29
	adiw r28,1
	cpse r24,r9
	rjmp .L629
	mov r20,r12
	mov r21,r13
	mov r22,r10
	mov r23,r11
	mov r24,r28
	mov r25,r29
	rcall memcmp
	or r24,r25
	brne .L629
	rjmp .L627
.L631:
	mov r14,r24
	mov r15,r25
	rjmp .L627
.L633:
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L627:
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
	rjmp .L666
.L640:
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
	rjmp .L663
	ldi r28,0
	ldi r29,0
.L644:
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
	brge .L644
.L645:
	mov r30,r16
	mov r31,r17
	std Z+1,r29
	st Z,r28
	or r2,r3
	breq .L649
	bst r15,7
	com r15
	bld r15,7
	com r15
.L649:
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
.L666:
	bst r15,7
	com r15
	bld r15,7
	com r15
	clr r2
	inc r2
	mov r3,__zero_reg__
	rjmp .L640
.L663:
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
	brge .L645
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
	rjmp .L645
.L648:
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
	brlt .L648
	rjmp .L645
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
	rjmp .L667
.L669:
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
	rjmp .L669
.L667:
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
	brsh .L681
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L673:
	tst r15
	brlt .L674
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
	brsh .L674
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L673
.L685:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L676:
	cpse r16,__zero_reg__
	rjmp .L686
.L672:
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
.L674:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L685
.L681:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L675
.L678:
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
	breq .L676
.L675:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L678
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L678
.L686:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L672
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
	breq .L689
	ldi r24,0
	rcall __clzhi2
	sbiw r24,1
	ret
.L689:
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
	breq .L692
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
.L690:
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
.L692:
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L690
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
	breq .L696
.L695:
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
	brne .L695
	ret
.L696:
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
	rjmp .L699
.L702:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L701
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
.L705:
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
	brne .L705
.L701:
	cp r24,r28
	cpc r25,r29
	brsh .L698
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
.L706:
	ld r24,Z+
	st X+,r24
	cp r30,r18
	cpc r31,r19
	brne .L706
.L698:
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
.L699:
	mov r26,r18
	mov r27,r19
	add r26,r28
	adc r27,r29
	cp r26,r16
	cpc r27,r17
	brsh .+2
	rjmp .L702
	sbiw r28,0
	breq .L698
	add r28,r16
	adc r29,r17
.L707:
	ld r24,-X
	st -Y,r24
	cp r18,r26
	cpc r19,r27
	brne .L707
	rjmp .L698
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
	brsh .L712
.L715:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L714
	mov r30,r16
	mov r31,r17
	mov r26,r28
	mov r27,r29
	lsl r18
	rol r19
	add r18,r16
	adc r19,r17
.L718:
	ld r24,Z+
	ld r25,Z+
	st X+,r24
	st X+,r25
	cp r30,r18
	cpc r31,r19
	brne .L718
.L714:
	sbrs r14,0
	rjmp .L711
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
.L711:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L712:
	mov r30,r16
	mov r31,r17
	add r30,r14
	adc r31,r15
	cp r30,r28
	cpc r31,r29
	brlo .L715
	add r28,r14
	adc r29,r15
	or r14,r15
	breq .L711
.L719:
	ld r24,-Z
	st -Y,r24
	cp r16,r30
	cpc r17,r31
	brne .L719
	rjmp .L711
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
	brsh .L726
.L729:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L728
	mov r30,r18
	mov r31,r19
	mov r28,r14
	mov r29,r15
	lsl r20
	rol r21
	add r20,r18
	adc r21,r19
.L732:
	ld r24,Z+
	ld r25,Z+
	st Y+,r24
	st Y+,r25
	cp r30,r20
	cpc r31,r21
	brne .L732
.L728:
	cp r26,r16
	cpc r27,r17
	brsh .L725
	mov r30,r18
	mov r31,r19
	add r30,r26
	adc r31,r27
	add r26,r14
	adc r27,r15
	add r18,r16
	adc r19,r17
.L733:
	ld r24,Z+
	st X+,r24
	cp r30,r18
	cpc r31,r19
	brne .L733
.L725:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L726:
	mov r24,r18
	mov r25,r19
	add r24,r16
	adc r25,r17
	cp r24,r14
	cpc r25,r15
	brlo .L729
	mov r26,r24
	mov r27,r25
	mov r30,r14
	mov r31,r15
	add r30,r16
	adc r31,r17
	or r16,r17
	breq .L725
.L734:
	ld r24,-X
	st -Z,r24
	cp r18,r26
	cpc r19,r27
	brne .L734
	rjmp .L725
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
	brlt .L744
	ldi r22,0
	ldi r23,lo8(-128)
.L746:
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L749
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
	breq .L746
.L744:
/* epilogue start */
	ret
.L749:
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
.L752:
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
	rjmp .L750
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	brne .L752
.L750:
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
	brge .L760
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
.L754:
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
.L760:
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
	rjmp .L754
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
.L762:
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
	brne .L762
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
.L765:
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
	brne .L765
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
	breq .L767
.L769:
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
	brne .L769
.L767:
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
	brne .L778
	rjmp .L772
.L774:
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
.L778:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L774
.L772:
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
	brsh .L788
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L780:
	tst r15
	brlt .L781
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
	brsh .L781
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L780
.L792:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L783:
	or r30,r31
	brne .L793
.L779:
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
.L781:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L792
.L788:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L782
.L785:
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
	breq .L783
.L782:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L785
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L785
.L793:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L779
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
	brlt .L797
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
	cp r24, __zero_reg__
	breq .L798
	brlt .L798
.L796:
	mov r24,r15
	ldi r25,0
.L794:
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
.L798:
	mov r15,__zero_reg__
	rjmp .L796
.L797:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L794
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
	brlt .L802
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
	cp r24, __zero_reg__
	breq .L803
	brlt .L803
.L801:
	mov r24,r15
	ldi r25,0
.L799:
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
.L803:
	mov r15,__zero_reg__
	rjmp .L801
.L802:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L799
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
	brlt .L820
.L807:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L812
	ldi r25,lo8(16)
	ldi r22,0
	ldi r23,0
.L809:
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
	breq .L808
	subi r25,lo8(-(-1))
	cpse r25,__zero_reg__
	rjmp .L809
.L808:
	or r26,r27
	breq .L806
	neg r23
	neg r22
	sbc r23,__zero_reg__
.L806:
	mov r24,r22
	mov r25,r23
/* epilogue start */
	ret
.L820:
	neg r21
	neg r20
	sbc r21,__zero_reg__
	ldi r26,lo8(1)
	ldi r27,0
	rjmp .L807
.L812:
	ldi r22,0
	ldi r23,0
	rjmp .L808
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
	brlt .L829
.L822:
	tst r11
	brlt .L830
.L823:
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
	breq .L821
	com r7
	com r6
	com r5
	com r4
	adc r4,__zero_reg__
	adc r5,__zero_reg__
	adc r6,__zero_reg__
	adc r7,__zero_reg__
.L821:
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
.L829:
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
	rjmp .L822
.L830:
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
	rjmp .L823
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
	brlt .L839
.L832:
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	tst r11
	brlt .L840
.L833:
	ldi r16,lo8(1)
	ldi r17,0
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
	breq .L831
	com r7
	com r6
	com r5
	com r4
	adc r4,__zero_reg__
	adc r5,__zero_reg__
	adc r6,__zero_reg__
	adc r7,__zero_reg__
.L831:
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
.L839:
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
	rjmp .L832
.L840:
	clr r18
	clr r19
	clr r20
	clr r21
	sub r18,r8
	sbc r19,r9
	sbc r20,r10
	sbc r21,r11
	rjmp .L833
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
	brsh .L851
	ldi r20,lo8(16)
	ldi r21,0
	ldi r24,lo8(1)
	ldi r25,0
.L842:
	tst r19
	brlt .L850
	lsl r18
	rol r19
	lsl r24
	rol r25
	cp r18,r30
	cpc r19,r31
	brsh .L850
	subi r20,1
	sbc r21,__zero_reg__
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L842
.L855:
	ldi r24,0
	ldi r25,0
.L845:
	or r26,r27
	brne .L856
.L841:
/* epilogue start */
	ret
.L850:
	mov r20,r24
	mov r21,r25
	or r24,r25
	breq .L855
.L851:
	ldi r24,0
	ldi r25,0
	rjmp .L844
.L847:
	lsr r21
	ror r20
	lsr r19
	ror r18
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L845
.L844:
	cp r30,r18
	cpc r31,r19
	brlo .L847
	sub r30,r18
	sbc r31,r19
	or r24,r20
	or r25,r21
	rjmp .L847
.L856:
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
	brsh .L866
	ldi r18,lo8(32)
	ldi r19,0
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L858:
	tst r15
	brlt .L859
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
	brsh .L859
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L858
.L870:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L861:
	or r30,r31
	brne .L871
.L857:
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
.L859:
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L870
.L866:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	rjmp .L860
.L863:
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
	breq .L861
.L860:
	cp r8,r12
	cpc r9,r13
	cpc r10,r14
	cpc r11,r15
	brlo .L863
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
	or r20,r24
	or r21,r25
	or r22,r26
	or r23,r27
	rjmp .L863
.L871:
	mov r23,r11
	mov r22,r10
	mov r21,r9
	mov r20,r8
	rjmp .L857
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
	rjmp .L873
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
.L874:
	mov r31,r16
	mov r30,r17
	mov r20,r18
	mov r21,r19
	mov r22,r24
	mov r23,r25
	mov r17,r26
	mov r25,r27
.L872:
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
.L873:
	sbiw r30,0
	breq .L876
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
	rjmp .L874
.L876:
	mov r31,r18
	mov r30,r19
	mov r17,r24
	rjmp .L872
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
	rjmp .L878
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
.L879:
	mov r31,r24
	mov r30,r25
	mov r20,r26
	mov r21,r27
	mov r22,r16
	mov r23,r17
	mov r24,r18
	mov r25,r19
.L877:
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
.L878:
	sbiw r30,0
	breq .L881
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
	rjmp .L879
.L881:
	mov r31,r18
	mov r30,r19
	rjmp .L877
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
	brlo .L885
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L885:
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
	breq .L886
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L886:
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
	breq .L887
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L887:
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
	breq .L888
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L888:
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
	rjmp .L889
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
.L890:
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
.L889:
	ldi r18,0
	ldi r19,0
	rjmp .L890
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
	brlt .L904
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlt .L905
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
	brlo .L904
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L905
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L900
.L904:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L900:
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
.L905:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L900
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
	brlt .L910
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlt .L911
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
	brlo .L910
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L911
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L907
.L910:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L907:
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
.L911:
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L907
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
	breq .L913
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
.L913:
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
	breq .L914
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L914:
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
	breq .L915
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L915:
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
	breq .L916
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L916:
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
	rjmp .L930
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
.L931:
	mov r18,r24
	mov r19,r25
	mov r20,r26
	mov r21,r27
	mov r22,r4
	mov r23,r5
	mov r24,r6
	mov r25,r7
.L929:
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
.L930:
	sbiw r30,0
	breq .L933
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
	rjmp .L931
.L933:
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r23,r13
	rjmp .L929
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
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	std Y+13,r20
	std Y+14,r21
	ldd r18,Y+13
	ldd r19,Y+14
	std Y+20,r19
	std Y+19,r18
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	set
	clr r12
	bld r12,7
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r13,r31
	mov r31,__tmp_reg__
	rjmp .L945
.L942:
	ldd r24,Y+19
	ldd r25,Y+20
	tst r25
	brlt .L950
.L943:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+20,r19
	std Y+19,r18
	or r18,r19
	breq .L944
	mov r8,r14
	mov r9,r15
	mov r10,r16
	mov r11,r17
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r14
	mov r5,r15
	mov r6,r16
	mov r7,r17
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
.L945:
	ldd r24,Y+19
	ldd r25,Y+20
	sbrs r24,0
	rjmp .L942
	std Y+1,r14
	std Y+2,r15
	std Y+3,r16
	std Y+4,r17
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
	rjmp .L942
.L950:
	adiw r24,1
	rjmp .L943
.L944:
	ldd r24,Y+13
	ldd r25,Y+14
	tst r25
	brlt .L951
.L941:
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
.L951:
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
	rjmp .L941
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
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	std Y+13,r20
	std Y+14,r21
	ldd r18,Y+13
	ldd r19,Y+14
	std Y+20,r19
	std Y+19,r18
	mov r2,__zero_reg__
	mov r3,__zero_reg__
	set
	clr r12
	bld r12,7
	mov __tmp_reg__,r31
	ldi r31,lo8(63)
	mov r13,r31
	mov r31,__tmp_reg__
	rjmp .L956
.L953:
	ldd r24,Y+19
	ldd r25,Y+20
	tst r25
	brlt .L961
.L954:
	mov r18,r24
	mov r19,r25
	asr r19
	ror r18
	std Y+20,r19
	std Y+19,r18
	or r18,r19
	breq .L955
	mov r8,r14
	mov r9,r15
	mov r10,r16
	mov r11,r17
	mov r21,r11
	mov r20,r10
	mov r19,r9
	mov r18,r8
	mov r4,r14
	mov r5,r15
	mov r6,r16
	mov r7,r17
	mov r25,r7
	mov r24,r6
	mov r23,r5
	mov r22,r4
	rcall __mulsf3
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
.L956:
	ldd r24,Y+19
	ldd r25,Y+20
	sbrs r24,0
	rjmp .L953
	std Y+1,r14
	std Y+2,r15
	std Y+3,r16
	std Y+4,r17
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
	rjmp .L953
.L961:
	adiw r24,1
	rjmp .L954
.L955:
	ldd r24,Y+13
	ldd r25,Y+14
	tst r25
	brlt .L962
.L952:
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
.L962:
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
	rjmp .L952
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
	brlo .L967
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L968
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
	brlo .L967
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L968
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L963
.L967:
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L963:
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
.L968:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L963
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
	brlo .L973
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brlo .L974
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
	brlo .L973
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L974
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L970
.L973:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,0
.L970:
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
.L974:
	ldi r24,lo8(2)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L970
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
