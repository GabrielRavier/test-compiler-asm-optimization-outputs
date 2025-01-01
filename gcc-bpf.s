	.file	"mini-libc.c"
	.text
	.align	3
	.global	make_ti
	.type	make_ti, @function
make_ti:
	r0 = r2
	exit
	.size	make_ti, .-make_ti
	.align	3
	.global	make_tu
	.type	make_tu, @function
make_tu:
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
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
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
	if r1 <= 30 goto .L397
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L397:
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
	if r1 <= 8 goto .L399
	r0 = 0
.L399:
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
	if r1 <= 92 goto .L401
	r0 = 0
.L401:
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
	if r1 <= 24 goto .L403
	r0 = 0
.L403:
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
	if r1 <= 93 goto .L405
	r0 = 0
.L405:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L409
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 3 goto .L408
	r0 = 0
.L408:
	r0 &= 1
	exit
.L409:
	r0 = 1
	exit
	.size	isspace, .-isspace
	.align	3
	.global	isupper
	.type	isupper, @function
isupper:
	r1 += -65
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 24 goto .L411
	r0 = 0
.L411:
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
	if r1 <= 30 goto .L415
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L416
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L417
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	r0 = 1
	if r5 <= 1 goto .L414
	r0 = 0
.L414:
	r0 &= 1
	exit
.L415:
	r0 = 1
	exit
.L416:
	r0 = 1
	exit
.L417:
	r0 = 1
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	r1 += -48
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 8 goto .L419
	r0 = 0
.L419:
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
	if r1 <= 254 goto .L428
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 8230 goto .L424
	r2 = r0
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L425
	r4 = r0
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L426
	r9 = r0
	r9 += -65532
	r1 = r9;r1 &= 0xffffffff
	if r1 > 1048579 goto .L427
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L428:
	r0 += 1
	r0 &= 127
	r2 = 1
	if r0 s> 32 goto .L422
	r2 = 0
.L422:
	r0 = r2
	r0 &= 1
	exit
.L424:
	r0 = 1
	exit
.L425:
	r0 = 1
	exit
.L426:
	r0 = 1
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
	if r2 <= 8 goto .L432
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 4 goto .L431
	r0 = 0
.L431:
	r0 &= 1
	exit
.L432:
	r0 = 1
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
	if r0 != 0 goto .L437
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L438
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L441
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L437:
	r0 = r6
	exit
.L438:
	r0 = r7
	exit
.L441:
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
	if r0 != 0 goto .L445
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L446
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L449
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L445:
	r0 = r6
	exit
.L446:
	r0 = r7
	exit
.L449:
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
	if r0 != 0 goto .L456
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L457
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L452
	if r6 s>= 0 goto .L458
	r0 = r7
	exit
.L452:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L453
	r8 = 0
.L453:
	r8 &= 0xff
	if r8 == 0 goto .L455
	r6 = r7
.L455:
	r0 = r6
	exit
.L456:
	r0 = r7
	exit
.L457:
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
	if r0 != 0 goto .L465
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L466
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
	if r2 == 0 goto .L467
	r0 = r7
	exit
.L461:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L462
	r8 = 0
.L462:
	r8 &= 0xff
	if r8 == 0 goto .L464
	r6 = r7
.L464:
	r0 = r6
	exit
.L465:
	r0 = r7
	exit
.L466:
	r0 = r6
	exit
.L467:
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
	if r0 != 0 goto .L474
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L475
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L470
	if r6 s>= 0 goto .L476
	r0 = r7
	exit
.L470:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L471
	r8 = 0
.L471:
	r8 &= 0xff
	if r8 == 0 goto .L473
	r6 = r7
.L473:
	r0 = r6
	exit
.L474:
	r0 = r7
	exit
.L475:
	r0 = r6
	exit
.L476:
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
	if r0 == r1 goto .L479
	if r7 s>= 0 goto .L485
	r0 = r7
	exit
.L479:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L480
	r8 = 0
.L480:
	r8 &= 0xff
	if r8 == 0 goto .L482
	r6 = r7
.L482:
	r0 = r6
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
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L492
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L493
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L488
	r2 = r7
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L494
	r0 = r7
	exit
.L488:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s<= 0 goto .L489
	r8 = 0
.L489:
	r8 &= 0xff
	if r8 == 0 goto .L491
	r6 = r7
.L491:
	r0 = r6
	exit
.L492:
	r0 = r6
	exit
.L493:
	r0 = r7
	exit
.L494:
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
	if r0 != 0 goto .L501
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L502
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L497
	if r7 s>= 0 goto .L503
	r0 = r7
	exit
.L497:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L498
	r8 = 0
.L498:
	r8 &= 0xff
	if r8 == 0 goto .L500
	r6 = r7
.L500:
	r0 = r6
	exit
.L501:
	r0 = r6
	exit
.L502:
	r0 = r7
	exit
.L503:
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
	if r1 == 0 goto .L514
	r4 = r1
	r4 &= 63
	r2 = r3
	r2 += r4
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r9 = r0
	r1 >>= 6
	if r1 == 0 goto .L514
	r4 = r1
	r4 &= 63
	r0 = r3
	r0 += r4
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r2
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L514
	r5 = r1
	r5 &= 63
	r9 = r3
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L514
	r2 = r1
	r2 &= 63
	r5 = r3
	r5 += r2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L514
	r2 = r1
	r2 &= 63
	r4 = r3
	r4 += r2
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L514
	r3 += r1
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L514:
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
	if r2 == 0 goto .L520
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L517
	*(u64 *) (r2+8) = r1
.L517:
	exit
.L520:
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
	if r1 s< 0 goto .L526
