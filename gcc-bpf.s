	.file	"mini-libc.c"
	.text
	.align	3
	.global	make_ti
	.type	make_ti, @function
make_ti:
	r4 = r2
	r0 = r4
	exit
	.size	make_ti, .-make_ti
	.align	3
	.global	make_tu
	.type	make_tu, @function
make_tu:
	r4 = r2
	r0 = r4
	exit
	.size	make_tu, .-make_tu
	.align	3
	.global	memmove
	.type	memmove, @function
memmove:
	if r2 > r1 goto .L4
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r9 = r0
	r9 -= r2
	r9 &= 7
	if r9 != 0 goto .L52
	goto .L5
.L6:
	r0 += -1
	r4 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
	r9 = *(u8 *) (r0+-1)
	*(u8 *) (r4+-1) = r9
	r5 = *(u8 *) (r0+-2)
	*(u8 *) (r4+-2) = r5
	r3 = *(u8 *) (r0+-3)
	*(u8 *) (r4+-3) = r3
	r9 = *(u8 *) (r0+-4)
	*(u8 *) (r4+-4) = r9
	r5 = *(u8 *) (r0+-5)
	*(u8 *) (r4+-5) = r5
	r3 = *(u8 *) (r0+-6)
	*(u8 *) (r4+-6) = r3
	r0 += -7
	r4 += -7
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
.L5:
	if r0 != r2 goto .L6
	goto .L7
.L4:
	if r1 == r2 goto .L7
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 != 0 goto .L53
	goto .L8
.L9:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r5 = *(u8 *) (r2+1)
	*(u8 *) (r0+1) = r5
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r0+2) = r9
	r3 = *(u8 *) (r2+3)
	*(u8 *) (r0+3) = r3
	r5 = *(u8 *) (r2+4)
	*(u8 *) (r0+4) = r5
	r9 = *(u8 *) (r2+5)
	*(u8 *) (r0+5) = r9
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r0+6) = r3
	r0 += 7
	r2 += 7
.L8:
	if r0 != r4 goto .L9
.L7:
	r0 = r1
	exit
.L52:
	r0 += -1
	r4 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	if r9 == 1 goto .L5
	if r9 == 2 goto .L21
	if r9 == 3 goto .L19
	if r9 == 4 goto .L17
	if r9 == 5 goto .L15
	if r9 == 6 goto .L13
	r0 += -1
	r4 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
.L13:
	r0 += -1
	r4 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
.L15:
	r0 += -1
	r4 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
.L17:
	r0 += -1
	r4 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
.L19:
	r0 += -1
	r4 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
.L21:
	r0 += -1
	r4 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	goto .L5
.L53:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
	if r3 == 1 goto .L8
	if r3 == 2 goto .L42
	if r3 == 3 goto .L40
	if r3 == 4 goto .L38
	if r3 == 5 goto .L36
	if r3 == 6 goto .L34
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L34:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L36:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L38:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L40:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L42:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	goto .L8
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	r0 = r4
	r0 &= 7
	if r0 != 0 goto .L100
	goto .L55
.L57:
	r4 += -1
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r3 != r2 goto .L74
	goto .L56
.L55:
	if r4 == 0 goto .L56
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 != r9 goto .L57
.L56:
	if r4 == 0 goto .L59
	r0 = r1
	r0 += 1
	exit
.L59:
	r0 = 0
	exit
.L100:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
	if r0 == 1 goto .L55
	if r0 == 2 goto .L95
	if r0 == 3 goto .L96
	if r0 == 4 goto .L97
	if r0 == 5 goto .L98
	if r0 == 6 goto .L99
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L99:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r3 == r0 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L98:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L97:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L96:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r3 == r0 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L95:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
	goto .L55
.L74:
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+1)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L56
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L56
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L56
	r4 += -1
	r2 = r9
	r2 += 7
	r0 += 7
	r1 = r0
	goto .L55
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	r0 = r3
	r0 &= 7
	if r0 != 0 goto .L147
	goto .L102
.L104:
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r5 = *(u8 *) (r9+0)
	if r2 != r5 goto .L121
	goto .L103
.L102:
	if r3 == 0 goto .L103
	r0 = *(u8 *) (r1+0)
	if r2 != r0 goto .L104
.L103:
	if r3 == 0 goto .L106
	r0 = r1
	exit
.L106:
	r0 = 0
	exit
.L147:
	r4 = *(u8 *) (r1+0)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
	if r0 == 1 goto .L102
	if r0 == 2 goto .L142
	if r0 == 3 goto .L143
	if r0 == 4 goto .L144
	if r0 == 5 goto .L145
	if r0 == 6 goto .L146
	r5 = *(u8 *) (r1+0)
	if r2 == r5 goto .L103
	r1 += 1
	r3 += -1
.L146:
	r9 = *(u8 *) (r1+0)
	if r2 == r9 goto .L103
	r1 += 1
	r3 += -1
.L145:
	r0 = *(u8 *) (r1+0)
	if r2 == r0 goto .L103
	r1 += 1
	r3 += -1
.L144:
	r4 = *(u8 *) (r1+0)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
.L143:
	r5 = *(u8 *) (r1+0)
	if r2 == r5 goto .L103
	r1 += 1
	r3 += -1
.L142:
	r9 = *(u8 *) (r1+0)
	if r2 == r9 goto .L103
	r1 += 1
	r3 += -1
	goto .L102
.L121:
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+1)
	if r2 == r0 goto .L103
	r1 += 1
	r3 += -1
	r4 = *(u8 *) (r9+2)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+3)
	if r2 == r5 goto .L103
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+4)
	if r2 == r0 goto .L103
	r1 += 1
	r3 += -1
	r4 = *(u8 *) (r9+5)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+6)
	if r2 == r5 goto .L103
	r9 += 7
	r1 = r9
	r3 += -1
	goto .L102
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	r0 = r3
	r0 &= 7
	if r0 != 0 goto .L194
	goto .L149
.L151:
	r3 += -1
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 == r9 goto .L168
	goto .L150
.L149:
	if r3 == 0 goto .L150
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 == r0 goto .L151
.L150:
	if r3 == 0 goto .L153
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L153:
	r0 = 0
	exit
.L194:
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
	if r0 == 1 goto .L149
	if r0 == 2 goto .L189
	if r0 == 3 goto .L190
	if r0 == 4 goto .L191
	if r0 == 5 goto .L192
	if r0 == 6 goto .L193
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
.L193:
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
.L192:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
.L191:
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
.L190:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
.L189:
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
	goto .L149
.L168:
	r3 += -1
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r4+1)
	r6 = *(u8 *) (r0+1)
	if r5 != r6 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+2)
	r6 = *(u8 *) (r0+2)
	if r9 != r6 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r4+3)
	r6 = *(u8 *) (r0+3)
	if r5 != r6 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r6 = *(u8 *) (r0+4)
	if r9 != r6 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r4+5)
	r6 = *(u8 *) (r0+5)
	if r5 != r6 goto .L150
	r3 += -1
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r6 = *(u8 *) (r0+6)
	if r4 != r6 goto .L150
	r3 += -1
	r1 += 1
	r0 += 7
	r2 = r0
	goto .L149
	.size	memcmp, .-memcmp
	.align	3
	.global	memcpy
	.type	memcpy, @function
memcpy:
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 != 0 goto .L219
	goto .L196
.L197:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r3 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r3
	r5 = *(u8 *) (r2+2)
	*(u8 *) (r0+1) = r5
	r9 = *(u8 *) (r2+3)
	*(u8 *) (r0+2) = r9
	r3 = *(u8 *) (r2+4)
	*(u8 *) (r0+3) = r3
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r0+4) = r5
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r0+5) = r9
	r3 = *(u8 *) (r2+7)
	*(u8 *) (r0+6) = r3
	r0 += 7
	r2 += 8
.L196:
	if r0 != r4 goto .L197
	r0 = r1
	exit
.L219:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
	if r3 == 1 goto .L196
	if r3 == 2 goto .L209
	if r3 == 3 goto .L207
	if r3 == 4 goto .L205
	if r3 == 5 goto .L203
	if r3 == 6 goto .L201
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L201:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L203:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L205:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L207:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L209:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	goto .L196
	.size	memcpy, .-memcpy
	.align	3
	.global	memrchr
	.type	memrchr, @function
memrchr:
	r2 &= 0xff
	r0 = r3
	r0 += -1
	r3 &= 7
	if r3 != 0 goto .L260
	goto .L221
.L223:
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r5+0)
	r3 = r0
	r3 += -1
	if r2 != r4 goto .L224
.L261:
	r1 += r0
	goto .L222
.L224:
	r0 = r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r9+0)
	if r2 != r5 goto .L247
	goto .L261
.L221:
	if r0 != -1 goto .L223
	r1 = 0
.L222:
	r0 = r1
	exit
.L260:
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	r5 = r0
	r5 += -1
	if r2 == r9 goto .L261
	r0 = r5
	if r3 == 1 goto .L221
	if r3 == 2 goto .L242
	if r3 == 3 goto .L239
	if r3 == 4 goto .L236
	if r3 == 5 goto .L233
	if r3 == 6 goto .L230
	r3 = r1
	r3 += r5
	r9 = *(u8 *) (r3+0)
	r4 = r5
	r4 += -1
	if r2 == r9 goto .L261
	r0 = r4
.L230:
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r5+0)
	r9 = r0
	r9 += -1
	if r2 == r3 goto .L261
	r0 = r9
.L233:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	r3 = r0
	r3 += -1
	if r2 == r5 goto .L261
	r0 = r3
.L236:
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	r4 = r0
	r4 += -1
	if r2 == r5 goto .L261
	r0 = r4
.L239:
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r3+0)
	r5 = r0
	r5 += -1
	if r2 == r9 goto .L261
	r0 = r5
.L242:
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	r9 = r0
	r9 += -1
	if r2 == r3 goto .L261
	r0 = r9
	goto .L221
.L247:
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L261
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L261
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L261
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L261
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L261
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L261
	r0 += -1
	goto .L221
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r2 s>>= 32
	r4 = r1
	r4 += r3
	r0 = r1
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 != 0 goto .L286
	goto .L263
.L264:
	*(u8 *) (r0+0) = r2
	r0 += 1
	*(u8 *) (r0+0) = r2
	*(u8 *) (r0+1) = r2
	*(u8 *) (r0+2) = r2
	*(u8 *) (r0+3) = r2
	*(u8 *) (r0+4) = r2
	*(u8 *) (r0+5) = r2
	*(u8 *) (r0+6) = r2
	r0 += 7
.L263:
	if r0 != r4 goto .L264
	r0 = r1
	exit
.L286:
	*(u8 *) (r1+0) = r2
	r0 += 1
	if r3 == 1 goto .L263
	if r3 == 2 goto .L276
	if r3 == 3 goto .L274
	if r3 == 4 goto .L272
	if r3 == 5 goto .L270
	if r3 == 6 goto .L268
	*(u8 *) (r0+0) = r2
	r0 += 1
.L268:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L270:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L272:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L274:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L276:
	*(u8 *) (r0+0) = r2
	r0 += 1
	goto .L263
	.size	memset, .-memset
	.align	3
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	r0 = r1
	goto .L288
.L289:
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 != 0 goto .L290
	exit
.L288:
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 != 0 goto .L289
.L297:
	exit
.L290:
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L297
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L297
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L297
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L297
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L297
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L297
	r2 += 7
	r0 += 1
	goto .L288
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	r0 = r1
	r2 &= 0xff
	goto .L299
.L301:
	r0 += 1
.L299:
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L300
	if r2 != r1 goto .L301
.L300:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r2 s>>= 32
.L304:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r2 == r3 goto .L305
	r1 += 1
	r0 = *(u8 *) (r1+-1)
	if r0 != 0 goto .L304
	exit
.L305:
	r0 = r1
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L308
.L310:
	r1 += 1
	r2 += 1
.L308:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	if r3 != r0 goto .L309
	r4 = *(u8 *) (r1+0)
	if r4 != 0 goto .L310
.L309:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	r0 = r1
	goto .L312
.L313:
	r0 += 1
	r4 = r0
	r3 = *(u8 *) (r0+0)
	if r3 != 0 goto .L314
	goto .L321
.L312:
	r2 = *(u8 *) (r0+0)
	if r2 != 0 goto .L313
.L321:
	r0 -= r1
	exit
.L314:
	r0 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L321
	r0 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L321
	r0 += 1
	r2 = *(u8 *) (r4+3)
	if r2 == 0 goto .L321
	r0 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L321
	r0 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L321
	r0 += 1
	r4 = *(u8 *) (r4+6)
	if r4 == 0 goto .L321
	r0 += 1
	goto .L312
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L327
	r3 += -1
	r4 = r1
	r4 += r3
	r0 = r4
	r0 -= r1
	r0 &= 7
	if r0 != 0 goto .L368
	goto .L324
