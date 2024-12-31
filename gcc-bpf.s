	.file	"mini-libc.c"
	.text
	.align	3
	.global	make_ti
	.type	make_ti, @function
make_ti:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r0 = r2
	exit
	.size	make_ti, .-make_ti
	.align	3
	.global	make_tu
	.type	make_tu, @function
make_tu:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r0 = r2
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
	r2 &= 0xff
	if r3 != r2 goto .L74
	goto .L56
.L55:
	if r4 == 0 goto .L56
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	r9 &= 0xff
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
	r5 &= 0xff
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
	r9 &= 0xff
	if r3 == r9 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L99:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	r0 &= 0xff
	if r3 == r0 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L98:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r5 &= 0xff
	if r3 == r5 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L97:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	r9 &= 0xff
	if r3 == r9 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L96:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	r0 &= 0xff
	if r3 == r0 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L95:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r5 &= 0xff
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
	r5 &= 0xff
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	r2 &= 0xff
	if r3 == r2 goto .L56
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r5
	r5 &= 0xff
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	r2 &= 0xff
	if r3 == r2 goto .L56
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r5
	r5 &= 0xff
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	r2 &= 0xff
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
	r0 = r1
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r2 == r3 goto .L303
	r1 += 1
	r0 = *(u8 *) (r1+-1)
	if r0 != 0 goto .L304
.L303:
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
	r5 = r1
	r5 += 1
	r4 = r2
	r4 += 1
	r0 = r1
	r9 = r3
	r9 >>= 1
	r9 &= 1
	if r9 == 0 goto .L371
	goto .L376
.L372:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
.L371:
	r9 = r1
	r9 += r3
	r9 -= r0
	if r9 s> 1 goto .L372
.L377:
	exit
.L376:
	r9 = r1
	r9 += r3
	r9 -= r1
	if r9 s<= 1 goto .L377
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r9
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
	if r2 <= 24 goto .L379
	r0 = 0
.L379:
	r0 &= 1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 126 goto .L381
	r0 = 0
.L381:
	r0 &= 1
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L384
	if r1 != 9 goto .L385
	r0 = 1
	exit
.L384:
	r0 = 1
	exit
.L385:
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
	if r1 <= 30 goto .L388
	if r0 != 127 goto .L389
	r0 = 1
	exit
.L388:
	r0 = 1
	exit
.L389:
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
	if r1 <= 8 goto .L391
	r0 = 0
.L391:
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
	if r1 <= 92 goto .L393
	r0 = 0
.L393:
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
	if r1 <= 24 goto .L395
	r0 = 0
.L395:
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
	if r1 <= 93 goto .L397
	r0 = 0
.L397:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L400
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L401
	r0 = 1
	exit
.L400:
	r0 = 1
	exit
.L401:
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
	if r1 <= 24 goto .L403
	r0 = 0
.L403:
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
	if r1 <= 30 goto .L406
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L407
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L408
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	if r5 > 2 goto .L409
	r0 = 1
	exit
.L406:
	r0 = 1
	exit
.L407:
	r0 = 1
	exit
.L408:
	r0 = 1
	exit
.L409:
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
	if r1 <= 8 goto .L411
	r0 = 0
.L411:
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
	if r1 > 254 goto .L413
	r0 += 1
	r0 &= 127
	r2 = 1
	if r0 s> 32 goto .L414
	r2 = 0
.L414:
	r0 = r2
	r0 &= 1
	exit
.L413:
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 8230 goto .L416
	r2 = r0
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L417
	r4 = r0
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L418
	r9 = r0
	r9 += -65532
	r1 = r9;r1 &= 0xffffffff
	if r1 > 1048579 goto .L419
	r0 &= 65534
	if r0 == 65534 goto .L420
	r0 = 1
	exit
.L416:
	r0 = 1
	exit
.L417:
	r0 = 1
	exit
.L418:
	r0 = 1
	exit
.L419:
	r0 = 0
	exit
.L420:
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
	if r2 <= 8 goto .L423
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 5 goto .L424
	r0 = 1
	exit
.L423:
	r0 = 1
	exit
.L424:
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
	if r0 != 0 goto .L429
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L430
	r2 = r6
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L433
	r2 = r6
	r1 = r7
	call	__subdf3
	exit
.L429:
	r0 = r7
	exit
.L430:
	r0 = r6
	exit
.L433:
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
	if r0 != 0 goto .L437
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L438
	r2 = r6
	r1 = r7
	call	__gtsf2
	if r0 s<= 0 goto .L441
	r2 = r6
	r1 = r7
	call	__subsf3
	exit
.L437:
	r0 = r7
	exit
.L438:
	r0 = r6
	exit
.L441:
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
	if r0 != 0 goto .L446
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L443
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L444
	if r6 s>= 0 goto .L443
	r6 = r7
	goto .L443
.L444:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L443
	r6 = r7
	goto .L443
.L446:
	r6 = r7
.L443:
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
	if r0 != 0 goto .L456
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L453
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L454
	r2 = r6
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L453
	r6 = r7
	goto .L453
.L454:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s> 0 goto .L453
	r6 = r7
	goto .L453
.L456:
	r6 = r7
.L453:
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
	if r0 != 0 goto .L466
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L463
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L464
	if r6 s>= 0 goto .L463
	r6 = r7
	goto .L463
.L464:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L463
	r6 = r7
	goto .L463
.L466:
	r6 = r7
.L463:
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
	if r0 != 0 goto .L473
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L477
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L474
	if r7 s>= 0 goto .L473
	r6 = r7
	goto .L473
.L474:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L473
	r6 = r7
	goto .L473
.L477:
	r6 = r7
.L473:
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
	if r0 != 0 goto .L483
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L487
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L484
	r2 = r7
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L483
	r6 = r7
	goto .L483
.L484:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s> 0 goto .L483
	r6 = r7
	goto .L483
.L487:
	r6 = r7
.L483:
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
	if r0 != 0 goto .L493
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L497
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L494
	if r7 s>= 0 goto .L493
	r6 = r7
	goto .L493
.L494:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L493
	r6 = r7
	goto .L493
.L497:
	r6 = r7
.L493:
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
	r0 = s.0 ll
	goto .L503
.L504:
	r3 = r1
	r3 &= 63
	r2 = digits ll
	r2 += r3
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 != 0 goto .L505
	goto .L508
.L503:
	if r1 != 0 goto .L504
.L508:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
.L505:
	r9 = r1
	r9 &= 63
	r3 = digits ll
	r3 += r9
	r2 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r2
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L508
	r4 = r1
	r4 &= 63
	r5 = digits ll
	r5 += r4
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L508
	r2 = r1
	r2 &= 63
	r3 = digits ll
	r3 += r2
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	goto .L503
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
	if r2 != 0 goto .L512
	r3 = 0
	*(u64 *) (r1+8) = r3
	*(u64 *) (r1+0) = r3
	exit
.L512:
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L511
	*(u64 *) (r2+8) = r1
.L511:
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L515
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L515:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L514
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L514:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r0 = r1;r0 &= 0xffffffff
	r1 <<= 32
	if r1 s>= 0 goto .L518
	r0 = -r0
.L518:
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r6 = r1
	goto .L520
.L521:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L531
	goto .L534
.L520:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L521
.L534:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L527
	if r0 != 45 goto .L528
	r2 = 1
	goto .L522
.L527:
	r2 = 0
.L522:
	r6 += 1
	goto .L523
.L528:
	r2 = 0
.L523:
	r0 = 0
	goto .L524
.L525:
	r4 = r0
	r4 <<= 2
	r4 += r0
	r0 = r4
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
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r3 = r1;r3 &= 0xffffffff
	if r3 <= 8 goto .L530
	goto .L535