.L525:
	r0 <<= 32
	r0 s>>= 32
	exit
.L526:
	r1 = -r1
	r0 = r1
	goto .L525
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r6 = r1
.L528:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L546
	r6 += 1
	goto .L528
.L546:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L535
	if r0 != 45 goto .L536
	r4 = 1
.L530:
	r6 += 1
.L531:
	r1 = r6
	r0 = 0
	r3 = 9
.L532:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r3 <= r5 goto .L547
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
	if r3 <= r9 goto .L547
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
	goto .L532
.L535:
	r4 = 0
	goto .L530
.L536:
	r4 = 0
	goto .L531
.L547:
	if r4 != 0 goto .L534
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L534:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r6 = r1
.L549:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L569
	r6 += 1
	goto .L549
.L569:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L556
	if r0 != 45 goto .L557
	r4 = 1
.L551:
	r6 += 1
.L552:
	r0 = 0
	r3 = 9
.L553:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r3 <= r1 goto .L570
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
	if r3 <= r2 goto .L570
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
	if r3 <= r2 goto .L570
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
	if r3 <= r2 goto .L570
	r0 *= 10
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 3
	goto .L553
.L556:
	r4 = 0
	goto .L551
.L557:
	r4 = 0
	goto .L552
.L570:
	if r4 != 0 goto .L555
	r0 = -r0
.L555:
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r6 = r1
.L572:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L592
	r6 += 1
	goto .L572
.L592:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L579
	if r0 != 45 goto .L580
	r4 = 1
.L574:
	r6 += 1
.L575:
	r0 = 0
	r3 = 9
.L576:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r3 <= r1 goto .L593
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
	if r3 <= r2 goto .L593
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
	if r3 <= r2 goto .L593
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
	if r3 <= r2 goto .L593
	r0 *= 10
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 3
	goto .L576
.L579:
	r4 = 0
	goto .L574
.L580:
	r4 = 0
	goto .L575
.L593:
	if r4 != 0 goto .L578
	r0 = -r0
.L578:
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
	if r1 s< 0 goto .L597
.L596:
	exit
.L597:
	r0 = -r0
	goto .L596
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
	if r1 s< 0 goto .L601
.L600:
	exit
.L601:
	r0 = -r0
	goto .L600
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
	if r1 s< 0 goto .L605
.L604:
	exit
.L605:
	r0 = -r0
	goto .L604
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
	if r3 == 0 goto .L637
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
.L637:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = r1
.L639:
	r2 = *(u32 *) (r0+0)
	if r2 == 0 goto .L648
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L648
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
.L648:
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
	if r5 == 0 goto .L650
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
	if r0 == 0 goto .L651
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r2 += 4
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r9 goto .L651
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
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L676
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
.L676:
	if r3 == 0 goto .L677
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L677
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r5 = *(u32 *) (r0+0)
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
.L677:
	if r3 == 0 goto .L680
	r0 = r1
	exit
.L680:
	r0 = 0
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L723
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
.L723:
	if r3 == 0 goto .L724
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L724
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r6 = *(u32 *) (r0+0)
	r6 <<= 32
	if r6 != r9 goto .L724
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
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L772
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
	if r9 == 0 goto .L804
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
.L803:
	r1 = r3
	r1 <<= 2
	r3 &= 7
	if r3 == 0 goto .L805
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
	if r4 == 0 goto .L863
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
	if r3 == 0 goto .L894
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
	if r3 == 0 goto .L897
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
.L957:
	if r0 == 32 goto .L961
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L962
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	goto .L957
.L962:
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	exit
.L961:
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
	if r1 == 0 goto .L967
	r0 = 1
.L965:
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L976
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L977
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L964
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L964
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L964
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L964
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L964
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L964
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	goto .L965
.L977:
	exit
.L976:
	exit
.L967:
	r0 = 0
.L964:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L981
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L982
.L980:
	r0 = r7
	r0 &= 1
	exit
.L982:
	r7 = 0
	goto .L980
.L981:
	r0 = 1
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L986
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L987
.L985:
	r0 = r7
	r0 &= 1
	exit
.L987:
	r7 = 0
	goto .L985
.L986:
	r0 = 1
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
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L992
.L990:
	r0 = r7
	r0 &= 1
	exit
.L992:
	r7 = 0
	goto .L990
.L991:
	r0 = 1
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
	if r0 != 0 goto .L995
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r0
	r1 = r8
	call	__nesf2
	if r0 == 0 goto .L995
	if r6 s< 0 goto .L1002
	r7 = 0x40000000 ll
	goto .L999
.L1002:
	r7 = 0x3f000000 ll
	goto .L999
.L998:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L995
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L999:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L998
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L998
.L995:
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
	if r0 != 0 goto .L1004
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1004
	if r6 s< 0 goto .L1011
	r7 = 0x4000000000000000 ll
	goto .L1008
.L1011:
	r7 = 0x3fe0000000000000 ll
	goto .L1008
.L1007:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1004
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1008:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1007
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1007
.L1004:
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
	if r6 s< 0 goto .L1020
	r7 = 0x4000000000000000 ll
	goto .L1017