.L326:
	r0 = r1
	r0 += 1
	r1 = r0
	r2 += 1
	r9 = *(u8 *) (r0+0)
	if r9 != 0 goto .L369
	goto .L325
.L324:
	r5 = *(u8 *) (r1+0)
	if r5 == 0 goto .L325
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L325
	if r1 == r4 goto .L325
	r3 = *(u8 *) (r1+0)
	if r3 == r0 goto .L326
.L325:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L327:
	r0 = 0
	exit
.L368:
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L325
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L325
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L325
	r1 += 1
	r2 += 1
	if r0 == 1 goto .L324
	if r0 == 2 goto .L363
	if r0 == 3 goto .L364
	if r0 == 4 goto .L365
	if r0 == 5 goto .L366
	if r0 == 6 goto .L367
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L325
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L325
	r3 = *(u8 *) (r1+0)
	if r3 != r9 goto .L325
	r1 += 1
	r2 += 1
.L367:
	r5 = *(u8 *) (r1+0)
	if r5 == 0 goto .L325
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r0 goto .L325
	r1 += 1
	r2 += 1
.L366:
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r0 = *(u8 *) (r1+0)
	if r0 != r5 goto .L325
	r1 += 1
	r2 += 1
.L365:
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r3 = *(u8 *) (r1+0)
	if r3 != r5 goto .L325
	r1 += 1
	r2 += 1
.L364:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L325
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L325
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L325
	r1 += 1
	r2 += 1
.L363:
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L325
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r0 goto .L325
	r1 += 1
	r2 += 1
	goto .L324
.L369:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r9 = *(u8 *) (r0+0)
	if r9 != r5 goto .L325
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+1)
	if r3 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L325
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+2)
	if r3 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L325
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+3)
	if r3 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L325
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+4)
	if r3 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L325
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+5)
	if r3 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L325
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+6)
	if r3 == 0 goto .L325
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L325
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L325
	r0 += 7
	r1 = r0
	r2 += 1
	goto .L324
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	r5 = r1
	r5 += 1
	r4 = r2
	r4 += 1
	r0 = r1
	r9 = r3
	r9 >>= 1
	r9 &= 3
	if r9 != 0 goto .L383
	goto .L371
.L372:
	r6 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r6
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	r6 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r6
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r6 = *(u8 *) (r5+2)
	*(u8 *) (r2+2) = r6
	r9 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r9
	r6 = *(u8 *) (r5+4)
	*(u8 *) (r2+4) = r6
	r6 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r6
	r2 += 6
	r0 += 6
	r5 += 6
	r4 += 6
.L371:
	r9 = r1
	r9 += r3
	r9 -= r0
	if r9 s> 1 goto .L372
.L384:
	exit
.L383:
	r6 = r1
	r6 += r3
	r6 -= r1
	if r6 s<= 1 goto .L384
	r6 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r6
	r6 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r6
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	if r9 == 1 goto .L371
	if r9 == 2 goto .L382
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r6 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r6
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
.L382:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r6 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r6
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	goto .L371
	.size	swab, .-swab
	.align	3
	.global	isalpha
	.type	isalpha, @function
isalpha:
	r1 = r1;r1 &= 0xffffffff
	r1 |= 32
	r1 += -97
	r2 = r1;r2 &= 0xffffffff
	r0 = 1
	if r2 <= 24 goto .L386
	r0 = 0
.L386:
	r0 &= 1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 126 goto .L388
	r0 = 0
.L388:
	r0 &= 1
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L391
	if r1 != 9 goto .L392
	r0 = 1
	exit
.L391:
	r0 = 1
	exit
.L392:
	r0 = 0
	exit
	.size	isblank, .-isblank
	.align	3
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	r1 >>= 32
	if r1 <= 30 goto .L395
	if r0 != 127 goto .L396
	r0 = 1
	exit
.L395:
	r0 = 1
	exit
.L396:
	r0 = 0
	exit
	.size	iscntrl, .-iscntrl
	.align	3
	.global	isdigit
	.type	isdigit, @function
isdigit:
	r1 += -48
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 8 goto .L398
	r0 = 0
.L398:
	r0 &= 1
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 92 goto .L400
	r0 = 0
.L400:
	r0 &= 1
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 24 goto .L402
	r0 = 0
.L402:
	r0 &= 1
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 93 goto .L404
	r0 = 0
.L404:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L407
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L408
	r0 = 1
	exit
.L407:
	r0 = 1
	exit
.L408:
	r0 = 0
	exit
	.size	isspace, .-isspace
	.align	3
	.global	isupper
	.type	isupper, @function
isupper:
	r1 += -65
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 24 goto .L410
	r0 = 0
.L410:
	r0 &= 1
	exit
	.size	isupper, .-isupper
	.align	3
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	r1 >>= 32
	if r1 <= 30 goto .L413
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L414
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L415
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	if r5 > 2 goto .L416
	r0 = 1
	exit
.L413:
	r0 = 1
	exit
.L414:
	r0 = 1
	exit
.L415:
	r0 = 1
	exit
.L416:
	r0 = 0
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	r1 += -48
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 8 goto .L418
	r0 = 0
.L418:
	r0 &= 1
	exit
	.size	iswdigit, .-iswdigit
	.align	3
	.global	iswprint
	.type	iswprint, @function
iswprint:
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	r1 >>= 32
	if r1 > 254 goto .L420
	r0 += 1
	r0 &= 127
	r2 = 1
	if r0 s> 32 goto .L421
	r2 = 0
.L421:
	r0 = r2
	r0 &= 1
	exit
.L420:
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 8230 goto .L423
	r2 = r0
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L424
	r4 = r0
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L425
	r9 = r0
	r9 += -65532
	r1 = r9;r1 &= 0xffffffff
	if r1 > 1048579 goto .L426
	r0 &= 65534
	if r0 == 65534 goto .L427
	r0 = 1
	exit
.L423:
	r0 = 1
	exit
.L424:
	r0 = 1
	exit
.L425:
	r0 = 1
	exit
.L426:
	r0 = 0
	exit
.L427:
	r0 = 0
	exit
	.size	iswprint, .-iswprint
	.align	3
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	r0 += -48
	r2 = r0;r2 &= 0xffffffff
	if r2 <= 8 goto .L430
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 5 goto .L431
	r0 = 1
	exit
.L430:
	r0 = 1
	exit
.L431:
	r0 = 0
	exit
	.size	iswxdigit, .-iswxdigit
	.align	3
	.global	toascii
	.type	toascii, @function
toascii:
	r0 = r1
	r0 &= 127
	exit
	.size	toascii, .-toascii
	.align	3
	.global	fdim
	.type	fdim, @function
fdim:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L436
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L437
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L440
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L436:
	r0 = r6
	exit
.L437:
	r0 = r7
	exit
.L440:
	r0 = 0x0000000000000000 ll
	exit
	.size	fdim, .-fdim
	.align	3
	.global	fdimf
	.type	fdimf, @function
fdimf:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L444
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L445
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L448
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L444:
	r0 = r6
	exit
.L445:
	r0 = r7
	exit
.L448:
	r0 = 0x00000000 ll
	exit
	.size	fdimf, .-fdimf
	.align	3
	.global	fmax
	.type	fmax, @function
fmax:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L453
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L454
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L451
	if r6 s>= 0 goto .L455
	r0 = r7
	exit
.L451:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L458
	r0 = r7
	exit
.L453:
	r0 = r7
	exit
.L454:
	r0 = r6
	exit
.L455:
	r0 = r6
	exit
.L458:
	r0 = r6
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L463
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L464
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L461
	r2 = r6
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L465
	r0 = r7
	exit
.L461:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s> 0 goto .L468
	r0 = r7
	exit
.L463:
	r0 = r7
	exit
.L464:
	r0 = r6
	exit
.L465:
	r0 = r6
	exit
.L468:
	r0 = r6
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L473
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L474
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L471
	if r6 s>= 0 goto .L475
	r0 = r7
	exit
.L471:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L478
	r0 = r7
	exit
.L473:
	r0 = r7
	exit
.L474:
	r0 = r6
	exit
.L475:
	r0 = r6
	exit
.L478:
	r0 = r6
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L483
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L484
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L481
	if r7 s>= 0 goto .L485
	r0 = r7
	exit
.L481:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L488
	r0 = r7
	exit
.L483:
	r0 = r6
	exit
.L484:
	r0 = r7
	exit
.L485:
	r0 = r6
	exit
.L488:
	r0 = r6
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L493
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L494
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L491
	r2 = r7
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L495
	r0 = r7
	exit
.L491:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s> 0 goto .L498
	r0 = r7
	exit
.L493:
	r0 = r6
	exit
.L494:
	r0 = r7
	exit
.L495:
	r0 = r6
	exit
.L498:
	r0 = r6
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L503
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L504
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L501
	if r7 s>= 0 goto .L505
	r0 = r7
	exit
.L501:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L508
	r0 = r7
	exit
.L503:
	r0 = r6
	exit
.L504:
	r0 = r7
	exit
.L505:
	r0 = r6
	exit
.L508:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r9 = s.0 ll
	if r1 == 0 goto .L519
	r3 = r1
	r3 &= 63
	r2 = digits ll
	r2 += r3
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r9+0) = r4
	r9 += 1
	r5 = r9
	r1 >>= 6
	if r1 != 0 goto .L512
.L519:
	*(u8 *) (r9+0) = 0
	r0 = s.0 ll
	exit
.L512:
	r9 = r1
	r9 &= 63
	r0 = digits ll
	r0 += r9
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
	r9 = r5
	r9 += 1
	r1 >>= 6
	if r1 == 0 goto .L519
	r2 = r1
	r2 &= 63
	r4 = digits ll
	r4 += r2
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r9 += 1
	r1 >>= 6
	if r1 == 0 goto .L519
	r0 = r1
	r0 &= 63
	r3 = digits ll
	r3 += r0
	r2 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r2
	r9 += 1
	r1 >>= 6
	if r1 == 0 goto .L519
	r4 = r1
	r4 &= 63
	r5 = digits ll
	r5 += r4
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
	r9 += 1
	r1 >>= 6
	if r1 == 0 goto .L519
	r3 = digits ll
	r3 += r1
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r1
	r9 += 1
	goto .L519
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	3
	.global	srand
	.type	srand, @function
srand:
	r1 += -1
	r1 = r1;r1 &= 0xffffffff
	r0 = seed ll
	*(u64 *) (r0+0) = r1
	exit
	.size	srand, .-srand
	.align	3
	.global	rand
	.type	rand, @function
rand:
	r1 = seed ll
	r0 = *(u64 *) (r1+0)
	r2 = 6364136223846793005 ll
	r0 *= r2
	r0 += 1
	*(u64 *) (r1+0) = r0
	r0 >>= 33
	exit
	.size	rand, .-rand
	.align	3
	.global	insque
	.type	insque, @function
insque:
	if r2 != 0 goto .L523
	r3 = 0
	*(u64 *) (r1+8) = r3
	*(u64 *) (r1+0) = r3
	exit
.L523:
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L522
	*(u64 *) (r2+8) = r1
.L522:
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L526
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L526:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L525
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L525:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s>= 0 goto .L529
	r1 = -r1
	r0 = r1
.L529:
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r6 = r1
	goto .L531
.L532:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L542
	goto .L549
.L531:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L532
.L549:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L538
	if r0 != 45 goto .L539
	r3 = 1
	goto .L533
.L538:
	r3 = 0
.L533:
	r6 += 1
	goto .L534
.L539:
	r3 = 0
.L534:
	r1 = r6
	r0 = 0
	goto .L535
.L536:
	r5 = r0
	r5 <<= 2
	r0 += r5
	r0 <<= 33
	r0 s>>= 32
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r0 <<= 32
	r0 s>>= 32
	r1 += 1
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r4 = r2;r4 &= 0xffffffff
	if r4 <= 8 goto .L541
	goto .L550
.L535:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r4 = r2;r4 &= 0xffffffff
	if r4 <= 8 goto .L536
.L550:
	if r3 != 0 goto .L537
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L537:
	exit
.L541:
	r5 = r0
	r5 <<= 2
	r0 += r5
	r0 <<= 33
	r0 s>>= 32
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r0 <<= 32
	r0 s>>= 32
	r1 += 1
	goto .L535
.L542:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L549
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L549
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L549
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L549
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L549
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L549
	r6 += 1
	goto .L531
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r6 = r1
	goto .L552
.L553:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L565
	goto .L572
.L552:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L553
.L572:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L559
	if r0 != 45 goto .L560
	r3 = 1
	goto .L554
.L559:
	r3 = 0
.L554:
	r6 += 1
	goto .L555
.L560:
	r3 = 0
.L555:
	r0 = 0
	goto .L556
.L557:
	r0 *= 10
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r6 += 1
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r9 = r5;r9 &= 0xffffffff
	if r9 <= 8 goto .L562
	goto .L573
