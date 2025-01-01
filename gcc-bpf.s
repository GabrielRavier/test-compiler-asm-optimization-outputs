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
	if r9 == 0 goto .L5
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
.L7:
	r0 = r1
	exit
.L4:
	if r1 == r2 goto .L7
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L8
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
	goto .L7
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	r0 = r4
	r0 &= 7
	if r0 == 0 goto .L55
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
.L55:
	if r4 == 0 goto .L56
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L56
	r4 += -1
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r3 == r2 goto .L56
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
.L56:
	if r4 == 0 goto .L59
	r0 = r1
	r0 += 1
	exit
.L59:
	r0 = 0
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L102
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
.L102:
	if r3 == 0 goto .L103
	r0 = *(u8 *) (r1+0)
	if r2 == r0 goto .L103
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L103
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
.L103:
	if r3 == 0 goto .L106
	r0 = r1
	exit
.L106:
	r0 = 0
	exit
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L149
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
.L149:
	if r3 == 0 goto .L150
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L150
	r3 += -1
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 != r9 goto .L150
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
.L150:
	if r3 == 0 goto .L153
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L153:
	r0 = 0
	exit
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
	if r3 == 0 goto .L196
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
	.size	memcpy, .-memcpy
	.align	3
	.global	memrchr
	.type	memrchr, @function
memrchr:
	r2 &= 0xff
	r0 = r3
	r0 += -1
	r3 &= 7
	if r3 == 0 goto .L221
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
.L262:
	r1 = 0
.L222:
	r0 = r1
	exit
.L263:
	r0 += -1
.L221:
	if r0 == -1 goto .L262
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r5+0)
	r3 = r0
	r3 += -1
	if r2 == r4 goto .L261
	r0 = r3
	r9 = r1
	r9 += r3
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
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 != r5 goto .L263
.L261:
	r1 += r0
	goto .L222
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r0 = r1
	r1 += r3
	r3 = r0
	r2 &= 0xff
	r4 = r1
	r4 -= r0
	r4 &= 7
	if r4 == 0 goto .L265
	*(u8 *) (r0+0) = r2
	r3 += 1
	if r4 == 1 goto .L265
	if r4 == 2 goto .L278
	if r4 == 3 goto .L276
	if r4 == 4 goto .L274
	if r4 == 5 goto .L272
	if r4 == 6 goto .L270
	*(u8 *) (r3+0) = r2
	r3 += 1
.L270:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L272:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L274:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L276:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L278:
	*(u8 *) (r3+0) = r2
	r3 += 1
	goto .L265
.L266:
	*(u8 *) (r3+0) = r2
	r3 += 1
	*(u8 *) (r3+0) = r2
	*(u8 *) (r3+1) = r2
	*(u8 *) (r3+2) = r2
	*(u8 *) (r3+3) = r2
	*(u8 *) (r3+4) = r2
	*(u8 *) (r3+5) = r2
	*(u8 *) (r3+6) = r2
	r3 += 7
.L265:
	if r3 != r1 goto .L266
	exit
	.size	memset, .-memset
	.align	3
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	r0 = r1
.L290:
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L299
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L300
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L299
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L299
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L299
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L299
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L299
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L299
	r2 += 7
	r0 += 1
	goto .L290
.L300:
	exit
.L299:
	exit
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	r0 = r1
	r2 &= 0xff
	goto .L302
.L304:
	r0 += 1
.L302:
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L303
	if r2 != r1 goto .L304
.L303:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r2 s>>= 32
.L307:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r2 == r3 goto .L308
	r1 += 1
	r0 = *(u8 *) (r1+-1)
	if r0 != 0 goto .L307
	exit
.L308:
	r0 = r1
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L311
.L313:
	r1 += 1
	r2 += 1
.L311:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	if r3 != r0 goto .L312
	r4 = *(u8 *) (r1+0)
	if r4 != 0 goto .L313
.L312:
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
.L315:
	r2 = *(u8 *) (r0+0)
	if r2 == 0 goto .L324
	r0 += 1
	r4 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L324
	r0 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L324
	r0 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L324
	r0 += 1
	r2 = *(u8 *) (r4+3)
	if r2 == 0 goto .L324
	r0 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L324
	r0 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L324
	r0 += 1
	r4 = *(u8 *) (r4+6)
	if r4 == 0 goto .L324
	r0 += 1
	goto .L315
.L324:
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L330
	r3 += -1
	r4 = r1
	r4 += r3
	r0 = r4
	r0 -= r1
	r0 &= 7
	if r0 == 0 goto .L327
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L328
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L328
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L328
	r1 += 1
	r2 += 1
	if r0 == 1 goto .L327
	if r0 == 2 goto .L366
	if r0 == 3 goto .L367
	if r0 == 4 goto .L368
	if r0 == 5 goto .L369
	if r0 == 6 goto .L370
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L328
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L328
	r3 = *(u8 *) (r1+0)
	if r3 != r9 goto .L328
	r1 += 1
	r2 += 1
.L370:
	r5 = *(u8 *) (r1+0)
	if r5 == 0 goto .L328
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r0 goto .L328
	r1 += 1
	r2 += 1
.L369:
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r0 = *(u8 *) (r1+0)
	if r0 != r5 goto .L328
	r1 += 1
	r2 += 1
.L368:
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r3 = *(u8 *) (r1+0)
	if r3 != r5 goto .L328
	r1 += 1
	r2 += 1
.L367:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L328
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L328
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L328
	r1 += 1
	r2 += 1
.L366:
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L328
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r0 goto .L328
	r1 += 1
	r2 += 1
.L327:
	r5 = *(u8 *) (r1+0)
	if r5 == 0 goto .L328
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L328
	if r1 == r4 goto .L328
	r3 = *(u8 *) (r1+0)
	if r3 != r0 goto .L328
	r0 = r1
	r0 += 1
	r1 = r0
	r2 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r9 = *(u8 *) (r0+0)
	if r9 != r5 goto .L328
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+1)
	if r3 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L328
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+2)
	if r3 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L328
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+3)
	if r3 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L328
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+4)
	if r3 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L328
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+5)
	if r3 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L328
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+6)
	if r3 == 0 goto .L328
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L328
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L328
	r0 += 7
	r1 = r0
	r2 += 1
	goto .L327
.L328:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L330:
	r0 = 0
	exit
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
	r1 += r3
	r3 = r1
	r3 -= r0
	r3 >>= 1
	r3 &= 3
	if r3 == 0 goto .L374
	r9 = r1
	r9 -= r0
	if r9 s<= 1 goto .L387
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	if r3 == 1 goto .L374
	if r3 == 2 goto .L385
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
.L385:
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	goto .L374
.L375:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
	r9 = *(u8 *) (r5+2)
	*(u8 *) (r2+2) = r9
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r3
	r9 = *(u8 *) (r5+4)
	*(u8 *) (r2+4) = r9
	r3 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r3
	r2 += 6
	r0 += 6
	r5 += 6
	r4 += 6
.L374:
	r3 = r1
	r3 -= r0
	if r3 s> 1 goto .L375