.L1020:
	r7 = 0x3fe0000000000000 ll
	goto .L1017
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
.L1017:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1016
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1016
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
	if r3 == 0 goto .L1022
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r1+0)
	r5 ^= r9
	*(u8 *) (r1+0) = r5
	r2 += 1
	r0 += 1
	if r3 == 1 goto .L1022
	if r3 == 2 goto .L1027
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L1027:
	r5 = *(u8 *) (r2+0)
	r9 = *(u8 *) (r0+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	goto .L1022
.L1023:
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
.L1022:
	if r0 != r4 goto .L1023
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
	if r2 == 0 goto .L1035
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r7 += -1
	if r2 == 1 goto .L1035
	if r2 == 2 goto .L1074
	if r2 == 3 goto .L1075
	if r2 == 4 goto .L1076
	if r2 == 5 goto .L1077
	if r2 == 6 goto .L1078
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r7 += -1
.L1078:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r7 += -1
.L1077:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r7 += -1
.L1076:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r7 += -1
.L1075:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r7 += -1
.L1074:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r7 += -1
.L1035:
	if r7 == 0 goto .L1036
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1036
	r6 += 1
	r0 += 1
	r9 = r7
	r9 += -1
	r7 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1036
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1036
	r0 += 1
	r7 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1036
	r0 += 1
	r7 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1036
	r0 += 1
	r7 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1036
	r0 += 1
	r7 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1036
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1036
	r6 += 7
	r0 += 1
	r9 += -7
	r7 = r9
	goto .L1035
.L1036:
	if r7 != 0 goto .L1038
	*(u8 *) (r0+0) = 0
.L1038:
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
	if r3 == r0 goto .L1081
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 != 0 goto .L1125
.L1082:
	exit
.L1125:
	r0 += 1
	if r3 == 1 goto .L1081
	if r3 == 2 goto .L1119
	if r3 == 3 goto .L1120
	if r3 == 4 goto .L1121
	if r3 == 5 goto .L1122
	if r3 == 6 goto .L1123
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1082
	r0 += 1
.L1123:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1082
	r0 += 1
.L1122:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1082
	r0 += 1
.L1121:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1082
	r0 += 1
.L1120:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1082
	r0 += 1
.L1119:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1082
	r0 += 1
.L1081:
	if r0 == r2 goto .L1082
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1082
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1082
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1082
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1082
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1082
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1082
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1082
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1082
	r0 += 1
	goto .L1081
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1127:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1132
	r3 = r2
.L1130:
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1133
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r3 += 1
	if r5 != r9 goto .L1130
	r0 = r1
	exit
.L1133:
	r1 += 1
	goto .L1127
.L1132:
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
	goto .L1136
.L1135:
	r1 += 1
	r4 = *(u8 *) (r1+-1)
	if r4 == 0 goto .L1139
.L1136:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1135
	r3 = r1
	goto .L1135
.L1139:
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
	if r0 == 0 goto .L1144
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
	r1 = r6
.L1142:
	r2 = *(u32 *) (r10+-8)
	call	strchr
	r6 = r0
	if r0 == 0 goto .L1146
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1145
	r1 = r6
	r1 += 1
	goto .L1142
.L1146:
	r0 = 0
	exit
.L1144:
	r0 = r6
	exit
.L1145:
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
	if r0 s<= 0 goto .L1160
.L1148:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1158
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1150
	r0 = r6
	exit
.L1160:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1148
.L1150:
	r1 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r1
	exit
.L1158:
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
	if r4 == 0 goto .L1167
	r3 = 1
	if r4 >= r2 goto .L1163
	r3 = 0
.L1163:
	r3 &= 0xff
	if r3 != 0 goto .L1168
	r4 += -1
	*(u64 *) (r10+-16) = r4
	r2 = r7
	r2 += 1
	*(u64 *) (r10+-24) = r2
	r8 = *(u64 *) (r10+-8)
	r8 -= r6
	r8 &= 3
	if r8 == 0 goto .L1164
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1187
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 == r5 goto .L1188
.L1171:
	r6 += 1
	if r8 == 1 goto .L1164
	if r8 == 2 goto .L1175
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 == r0 goto .L1189
.L1173:
	r6 += 1
.L1175:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r2 = *(u8 *) (r7+0)
	r2 <<= 56
	if r2 == r3 goto .L1190
.L1176:
	r6 += 1
	goto .L1164
.L1191:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1165
.L1169:
	r0 = r6
	exit
.L1187:
	r0 = 0
	exit
.L1167:
	r0 = r6
	exit
.L1168:
	r0 = 0
	exit
.L1188:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1171
	goto .L1169
.L1189:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1173
	goto .L1169
.L1190:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1176
	goto .L1169
.L1192:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1180
	goto .L1169
.L1193:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1182
	goto .L1169
.L1184:
	r6 = r8
	r6 += 3
.L1164:
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1187
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 == r5 goto .L1191
.L1165:
	r6 += 1
	r8 = r6
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 == r0 goto .L1192
.L1180:
	r6 = r8
	r6 += 1
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r2 = *(u8 *) (r7+0)
	r2 <<= 56
	if r2 == r3 goto .L1193
.L1182:
	r6 = r8
	r6 += 2
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r5 = *(u8 *) (r7+0)
	r5 <<= 56
	if r5 != r4 goto .L1184
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1184
	goto .L1169
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1220
	*(u64 *) (r10+-8) = 0
.L1195:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1221
	r7 = 0
	r8 = 0x3ff0000000000000 ll
.L1197:
	r2 = r8
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1200
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
	if r0 s< 0 goto .L1200
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
	if r0 s< 0 goto .L1200
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
	if r0 s< 0 goto .L1200
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	goto .L1197
.L1220:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1195
.L1221:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1219
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1208
	r7 = 0
	goto .L1200
.L1208:
	r7 = 0
	r8 = r7
	goto .L1202
.L1219:
	r7 = 0
.L1200:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r7
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1204
	r3 = -9223372036854775808 ll
	r3 ^= r6
	r6 = r3
.L1204:
	r0 = r6
	exit
.L1222:
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
.L1202:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r8 s< r0 goto .L1200
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
	if r8 s< r0 goto .L1200
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
	if r8 s< r0 goto .L1200
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
	if r8 s>= r0 goto .L1222
	goto .L1200
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
.L1224:
	if r1 == 0 goto .L1233
	r4 = r1
	r4 &= 1
	r3 = r2
	r3 *= r4
	r2 += r2
	r1 >>= 1
	r0 += r3
	if r1 == 0 goto .L1234
	r5 = r1
	r5 &= 1
	r9 = r2
	r9 *= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	if r1 == 0 goto .L1233
	r4 = r1
	r4 &= 1
	r3 = r2
	r3 *= r4
	r2 += r2
	r1 >>= 1
	r0 += r3
	if r1 == 0 goto .L1233
	r5 = r1
	r5 &= 1
	r9 = r2
	r9 *= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	if r1 == 0 goto .L1233
	r4 = r1
	r4 &= 1
	r3 = r2
	r3 *= r4
	r2 += r2
	r1 >>= 1
	r0 += r3
	if r1 == 0 goto .L1233
	r5 = r1
	r5 &= 1
	r9 = r2
	r9 *= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	if r1 == 0 goto .L1233
	r4 = r1
	r4 &= 1
	r3 = r2
	r3 *= r4
	r2 += r2
	r1 >>= 1
	r0 += r3
	if r1 == 0 goto .L1233
	r5 = r1
	r5 &= 1
	r9 = r2
	r9 *= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	goto .L1224
.L1234:
	exit
.L1233:
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
	goto .L1236
.L1243:
	r0 = 0
	goto .L1239
.L1244:
	r0 = 0
	goto .L1239
.L1240:
	r4 >>= 1
	r2 >>= 1
.L1239:
	if r4 == 0 goto .L1262
	if r2 >= r1 goto .L1240
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1240
.L1262:
	if r3 != 0 goto .L1263
.L1242:
	exit
.L1263:
	r0 = r1
	goto .L1242
.L1264:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
.L1236:
	if r2 >= r1 goto .L1243
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1244
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1261
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1243
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1261
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1243
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1261
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1243
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1261
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1243
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1261
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1243
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1261
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1243
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1261
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1243
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1264
.L1261:
	r0 = 0
	goto .L1239
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r2 = r1
	r2 s>>= 56
	r1 s>>= 63
	r0 = r1
	r0 ^= r2
	if r1 == r2 goto .L1267
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
.L1267:
	r0 = 7
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	r0 = r1
	r2 = r1
	r2 s>>= 63
	r1 = r2
	r1 ^= r0
	if r2 == r0 goto .L1270
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1270:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r0 = 0
.L1272:
	if r1 == 0 goto .L1277
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	if r1 == 0 goto .L1278
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	r0 = r4;r0 &= 0xffffffff
	if r1 == 0 goto .L1277
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	r0 = r9;r0 &= 0xffffffff
	if r1 == 0 goto .L1277
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	goto .L1272
.L1278:
	exit
.L1277:
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
	if r1 >= r2 goto .L1280
.L1282:
	r4 = r2
	r5 = r1
	r6 <<= 3
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 3
	r9 &= 7
	if r9 == 0 goto .L1281
	r7 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r7
	r4 += 8
	r5 += 8
	if r9 == 1 goto .L1281
	if r9 == 2 goto .L1321
	if r9 == 3 goto .L1319
	if r9 == 4 goto .L1317
	if r9 == 5 goto .L1315
	if r9 == 6 goto .L1313
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1313:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1315:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1317:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1319:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1321:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
	goto .L1281
.L1280:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1282
	r0 = 4294967295 ll
	r9 = r0
	r9 -= r3
	r9 ^= -1
	r9 &= 7
	if r9 == 0 goto .L1283
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r6 = r2
	r6 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r6
	if r9 == 1 goto .L1283
	if r9 == 2 goto .L1357
	if r9 == 3 goto .L1358
	if r9 == 4 goto .L1359
	if r9 == 5 goto .L1360
	if r9 == 6 goto .L1361
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1361:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1360:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1359:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1358:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1357:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1283:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	if r3 == r0 goto .L1279
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
	goto .L1283
.L1284:
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
.L1281:
	if r4 != r6 goto .L1284
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L1285
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1279
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1285
	if r4 == 2 goto .L1352
	if r4 == 3 goto .L1353
	if r4 == 4 goto .L1354
	if r4 == 5 goto .L1355
	if r4 == 6 goto .L1356
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1356:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1355:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1354:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1353:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1352:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1285
.L1286:
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
.L1285:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1286
	exit
.L1279:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1366
.L1368:
	r0 = r2
	r4 = r1
	r9 += r9
	r9 += r2
	r5 = r9
	r5 -= r2
	r5 >>= 1
	r5 &= 7
	if r5 == 0 goto .L1367
	r6 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r6
	r0 += 2
	r4 += 2
	if r5 == 1 goto .L1367
	if r5 == 2 goto .L1384
	if r5 == 3 goto .L1382
	if r5 == 4 goto .L1380
	if r5 == 5 goto .L1378
	if r5 == 6 goto .L1376
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1376:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1378:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1380:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1382:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1384:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	goto .L1367
.L1366:
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1368
	r0 = 4294967295 ll
	r4 = r0
	r4 -= r3
	r4 ^= -1
	r4 &= 7
	if r4 == 0 goto .L1369
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r6
	if r4 == 1 goto .L1369
	if r4 == 2 goto .L1415
	if r4 == 3 goto .L1416
	if r4 == 4 goto .L1417
	if r4 == 5 goto .L1418
	if r4 == 6 goto .L1419
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1419:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1418:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1417:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1416:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1415:
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
	if r3 == r0 goto .L1365
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
	goto .L1369
.L1370:
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
.L1367:
	if r0 != r9 goto .L1370
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1365
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1365:
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
	if r1 >= r2 goto .L1423
.L1425:
	r4 = r2
	r5 = r1
	r6 <<= 2
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 2
	r9 &= 7
	if r9 == 0 goto .L1424
	r7 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r7
	r4 += 4
	r5 += 4
	if r9 == 1 goto .L1424
	if r9 == 2 goto .L1464
	if r9 == 3 goto .L1462
	if r9 == 4 goto .L1460
	if r9 == 5 goto .L1458
	if r9 == 6 goto .L1456
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1456:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1458:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1460:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1462:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1464:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
	goto .L1424
.L1423:
	r4 = r2
	r4 += r3
	if r1 >= r4 goto .L1425
	r0 = 4294967295 ll
	r9 = r0
	r9 -= r3
	r9 ^= -1
	r9 &= 7
	if r9 == 0 goto .L1426
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r6 = r2
	r6 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r6
	if r9 == 1 goto .L1426
	if r9 == 2 goto .L1500
	if r9 == 3 goto .L1501
	if r9 == 4 goto .L1502
	if r9 == 5 goto .L1503
	if r9 == 6 goto .L1504
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1504:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1503:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1502:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1501:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1500:
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
	if r3 == r0 goto .L1422
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
	goto .L1426
.L1427:
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
.L1424:
	if r4 != r6 goto .L1427
	r4 = r3
	r4 -= r0
	r4 &= 7
	if r4 == 0 goto .L1428
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1422
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1428
	if r4 == 2 goto .L1495
	if r4 == 3 goto .L1496
	if r4 == 4 goto .L1497
	if r4 == 5 goto .L1498
	if r4 == 6 goto .L1499
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1499:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1498:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1497:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1496:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1495:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1428
.L1429:
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
.L1428:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1429
	exit
.L1422:
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
	if r0 != 0 goto .L1516
	r2 = r1
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1517
	r0 = 2
	r3 = r1
	r3 >>= 13
	r3 &= 1
	if r3 != 0 goto .L1515
	r0 = 3
	r4 = r1
	r4 >>= 12
	r4 &= 1
	if r4 != 0 goto .L1515
	r0 = 4
	r5 = r1
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1515
	r0 = 5
	r9 = r1
	r9 >>= 10
	r9 &= 1
	if r9 != 0 goto .L1515
	r0 = 6
	r2 = r1
	r2 >>= 9
	r2 &= 1
	if r2 != 0 goto .L1515
	r0 = 7
	r3 = r1
	r3 >>= 8
	r3 &= 1
	if r3 != 0 goto .L1515
	r0 = 8
	r4 = r1
	r4 >>= 7
	r4 &= 1
	if r4 != 0 goto .L1515
	r0 = 9
	r5 = r1
	r5 >>= 6
	r5 &= 1
	if r5 != 0 goto .L1515
	r0 = 10
	r9 = r1
	r9 >>= 5
	r9 &= 1
	if r9 != 0 goto .L1515
	r0 = 11
	r2 = r1
	r2 >>= 4
	r2 &= 1
	if r2 != 0 goto .L1515
	r0 = 12
	r3 = r1
	r3 >>= 3
	r3 &= 1
	if r3 != 0 goto .L1515
	r0 = 13
	r4 = r1
	r4 >>= 2
	r4 &= 1
	if r4 != 0 goto .L1515
	r0 = 14
	r5 = r1
	r5 >>= 1
	r5 &= 1
	if r5 != 0 goto .L1515
	r0 = 15
	r1 &= 1
	if r1 != 0 goto .L1515
	r0 = 16
	exit
.L1516:
	r0 = 0
	exit
.L1517:
	r0 = 1
.L1515:
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r2 = r1;r2 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1520
	r0 = r2
	r0 >>= 1
	r0 &= 1
	if r0 != 0 goto .L1521
	r0 = 2
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1519
	r0 = 3
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1519
	r0 = 4
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1519
	r0 = 5
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1519
	r0 = 6
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1519
	r0 = 7
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1519
	r0 = 8
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1519
	r0 = 9
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1519
	r0 = 10
	r5 = r2
	r5 s>>= r0
	r5 &= 1
	if r5 != 0 goto .L1519
	r0 = 11
	r9 = r2
	r9 s>>= r0
	r9 &= 1
	if r9 != 0 goto .L1519
	r0 = 12
	r1 = r2
	r1 s>>= r0
	r1 &= 1
	if r1 != 0 goto .L1519
	r0 = 13
	r3 = r2
	r3 s>>= r0
	r3 &= 1
	if r3 != 0 goto .L1519
	r0 = 14
	r4 = r2
	r4 s>>= r0
	r4 &= 1
	if r4 != 0 goto .L1519
	r0 = 15
	r2 >>= r0
	if r2 != 0 goto .L1519
	r0 = 16
	exit
.L1520:
	r0 = 0
	exit
.L1521:
	r0 = 1
.L1519:
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L1528
	r1 = r6
	call	__fixsfdi
	exit
.L1528:
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
	r0 = r1
	r0 &= 1
	r1 = r2
	r1 >>= 1
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 2
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 3
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 4
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 5
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 6
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 7
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 8
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 9
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 10
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 11
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 12
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 13
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 14
	r5 &= 1
	r0 += r5
	r2 >>= 15
	r0 += r2
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r2 = r1;r2 &= 0xffff
	r0 = r1
	r0 &= 1
	r1 = r2
	r1 >>= 1
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 2
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 3
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 4
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 5
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 6
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 7
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 8
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 9
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 10
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 11
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 12
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 13
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 14
	r5 &= 1
	r0 += r5
	r2 >>= 15
	r0 += r2
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r0 = 0
.L1532:
	if r1 == 0 goto .L1537
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	if r1 == 0 goto .L1538
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	r0 = r4;r0 &= 0xffffffff
	if r1 == 0 goto .L1537
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	r0 = r9;r0 &= 0xffffffff
	if r1 == 0 goto .L1537
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	goto .L1532
.L1538:
	exit
.L1537:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r4 = r1;r4 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r4 == 0 goto .L1543
	r0 = 0
.L1541:
	if r2 == 0 goto .L1548
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r4 += r4
	r1 = r4;r1 &= 0xffffffff
	r2 >>= 1
	r0 = r3;r0 &= 0xffffffff
	if r2 == 0 goto .L1549
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r4 += r0
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	r0 = r4;r0 &= 0xffffffff
	if r2 == 0 goto .L1540
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	r0 = r9;r0 &= 0xffffffff
	if r2 == 0 goto .L1540
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r3 += r0
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	r0 = r3;r0 &= 0xffffffff
	goto .L1541
.L1549:
	exit
.L1548:
	exit
.L1543:
	r0 = 0
.L1540:
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
	goto .L1551
.L1558:
	r0 = 0
	goto .L1554
.L1559:
	r0 = 0
	goto .L1554
.L1555:
	r4 >>= 1
	r2 >>= 1
.L1554:
	if r4 == 0 goto .L1577
	if r2 >= r1 goto .L1555
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1555
.L1577:
	if r3 != 0 goto .L1578
.L1557:
	exit
.L1578:
	r0 = r1
	goto .L1557
.L1579:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
.L1551:
	if r2 >= r1 goto .L1558
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1559
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1576
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1558
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1576
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1558
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1576
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1558
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1576
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1558
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1576
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1558
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1576
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1558
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1576
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1558
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1579
.L1576:
	r0 = 0
	goto .L1554
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1583
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1584
.L1582:
	r0 = r8
	r0 &= 1
	exit
.L1584:
	r8 = 0
	goto .L1582
.L1583:
	r0 = -1
	exit
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	3
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	r6 = r1
	r7 = r2
	call	__ltdf2
	if r0 s<= 0 goto .L1588
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1589
.L1587:
	r0 = r8
	r0 &= 1
	exit
.L1589:
	r8 = 0
	goto .L1587
.L1588:
	r0 = -1
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
	if r2 s< 0 goto .L1604
	r3 = 0
.L1593:
	r2 = 33
	r0 = 0
.L1594:
	if r4 == 0 goto .L1595
	r2 += -1
	r2 &= 0xff
	if r2 == 0 goto .L1595
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	r0 s>>= 32
	if r4 == 0 goto .L1595
	r2 += -1
	r2 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 <<= 31
	r4 s>>= 32
	r0 s>>= 32
	if r4 == 0 goto .L1595
	r2 += -1
	r2 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	r0 s>>= 32
	if r4 == 0 goto .L1595
	r2 += -1
	r2 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	r0 s>>= 32
	goto .L1594
.L1604:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r3 = 1
	goto .L1593
.L1595:
	if r3 == 0 goto .L1597
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1597:
	exit
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1610
	r6 = 0
.L1606:
	if r2 s< 0 goto .L1611
.L1607:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1608
	r0 = -r0
.L1608:
	exit
.L1610:
	r1 = -r1
	r6 = 1
	goto .L1606
.L1611:
	r2 = -r2
	r6 ^= 1
	goto .L1607
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L1617
	r6 = 0
.L1613:
	r2 = r0
	if r0 s< 0 goto .L1618
.L1614:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1615
	r0 = -r0
.L1615:
	exit
.L1617:
	r1 = -r1
	r6 = 1
	goto .L1613
.L1618:
	r0 = -r0
	r2 = r0
	goto .L1614
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r1 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r1 goto .L1640
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1641
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1642
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1643
	r2 += r2
	r2 &= 0xffff
	r5 = 4
	if r2 > r1 goto .L1620
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 = 8
	if r2 > r1 goto .L1620
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 <<= 1
	if r2 > r1 goto .L1620
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1620
	r2 += r2
	r2 &= 0xffff
	r5 += r5
	r5 &= 0xffff
.L1620:
	if r5 == 0 goto .L1644
	if r2 >= r1 goto .L1645
	r1 -= r2
	r1 &= 0xffff
	r0 = r5
.L1623:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1624
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1624:
	r5 >>= 1
	r2 >>= 1
	r2 &= 0xffff
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1625
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1625:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1626
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1626:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1627
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1627:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1628
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1628:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1629
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1629:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1630
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1630:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1631
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1631:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1632
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1632:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1633
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1633:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1634
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1634:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1635
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1635:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1636
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1636:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1637
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
.L1637:
	r5 >>= 1
	r2 >>= 1
	if r5 == 0 goto .L1622
	if r2 >= r1 goto .L1622
	r1 -= r2
	r1 &= 0xffff
	r0 |= r5
	r0 &= 0xffff
	goto .L1622
.L1640:
	r5 = 1
	goto .L1620
.L1641:
	r5 = 1
	goto .L1620
.L1642:
	r5 = 2
	goto .L1620
.L1643:
	r5 = 2
	goto .L1620
.L1645:
	r0 = 0
	goto .L1623
.L1644:
	r0 = 0
.L1622:
	if r3 != 0 goto .L1647
.L1639:
	exit
.L1647:
	r0 = r1
	goto .L1639
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
.L1649:
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L1657
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1656
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1674
	r2 += r2
	r4 += r4
	goto .L1649
.L1674:
	r0 = 0
	goto .L1652
.L1656:
	r0 = 0
	goto .L1652
.L1657:
	r0 = 0
	goto .L1652
.L1653:
	r4 >>= 1
	r2 >>= 1
.L1652:
	if r4 == 0 goto .L1675
	if r2 >= r1 goto .L1653
	r1 -= r2
	r0 |= r4
	goto .L1653
.L1675:
	if r3 != 0 goto .L1676
.L1655:
	exit
.L1676:
	r0 = r1
	goto .L1655
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1678
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
.L1679:
	r0 = r1
	exit
.L1678:
	if r2 == 0 goto .L1681
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
	goto .L1679
.L1681:
	r0 = r1
	exit
	.size	__ashldi3, .-__ashldi3
	.align	3
	.global	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L1683
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r4 = r3;r4 &= 0xffffffff
	r0 = r1
	r0 <<= r4
	*(u64 *) (r10+-24) = r0
.L1684:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1683:
	if r3 == 0 goto .L1686
	r4 = *(u64 *) (r10+-16)
	r1 = r3;r1 &= 0xffffffff
	r2 = r4
	r2 <<= r1
	*(u64 *) (r10+-32) = r2
	r5 = *(u64 *) (r10+-8)
	r5 <<= r1
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r4 >>= r3
	r4 |= r5
	*(u64 *) (r10+-24) = r4
	goto .L1684
.L1686:
	r0 = r1
	r1 = r2
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
	if r0 == 0 goto .L1688
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
.L1688:
	if r2 == 0 goto .L1691
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
.L1691:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L1693
	r0 = r2
	r2 s>>= 63
	*(u64 *) (r10+-24) = r2
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	*(u64 *) (r10+-32) = r0
.L1694:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1693:
	if r3 == 0 goto .L1696
	r2 = *(u64 *) (r10+-8)
	r1 = r2
	r1 s>>= r3
	*(u64 *) (r10+-24) = r1
	r4 = 64
	r4 -= r3
	r5 = r4;r5 &= 0xffffffff
	r2 <<= r5
	r3 = r3;r3 &= 0xffffffff
	r9 = *(u64 *) (r10+-16)
	r9 >>= r3
	r2 |= r9
	*(u64 *) (r10+-32) = r2
	goto .L1694
.L1696:
	r0 = r1
	r1 = r2
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
	r3 = 1
	if r1 <= 65534 goto .L1700
	r3 = 0
.L1700:
	r3 &= 1
	r3 <<= 4
	r0 = 16
	r0 -= r3
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r5 = r1;r5 &= 0xffffffff
	r4 = r1
	r4 &= 65280
	r4 += -1
	r4 >>= 63
	r4 <<= 3
	r9 = 8
	r9 -= r4
	r1 = r9;r1 &= 0xffffffff
	r5 >>= r1
	r9 = r5;r9 &= 0xffffffff
	r4 += r3
	r5 &= 240
	r5 += -1
	r5 >>= 63
	r5 <<= 2
	r3 = 4
	r3 -= r5
	r0 = r3;r0 &= 0xffffffff
	r9 >>= r0
	r1 = r9;r1 &= 0xffffffff
	r5 += r4
	r9 &= 12
	r9 += -1
	r9 >>= 63
	r9 += r9
	r0 = 2
	r2 = r0
	r2 -= r9
	r4 = r2;r4 &= 0xffffffff
	r1 >>= r4
	r9 += r5
	r5 = r1
	r5 &= r0
	r5 += -1
	r5 >>= 63
	r0 -= r1
	r0 *= r5
	r0 += r9
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
	if r2 == 0 goto .L1702
	r1 = 0
.L1702:
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
	if r3 s>= r0 goto .L1705
	r4 = r2
	r4 s>>= 32
	r5 = r1
	r5 s>>= 32
	if r5 s> r4 goto .L1706
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1707
	if r1 > r2 goto .L1708
	r0 = 1
	exit
.L1705:
	r0 = 0
	exit
.L1706:
	r0 = 2
	exit
.L1707:
	r0 = 0
	exit
.L1708:
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
	*(u64 *) (r10+-16) = r1
	if r4 s>= r2 goto .L1712
	if r2 s> r4 goto .L1713
	r2 = *(u64 *) (r10+-16)
	if r3 >= r2 goto .L1714
	if r2 > r3 goto .L1715
	r0 = 1
	exit
.L1712:
	r0 = 0
	exit
.L1713:
	r0 = 2
	exit
.L1714:
	r0 = 0
	exit
.L1715:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r0 = r1;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffff
	r3 += -1
	r3 >>= 63
	r3 <<= 4
	r0 >>= r3
	r2 = r0;r2 &= 0xffffffff
	r0 &= 0xff
	r0 += -1
	r0 >>= 63
	r0 <<= 3
	r2 >>= r0
	r1 = r2;r1 &= 0xffffffff
	r0 += r3
	r2 &= 15
	r2 += -1
	r2 >>= 63
	r2 <<= 2
	r1 >>= r2
	r4 = r1;r4 &= 0xffffffff
	r0 += r2
	r1 &= 3
	r1 += -1
	r1 >>= 63
	r1 <<= 1
	r5 = r4
	r5 >>= r1
	r5 &= 3
	r0 += r1
	r2 = r5
	r2 ^= -1
	r2 &= 1
	r5 >>= 1
	r9 = 2
	r9 -= r5
	r3 = r9;r3 &= 0xffffffff
	r2 = -r2
	r3 &= r2
	r0 += r3
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
	if r1 == 0 goto .L1718
	r6 = 0
.L1718:
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
	if r1 != 0 goto .L1720
	if r2 == 0 goto .L1722
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L1720:
	r1 = *(u64 *) (r10+-16)
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1722:
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
	if r0 == 0 goto .L1724
	r0 = r1
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1724:
	if r2 == 0 goto .L1727
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
.L1727:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L1729
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r4 = r3;r4 &= 0xffffffff
	r0 = r2
	r0 >>= r4
	*(u64 *) (r10+-32) = r0
.L1730:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1729:
	if r3 == 0 goto .L1732
	r4 = *(u64 *) (r10+-8)
	r2 = r3;r2 &= 0xffffffff
	r1 = r4
	r1 >>= r2
	*(u64 *) (r10+-24) = r1
	r5 = 64
	r5 -= r3
	r3 = r5;r3 &= 0xffffffff
	r4 <<= r3
	r9 = *(u64 *) (r10+-16)
	r9 >>= r2
	r4 |= r9
	*(u64 *) (r10+-32) = r4
	goto .L1730
.L1732:
	r0 = r1
	r1 = r2
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
	r5 = 4294967295 ll
	r0 = r1
	r0 &= r5
	r3 = r2
	r3 &= r5
	r9 = r0
	r9 *= r3
	r4 = r9
	r4 >>= 32
	r9 &= r5
	r1 >>= 32
	r6 = r1
	r6 *= r3
	r4 += r6
	r3 = r4
	r3 <<= 32
	r6 = r3
	r6 += r9
	r4 >>= 32
	r3 >>= 32
	r6 &= r5
	r2 >>= 32
	r0 *= r2
	r3 += r0
	r0 = r3
	r0 <<= 32
	r0 += r6
	r3 >>= 32
	r3 += r4
	r1 *= r2
	r1 += r3
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	*(u64 *) (r10+-56) = r1
	r6 = r2
	r8 = r3
	r7 = r4
	r2 = r3
	call	__mulddi3
	r6 *= r8
	r2 = *(u64 *) (r10+-56)
	r7 *= r2
	r6 += r7
	r6 += r1
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
	r3 = r1
	r3 = -r3
	r0 = 1
	if r1 != 0 goto .L1739
	r0 = 0
.L1739:
	r1 = r2
	r1 = -r1
	r1 -= r0
	r0 = r3
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
	r2 ^= r1
	r0 = r2
	r0 >>= 32
	r2 = r2;r2 &= 0xffffffff
	r0 ^= r2
	r1 = r0
	r1 >>= 16
	r1 ^= r0
	r3 = r1
	r3 >>= 8
	r3 ^= r1
	r4 = r3
	r4 >>= 4
	r4 ^= r3
	r4 &= 15
	r0 = 27030
	r0 s>>= r4
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
	r3 = r2
	r3 <<= 63
	r1 >>= 1
	r3 |= r1
	r4 = r2
	r4 >>= 1
	r5 = 6148914691236517205 ll
	r3 &= r5
	r4 &= r5
	r9 = r0
	r9 -= r3
	r3 = 1
	if r9 > r0 goto .L1746
	r3 = 0
.L1746:
	r2 -= r4
	r2 -= r3
	r0 = r2
	r0 <<= 62
	r1 = r9
	r1 >>= 2
	r0 |= r1
	r5 = r2
	r5 >>= 2
	r4 = 3689348814741910323 ll
	r0 &= r4
	r5 &= r4
	r9 &= r4
	r2 &= r4
	r4 = r0
	r4 += r9
	r9 = 1
	if r0 >= r4 goto .L1747
	r9 = 0
.L1747:
	r3 = r5
	r3 += r2
	r9 += r3
	r1 = r9
	r1 <<= 60
	r2 = r4
	r2 >>= 4
	r1 |= r2
	r5 = r9
	r5 >>= 4
	r2 = r1
	r2 += r4
	r0 = 1
	if r1 >= r2 goto .L1748
	r0 = 0
.L1748:
	r5 += r9
	r0 += r5
	r4 = 1085102592571150095 ll
	r2 &= r4
	r0 &= r4
	r0 += r2
	r9 = r0
	r9 >>= 32
	r0 += r9
	r3 = r0;r3 &= 0xffffffff
	r1 = r3
	r1 >>= 16
	r1 += r3
	r2 = r1;r2 &= 0xffffffff
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
	goto .L1752
.L1750:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1751
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L1752:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1750
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1750
.L1751:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1754
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L1754:
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
	goto .L1758
.L1756:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1757
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L1758:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1756
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1756
.L1757:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1760
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L1760:
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
	if r3 >= r0 goto .L1763
	r4 = r2
	r4 >>= 32
	r5 = r1
	r5 >>= 32
	if r5 > r4 goto .L1764
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1765
	if r1 > r2 goto .L1766
	r0 = 1
	exit
.L1763:
	r0 = 0
	exit
.L1764:
	r0 = 2
	exit
.L1765:
	r0 = 0
	exit
.L1766:
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
	*(u64 *) (r10+-16) = r1
	if r4 >= r2 goto .L1770
	if r2 > r4 goto .L1771
	r2 = *(u64 *) (r10+-16)
	if r3 >= r2 goto .L1772
	if r2 > r3 goto .L1773
	r0 = 1
	exit
.L1770:
	r0 = 0
	exit
.L1771:
	r0 = 2
	exit
.L1772:
	r0 = 0
	exit
.L1773:
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