.L556:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r1 <= 8 goto .L557
.L573:
	if r3 != 0 goto .L558
	r0 = -r0
.L558:
	exit
.L562:
	r0 *= 10
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r0 -= r2
	r4 = r6
	r4 += 1
	r1 = *(u8 *) (r4+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r5 = r1;r5 &= 0xffffffff
	if r5 > 8 goto .L573
	r0 *= 10
	r9 = *(u8 *) (r4+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r4 += 1
	r2 = *(u8 *) (r4+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r1 > 8 goto .L573
	r0 *= 10
	r4 = *(u8 *) (r4+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r6 += 3
	goto .L556
.L565:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L572
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L572
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L572
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L572
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L572
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L572
	r6 += 1
	goto .L552
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r6 = r1
	goto .L575
.L576:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L588
	goto .L595
.L575:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L576
.L595:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L582
	if r0 != 45 goto .L583
	r3 = 1
	goto .L577
.L582:
	r3 = 0
.L577:
	r6 += 1
	goto .L578
.L583:
	r3 = 0
.L578:
	r0 = 0
	goto .L579
.L580:
	r0 *= 10
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r6 += 1
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r9 = r5;r9 &= 0xffffffff
	if r9 <= 8 goto .L585
	goto .L596
.L579:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r1 <= 8 goto .L580
.L596:
	if r3 != 0 goto .L581
	r0 = -r0
.L581:
	exit
.L585:
	r0 *= 10
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r0 -= r2
	r4 = r6
	r4 += 1
	r1 = *(u8 *) (r4+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r5 = r1;r5 &= 0xffffffff
	if r5 > 8 goto .L596
	r0 *= 10
	r9 = *(u8 *) (r4+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r4 += 1
	r2 = *(u8 *) (r4+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r1 > 8 goto .L596
	r0 *= 10
	r4 = *(u8 *) (r4+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r6 += 3
	goto .L579
.L588:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L595
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L595
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L595
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L595
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L595
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L595
	r6 += 1
	goto .L575
	.size	atoll, .-atoll
	.align	3
	.global	div
	.type	div, @function
div:
	r6 = r1
	r2 <<= 32
	r2 s>>= 32
	r7 = r2
	r3 <<= 32
	r3 s>>= 32
	r8 = r3
	r2 = r3
	r1 = r7
	call	__divdi3
	r0 <<= 32
	r0 s>>= 32
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u32 *) (r6+0) = r1
	*(u32 *) (r6+4) = r0
	r0 = r6
	exit
	.size	div, .-div
	.align	3
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	r0 = r1
	if r1 s>= 0 goto .L599
	r0 = -r0
.L599:
	exit
	.size	imaxabs, .-imaxabs
	.align	3
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	r6 = r1
	r7 = r2
	r8 = r3
	r2 = r3
	r1 = r7
	call	__divdi3
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r6+0) = r1
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	imaxdiv, .-imaxdiv
	.align	3
	.global	labs
	.type	labs, @function
labs:
	r0 = r1
	if r1 s>= 0 goto .L602
	r0 = -r0
.L602:
	exit
	.size	labs, .-labs
	.align	3
	.global	ldiv
	.type	ldiv, @function
ldiv:
	r6 = r1
	r7 = r2
	r8 = r3
	r2 = r3
	r1 = r7
	call	__divdi3
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r6+0) = r1
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	ldiv, .-ldiv
	.align	3
	.global	llabs
	.type	llabs, @function
llabs:
	r0 = r1
	if r1 s>= 0 goto .L605
	r0 = -r0
.L605:
	exit
	.size	llabs, .-llabs
	.align	3
	.global	lldiv
	.type	lldiv, @function
lldiv:
	r6 = r1
	r7 = r2
	r8 = r3
	r2 = r3
	r1 = r7
	call	__divdi3
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r6+0) = r1
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	lldiv, .-lldiv
	.align	3
	.global	wcschr
	.type	wcschr, @function
wcschr:
	r2 <<= 32
	r2 s>>= 32
	goto .L608
.L610:
	r1 += 4
.L608:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L609
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r2 != r3 goto .L610
.L609:
	r2 = *(u32 *) (r1+0)
	if r2 == 0 goto .L612
	r0 = r1
	exit
.L612:
	r0 = 0
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L614
.L616:
	r1 += 4
	r2 += 4
.L614:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r0 goto .L615
	r4 = *(u32 *) (r1+0)
	if r4 == 0 goto .L615
	r5 = *(u32 *) (r2+0)
	if r5 != 0 goto .L616
.L615:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 s>= r9 goto .L619
	r3 = r0
	r0 = 1
	if r3 s< r9 goto .L618
	r0 = 0
.L618:
	r0 &= 1
	exit
.L619:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L621:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 != 0 goto .L630
.L637:
	r0 = r1
	exit
.L630:
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L637
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L637
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L637
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L637
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L637
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L637
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L621
	goto .L637
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = r1
	goto .L639
.L640:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 != 0 goto .L641
	goto .L648
.L639:
	r2 = *(u32 *) (r0+0)
	if r2 != 0 goto .L640
.L648:
	r0 -= r1
	r0 s>>= 2
	exit
.L641:
	r0 += 4
	r5 = *(u32 *) (r4+4)
	if r5 == 0 goto .L648
	r0 += 4
	r9 = *(u32 *) (r4+8)
	if r9 == 0 goto .L648
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L648
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L648
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L648
	r0 += 4
	r4 = *(u32 *) (r4+24)
	if r4 == 0 goto .L648
	r0 += 4
	goto .L639
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	r5 = r3
	r5 &= 3
	if r5 != 0 goto .L673
	goto .L650
.L652:
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r2 += 4
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 == r9 goto .L674
	goto .L651
.L650:
	if r3 == 0 goto .L651
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L651
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L651
	r0 = *(u32 *) (r2+0)
	if r0 != 0 goto .L652
.L651:
	if r3 == 0 goto .L655
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L656
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L654
	r0 = 0
.L654:
	r0 &= 1
	exit
.L655:
	r0 = 0
	exit
.L656:
	r0 = -1
	exit
.L673:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r0 goto .L651
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L651
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L651
	r3 += -1
	r1 += 4
	r2 += 4
	if r5 == 1 goto .L650
	if r5 == 2 goto .L672
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L651
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L651
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L651
	r3 += -1
	r1 += 4
	r2 += 4
.L672:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L651
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L651
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L651
	r3 += -1
	r1 += 4
	r2 += 4
	goto .L650
.L674:
	r6 = *(u32 *) (r0+0)
	if r6 == 0 goto .L651
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L651
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L651
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L651
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L651
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L651
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L651
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L651
	r3 += -1
	r0 += 12
	r1 = r0
	r2 += 4
	goto .L650
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	r4 = r3
	r4 &= 7
	if r4 != 0 goto .L721
	goto .L676
.L678:
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r5 = *(u32 *) (r0+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 != r5 goto .L695
	goto .L677
.L676:
	if r3 == 0 goto .L677
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 != r4 goto .L678
.L677:
	if r3 == 0 goto .L680
	r0 = r1
	exit
.L680:
	r0 = 0
	exit
.L721:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L677
	r3 += -1
	r1 += 4
	if r4 == 1 goto .L676
	if r4 == 2 goto .L716
	if r4 == 3 goto .L717
	if r4 == 4 goto .L718
	if r4 == 5 goto .L719
	if r4 == 6 goto .L720
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L677
	r3 += -1
	r1 += 4
.L720:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L677
	r3 += -1
	r1 += 4
.L719:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L677
	r3 += -1
	r1 += 4
.L718:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L677
	r3 += -1
	r1 += 4
.L717:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L677
	r3 += -1
	r1 += 4
.L716:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L677
	r3 += -1
	r1 += 4
	goto .L676
.L695:
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L677
	r3 += -1
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L677
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L677
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L677
	r3 += -1
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L677
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L677
	r3 += -1
	r0 += 28
	r1 = r0
	goto .L676
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	r0 = r3
	r0 &= 7
	if r0 != 0 goto .L770
	goto .L723
.L725:
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r6 = *(u32 *) (r0+0)
	r6 <<= 32
	if r6 == r9 goto .L744
	goto .L724
.L723:
	if r3 == 0 goto .L724
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 == r9 goto .L725
.L724:
	if r3 == 0 goto .L728
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L729
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L727
	r0 = 0
.L727:
	r0 &= 1
	exit
.L728:
	r0 = 0
	exit
.L729:
	r0 = -1
	exit
.L770:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 == 1 goto .L723
	if r0 == 2 goto .L765
	if r0 == 3 goto .L766
	if r0 == 4 goto .L767
	if r0 == 5 goto .L768
	if r0 == 6 goto .L769
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
.L769:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
.L768:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
.L767:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
.L766:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
.L765:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	goto .L723
.L744:
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L724
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	goto .L723
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 != 0 goto .L800
	goto .L772
.L773:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r5 = *(u32 *) (r2+4)
	*(u32 *) (r0+4) = r5
	r3 = *(u32 *) (r2+8)
	*(u32 *) (r0+8) = r3
	r4 = *(u32 *) (r2+12)
	*(u32 *) (r0+12) = r4
	r5 = *(u32 *) (r2+16)
	*(u32 *) (r0+16) = r5
	r3 = *(u32 *) (r2+20)
	*(u32 *) (r0+20) = r3
	r3 = r9
	r3 += -7
	r9 = *(u32 *) (r2+24)
	*(u32 *) (r0+24) = r9
	r0 += 28
	r2 += 28
.L772:
	r9 = r3
	r9 += -1
	if r3 != 0 goto .L773
	r0 = r1
	exit
.L800:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r2 += 4
	if r4 == 1 goto .L772
	if r4 == 2 goto .L795
	if r4 == 3 goto .L796
	if r4 == 4 goto .L797
	if r4 == 5 goto .L798
	if r4 == 6 goto .L799
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L799:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L798:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
.L797:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L796:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L795:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	goto .L772
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	r0 = r1
	if r1 == r2 goto .L802
	r4 = r3
	r4 <<= 2
	r1 -= r2
	if r4 >= r1 goto .L803
	r1 = r0
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L860
	goto .L804
.L803:
	r1 = r3
	r1 <<= 2
	r3 &= 7
	if r3 != 0 goto .L861
	goto .L805
.L806:
	r4 = r2
	r4 += r9
	r1 = r0
	r1 += r9
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r1+0) = r5
	r3 = r9
	r3 += -4
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -8
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -12
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -16
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -20
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -24
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r1 = r9
	r1 += -28
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L805:
	r9 = r1
	r9 += -4
	if r1 != 0 goto .L806
	exit
.L807:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r5 = *(u32 *) (r2+4)
	*(u32 *) (r1+4) = r5
	r3 = *(u32 *) (r2+8)
	*(u32 *) (r1+8) = r3
	r9 = *(u32 *) (r2+12)
	*(u32 *) (r1+12) = r9
	r5 = *(u32 *) (r2+16)
	*(u32 *) (r1+16) = r5
	r3 = *(u32 *) (r2+20)
	*(u32 *) (r1+20) = r3
	r3 = r4
	r3 += -7
	r4 = *(u32 *) (r2+24)
	*(u32 *) (r1+24) = r4
	r1 += 28
	r2 += 28
.L804:
	r4 = r3
	r4 += -1
	if r3 != 0 goto .L807
.L802:
	exit
.L861:
	r1 += -4
	r9 = r2
	r9 += r1
	r4 = r0
	r4 += r1
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	if r3 == 1 goto .L805
	if r3 == 2 goto .L850
	if r3 == 3 goto .L851
	if r3 == 4 goto .L852
	if r3 == 5 goto .L853
	if r3 == 6 goto .L854
	r1 += -4
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L854:
	r1 += -4
	r5 = r2
	r5 += r1
	r9 = r0
	r9 += r1
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
.L853:
	r1 += -4
	r4 = r2
	r4 += r1
	r5 = r0
	r5 += r1
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
.L852:
	r1 += -4
	r4 = r2
	r4 += r1
	r3 = r0
	r3 += r1
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r3+0) = r5
.L851:
	r1 += -4
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L850:
	r1 += -4
	r5 = r2
	r5 += r1
	r9 = r0
	r9 += r1
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
	goto .L805
.L860:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r1 += 4
	r2 += 4
	if r9 == 1 goto .L804
	if r9 == 2 goto .L855
	if r9 == 3 goto .L856
	if r9 == 4 goto .L857
	if r9 == 5 goto .L858
	if r9 == 6 goto .L859
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r4
	r1 += 4
	r2 += 4
.L859:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r1 += 4
	r2 += 4
.L858:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r1 += 4
	r2 += 4
.L857:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r4
	r1 += 4
	r2 += 4
.L856:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r1 += 4
	r2 += 4
.L855:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r1 += 4
	r2 += 4
	goto .L804
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r2 s>>= 32
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 != 0 goto .L891
	goto .L863
.L864:
	*(u32 *) (r0+0) = r2
	r0 += 4
	*(u32 *) (r0+0) = r2
	*(u32 *) (r0+4) = r2
	*(u32 *) (r0+8) = r2
	*(u32 *) (r0+12) = r2
	*(u32 *) (r0+16) = r2
	*(u32 *) (r0+20) = r2
	r3 = r5
	r3 += -7
	*(u32 *) (r0+24) = r2
	r0 += 28
.L863:
	r5 = r3
	r5 += -1
	if r3 != 0 goto .L864
	r0 = r1
	exit
.L891:
	r3 += -1
	*(u32 *) (r1+0) = r2
	r0 += 4
	if r4 == 1 goto .L863
	if r4 == 2 goto .L886
	if r4 == 3 goto .L887
	if r4 == 4 goto .L888
	if r4 == 5 goto .L889
	if r4 == 6 goto .L890
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L890:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L889:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L888:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L887:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L886:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
	goto .L863
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L893
	r0 = r1
	r0 += r3
	r2 += r3
	r3 = r0
	r3 -= r1
	r3 &= 7
	if r3 != 0 goto .L941
	goto .L894
.L895:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r4 = *(u8 *) (r0+-1)
	*(u8 *) (r2+-1) = r4
	r5 = *(u8 *) (r0+-2)
	*(u8 *) (r2+-2) = r5
	r9 = *(u8 *) (r0+-3)
	*(u8 *) (r2+-3) = r9
	r3 = *(u8 *) (r0+-4)
	*(u8 *) (r2+-4) = r3
	r4 = *(u8 *) (r0+-5)
	*(u8 *) (r2+-5) = r4
	r5 = *(u8 *) (r0+-6)
	*(u8 *) (r2+-6) = r5
	r0 += -7
	r2 += -7
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L894:
	if r0 != r1 goto .L895
	exit
.L893:
	if r1 == r2 goto .L892
	r0 = r2
	r2 += r3
	r3 = r2
	r3 -= r0
	r3 &= 7
	if r3 != 0 goto .L942
	goto .L897
.L898:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r3
	r1 += 1
	r0 += 1
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r5 = *(u8 *) (r1+1)
	*(u8 *) (r0+1) = r5
	r9 = *(u8 *) (r1+2)
	*(u8 *) (r0+2) = r9
	r3 = *(u8 *) (r1+3)
	*(u8 *) (r0+3) = r3
	r4 = *(u8 *) (r1+4)
	*(u8 *) (r0+4) = r4
	r5 = *(u8 *) (r1+5)
	*(u8 *) (r0+5) = r5
	r9 = *(u8 *) (r1+6)
	*(u8 *) (r0+6) = r9
	r1 += 7
	r0 += 7
.L897:
	if r0 != r2 goto .L898
.L892:
	exit
.L941:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r3 == 1 goto .L894
	if r3 == 2 goto .L910
	if r3 == 3 goto .L908
	if r3 == 4 goto .L906
	if r3 == 5 goto .L904
	if r3 == 6 goto .L902
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L902:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L904:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L906:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L908:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L910:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	goto .L894
.L942:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
	if r3 == 1 goto .L897
	if r3 == 2 goto .L931
	if r3 == 3 goto .L929
	if r3 == 4 goto .L927
	if r3 == 5 goto .L925
	if r3 == 6 goto .L923
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L923:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
.L925:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r3
	r1 += 1
	r0 += 1
.L927:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
.L929:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L931:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
	goto .L897
	.size	bcopy, .-bcopy
	.align	3
	.global	rotl64
	.type	rotl64, @function
rotl64:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 <<= r2
	r0 = -r0
	r0 &= 63
	r1 >>= r0
	r0 = r1
	r0 |= r3
	exit
	.size	rotl64, .-rotl64
	.align	3
	.global	rotr64
	.type	rotr64, @function
rotr64:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 >>= r2
	r0 = -r0
	r0 &= 63
	r1 <<= r0
	r0 = r1
	r0 |= r3
	exit
	.size	rotr64, .-rotr64
	.align	3
	.global	rotl32
	.type	rotl32, @function
rotl32:
	r1 = r1;r1 &= 0xffffffff
	r2 <<= 32
	r3 = r2
	r3 s>>= 32
	r2 >>= 32
	r0 = r1
	r0 <<= r2
	r3 = -r3
	r3 &= 31
	r1 >>= r3
	r0 |= r1
	r0 = r0;r0 &= 0xffffffff
	exit
	.size	rotl32, .-rotl32
	.align	3
	.global	rotr32
	.type	rotr32, @function
rotr32:
	r1 = r1;r1 &= 0xffffffff
	r2 <<= 32
	r3 = r2
	r3 s>>= 32
	r2 >>= 32
	r0 = r1
	r0 >>= r2
	r3 = -r3
	r3 &= 31
	r1 <<= r3
	r0 |= r1
	r0 = r0;r0 &= 0xffffffff
	exit
	.size	rotr32, .-rotr32
	.align	3
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	r2 = r2;r2 &= 0xffffffff
	r3 = r1
	r3 <<= r2
	r0 = 64
	r0 -= r2
	r4 = r0;r4 &= 0xffffffff
	r1 >>= r4
	r0 = r1
	r0 |= r3
	exit
	.size	rotl_sz, .-rotl_sz
	.align	3
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	r2 = r2;r2 &= 0xffffffff
	r3 = r1
	r3 >>= r2
	r0 = 64
	r0 -= r2
	r4 = r0;r4 &= 0xffffffff
	r1 <<= r4
	r0 = r1
	r0 |= r3
	exit
	.size	rotr_sz, .-rotr_sz
	.align	3
	.global	rotl16
	.type	rotl16, @function
rotl16:
	r1 &= 0xffff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 <<= r2
	r0 = 16
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r1 |= r3
	r0 = r1;r0 &= 0xffff
	exit
	.size	rotl16, .-rotl16
	.align	3
	.global	rotr16
	.type	rotr16, @function
rotr16:
	r1 &= 0xffff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 >>= r2
	r0 = 16
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 <<= r2
	r1 |= r3
	r0 = r1;r0 &= 0xffff
	exit
	.size	rotr16, .-rotr16
	.align	3
	.global	rotl8
	.type	rotl8, @function
rotl8:
	r1 &= 0xff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 <<= r2
	r0 = 8
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r1 |= r3
	r0 = r1;r0 &= 0xff
	exit
	.size	rotl8, .-rotl8
	.align	3
	.global	rotr8
	.type	rotr8, @function
rotr8:
	r1 &= 0xff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 >>= r2
	r0 = 8
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 <<= r2
	r1 |= r3
	r0 = r1;r0 &= 0xff
	exit
	.size	rotr8, .-rotr8
	.align	3
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	r2 = r1
	r2 &= 65280
	r2 >>= 8
	r0 = r1
	r0 <<= 56
	r0 >>= 48
	r0 |= r2
	exit
	.size	bswap_16, .-bswap_16
	.align	3
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r1
	r2 >>= 24
	r0 = r1
	r0 &= 16711680
	r0 >>= 8
	r0 |= r2
	r3 = r1
	r3 &= 65280
	r3 <<= 8
	r0 |= r3
	r1 &= 0xff
	r1 <<= 24
	r0 |= r1
	exit
	.size	bswap_32, .-bswap_32
	.align	3
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	r2 = r1
	r2 >>= 56
	r0 = r1
	r0 >>= 40
	r0 &= 65280
	r0 |= r2
	r3 = r1
	r3 >>= 24
	r3 &= 16711680
	r0 |= r3
	r4 = 1095216660480 ll
	r5 = r1
	r5 &= r4
	r5 >>= 8
	r0 |= r5
	r9 = 4278190080 ll
	r2 = r1
	r2 &= r9
	r2 <<= 8
	r0 |= r2
	r3 = r1
	r3 &= 16711680
	r3 <<= 24
	r0 |= r3
	r4 = r1
	r4 &= 65280
	r4 <<= 40
	r0 |= r4
	r1 <<= 56
	r0 |= r1
	exit
	.size	bswap_64, .-bswap_64
	.align	3
	.global	ffs
	.type	ffs, @function
ffs:
	r1 <<= 32
	r1 s>>= 32
	r0 = 0
	goto .L957
.L960:
	r2 = r1;r2 &= 0xffffffff
	r2 >>= r0
	r2 &= 1
	if r2 == 0 goto .L958
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	exit
.L958:
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
.L957:
	if r0 != 32 goto .L960
	r0 = 0
	exit
	.size	ffs, .-ffs
	.align	3
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	r1 <<= 32
	r2 = r1
	r2 s>>= 32
	if r1 == 0 goto .L965
	r0 = 1
	goto .L963
.L964:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 == 0 goto .L966
	exit
.L963:
	r1 = r2
	r1 &= 1
	if r1 == 0 goto .L964
	exit
.L965:
	r0 = 0
.L962:
	exit
.L966:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L962
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L962
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L962
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L962
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L962
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L962
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	goto .L963
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L977
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L980
	r0 = 1
	exit
.L977:
	r0 = 1
	exit
.L980:
	r0 = 0
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L984
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L987
	r0 = 1
	exit
.L984:
	r0 = 1
	exit
.L987:
	r0 = 0
	exit
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L991
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L994
	r0 = 1
	exit
.L991:
	r0 = 1
	exit
.L994:
	r0 = 0
	exit
	.size	gl_isinfl, .-gl_isinfl
	.align	3
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	r6 = r1
	r1 = r2;r1 &= 0xffffffff
	call	__bpf_floatsidf
	*(u64 *) (r6+0) = r0
	exit
	.size	_Qp_itoq, .-_Qp_itoq
	.align	3
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	r8 = r1
	r2 <<= 32
	r2 s>>= 32
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L997
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r0
	r1 = r8
	call	__nesf2
	if r0 == 0 goto .L997
	if r6 s>= 0 goto .L1002
	r7 = 0x3f000000 ll
	goto .L1001
.L1002:
	r7 = 0x40000000 ll
.L1001:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1000
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
.L1000:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L997
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L1001
.L997:
	r0 = r8
	exit
	.size	ldexpf, .-ldexpf
	.align	3
	.global	ldexp
	.type	ldexp, @function
ldexp:
	r8 = r1
	r2 <<= 32
	r2 s>>= 32
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1005
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1005
	if r6 s>= 0 goto .L1010
	r7 = 0x3fe0000000000000 ll
	goto .L1009
.L1010:
	r7 = 0x4000000000000000 ll
.L1009:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1008
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
.L1008:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1005
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L1009
.L1005:
	r0 = r8
	exit
	.size	ldexp, .-ldexp
	.align	3
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	r8 = r1
	r2 <<= 32
	r2 s>>= 32
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1013
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1013
	if r6 s>= 0 goto .L1018
	r7 = 0x3fe0000000000000 ll
	goto .L1017
.L1018:
	r7 = 0x4000000000000000 ll
.L1017:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1016
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
.L1016:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1013
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L1017
.L1013:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 3
	if r3 != 0 goto .L1032
	goto .L1021
.L1022:
	r5 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r0+0)
	r5 ^= r9
	*(u8 *) (r0+0) = r5
	r5 = r0
	r5 += 1
	r9 = *(u8 *) (r2+1)
	r3 = *(u8 *) (r5+0)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r9 = *(u8 *) (r2+2)
	r3 = *(u8 *) (r5+0)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r2 += 3
	r0 += 3
.L1021:
	if r0 != r4 goto .L1022
	r0 = r1
	exit
.L1032:
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r1+0)
	r5 ^= r9
	*(u8 *) (r1+0) = r5
	r2 += 1
	r0 += 1
	if r3 == 1 goto .L1021
	if r3 == 2 goto .L1026
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L1026:
	r5 = *(u8 *) (r2+0)
	r9 = *(u8 *) (r0+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	goto .L1021
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r8 = r1
	r6 = r2
	r7 = r3
	call	strlen
	r1 = r0
	r0 = r8
	r0 += r1
	r2 = r7
	r2 &= 7
	if r2 != 0 goto .L1078
	goto .L1034
.L1036:
	r6 += 1
	r0 += 1
	r9 = r7
	r9 += -1
	r7 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 != 0 goto .L1052
	goto .L1035
.L1034:
	if r7 == 0 goto .L1035
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 != 0 goto .L1036
.L1035:
	if r7 != 0 goto .L1037
	*(u8 *) (r0+0) = 0
.L1037:
	r0 = r8
	exit
.L1078:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1035
	r6 += 1
	r0 += 1
	r7 += -1
	if r2 == 1 goto .L1034
	if r2 == 2 goto .L1073
	if r2 == 3 goto .L1074
	if r2 == 4 goto .L1075
	if r2 == 5 goto .L1076
	if r2 == 6 goto .L1077
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1035
	r6 += 1
	r0 += 1
	r7 += -1
.L1077:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1035
	r6 += 1
	r0 += 1
	r7 += -1
.L1076:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1035
	r6 += 1
	r0 += 1
	r7 += -1
.L1075:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1035
	r6 += 1
	r0 += 1
	r7 += -1
.L1074:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1035
	r6 += 1
	r0 += 1
	r7 += -1
.L1073:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1035
	r6 += 1
	r0 += 1
	r7 += -1
	goto .L1034
.L1052:
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1035
	r0 += 1
	r7 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1035
	r0 += 1
	r7 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1035
	r0 += 1
	r7 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1035
	r0 += 1
	r7 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1035
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1035
	r6 += 7
	r0 += 1
	r9 += -7
	r7 = r9
	goto .L1034
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r0 = 0
	r3 = r2
	r3 &= 7
	if r3 != r0 goto .L1123
	goto .L1080
.L1082:
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1081
	goto .L1097
.L1080:
	if r0 == r2 goto .L1081
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 != 0 goto .L1082
.L1081:
	exit
.L1123:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1081
	r0 += 1
	if r3 == 1 goto .L1080
	if r3 == 2 goto .L1118
	if r3 == 3 goto .L1119
	if r3 == 4 goto .L1120
	if r3 == 5 goto .L1121
	if r3 == 6 goto .L1122
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1081
	r0 += 1
.L1122:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1081
	r0 += 1
.L1121:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1081
	r0 += 1
.L1120:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1081
	r0 += 1
.L1119:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1081
	r0 += 1
.L1118:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1081
	r0 += 1
	goto .L1080
.L1097:
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1081
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1081
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1081
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1081
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1081
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1081
	r0 += 1
	goto .L1080
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	goto .L1125
.L1127:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r3 += 1
	if r5 == r9 goto .L1129
.L1128:
	r4 = *(u8 *) (r3+0)
	if r4 != 0 goto .L1127
	r1 += 1
.L1125:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1130
	r3 = r2
	goto .L1128
.L1129:
	r0 = r1
	exit
.L1130:
	r0 = 0
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
.L1133:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1132
	r3 = r1
.L1132:
	r1 += 1
	r4 = *(u8 *) (r1+-1)
	if r4 != 0 goto .L1133
	r0 = r3
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r6 = r1
	r7 = r2
	r1 = r2
	call	strlen
	r8 = r0
	if r0 == 0 goto .L1140
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
	r1 = r6
	goto .L1138
.L1139:
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1141
	r1 = r6
	r1 += 1
.L1138:
	r2 = *(u32 *) (r10+-8)
	call	strchr
	r6 = r0
	if r0 != 0 goto .L1139
	r0 = 0
	exit
.L1140:
	r0 = r6
	exit
.L1141:
	r0 = r6
	exit
	.size	strstr, .-strstr
	.align	3
	.global	copysign
	.type	copysign, @function
copysign:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s> 0 goto .L1143
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s> 0 goto .L1145
.L1143:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1153
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1154
.L1145:
	r1 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r1
	exit
.L1153:
	r0 = r6
	exit
.L1154:
	r0 = r6
	exit
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r6 = r1
	r7 = r3
	r1 = r4
	*(u64 *) (r10+-16) = r4
	r0 = r2
	r0 -= r4
	r3 = r6
	r3 += r0
	*(u64 *) (r10+-8) = r3
	if r4 == 0 goto .L1161
	r4 = 1
	if r1 >= r2 goto .L1157
	r4 = 0
.L1157:
	r4 &= 0xff
	if r4 != 0 goto .L1162
	r8 = *(u64 *) (r10+-8)
	r8 -= r6
	r8 &= 3
	if r8 != 0 goto .L1179
	goto .L1158
.L1160:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 != r5 goto .L1159
	r3 = *(u64 *) (r10+-16)
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1163
.L1159:
	r6 += 1
	r8 = r6
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 != r0 goto .L1174
	goto .L1180
.L1158:
	r2 = *(u64 *) (r10+-8)
	if r2 > r6 goto .L1160
.L1181:
	r0 = 0
	exit
.L1161:
	r0 = r6
	exit
.L1162:
	r0 = 0
	exit
.L1163:
	r0 = r6
	exit
.L1179:
	r2 = *(u64 *) (r10+-8)
	if r2 <= r6 goto .L1181
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 != r5 goto .L1165
	r3 = *(u64 *) (r10+-16)
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1163
.L1165:
	r6 += 1
	if r8 == 1 goto .L1158
	if r8 == 2 goto .L1169
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 != r0 goto .L1167
	r3 = *(u64 *) (r10+-16)
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1163
.L1167:
	r6 += 1
.L1169:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r4 = *(u8 *) (r7+0)
	r4 <<= 56
	if r4 != r3 goto .L1170
	r3 = *(u64 *) (r10+-16)
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1163
.L1170:
	r6 += 1
	goto .L1158
.L1180:
	r3 = *(u64 *) (r10+-16)
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1163
.L1174:
	r6 = r8
	r6 += 1
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r4 = *(u8 *) (r7+0)
	r4 <<= 56
	if r4 != r3 goto .L1176
	r3 = *(u64 *) (r10+-16)
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1163
.L1176:
	r6 = r8
	r6 += 2
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r5 = *(u8 *) (r7+0)
	r5 <<= 56
	if r5 != r2 goto .L1178
	r3 = *(u64 *) (r10+-16)
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1163
.L1178:
	r6 = r8
	r6 += 3
	goto .L1158
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	r8 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s> 0 goto .L1205
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1183
.L1205:
	*(u64 *) (r10+-8) = 0
.L1183:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L1194
	goto .L1206
.L1187:
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L1199
	goto .L1188
.L1194:
	r7 = 0
.L1185:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L1187
	goto .L1188
.L1206:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1207
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1196
	r7 = 0
	goto .L1188
.L1191:
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r0 s<= 0 goto .L1202
	goto .L1188
.L1196:
	r7 = 0
.L1190:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L1191
	goto .L1188
.L1207:
	r7 = 0
.L1188:
	*(u32 *) (r8+0) = r7
	r1 = *(u64 *) (r10+-8)
	if r1 == 0 goto .L1192
	r2 = -9223372036854775808 ll
	r2 ^= r6
	r6 = r2
.L1192:
	r0 = r6
	exit
.L1199:
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1188
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1188
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	goto .L1185
.L1202:
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r0 s> 0 goto .L1188
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r0 s> 0 goto .L1188
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	goto .L1190
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = 0
	goto .L1209
.L1211:
	r0 = r1
	r0 &= 1
	if r0 == 0 goto .L1210
	r3 += r2
.L1210:
	r2 += r2
	r1 >>= 1
.L1209:
	if r1 != 0 goto .L1211
	r0 = r3
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r5 = 33
	r4 = 1
	goto .L1213
.L1215:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 < r1 goto .L1237
	goto .L1220
.L1213:
	if r2 >= r1 goto .L1220
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1221
	r0 = r2
	r0 <<= 32
	if r0 s>= 0 goto .L1215
.L1238:
	r0 = 0
	goto .L1216
.L1220:
	r0 = 0
	goto .L1216
.L1221:
	r0 = 0
	goto .L1216
.L1218:
	if r2 >= r1 goto .L1217
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
.L1217:
	r4 >>= 1
	r2 >>= 1
.L1216:
	if r4 != 0 goto .L1218
	if r3 == 0 goto .L1219
	r0 = r1
.L1219:
	exit
.L1237:
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1238
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1220
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1238
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1220
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1238
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1220
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1238
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1220
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1238
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1220
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1238
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1220
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1238
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	goto .L1213
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r0 = r1
	r0 s>>= 56
	if r1 s>= 0 goto .L1240
	r0 ^= -1
.L1240:
	if r0 == 0 goto .L1242
	r0 = r0;r0 &= 0xffffffff
	r0 <<= 8
	r1 = r0;r1 &= 0xffffffff
	call	__clzdi2
	r0 = r0;r0 &= 0xffffffff
	r0 += -32
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1242:
	r0 = 7
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	if r1 s>= 0 goto .L1244
	r1 ^= -1
.L1244:
	if r1 == 0 goto .L1246
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1246:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	goto .L1248
.L1250:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1249
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
.L1249:
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
.L1248:
	if r1 != 0 goto .L1250
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 3
	r0 = r3
	r0 &= -8
	r0 = r0;r0 &= 0xffffffff
	if r1 >= r2 goto .L1252
.L1254:
	r4 = r2
	r5 = r1
	r6 <<= 3
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 3
	r9 &= 7
	if r9 != 0 goto .L1334
	goto .L1253
.L1252:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1254
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L1335
	goto .L1255
.L1256:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r9 = *(u64 *) (r4+8)
	*(u64 *) (r5+8) = r9
	r9 = *(u64 *) (r4+16)
	*(u64 *) (r5+16) = r9
	r9 = *(u64 *) (r4+24)
	*(u64 *) (r5+24) = r9
	r9 = *(u64 *) (r4+32)
	*(u64 *) (r5+32) = r9
	r9 = *(u64 *) (r4+40)
	*(u64 *) (r5+40) = r9
	r9 = *(u64 *) (r4+48)
	*(u64 *) (r5+48) = r9
	r4 += 56
	r5 += 56
.L1253:
	if r4 != r6 goto .L1256
	r4 = r3
	r4 &= 7
	if r4 != 0 goto .L1336
	goto .L1257
.L1258:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r5 = r2
	r5 += r0
	r6 = r1
	r6 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r6+0) = r4
	r9 = r0
	r9 += 1
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 2
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 3
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 4
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 5
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 6
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r0 += 7
.L1257:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1258
	exit
.L1260:
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r9
	r3 += -1
	r5 = r3;r5 &= 0xffffffff
	r3 = r2
	r3 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r9 += -1
	r3 = r9;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
.L1255:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r0 = 4294967295 ll
	if r3 != r0 goto .L1260
.L1251:
	exit
.L1336:
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1251
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1257
	if r4 == 2 goto .L1324
	if r4 == 3 goto .L1325
	if r4 == 4 goto .L1326
	if r4 == 5 goto .L1327
	if r4 == 6 goto .L1328
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1328:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1327:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1326:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1325:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1324:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1257
.L1334:
	r7 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r7
	r4 += 8
	r5 += 8
	if r9 == 1 goto .L1253
	if r9 == 2 goto .L1293
	if r9 == 3 goto .L1291
	if r9 == 4 goto .L1289
	if r9 == 5 goto .L1287
	if r9 == 6 goto .L1285
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1285:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1287:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1289:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1291:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1293:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
	goto .L1253
.L1335:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	if r9 == 1 goto .L1255
	if r9 == 2 goto .L1329
	if r9 == 3 goto .L1330
	if r9 == 4 goto .L1331
	if r9 == 5 goto .L1332
	if r9 == 6 goto .L1333
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1333:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
.L1332:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r9
.L1331:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
.L1330:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1329:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	goto .L1255
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1338
.L1340:
	r0 = r2
	r4 = r1
	r9 += r9
	r9 += r2
	r5 = r9
	r5 -= r2
	r5 >>= 1
	r5 &= 7
	if r5 != 0 goto .L1392
	goto .L1339
.L1338:
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1340
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L1393
	goto .L1341
.L1342:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r5 = *(u16 *) (r0+2)
	*(u16 *) (r4+2) = r5
	r5 = *(u16 *) (r0+4)
	*(u16 *) (r4+4) = r5
	r5 = *(u16 *) (r0+6)
	*(u16 *) (r4+6) = r5
	r5 = *(u16 *) (r0+8)
	*(u16 *) (r4+8) = r5
	r5 = *(u16 *) (r0+10)
	*(u16 *) (r4+10) = r5
	r5 = *(u16 *) (r0+12)
	*(u16 *) (r4+12) = r5
	r0 += 14
	r4 += 14
.L1339:
	if r0 != r9 goto .L1342
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1337
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1344:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r3 = r2
	r3 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r3 = r2
	r3 += r9
	r0 = r1
	r0 += r9
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r5
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r4 = r2
	r4 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 += r5
	r3 = r1
	r3 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r4 = r2
	r4 += r5
	r9 = r1
	r9 += r5
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r0
	r5 += -1
	r3 = r5;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
.L1341:
	r3 += -1
	r9 = r3;r9 &= 0xffffffff
	r3 = 4294967295 ll
	if r9 != r3 goto .L1344
.L1337:
	exit
.L1392:
	r6 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r6
	r0 += 2
	r4 += 2
	if r5 == 1 goto .L1339
	if r5 == 2 goto .L1356
	if r5 == 3 goto .L1354
	if r5 == 4 goto .L1352
	if r5 == 5 goto .L1350
	if r5 == 6 goto .L1348
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1348:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1350:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1352:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1354:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1356:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	goto .L1339
.L1393:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	if r9 == 1 goto .L1341
	if r9 == 2 goto .L1387
	if r9 == 3 goto .L1388
	if r9 == 4 goto .L1389
	if r9 == 5 goto .L1390
	if r9 == 6 goto .L1391
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
.L1391:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r5
.L1390:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r0
.L1389:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
.L1388:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
.L1387:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	goto .L1341
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 2
	r0 = r3
	r0 &= -4
	r0 = r0;r0 &= 0xffffffff
	if r1 >= r2 goto .L1395
.L1397:
	r4 = r2
	r5 = r1
	r6 <<= 2
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 2
	r9 &= 7
	if r9 != 0 goto .L1477
	goto .L1396
.L1395:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1397
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L1478
	goto .L1398
.L1399:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r9 = *(u32 *) (r4+4)
	*(u32 *) (r5+4) = r9
	r9 = *(u32 *) (r4+8)
	*(u32 *) (r5+8) = r9
	r9 = *(u32 *) (r4+12)
	*(u32 *) (r5+12) = r9
	r9 = *(u32 *) (r4+16)
	*(u32 *) (r5+16) = r9
	r9 = *(u32 *) (r4+20)
	*(u32 *) (r5+20) = r9
	r9 = *(u32 *) (r4+24)
	*(u32 *) (r5+24) = r9
	r4 += 28
	r5 += 28
.L1396:
	if r4 != r6 goto .L1399
	r4 = r3
	r4 -= r0
	r4 &= 7
	if r4 != 0 goto .L1479
	goto .L1400
.L1401:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r5 = r2
	r5 += r0
	r6 = r1
	r6 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r6+0) = r4
	r9 = r0
	r9 += 1
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 2
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 3
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 4
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 5
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 6
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r0 += 7
.L1400:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1401
	exit