.L387:
	exit
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
	if r2 <= 24 goto .L389
	r0 = 0
.L389:
	r0 &= 1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 126 goto .L391
	r0 = 0
.L391:
	r0 &= 1
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L394
	if r1 == 9 goto .L396
	r0 = 0
	exit
.L396:
	r0 = 1
	exit
.L394:
	r0 = 1
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
	if r1 <= 30 goto .L399
	if r0 == 127 goto .L401
	r0 = 0
	exit
.L401:
	r0 = 1
	exit
.L399:
	r0 = 1
	exit
	.size	iscntrl, .-iscntrl
	.align	3
	.global	isdigit
	.type	isdigit, @function
isdigit:
	r1 += -48
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 8 goto .L403
	r0 = 0
.L403:
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
	if r1 <= 92 goto .L405
	r0 = 0
.L405:
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
	if r1 <= 24 goto .L407
	r0 = 0
.L407:
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
	if r1 <= 93 goto .L409
	r0 = 0
.L409:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L412
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L413
	r0 = 1
	exit
.L412:
	r0 = 1
	exit
.L413:
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
	if r1 <= 24 goto .L415
	r0 = 0
.L415:
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
	if r1 <= 30 goto .L418
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L419
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L420
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	if r5 > 2 goto .L421
	r0 = 1
	exit
.L418:
	r0 = 1
	exit
.L419:
	r0 = 1
	exit
.L420:
	r0 = 1
	exit
.L421:
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
	if r1 <= 8 goto .L423
	r0 = 0
.L423:
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
	if r1 <= 254 goto .L433
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 8230 goto .L428
	r2 = r0
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L429
	r4 = r0
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L430
	r9 = r0
	r9 += -65532
	r1 = r9;r1 &= 0xffffffff
	if r1 > 1048579 goto .L431
	r0 &= 65534
	if r0 == 65534 goto .L432
	r0 = 1
	exit
.L433:
	r0 += 1
	r0 &= 127
	r2 = 1
	if r0 s> 32 goto .L426
	r2 = 0
.L426:
	r0 = r2
	r0 &= 1
	exit
.L428:
	r0 = 1
	exit
.L429:
	r0 = 1
	exit
.L430:
	r0 = 1
	exit
.L431:
	r0 = 0
	exit
.L432:
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
	if r2 <= 8 goto .L436
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 5 goto .L437
	r0 = 1
	exit
.L436:
	r0 = 1
	exit
.L437:
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
	if r0 != 0 goto .L442
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L443
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L446
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L442:
	r0 = r6
	exit
.L443:
	r0 = r7
	exit
.L446:
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
	if r0 != 0 goto .L450
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L451
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L454
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L450:
	r0 = r6
	exit
.L451:
	r0 = r7
	exit
.L454:
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
	if r0 != 0 goto .L459
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L460
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L457
	if r6 s>= 0 goto .L461
	r0 = r7
	exit
.L457:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L464
	r0 = r7
	exit
.L459:
	r0 = r7
	exit
.L460:
	r0 = r6
	exit
.L461:
	r0 = r6
	exit
.L464:
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
	if r0 != 0 goto .L469
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L470
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L467
	r2 = r6
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L471
	r0 = r7
	exit
.L467:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s> 0 goto .L474
	r0 = r7
	exit
.L469:
	r0 = r7
	exit
.L470:
	r0 = r6
	exit
.L471:
	r0 = r6
	exit
.L474:
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
	if r0 != 0 goto .L479
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L480
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L477
	if r6 s>= 0 goto .L481
	r0 = r7
	exit
.L477:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L484
	r0 = r7
	exit
.L479:
	r0 = r7
	exit
.L480:
	r0 = r6
	exit
.L481:
	r0 = r6
	exit
.L484:
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
	if r0 != 0 goto .L489
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L490
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L487
	if r7 s>= 0 goto .L491
	r0 = r7
	exit
.L487:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L494
	r0 = r7
	exit
.L489:
	r0 = r6
	exit
.L490:
	r0 = r7
	exit
.L491:
	r0 = r6
	exit
.L494:
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
	if r0 != 0 goto .L499
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L500
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L497
	r2 = r7
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L501
	r0 = r7
	exit
.L497:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s> 0 goto .L504
	r0 = r7
	exit
.L499:
	r0 = r6
	exit
.L500:
	r0 = r7
	exit
.L501:
	r0 = r6
	exit
.L504:
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
	if r0 != 0 goto .L509
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L510
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L507
	if r7 s>= 0 goto .L511
	r0 = r7
	exit
.L507:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L514
	r0 = r7
	exit
.L509:
	r0 = r6
	exit
.L510:
	r0 = r7
	exit
.L511:
	r0 = r6
	exit
.L514:
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
	r3 = digits ll
	if r1 == 0 goto .L525
	r4 = r1
	r4 &= 63
	r2 = r3
	r2 += r4
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r9 = r0
	r1 >>= 6
	if r1 == 0 goto .L525
	r4 = r1
	r4 &= 63
	r0 = r3
	r0 += r4
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r2
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L525
	r5 = r1
	r5 &= 63
	r9 = r3
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L525
	r2 = r1
	r2 &= 63
	r5 = r3
	r5 += r2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L525
	r2 = r1
	r2 &= 63
	r4 = r3
	r4 += r2
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L525
	r3 += r1
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L525:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
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
	if r2 == 0 goto .L531
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L528
	*(u64 *) (r2+8) = r1
.L528:
	exit
.L531:
	r3 = 0
	*(u64 *) (r1+8) = r3
	*(u64 *) (r1+0) = r3
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L533
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L533:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L532
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L532:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L537
.L536:
	r0 <<= 32
	r0 s>>= 32
	exit
.L537:
	r1 = -r1
	r0 = r1
	goto .L536
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r6 = r1
.L539:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L557
	r6 += 1
	goto .L539
.L557:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L546
	if r0 != 45 goto .L547
	r4 = 1
.L541:
	r6 += 1
.L542:
	r1 = r6
	r0 = 0
	r3 = 9
.L543:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r3 <= r5 goto .L558
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r1 += 1
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r9 = r5;r9 &= 0xffffffff
	if r3 <= r9 goto .L558
	r2 = r0
	r2 <<= 2
	r0 += r2
	r0 <<= 33
	r0 s>>= 32
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r0 <<= 32
	r0 s>>= 32
	r1 += 1
	goto .L543
.L546:
	r4 = 0
	goto .L541
.L547:
	r4 = 0
	goto .L542
.L558:
	if r4 != 0 goto .L545
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L545:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r6 = r1
.L560:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L580
	r6 += 1
	goto .L560
.L580:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L567
	if r0 != 45 goto .L568
	r4 = 1
.L562:
	r6 += 1
.L563:
	r0 = 0
	r3 = 9
.L564:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r3 <= r1 goto .L581
	r0 *= 10
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L581
	r0 *= 10
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 = r6
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L581
	r0 *= 10
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L581
	r0 *= 10
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 3
	goto .L564
.L567:
	r4 = 0
	goto .L562
.L568:
	r4 = 0
	goto .L563
