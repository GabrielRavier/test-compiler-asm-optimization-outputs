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
	r9 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r0+0)
	if r9 == r6 goto .L168
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
	r6 = *(u8 *) (r4+6)
	r4 = *(u8 *) (r0+6)
	if r6 != r4 goto .L150
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
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r3+0)
	r5 = r0
	r5 += -1
	if r2 != r9 goto .L224
.L261:
	r1 += r0
	goto .L222
.L224:
	r0 = r5
	r4 = r1
	r4 += r5
	r3 = *(u8 *) (r4+0)
	if r2 != r3 goto .L247
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
	r5 = *(u8 *) (r4+0)
	r9 = r0
	r9 += -1
	if r2 == r5 goto .L261
	r0 = r9
	if r3 == 1 goto .L221
	if r3 == 2 goto .L242
	if r3 == 3 goto .L239
	if r3 == 4 goto .L236
	if r3 == 5 goto .L233
	if r3 == 6 goto .L230
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r3+0)
	r5 = r9
	r5 += -1
	if r2 == r4 goto .L261
	r0 = r5
.L230:
	r9 = r1
	r9 += r0
	r4 = *(u8 *) (r9+0)
	r3 = r0
	r3 += -1
	if r2 == r4 goto .L261
	r0 = r3
.L233:
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r5+0)
	r4 = r0
	r4 += -1
	if r2 == r9 goto .L261
	r0 = r4
.L236:
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	r9 = r0
	r9 += -1
	if r2 == r5 goto .L261
	r0 = r9
.L239:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	r3 = r0
	r3 += -1
	if r2 == r5 goto .L261
	r0 = r3
.L242:
	r9 = r1
	r9 += r0
	r4 = *(u8 *) (r9+0)
	r5 = r0
	r5 += -1
	if r2 == r4 goto .L261
	r0 = r5
	goto .L221
.L247:
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
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L261
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
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 == r0 goto .L305
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
	if r9 == 0 goto .L325
	goto .L369
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
	r9 = r1
	r9 += 1
	r4 = r2
	r4 += 1
	r0 = r1
	r5 = r3
	r5 >>= 1
	r5 &= 3
	if r5 != 0 goto .L383
	goto .L371
.L372:
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r0 += 2
	r9 += 2
	r4 += 2
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r5 = *(u8 *) (r9+2)
	*(u8 *) (r2+2) = r5
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r5
	r5 = *(u8 *) (r9+4)
	*(u8 *) (r2+4) = r5
	r5 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r5
	r2 += 6
	r0 += 6
	r9 += 6
	r4 += 6
.L371:
	r5 = r1
	r5 += r3
	r5 -= r0
	if r5 s> 1 goto .L372
.L384:
	exit
.L383:
	r6 = r1
	r6 += r3
	r6 -= r1
	if r6 s<= 1 goto .L384
	r6 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r6
	r6 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r6
	r2 += 2
	r0 += 2
	r9 += 2
	r4 += 2
	if r5 == 1 goto .L371
	if r5 == 2 goto .L382
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r0 += 2
	r9 += 2
	r4 += 2
.L382:
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r0 += 2
	r9 += 2
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
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L436
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L437
	r2 = r6
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L440
	r2 = r6
	r1 = r7
	call	__subdf3
	exit
.L436:
	r0 = r7
	exit
.L437:
	r0 = r6
	exit
.L440:
	r0 = 0x0000000000000000 ll
	exit
	.size	fdim, .-fdim
	.align	3
	.global	fdimf
	.type	fdimf, @function
fdimf:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L444
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L445
	r2 = r6
	r1 = r7
	call	__gtsf2
	if r0 s<= 0 goto .L448
	r2 = r6
	r1 = r7
	call	__subsf3
	exit
.L444:
	r0 = r7
	exit
.L445:
	r0 = r6
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
	if r0 != 0 goto .L450
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L451
	if r6 s>= 0 goto .L450
	r6 = r7
	goto .L450
.L451:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L450
	r6 = r7
	goto .L450
.L453:
	r6 = r7
.L450:
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
	if r0 != 0 goto .L460
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
	if r2 == 0 goto .L460
	r6 = r7
	goto .L460
.L461:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s> 0 goto .L460
	r6 = r7
	goto .L460
.L463:
	r6 = r7
.L460:
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
	if r0 != 0 goto .L470
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L471
	if r6 s>= 0 goto .L470
	r6 = r7
	goto .L470
.L471:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L470
	r6 = r7
	goto .L470
.L473:
	r6 = r7
.L470:
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
	if r0 != 0 goto .L480
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L484
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L481
	if r7 s>= 0 goto .L480
	r6 = r7
	goto .L480
.L481:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L480
	r6 = r7
	goto .L480
.L484:
	r6 = r7
.L480:
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
	if r0 != 0 goto .L490
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
	if r2 == 0 goto .L490
	r6 = r7
	goto .L490
.L491:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s> 0 goto .L490
	r6 = r7
	goto .L490
.L494:
	r6 = r7
.L490:
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
	if r0 != 0 goto .L500
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L504
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L501
	if r7 s>= 0 goto .L500
	r6 = r7
	goto .L500
.L501:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L500
	r6 = r7
	goto .L500
.L504:
	r6 = r7
.L500:
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
	goto .L510
.L511:
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
	goto .L515
.L510:
	if r1 != 0 goto .L511
.L515:
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
	if r1 == 0 goto .L515
	r2 = r1
	r2 &= 63
	r4 = digits ll
	r4 += r2
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r9 += 1
	r1 >>= 6
	if r1 == 0 goto .L515
	r0 = r1
	r0 &= 63
	r3 = digits ll
	r3 += r0
	r2 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r2
	r9 += 1
	r1 >>= 6
	goto .L510
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
	if r2 != 0 goto .L519
	r3 = 0
	*(u64 *) (r1+8) = r3
	*(u64 *) (r1+0) = r3
	exit
.L519:
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L518
	*(u64 *) (r2+8) = r1
.L518:
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L522
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L522:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L521
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L521:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s>= 0 goto .L525
	r1 = -r1
	r0 = r1
.L525:
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r6 = r1
	goto .L527
.L528:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L538
	goto .L545
.L527:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L528
.L545:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L534
	if r0 != 45 goto .L535
	r1 = 1
	goto .L529
.L534:
	r1 = 0
.L529:
	r6 += 1
	goto .L530
.L535:
	r1 = 0
.L530:
	r0 = 0
	goto .L531
.L532:
	r4 = r0
	r4 <<= 2
	r0 += r4
	r0 <<= 33
	r0 s>>= 32
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r0 <<= 32
	r0 s>>= 32
	r6 += 1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r2 <= 8 goto .L537
	goto .L546
.L531:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 8 goto .L532
.L546:
	if r1 != 0 goto .L533
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L533:
	exit
.L537:
	r3 = r0
	r3 <<= 2
	r0 += r3
	r0 <<= 33
	r0 s>>= 32
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r0 <<= 32
	r0 s>>= 32
	r6 += 1
	goto .L531
.L538:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L545
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L545
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L545
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L545
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L545
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L545
	r6 += 1
	goto .L527
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r6 = r1
	goto .L548
.L549:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L561
	goto .L568