.L1403:
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r9
	r3 += -1
	r5 = r3;r5 &= 0xffffffff
	r3 = r2
	r3 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r9 += -1
	r3 = r9;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
.L1398:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r0 = 4294967295 ll
	if r3 != r0 goto .L1403
.L1394:
	exit
.L1479:
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1394
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1400
	if r4 == 2 goto .L1467
	if r4 == 3 goto .L1468
	if r4 == 4 goto .L1469
	if r4 == 5 goto .L1470
	if r4 == 6 goto .L1471
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1471:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1470:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1469:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1468:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1467:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1400
.L1477:
	r7 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r7
	r4 += 4
	r5 += 4
	if r9 == 1 goto .L1396
	if r9 == 2 goto .L1436
	if r9 == 3 goto .L1434
	if r9 == 4 goto .L1432
	if r9 == 5 goto .L1430
	if r9 == 6 goto .L1428
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1428:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1430:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1432:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1434:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1436:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
	goto .L1396
.L1478:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	if r9 == 1 goto .L1398
	if r9 == 2 goto .L1472
	if r9 == 3 goto .L1473
	if r9 == 4 goto .L1474
	if r9 == 5 goto .L1475
	if r9 == 6 goto .L1476
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1476:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
.L1475:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r9
.L1474:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
.L1473:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1472:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	goto .L1398
	.size	__cmovw, .-__cmovw
	.align	3
	.global	__modi
	.type	__modi, @function