.L524:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r3 = r1;r3 &= 0xffffffff
	if r3 <= 8 goto .L525
.L535:
	if r2 != 0 goto .L526
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L526:
	exit
.L530:
	r4 = r0
	r4 <<= 2
	r4 += r0
	r0 = r4
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
	goto .L524
.L531:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L534
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L534
	r6 += 1
	goto .L520
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r6 = r1
	goto .L537
.L538:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L548
	goto .L551
.L537:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L538
.L551:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L544
	if r0 != 45 goto .L545
	r2 = 1
	goto .L539
.L544:
	r2 = 0
.L539:
	r6 += 1
	goto .L540
.L545:
	r2 = 0
.L540:
	r0 = 0
	goto .L541
.L542:
	r0 *= 10
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r6 += 1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r1 = r9;r1 &= 0xffffffff
	if r1 <= 8 goto .L547
	goto .L552
.L541:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r3 = r1;r3 &= 0xffffffff
	if r3 <= 8 goto .L542
.L552:
	if r2 != 0 goto .L543
	r0 = -r0
.L543:
	exit
.L547:
	r0 *= 10
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r0 -= r3
	r6 += 1
	goto .L541
.L548:
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L551
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L551
	r6 += 1
	goto .L537
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r6 = r1
	goto .L554
.L555:
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L565
	goto .L568
.L554:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 != 0 goto .L555
.L568:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L561
	if r0 != 45 goto .L562
	r2 = 1
	goto .L556
.L561:
	r2 = 0
.L556:
	r6 += 1
	goto .L557
.L562:
	r2 = 0
.L557:
	r0 = 0
	goto .L558
.L559:
	r0 *= 10
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r6 += 1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r1 = r9;r1 &= 0xffffffff
	if r1 <= 8 goto .L564
	goto .L569
.L558:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r3 = r1;r3 &= 0xffffffff
	if r3 <= 8 goto .L559
.L569:
	if r2 != 0 goto .L560
	r0 = -r0
.L560:
	exit
.L564:
	r0 *= 10
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r0 -= r3
	r6 += 1
	goto .L558
.L565:
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
	goto .L554
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
	if r1 s>= 0 goto .L572
	r0 = -r0
.L572:
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
	if r1 s>= 0 goto .L575
	r0 = -r0
.L575:
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
	if r1 s>= 0 goto .L578
	r0 = -r0
.L578:
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
	goto .L581
.L583:
	r1 += 4
.L581:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L582
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r2 != r3 goto .L583
.L582:
	r2 = *(u32 *) (r1+0)
	if r2 == 0 goto .L585
	r0 = r1
	exit
.L585:
	r0 = 0
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L587
.L589:
	r1 += 4
	r2 += 4
.L587:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r0 goto .L588
	r4 = *(u32 *) (r1+0)
	if r4 == 0 goto .L588
	r5 = *(u32 *) (r2+0)
	if r5 != 0 goto .L589
.L588:
	r1 = *(u32 *) (r1+0)
	r1 <<= 32
	r2 = *(u32 *) (r2+0)
	r2 <<= 32
	if r2 s>= r1 goto .L592
	r0 = 1
	if r2 s< r1 goto .L591
	r0 = 0
.L591:
	r0 &= 1
	exit
.L592:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L594:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r4 = r0
	r2 += 4
	r5 = r2
	if r3 != 0 goto .L599
.L602:
	r0 = r1
	exit
.L599:
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L602
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L602
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r0 += 12
	r2 += 12
	if r9 != 0 goto .L594
	goto .L602
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = r1
	goto .L604
.L605:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 != 0 goto .L606
	goto .L613
.L604:
	r2 = *(u32 *) (r0+0)
	if r2 != 0 goto .L605
.L613:
	r0 -= r1
	r0 s>>= 2
	exit
.L606:
	r0 += 4
	r5 = *(u32 *) (r4+4)
	if r5 == 0 goto .L613
	r0 += 4
	r9 = *(u32 *) (r4+8)
	if r9 == 0 goto .L613
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L613
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L613
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L613
	r0 += 4
	r4 = *(u32 *) (r4+24)
	if r4 == 0 goto .L613
	r0 += 4
	goto .L604
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	r0 = r3
	r0 &= 3
	if r0 != 0 goto .L638
	goto .L615
.L617:
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	if r9 != r6 goto .L616
	goto .L639
.L615:
	if r3 == 0 goto .L616
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r0 goto .L616
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L616
	r4 = *(u32 *) (r2+0)
	if r4 != 0 goto .L617
.L616:
	if r3 == 0 goto .L620
	r1 = *(u32 *) (r1+0)
	r1 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r1 goto .L621
	r0 = 1
	if r3 s< r1 goto .L619
	r0 = 0
.L619:
	r0 &= 1
	exit
.L620:
	r0 = 0
	exit
.L621:
	r0 = -1
	exit
.L638:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L616
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L616
	r4 = *(u32 *) (r2+0)
	if r4 == 0 goto .L616
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 == 1 goto .L615
	if r0 == 2 goto .L637
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r0 goto .L616
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L616
	r4 = *(u32 *) (r2+0)
	if r4 == 0 goto .L616
	r3 += -1
	r1 += 4
	r2 += 4
.L637:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r0 goto .L616
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L616
	r4 = *(u32 *) (r2+0)
	if r4 == 0 goto .L616
	r3 += -1
	r1 += 4
	r2 += 4
	goto .L615
.L639:
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L616
	r6 = *(u32 *) (r0+0)
	if r6 == 0 goto .L616
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L616
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L616
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L616
	r3 += -1
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r4 goto .L616
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L616
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L616
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	goto .L615
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	r0 = r3
	r0 &= 7
	if r0 != 0 goto .L686
	goto .L641
.L643:
	r3 += -1
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 != r5 goto .L660
	goto .L642
.L641:
	if r3 == 0 goto .L642
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 != r0 goto .L643
.L642:
	if r3 == 0 goto .L645
	r0 = r1
	exit
.L645:
	r0 = 0
	exit
.L686:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L642
	r3 += -1
	r1 += 4
	if r0 == 1 goto .L641
	if r0 == 2 goto .L681
	if r0 == 3 goto .L682
	if r0 == 4 goto .L683
	if r0 == 5 goto .L684
	if r0 == 6 goto .L685
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L642
	r3 += -1
	r1 += 4
.L685:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L642
	r3 += -1
	r1 += 4
.L684:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L642
	r3 += -1
	r1 += 4
.L683:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L642
	r3 += -1
	r1 += 4
.L682:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L642
	r3 += -1
	r1 += 4
.L681:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L642
	r3 += -1
	r1 += 4
	goto .L641
.L660:
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L642
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L642
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L642
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L642
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L642
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L642
	r3 += -1
	r9 += 28
	r1 = r9
	goto .L641
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	r0 = r3
	r0 &= 3
	if r0 != 0 goto .L711
	goto .L688
.L690:
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	if r9 == r6 goto .L701
	goto .L689
.L688:
	if r3 == 0 goto .L689
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 == r9 goto .L690
.L689:
	if r3 == 0 goto .L693
	r1 = *(u32 *) (r1+0)
	r1 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r1 goto .L694
	r0 = 1
	if r3 s< r1 goto .L692
	r0 = 0
.L692:
	r0 &= 1
	exit
.L693:
	r0 = 0
	exit
.L694:
	r0 = -1
	exit
.L711:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L689
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 == 1 goto .L688
	if r0 == 2 goto .L710
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L689
	r3 += -1
	r1 += 4
	r2 += 4
.L710:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L689
	r3 += -1
	r1 += 4
	r2 += 4
	goto .L688