.L548:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L549
.L568:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L555
	if r0 != 45 goto .L556
	r2 = 1
	goto .L550
.L555:
	r2 = 0
.L550:
	r6 += 1
	goto .L551
.L556:
	r2 = 0
.L551:
	r0 = 0
	goto .L552
.L553:
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
	if r9 <= 8 goto .L558
	goto .L569
.L552:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r3 = r1;r3 &= 0xffffffff
	if r3 <= 8 goto .L553
.L569:
	if r2 != 0 goto .L554
	r0 = -r0
.L554:
	exit
.L558:
	r0 *= 10
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r3 = r6
	r3 += 1
	r4 = *(u8 *) (r3+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r5 > 8 goto .L569
	r0 *= 10
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r3 += 1
	r1 = *(u8 *) (r3+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r4 = r1;r4 &= 0xffffffff
	if r4 > 8 goto .L569
	r0 *= 10
	r3 = *(u8 *) (r3+0)
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r0 -= r3
	r6 += 3
	goto .L552
.L561:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L568
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L568
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L568
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L568
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L568
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L568
	r6 += 1
	goto .L548
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r6 = r1
	goto .L571
.L572:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L584
	goto .L591
.L571:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L572
.L591:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L578
	if r0 != 45 goto .L579
	r2 = 1
	goto .L573
.L578:
	r2 = 0
.L573:
	r6 += 1
	goto .L574
.L579:
	r2 = 0
.L574:
	r0 = 0
	goto .L575
.L576:
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
	if r9 <= 8 goto .L581
	goto .L592
.L575:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r3 = r1;r3 &= 0xffffffff
	if r3 <= 8 goto .L576
.L592:
	if r2 != 0 goto .L577
	r0 = -r0
.L577:
	exit
.L581:
	r0 *= 10
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r3 = r6
	r3 += 1
	r4 = *(u8 *) (r3+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r5 > 8 goto .L592
	r0 *= 10
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r3 += 1
	r1 = *(u8 *) (r3+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r4 = r1;r4 &= 0xffffffff
	if r4 > 8 goto .L592
	r0 *= 10
	r3 = *(u8 *) (r3+0)
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r0 -= r3
	r6 += 3
	goto .L575
.L584:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L591
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L591
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L591
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L591
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L591
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L591
	r6 += 1
	goto .L571
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
	if r1 s>= 0 goto .L595
	r0 = -r0
.L595:
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
	if r1 s>= 0 goto .L598
	r0 = -r0
.L598:
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
	if r1 s>= 0 goto .L601
	r0 = -r0
.L601:
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
	goto .L604
.L606:
	r1 += 4
.L604:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L605
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r2 != r3 goto .L606
.L605:
	r2 = *(u32 *) (r1+0)
	if r2 == 0 goto .L608
	r0 = r1
	exit
.L608:
	r0 = 0
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L610
.L612:
	r1 += 4
	r2 += 4
.L610:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r0 goto .L611
	r4 = *(u32 *) (r1+0)
	if r4 == 0 goto .L611
	r5 = *(u32 *) (r2+0)
	if r5 != 0 goto .L612
.L611:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 s>= r9 goto .L615
	r3 = r0
	r0 = 1
	if r3 s< r9 goto .L614
	r0 = 0
.L614:
	r0 &= 1
	exit
.L615:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L617:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 != 0 goto .L626
.L633:
	r0 = r1
	exit
.L626:
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L633
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L633
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L633
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L633
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L633
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L633
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L617
	goto .L633
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = r1
	goto .L635
.L636:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 != 0 goto .L637
	goto .L644
.L635:
	r2 = *(u32 *) (r0+0)
	if r2 != 0 goto .L636
.L644:
	r0 -= r1
	r0 s>>= 2
	exit
.L637:
	r0 += 4
	r5 = *(u32 *) (r4+4)
	if r5 == 0 goto .L644
	r0 += 4
	r9 = *(u32 *) (r4+8)
	if r9 == 0 goto .L644
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L644
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L644
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L644
	r0 += 4
	r4 = *(u32 *) (r4+24)
	if r4 == 0 goto .L644
	r0 += 4
	goto .L635
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	r0 = r3
	r0 &= 3
	if r0 != 0 goto .L669
	goto .L646
.L648:
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	if r9 != r6 goto .L647
	goto .L670
.L646:
	if r3 == 0 goto .L647
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r0 goto .L647
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L647
	r4 = *(u32 *) (r2+0)
	if r4 != 0 goto .L648
.L647:
	if r3 == 0 goto .L651
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L652
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L650
	r0 = 0
.L650:
	r0 &= 1
	exit
.L651:
	r0 = 0
	exit
.L652:
	r0 = -1
	exit
.L669:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L647
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L647
	r4 = *(u32 *) (r2+0)
	if r4 == 0 goto .L647
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 == 1 goto .L646
	if r0 == 2 goto .L668
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r0 goto .L647
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L647
	r4 = *(u32 *) (r2+0)
	if r4 == 0 goto .L647
	r3 += -1
	r1 += 4
	r2 += 4
.L668:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r0 goto .L647
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L647
	r4 = *(u32 *) (r2+0)
	if r4 == 0 goto .L647
	r3 += -1
	r1 += 4
	r2 += 4
	goto .L646
.L670:
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L647
	r6 = *(u32 *) (r0+0)
	if r6 == 0 goto .L647
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L647
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L647
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L647
	r3 += -1
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r4 goto .L647
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L647
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L647
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	goto .L646
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	r0 = r3
	r0 &= 7
	if r0 != 0 goto .L717
	goto .L672
.L674:
	r3 += -1
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 != r5 goto .L691
	goto .L673
.L672:
	if r3 == 0 goto .L673
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 != r0 goto .L674
.L673:
	if r3 == 0 goto .L676
	r0 = r1
	exit
.L676:
	r0 = 0
	exit
.L717:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L673
	r3 += -1
	r1 += 4
	if r0 == 1 goto .L672
	if r0 == 2 goto .L712
	if r0 == 3 goto .L713
	if r0 == 4 goto .L714
	if r0 == 5 goto .L715
	if r0 == 6 goto .L716
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L673
	r3 += -1
	r1 += 4
.L716:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L673
	r3 += -1
	r1 += 4
.L715:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L673
	r3 += -1
	r1 += 4
.L714:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L673
	r3 += -1
	r1 += 4
.L713:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L673
	r3 += -1
	r1 += 4
.L712:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L673
	r3 += -1
	r1 += 4
	goto .L672
.L691:
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L673
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L673
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L673
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L673
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L673
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L673
	r3 += -1
	r9 += 28
	r1 = r9
	goto .L672
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	r0 = r3
	r0 &= 3
	if r0 != 0 goto .L742
	goto .L719
.L721:
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	if r9 == r6 goto .L732
	goto .L720
.L719:
	if r3 == 0 goto .L720
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 == r9 goto .L721
.L720:
	if r3 == 0 goto .L724
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L725
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L723
	r0 = 0
.L723:
	r0 &= 1
	exit
.L724:
	r0 = 0
	exit
.L725:
	r0 = -1
	exit
.L742:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L720
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 == 1 goto .L719
	if r0 == 2 goto .L741
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L720
	r3 += -1
	r1 += 4
	r2 += 4
.L741:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L720
	r3 += -1
	r1 += 4
	r2 += 4
	goto .L719
.L732:
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L720
	r3 += -1
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r4 goto .L720
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	goto .L719
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 != 0 goto .L772
	goto .L744
.L745:
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
.L744:
	r9 = r3
	r9 += -1
	if r3 != 0 goto .L745
	r0 = r1
	exit
.L772:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r2 += 4
	if r4 == 1 goto .L744
	if r4 == 2 goto .L767
	if r4 == 3 goto .L768
	if r4 == 4 goto .L769
	if r4 == 5 goto .L770
	if r4 == 6 goto .L771
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L771:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L770:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
.L769:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L768:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L767:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	goto .L744
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L774
	r4 = r3
	r4 <<= 2
	r0 = r1
	r0 -= r2
	if r4 >= r0 goto .L775
	r0 = r1
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L832
	goto .L776
.L775:
	r0 = r3
	r0 <<= 2
	r3 &= 7
	if r3 != 0 goto .L833
	goto .L777
.L778:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r0+0) = r5
	r3 = r9
	r3 += -4
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -8
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -12
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -16
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -20
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -24
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 = r9
	r0 += -28
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L777:
	r9 = r0
	r9 += -4
	if r0 != 0 goto .L778
	goto .L774
.L779:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r5 = *(u32 *) (r2+4)
	*(u32 *) (r0+4) = r5
	r3 = *(u32 *) (r2+8)
	*(u32 *) (r0+8) = r3
	r9 = *(u32 *) (r2+12)
	*(u32 *) (r0+12) = r9
	r5 = *(u32 *) (r2+16)
	*(u32 *) (r0+16) = r5
	r3 = *(u32 *) (r2+20)
	*(u32 *) (r0+20) = r3
	r3 = r4
	r3 += -7
	r4 = *(u32 *) (r2+24)
	*(u32 *) (r0+24) = r4
	r0 += 28
	r2 += 28
.L776:
	r4 = r3
	r4 += -1
	if r3 != 0 goto .L779
.L774:
	r0 = r1
	exit
.L833:
	r0 += -4
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	if r3 == 1 goto .L777
	if r3 == 2 goto .L822
	if r3 == 3 goto .L823
	if r3 == 4 goto .L824
	if r3 == 5 goto .L825
	if r3 == 6 goto .L826
	r0 += -4
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L826:
	r0 += -4
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
.L825:
	r0 += -4
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
.L824:
	r0 += -4
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r3+0) = r5
.L823:
	r0 += -4
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L822:
	r0 += -4
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
	goto .L777
.L832:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r2 += 4
	if r9 == 1 goto .L776
	if r9 == 2 goto .L827
	if r9 == 3 goto .L828
	if r9 == 4 goto .L829
	if r9 == 5 goto .L830
	if r9 == 6 goto .L831
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L831:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L830:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
.L829:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L828:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L827:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	goto .L776
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
	if r4 != 0 goto .L863
	goto .L835
.L836:
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
.L835:
	r5 = r3
	r5 += -1
	if r3 != 0 goto .L836
	r0 = r1
	exit
.L863:
	r3 += -1
	*(u32 *) (r1+0) = r2
	r0 += 4
	if r4 == 1 goto .L835
	if r4 == 2 goto .L858
	if r4 == 3 goto .L859
	if r4 == 4 goto .L860
	if r4 == 5 goto .L861
	if r4 == 6 goto .L862
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L862:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L861:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L860:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L859:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L858:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
	goto .L835
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L865
	r0 = r1
	r0 += r3
	r2 += r3
	r3 = r0
	r3 -= r1
	r3 &= 7
	if r3 != 0 goto .L913
	goto .L866
.L867:
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
.L866:
	if r0 != r1 goto .L867
	exit
.L865:
	if r1 == r2 goto .L864
	r0 = r2
	r2 += r3
	r3 = r2
	r3 -= r0
	r3 &= 7
	if r3 != 0 goto .L914
	goto .L869
.L870:
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
.L869:
	if r0 != r2 goto .L870
.L864:
	exit
.L913:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r3 == 1 goto .L866
	if r3 == 2 goto .L882
	if r3 == 3 goto .L880
	if r3 == 4 goto .L878
	if r3 == 5 goto .L876
	if r3 == 6 goto .L874
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L874:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L876:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L878:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L880:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L882:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	goto .L866
.L914:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
	if r3 == 1 goto .L869
	if r3 == 2 goto .L903
	if r3 == 3 goto .L901
	if r3 == 4 goto .L899
	if r3 == 5 goto .L897
	if r3 == 6 goto .L895
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L895:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
.L897:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r3
	r1 += 1
	r0 += 1
.L899:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
.L901:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L903:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
	goto .L869
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
	goto .L929
.L932:
	r2 = r1;r2 &= 0xffffffff
	r2 >>= r0
	r2 &= 1
	if r2 == 0 goto .L930
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	exit
.L930:
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
.L929:
	if r0 != 32 goto .L932
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
	if r1 == 0 goto .L937
	r0 = 1
	goto .L935
.L936:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 == 0 goto .L938
	exit
.L935:
	r1 = r2
	r1 &= 1
	if r1 == 0 goto .L936
	exit
.L937:
	r0 = 0
.L934:
	exit
.L938:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L934
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L934
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L934
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L934
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L934
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L934
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	goto .L935
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L949
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L952
	r0 = 1
	exit
.L949:
	r0 = 1
	exit
.L952:
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
	if r0 s<= 0 goto .L956
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L959
	r0 = 1
	exit
.L956:
	r0 = 1
	exit
.L959:
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
	if r0 s<= 0 goto .L963
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L966
	r0 = 1
	exit
.L963:
	r0 = 1
	exit
.L966:
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
	r6 = r1
	r2 <<= 32
	r2 s>>= 32
	r7 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L969
	r2 = r6
	r1 = r6
	call	__addsf3
	r2 = r0
	r1 = r6
	call	__nesf2
	if r0 == 0 goto .L969
	if r7 s>= 0 goto .L974
	r8 = 0x3f000000 ll
	goto .L973
.L974:
	r8 = 0x40000000 ll
.L973:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L972
	r2 = r8
	r1 = r6
	call	__mulsf3
	r6 = r0
.L972:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L969
	r2 = r8
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L973
.L969:
	r0 = r6
	exit
	.size	ldexpf, .-ldexpf
	.align	3
	.global	ldexp
	.type	ldexp, @function
ldexp:
	r6 = r1
	r2 <<= 32
	r2 s>>= 32
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L977
	r2 = r6
	r1 = r6
	call	__adddf3
	r2 = r0
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L977
	if r7 s>= 0 goto .L982
	r8 = 0x3fe0000000000000 ll
	goto .L981
.L982:
	r8 = 0x4000000000000000 ll
.L981:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L980
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
.L980:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L977
	r2 = r8
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L981
.L977:
	r0 = r6
	exit
	.size	ldexp, .-ldexp
	.align	3
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	r6 = r1
	r2 <<= 32
	r2 s>>= 32
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L985
	r2 = r6
	r1 = r6
	call	__adddf3
	r2 = r0
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L985
	if r7 s>= 0 goto .L990
	r8 = 0x3fe0000000000000 ll
	goto .L989
.L990:
	r8 = 0x4000000000000000 ll
.L989:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L988
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
.L988:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L985
	r2 = r8
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L989
.L985:
	r0 = r6
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
	if r3 != 0 goto .L1004
	goto .L993
.L994:
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
.L993:
	if r0 != r4 goto .L994
	r0 = r1
	exit
.L1004:
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r1+0)
	r5 ^= r9
	*(u8 *) (r1+0) = r5
	r2 += 1
	r0 += 1
	if r3 == 1 goto .L993
	if r3 == 2 goto .L998
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L998:
	r5 = *(u8 *) (r2+0)
	r9 = *(u8 *) (r0+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	goto .L993
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
	r2 &= 3
	if r2 != 0 goto .L1026
	goto .L1006
.L1008:
	r6 += 1
	r0 += 1
	r3 = r7
	r3 += -1
	r7 = r3
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 != 0 goto .L1016
	goto .L1007
.L1006:
	if r7 == 0 goto .L1007
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L1008
.L1007:
	if r7 != 0 goto .L1009
	*(u8 *) (r0+0) = 0
.L1009:
	r0 = r8
	exit
.L1026:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1007
	r6 += 1
	r0 += 1
	r7 += -1
	if r2 == 1 goto .L1006
	if r2 == 2 goto .L1025
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1007
	r6 += 1
	r0 += 1
	r7 += -1
.L1025:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1007
	r6 += 1
	r0 += 1
	r7 += -1
	goto .L1006
.L1016:
	r0 += 1
	r7 += -1
	r4 = *(u8 *) (r6+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1007
	r0 += 1
	r7 += -1
	r5 = *(u8 *) (r6+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1007
	r6 += 3
	r0 += 1
	r3 += -3
	r7 = r3
	goto .L1006
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r0 = 0
	r3 = r2
	r3 &= 7
	if r3 != r0 goto .L1071
	goto .L1028
.L1030:
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 != 0 goto .L1045
	exit
.L1028:
	if r0 == r2 goto .L1029
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 != 0 goto .L1030
.L1029:
	exit
.L1071:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1029
	r0 += 1
	if r3 == 1 goto .L1028
	if r3 == 2 goto .L1066
	if r3 == 3 goto .L1067
	if r3 == 4 goto .L1068
	if r3 == 5 goto .L1069
	if r3 == 6 goto .L1070
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1029
	r0 += 1
.L1070:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1029
	r0 += 1
.L1069:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1029
	r0 += 1
.L1068:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1029
	r0 += 1
.L1067:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1029
	r0 += 1
.L1066:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1029
	r0 += 1
	goto .L1028
.L1045:
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1029
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1029
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1029
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1029
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1029
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1029
	r0 += 1
	goto .L1028
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = r1
	goto .L1073
.L1075:
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r5 += 1
	if r4 == r9 goto .L1074
.L1076:
	r3 = *(u8 *) (r5+0)
	if r3 != 0 goto .L1075
	r0 += 1
.L1073:
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L1078
	r5 = r2
	goto .L1076
.L1078:
	r0 = 0
.L1074:
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
.L1081:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1080
	r3 = r1
.L1080:
	r1 += 1
	r4 = *(u8 *) (r1+-1)
	if r4 != 0 goto .L1081
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
	if r0 == 0 goto .L1085
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
	goto .L1086
.L1087:
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1085
	r6 += 1
.L1086:
	r2 = *(u32 *) (r10+-8)
	r1 = r6
	call	strchr
	r6 = r0
	if r0 != 0 goto .L1087
.L1085:
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
	if r0 s> 0 goto .L1091
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s> 0 goto .L1093
.L1091:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1094
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1094
.L1093:
	r1 = -9223372036854775808 ll
	r6 ^= r1
.L1094:
	r0 = r6
	exit
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r6 = r1
	r7 = r3
	r8 = r4
	r0 = r2
	r0 -= r4
	r1 += r0
	*(u64 *) (r10+-8) = r1
	if r4 == 0 goto .L1104
	r3 = 1
	if r4 >= r2 goto .L1105
	r3 = 0
.L1105:
	r3 &= 0xff
	if r3 != 0 goto .L1110
	r2 = *(u64 *) (r10+-8)
	r2 -= r6
	r2 &= 3
	*(u64 *) (r10+-16) = r2
	if r2 != 0 goto .L1127
	goto .L1106
.L1108:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	if r0 != r9 goto .L1107
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1104
.L1107:
	r6 += 1
	*(u64 *) (r10+-16) = r6
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 != r2 goto .L1122
	goto .L1128
.L1106:
	r5 = *(u64 *) (r10+-8)
	if r5 > r6 goto .L1108
.L1129:
	r6 = 0
	goto .L1104
.L1110:
	r6 = 0
.L1104:
	r0 = r6
	exit
.L1127:
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1129
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 != r5 goto .L1113
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1104
.L1113:
	r6 += 1
	r0 = *(u64 *) (r10+-16)
	if r0 == 1 goto .L1106
	if r0 == 2 goto .L1117
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 != r3 goto .L1115
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1104
.L1115:
	r6 += 1
.L1117:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r4 = *(u8 *) (r7+0)
	r4 <<= 56
	if r4 != r2 goto .L1118
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1104
.L1118:
	r6 += 1
	goto .L1106
.L1128:
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1104
.L1122:
	r6 = *(u64 *) (r10+-16)
	r6 += 1
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r5 = *(u8 *) (r7+0)
	r5 <<= 56
	if r5 != r4 goto .L1124
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1104
.L1124:
	r6 = *(u64 *) (r10+-16)
	r6 += 2
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	if r0 != r9 goto .L1126
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1104
.L1126:
	r6 = *(u64 *) (r10+-16)
	r6 += 3
	goto .L1106
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-8) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s> 0 goto .L1153
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	r8 = 1
	goto .L1131
.L1153:
	r8 = 0
.L1131:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L1142
	goto .L1154
.L1135:
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
	if r0 s>= 0 goto .L1147
	goto .L1136
.L1142:
	r7 = 0
.L1133:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L1135
	goto .L1136
.L1154:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1155
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1144
	r7 = 0
	goto .L1136
.L1139:
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
	if r0 s<= 0 goto .L1150
	goto .L1136
.L1144:
	r7 = 0
.L1138:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L1139
	goto .L1136
.L1155:
	r7 = 0
.L1136:
	r1 = *(u64 *) (r10+-8)
	*(u32 *) (r1+0) = r7
	if r8 == 0 goto .L1140
	r2 = -9223372036854775808 ll
	r2 ^= r6
	r6 = r2
.L1140:
	r0 = r6
	exit
.L1147:
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
	if r0 s< 0 goto .L1136
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
	if r0 s< 0 goto .L1136
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	goto .L1133
.L1150:
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
	if r0 s> 0 goto .L1136
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
	if r0 s> 0 goto .L1136
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	goto .L1138
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
	goto .L1157
.L1159:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1158
	r0 += r2
.L1158:
	r2 += r2
	r1 >>= 1
.L1157:
	if r1 != 0 goto .L1159
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r9 = 33
	r4 = 1
	goto .L1161
.L1163:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1168
	goto .L1185
.L1161:
	if r2 >= r0 goto .L1168
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 == 0 goto .L1169
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1163
.L1186:
	r1 = 0
	goto .L1165
.L1166:
	if r2 >= r0 goto .L1164
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 |= r4
.L1164:
	r4 >>= 1
	r2 >>= 1
	goto .L1165
.L1168:
	r1 = 0
	goto .L1165
.L1169:
	r1 = 0
.L1165:
	if r4 != 0 goto .L1166
	if r3 != 0 goto .L1167
	r0 = r1
.L1167:
	exit
.L1185:
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1186
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1168
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1186
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1168
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1186
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1168
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1186
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1168
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1186
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1168
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1186
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1168
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1186
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	goto .L1161
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r0 = r1
	r0 s>>= 56
	if r1 s>= 0 goto .L1188
	r0 ^= -1
.L1188:
	if r0 == 0 goto .L1190
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
.L1190:
	r0 = 7
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	if r1 s>= 0 goto .L1192
	r1 ^= -1
.L1192:
	if r1 == 0 goto .L1194
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1194:
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
	goto .L1196
.L1198:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1197
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
.L1197:
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
.L1196:
	if r1 != 0 goto .L1198
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
	if r1 >= r2 goto .L1200
.L1202:
	r5 = r2
	r9 = r1
	r6 <<= 3
	r6 += r2
	r4 = r6
	r4 -= r2
	r4 >>= 3
	r4 &= 7
	if r4 != 0 goto .L1282
	goto .L1201
.L1200:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1202
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L1283
	goto .L1203
.L1204:
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r5 += 8
	r9 += 8
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r4 = *(u64 *) (r5+8)
	*(u64 *) (r9+8) = r4
	r4 = *(u64 *) (r5+16)
	*(u64 *) (r9+16) = r4
	r4 = *(u64 *) (r5+24)
	*(u64 *) (r9+24) = r4
	r4 = *(u64 *) (r5+32)
	*(u64 *) (r9+32) = r4
	r4 = *(u64 *) (r5+40)
	*(u64 *) (r9+40) = r4
	r4 = *(u64 *) (r5+48)
	*(u64 *) (r9+48) = r4
	r5 += 56
	r9 += 56
.L1201:
	if r5 != r6 goto .L1204
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L1284
	goto .L1205
.L1206:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
	r9 = r2
	r9 += r0
	r6 = r1
	r6 += r0
	r4 = *(u8 *) (r9+0)
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
.L1205:
	r9 = r0;r9 &= 0xffffffff
	if r3 > r9 goto .L1206
	exit
.L1208:
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
.L1203:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r0 = 4294967295 ll
	if r3 != r0 goto .L1208
.L1199:
	exit
.L1284:
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1199
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r6
	r0 += 1
	if r9 == 1 goto .L1205
	if r9 == 2 goto .L1272
	if r9 == 3 goto .L1273
	if r9 == 4 goto .L1274
	if r9 == 5 goto .L1275
	if r9 == 6 goto .L1276
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1276:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1275:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1274:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1273:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1272:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
	goto .L1205
.L1282:
	r7 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r7
	r5 += 8
	r9 += 8
	if r4 == 1 goto .L1201
	if r4 == 2 goto .L1241
	if r4 == 3 goto .L1239
	if r4 == 4 goto .L1237
	if r4 == 5 goto .L1235
	if r4 == 6 goto .L1233
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r5 += 8
	r9 += 8
.L1233:
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r5 += 8
	r9 += 8
.L1235:
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r5 += 8
	r9 += 8
.L1237:
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r5 += 8
	r9 += 8
.L1239:
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r5 += 8
	r9 += 8
.L1241:
	r4 = *(u64 *) (r5+0)
	*(u64 *) (r9+0) = r4
	r5 += 8
	r9 += 8
	goto .L1201
.L1283:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	if r9 == 1 goto .L1203
	if r9 == 2 goto .L1277
	if r9 == 3 goto .L1278
	if r9 == 4 goto .L1279
	if r9 == 5 goto .L1280
	if r9 == 6 goto .L1281
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1281:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
.L1280:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r9
.L1279:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
.L1278:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1277:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	goto .L1203
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1286
.L1288:
	r0 = r2
	r4 = r1
	r9 += r9
	r9 += r2
	r5 = r9
	r5 -= r2
	r5 >>= 1
	r5 &= 7
	if r5 != 0 goto .L1340
	goto .L1287
.L1286:
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1288
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L1341
	goto .L1289
.L1290:
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
.L1287:
	if r0 != r9 goto .L1290
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1285
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1292:
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
.L1289:
	r3 += -1
	r9 = r3;r9 &= 0xffffffff
	r3 = 4294967295 ll
	if r9 != r3 goto .L1292
.L1285:
	exit
.L1340:
	r6 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r6
	r0 += 2
	r4 += 2
	if r5 == 1 goto .L1287
	if r5 == 2 goto .L1304
	if r5 == 3 goto .L1302
	if r5 == 4 goto .L1300
	if r5 == 5 goto .L1298
	if r5 == 6 goto .L1296
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1296:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1298:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1300:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1302:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1304:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	goto .L1287
.L1341:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	if r9 == 1 goto .L1289
	if r9 == 2 goto .L1335
	if r9 == 3 goto .L1336
	if r9 == 4 goto .L1337
	if r9 == 5 goto .L1338
	if r9 == 6 goto .L1339
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
.L1339:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r5
.L1338:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r0
.L1337:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
.L1336:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
.L1335:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	goto .L1289
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
	if r1 >= r2 goto .L1343
.L1345:
	r5 = r2
	r9 = r1
	r6 <<= 2
	r6 += r2
	r4 = r6
	r4 -= r2
	r4 >>= 2
	r4 &= 7
	if r4 != 0 goto .L1425
	goto .L1344
.L1343:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1345
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L1426
	goto .L1346
.L1347:
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r5 += 4
	r9 += 4
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r4 = *(u32 *) (r5+4)
	*(u32 *) (r9+4) = r4
	r4 = *(u32 *) (r5+8)
	*(u32 *) (r9+8) = r4
	r4 = *(u32 *) (r5+12)
	*(u32 *) (r9+12) = r4
	r4 = *(u32 *) (r5+16)
	*(u32 *) (r9+16) = r4
	r4 = *(u32 *) (r5+20)
	*(u32 *) (r9+20) = r4
	r4 = *(u32 *) (r5+24)
	*(u32 *) (r9+24) = r4
	r5 += 28
	r9 += 28
.L1344:
	if r5 != r6 goto .L1347
	r9 = r3
	r9 -= r0
	r9 &= 7
	if r9 != 0 goto .L1427
	goto .L1348
.L1349:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
	r9 = r2
	r9 += r0
	r6 = r1
	r6 += r0
	r4 = *(u8 *) (r9+0)
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
.L1348:
	r9 = r0;r9 &= 0xffffffff
	if r3 > r9 goto .L1349
	exit
.L1351:
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
.L1346:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r0 = 4294967295 ll
	if r3 != r0 goto .L1351
.L1342:
	exit
.L1427:
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1342
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r6
	r0 += 1
	if r9 == 1 goto .L1348
	if r9 == 2 goto .L1415
	if r9 == 3 goto .L1416
	if r9 == 4 goto .L1417
	if r9 == 5 goto .L1418
	if r9 == 6 goto .L1419
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1419:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1418:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1417:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1416:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
.L1415:
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r0 += 1
	goto .L1348
.L1425:
	r7 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r7
	r5 += 4
	r9 += 4
	if r4 == 1 goto .L1344
	if r4 == 2 goto .L1384
	if r4 == 3 goto .L1382
	if r4 == 4 goto .L1380
	if r4 == 5 goto .L1378
	if r4 == 6 goto .L1376
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r5 += 4
	r9 += 4
.L1376:
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r5 += 4
	r9 += 4
.L1378:
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r5 += 4
	r9 += 4
.L1380:
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r5 += 4
	r9 += 4
.L1382:
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r5 += 4
	r9 += 4
.L1384:
	r4 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r4
	r5 += 4
	r9 += 4
	goto .L1344
.L1426:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	if r9 == 1 goto .L1346
	if r9 == 2 goto .L1420
	if r9 == 3 goto .L1421
	if r9 == 4 goto .L1422
	if r9 == 5 goto .L1423
	if r9 == 6 goto .L1424
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1424:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
.L1423:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r9
.L1422:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
.L1421:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1420:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	goto .L1346
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
	if r0 != 0 goto .L1436
	r2 = r1
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1437
	r0 = 2
	r3 = r1
	r3 >>= 13
	r3 &= 1
	if r3 != 0 goto .L1435
	r0 = 3
	r4 = r1
	r4 >>= 12
	r4 &= 1
	if r4 != 0 goto .L1435
	r0 = 4
	r5 = r1
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1435
	r0 = 5
	r9 = r1
	r9 >>= 10
	r9 &= 1
	if r9 != 0 goto .L1435
	r0 = 6
	r2 = r1
	r2 >>= 9
	r2 &= 1
	if r2 != 0 goto .L1435
	r0 = 7
	r3 = r1
	r3 >>= 8
	r3 &= 1
	if r3 != 0 goto .L1435
	r0 = 8
	r4 = r1
	r4 >>= 7
	r4 &= 1
	if r4 != 0 goto .L1435
	r0 = 9
	r5 = r1
	r5 >>= 6
	r5 &= 1
	if r5 != 0 goto .L1435
	r0 = 10
	r9 = r1
	r9 >>= 5
	r9 &= 1
	if r9 != 0 goto .L1435
	r0 = 11
	r2 = r1
	r2 >>= 4
	r2 &= 1
	if r2 != 0 goto .L1435
	r0 = 12
	r3 = r1
	r3 >>= 3
	r3 &= 1
	if r3 != 0 goto .L1435
	r0 = 13
	r4 = r1
	r4 >>= 2
	r4 &= 1
	if r4 != 0 goto .L1435
	r0 = 14
	r5 = r1
	r5 >>= 1
	r5 &= 1
	if r5 != 0 goto .L1435
	r0 = 15
	r1 &= 1
	if r1 != 0 goto .L1435
	r0 = 16
	exit
.L1436:
	r0 = 0
	exit
.L1437:
	r0 = 1
.L1435:
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1440
	r0 = r2
	r0 >>= 1
	r0 &= 1
	if r0 != 0 goto .L1441
	r0 = 2
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1439
	r0 = 3
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1439
	r0 = 4
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1439
	r0 = 5
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1439
	r0 = 6
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1439
	r0 = 7
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1439
	r0 = 8
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1439
	r0 = 9
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1439
	r0 = 10
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1439
	r0 = 11
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1439
	r0 = 12
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1439
	r0 = 13
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1439
	r0 = 14
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1439
	r0 = 15
	r2 >>= r0
	if r2 != 0 goto .L1439
	r0 = 16
	exit
.L1440:
	r0 = 0
	exit
.L1441:
	r0 = 1
.L1439:
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s< 0 goto .L1447
	r2 = 0x47000000 ll
	r1 = r6
	call	__subsf3
	r1 = r0
	call	__fixsfdi
	r0 += 32768
	exit
.L1447:
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
	if r1 != 0 goto .L1465
	r0 = 0
	goto .L1449
.L1465:
	r0 = 1
.L1449:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1450
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1450:
	r3 = r2
	r3 >>= 2
	r3 &= 1
	if r3 == 0 goto .L1451
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1451:
	r4 = r2
	r4 >>= 3
	r4 &= 1
	if r4 == 0 goto .L1452
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1452:
	r5 = r2
	r5 >>= 4
	r5 &= 1
	if r5 == 0 goto .L1453
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1453:
	r9 = r2
	r9 >>= 5
	r9 &= 1
	if r9 == 0 goto .L1454
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1454:
	r1 = r2
	r1 >>= 6
	r1 &= 1
	if r1 == 0 goto .L1455
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1455:
	r3 = r2
	r3 >>= 7
	r3 &= 1
	if r3 == 0 goto .L1456
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1456:
	r4 = r2
	r4 >>= 8
	r4 &= 1
	if r4 == 0 goto .L1457
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1457:
	r5 = r2
	r5 >>= 9
	r5 &= 1
	if r5 == 0 goto .L1458
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1458:
	r9 = r2
	r9 >>= 10
	r9 &= 1
	if r9 == 0 goto .L1459
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1459:
	r1 = r2
	r1 >>= 11
	r1 &= 1
	if r1 == 0 goto .L1460
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1460:
	r3 = r2
	r3 >>= 12
	r3 &= 1
	if r3 == 0 goto .L1461
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1461:
	r4 = r2
	r4 >>= 13
	r4 &= 1
	if r4 == 0 goto .L1462
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1462:
	r5 = r2
	r5 >>= 14
	r5 &= 1
	if r5 == 0 goto .L1463
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1463:
	r2 >>= 15
	if r2 == 0 goto .L1464
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1464:
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1483
	r0 = 0
	goto .L1467
.L1483:
	r0 = 1
.L1467:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1468
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1468:
	r3 = r2
	r3 >>= 2
	r3 &= 1
	if r3 == 0 goto .L1469
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1469:
	r4 = r2
	r4 >>= 3
	r4 &= 1
	if r4 == 0 goto .L1470
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1470:
	r5 = r2
	r5 >>= 4
	r5 &= 1
	if r5 == 0 goto .L1471
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1471:
	r9 = r2
	r9 >>= 5
	r9 &= 1
	if r9 == 0 goto .L1472
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1472:
	r1 = r2
	r1 >>= 6
	r1 &= 1
	if r1 == 0 goto .L1473
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1473:
	r3 = r2
	r3 >>= 7
	r3 &= 1
	if r3 == 0 goto .L1474
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1474:
	r4 = r2
	r4 >>= 8
	r4 &= 1
	if r4 == 0 goto .L1475
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1475:
	r5 = r2
	r5 >>= 9
	r5 &= 1
	if r5 == 0 goto .L1476
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1476:
	r9 = r2
	r9 >>= 10
	r9 &= 1
	if r9 == 0 goto .L1477
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1477:
	r1 = r2
	r1 >>= 11
	r1 &= 1
	if r1 == 0 goto .L1478
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1478:
	r3 = r2
	r3 >>= 12
	r3 &= 1
	if r3 == 0 goto .L1479
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1479:
	r4 = r2
	r4 >>= 13
	r4 &= 1
	if r4 == 0 goto .L1480
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1480:
	r5 = r2
	r5 >>= 14
	r5 &= 1
	if r5 == 0 goto .L1481
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1481:
	r2 >>= 15
	if r2 == 0 goto .L1482
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1482:
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	goto .L1485
.L1487:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1486
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
.L1486:
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
.L1485:
	if r1 != 0 goto .L1487
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1493
	r0 = 0
	goto .L1490
.L1492:
	r3 = r2
	r3 &= 1
	if r3 == 0 goto .L1491
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
.L1491:
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
.L1490:
	if r2 != 0 goto .L1492
	exit
.L1493:
	r0 = 0
	exit
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r3 <<= 32
	r3 s>>= 32
	r9 = 33
	r4 = 1
	goto .L1495
.L1497:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1502
	goto .L1519
.L1495:
	if r2 >= r0 goto .L1502
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 == 0 goto .L1503
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1497
.L1520:
	r1 = 0
	goto .L1499
.L1500:
	if r2 >= r0 goto .L1498
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 |= r4
.L1498:
	r4 >>= 1
	r2 >>= 1
	goto .L1499
.L1502:
	r1 = 0
	goto .L1499
.L1503:
	r1 = 0
.L1499:
	if r4 != 0 goto .L1500
	if r3 != 0 goto .L1501
	r0 = r1
.L1501:
	exit
.L1519:
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1520
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1502
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1520
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1502
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1520
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1502
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1520
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1502
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1520
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1502
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1520
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1502
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1520
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	goto .L1495
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1523
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s> 0 goto .L1524
	r0 = 0
	exit
.L1523:
	r0 = -1
	exit
.L1524:
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
	if r0 s<= 0 goto .L1527
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s> 0 goto .L1528
	r0 = 0
	exit
.L1527:
	r0 = -1
	exit
.L1528:
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
	r3 = r2
	r3 s>>= 32
	if r2 s>= 0 goto .L1538
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L1532
.L1538:
	r2 = 0
.L1532:
	r4 = 33
	r0 = 0
	goto .L1533
.L1536:
	r5 = r3
	r5 &= 1
	if r5 == 0 goto .L1534
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1534:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1535
	goto .L1546
.L1533:
	if r3 == 0 goto .L1535
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L1536
.L1535:
	if r2 == 0 goto .L1537
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1537:
	exit
.L1546:
	r4 += -1
	r4 &= 0xff
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1541
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1541:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 <<= 31
	r3 s>>= 32
	if r3 == 0 goto .L1535
	r4 += -1
	r4 &= 0xff
	r5 = r3
	r5 &= 1
	if r5 == 0 goto .L1543
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1543:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1535
	r4 += -1
	r4 &= 0xff
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1545
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1545:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 s>>= 1
	goto .L1533
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s>= 0 goto .L1551
	r1 = -r1
	r6 = 1
	goto .L1548
.L1551:
	r6 = 0
.L1548:
	if r2 s>= 0 goto .L1549
	r2 = -r2
	r6 ^= 1
.L1549:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1550
	r0 = -r0
.L1550:
	exit
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s>= 0 goto .L1556
	r1 = -r1
	r6 = 1
	goto .L1553
.L1556:
	r6 = 0
.L1553:
	if r2 s>= 0 goto .L1554
	r2 = -r2
.L1554:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1555
	r0 = -r0
.L1555:
	exit
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r0 goto .L1578
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1579
	r2 += r2
	r2 &= 0xffff
	if r2 > r0 goto .L1580
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1581
	r2 += r2
	r2 &= 0xffff
	r5 = 4
	if r2 > r0 goto .L1558
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 = 8
	if r2 > r0 goto .L1558
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1558
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1558
	r2 += r2
	r2 &= 0xffff
	r5 += r5
	r5 &= 0xffff
	goto .L1558
.L1578:
	r5 = 1
	goto .L1558
.L1579:
	r5 = 1
	goto .L1558
.L1580:
	r5 = 2
	goto .L1558
.L1581:
	r5 = 2
.L1558:
	if r5 == 0 goto .L1582
	if r2 >= r0 goto .L1583
	r0 -= r2
	r0 &= 0xffff
	r4 = r5
	goto .L1561
.L1583:
	r4 = 0
.L1561:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1562
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1562:
	r5 >>= 1
	r2 >>= 1
	r2 &= 0xffff
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1563
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1563:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1564
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1564:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1565
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1565:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1566
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1566:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1567
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1567:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1568
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1568:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1569
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1569:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1570
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1570:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1571
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1571:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1572
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1572:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1573
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1573:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1574
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1574:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1575
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1575:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1560
	if r2 >= r0 goto .L1560
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
	goto .L1560
.L1582:
	r4 = 0
.L1560:
	if r3 != 0 goto .L1577
	r0 = r4
.L1577:
	exit
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r0 = r1
	r3 <<= 32
	r3 s>>= 32
	r4 = 65
	r1 = 1
	goto .L1586
.L1588:
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1593
	goto .L1610
.L1586:
	if r2 >= r0 goto .L1593
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	if r4 == 0 goto .L1594
	r9 = 2147483648 ll
	r5 = r2
	r5 &= r9
	if r5 == 0 goto .L1588
.L1611:
	r5 = 0
	goto .L1590
.L1591:
	if r2 >= r0 goto .L1589
	r0 -= r2
	r5 |= r1
.L1589:
	r1 >>= 1
	r2 >>= 1
	goto .L1590
.L1593:
	r5 = 0
	goto .L1590
.L1594:
	r5 = 0
.L1590:
	if r1 != 0 goto .L1591
	if r3 != 0 goto .L1592
	r0 = r5
.L1592:
	exit
.L1610:
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r9 = 2147483648 ll
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1611
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1593
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1611
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1593
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1611
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1593
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1611
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1593
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1611
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1593
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1611
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1593
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1611
	r2 += r2
	r1 += r1
	goto .L1586
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1613
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
	goto .L1615
.L1613:
	if r2 == 0 goto .L1615
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
.L1615:
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
	if r0 == 0 goto .L1618
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r9 = r3;r9 &= 0xffffffff
	r4 <<= r9
	*(u64 *) (r10+-24) = r4
	goto .L1619
.L1618:
	if r3 == 0 goto .L1621
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
.L1619:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
	goto .L1620
.L1621:
.L1620:
	r0 = r4
	r1 = r5
	exit
	.size	__ashlti3, .-__ashlti3
	.align	3
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
	r1 = r2
	r1 &= 32
	if r1 == 0 goto .L1623
	r4 = r0
	r4 s>>= 63
	r0 s>>= 32
	r2 += -32
	r2 <<= 32
	r2 s>>= 32
	r0 s>>= r2
	r5 = r0;r5 &= 0xffffffff
	r0 = r4
	r0 <<= 32
	r0 |= r5
	exit
.L1623:
	if r2 == 0 goto .L1625
	r3 = r0
	r3 s>>= 32
	r4 = r3
	r4 s>>= r2
	r5 = r3;r5 &= 0xffffffff
	r9 = 32
	r9 -= r2
	r1 = r9;r1 &= 0xffffffff
	r5 <<= r1
	r0 = r0;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 >>= r2
	r0 |= r5
	r3 = r0;r3 &= 0xffffffff
	r4 <<= 32
	r0 = r4
	r0 |= r3
.L1625:
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
	if r0 == 0 goto .L1628
	r0 = r2
	r0 s>>= 63
	*(u64 *) (r10+-24) = r0
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r5 s>>= r3
	*(u64 *) (r10+-32) = r5
	goto .L1629
.L1628:
	if r3 == 0 goto .L1631
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
.L1629:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
	goto .L1630
.L1631:
.L1630:
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
	if r1 > 65535 goto .L1639
	r2 = 16
	goto .L1635
.L1639:
	r2 = 0
.L1635:
	r0 = 16
	r0 -= r2
	r3 = r0;r3 &= 0xffffffff
	r1 >>= r3
	r5 = r1;r5 &= 0xffffffff
	r9 = r2;r9 &= 0xffffffff
	r1 &= 65280
	if r1 != 0 goto .L1640
	r3 = 8
	goto .L1636
.L1640:
	r3 = 0
.L1636:
	r4 = 8
	r4 -= r3
	r1 = r4;r1 &= 0xffffffff
	r5 >>= r1
	r2 = r5
	r0 = r5;r0 &= 0xffffffff
	r3 += r9
	r2 &= 240
	if r2 != 0 goto .L1641
	r9 = 4
	goto .L1637
.L1641:
	r9 = 0
.L1637:
	r5 = 4
	r5 -= r9
	r4 = r5;r4 &= 0xffffffff
	r0 >>= r4
	r2 = r0;r2 &= 0xffffffff
	r9 += r3
	r0 &= 12
	if r0 != 0 goto .L1642
	r1 = 2
	goto .L1638
.L1642:
	r1 = 0
.L1638:
	r0 = 2
	r3 = r0
	r3 -= r1
	r5 = r3;r5 &= 0xffffffff
	r4 = r2
	r4 >>= r5
	r1 += r9
	r9 = r4
	r9 &= r0
	r9 += -1
	r9 >>= 63
	r0 -= r4
	r0 *= r9
	r0 += r1
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
	if r2 == 0 goto .L1644
	r1 = 0
.L1644:
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
	if r3 s>= r0 goto .L1647
	r4 = r2
	r4 s>>= 32
	r5 = r1
	r5 s>>= 32
	if r5 s> r4 goto .L1648
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1649
	if r1 > r2 goto .L1650
	r0 = 1
	exit
.L1647:
	r0 = 0
	exit
.L1648:
	r0 = 2
	exit
.L1649:
	r0 = 0
	exit
.L1650:
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
	if r4 s>= r2 goto .L1654
	if r2 s> r4 goto .L1655
	if r3 >= r1 goto .L1656
	if r1 > r3 goto .L1657
	r0 = 1
	exit
.L1654:
	r0 = 0
	exit
.L1655:
	r0 = 2
	exit
.L1656:
	r0 = 0
	exit
.L1657:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r0 = r1;r0 &= 0xffffffff
	r1 &= 0xffff
	if r1 != 0 goto .L1663
	r1 = 16
	goto .L1659
.L1663:
	r1 = 0
.L1659:
	r4 = r1;r4 &= 0xffffffff
	r0 >>= r1
	r5 = r0;r5 &= 0xffffffff
	r0 &= 0xff
	if r0 != 0 goto .L1664
	r2 = 8
	goto .L1660
.L1664:
	r2 = 0
.L1660:
	r5 >>= r2
	r9 = r5;r9 &= 0xffffffff
	r2 += r4
	r3 = r2
	r5 &= 15
	if r5 != 0 goto .L1665
	r4 = 4
	goto .L1661
.L1665:
	r4 = 0
.L1661:
	r9 >>= r4
	r1 = r9;r1 &= 0xffffffff
	r4 += r3
	r9 &= 3
	if r9 != 0 goto .L1666
	r0 = 2
	goto .L1662
.L1666:
	r0 = 0
.L1662:
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
	if r1 == 0 goto .L1668
	r6 = 0
.L1668:
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
	if r1 != 0 goto .L1670
	if r2 == 0 goto .L1672
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L1670:
	r1 = *(u64 *) (r10+-16)
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1672:
	r0 = 0
	exit
	.size	__ffsti2, .-__ffsti2
	.align	3
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
	r1 = r2
	r1 &= 32
	if r1 == 0 goto .L1674
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1674:
	if r2 == 0 goto .L1676
	r4 = r0
	r4 >>= 32
	r5 = r2;r5 &= 0xffffffff
	r3 = r4
	r3 >>= r5
	r9 = 32
	r9 -= r2
	r2 = r9;r2 &= 0xffffffff
	r4 <<= r2
	r0 = r0;r0 &= 0xffffffff
	r0 >>= r5
	r0 |= r4
	r1 = r0;r1 &= 0xffffffff
	r3 <<= 32
	r0 = r3
	r0 |= r1
.L1676:
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
	if r2 == 0 goto .L1679
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 >>= r2
	*(u64 *) (r10+-32) = r1
	goto .L1680
.L1679:
	if r3 == 0 goto .L1682
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
.L1680:
	r9 = *(u64 *) (r10+-32)
	r0 = *(u64 *) (r10+-24)
	r4 = r9
	r5 = r0
	goto .L1681
.L1682:
.L1681:
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
	if r0 > r9 goto .L1689
	r6 = r9
.L1689:
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
	if r2 > r0 goto .L1696
	r9 = 0
.L1696:
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
	if r4 >= r8 goto .L1697
	r0 = 0
.L1697:
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
	if r8 >= r4 goto .L1698
	r0 = 0
.L1698:
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
	r7 = r1
	r2 <<= 32
	r8 = r2
	r8 s>>= 32
	r2 >>= 63
	*(u64 *) (r10+-8) = r2
	r6 = 0x3ff0000000000000 ll
.L1702:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L1700
	r2 = r7
	r1 = r6
	call	__muldf3
	r6 = r0
.L1700:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L1701
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L1702
.L1701:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1704
	r2 = r6
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L1704:
	r0 = r6
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r7 = r1
	r2 <<= 32
	r8 = r2
	r8 s>>= 32
	r2 >>= 63
	*(u64 *) (r10+-8) = r2
	r6 = 0x3f800000 ll
.L1708:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L1706
	r2 = r7
	r1 = r6
	call	__mulsf3
	r6 = r0
.L1706:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L1707
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L1708
.L1707:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1710
	r2 = r6
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L1710:
	r0 = r6
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
	if r3 >= r0 goto .L1713
	r4 = r2
	r4 >>= 32
	r5 = r1
	r5 >>= 32
	if r5 > r4 goto .L1714
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1715
	if r1 > r2 goto .L1716
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
	if r4 >= r2 goto .L1720
	if r2 > r4 goto .L1721
	if r3 >= r1 goto .L1722
	if r1 > r3 goto .L1723
	r0 = 1
	exit
.L1720:
	r0 = 0
	exit
.L1721:
	r0 = 2
	exit
.L1722:
	r0 = 0
	exit
.L1723:
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