__modi:
	r1 <<= 32
	r2 <<= 32
	r2 s>>= 32
	r1 s>>= 32
	call	__moddi3
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__modi, .-__modi
	.align	3
	.global	__uitod
	.type	__uitod, @function
__uitod:
	call	__bpf_floatunsidf
	exit
	.size	__uitod, .-__uitod
	.align	3
	.global	__uitof
	.type	__uitof, @function
__uitof:
	call	__floatunsisf
	exit
	.size	__uitof, .-__uitof
	.align	3
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	call	__floatundidf
	exit
	.size	__ulltod, .-__ulltod
	.align	3
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	call	__floatundisf
	exit
	.size	__ulltof, .-__ulltof
	.align	3
	.global	__umodi
	.type	__umodi, @function
__umodi:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 %= r2
	exit
	.size	__umodi, .-__umodi
	.align	3
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	r1 &= 0xffff
	r0 = r1
	r0 >>= 15
	if r0 != 0 goto .L1488
	r2 = r1
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1489
	r0 = 2
	r3 = r1
	r3 >>= 13
	r3 &= 1
	if r3 != 0 goto .L1487
	r0 = 3
	r4 = r1
	r4 >>= 12
	r4 &= 1
	if r4 != 0 goto .L1487
	r0 = 4
	r5 = r1
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1487
	r0 = 5
	r9 = r1
	r9 >>= 10
	r9 &= 1
	if r9 != 0 goto .L1487
	r0 = 6
	r2 = r1
	r2 >>= 9
	r2 &= 1
	if r2 != 0 goto .L1487
	r0 = 7
	r3 = r1
	r3 >>= 8
	r3 &= 1
	if r3 != 0 goto .L1487
	r0 = 8
	r4 = r1
	r4 >>= 7
	r4 &= 1
	if r4 != 0 goto .L1487
	r0 = 9
	r5 = r1
	r5 >>= 6
	r5 &= 1
	if r5 != 0 goto .L1487
	r0 = 10
	r9 = r1
	r9 >>= 5
	r9 &= 1
	if r9 != 0 goto .L1487
	r0 = 11
	r2 = r1
	r2 >>= 4
	r2 &= 1
	if r2 != 0 goto .L1487
	r0 = 12
	r3 = r1
	r3 >>= 3
	r3 &= 1
	if r3 != 0 goto .L1487
	r0 = 13
	r4 = r1
	r4 >>= 2
	r4 &= 1
	if r4 != 0 goto .L1487
	r0 = 14
	r5 = r1
	r5 >>= 1
	r5 &= 1
	if r5 != 0 goto .L1487
	r0 = 15
	r1 &= 1
	if r1 != 0 goto .L1487
	r0 = 16
	exit