.L581:
	if r4 != 0 goto .L566
	r0 = -r0
.L566:
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r6 = r1
.L583:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L603
	r6 += 1
	goto .L583
.L603:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L590
	if r0 != 45 goto .L591
	r4 = 1
.L585:
	r6 += 1
.L586:
	r0 = 0
	r3 = 9
.L587:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r3 <= r1 goto .L604
	r0 *= 10
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L604
	r0 *= 10
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 = r6
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L604
	r0 *= 10
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L604
	r0 *= 10
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 3
	goto .L587
.L590:
	r4 = 0
	goto .L585
.L591:
	r4 = 0
	goto .L586
.L604:
	if r4 != 0 goto .L589
	r0 = -r0
.L589:
	exit
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
	if r1 s< 0 goto .L608
.L607:
	exit
.L608:
	r0 = -r0
	goto .L607
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
	if r1 s< 0 goto .L612
.L611:
	exit
.L612:
	r0 = -r0
	goto .L611
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
	if r1 s< 0 goto .L616
.L615:
	exit
.L616:
	r0 = -r0
	goto .L615
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
	goto .L619
.L621:
	r1 += 4
.L619:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L620
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r2 != r3 goto .L621
.L620:
	r2 = *(u32 *) (r1+0)
	if r2 == 0 goto .L623
	r0 = r1
	exit
.L623:
	r0 = 0
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L625
.L627:
	r1 += 4
	r2 += 4
.L625:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r0 goto .L626
	r4 = *(u32 *) (r1+0)
	if r4 == 0 goto .L626
	r5 = *(u32 *) (r2+0)
	if r5 != 0 goto .L627
.L626:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 s>= r9 goto .L630
	r3 = r0
	r0 = 1
	if r3 s< r9 goto .L629
	r0 = 0
.L629:
	r0 &= 1
	exit
.L630:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L632:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L648
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L648
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L648
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L648
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L648
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L648
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L648
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L632
.L648:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = r1
.L650:
	r2 = *(u32 *) (r0+0)
	if r2 == 0 goto .L659
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L659
	r0 += 4
	r5 = *(u32 *) (r4+4)
	if r5 == 0 goto .L659
	r0 += 4
	r9 = *(u32 *) (r4+8)
	if r9 == 0 goto .L659
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L659
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L659
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L659
	r0 += 4
	r4 = *(u32 *) (r4+24)
	if r4 == 0 goto .L659
	r0 += 4
	goto .L650
.L659:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	r5 = r3
	r5 &= 3
	if r5 == 0 goto .L661
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r0 goto .L662
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L662
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L662
	r3 += -1
	r1 += 4
	r2 += 4
	if r5 == 1 goto .L661
	if r5 == 2 goto .L683
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L662
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L662
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L662
	r3 += -1
	r1 += 4
	r2 += 4
.L683:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L662
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L662
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L662
	r3 += -1
	r1 += 4
	r2 += 4
.L661:
	if r3 == 0 goto .L662
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L662
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L662
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L662
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r2 += 4
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r9 goto .L662
	r6 = *(u32 *) (r0+0)
	if r6 == 0 goto .L662
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L662
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L662
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L662
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L662
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L662
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L662
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L662
	r3 += -1
	r0 += 12
	r1 = r0
	r2 += 4
	goto .L661
.L662:
	if r3 == 0 goto .L666
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L667
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L665
	r0 = 0
.L665:
	r0 &= 1
	exit
.L666:
	r0 = 0
	exit
.L667:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L687
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L688
	r3 += -1
	r1 += 4
	if r4 == 1 goto .L687
	if r4 == 2 goto .L727
	if r4 == 3 goto .L728
	if r4 == 4 goto .L729
	if r4 == 5 goto .L730
	if r4 == 6 goto .L731
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L688
	r3 += -1
	r1 += 4
.L731:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L688
	r3 += -1
	r1 += 4
.L730:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L688
	r3 += -1
	r1 += 4
.L729:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L688
	r3 += -1
	r1 += 4
.L728:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L688
	r3 += -1
	r1 += 4
.L727:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L688
	r3 += -1
	r1 += 4
.L687:
	if r3 == 0 goto .L688
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L688
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r5 = *(u32 *) (r0+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L688
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L688
	r3 += -1
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L688
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L688
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L688
	r3 += -1
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L688
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L688
	r3 += -1
	r0 += 28
	r1 = r0
	goto .L687
.L688:
	if r3 == 0 goto .L691
	r0 = r1
	exit
.L691:
	r0 = 0
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L734
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 == 1 goto .L734
	if r0 == 2 goto .L776
	if r0 == 3 goto .L777
	if r0 == 4 goto .L778
	if r0 == 5 goto .L779
	if r0 == 6 goto .L780
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
.L780:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
.L779:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
.L778:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
.L777:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
.L776:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
.L734:
	if r3 == 0 goto .L735
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L735
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r6 = *(u32 *) (r0+0)
	r6 <<= 32
	if r6 != r9 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L735
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L735
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	goto .L734
.L735:
	if r3 == 0 goto .L739
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L740
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L738
	r0 = 0
.L738:
	r0 &= 1
	exit
.L739:
	r0 = 0
	exit
.L740:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L783
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r2 += 4
	if r4 == 1 goto .L783
	if r4 == 2 goto .L806
	if r4 == 3 goto .L807
	if r4 == 4 goto .L808
	if r4 == 5 goto .L809
	if r4 == 6 goto .L810
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L810:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L809:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
.L808:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L807:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L806:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	goto .L783
.L784:
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
.L783:
	r9 = r3
	r9 += -1
	if r3 != 0 goto .L784
	r0 = r1
	exit
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	r0 = r1
	if r1 == r2 goto .L813
	r4 = r3
	r4 <<= 2
	r1 -= r2
	if r4 >= r1 goto .L814
	r1 = r0
	r9 = r3
	r9 &= 7
	if r9 == 0 goto .L815
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r1 += 4
	r2 += 4
	if r9 == 1 goto .L815
	if r9 == 2 goto .L866
	if r9 == 3 goto .L867
	if r9 == 4 goto .L868
	if r9 == 5 goto .L869
	if r9 == 6 goto .L870
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r4
	r1 += 4
	r2 += 4
.L870:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r1 += 4
	r2 += 4
.L869:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r1 += 4
	r2 += 4
.L868:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r4
	r1 += 4
	r2 += 4
.L867:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r1 += 4
	r2 += 4
.L866:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r1 += 4
	r2 += 4
	goto .L815
.L814:
	r1 = r3
	r1 <<= 2
	r3 &= 7
	if r3 == 0 goto .L816
	r1 += -4
	r9 = r2
	r9 += r1
	r4 = r0
	r4 += r1
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	if r3 == 1 goto .L816
	if r3 == 2 goto .L861
	if r3 == 3 goto .L862
	if r3 == 4 goto .L863
	if r3 == 5 goto .L864
	if r3 == 6 goto .L865
	r1 += -4
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L865:
	r1 += -4
	r5 = r2
	r5 += r1
	r9 = r0
	r9 += r1
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
.L864:
	r1 += -4
	r4 = r2
	r4 += r1
	r5 = r0
	r5 += r1
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
.L863:
	r1 += -4
	r4 = r2
	r4 += r1
	r3 = r0
	r3 += r1
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r3+0) = r5
.L862:
	r1 += -4
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L861:
	r1 += -4
	r5 = r2
	r5 += r1
	r9 = r0
	r9 += r1
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
	goto .L816