.L701:
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L689
	r3 += -1
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r4 goto .L689
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	goto .L688
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 != 0 goto .L741
	goto .L713
.L714:
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
.L713:
	r9 = r3
	r9 += -1
	if r3 != 0 goto .L714
	r0 = r1
	exit
.L741:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r2 += 4
	if r4 == 1 goto .L713
	if r4 == 2 goto .L736
	if r4 == 3 goto .L737
	if r4 == 4 goto .L738
	if r4 == 5 goto .L739
	if r4 == 6 goto .L740
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L740:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L739:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
.L738:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L737:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L736:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	goto .L713
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L743
	r4 = r3
	r4 <<= 2
	r0 = r1
	r0 -= r2
	if r4 >= r0 goto .L744
	r0 = r1
	r9 = r3
	r9 &= 7
	if r9 != 0 goto .L801
	goto .L745
.L744:
	r0 = r3
	r0 <<= 2
	r3 &= 7
	if r3 != 0 goto .L802
	goto .L746
.L747:
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r9 = r0
	r9 += -4
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r9 = r0
	r9 += -8
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r9 = r0
	r9 += -12
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r9 = r0
	r9 += -16
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r9 = r0
	r9 += -20
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r9 = r0
	r9 += -24
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r0 += -28
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r5+0) = r4
.L746:
	r0 += -4
	r9 = r0
	if r0 != -4 goto .L747
	goto .L743
.L748:
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
.L745:
	r4 = r3
	r4 += -1
	if r3 != 0 goto .L748
.L743:
	r0 = r1
	exit
.L802:
	r0 += -4
	r9 = r2
	r9 += r0
	r4 = r1
	r4 += r0
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	if r3 == 1 goto .L746
	if r3 == 2 goto .L791
	if r3 == 3 goto .L792
	if r3 == 4 goto .L793
	if r3 == 5 goto .L794
	if r3 == 6 goto .L795
	r0 += -4
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L795:
	r0 += -4
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
.L794:
	r0 += -4
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
.L793:
	r0 += -4
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r3+0) = r5
.L792:
	r0 += -4
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L791:
	r0 += -4
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
	goto .L746
.L801:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r2 += 4
	if r9 == 1 goto .L745
	if r9 == 2 goto .L796
	if r9 == 3 goto .L797
	if r9 == 4 goto .L798
	if r9 == 5 goto .L799
	if r9 == 6 goto .L800
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L800:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L799:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
.L798:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
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
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	goto .L745
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
	if r4 != 0 goto .L832
	goto .L804
.L805:
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
.L804:
	r5 = r3
	r5 += -1
	if r3 != 0 goto .L805
	r0 = r1
	exit
.L832:
	r3 += -1
	*(u32 *) (r1+0) = r2
	r0 += 4
	if r4 == 1 goto .L804
	if r4 == 2 goto .L827
	if r4 == 3 goto .L828
	if r4 == 4 goto .L829
	if r4 == 5 goto .L830
	if r4 == 6 goto .L831
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L831:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L830:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L829:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L828:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L827:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
	goto .L804
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L834
	r0 = r1
	r0 += r3
	r2 += r3
	r9 = r0
	r9 -= r1
	r9 &= 7
	if r9 != 0 goto .L882
	goto .L835
.L836:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r4 = *(u8 *) (r0+-1)
	*(u8 *) (r2+-1) = r4
	r3 = *(u8 *) (r0+-2)
	*(u8 *) (r2+-2) = r3
	r5 = *(u8 *) (r0+-3)
	*(u8 *) (r2+-3) = r5
	r9 = *(u8 *) (r0+-4)
	*(u8 *) (r2+-4) = r9
	r4 = *(u8 *) (r0+-5)
	*(u8 *) (r2+-5) = r4
	r3 = *(u8 *) (r0+-6)
	*(u8 *) (r2+-6) = r3
	r0 += -7
	r2 += -7
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L835:
	if r0 != r1 goto .L836
	exit
.L834:
	if r1 == r2 goto .L833
	r0 = r2
	r0 += r3
	r3 &= 7
	if r3 != 0 goto .L883
	goto .L838
.L839:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r9
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r4
	r3 = *(u8 *) (r1+1)
	*(u8 *) (r2+1) = r3
	r5 = *(u8 *) (r1+2)
	*(u8 *) (r2+2) = r5
	r9 = *(u8 *) (r1+3)
	*(u8 *) (r2+3) = r9
	r4 = *(u8 *) (r1+4)
	*(u8 *) (r2+4) = r4
	r3 = *(u8 *) (r1+5)
	*(u8 *) (r2+5) = r3
	r5 = *(u8 *) (r1+6)
	*(u8 *) (r2+6) = r5
	r1 += 7
	r2 += 7
.L838:
	if r2 != r0 goto .L839
.L833:
	exit
.L882:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r9 == 1 goto .L835
	if r9 == 2 goto .L851
	if r9 == 3 goto .L849
	if r9 == 4 goto .L847
	if r9 == 5 goto .L845
	if r9 == 6 goto .L843
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L843:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L845:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L847:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L849:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L851:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	goto .L835
.L883:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r4
	r1 += 1
	r2 += 1
	if r3 == 1 goto .L838
	if r3 == 2 goto .L872
	if r3 == 3 goto .L870
	if r3 == 4 goto .L868
	if r3 == 5 goto .L866
	if r3 == 6 goto .L864
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r3
	r1 += 1
	r2 += 1
.L864:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
.L866:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r9
	r1 += 1
	r2 += 1
.L868:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r4
	r1 += 1
	r2 += 1
.L870:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r3
	r1 += 1
	r2 += 1
.L872:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
	goto .L838
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
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r2 >>= 32
	r3 = r1;r3 &= 0xffffffff
	r0 = -r0
	r0 &= 31
	r1 <<= r2
	r3 >>= r0
	r1 |= r3
	r0 = r1;r0 &= 0xffffffff
	exit
	.size	rotl32, .-rotl32
	.align	3
	.global	rotr32
	.type	rotr32, @function
rotr32:
	r2 <<= 32
	r3 = r2
	r3 s>>= 32
	r0 = r1;r0 &= 0xffffffff
	r2 >>= 32
	r3 = -r3
	r3 &= 31
	r0 >>= r2
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
	r2 >>= 8
	r2 &= 0xff
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
	goto .L898
.L901:
	r2 = r1;r2 &= 0xffffffff
	r2 >>= r0
	r2 &= 1
	if r2 == 0 goto .L899
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	exit
.L899:
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
.L898:
	if r0 != 32 goto .L901
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
	if r1 == 0 goto .L906
	r0 = 1
	goto .L904
.L905:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 == 0 goto .L907
	exit
.L904:
	r1 = r2
	r1 &= 1
	if r1 == 0 goto .L905
	exit
.L906:
	r0 = 0
.L903:
	exit
.L907:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L903
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L903
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L903
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L903
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L903
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L903
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	goto .L904
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L918
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L921
	r0 = 1
	exit
.L918:
	r0 = 1
	exit
.L921:
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
	if r0 s<= 0 goto .L925
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L928
	r0 = 1
	exit
.L925:
	r0 = 1
	exit
.L928:
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
	if r0 s<= 0 goto .L932
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L935
	r0 = 1
	exit
.L932:
	r0 = 1
	exit
.L935:
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
	if r0 != 0 goto .L938
	r2 = r6
	r1 = r6
	call	__addsf3
	r2 = r0
	r1 = r6
	call	__nesf2
	if r0 == 0 goto .L938
	if r7 s>= 0 goto .L943
	r8 = 0x3f000000 ll
	goto .L942
.L943:
	r8 = 0x40000000 ll