.L1488:
	r0 = 0
	exit
.L1489:
	r0 = 1
.L1487:
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1492
	r0 = r2
	r0 >>= 1
	r0 &= 1
	if r0 != 0 goto .L1493
	r0 = 2
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1491
	r0 = 3
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1491
	r0 = 4
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1491
	r0 = 5
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1491
	r0 = 6
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1491
	r0 = 7
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1491
	r0 = 8
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1491
	r0 = 9
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1491
	r0 = 10
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1491
	r0 = 11
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1491
	r0 = 12
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1491
	r0 = 13
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1491
	r0 = 14
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1491
	r0 = 15
	r2 >>= r0
	if r2 != 0 goto .L1491
	r0 = 16
	exit
.L1492:
	r0 = 0
	exit
.L1493:
	r0 = 1
.L1491:
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s< 0 goto .L1499
	r2 = 0x47000000 ll
	r1 = r6
	call	__subsf3
	r1 = r0
	call	__fixsfdi
	r0 += 32768
	exit
.L1499:
	r1 = r6
	call	__fixsfdi
	exit
	.size	__fixunssfsi, .-__fixunssfsi
	.align	3
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1517
	r0 = 0
	goto .L1501
.L1517:
	r0 = 1
.L1501:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1502
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1502:
	r3 = r2
	r3 >>= 2
	r3 &= 1
	if r3 == 0 goto .L1503
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1503:
	r4 = r2
	r4 >>= 3
	r4 &= 1
	if r4 == 0 goto .L1504
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1504:
	r5 = r2
	r5 >>= 4
	r5 &= 1
	if r5 == 0 goto .L1505
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1505:
	r9 = r2
	r9 >>= 5
	r9 &= 1
	if r9 == 0 goto .L1506
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1506:
	r1 = r2
	r1 >>= 6
	r1 &= 1
	if r1 == 0 goto .L1507
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1507:
	r3 = r2
	r3 >>= 7
	r3 &= 1
	if r3 == 0 goto .L1508
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1508:
	r4 = r2
	r4 >>= 8
	r4 &= 1
	if r4 == 0 goto .L1509
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1509:
	r5 = r2
	r5 >>= 9
	r5 &= 1
	if r5 == 0 goto .L1510
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1510:
	r9 = r2
	r9 >>= 10
	r9 &= 1
	if r9 == 0 goto .L1511
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1511:
	r1 = r2
	r1 >>= 11
	r1 &= 1
	if r1 == 0 goto .L1512
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1512:
	r3 = r2
	r3 >>= 12
	r3 &= 1
	if r3 == 0 goto .L1513
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1513:
	r4 = r2
	r4 >>= 13
	r4 &= 1
	if r4 == 0 goto .L1514
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1514:
	r5 = r2
	r5 >>= 14
	r5 &= 1
	if r5 == 0 goto .L1515
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1515:
	r2 >>= 15
	if r2 == 0 goto .L1516
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1516:
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1535
	r0 = 0
	goto .L1519
.L1535:
	r0 = 1
.L1519:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1520
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1520:
	r3 = r2
	r3 >>= 2
	r3 &= 1
	if r3 == 0 goto .L1521
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1521:
	r4 = r2
	r4 >>= 3
	r4 &= 1
	if r4 == 0 goto .L1522
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1522:
	r5 = r2
	r5 >>= 4
	r5 &= 1
	if r5 == 0 goto .L1523
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1523:
	r9 = r2
	r9 >>= 5
	r9 &= 1
	if r9 == 0 goto .L1524
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1524:
	r1 = r2
	r1 >>= 6
	r1 &= 1
	if r1 == 0 goto .L1525
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1525:
	r3 = r2
	r3 >>= 7
	r3 &= 1
	if r3 == 0 goto .L1526
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1526:
	r4 = r2
	r4 >>= 8
	r4 &= 1
	if r4 == 0 goto .L1527
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1527:
	r5 = r2
	r5 >>= 9
	r5 &= 1
	if r5 == 0 goto .L1528
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1528:
	r9 = r2
	r9 >>= 10
	r9 &= 1
	if r9 == 0 goto .L1529
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1529:
	r1 = r2
	r1 >>= 11
	r1 &= 1
	if r1 == 0 goto .L1530
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1530:
	r3 = r2
	r3 >>= 12
	r3 &= 1
	if r3 == 0 goto .L1531
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1531:
	r4 = r2
	r4 >>= 13
	r4 &= 1
	if r4 == 0 goto .L1532
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1532:
	r5 = r2
	r5 >>= 14
	r5 &= 1
	if r5 == 0 goto .L1533
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1533:
	r2 >>= 15
	if r2 == 0 goto .L1534
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1534:
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	goto .L1537
.L1539:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1538
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
.L1538:
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
.L1537:
	if r1 != 0 goto .L1539
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1545
	r0 = 0
	goto .L1542
.L1544:
	r3 = r2
	r3 &= 1
	if r3 == 0 goto .L1543
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
.L1543:
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
.L1542:
	if r2 != 0 goto .L1544
	exit
.L1545:
	r0 = 0
	exit
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r3 <<= 32
	r3 s>>= 32
	r5 = 33
	r4 = 1
	goto .L1547
.L1549:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 < r1 goto .L1571
	goto .L1554
.L1547:
	if r2 >= r1 goto .L1554
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1555
	r0 = r2
	r0 <<= 32
	if r0 s>= 0 goto .L1549
.L1572:
	r0 = 0
	goto .L1550
.L1554:
	r0 = 0
	goto .L1550
.L1555:
	r0 = 0
	goto .L1550
.L1552:
	if r2 >= r1 goto .L1551
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
.L1551:
	r4 >>= 1
	r2 >>= 1
.L1550:
	if r4 != 0 goto .L1552
	if r3 == 0 goto .L1553
	r0 = r1
.L1553:
	exit
.L1571:
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1572
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1554
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1572
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1554
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1572
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1554
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1572
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1554
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1572
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1554
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1572
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1554
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1572
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	goto .L1547
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1575
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s> 0 goto .L1576
	r0 = 0
	exit
.L1575:
	r0 = -1
	exit
.L1576:
	r0 = 1
	exit
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	3
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	r6 = r1
	r7 = r2
	call	__ltdf2
	if r0 s<= 0 goto .L1579
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s> 0 goto .L1580
	r0 = 0
	exit
.L1579:
	r0 = -1
	exit
.L1580:
	r0 = 1
	exit
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	3
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	r0 = r1
	r0 *= r2
	exit
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	3
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	r0 = r1
	r0 *= r2
	exit
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	3
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	r1 <<= 32
	r1 s>>= 32
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	if r2 s>= 0 goto .L1590
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r2 = 1
	goto .L1584
.L1590:
	r2 = 0
.L1584:
	r0 = 0
	if r4 != r0 goto .L1604
	goto .L1587
.L1588:
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1586
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1586:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 != 0 goto .L1605
	goto .L1587
.L1585:
	if r4 == 0 goto .L1587
	r3 += -1
	r3 &= 0xff
	if r3 != 0 goto .L1588