.L817:
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
.L816:
	r9 = r1
	r9 += -4
	if r1 != 0 goto .L817
	exit
.L818:
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
.L815:
	r4 = r3
	r4 += -1
	if r3 != 0 goto .L818
.L813:
	exit
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
	if r4 == 0 goto .L874
	r3 += -1
	*(u32 *) (r1+0) = r2
	r0 += 4
	if r4 == 1 goto .L874
	if r4 == 2 goto .L897
	if r4 == 3 goto .L898
	if r4 == 4 goto .L899
	if r4 == 5 goto .L900
	if r4 == 6 goto .L901
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L901:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L900:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L899:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L898:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L897:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
	goto .L874
.L875:
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
.L874:
	r5 = r3
	r5 += -1
	if r3 != 0 goto .L875
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L904
	r0 = r1
	r0 += r3
	r2 += r3
	r3 = r0
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L905
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r3 == 1 goto .L905
	if r3 == 2 goto .L921
	if r3 == 3 goto .L919
	if r3 == 4 goto .L917
	if r3 == 5 goto .L915
	if r3 == 6 goto .L913
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L913:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L915:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L917:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L919:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L921:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	goto .L905
.L906:
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
.L905:
	if r0 != r1 goto .L906
	exit
.L904:
	if r1 == r2 goto .L903
	r0 = r2
	r2 += r3
	r3 = r2
	r3 -= r0
	r3 &= 7
	if r3 == 0 goto .L908
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
	if r3 == 1 goto .L908
	if r3 == 2 goto .L942
	if r3 == 3 goto .L940
	if r3 == 4 goto .L938
	if r3 == 5 goto .L936
	if r3 == 6 goto .L934
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L934:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
.L936:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r3
	r1 += 1
	r0 += 1
.L938:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
.L940:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L942:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
	goto .L908
.L909:
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
.L908:
	if r0 != r2 goto .L909
.L903:
	exit
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
	r0 = 0
	r1 = r1;r1 &= 0xffffffff
.L968:
	if r0 == 32 goto .L972
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L973
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	goto .L968
.L973:
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	exit
.L972:
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
	if r1 == 0 goto .L978
	r0 = 1
.L976:
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L987
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L988
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L975
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L975
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L975
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L975
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L975
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L975
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	goto .L976
.L988:
	exit
.L987:
	exit
.L978:
	r0 = 0
.L975:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L992
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L995
	r0 = 1
	exit
.L992:
	r0 = 1
	exit
.L995:
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
	if r0 s<= 0 goto .L999
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1002
	r0 = 1
	exit
.L999:
	r0 = 1
	exit
.L1002:
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
	if r0 s<= 0 goto .L1006
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1009
	r0 = 1
	exit
.L1006:
	r0 = 1
	exit
.L1009:
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
	if r0 != 0 goto .L1012
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r0
	r1 = r8
	call	__nesf2
	if r0 == 0 goto .L1012
	if r6 s< 0 goto .L1019
	r7 = 0x40000000 ll
	goto .L1016
.L1019:
	r7 = 0x3f000000 ll
	goto .L1016
.L1015:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1012
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1016:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1015
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1015
.L1012:
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
	if r0 != 0 goto .L1021
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1021
	if r6 s< 0 goto .L1028
	r7 = 0x4000000000000000 ll
	goto .L1025
.L1028:
	r7 = 0x3fe0000000000000 ll
	goto .L1025
.L1024:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1021
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1025:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1024
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1024
.L1021:
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
	if r0 != 0 goto .L1030
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1030
	if r6 s< 0 goto .L1037
	r7 = 0x4000000000000000 ll
	goto .L1034
.L1037:
	r7 = 0x3fe0000000000000 ll
	goto .L1034