.L942:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L941
	r2 = r8
	r1 = r6
	call	__mulsf3
	r6 = r0
.L941:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L938
	r2 = r8
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L942
.L938:
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
	if r0 != 0 goto .L946
	r2 = r6
	r1 = r6
	call	__adddf3
	r2 = r0
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L946
	if r7 s>= 0 goto .L951
	r8 = 0x3fe0000000000000 ll
	goto .L950
.L951:
	r8 = 0x4000000000000000 ll
.L950:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L949
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
.L949:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L946
	r2 = r8
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L950
.L946:
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
	if r0 != 0 goto .L954
	r2 = r6
	r1 = r6
	call	__adddf3
	r2 = r0
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L954
	if r7 s>= 0 goto .L959
	r8 = 0x3fe0000000000000 ll
	goto .L958
.L959:
	r8 = 0x4000000000000000 ll
.L958:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L957
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
.L957:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L954
	r2 = r8
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L958
.L954:
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
	if r3 != 0 goto .L973
	goto .L962
.L963:
	r5 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
	r5 = r0
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
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
.L962:
	if r0 != r4 goto .L963
	r0 = r1
	exit
.L973:
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r1+0)
	r5 ^= r9
	*(u8 *) (r1+0) = r5
	r2 += 1
	r0 += 1
	if r3 == 1 goto .L962
	if r3 == 2 goto .L967
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L967:
	r5 = *(u8 *) (r2+0)
	r9 = *(u8 *) (r0+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	goto .L962
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
	if r2 != 0 goto .L995
	goto .L975
.L977:
	r6 += 1
	r0 += 1
	r2 = r7
	r2 += -1
	r7 = r2
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 != 0 goto .L985
	goto .L976
.L975:
	if r7 == 0 goto .L976
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L977
.L976:
	if r7 != 0 goto .L978
	*(u8 *) (r0+0) = 0
.L978:
	r0 = r8
	exit
.L995:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L976
	r6 += 1
	r0 += 1
	r7 += -1
	if r2 == 1 goto .L975
	if r2 == 2 goto .L994
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L976
	r6 += 1
	r0 += 1
	r7 += -1
.L994:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L976
	r6 += 1
	r0 += 1
	r7 += -1
	goto .L975
.L985:
	r0 += 1
	r7 += -1
	r4 = *(u8 *) (r6+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L976
	r0 += 1
	r7 += -1
	r5 = *(u8 *) (r6+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L976
	r6 += 3
	r0 += 1
	r2 += -3
	r7 = r2
	goto .L975
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r0 = 0
	r3 = r2
	r3 &= 7
	if r3 != r0 goto .L1040
	goto .L997
.L999:
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 != 0 goto .L1014
	exit
.L997:
	if r0 == r2 goto .L998
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 != 0 goto .L999
.L998:
	exit
.L1040:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L998
	r0 += 1
	if r3 == 1 goto .L997
	if r3 == 2 goto .L1035
	if r3 == 3 goto .L1036
	if r3 == 4 goto .L1037
	if r3 == 5 goto .L1038
	if r3 == 6 goto .L1039
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L998
	r0 += 1
.L1039:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L998
	r0 += 1
.L1038:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L998
	r0 += 1
.L1037:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L998
	r0 += 1
.L1036:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L998
	r0 += 1
.L1035:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L998
	r0 += 1
	goto .L997
.L1014:
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L998
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L998
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L998
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L998
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L998
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L998
	r0 += 1
	goto .L997
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = r1
	goto .L1042
.L1044:
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r5 += 1
	if r4 == r9 goto .L1043
.L1045:
	r3 = *(u8 *) (r5+0)
	if r3 != 0 goto .L1044
	r0 += 1
.L1042:
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L1047
	r5 = r2
	goto .L1045
.L1047:
	r0 = 0
.L1043:
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
.L1050:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1049
	r3 = r1
.L1049:
	r1 += 1
	r5 = *(u8 *) (r1+-1)
	if r5 != 0 goto .L1050
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
	if r0 == 0 goto .L1054
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
	goto .L1055
.L1056:
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1054
	r6 += 1
.L1055:
	r2 = *(u32 *) (r10+-8)
	r1 = r6
	call	strchr
	r6 = r0
	if r0 != 0 goto .L1056
.L1054:
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
	if r0 s> 0 goto .L1060
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s> 0 goto .L1062
.L1060:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1063
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1063
.L1062:
	r1 = -9223372036854775808 ll
	r6 ^= r1
.L1063:
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
	if r4 == 0 goto .L1073
	r3 = 1
	if r4 >= r2 goto .L1074
	r3 = 0
.L1074:
	r3 &= 0xff
	if r3 != 0 goto .L1079
	r2 = *(u64 *) (r10+-8)
	r2 -= r6
	r2 &= 1
	if r2 == 0 goto .L1075
	goto .L1086
.L1077:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 != r3 goto .L1076
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1073
.L1076:
	r6 += 1
	*(u64 *) (r10+-16) = r6
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r4 = *(u8 *) (r7+0)
	r4 <<= 56
	if r4 != r2 goto .L1085
	goto .L1087
.L1075:
	r0 = *(u64 *) (r10+-8)
	if r0 > r6 goto .L1077
.L1088:
	r6 = 0
	goto .L1073
.L1079:
	r6 = 0
.L1073:
	r0 = r6
	exit
.L1086:
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1088
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 != r5 goto .L1082
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1073
.L1082:
	r6 += 1
	goto .L1075
.L1087:
	r3 = r8
	r3 += -1
	r2 = r7
	r2 += 1
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 == 0 goto .L1073
.L1085:
	r6 = *(u64 *) (r10+-16)
	r6 += 1
	goto .L1075
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-8) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s> 0 goto .L1112
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	r8 = 1
	goto .L1090
.L1112:
	r8 = 0
.L1090:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L1101
	goto .L1113
.L1094:
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
	if r0 s>= 0 goto .L1106
	goto .L1095
.L1101:
	r7 = 0
.L1092:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L1094
	goto .L1095
.L1113:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1114
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1103
	r7 = 0
	goto .L1095
.L1098:
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
	if r0 s<= 0 goto .L1109
	goto .L1095
.L1103:
	r7 = 0
.L1097:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L1098
	goto .L1095
.L1114:
	r7 = 0
.L1095:
	r1 = *(u64 *) (r10+-8)
	*(u32 *) (r1+0) = r7
	if r8 == 0 goto .L1099
	r2 = -9223372036854775808 ll
	r2 ^= r6
	r6 = r2
.L1099:
	r0 = r6
	exit
.L1106:
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
	if r0 s< 0 goto .L1095
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
	if r0 s< 0 goto .L1095
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	goto .L1092
.L1109:
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
	if r0 s> 0 goto .L1095
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
	if r0 s> 0 goto .L1095
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	goto .L1097
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
	goto .L1116
.L1118:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1117
	r0 += r2
.L1117:
	r2 += r2
	r1 >>= 1
.L1116:
	if r1 != 0 goto .L1118
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
	goto .L1120
.L1122:
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1127
	goto .L1144
.L1120:
	if r2 >= r0 goto .L1127
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 == 0 goto .L1128
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1122
.L1145:
	r1 = 0
	goto .L1124
.L1125:
	if r2 >= r0 goto .L1123
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 |= r4
.L1123:
	r4 >>= 1
	r2 >>= 1
	goto .L1124
.L1127:
	r1 = 0
	goto .L1124
.L1128:
	r1 = 0
.L1124:
	if r4 != 0 goto .L1125
	if r3 != 0 goto .L1126
	r0 = r1
.L1126:
	exit
.L1144:
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1145
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1127
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1145
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1127
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1145
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1127
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1145
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1127
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1145
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1127
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1145
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1127
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1145
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	goto .L1120
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r0 = r1
	r0 s>>= 56
	if r1 s>= 0 goto .L1147
	r0 ^= -1
	r0 <<= 56
	r0 s>>= 56
.L1147:
	if r0 == 0 goto .L1149
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
.L1149:
	r0 = 7
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	if r1 s>= 0 goto .L1151
	r1 ^= -1
.L1151:
	if r1 == 0 goto .L1153
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1153:
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
	goto .L1155
.L1157:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1156
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
.L1156:
	r1 >>= 1
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
.L1155:
	if r1 != 0 goto .L1157
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
	if r1 >= r2 goto .L1159
.L1161:
	r4 = r2
	r5 = r1
	r6 <<= 3
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 3
	r9 &= 7
	if r9 != 0 goto .L1225
	goto .L1160
.L1159:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1161
	r9 = r3
	r9 &= 3
	if r9 != 0 goto .L1226
	goto .L1162
.L1163:
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
.L1160:
	if r4 != r6 goto .L1163
	r4 = r3
	r4 &= 7
	if r4 != 0 goto .L1227
	goto .L1164
.L1165:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r4 = r0
	r6 = r2
	r6 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 += 1
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 2
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 3
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 4
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 5
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 6
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r0 += 7
.L1164:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1165
	exit
.L1167:
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
	r3 = r5;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1162:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r0 = 4294967295 ll
	if r3 != r0 goto .L1167
.L1158:
	exit
.L1227:
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1158
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1164
	if r4 == 2 goto .L1219
	if r4 == 3 goto .L1220
	if r4 == 4 goto .L1221
	if r4 == 5 goto .L1222
	if r4 == 6 goto .L1223
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1223:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1222:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1221:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1220:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1219:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1164
.L1225:
	r7 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r7
	r4 += 8
	r5 += 8
	if r9 == 1 goto .L1160
	if r9 == 2 goto .L1200
	if r9 == 3 goto .L1198
	if r9 == 4 goto .L1196
	if r9 == 5 goto .L1194
	if r9 == 6 goto .L1192
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1192:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1194:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1196:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1198:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1200:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
	goto .L1160
.L1226:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	if r9 == 1 goto .L1162
	if r9 == 2 goto .L1224
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1224:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	goto .L1162
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1229
.L1231:
	r0 = r2
	r4 = r1
	r9 += r9
	r9 += r2
	r5 = r9
	r5 -= r2
	r5 >>= 1
	r5 &= 7
	if r5 != 0 goto .L1267
	goto .L1230
.L1229:
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1231
	r9 = r3
	r9 &= 3
	if r9 != 0 goto .L1268
	goto .L1232
.L1233:
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
.L1230:
	if r0 != r9 goto .L1233
	r4 = r3
	r4 &= 1
	if r4 == 0 goto .L1228
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1235:
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r0
	r3 += -1
	r5 = r3;r5 &= 0xffffffff
	r3 = r2
	r3 += r5
	r9 = r1
	r9 += r5
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r4
	r5 += -1
	r3 = r5;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
.L1232:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = 4294967295 ll
	if r3 != r4 goto .L1235
.L1228:
	exit
.L1267:
	r6 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r6
	r0 += 2
	r4 += 2
	if r5 == 1 goto .L1230
	if r5 == 2 goto .L1247
	if r5 == 3 goto .L1245
	if r5 == 4 goto .L1243
	if r5 == 5 goto .L1241
	if r5 == 6 goto .L1239
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1239:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1241:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1243:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1245:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1247:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	goto .L1230
.L1268:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	if r9 == 1 goto .L1232
	if r9 == 2 goto .L1266
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
.L1266:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r5
	goto .L1232
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
	if r1 >= r2 goto .L1270
.L1272:
	r4 = r2
	r5 = r1
	r6 <<= 2
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 2
	r9 &= 7
	if r9 != 0 goto .L1336
	goto .L1271
.L1270:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1272
	r9 = r3
	r9 &= 3
	if r9 != 0 goto .L1337
	goto .L1273
.L1274:
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
.L1271:
	if r4 != r6 goto .L1274
	r4 = r3
	r4 -= r0
	r4 &= 7
	if r4 != 0 goto .L1338
	goto .L1275
.L1276:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r4 = r0
	r6 = r2
	r6 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 += 1
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 2
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 3
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 4
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 5
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 6
	r6 = r2
	r6 += r4
	r5 = r1
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r0 += 7
.L1275:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1276
	exit
.L1278:
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
	r3 = r5;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1273:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r0 = 4294967295 ll
	if r3 != r0 goto .L1278
.L1269:
	exit
.L1338:
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1269
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1275
	if r4 == 2 goto .L1330
	if r4 == 3 goto .L1331
	if r4 == 4 goto .L1332
	if r4 == 5 goto .L1333
	if r4 == 6 goto .L1334
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1334:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1333:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1332:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1331:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1330:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1275
.L1336:
	r7 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r7
	r4 += 4
	r5 += 4
	if r9 == 1 goto .L1271
	if r9 == 2 goto .L1311
	if r9 == 3 goto .L1309
	if r9 == 4 goto .L1307
	if r9 == 5 goto .L1305
	if r9 == 6 goto .L1303
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1303:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1305:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1307:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1309:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1311:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
	goto .L1271
.L1337:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r5 = r2
	r5 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	if r9 == 1 goto .L1273
	if r9 == 2 goto .L1335
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r0
.L1335:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r2
	r4 += r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	goto .L1273
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
	if r0 != 0 goto .L1347
	r2 = r1
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1348
	r0 = 2
	r3 = r1
	r3 s>>= 13
	r3 &= 1
	if r3 != 0 goto .L1346
	r0 += 1
	r4 = 15
	r4 -= r0
	r5 = r1
	r5 s>>= r4
	r5 &= 1
	if r5 != 0 goto .L1346
	r0 += 1
	r9 = 15
	r9 -= r0
	r2 = r1
	r2 s>>= r9
	r2 &= 1
	if r2 != 0 goto .L1346
	r0 += 1
	r3 = 15
	r3 -= r0
	r4 = r1
	r4 s>>= r3
	r4 &= 1
	if r4 != 0 goto .L1346
	r0 += 1
	r5 = 15
	r5 -= r0
	r9 = r1
	r9 s>>= r5
	r9 &= 1
	if r9 != 0 goto .L1346
	r0 += 1
	r3 = 15
	r3 -= r0
	r2 = r1
	r2 s>>= r3
	r2 &= 1
	if r2 != 0 goto .L1346
	r0 += 1
	r4 = 15
	r4 -= r0
	r5 = r1
	r5 s>>= r4
	r5 &= 1
	if r5 != 0 goto .L1346
	r0 += 1
	r9 = 15
	r9 -= r0
	r3 = r1
	r3 s>>= r9
	r3 &= 1
	if r3 != 0 goto .L1346
	r0 += 1
	r4 = 15
	r4 -= r0
	r2 = r1
	r2 s>>= r4
	r2 &= 1
	if r2 != 0 goto .L1346
	r0 += 1
	r5 = 15
	r5 -= r0
	r9 = r1
	r9 s>>= r5
	r9 &= 1
	if r9 != 0 goto .L1346
	r0 += 1
	r3 = 15
	r3 -= r0
	r4 = r1
	r4 s>>= r3
	r4 &= 1
	if r4 != 0 goto .L1346
	r0 += 1
	r5 = 15
	r5 -= r0
	r2 = r1
	r2 s>>= r5
	r2 &= 1
	if r2 != 0 goto .L1346
	r0 += 1
	r9 = 15
	r9 -= r0
	r3 = r1
	r3 s>>= r9
	r3 &= 1
	if r3 != 0 goto .L1346
	r0 += 1
	r4 = 15
	r4 -= r0
	r1 s>>= r4
	r1 &= 1
	if r1 != 0 goto .L1346
	r0 += 1
	exit
.L1347:
	r0 = 0
	exit
.L1348:
	r0 = 1
.L1346:
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1351
	r0 = r2
	r0 >>= 1
	r0 &= 1
	if r0 != 0 goto .L1352
	r0 = 2
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1350
	r0 += 1
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1350
	r0 += 1
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1350
	r0 += 1
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1350
	r0 += 1
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1350
	r0 += 1
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1350
	r0 += 1
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1350
	r0 += 1
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1350
	r0 += 1
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1350
	r0 += 1
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1350
	r0 += 1
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1350
	r0 += 1
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1350
	r0 += 1
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1350
	r0 += 1
	r2 s>>= r0
	r2 &= 1
	if r2 != 0 goto .L1350
	r0 += 1
	exit
.L1351:
	r0 = 0
	exit
.L1352:
	r0 = 1
.L1350:
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s< 0 goto .L1358
	r2 = 0x47000000 ll
	r1 = r6
	call	__subsf3
	r1 = r0
	call	__fixsfdi
	r0 += 32768
	exit
.L1358:
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
	if r1 != 0 goto .L1376
	r0 = 0
	goto .L1360
.L1376:
	r0 = 1
.L1360:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1361
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1361:
	r4 = 2
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1362
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1362:
	r4 += 1
	r5 = r2
	r5 s>>= r4
	r5 &= 1
	if r5 == 0 goto .L1363
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1363:
	r4 += 1
	r9 = r2
	r9 s>>= r4
	r9 &= 1
	if r9 == 0 goto .L1364
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1364:
	r4 += 1
	r1 = r2
	r1 s>>= r4
	r1 &= 1
	if r1 == 0 goto .L1365
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1365:
	r4 += 1
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1366
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1366:
	r4 += 1
	r5 = r2
	r5 s>>= r4
	r5 &= 1
	if r5 == 0 goto .L1367
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1367:
	r4 += 1
	r9 = r2
	r9 s>>= r4
	r9 &= 1
	if r9 == 0 goto .L1368
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1368:
	r4 += 1
	r1 = r2
	r1 s>>= r4
	r1 &= 1
	if r1 == 0 goto .L1369
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1369:
	r4 += 1
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1370
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1370:
	r4 += 1
	r5 = r2
	r5 s>>= r4
	r5 &= 1
	if r5 == 0 goto .L1371
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1371:
	r4 += 1
	r9 = r2
	r9 s>>= r4
	r9 &= 1
	if r9 == 0 goto .L1372
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1372:
	r4 += 1
	r1 = r2
	r1 s>>= r4
	r1 &= 1
	if r1 == 0 goto .L1373
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1373:
	r4 += 1
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1374
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1374:
	r4 += 1
	r2 s>>= r4
	r2 &= 1
	if r2 == 0 goto .L1375
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1375:
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1394
	r0 = 0
	goto .L1378
.L1394:
	r0 = 1
.L1378:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1379
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1379:
	r4 = 2
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1380
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1380:
	r4 += 1
	r5 = r2
	r5 s>>= r4
	r5 &= 1
	if r5 == 0 goto .L1381
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1381:
	r4 += 1
	r9 = r2
	r9 s>>= r4
	r9 &= 1
	if r9 == 0 goto .L1382
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1382:
	r4 += 1
	r1 = r2
	r1 s>>= r4
	r1 &= 1
	if r1 == 0 goto .L1383
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1383:
	r4 += 1
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1384
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1384:
	r4 += 1
	r5 = r2
	r5 s>>= r4
	r5 &= 1
	if r5 == 0 goto .L1385
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1385:
	r4 += 1
	r9 = r2
	r9 s>>= r4
	r9 &= 1
	if r9 == 0 goto .L1386
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1386:
	r4 += 1
	r1 = r2
	r1 s>>= r4
	r1 &= 1
	if r1 == 0 goto .L1387
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1387:
	r4 += 1
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1388
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1388:
	r4 += 1
	r5 = r2
	r5 s>>= r4
	r5 &= 1
	if r5 == 0 goto .L1389
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1389:
	r4 += 1
	r9 = r2
	r9 s>>= r4
	r9 &= 1
	if r9 == 0 goto .L1390
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1390:
	r4 += 1
	r1 = r2
	r1 s>>= r4
	r1 &= 1
	if r1 == 0 goto .L1391
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1391:
	r4 += 1
	r3 = r2
	r3 s>>= r4
	r3 &= 1
	if r3 == 0 goto .L1392
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1392:
	r4 += 1
	r2 s>>= r4
	r2 &= 1
	if r2 == 0 goto .L1393
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1393:
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	goto .L1396
.L1398:
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1397
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
.L1397:
	r1 >>= 1
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
.L1396:
	if r1 != 0 goto .L1398
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1404
	r0 = 0
	goto .L1401
.L1403:
	r3 = r2
	r3 &= 1
	if r3 == 0 goto .L1402
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
.L1402:
	r1 <<= 1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
.L1401:
	if r2 != 0 goto .L1403
	exit
.L1404:
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
	goto .L1406
.L1408:
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1413
	goto .L1430
.L1406:
	if r2 >= r0 goto .L1413
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 == 0 goto .L1414
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1408
.L1431:
	r1 = 0
	goto .L1410
.L1411:
	if r2 >= r0 goto .L1409
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 |= r4
.L1409:
	r4 >>= 1
	r2 >>= 1
	goto .L1410
.L1413:
	r1 = 0
	goto .L1410
.L1414:
	r1 = 0
.L1410:
	if r4 != 0 goto .L1411
	if r3 != 0 goto .L1412
	r0 = r1
.L1412:
	exit
.L1430:
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1431
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1413
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1431
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1413
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1431
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1413
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1431
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1413
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1431
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1413
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1431
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r0 goto .L1413
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1431
	r2 <<= 1
	r2 = r2;r2 &= 0xffffffff
	r4 <<= 1
	r4 = r4;r4 &= 0xffffffff
	goto .L1406
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1434
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s> 0 goto .L1435
	r0 = 0
	exit
.L1434:
	r0 = -1
	exit
.L1435:
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
	if r0 s<= 0 goto .L1438
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s> 0 goto .L1439
	r0 = 0
	exit
.L1438:
	r0 = -1
	exit
.L1439:
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
	if r2 s>= 0 goto .L1449
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	goto .L1443
.L1449:
	r4 = 0
.L1443:
	r2 = 33
	r0 = 0
	goto .L1444
.L1447:
	r5 = r3
	r5 &= 1
	if r5 == 0 goto .L1445
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1445:
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1446
	goto .L1457
.L1444:
	if r3 == 0 goto .L1446
	r2 += -1
	r2 &= 0xff
	if r2 != 0 goto .L1447
.L1446:
	if r4 == 0 goto .L1448
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1448:
	exit
.L1457:
	r2 += -1
	r2 &= 0xff
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1452
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1452:
	r1 <<= 33
	r1 s>>= 32
	r3 <<= 31
	r3 s>>= 32
	if r3 == 0 goto .L1446
	r2 += -1
	r2 &= 0xff
	r5 = r3
	r5 &= 1
	if r5 == 0 goto .L1454
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1454:
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1446
	r2 += -1
	r2 &= 0xff
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1456
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1456:
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	goto .L1444
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s>= 0 goto .L1462
	r1 = -r1
	r6 = 1
	goto .L1459
.L1462:
	r6 = 0
.L1459:
	if r2 s>= 0 goto .L1460
	r2 = -r2
	r6 ^= 1
.L1460:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1461
	r0 = -r0
.L1461:
	exit
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s>= 0 goto .L1467
	r1 = -r1
	r6 = 1
	goto .L1464
.L1467:
	r6 = 0
.L1464:
	if r2 s>= 0 goto .L1465
	r2 = -r2
.L1465:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1466
	r0 = -r0
.L1466:
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
	if r2 >= r0 goto .L1489
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1490
	r2 <<= 1
	r2 &= 0xffff
	if r2 > r0 goto .L1491
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1492
	r2 <<= 1
	r2 &= 0xffff
	r5 = 4
	if r2 > r0 goto .L1469
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r0 goto .L1469
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1469
	r2 <<= 1
	r2 &= 0xffff
	r5 = 0
	goto .L1469
.L1489:
	r5 = 1
	goto .L1469
.L1490:
	r5 = 1
	goto .L1469
.L1491:
	r5 = 2
	goto .L1469
.L1492:
	r5 = 2
.L1469:
	if r5 == 0 goto .L1493
	if r2 >= r0 goto .L1494
	r0 -= r2
	r0 &= 0xffff
	r4 = r5
	goto .L1472
.L1494:
	r4 = 0
.L1472:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1473
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1473:
	r5 >>= 1
	r2 >>= 1
	r2 &= 0xffff
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1474
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1474:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1475
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1475:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1476
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1476:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1477
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1477:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1478
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1478:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1479
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1479:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1480
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1480:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1481
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1481:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1482
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1482:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1483
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1483:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1484
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1484:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1485
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1485:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1486
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
.L1486:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1471
	if r2 >= r0 goto .L1471
	r0 -= r2
	r0 &= 0xffff
	r4 |= r5
	r4 &= 0xffff
	goto .L1471
.L1493:
	r4 = 0
.L1471:
	if r3 != 0 goto .L1488
	r0 = r4
.L1488:
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
	goto .L1497
.L1499:
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1504
	goto .L1521
.L1497:
	if r2 >= r0 goto .L1504
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	if r4 == 0 goto .L1505
	r9 = 2147483648 ll
	r5 = r2
	r5 &= r9
	if r5 == 0 goto .L1499
.L1522:
	r5 = 0
	goto .L1501
.L1502:
	if r2 >= r0 goto .L1500
	r0 -= r2
	r5 |= r1
.L1500:
	r1 >>= 1
	r2 >>= 1
	goto .L1501
.L1504:
	r5 = 0
	goto .L1501
.L1505:
	r5 = 0
.L1501:
	if r1 != 0 goto .L1502
	if r3 != 0 goto .L1503
	r0 = r5
.L1503:
	exit
.L1521:
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r9 = 2147483648 ll
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1522
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1504
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1522
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1504
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1522
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1504
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1522
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1504
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1522
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1504
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1522
	r2 += r2
	r1 += r1
	if r2 >= r0 goto .L1504
	r4 += -1
	r4 = r4;r4 &= 0xffffffff
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L1522
	r2 += r2
	r1 += r1
	goto .L1497
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r3 = r1
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1524
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r3 = r2;r3 &= 0xffffffff
	r1 <<= r3
	r1 <<= 32
	goto .L1526
.L1524:
	if r2 == 0 goto .L1526
	r5 = r1;r5 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r1 = r5
	r1 <<= r4
	r3 >>= 32
	r3 <<= r4
	r9 = 32
	r9 -= r2
	r2 = r9;r2 &= 0xffffffff
	r5 >>= r2
	r5 |= r3
	r5 <<= 32
	r1 = r1;r1 &= 0xffffffff
	r1 |= r5
.L1526:
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
	if r0 == 0 goto .L1529
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r9 = r3;r9 &= 0xffffffff
	r4 <<= r9
	*(u64 *) (r10+-24) = r4
	goto .L1530
.L1529:
	if r3 == 0 goto .L1532
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
.L1530:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
	goto .L1531
.L1532:
.L1531:
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
	r0 = r1
	r3 = r2
	r3 &= 32
	if r3 == 0 goto .L1534
	r1 s>>= 63
	r0 s>>= 32
	r2 += -32
	r2 <<= 32
	r2 s>>= 32
	r0 s>>= r2
	r5 = r0;r5 &= 0xffffffff
	r1 <<= 32
	r1 |= r5
	goto .L1536
.L1534:
	if r2 == 0 goto .L1536
	r4 = r1
	r4 s>>= 32
	r1 = r4
	r1 s>>= r2
	r5 = r4;r5 &= 0xffffffff
	r9 = 32
	r9 -= r2
	r3 = r9;r3 &= 0xffffffff
	r5 <<= r3
	r0 = r0;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 >>= r2
	r0 |= r5
	r4 = r0;r4 &= 0xffffffff
	r1 <<= 32
	r1 |= r4
.L1536:
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
	if r0 == 0 goto .L1539
	r0 = r2
	r0 s>>= 63
	*(u64 *) (r10+-24) = r0
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r5 s>>= r3
	*(u64 *) (r10+-32) = r5
	goto .L1540
.L1539:
	if r3 == 0 goto .L1542
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
.L1540:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
	goto .L1541
.L1542:
.L1541:
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
	if r1 > 65535 goto .L1550
	r2 = 16
	goto .L1546
.L1550:
	r2 = 0
.L1546:
	r0 = 16
	r0 -= r2
	r3 = r0;r3 &= 0xffffffff
	r1 >>= r3
	r5 = r1;r5 &= 0xffffffff
	r9 = r2;r9 &= 0xffffffff
	r1 &= 65280
	if r1 != 0 goto .L1551
	r3 = 8
	goto .L1547
.L1551:
	r3 = 0
.L1547:
	r4 = 8
	r4 -= r3
	r1 = r4;r1 &= 0xffffffff
	r5 >>= r1
	r2 = r5
	r0 = r5;r0 &= 0xffffffff
	r3 += r9
	r2 &= 240
	if r2 != 0 goto .L1552
	r9 = 4
	goto .L1548
.L1552:
	r9 = 0
.L1548:
	r5 = 4
	r5 -= r9
	r4 = r5;r4 &= 0xffffffff
	r0 >>= r4
	r2 = r0;r2 &= 0xffffffff
	r9 += r3
	r0 &= 12
	if r0 != 0 goto .L1553
	r1 = 2
	goto .L1549
.L1553:
	r1 = 0
.L1549:
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
	if r2 == 0 goto .L1555
	r1 = 0
.L1555:
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
	if r3 s>= r0 goto .L1558
	r4 = r2
	r4 s>>= 32
	r5 = r1
	r5 s>>= 32
	if r5 s> r4 goto .L1559
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1560
	if r1 > r2 goto .L1561
	r0 = 1
	exit
.L1558:
	r0 = 0
	exit
.L1559:
	r0 = 2
	exit
.L1560:
	r0 = 0
	exit
.L1561:
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
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	*(u64 *) (r10+-32) = r3
	*(u64 *) (r10+-24) = r4
	if r4 s>= r2 goto .L1565
	if r2 s> r4 goto .L1566
	if r3 >= r1 goto .L1567
	if r1 > r3 goto .L1568
	r0 = 1
	exit
.L1565:
	r0 = 0
	exit
.L1566:
	r0 = 2
	exit
.L1567:
	r0 = 0
	exit
.L1568:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r0 = r1;r0 &= 0xffffffff
	r1 &= 0xffff
	if r1 != 0 goto .L1574
	r2 = 16
	goto .L1570
.L1574:
	r2 = 0
.L1570:
	r0 >>= r2
	r1 = r0
	r4 = r0;r4 &= 0xffffffff
	r3 = r2
	r1 &= 0xff
	if r1 != 0 goto .L1575
	r5 = 8
	goto .L1571
.L1575:
	r5 = 0
.L1571:
	r9 = r5;r9 &= 0xffffffff
	r4 >>= r5
	r2 = r4;r2 &= 0xffffffff
	r9 += r3
	r4 &= 15
	if r4 != 0 goto .L1576
	r0 = 4
	goto .L1572
.L1576:
	r0 = 0
.L1572:
	r1 = r0;r1 &= 0xffffffff
	r2 >>= r0
	r4 = r2;r4 &= 0xffffffff
	r9 += r1
	r2 &= 3
	if r2 != 0 goto .L1577
	r5 = 2
	goto .L1573
.L1577:
	r5 = 0
.L1573:
	r3 = r5;r3 &= 0xffffffff
	r4 >>= r5
	r4 &= 3
	r9 += r3
	r2 = r4
	r2 ^= -1
	r4 >>= 1
	r2 &= 1
	r0 = 2
	r0 -= r4
	r4 = r2
	r4 = -r4
	r0 &= r4
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
	if r1 == 0 goto .L1579
	r6 = 0
.L1579:
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
	if r1 != 0 goto .L1581
	if r2 == 0 goto .L1583
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L1581:
	r1 = *(u64 *) (r10+-16)
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1583:
	r0 = 0
	exit
	.size	__ffsti2, .-__ffsti2
	.align	3
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r1
	r3 = r2
	r3 &= 32
	if r3 == 0 goto .L1585
	r0 >>= 32
	r2 += -32
	r1 = r2;r1 &= 0xffffffff
	r0 >>= r1
	r1 = r0;r1 &= 0xffffffff
	goto .L1587
.L1585:
	if r2 == 0 goto .L1587
	r4 = r1
	r4 >>= 32
	r5 = r2;r5 &= 0xffffffff
	r1 = r4
	r1 >>= r5
	r9 = 32
	r9 -= r2
	r2 = r9;r2 &= 0xffffffff
	r4 <<= r2
	r0 = r0;r0 &= 0xffffffff
	r0 >>= r5
	r0 |= r4
	r3 = r0;r3 &= 0xffffffff
	r1 <<= 32
	r1 |= r3
.L1587:
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
	if r2 == 0 goto .L1590
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 >>= r2
	*(u64 *) (r10+-32) = r1
	goto .L1591
.L1590:
	if r3 == 0 goto .L1593
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
.L1591:
	r2 = *(u64 *) (r10+-32)
	r3 = *(u64 *) (r10+-24)
	r4 = r2
	r5 = r3
	goto .L1592
.L1593:
.L1592:
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
	r4 = r1
	r9 = 4294967295 ll
	r5 = r1
	r5 &= r9
	r1 = r2
	r1 &= r9
	r0 = r5
	r0 *= r1
	*(u64 *) (r10+-16) = r0
	r3 = r0
	r3 >>= 32
	r0 &= r9
	*(u64 *) (r10+-16) = r0
	r4 >>= 32
	r6 = r4
	r6 *= r1
	r3 += r6
	r1 = r3
	r1 <<= 32
	r1 += r0
	*(u64 *) (r10+-16) = r1
	r3 >>= 32
	*(u64 *) (r10+-8) = r3
	r0 = r1
	r0 >>= 32
	r1 &= r9
	*(u64 *) (r10+-16) = r1
	r2 >>= 32
	r5 *= r2
	r0 += r5
	r9 = r0
	r9 <<= 32
	r9 += r1
	*(u64 *) (r10+-16) = r9
	r0 >>= 32
	r0 += r3
	*(u64 *) (r10+-8) = r0
	r4 *= r2
	r4 += r0
	*(u64 *) (r10+-8) = r4
	r0 = r9
	r1 = r4
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	r9 = r2
	r2 = r3
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r9
	*(u64 *) (r10+-32) = r3
	*(u64 *) (r10+-24) = r4
	call	__mulddi3
	r8 = r0
	*(u64 *) (r10+-48) = r0
	*(u64 *) (r10+-40) = r1
	r4 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-32)
	r4 *= r0
	r5 = *(u64 *) (r10+-16)
	r9 = *(u64 *) (r10+-24)
	r9 *= r5
	r4 += r9
	r4 += r1
	*(u64 *) (r10+-40) = r4
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
	r4 = r1
	r3 = r2
	r1 = 0
	r5 = r1
	r0 = r1
	r0 -= r4
	r6 = 1
	if r0 > r1 goto .L1600
	r6 = r1
.L1600:
	r1 = r5
	r1 -= r3
	r1 -= r6
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
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
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
	r0 = r1
	r1 = r2
	r4 = r2
	r4 <<= 63
	r2 = r0
	r2 >>= 1
	r4 |= r2
	r3 = r1
	r3 >>= 1
	r8 = 6148914691236517205 ll
	r4 &= r8
	r5 = r3
	r5 &= r8
	r2 = r0
	r2 -= r4
	r9 = 1
	if r2 > r0 goto .L1607
	r9 = 0
.L1607:
	r3 = r1
	r3 -= r5
	r4 = r3
	r4 -= r9
	r0 = r2
	r1 = r4
	r4 <<= 62
	r2 >>= 2
	r4 |= r2
	r3 = r1
	r3 >>= 2
	r8 = 3689348814741910323 ll
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
	if r4 >= r8 goto .L1608
	r0 = 0
.L1608:
	r9 = r5
	r9 += r3
	r0 += r9
	r1 = r0
	r4 = r0
	r4 <<= 60
	r2 = r8
	r2 >>= 4
	r4 |= r2
	r5 = r4
	r3 = r0
	r3 >>= 4
	r4 += r8
	r8 = 1
	if r5 >= r4 goto .L1609
	r8 = 0
.L1609:
	r5 = r3
	r5 += r1
	r9 = r8
	r9 += r5
	r8 = r4
	r1 = 1085102592571150095 ll
	r0 = r4
	r0 &= r1
	r2 = r9
	r2 &= r1
	r2 += r0
	r3 = r2
	r3 >>= 32
	r2 += r3
	r4 = r2;r4 &= 0xffffffff
	r5 = r4
	r5 >>= 16
	r5 += r4
	r9 = r5;r9 &= 0xffffffff
	r0 = r9
	r0 >>= 8
	r0 += r9
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
.L1613:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L1611
	r2 = r7
	r1 = r6
	call	__muldf3
	r6 = r0
.L1611:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L1612
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L1613
.L1612:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1615
	r2 = r6
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L1615:
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
.L1619:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L1617
	r2 = r7
	r1 = r6
	call	__mulsf3
	r6 = r0
.L1617:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L1618
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L1619
.L1618:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1621
	r2 = r6
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L1621:
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
	if r3 >= r0 goto .L1624
	r4 = r2
	r4 >>= 32
	r5 = r1
	r5 >>= 32
	if r5 > r4 goto .L1625
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1626
	if r1 > r2 goto .L1627
	r0 = 1
	exit
.L1624:
	r0 = 0
	exit
.L1625:
	r0 = 2
	exit
.L1626:
	r0 = 0
	exit
.L1627:
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
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	*(u64 *) (r10+-32) = r3
	*(u64 *) (r10+-24) = r4
	if r4 >= r2 goto .L1631
	if r2 > r4 goto .L1632
	if r3 >= r1 goto .L1633
	if r1 > r3 goto .L1634
	r0 = 1
	exit
.L1631:
	r0 = 0
	exit
.L1632:
	r0 = 2
	exit
.L1633:
	r0 = 0
	exit
.L1634:
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