.L1587:
	if r2 == 0 goto .L1589
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1589:
	exit
.L1604:
	r3 = 32
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1593
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1593:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1587
	r3 += -1
	r3 &= 0xff
	r9 = r4
	r9 &= 1
	if r9 == 0 goto .L1595
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1595:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 <<= 31
	r4 s>>= 32
	goto .L1585
.L1605:
	r3 += -1
	r3 &= 0xff
	r9 = r4
	r9 &= 1
	if r9 == 0 goto .L1597
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1597:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1587
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1599
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1599:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1587
	r3 += -1
	r3 &= 0xff
	r9 = r4
	r9 &= 1
	if r9 == 0 goto .L1601
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1601:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1587
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1603
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1603:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	goto .L1585
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s>= 0 goto .L1610
	r1 = -r1
	r6 = 1
	goto .L1607
.L1610:
	r6 = 0
.L1607:
	if r2 s>= 0 goto .L1608
	r2 = -r2
	r6 ^= 1
.L1608:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1609
	r0 = -r0
.L1609:
	exit
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s>= 0 goto .L1615
	r1 = -r1
	r6 = 1
	goto .L1612
.L1615:
	r6 = 0
.L1612:
	if r2 s>= 0 goto .L1613
	r2 = -r2
.L1613:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1614
	r0 = -r0
.L1614:
	exit
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r1 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r1 goto .L1637
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1638
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1639
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1640
	r2 += r2
	r2 &= 0xffff
	r5 = 4
	if r2 > r1 goto .L1617
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 = 8
	if r2 > r1 goto .L1617
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1617
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1617
	r2 += r2
	r2 &= 0xffff
	r5 += r5
	r5 &= 0xffff
	goto .L1617
.L1637:
	r5 = 1
	goto .L1617
.L1638:
	r5 = 1
	goto .L1617
.L1639:
	r5 = 2
	goto .L1617
.L1640:
	r5 = 2
.L1617:
	if r5 == 0 goto .L1641
	if r2 >= r1 goto .L1642
	r1 -= r2
	r1 &= 0xffff
	r0 = r5
	goto .L1620
.L1642:
	r0 = 0
.L1620:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1621
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1621:
	r5 >>= 1
	r2 >>= 1
	r2 &= 0xffff
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1622
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1622:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1623
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1623:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1624
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1624:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1625
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1625:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1626
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1626:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1627
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1627:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1628
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1628:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1629
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1629:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1630
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1630:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1631
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1631:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1632
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1632:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1633
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1633:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1634
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1634:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1619
	if r2 >= r1 goto .L1619
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
	goto .L1619
.L1641:
	r0 = 0
.L1619:
	if r3 == 0 goto .L1636
	r0 = r1
.L1636:
	exit
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r0 = 65
	r4 = 1
	goto .L1645
.L1647:
	r2 += r2
	r4 += r4
	if r2 < r1 goto .L1669
	goto .L1652
.L1645:
	if r2 >= r1 goto .L1652
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L1653
	r9 = 2147483648 ll
	r5 = r2
	r5 &= r9
	if r5 == 0 goto .L1647
.L1670:
	r0 = 0
	goto .L1648
.L1652:
	r0 = 0
	goto .L1648
.L1653:
	r0 = 0
	goto .L1648
.L1650:
	if r2 >= r1 goto .L1649
	r1 -= r2
	r0 |= r4
.L1649:
	r4 >>= 1
	r2 >>= 1
.L1648:
	if r4 != 0 goto .L1650
	if r3 == 0 goto .L1651
	r0 = r1
.L1651:
	exit
.L1669:
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = 2147483648 ll
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1670
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1652
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1670
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1652
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1670
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1652
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1670
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1652
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1670
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1652
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1670
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1652
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1670
	r2 += r2
	r4 += r4
	goto .L1645
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1672
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
	goto .L1673
.L1672:
	if r2 == 0 goto .L1675
	r5 = r1;r5 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r3 = r5
	r3 <<= r4
	r1 >>= 32
	r1 <<= r4
	r9 = 32
	r9 -= r2
	r2 = r9;r2 &= 0xffffffff
	r5 >>= r2
	r5 |= r1
	r5 <<= 32
	r1 = r3;r1 &= 0xffffffff
	r1 |= r5
.L1673:
	r0 = r1
	exit
.L1675:
	r0 = r1
	exit
	.size	__ashldi3, .-__ashldi3
	.align	3
	.global	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	r4 = r1
	r5 = r2
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L1677
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r9 = r3;r9 &= 0xffffffff
	r4 <<= r9
	*(u64 *) (r10+-24) = r4
	goto .L1678
.L1677:
	if r3 == 0 goto .L1680
	r9 = *(u64 *) (r10+-16)
	r1 = r3;r1 &= 0xffffffff
	r2 = r9
	r2 <<= r1
	*(u64 *) (r10+-32) = r2
	r4 = *(u64 *) (r10+-8)
	r4 <<= r1
	r5 = 64
	r5 -= r3
	r3 = r5;r3 &= 0xffffffff
	r9 >>= r3
	r9 |= r4
	*(u64 *) (r10+-24) = r9
.L1678:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
	goto .L1679
.L1680:
.L1679:
	r0 = r4
	r1 = r5
	exit
	.size	__ashlti3, .-__ashlti3
	.align	3
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1682
	r0 = r1
	r0 s>>= 63
	r1 s>>= 32
	r2 += -32
	r2 <<= 32
	r2 s>>= 32
	r1 s>>= r2
	r5 = r1;r5 &= 0xffffffff
	r0 <<= 32
	r0 |= r5
	exit
.L1682:
	if r2 == 0 goto .L1685
	r3 = r1
	r3 s>>= 32
	r0 = r3
	r0 s>>= r2
	r5 = r3;r5 &= 0xffffffff
	r4 = 32
	r4 -= r2
	r9 = r4;r9 &= 0xffffffff
	r5 <<= r9
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 >>= r2
	r1 |= r5
	r3 = r1;r3 &= 0xffffffff
	r0 <<= 32
	r0 |= r3
	exit
.L1685:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r4 = r1
	r5 = r2
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L1687
	r0 = r2
	r0 s>>= 63
	*(u64 *) (r10+-24) = r0
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r5 s>>= r3
	*(u64 *) (r10+-32) = r5
	goto .L1688
.L1687:
	if r3 == 0 goto .L1690
	r2 = *(u64 *) (r10+-8)
	r1 = r2
	r1 s>>= r3
	*(u64 *) (r10+-24) = r1
	r9 = 64
	r9 -= r3
	r4 = r9;r4 &= 0xffffffff
	r2 <<= r4
	r3 = r3;r3 &= 0xffffffff
	r5 = *(u64 *) (r10+-16)
	r5 >>= r3
	r2 |= r5
	*(u64 *) (r10+-32) = r2
.L1688:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
	goto .L1689
.L1690:
.L1689:
	r0 = r4
	r1 = r5
	exit
	.size	__ashrti3, .-__ashrti3
	.align	3
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	r7 = r1
	r7 >>= 56
	r6 = r1
	r6 >>= 40
	r6 &= 65280
	r9 = r1
	r9 >>= 24
	r9 &= 16711680
	r5 = r1
	r5 >>= 8
	r0 = 4278190080 ll
	r5 &= r0
	r4 = r1
	r4 <<= 8
	r2 = 1095216660480 ll
	r4 &= r2
	r3 = r1
	r3 <<= 24
	r0 = 280375465082880 ll
	r3 &= r0
	r2 = r1
	r2 <<= 40
	r0 = 71776119061217280 ll
	r2 &= r0
	r0 = r1
	r0 <<= 56
	r0 |= r7
	r0 |= r6
	r0 |= r9
	r0 |= r5
	r0 |= r4
	r0 |= r3
	r0 |= r2
	exit
	.size	__bswapdi2, .-__bswapdi2
	.align	3
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	r1 = r1;r1 &= 0xffffffff
	r4 = r1
	r4 >>= 24
	r3 = r1
	r3 >>= 8
	r3 &= 65280
	r2 = r1
	r2 <<= 8
	r2 &= 16711680
	r1 <<= 24
	r0 = r1;r0 &= 0xffffffff
	r0 |= r4
	r0 |= r3
	r0 |= r2
	exit
	.size	__bswapsi2, .-__bswapsi2
	.align	3
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	r1 = r1;r1 &= 0xffffffff
	if r1 > 65535 goto .L1698
	r3 = 16
	goto .L1694
.L1698:
	r3 = 0
.L1694:
	r0 = 16
	r0 -= r3
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r5 = r1;r5 &= 0xffffffff
	r9 = r3;r9 &= 0xffffffff
	r1 &= 65280
	if r1 != 0 goto .L1699
	r4 = 8
	goto .L1695
.L1699:
	r4 = 0
.L1695:
	r1 = 8
	r1 -= r4
	r3 = r1;r3 &= 0xffffffff
	r5 >>= r3
	r0 = r5;r0 &= 0xffffffff
	r2 = r4
	r2 += r9
	r5 &= 240
	if r5 != 0 goto .L1700
	r9 = 4
	goto .L1696
.L1700:
	r9 = 0
.L1696:
	r4 = 4
	r4 -= r9
	r1 = r4;r1 &= 0xffffffff
	r0 >>= r1
	r3 = r0;r3 &= 0xffffffff
	r9 += r2
	r0 &= 12
	if r0 != 0 goto .L1701
	r5 = 2
	goto .L1697
.L1701:
	r5 = 0
.L1697:
	r0 = 2
	r2 = r0
	r2 -= r5
	r4 = r2;r4 &= 0xffffffff
	r3 >>= r4
	r5 += r9
	r1 = r3
	r1 &= r0
	r1 += -1
	r1 >>= 63
	r0 -= r3
	r0 *= r1
	r0 += r5
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r1 = 1
	if r2 == 0 goto .L1703
	r1 = 0
.L1703:
	r1 &= 1
	r6 = r1
	r6 = -r6
	r1 += -1
	r0 = *(u64 *) (r10+-8)
	r1 &= r0
	r2 = *(u64 *) (r10+-16)
	r3 = r6
	r3 &= r2
	r1 |= r3
	call	__clzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 &= 64
	r0 += r6
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzti2, .-__clzti2
	.align	3
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	r0 = r1
	r0 s>>= 32
	r3 = r2
	r3 s>>= 32
	if r3 s>= r0 goto .L1706
	r4 = r2
	r4 s>>= 32
	r5 = r1
	r5 s>>= 32
	if r5 s> r4 goto .L1707
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1708
	if r1 > r2 goto .L1709
	r0 = 1
	exit
.L1706:
	r0 = 0
	exit
.L1707:
	r0 = 2
	exit
.L1708:
	r0 = 0
	exit
.L1709:
	r0 = 2
	exit
	.size	__cmpdi2, .-__cmpdi2
	.align	3
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	call	__cmpdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	r8 = r1
	if r4 s>= r2 goto .L1713
	if r2 s> r4 goto .L1714
	if r3 >= r1 goto .L1715
	if r1 > r3 goto .L1716
	r0 = 1
	exit
.L1713:
	r0 = 0
	exit
.L1714:
	r0 = 2
	exit
.L1715:
	r0 = 0
	exit
.L1716:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r0 = r1;r0 &= 0xffffffff
	r1 &= 0xffff
	if r1 != 0 goto .L1722
	r1 = 16
	goto .L1718
.L1722:
	r1 = 0
.L1718:
	r4 = r1;r4 &= 0xffffffff
	r0 >>= r1
	r5 = r0;r5 &= 0xffffffff
	r0 &= 0xff
	if r0 != 0 goto .L1723
	r2 = 8
	goto .L1719
.L1723:
	r2 = 0
.L1719:
	r5 >>= r2
	r9 = r5;r9 &= 0xffffffff
	r2 += r4
	r3 = r2
	r5 &= 15
	if r5 != 0 goto .L1724
	r4 = 4
	goto .L1720
.L1724:
	r4 = 0
.L1720:
	r9 >>= r4
	r1 = r9;r1 &= 0xffffffff
	r4 += r3
	r9 &= 3
	if r9 != 0 goto .L1725
	r0 = 2
	goto .L1721
.L1725:
	r0 = 0
.L1721:
	r1 >>= r0
	r1 &= 3
	r0 += r4
	r3 = r1
	r3 ^= -1
	r3 &= 1
	r1 >>= 1
	r5 = 2
	r5 -= r1
	r9 = r5;r9 &= 0xffffffff
	r3 = -r3
	r9 &= r3
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r6 = 1
	if r1 == 0 goto .L1727
	r6 = 0