.L1033:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1030
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1034:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1033
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1033
.L1030:
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
	if r3 == 0 goto .L1039
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r1+0)
	r5 ^= r9
	*(u8 *) (r1+0) = r5
	r2 += 1
	r0 += 1
	if r3 == 1 goto .L1039
	if r3 == 2 goto .L1044
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L1044:
	r5 = *(u8 *) (r2+0)
	r9 = *(u8 *) (r0+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	goto .L1039
.L1040:
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
.L1039:
	if r0 != r4 goto .L1040
	r0 = r1
	exit
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
	if r2 == 0 goto .L1052
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r7 += -1
	if r2 == 1 goto .L1052
	if r2 == 2 goto .L1091
	if r2 == 3 goto .L1092
	if r2 == 4 goto .L1093
	if r2 == 5 goto .L1094
	if r2 == 6 goto .L1095
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r7 += -1
.L1095:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r7 += -1
.L1094:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r7 += -1
.L1093:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r7 += -1
.L1092:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r7 += -1
.L1091:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r7 += -1
.L1052:
	if r7 == 0 goto .L1053
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1053
	r6 += 1
	r0 += 1
	r9 = r7
	r9 += -1
	r7 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1053
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1053
	r0 += 1
	r7 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1053
	r0 += 1
	r7 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1053
	r0 += 1
	r7 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1053
	r0 += 1
	r7 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1053
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1053
	r6 += 7
	r0 += 1
	r9 += -7
	r7 = r9
	goto .L1052
.L1053:
	if r7 != 0 goto .L1055
	*(u8 *) (r0+0) = 0
.L1055:
	r0 = r8
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r0 = 0
	r3 = r2
	r3 &= 7
	if r3 == r0 goto .L1098
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 != 0 goto .L1142
.L1099:
	exit
.L1142:
	r0 += 1
	if r3 == 1 goto .L1098
	if r3 == 2 goto .L1136
	if r3 == 3 goto .L1137
	if r3 == 4 goto .L1138
	if r3 == 5 goto .L1139
	if r3 == 6 goto .L1140
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1099
	r0 += 1
.L1140:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1099
	r0 += 1
.L1139:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1099
	r0 += 1
.L1138:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1099
	r0 += 1
.L1137:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1099
	r0 += 1
.L1136:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1099
	r0 += 1
.L1098:
	if r0 == r2 goto .L1099
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1099
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1099
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1099
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1099
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1099
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1099
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1099
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1099
	r0 += 1
	goto .L1098
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1144:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1149
	r3 = r2
.L1147:
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1150
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r3 += 1
	if r5 != r9 goto .L1147
	r0 = r1
	exit
.L1150:
	r1 += 1
	goto .L1144
.L1149:
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
	goto .L1153
.L1152:
	r1 += 1
	r4 = *(u8 *) (r1+-1)
	if r4 == 0 goto .L1156
.L1153:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1152
	r3 = r1
	goto .L1152
.L1156:
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
	if r0 == 0 goto .L1161
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
	r1 = r6
.L1159:
	r2 = *(u32 *) (r10+-8)
	call	strchr
	r6 = r0
	if r0 == 0 goto .L1163
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1162
	r1 = r6
	r1 += 1
	goto .L1159
.L1163:
	r0 = 0
	exit
.L1161:
	r0 = r6
	exit
.L1162:
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
	if r0 s<= 0 goto .L1177
.L1165:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1175
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1167
	r0 = r6
	exit
.L1177:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1165
.L1167:
	r1 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r1
	exit
.L1175:
	r0 = r6
	exit
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r6 = r1
	r7 = r3
	r0 = r2
	r0 -= r4
	r1 += r0
	*(u64 *) (r10+-8) = r1
	if r4 == 0 goto .L1184
	r3 = 1
	if r4 >= r2 goto .L1180
	r3 = 0
.L1180:
	r3 &= 0xff
	if r3 != 0 goto .L1185
	r4 += -1
	*(u64 *) (r10+-16) = r4
	r2 = r7
	r2 += 1
	*(u64 *) (r10+-24) = r2
	r8 = *(u64 *) (r10+-8)
	r8 -= r6
	r8 &= 3
	if r8 == 0 goto .L1181
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1204
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 == r5 goto .L1205
.L1188:
	r6 += 1
	if r8 == 1 goto .L1181
	if r8 == 2 goto .L1192
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 == r0 goto .L1206
.L1190:
	r6 += 1
.L1192:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r2 = *(u8 *) (r7+0)
	r2 <<= 56
	if r2 == r3 goto .L1207
.L1193:
	r6 += 1
	goto .L1181
.L1208:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1182
.L1186:
	r0 = r6
	exit
.L1204:
	r0 = 0
	exit
.L1184:
	r0 = r6
	exit
.L1185:
	r0 = 0
	exit
.L1205:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1188
	goto .L1186
.L1206:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1190
	goto .L1186
.L1207:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1193
	goto .L1186
.L1209:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1197
	goto .L1186
.L1210:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1199
	goto .L1186
.L1201:
	r6 = r8
	r6 += 3
.L1181:
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1204
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 == r5 goto .L1208
.L1182:
	r6 += 1
	r8 = r6
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 == r0 goto .L1209
.L1197:
	r6 = r8
	r6 += 1
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r2 = *(u8 *) (r7+0)
	r2 <<= 56
	if r2 == r3 goto .L1210
.L1199:
	r6 = r8
	r6 += 2
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r5 = *(u8 *) (r7+0)
	r5 <<= 56
	if r5 != r4 goto .L1201
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1201
	goto .L1186
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1237
	*(u64 *) (r10+-8) = 0
.L1212:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1238
	r7 = 0
	r8 = 0x3ff0000000000000 ll
.L1214:
	r2 = r8
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1217
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = r8
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1217
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = r8
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1217
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = r8
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1217
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	goto .L1214
.L1237:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1212
.L1238:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1236
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1225
	r7 = 0
	goto .L1217
.L1225:
	r7 = 0
	r8 = r7
	goto .L1219
.L1236:
	r7 = 0
.L1217:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r7
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1221
	r3 = -9223372036854775808 ll
	r3 ^= r6
	r6 = r3
.L1221:
	r0 = r6
	exit
.L1239:
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
.L1219:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r8 s< r0 goto .L1217
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
	if r8 s< r0 goto .L1217
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
	if r8 s< r0 goto .L1217
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
	if r8 s>= r0 goto .L1239
	goto .L1217
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = 0
	goto .L1241
.L1242:
	r2 += r2
	r1 >>= 1
.L1241:
	if r1 == 0 goto .L1244
	r0 = r1
	r0 &= 1
	if r0 == 0 goto .L1242
	r3 += r2
	goto .L1242
.L1244:
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
	goto .L1246
.L1253:
	r0 = 0
	goto .L1249
.L1254:
	r0 = 0
	goto .L1249
.L1250:
	r4 >>= 1
	r2 >>= 1
.L1249:
	if r4 == 0 goto .L1272
	if r2 >= r1 goto .L1250
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1250
.L1272:
	if r3 != 0 goto .L1273
.L1252:
	exit
.L1273:
	r0 = r1
	goto .L1252
.L1274:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
.L1246:
	if r2 >= r1 goto .L1253
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1254
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1271
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1253
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1271
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1253
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1271
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1253
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1271
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1253
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1271
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1253
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1271
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1253
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1271
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1253
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1274
.L1271:
	r0 = 0
	goto .L1249
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r0 = r1
	r0 s>>= 56
	if r1 s< 0 goto .L1279
.L1276:
	if r0 == 0 goto .L1278
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
.L1279:
	r0 ^= -1
	goto .L1276
.L1278:
	r0 = 7
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	if r1 s< 0 goto .L1284
.L1281:
	if r1 == 0 goto .L1283
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1284:
	r1 ^= -1
	goto .L1281
.L1283:
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
	goto .L1286
.L1287:
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
.L1286:
	if r1 == 0 goto .L1289
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1287
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	goto .L1287
.L1289:
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
	if r1 >= r2 goto .L1291
.L1293:
	r4 = r2
	r5 = r1
	r6 <<= 3
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 3
	r9 &= 7
	if r9 == 0 goto .L1292
	r7 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r7
	r4 += 8
	r5 += 8
	if r9 == 1 goto .L1292
	if r9 == 2 goto .L1332
	if r9 == 3 goto .L1330
	if r9 == 4 goto .L1328
	if r9 == 5 goto .L1326
	if r9 == 6 goto .L1324
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1324:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1326:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1328:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1330:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1332:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
	goto .L1292
.L1291:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1293
	r0 = 4294967295 ll
	r9 = r0
	r9 -= r3
	r9 ^= -1
	r9 &= 7
	if r9 == 0 goto .L1294
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r6 = r2
	r6 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r6
	if r9 == 1 goto .L1294
	if r9 == 2 goto .L1368
	if r9 == 3 goto .L1369
	if r9 == 4 goto .L1370
	if r9 == 5 goto .L1371
	if r9 == 6 goto .L1372
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1372:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1371:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1370:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1369:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1368:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1294:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	if r3 == r0 goto .L1290
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	goto .L1294
.L1295:
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
.L1292:
	if r4 != r6 goto .L1295
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L1296
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1290
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1296
	if r4 == 2 goto .L1363
	if r4 == 3 goto .L1364
	if r4 == 4 goto .L1365
	if r4 == 5 goto .L1366
	if r4 == 6 goto .L1367
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1367:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1366:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1365:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1364:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1363:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1296
.L1297:
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
.L1296:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1297
	exit
.L1290:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1377
.L1379:
	r0 = r2
	r4 = r1
	r9 += r9
	r9 += r2
	r5 = r9
	r5 -= r2
	r5 >>= 1
	r5 &= 7
	if r5 == 0 goto .L1378
	r6 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r6
	r0 += 2
	r4 += 2
	if r5 == 1 goto .L1378
	if r5 == 2 goto .L1395
	if r5 == 3 goto .L1393
	if r5 == 4 goto .L1391
	if r5 == 5 goto .L1389
	if r5 == 6 goto .L1387
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1387:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1389:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1391:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1393:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1395:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	goto .L1378
.L1377:
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1379
	r0 = 4294967295 ll
	r4 = r0
	r4 -= r3
	r4 ^= -1
	r4 &= 7
	if r4 == 0 goto .L1380
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r6
	if r4 == 1 goto .L1380
	if r4 == 2 goto .L1426
	if r4 == 3 goto .L1427
	if r4 == 4 goto .L1428
	if r4 == 5 goto .L1429
	if r4 == 6 goto .L1430
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1430:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1429:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1428:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1427:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1426:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1380:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	if r3 == r0 goto .L1376
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	goto .L1380
.L1381:
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
.L1378:
	if r0 != r9 goto .L1381
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1376
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1376:
	exit
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
	if r1 >= r2 goto .L1434
.L1436:
	r4 = r2
	r5 = r1
	r6 <<= 2
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 2
	r9 &= 7
	if r9 == 0 goto .L1435
	r7 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r7
	r4 += 4
	r5 += 4
	if r9 == 1 goto .L1435
	if r9 == 2 goto .L1475
	if r9 == 3 goto .L1473
	if r9 == 4 goto .L1471
	if r9 == 5 goto .L1469
	if r9 == 6 goto .L1467
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1467:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1469:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1471:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1473:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1475:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
	goto .L1435
.L1434:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1436
	r0 = 4294967295 ll
	r9 = r0
	r9 -= r3
	r9 ^= -1
	r9 &= 7
	if r9 == 0 goto .L1437
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r6 = r2
	r6 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r6
	if r9 == 1 goto .L1437
	if r9 == 2 goto .L1511
	if r9 == 3 goto .L1512
	if r9 == 4 goto .L1513
	if r9 == 5 goto .L1514
	if r9 == 6 goto .L1515
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1515:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1514:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1513:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1512:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1511:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1437:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	if r3 == r0 goto .L1433
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	goto .L1437
.L1438:
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
.L1435:
	if r4 != r6 goto .L1438
	r4 = r3
	r4 -= r0
	r4 &= 7
	if r4 == 0 goto .L1439
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1433
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1439
	if r4 == 2 goto .L1506
	if r4 == 3 goto .L1507
	if r4 == 4 goto .L1508
	if r4 == 5 goto .L1509
	if r4 == 6 goto .L1510
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1510:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1509:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1508:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1507:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1506:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1439
.L1440:
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
.L1439:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1440
	exit
.L1433:
	exit
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
	if r0 != 0 goto .L1527
	r2 = r1
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1528
	r0 = 2
	r3 = r1
	r3 >>= 13
	r3 &= 1
	if r3 != 0 goto .L1526
	r0 = 3
	r4 = r1
	r4 >>= 12
	r4 &= 1
	if r4 != 0 goto .L1526
	r0 = 4
	r5 = r1
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1526
	r0 = 5
	r9 = r1
	r9 >>= 10
	r9 &= 1
	if r9 != 0 goto .L1526
	r0 = 6
	r2 = r1
	r2 >>= 9
	r2 &= 1
	if r2 != 0 goto .L1526
	r0 = 7
	r3 = r1
	r3 >>= 8
	r3 &= 1
	if r3 != 0 goto .L1526
	r0 = 8
	r4 = r1
	r4 >>= 7
	r4 &= 1
	if r4 != 0 goto .L1526
	r0 = 9
	r5 = r1
	r5 >>= 6
	r5 &= 1
	if r5 != 0 goto .L1526
	r0 = 10
	r9 = r1
	r9 >>= 5
	r9 &= 1
	if r9 != 0 goto .L1526
	r0 = 11
	r2 = r1
	r2 >>= 4
	r2 &= 1
	if r2 != 0 goto .L1526
	r0 = 12
	r3 = r1
	r3 >>= 3
	r3 &= 1
	if r3 != 0 goto .L1526
	r0 = 13
	r4 = r1
	r4 >>= 2
	r4 &= 1
	if r4 != 0 goto .L1526
	r0 = 14
	r5 = r1
	r5 >>= 1
	r5 &= 1
	if r5 != 0 goto .L1526
	r0 = 15
	r1 &= 1
	if r1 != 0 goto .L1526
	r0 = 16
	exit
.L1527:
	r0 = 0
	exit
.L1528:
	r0 = 1
.L1526:
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1531
	r0 = r2
	r0 >>= 1
	r0 &= 1
	if r0 != 0 goto .L1532
	r0 = 2
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1530
	r0 = 3
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1530
	r0 = 4
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1530
	r0 = 5
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1530
	r0 = 6
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1530
	r0 = 7
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1530
	r0 = 8
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1530
	r0 = 9
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1530
	r0 = 10
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1530
	r0 = 11
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1530
	r0 = 12
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1530
	r0 = 13
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1530
	r0 = 14
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1530
	r0 = 15
	r2 >>= r0
	if r2 != 0 goto .L1530
	r0 = 16
	exit
.L1531:
	r0 = 0
	exit
.L1532:
	r0 = 1
.L1530:
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L1539
	r1 = r6
	call	__fixsfdi
	exit
.L1539:
	r2 = 0x47000000 ll
	r1 = r6
	call	__subsf3
	r1 = r0
	call	__fixsfdi
	r0 += 32768
	exit
	.size	__fixunssfsi, .-__fixunssfsi
	.align	3
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1557
	r0 = 0
.L1541:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1542
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1542:
	r3 = r2
	r3 >>= 2
	r3 &= 1
	if r3 == 0 goto .L1543
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1543:
	r4 = r2
	r4 >>= 3
	r4 &= 1
	if r4 == 0 goto .L1544
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1544:
	r5 = r2
	r5 >>= 4
	r5 &= 1
	if r5 == 0 goto .L1545
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1545:
	r9 = r2
	r9 >>= 5
	r9 &= 1
	if r9 == 0 goto .L1546
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1546:
	r1 = r2
	r1 >>= 6
	r1 &= 1
	if r1 == 0 goto .L1547
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1547:
	r3 = r2
	r3 >>= 7
	r3 &= 1
	if r3 == 0 goto .L1548
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1548:
	r4 = r2
	r4 >>= 8
	r4 &= 1
	if r4 == 0 goto .L1549
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1549:
	r5 = r2
	r5 >>= 9
	r5 &= 1
	if r5 == 0 goto .L1550
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1550:
	r9 = r2
	r9 >>= 10
	r9 &= 1
	if r9 == 0 goto .L1551
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1551:
	r1 = r2
	r1 >>= 11
	r1 &= 1
	if r1 == 0 goto .L1552
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1552:
	r3 = r2
	r3 >>= 12
	r3 &= 1
	if r3 == 0 goto .L1553
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1553:
	r4 = r2
	r4 >>= 13
	r4 &= 1
	if r4 == 0 goto .L1554
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1554:
	r5 = r2
	r5 >>= 14
	r5 &= 1
	if r5 == 0 goto .L1555
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1555:
	r2 >>= 15
	if r2 == 0 goto .L1556
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1556:
	r0 &= 1
	exit
.L1557:
	r0 = 1
	goto .L1541
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1575
	r0 = 0
.L1559:
	r1 = r2
	r1 >>= 1
	r1 &= 1
	if r1 == 0 goto .L1560
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1560:
	r3 = r2
	r3 >>= 2
	r3 &= 1
	if r3 == 0 goto .L1561
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1561:
	r4 = r2
	r4 >>= 3
	r4 &= 1
	if r4 == 0 goto .L1562
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1562:
	r5 = r2
	r5 >>= 4
	r5 &= 1
	if r5 == 0 goto .L1563
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1563:
	r9 = r2
	r9 >>= 5
	r9 &= 1
	if r9 == 0 goto .L1564
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1564:
	r1 = r2
	r1 >>= 6
	r1 &= 1
	if r1 == 0 goto .L1565
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1565:
	r3 = r2
	r3 >>= 7
	r3 &= 1
	if r3 == 0 goto .L1566
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1566:
	r4 = r2
	r4 >>= 8
	r4 &= 1
	if r4 == 0 goto .L1567
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1567:
	r5 = r2
	r5 >>= 9
	r5 &= 1
	if r5 == 0 goto .L1568
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1568:
	r9 = r2
	r9 >>= 10
	r9 &= 1
	if r9 == 0 goto .L1569
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1569:
	r1 = r2
	r1 >>= 11
	r1 &= 1
	if r1 == 0 goto .L1570
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1570:
	r3 = r2
	r3 >>= 12
	r3 &= 1
	if r3 == 0 goto .L1571
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1571:
	r4 = r2
	r4 >>= 13
	r4 &= 1
	if r4 == 0 goto .L1572
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1572:
	r5 = r2
	r5 >>= 14
	r5 &= 1
	if r5 == 0 goto .L1573
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1573:
	r2 >>= 15
	if r2 == 0 goto .L1574
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
.L1574:
	exit
.L1575:
	r0 = 1
	goto .L1559
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	goto .L1577
.L1578:
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
.L1577:
	if r1 == 0 goto .L1580
	r3 = r1
	r3 &= 1
	if r3 == 0 goto .L1578
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	goto .L1578
.L1580:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1586
	r0 = 0
	goto .L1583
.L1584:
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
.L1583:
	if r2 == 0 goto .L1587
	r3 = r2
	r3 &= 1
	if r3 == 0 goto .L1584
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	goto .L1584
.L1587:
	exit
.L1586:
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
	goto .L1589
.L1596:
	r0 = 0
	goto .L1592
.L1597:
	r0 = 0
	goto .L1592
.L1593:
	r4 >>= 1
	r2 >>= 1
.L1592:
	if r4 == 0 goto .L1615
	if r2 >= r1 goto .L1593
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1593
.L1615:
	if r3 != 0 goto .L1616
.L1595:
	exit
.L1616:
	r0 = r1
	goto .L1595
.L1617:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
.L1589:
	if r2 >= r1 goto .L1596
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1597
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1614
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1596
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1614
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1596
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1614
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1596
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1614
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1596
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1614
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1596
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1614
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1596
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1614
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1596
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1617
.L1614:
	r0 = 0
	goto .L1592
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1620
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s> 0 goto .L1621
	r0 = 0
	exit
.L1620:
	r0 = -1
	exit
.L1621:
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
	if r0 s<= 0 goto .L1624
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s> 0 goto .L1625
	r0 = 0
	exit
.L1624:
	r0 = -1
	exit
.L1625:
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
	if r2 s< 0 goto .L1651
	r2 = 0
.L1629:
	r0 = 0
	if r4 == r0 goto .L1632
	r3 = 32
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1638
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1638:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1632
	r3 += -1
	r3 &= 0xff
	r9 = r4
	r9 &= 1
	if r9 == 0 goto .L1640
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1640:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 <<= 31
	r4 s>>= 32
	goto .L1630
.L1651:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r2 = 1
	goto .L1629
.L1632:
	if r2 == 0 goto .L1634
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1634:
	exit
.L1652:
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1648:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
.L1630:
	if r4 == 0 goto .L1632
	r3 += -1
	r3 &= 0xff
	if r3 == 0 goto .L1632
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1631
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1631:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1632
	r3 += -1
	r3 &= 0xff
	r9 = r4
	r9 &= 1
	if r9 == 0 goto .L1642
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1642:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1632
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1644
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1644:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1632
	r3 += -1
	r3 &= 0xff
	r9 = r4
	r9 &= 1
	if r9 == 0 goto .L1646
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
.L1646:
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1632
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	if r5 == 0 goto .L1648
	goto .L1652
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1658
	r6 = 0
.L1654:
	if r2 s< 0 goto .L1659
.L1655:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1656
	r0 = -r0
.L1656:
	exit
.L1658:
	r1 = -r1
	r6 = 1
	goto .L1654
.L1659:
	r2 = -r2
	r6 ^= 1
	goto .L1655
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s< 0 goto .L1665
	r6 = 0
.L1661:
	if r2 s< 0 goto .L1666
.L1662:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1663
	r0 = -r0
.L1663:
	exit
.L1665:
	r1 = -r1
	r6 = 1
	goto .L1661
.L1666:
	r2 = -r2
	goto .L1662
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r1 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r1 goto .L1688
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1689
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1690
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1691
	r2 += r2
	r2 &= 0xffff
	r5 = 4
	if r2 > r1 goto .L1668
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 = 8
	if r2 > r1 goto .L1668
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1668
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	r5 += r5
	r5 &= 0xffff
.L1668:
	if r5 == 0 goto .L1692
	if r2 >= r1 goto .L1693
	r1 -= r2
	r1 &= 0xffff
	r0 = r5
.L1671:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1672
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1672:
	r5 >>= 1
	r2 >>= 1
	r2 &= 0xffff
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1673
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1673:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1674
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1674:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1675
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1675:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1676
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1676:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1677
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1677:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1678
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1678:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1679
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1679:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1680
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1680:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1681
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1681:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1682
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1682:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1683
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1683:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1684
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1684:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1685
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1685:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1670
	if r2 >= r1 goto .L1670
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
	goto .L1670
.L1688:
	r5 = 1
	goto .L1668
.L1689:
	r5 = 1
	goto .L1668
.L1690:
	r5 = 2
	goto .L1668
.L1691:
	r5 = 2
	goto .L1668
.L1693:
	r0 = 0
	goto .L1671
.L1692:
	r0 = 0
.L1670:
	if r3 != 0 goto .L1695
.L1687:
	exit
.L1695:
	r0 = r1
	goto .L1687
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r0 = 65
	r4 = 1
	r5 = 2147483648 ll
.L1697:
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L1705
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1704
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1722
	r2 += r2
	r4 += r4
	goto .L1697
.L1722:
	r0 = 0
	goto .L1700
.L1704:
	r0 = 0
	goto .L1700
.L1705:
	r0 = 0
	goto .L1700
.L1701:
	r4 >>= 1
	r2 >>= 1
.L1700:
	if r4 == 0 goto .L1723
	if r2 >= r1 goto .L1701
	r1 -= r2
	r0 |= r4
	goto .L1701
.L1723:
	if r3 != 0 goto .L1724
.L1703:
	exit
.L1724:
	r0 = r1
	goto .L1703
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1726
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
.L1727:
	r0 = r1
	exit
.L1726:
	if r2 == 0 goto .L1729
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
	goto .L1727
.L1729:
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
	if r0 == 0 goto .L1731
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r9 = r3;r9 &= 0xffffffff
	r4 <<= r9
	*(u64 *) (r10+-24) = r4
.L1732:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
.L1733:
	r0 = r4
	r1 = r5
	exit
.L1731:
	if r3 == 0 goto .L1733
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
	goto .L1732
	.size	__ashlti3, .-__ashlti3
	.align	3
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1736
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
.L1736:
	if r2 == 0 goto .L1739
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
.L1739:
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
	if r0 == 0 goto .L1741
	r0 = r2
	r0 s>>= 63
	*(u64 *) (r10+-24) = r0
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r5 s>>= r3
	*(u64 *) (r10+-32) = r5
.L1742:
	r4 = *(u64 *) (r10+-32)
	r5 = *(u64 *) (r10+-24)
.L1743:
	r0 = r4
	r1 = r5
	exit
.L1741:
	if r3 == 0 goto .L1743
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
	goto .L1742
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
	if r1 > 65535 goto .L1752
	r3 = 16
.L1748:
	r0 = 16
	r0 -= r3
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r5 = r1;r5 &= 0xffffffff
	r9 = r3;r9 &= 0xffffffff
	r1 &= 65280
	if r1 != 0 goto .L1753
	r4 = 8
.L1749:
	r1 = 8
	r1 -= r4
	r3 = r1;r3 &= 0xffffffff
	r5 >>= r3
	r0 = r5;r0 &= 0xffffffff
	r2 = r4
	r2 += r9
	r5 &= 240
	if r5 != 0 goto .L1754
	r9 = 4
.L1750:
	r4 = 4
	r4 -= r9
	r1 = r4;r1 &= 0xffffffff
	r0 >>= r1
	r3 = r0;r3 &= 0xffffffff
	r9 += r2
	r0 &= 12
	if r0 != 0 goto .L1755
	r5 = 2
.L1751:
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
.L1752:
	r3 = 0
	goto .L1748
.L1753:
	r4 = 0
	goto .L1749
.L1754:
	r9 = 0
	goto .L1750
.L1755:
	r5 = 0
	goto .L1751
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r1 = 1
	if r2 == 0 goto .L1757
	r1 = 0
.L1757:
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
	if r3 s>= r0 goto .L1760
	r4 = r2
	r4 s>>= 32
	r5 = r1
	r5 s>>= 32
	if r5 s> r4 goto .L1761
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1762
	if r1 > r2 goto .L1763
	r0 = 1
	exit
.L1760:
	r0 = 0
	exit
.L1761:
	r0 = 2
	exit
.L1762:
	r0 = 0
	exit
.L1763:
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
	if r4 s>= r2 goto .L1767
	if r2 s> r4 goto .L1768
	if r3 >= r1 goto .L1769
	if r1 > r3 goto .L1770
	r0 = 1
	exit
.L1767:
	r0 = 0
	exit
.L1768:
	r0 = 2
	exit
.L1769:
	r0 = 0
	exit
.L1770:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r0 = r1;r0 &= 0xffffffff
	r1 &= 0xffff
	if r1 != 0 goto .L1776
	r1 = 16
.L1772:
	r4 = r1;r4 &= 0xffffffff
	r0 >>= r1
	r5 = r0;r5 &= 0xffffffff
	r0 &= 0xff
	if r0 != 0 goto .L1777
	r2 = 8
.L1773:
	r5 >>= r2
	r9 = r5;r9 &= 0xffffffff
	r2 += r4
	r3 = r2
	r5 &= 15
	if r5 != 0 goto .L1778
	r4 = 4
.L1774:
	r9 >>= r4
	r1 = r9;r1 &= 0xffffffff
	r4 += r3
	r9 &= 3
	if r9 != 0 goto .L1779
	r0 = 2
.L1775:
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
.L1776:
	r1 = 0
	goto .L1772
.L1777:
	r2 = 0
	goto .L1773
.L1778:
	r4 = 0
	goto .L1774
.L1779:
	r0 = 0
	goto .L1775
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r6 = 1
	if r1 == 0 goto .L1781
	r6 = 0
.L1781:
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
	if r1 != 0 goto .L1783
	if r2 == 0 goto .L1785
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L1783:
	r1 = *(u64 *) (r10+-16)
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1785:
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
	if r0 == 0 goto .L1787
	r0 = r1
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1787:
	if r2 == 0 goto .L1790
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
.L1790:
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
	if r2 == 0 goto .L1792
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 >>= r2
	*(u64 *) (r10+-32) = r1
.L1793:
	r9 = *(u64 *) (r10+-32)
	r0 = *(u64 *) (r10+-24)
	r4 = r9
	r5 = r0
.L1794:
	r0 = r4
	r1 = r5
	exit
.L1792:
	if r3 == 0 goto .L1794
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
	goto .L1793
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
	*(u64 *) (r10+-64) = r1
	*(u64 *) (r10+-56) = r2
	r6 = r3
	r7 = r4
	r2 = r3
	call	__mulddi3
	r2 = r0
	r3 = r1
	r1 = *(u64 *) (r10+-56)
	r1 *= r6
	r0 = r7
	r4 = *(u64 *) (r10+-64)
	r0 *= r4
	r1 += r0
	r6 = r1
	r6 += r3
	r0 = r2
	r1 = r6
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
	if r0 > r9 goto .L1802
	r6 = r9
.L1802:
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
	if r2 > r0 goto .L1809
	r9 = 0
.L1809:
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
	if r4 >= r8 goto .L1810
	r0 = 0
.L1810:
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
	if r8 >= r4 goto .L1811
	r0 = 0
.L1811:
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
	goto .L1815
.L1813:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1814
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L1815:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1813
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1813
.L1814:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1817
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L1817:
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
	goto .L1821
.L1819:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1820
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L1821:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1819
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1819
.L1820:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1823
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L1823:
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
	if r3 >= r0 goto .L1826
	r4 = r2
	r4 >>= 32
	r5 = r1
	r5 >>= 32
	if r5 > r4 goto .L1827
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1828
	if r1 > r2 goto .L1829
	r0 = 1
	exit
.L1826:
	r0 = 0
	exit
.L1827:
	r0 = 2
	exit
.L1828:
	r0 = 0
	exit
.L1829:
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
	if r4 >= r2 goto .L1833
	if r2 > r4 goto .L1834
	if r3 >= r1 goto .L1835
	if r1 > r3 goto .L1836
	r0 = 1
	exit
.L1833:
	r0 = 0
	exit
.L1834:
	r0 = 2
	exit
.L1835:
	r0 = 0
	exit
.L1836:
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