.L1727:
	r6 &= 1
	r6 = -r6
	r1 = *(u64 *) (r10+-8)
	r0 = r6
	r0 &= r1
	r1 = r6
	r1 ^= -1
	r2 = *(u64 *) (r10+-16)
	r1 &= r2
	r1 |= r0
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 &= 64
	r0 += r6
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	if r1 != 0 goto .L1729
	if r2 == 0 goto .L1731
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L1729:
	r1 = *(u64 *) (r10+-16)
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1731:
	r0 = 0
	exit
	.size	__ffsti2, .-__ffsti2
	.align	3
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1733
	r0 = r1
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1733:
	if r2 == 0 goto .L1736
	r4 = r1
	r4 >>= 32
	r5 = r2;r5 &= 0xffffffff
	r0 = r4
	r0 >>= r5
	r3 = 32
	r3 -= r2
	r2 = r3;r2 &= 0xffffffff
	r4 <<= r2
	r1 = r1;r1 &= 0xffffffff
	r1 >>= r5
	r1 |= r4
	r9 = r1;r9 &= 0xffffffff
	r0 <<= 32
	r0 |= r9
	exit
.L1736:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r4 = r1
	r5 = r2
	r3 <<= 32
	r3 s>>= 32
	r1 = r2
	*(u64 *) (r10+-16) = r4
	*(u64 *) (r10+-8) = r2
	r2 = r3
	r2 &= 64
	if r2 == 0 goto .L1738
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 >>= r2
	*(u64 *) (r10+-32) = r1
	goto .L1739
.L1738:
	if r3 == 0 goto .L1741
	r9 = *(u64 *) (r10+-8)
	r4 = r3;r4 &= 0xffffffff
	r5 = r9
	r5 >>= r4
	*(u64 *) (r10+-24) = r5
	r0 = 64
	r0 -= r3
	r3 = r0;r3 &= 0xffffffff
	r9 <<= r3
	r1 = *(u64 *) (r10+-16)
	r1 >>= r4
	r9 |= r1
	*(u64 *) (r10+-32) = r9
.L1739:
	r9 = *(u64 *) (r10+-32)
	r0 = *(u64 *) (r10+-24)
	r4 = r9
	r5 = r0
	goto .L1740
.L1741:
.L1740:
	r0 = r4
	r1 = r5
	exit
	.size	__lshrti3, .-__lshrti3
	.align	3
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	r3 = r1;r3 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r1 &= 0xffff
	r2 &= 0xffff
	r0 = r1
	r0 *= r2
	r9 = r0
	r9 >>= 16
	r3 >>= 16
	r5 = r3
	r5 *= r2
	r5 += r9
	r5 = r5;r5 &= 0xffffffff
	r2 = r0;r2 &= 0xffff
	r0 = r5
	r0 <<= 16
	r0 += r2
	r5 >>= 16
	r2 = 4294967295 ll
	r0 &= r2
	r9 = r0
	r9 >>= 16
	r0 &= 0xffff
	r4 >>= 16
	r1 *= r4
	r1 += r9
	r1 = r1;r1 &= 0xffffffff
	r9 = r1
	r9 <<= 16
	r9 += r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	r0 = r5
	r0 |= r9
	r5 >>= 32
	r1 >>= 16
	r1 += r5
	r1 <<= 32
	r0 &= r2
	r0 |= r1
	r1 >>= 32
	r3 *= r4
	r3 += r1
	r3 <<= 32
	r0 &= r2
	r0 |= r3
	exit
	.size	__muldsi3, .-__muldsi3
	.align	3
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	r6 = r1
	*(u64 *) (r10+-8) = r2
	r8 = *(u32 *) (r10+-8)
	r7 = r1;r7 &= 0xffffffff
	r2 = r8
	r1 = r7
	call	__muldsi3
	r2 = r0
	r2 >>= 32
	r6 >>= 32
	r6 *= r8
	r1 = *(u64 *) (r10+-8)
	r1 >>= 32
	r1 *= r7
	r1 += r6
	r1 += r2
	r1 <<= 32
	r0 = r0;r0 &= 0xffffffff
	r0 |= r1
	exit
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	3
	.global	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	r9 = 4294967295 ll
	r5 = r1
	r5 &= r9
	r0 = r2
	r0 &= r9
	r4 = r5
	r4 *= r0
	r3 = r4
	r3 >>= 32
	r4 &= r9
	r1 >>= 32
	r8 = r1
	r8 *= r0
	r3 += r8
	r0 = r3
	r0 <<= 32
	r8 = r0
	r8 += r4
	r3 >>= 32
	r0 >>= 32
	r4 = r8
	r4 &= r9
	r2 >>= 32
	r5 *= r2
	r0 += r5
	r5 = r0
	r5 <<= 32
	r0 >>= 32
	r0 += r3
	r1 *= r2
	r1 += r0
	r5 += r4
	r8 = r5
	r0 = r5
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	r8 = r1
	r9 = r2
	r2 = r3
	*(u64 *) (r10+-16) = r8
	*(u64 *) (r10+-8) = r9
	*(u64 *) (r10+-32) = r3
	*(u64 *) (r10+-24) = r4
	r1 = r8
	call	__mulddi3
	r8 = r0
	r4 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-32)
	r4 *= r0
	r5 = *(u64 *) (r10+-16)
	r9 = *(u64 *) (r10+-24)
	r9 *= r5
	r4 += r9
	r4 += r1
	r0 = r8
	r1 = r4
	exit
	.size	__multi3, .-__multi3
	.align	3
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	r0 = r1
	r0 = -r0
	exit
	.size	__negdi2, .-__negdi2
	.align	3
	.global	__negti2
	.type	__negti2, @function
__negti2:
	r5 = r2
	r2 = r1
	r3 = r5
	r9 = 0
	r4 = r9
	r0 = r9
	r0 -= r2
	r6 = 1
	if r0 > r9 goto .L1748
	r6 = r9
.L1748:
	r1 = r4
	r1 -= r3
	r9 = r1
	r9 -= r6
	r2 = r0
	r0 = r2
	r1 = r9
	exit
	.size	__negti2, .-__negti2
	.align	3
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	r0 = r1
	r0 >>= 32
	r1 = r1;r1 &= 0xffffffff
	r0 ^= r1
	r2 = r0
	r2 >>= 16
	r2 ^= r0
	r3 = r2
	r3 >>= 8
	r3 ^= r2
	r4 = r3
	r4 >>= 4
	r4 ^= r3
	r4 &= 15
	r0 = 27030
	r0 s>>= r4
	r0 &= 1
	exit
	.size	__paritydi2, .-__paritydi2
	.align	3
	.global	__parityti2
	.type	__parityti2, @function
__parityti2:
	r1 ^= r2
	r0 = r1
	r0 >>= 32
	r2 = r1;r2 &= 0xffffffff
	r0 ^= r2
	r3 = r0
	r3 >>= 16
	r3 ^= r0
	r4 = r3
	r4 >>= 8
	r4 ^= r3
	r9 = r4
	r9 >>= 4
	r9 ^= r4
	r9 &= 15
	r0 = 27030
	r0 s>>= r9
	r0 &= 1
	exit
	.size	__parityti2, .-__parityti2
	.align	3
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	r1 = r1;r1 &= 0xffffffff
	r2 = r1
	r2 >>= 16
	r2 ^= r1
	r0 = r2
	r0 >>= 8
	r0 ^= r2
	r3 = r0
	r3 >>= 4
	r3 ^= r0
	r3 &= 15
	r0 = 27030
	r0 s>>= r3
	r0 &= 1
	exit
	.size	__paritysi2, .-__paritysi2
	.align	3
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	r0 = r1
	r0 >>= 1
	r2 = 6148914691236517205 ll
	r0 &= r2
	r1 -= r0
	r3 = r1
	r3 >>= 2
	r4 = 3689348814741910323 ll
	r3 &= r4
	r1 &= r4
	r3 += r1
	r5 = r3
	r5 >>= 4
	r5 += r3
	r1 = 1085102592571150095 ll
	r5 &= r1
	r9 = r5;r9 &= 0xffffffff
	r5 >>= 32
	r5 += r9
	r2 = r5
	r2 >>= 16
	r2 += r5
	r0 = r2
	r0 >>= 8
	r0 += r2
	r0 &= 127
	exit
	.size	__popcountdi2, .-__popcountdi2
	.align	3
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	r1 = r1;r1 &= 0xffffffff
	r0 = r1
	r0 >>= 1
	r0 &= 1431655765
	r1 -= r0
	r3 = r1;r3 &= 0xffffffff
	r2 = r3
	r2 >>= 2
	r2 &= 858993459
	r3 &= 858993459
	r2 += r3
	r4 = r2
	r4 >>= 4
	r4 += r2
	r4 &= 252645135
	r5 = r4
	r5 >>= 16
	r5 += r4
	r0 = r5
	r0 >>= 8
	r0 += r5
	r0 &= 63
	exit
	.size	__popcountsi2, .-__popcountsi2
	.align	3
	.global	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	r4 = r1
	r5 = r2
	r0 = r4
	r1 = r2
	r8 = r2
	r8 <<= 63
	r2 = r4
	r2 >>= 1
	r8 |= r2
	r9 = r8
	r3 = r5
	r3 >>= 1
	r8 = 6148914691236517205 ll
	r4 = r9
	r4 &= r8
	r5 = r3
	r5 &= r8
	r2 = r0
	r2 -= r4
	r9 = 1
	if r2 > r0 goto .L1755
	r9 = 0
.L1755:
	r3 = r1
	r3 -= r5
	r4 = r3
	r4 -= r9
	r0 = r2
	r1 = r4
	r4 <<= 62
	r2 = r0
	r2 >>= 2
	r4 |= r2
	r9 = r4
	r3 = r1
	r3 >>= 2
	r8 = 3689348814741910323 ll
	r4 = r9
	r4 &= r8
	r5 = r3
	r5 &= r8
	r2 = r0
	r2 &= r8
	r3 = r1
	r3 &= r8
	r8 = r4
	r8 += r2
	r0 = 1
	if r4 >= r8 goto .L1756
	r0 = 0
.L1756:
	r9 = r5
	r9 += r3
	r0 += r9
	r4 = r0
	r0 = r8
	r1 = r4
	r8 = r4
	r8 <<= 60
	r2 = r0
	r2 >>= 4
	r8 |= r2
	r3 = r4
	r3 >>= 4
	r4 = r8
	r4 += r0
	r0 = 1
	if r8 >= r4 goto .L1757
	r0 = 0
.L1757:
	r5 = r3
	r5 += r1
	r1 = r0
	r1 += r5
	r8 = r4
	r2 = 1085102592571150095 ll
	r0 = r4
	r0 &= r2
	r1 &= r2
	r1 += r0
	r4 = r1
	r4 >>= 32
	r1 += r4
	r5 = r1;r5 &= 0xffffffff
	r9 = r5
	r9 >>= 16
	r9 += r5
	r2 = r9;r2 &= 0xffffffff
	r0 = r2
	r0 >>= 8
	r0 += r2
	r0 &= 0xff
	exit
	.size	__popcountti2, .-__popcountti2
	.align	3
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	r6 = r1
	r2 <<= 32
	r7 = r2
	r7 s>>= 32
	r2 >>= 63
	*(u64 *) (r10+-8) = r2
	r8 = 0x3ff0000000000000 ll
.L1761:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1759
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
.L1759:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1760
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
	goto .L1761
.L1760:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1763
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L1763:
	r0 = r8
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r6 = r1
	r2 <<= 32
	r7 = r2
	r7 s>>= 32
	r2 >>= 63
	*(u64 *) (r10+-8) = r2
	r8 = 0x3f800000 ll
.L1767:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1765
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
.L1765:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1766
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
	goto .L1767
.L1766:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1769
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L1769:
	r0 = r8
	exit
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r0 = r1
	r0 >>= 32
	r3 = r2
	r3 >>= 32
	if r3 >= r0 goto .L1772
	r4 = r2
	r4 >>= 32
	r5 = r1
	r5 >>= 32
	if r5 > r4 goto .L1773
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1774
	if r1 > r2 goto .L1775
	r0 = 1
	exit
.L1772:
	r0 = 0
	exit
.L1773:
	r0 = 2
	exit
.L1774:
	r0 = 0
	exit
.L1775:
	r0 = 2
	exit
	.size	__ucmpdi2, .-__ucmpdi2
	.align	3
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	call	__ucmpdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	r8 = r1
	if r4 >= r2 goto .L1779
	if r2 > r4 goto .L1780
	if r3 >= r1 goto .L1781
	if r1 > r3 goto .L1782
	r0 = 1
	exit
.L1779:
	r0 = 0
	exit
.L1780:
	r0 = 2
	exit
.L1781:
	r0 = 0
	exit
.L1782:
	r0 = 2
	exit
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
	.global	__divsf3
	.global	__divdf3
	.global	__ctzdi2
	.global	__fixsfdi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__bpf_floatunsidf
	.global	__clzdi2
	.global	__gedf2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__mulsf3
	.global	__nesf2
	.global	__addsf3
	.global	__bpf_floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__ltsf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
