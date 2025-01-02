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
	if r2 > r1 goto .L5
	r0 = r1
	r2 += r3
	r0 += r3
	if r3 == 0 goto .L6
	r4 = r0
	r4 -= r1
	r4 &= 7
	if r4 == 0 goto .L155
	if r4 == 1 goto .L104
	if r4 == 2 goto .L105
	if r4 == 3 goto .L106
	if r4 == 4 goto .L107
	if r4 == 5 goto .L108
	if r4 == 6 goto .L109
	r2 += -1
	r0 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
.L109:
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
.L108:
	r2 += -1
	r0 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
.L107:
	r2 += -1
	r0 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
.L106:
	r2 += -1
	r0 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
.L105:
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
.L104:
	r0 += -1
	r9 = *(u8 *) (r2+-1)
	*(u8 *) (r0+0) = r9
	r2 += -1
	if r1 == r0 goto .L6
.L155:
	r4 = *(u8 *) (r2+-1)
	r2 += -8
	*(u8 *) (r0+-1) = r4
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r0+-2) = r3
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r0+-3) = r5
	r9 = *(u8 *) (r2+4)
	r0 += -8
	*(u8 *) (r0+4) = r9
	r4 = *(u8 *) (r2+3)
	*(u8 *) (r0+3) = r4
	r3 = *(u8 *) (r2+2)
	*(u8 *) (r0+2) = r3
	r5 = *(u8 *) (r2+1)
	*(u8 *) (r0+1) = r5
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	if r1 != r0 goto .L155
.L6:
	r0 = r1
	exit
.L5:
	if r1 == r2 goto .L6
	if r3 == 0 goto .L6
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L8
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L161
.L8:
	r4 = r3
	r0 = r1
	r4 += r1
	r3 &= 7
	if r3 == 0 goto .L157
	if r3 == 1 goto .L116
	if r3 == 2 goto .L117
	if r3 == 3 goto .L118
	if r3 == 4 goto .L119
	if r3 == 5 goto .L120
	if r3 == 6 goto .L121
	r3 = *(u8 *) (r2+0)
	r0 += 1
	*(u8 *) (r1+0) = r3
	r2 += 1
.L121:
	r5 = *(u8 *) (r2+0)
	r0 += 1
	*(u8 *) (r0+-1) = r5
	r2 += 1
.L120:
	r9 = *(u8 *) (r2+0)
	r0 += 1
	*(u8 *) (r0+-1) = r9
	r2 += 1
.L119:
	r3 = *(u8 *) (r2+0)
	r0 += 1
	*(u8 *) (r0+-1) = r3
	r2 += 1
.L118:
	r5 = *(u8 *) (r2+0)
	r0 += 1
	*(u8 *) (r0+-1) = r5
	r2 += 1
.L117:
	r9 = *(u8 *) (r2+0)
	r0 += 1
	*(u8 *) (r0+-1) = r9
	r2 += 1
.L116:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
	if r4 == r0 goto .L6
.L157:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r9 = *(u8 *) (r2+1)
	*(u8 *) (r0+1) = r9
	r3 = *(u8 *) (r2+2)
	*(u8 *) (r0+2) = r3
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r0+3) = r5
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r0+4) = r9
	r3 = *(u8 *) (r2+5)
	*(u8 *) (r0+5) = r3
	r5 = *(u8 *) (r2+6)
	*(u8 *) (r0+6) = r5
	r9 = *(u8 *) (r2+7)
	*(u8 *) (r0+7) = r9
	r2 += 8
	r0 += 8
	if r4 != r0 goto .L157
	goto .L6
.L161:
	r5 = r2
	r9 = r1
	r5 += 1
	r9 -= r5
	if r9 <= 6 goto .L8
	r6 = r3
	r9 = r2
	r6 &= -8
	r0 = r2
	r5 = r6
	r4 = r1
	r5 += -8
	r9 += r6
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L156
	if r5 == 1 goto .L110
	if r5 == 2 goto .L111
	if r5 == 3 goto .L112
	if r5 == 4 goto .L113
	if r5 == 5 goto .L114
	if r5 != 6 goto .L162
.L115:
	r2 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r2
	r0 += 8
.L114:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L113:
	r2 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r2
	r0 += 8
.L112:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L111:
	r2 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r2
	r0 += 8
.L110:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r9 == r0 goto .L154
.L156:
	r2 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r2
	r5 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r5
	r2 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r2
	r5 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r5
	r2 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r2
	r5 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r5
	r2 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r2
	r5 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r5
	r0 += 64
	r4 += 64
	if r9 != r0 goto .L156
.L154:
	r0 = r1
	r4 = r3
	r0 += r6
	r4 -= r6
	if r3 == r6 goto .L6
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	if r4 == 1 goto .L6
	r2 = *(u8 *) (r9+1)
	*(u8 *) (r0+1) = r2
	if r4 == 2 goto .L6
	r5 = *(u8 *) (r9+2)
	*(u8 *) (r0+2) = r5
	if r4 == 3 goto .L6
	r3 = *(u8 *) (r9+3)
	*(u8 *) (r0+3) = r3
	if r4 == 4 goto .L6
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r0+4) = r2
	if r4 == 5 goto .L6
	r5 = *(u8 *) (r9+5)
	*(u8 *) (r0+5) = r5
	if r4 == 6 goto .L6
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r0+6) = r9
	goto .L6
.L162:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r1+0) = r4
	r4 = r1
	r4 += 8
	goto .L115
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	if r4 == 0 goto .L166
	r5 = r4
	r0 = r4
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L224
	if r0 == 1 goto .L207
	if r0 == 2 goto .L208
	if r0 == 3 goto .L209
	if r0 == 4 goto .L210
	if r0 == 5 goto .L211
	if r0 != 6 goto .L226
.L212:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L223
	r4 += -1
	r2 += 1
	r1 += 1
.L211:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L223
	r4 += -1
	r2 += 1
	r1 += 1
.L210:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L223
	r4 += -1
	r2 += 1
	r1 += 1
.L209:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L223
	r4 += -1
	r2 += 1
	r1 += 1
.L208:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L223
	r4 += -1
	r2 += 1
	r1 += 1
.L207:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L223
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L166
.L224:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L223
	r1 += 1
	r5 = *(u8 *) (r2+1)
	*(u8 *) (r1+0) = r5
	r0 = r1
	if r5 == r3 goto .L223
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r1+1) = r9
	r1 += 1
	if r9 == r3 goto .L223
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r0+2) = r5
	r1 = r0
	r1 += 2
	if r5 == r3 goto .L223
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r0+3) = r9
	r1 += 1
	if r9 == r3 goto .L223
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r0+4) = r5
	r1 += 1
	if r5 == r3 goto .L223
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r0+5) = r9
	r1 += 1
	if r9 == r3 goto .L223
	r5 = *(u8 *) (r2+7)
	*(u8 *) (r0+6) = r5
	r1 += 1
	if r5 == r3 goto .L223
	r0 += 7
	r4 += -8
	r2 += 8
	r1 = r0
	if r4 != 0 goto .L224
.L166:
	r0 = 0
	exit
.L223:
	r0 = r1
	r0 += 1
	exit
.L226:
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r4
	if r4 == r3 goto .L223
	r4 = r5
	r2 += 1
	r1 += 1
	goto .L212
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L231
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L286
	if r0 == 1 goto .L268
	if r0 == 2 goto .L269
	if r0 == 3 goto .L270
	if r0 == 4 goto .L271
	if r0 == 5 goto .L272
	if r0 != 6 goto .L288
.L273:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L285
	r1 += 1
	r3 += -1
.L272:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L285
	r1 += 1
	r3 += -1
.L271:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L285
	r1 += 1
	r3 += -1
.L270:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L285
	r1 += 1
	r3 += -1
.L269:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L285
	r1 += 1
	r3 += -1
.L268:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L285
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L231
.L286:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L285
	r1 += 1
	r0 = r1
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L285
	r1 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L285
	r1 = r0
	r4 = *(u8 *) (r0+2)
	r1 += 2
	if r4 == r2 goto .L285
	r1 += 1
	r5 = *(u8 *) (r0+3)
	if r5 == r2 goto .L285
	r1 += 1
	r9 = *(u8 *) (r0+4)
	if r9 == r2 goto .L285
	r1 += 1
	r4 = *(u8 *) (r0+5)
	if r4 == r2 goto .L285
	r1 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == r2 goto .L285
	r0 += 7
	r3 += -8
	r1 = r0
	if r3 != 0 goto .L286
.L231:
	r0 = 0
	exit
.L285:
	r0 = r1
	exit
.L288:
	r3 = *(u8 *) (r1+0)
	if r3 == r2 goto .L285
	r1 += 1
	r3 = r4
	goto .L273
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L294
	r5 = r3
	r0 = r3
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L350
	if r0 == 1 goto .L331
	if r0 == 2 goto .L332
	if r0 == 3 goto .L333
	if r0 == 4 goto .L334
	if r0 == 5 goto .L335
	if r0 != 6 goto .L352
.L336:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r3 += -1
	r1 += 1
	r2 += 1
.L335:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r3 += -1
	r1 += 1
	r2 += 1
.L334:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r3 += -1
	r1 += 1
	r2 += 1
.L333:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r3 += -1
	r1 += 1
	r2 += 1
.L332:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r3 += -1
	r1 += 1
	r2 += 1
.L331:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L294
.L350:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r0 = *(u8 *) (r1+1)
	r4 = *(u8 *) (r2+1)
	if r0 != r4 goto .L349
	r0 = *(u8 *) (r1+2)
	r4 = *(u8 *) (r2+2)
	if r0 != r4 goto .L349
	r0 = *(u8 *) (r1+3)
	r4 = *(u8 *) (r2+3)
	if r0 != r4 goto .L349
	r0 = *(u8 *) (r1+4)
	r4 = *(u8 *) (r2+4)
	if r0 != r4 goto .L349
	r0 = *(u8 *) (r1+5)
	r4 = *(u8 *) (r2+5)
	if r0 != r4 goto .L349
	r0 = *(u8 *) (r1+6)
	r4 = *(u8 *) (r2+6)
	if r0 != r4 goto .L349
	r0 = *(u8 *) (r1+7)
	r4 = *(u8 *) (r2+7)
	if r0 != r4 goto .L349
	r3 += -8
	r1 += 8
	r2 += 8
	if r3 != 0 goto .L350
.L294:
	r0 = 0
	exit
.L349:
	r0 -= r4
	exit
.L352:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L349
	r3 = r5
	r1 += 1
	r2 += 1
	goto .L336
	.size	memcmp, .-memcmp
	.align	3
	.global	memrchr
	.type	memrchr, @function
memrchr:
	r3 += -1
	r4 = r1
	r2 &= 0xff
	r4 += -1
	r1 += r3
	r3 = r1
	r3 -= r4
	r3 &= 7
	if r3 == 0 goto .L387
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L353
	if r3 == 1 goto .L387
	if r3 == 2 goto .L368
	if r3 == 3 goto .L366
	if r3 == 4 goto .L364
	if r3 == 5 goto .L362
	if r3 != 6 goto .L389
.L360:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L353
.L362:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L353
.L364:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 == r2 goto .L353
.L366:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L353
.L368:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L390
.L387:
	if r1 == r4 goto .L391
	r5 = r1
	r0 = r1
	r5 += -1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L392
	r9 = r1
	r0 = r5
	r9 += -2
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L353
	r5 = r1
	r0 = r9
	r5 += -3
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L353
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L353
	r5 += -2
	r0 = r9
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L353
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L353
	r0 = r9
	r5 += -2
	r9 = *(u8 *) (r9+0)
	if r9 == r2 goto .L353
	r0 = r5
	r1 += -8
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L387
	exit
.L391:
	r0 = 0
.L353:
	exit
.L389:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 != r2 goto .L360
	exit
.L392:
	exit
.L390:
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	r0 = r1
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L394
.L395:
	r0 += 1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 = r0
	if r4 == 0 goto .L394
	r5 = *(u8 *) (r2+2)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L394
	r0 = r3
	r9 = *(u8 *) (r2+3)
	r0 += 2
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L394
	r1 = *(u8 *) (r2+4)
	r0 += 1
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L394
	r4 = *(u8 *) (r2+5)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L394
	r3 = *(u8 *) (r2+6)
	r0 += 1
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L394
	r5 = *(u8 *) (r2+7)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	r2 += 8
	if r5 == 0 goto .L394
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L395
	exit
.L394:
	exit
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	r0 = r1
	r2 &= 0xff
	r1 = *(u8 *) (r1+0)
	r1 <<= 56
	r4 = r1
	r4 s>>= 56
	if r1 != 0 goto .L415
	goto .L414
.L417:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L414
.L415:
	r4 &= 0xff
	if r4 != r2 goto .L417
.L414:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	goto .L424
.L427:
	r0 += 1
	if r3 == 0 goto .L426
.L424:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r2 goto .L427
	exit
.L426:
	r0 = r3
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L438
.L429:
	if r0 == 0 goto .L430
	r1 += 1
	r2 += 1
.L438:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 <<= 56
	r3 <<= 56
	r0 s>>= 56
	r3 s>>= 56
	if r0 == r3 goto .L429
	r0 &= 0xff
.L430:
	r3 &= 0xff
	r0 -= r3
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r0 = r2
	r0 s>>= 56
	if r2 == 0 goto .L439
	r0 = r1
.L441:
	r0 += 1
	r4 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L458
	r0 += 1
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L458
	r0 = r4
	r9 = *(u8 *) (r4+2)
	r0 += 2
	if r9 == 0 goto .L458
	r0 += 1
	r2 = *(u8 *) (r4+3)
	if r2 == 0 goto .L458
	r0 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L458
	r0 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L458
	r0 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L458
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L441
.L458:
	r0 -= r1
.L439:
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L467
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L550
	r3 += -1
	r9 = r1
	r9 += r3
	r3 &= 7
	if r3 == 0 goto .L548
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L547
	r2 = r0
	if r3 == 1 goto .L548
	if r3 == 2 goto .L532
	if r3 == 3 goto .L533
	if r3 == 4 goto .L534
	if r3 == 5 goto .L535
	if r3 == 6 goto .L536
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 1
	r0 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L547
	r2 = r0
.L536:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L547
	r2 = r3
.L535:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 1
	r5 = r2
	r4 = *(u8 *) (r1+0)
	r5 += 1
	if r4 == 0 goto .L547
	r2 = r5
.L534:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L547
	r2 = r0
.L533:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L547
	r2 = r3
.L532:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L547
	r2 = r0
.L548:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r1 == r9 goto .L462
	if r5 != r4 goto .L462
	r3 = r1
	r0 = r2
	r3 += 1
	r0 += 1
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L547
	r2 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L547
	r2 += 1
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+3)
	if r4 == 0 goto .L547
	r2 = r0
	r5 = *(u8 *) (r0+2)
	r2 += 2
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L547
	r2 += 1
	r5 = *(u8 *) (r0+3)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L547
	r2 += 1
	r5 = *(u8 *) (r0+4)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r3+5)
	if r4 == 0 goto .L547
	r2 += 1
	r5 = *(u8 *) (r0+5)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L547
	r2 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 = r3
	r4 = *(u8 *) (r3+7)
	r1 += 7
	if r4 == 0 goto .L547
	r0 += 7
	r2 = r0
	goto .L548
.L547:
	r5 = *(u8 *) (r2+1)
	r4 = 0
.L462:
	r4 -= r5
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	exit
.L467:
	r0 = r3
	exit
.L550:
	r5 = *(u8 *) (r2+0)
	goto .L462
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L551
	r3 += -2
	r3 &= -2
	r0 = r1
	r4 = r2
	r0 += 1
	r5 = r1
	r4 += 1
	r5 += r3
	r5 += 3
	r3 = r5
	r3 -= r0
	r3 += -2
	r3 >>= 1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L590
	if r3 == 1 goto .L576
	if r3 == 2 goto .L577
	if r3 == 3 goto .L578
	if r3 == 4 goto .L579
	if r3 == 5 goto .L580
	if r3 != 6 goto .L592
.L581:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L580:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L579:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L578:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L577:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L576:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L593
.L590:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r9 = *(u8 *) (r0+2)
	*(u8 *) (r2+2) = r9
	r3 = *(u8 *) (r1+2)
	*(u8 *) (r4+2) = r3
	r9 = *(u8 *) (r0+4)
	*(u8 *) (r2+4) = r9
	r3 = *(u8 *) (r1+4)
	*(u8 *) (r4+4) = r3
	r9 = *(u8 *) (r0+6)
	*(u8 *) (r2+6) = r9
	r3 = *(u8 *) (r1+6)
	*(u8 *) (r4+6) = r3
	r9 = *(u8 *) (r0+8)
	*(u8 *) (r2+8) = r9
	r3 = *(u8 *) (r1+8)
	*(u8 *) (r4+8) = r3
	r9 = *(u8 *) (r0+10)
	*(u8 *) (r2+10) = r9
	r3 = *(u8 *) (r1+10)
	*(u8 *) (r4+10) = r3
	r9 = *(u8 *) (r0+12)
	*(u8 *) (r2+12) = r9
	r3 = *(u8 *) (r1+12)
	*(u8 *) (r4+12) = r3
	r9 = *(u8 *) (r0+14)
	*(u8 *) (r2+14) = r9
	r3 = *(u8 *) (r1+14)
	*(u8 *) (r4+14) = r3
	r2 += 16
	r1 += 16
	r0 += 16
	r4 += 16
	if r0 != r5 goto .L590
.L551:
	exit
.L592:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L581
.L593:
	exit
	.size	swab, .-swab
	.align	3
	.global	isalpha
	.type	isalpha, @function
isalpha:
	r0 = r1
	r1 = 1
	r0 <<= 32
	r0 s>>= 32
	r0 |= 32
	r0 += -97
	r2 = r0;r2 &= 0xffffffff
	if r2 <= 24 goto .L595
	r1 = 0
.L595:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L597
	r0 = 0
.L597:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L600
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L600:
	r0 = 1
	exit
	.size	isblank, .-isblank
	.align	3
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	r1 <<= 32
	r0 = r1
	r1 >>= 32
	r0 s>>= 32
	if r1 <= 30 goto .L603
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L603:
	r0 = 1
	exit
	.size	iscntrl, .-iscntrl
	.align	3
	.global	isdigit
	.type	isdigit, @function
isdigit:
	r1 += -48
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 8 goto .L605
	r0 = 0
.L605:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L607
	r0 = 0
.L607:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L609
	r0 = 0
.L609:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L611
	r0 = 0
.L611:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L615
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 3 goto .L616
	r0 &= 1
	exit
.L616:
	r0 = 0
	r0 &= 1
	exit
.L615:
	r0 = 1
	exit
	.size	isspace, .-isspace
	.align	3
	.global	isupper
	.type	isupper, @function
isupper:
	r1 += -65
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L618
	r0 = 0
.L618:
	exit
	.size	isupper, .-isupper
	.align	3
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	r1 <<= 32
	r0 = r1
	r1 >>= 32
	r0 s>>= 32
	if r1 <= 30 goto .L624
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 31 goto .L625
.L624:
	r0 = 1
	exit
.L625:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L624
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L621
	r9 = 0
.L621:
	r0 = r9
	r0 &= 1
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	r1 += -48
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 8 goto .L627
	r0 = 0
.L627:
	exit
	.size	iswdigit, .-iswdigit
	.align	3
	.global	iswprint
	.type	iswprint, @function
iswprint:
	r1 <<= 32
	r0 = r1
	r1 >>= 32
	r0 s>>= 32
	if r1 <= 254 goto .L636
	if r1 <= 8230 goto .L634
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L634
	r2 += -49110
	if r2 <= 8183 goto .L634
	r1 += -65532
	if r1 > 1048579 goto .L635
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L634:
	r0 = 1
	exit
.L636:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s<= 32 goto .L637
	r0 = r1
	r0 &= 1
	exit
.L637:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L635:
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
	if r2 <= 8 goto .L641
	r1 |= 32
	r0 = 1
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L642
	r0 &= 1
	exit
.L641:
	r0 = 1
	exit
.L642:
	r0 = 0
	r0 &= 1
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
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L647
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L648
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L651
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L651:
	r0 = 0x0000000000000000 ll
	exit
.L647:
	r0 = r6
	exit
.L648:
	r0 = r7
	exit
	.size	fdim, .-fdim
	.align	3
	.global	fdimf
	.type	fdimf, @function
fdimf:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L655
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L656
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L659
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L659:
	r0 = 0x00000000 ll
	exit
.L655:
	r0 = r6
	exit
.L656:
	r0 = r7
	exit
	.size	fdimf, .-fdimf
	.align	3
	.global	fmax
	.type	fmax, @function
fmax:
	r6 = r2
	r7 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L668
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L667
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L662
	if r0 != 0 goto .L668
.L667:
	r0 = r7
	exit
.L662:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L668
	r6 = r7
.L668:
	r0 = r6
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	r6 = r2
	r7 = r1
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L679
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L678
	r0 = r7
	r1 = r6
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L673
	if r2 != 0 goto .L679
.L678:
	r0 = r7
	exit
.L673:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L679
	r6 = r7
.L679:
	r0 = r6
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	r6 = r2
	r7 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L690
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L689
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L684
	if r0 != 0 goto .L690
.L689:
	r0 = r7
	exit
.L684:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L690
	r6 = r7
.L690:
	r0 = r6
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L699
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L701
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L695
	if r0 != 0 goto .L701
.L699:
	r0 = r7
	exit
.L695:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L701
	r6 = r7
.L701:
	r0 = r6
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L710
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L712
	r0 = r6
	r1 = r7
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L706
	if r2 != 0 goto .L712
.L710:
	r0 = r7
	exit
.L706:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L712
	r6 = r7
.L712:
	r0 = r6
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L721
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L723
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L717
	if r0 != 0 goto .L723
.L721:
	r0 = r7
	exit
.L717:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L723
	r6 = r7
.L723:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L727
	r4 = r1
	r2 = digits ll
	r4 &= 63
	r3 = r2
	r3 += r4
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	r9 = r0
	if r1 == 0 goto .L727
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L727
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 = r9
	r0 += 2
	if r1 == 0 goto .L727
	r9 = r1
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L727
	r5 = r1
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L727
	r2 += r1
	r0 += 1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+-1) = r1
.L727:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
	.size	l64a, .-l64a
	.align	3
	.global	srand
	.type	srand, @function
srand:
	r0 = seed ll
	r1 += -1
	r1 = r1;r1 &= 0xffffffff
	*(u64 *) (r0+0) = r1
	exit
	.size	srand, .-srand
	.align	3
	.global	rand
	.type	rand, @function
rand:
	r1 = seed ll
	r2 = 6364136223846793005 ll
	r0 = *(u64 *) (r1+0)
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
	if r2 == 0 goto .L753
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L747
	*(u64 *) (r2+8) = r1
.L747:
	exit
.L753:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L755
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L755:
	r1 = *(u64 *) (r1+8)
	if r1 == 0 goto .L754
	*(u64 *) (r1+0) = r0
.L754:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L765
	exit
.L765:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r4 = 4
.L773:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L767
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L767
	if r0 == 43 goto .L768
	if r0 != 45 goto .L793
	r3 = *(u8 *) (r1+1)
	r1 += 1
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r4 = r3;r4 &= 0xffffffff
	if r4 > 9 goto .L778
	r5 = 1
.L771:
	r0 = 0
	r9 = 9
.L775:
	r2 = *(u8 *) (r1+1)
	r6 = r0
	r6 <<= 2
	r0 += r6
	r4 = r3
	r3 = r2
	r2 = r0
	r3 <<= 56
	r2 <<= 33
	r3 s>>= 56
	r2 s>>= 32
	r3 += -48
	r0 = r2
	r6 = r3;r6 &= 0xffffffff
	r0 -= r4
	r0 <<= 32
	r0 s>>= 32
	if r9 <= r6 goto .L791
	r7 = r0
	r7 <<= 2
	r0 += r7
	r6 = *(u8 *) (r1+2)
	r2 = r0
	r4 = r3
	r6 <<= 56
	r2 <<= 33
	r6 s>>= 56
	r2 s>>= 32
	r6 += -48
	r0 = r2
	r0 -= r3
	r3 = r6;r3 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r9 <= r3 goto .L791
	r7 = r0
	r7 <<= 2
	r0 += r7
	r3 = *(u8 *) (r1+3)
	r2 = r0
	r4 = r6
	r3 <<= 56
	r2 <<= 33
	r3 s>>= 56
	r2 s>>= 32
	r3 += -48
	r0 = r2
	r0 -= r6
	r6 = r3;r6 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r9 <= r6 goto .L791
	r4 = r0
	r4 <<= 2
	r0 += r4
	r1 += 4
	r2 = r0
	r4 = r3
	r2 <<= 33
	r3 = *(u8 *) (r1+0)
	r2 s>>= 32
	r3 <<= 56
	r0 = r2
	r3 s>>= 56
	r0 -= r4
	r3 += -48
	r0 <<= 32
	r6 = r3;r6 &= 0xffffffff
	r0 s>>= 32
	if r9 > r6 goto .L775
.L791:
	if r5 != 0 goto .L774
	r0 = r4
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	exit
.L767:
	r1 += 1
	goto .L773
.L793:
	r3 += -48
	if r3 > 8 goto .L778
	r0 += -48
	r5 = 0
	r3 = r0
	goto .L771
.L768:
	r3 = *(u8 *) (r1+1)
	r5 = 0
	r3 <<= 56
	r1 += 1
	r3 s>>= 56
	r3 += -48
	r9 = r3;r9 &= 0xffffffff
	if r9 <= 8 goto .L771
.L778:
	r0 = 0
.L774:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 4
.L801:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L795
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L795
	if r0 == 43 goto .L796
	if r0 != 45 goto .L821
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 9 goto .L806
	r5 = 1
.L799:
	r2 = 0
	r9 = 9
.L803:
	r6 = *(u8 *) (r1+1)
	r4 = r0
	r2 *= 10
	r0 = r6
	r3 = r2
	r0 <<= 56
	r2 -= r4
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 <= r6 goto .L819
	r6 = *(u8 *) (r1+2)
	r2 *= 10
	r4 = r0
	r3 = r2
	r0 = r6
	r2 -= r4
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 <= r6 goto .L819
	r6 = *(u8 *) (r1+3)
	r2 *= 10
	r4 = r0
	r3 = r2
	r0 = r6
	r2 -= r4
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 <= r6 goto .L819
	r2 *= 10
	r4 = r0
	r3 = r2
	r1 += 4
	r2 -= r4
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 > r6 goto .L803
.L819:
	if r5 != 0 goto .L794
	r2 = r4
	r2 -= r3
.L794:
	r0 = r2
	exit
.L795:
	r1 += 1
	goto .L801
.L821:
	r3 += -48
	if r3 > 8 goto .L806
	r5 = 0
	r0 += -48
	goto .L799
.L796:
	r0 = *(u8 *) (r1+1)
	r5 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 8 goto .L799
.L806:
	r2 = 0
	r0 = r2
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r4 = 4
.L827:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L823
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L823
	if r0 == 43 goto .L824
	if r0 != 45 goto .L849
	r0 = *(u8 *) (r1+1)
	r5 = 1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 8 goto .L834
.L828:
	r2 = 0
	r9 = 9
.L831:
	r6 = *(u8 *) (r1+1)
	r4 = r0
	r2 *= 10
	r0 = r6
	r3 = r2
	r0 <<= 56
	r2 -= r4
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 <= r6 goto .L847
	r6 = *(u8 *) (r1+2)
	r2 *= 10
	r4 = r0
	r3 = r2
	r0 = r6
	r2 -= r4
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 <= r6 goto .L847
	r6 = *(u8 *) (r1+3)
	r2 *= 10
	r4 = r0
	r3 = r2
	r0 = r6
	r2 -= r4
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 <= r6 goto .L847
	r2 *= 10
	r4 = r0
	r3 = r2
	r1 += 4
	r2 -= r4
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r6 = r0;r6 &= 0xffffffff
	if r9 > r6 goto .L831
.L847:
	if r5 != 0 goto .L822
	r2 = r4
	r2 -= r3
.L822:
	r0 = r2
	exit
.L823:
	r1 += 1
	goto .L827
.L849:
	r3 += -48
	if r3 > 8 goto .L834
	r5 = 0
	r0 += -48
	goto .L828
.L824:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L834
	r5 = 0
	goto .L828
.L834:
	r2 = 0
	r0 = r2
	exit
	.size	atoll, .-atoll
	.align	3
	.global	div
	.type	div, @function
div:
	r2 <<= 32
	r3 <<= 32
	r3 s>>= 32
	r6 = r1
	r8 = r3
	r7 = r2
	r2 = r3
	r7 s>>= 32
	r1 = r7
	call	__divdi3
	r2 = r8
	*(u32 *) (r6+0) = r0
	r1 = r7
	call	__moddi3
	*(u32 *) (r6+4) = r0
	r0 = r6
	exit
	.size	div, .-div
	.align	3
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	r0 = r1
	if r1 s< 0 goto .L853
	exit
.L853:
	r0 = -r0
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
	r2 = r8
	*(u64 *) (r6+0) = r0
	r1 = r7
	call	__moddi3
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	imaxdiv, .-imaxdiv
	.align	3
	.global	labs
	.type	labs, @function
labs:
	r0 = r1
	if r1 s< 0 goto .L857
	exit
.L857:
	r0 = -r0
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
	r2 = r8
	*(u64 *) (r6+0) = r0
	r1 = r7
	call	__moddi3
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	ldiv, .-ldiv
	.align	3
	.global	llabs
	.type	llabs, @function
llabs:
	r0 = r1
	if r1 s< 0 goto .L861
	exit
.L861:
	r0 = -r0
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
	r2 = r8
	*(u64 *) (r6+0) = r0
	r1 = r7
	call	__moddi3
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	lldiv, .-lldiv
	.align	3
	.global	wcschr
	.type	wcschr, @function
wcschr:
	r2 <<= 32
	r3 = *(u32 *) (r1+0)
	r2 s>>= 32
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 == 0 goto .L871
.L864:
	if r2 == r0 goto .L872
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L864
	exit
.L872:
	r0 = r1
	exit
.L871:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L883
.L884:
	if r3 == 0 goto .L875
	r1 += 4
	r2 += 4
.L883:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L884
.L875:
	if r4 s>= r3 goto .L879
	r0 = 1
	if r3 s<= r4 goto .L885
	r0 &= 1
	exit
.L879:
	r0 = -1
	exit
.L885:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L887:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L903
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L903
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L903
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L903
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L903
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L903
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L903
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L887
.L903:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r2 = *(u32 *) (r1+0)
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	if r2 == 0 goto .L904
	r0 = r1
.L906:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L923
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if r5 == 0 goto .L923
	r0 = r4
	r9 = *(u32 *) (r4+8)
	r0 += 8
	if r9 == 0 goto .L923
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L923
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L923
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L923
	r0 += 4
	r9 = *(u32 *) (r4+24)
	if r9 == 0 goto .L923
	r0 += 4
	r4 = *(u32 *) (r4+28)
	if r4 != 0 goto .L906
.L923:
	r0 -= r1
	r0 s>>= 2
.L904:
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L931
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L959
	if r0 == 1 goto .L948
	if r0 == 2 goto .L949
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L927
	if r5 == 0 goto .L927
	r3 = r4
	r1 += 4
	r2 += 4
.L949:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L927
	if r9 == 0 goto .L927
	r3 += -1
	r1 += 4
	r2 += 4
.L948:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L927
	if r5 == 0 goto .L927
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L931
.L959:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L927
	if r0 == 0 goto .L927
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r5 = r1
	r0 <<= 32
	r4 = r2
	r6 = r0
	r9 <<= 32
	r6 s>>= 32
	if r0 != r9 goto .L927
	if r6 == 0 goto .L927
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L927
	if r6 == 0 goto .L927
	r1 = r5
	r2 = r4
	r1 += 8
	r2 += 8
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r5 <<= 32
	r4 <<= 32
	r6 = r4
	r6 s>>= 32
	if r4 != r5 goto .L927
	if r6 == 0 goto .L927
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L959
.L931:
	r0 = 0
	exit
.L927:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L961
	r0 = 1
	if r2 s<= r1 goto .L962
	r0 &= 1
	exit
.L961:
	r0 = -1
	exit
.L962:
	r0 = 0
	r0 &= 1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L967
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L1022
	if r0 == 1 goto .L1004
	if r0 == 2 goto .L1005
	if r0 == 3 goto .L1006
	if r0 == 4 goto .L1007
	if r0 == 5 goto .L1008
	if r0 != 6 goto .L1024
.L1009:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L1021
	r3 += -1
	r1 += 4
.L1008:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1021
	r3 += -1
	r1 += 4
.L1007:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1021
	r3 += -1
	r1 += 4
.L1006:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L1021
	r3 += -1
	r1 += 4
.L1005:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L1021
	r3 += -1
	r1 += 4
.L1004:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1021
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L967
.L1022:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1021
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L1021
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1021
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1021
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L1021
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L1021
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1021
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1021
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L1022
.L967:
	r0 = 0
	exit
.L1021:
	r0 = r1
	exit
.L1024:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L1021
	r3 = r4
	r1 += 4
	goto .L1009
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L1032
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L1088
	if r0 == 1 goto .L1069
	if r0 == 2 goto .L1070
	if r0 == 3 goto .L1071
	if r0 == 4 goto .L1072
	if r0 == 5 goto .L1073
	if r0 != 6 goto .L1090
.L1074:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 += -1
	r1 += 4
	r2 += 4
.L1073:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 += -1
	r1 += 4
	r2 += 4
.L1072:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 += -1
	r1 += 4
	r2 += 4
.L1071:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 += -1
	r1 += 4
	r2 += 4
.L1070:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 += -1
	r1 += 4
	r2 += 4
.L1069:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L1032
.L1088:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L1088
.L1032:
	r0 = 0
	exit
.L1087:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L1091
	r0 = 1
	if r4 s<= r5 goto .L1092
	r0 &= 1
	exit
.L1091:
	r0 = -1
	exit
.L1092:
	r0 = 0
	r0 &= 1
	exit
.L1090:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1087
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L1074
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1112
	r9 = r3
	r6 = r3
	r5 = r1
	r4 = r1
	r0 = r2
	r9 += -1
	r6 <<= 2
	r5 -= r2
	if r6 < r5 goto .L1234
	if r3 == 0 goto .L1112
	r9 <<= 2
	r3 = r1
	r4 = r9
	r0 += r9
	r4 >>= 2
	r3 += r9
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1228
	if r4 == 1 goto .L1182
	if r4 == 2 goto .L1183
	if r4 == 3 goto .L1184
	if r4 == 4 goto .L1185
	if r4 == 5 goto .L1186
	if r4 != 6 goto .L1235
.L1187:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1186:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1185:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
.L1184:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1183:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1182:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r5
	r9 = r0
	r3 += -4
	r0 += -4
	if r2 == r9 goto .L1112
.L1228:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r4
	r5 = *(u32 *) (r0+-4)
	*(u32 *) (r3+-4) = r5
	r4 = *(u32 *) (r0+-8)
	*(u32 *) (r3+-8) = r4
	r5 = *(u32 *) (r0+-12)
	*(u32 *) (r3+-12) = r5
	r4 = *(u32 *) (r0+-16)
	*(u32 *) (r3+-16) = r4
	r5 = *(u32 *) (r0+-20)
	r9 = r0
	*(u32 *) (r3+-20) = r5
	r9 += -28
	r4 = *(u32 *) (r0+-24)
	*(u32 *) (r3+-24) = r4
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r3+-28) = r5
	r0 += -32
	r3 += -32
	if r2 != r9 goto .L1228
.L1112:
	r0 = r1
	exit
.L1234:
	if r3 == 0 goto .L1112
	if r9 <= 7 goto .L1188
	r5 = r2
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L1188
	r6 = r2
	r6 += 4
	r7 = r1
	r7 ^= r6
	r6 = r7
	r6 = -r6
	r6 |= r7
	if r6 s>= 0 goto .L1188
	r9 = r3
	r9 >>= 1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1229
	if r6 == 1 goto .L1195
	if r6 == 2 goto .L1196
	if r6 == 3 goto .L1197
	if r6 == 4 goto .L1198
	if r6 == 5 goto .L1199
	if r6 != 6 goto .L1236
.L1200:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1199:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1198:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1197:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1196:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1195:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r5 += 1
	r0 += 8
	r4 += 8
	if r9 == r5 goto .L1227
.L1229:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r6 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r6
	r6 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r6
	r6 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r6
	r6 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r6
	r6 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r6
	r6 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r6
	r6 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r6
	r5 += 8
	r0 += 64
	r4 += 64
	if r9 != r5 goto .L1229
.L1227:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1112
	r3 &= -2
	r3 <<= 2
	r9 = r1
	r2 += r3
	r9 += r3
	r0 = r1
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r3
	exit
.L1188:
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1230
	if r3 == 1 goto .L1189
	if r3 == 2 goto .L1190
	if r3 == 3 goto .L1191
	if r3 == 4 goto .L1192
	if r3 == 5 goto .L1193
	if r3 == 6 goto .L1194
	r0 = *(u32 *) (r2+0)
	r4 = r1
	*(u32 *) (r1+0) = r0
	r9 += -1
	r0 = r2
	r4 += 4
	r0 += 4
.L1194:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1193:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1192:
	r3 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1191:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1190:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1189:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r9 += -1
	r4 += 4
	r0 += 4
	if r9 == -1 goto .L1112
.L1230:
	r2 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r2
	r5 = *(u32 *) (r0+4)
	*(u32 *) (r4+4) = r5
	r3 = *(u32 *) (r0+8)
	*(u32 *) (r4+8) = r3
	r2 = *(u32 *) (r0+12)
	*(u32 *) (r4+12) = r2
	r5 = *(u32 *) (r0+16)
	*(u32 *) (r4+16) = r5
	r3 = *(u32 *) (r0+20)
	*(u32 *) (r4+20) = r3
	r2 = *(u32 *) (r0+24)
	*(u32 *) (r4+24) = r2
	r5 = *(u32 *) (r0+28)
	*(u32 *) (r4+28) = r5
	r9 += -8
	r4 += 32
	r0 += 32
	if r9 != -1 goto .L1230
	goto .L1112
.L1235:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
	goto .L1187
.L1236:
	r4 = *(u64 *) (r2+0)
	r5 = 1
	*(u64 *) (r1+0) = r4
	r0 += 8
	r4 = r1
	r4 += 8
	goto .L1200
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r9 = r3
	r2 s>>= 32
	r9 += -1
	if r3 == 0 goto .L1238
	r0 = r1
	r6 = r1
	r0 >>= 2
	r0 &= 1
	if r9 <= 4 goto .L1239
	if r0 == 0 goto .L1240
	r6 += 4
	*(u32 *) (r1+0) = r2
	r9 += -1
.L1240:
	r3 -= r0
	r5 = r2
	r0 <<= 2
	r5 <<= 32
	r4 = r0
	r7 = r3
	r0 = r1
	r7 >>= 1
	r0 += r4
	r8 = r7
	r4 = r2;r4 &= 0xffffffff
	r8 &= 7
	r4 |= r5
	r5 = 0
	if r8 == r5 goto .L1303
	if r8 == 1 goto .L1281
	if r8 == 2 goto .L1282
	if r8 == 3 goto .L1283
	if r8 == 4 goto .L1284
	if r8 == 5 goto .L1285
	if r8 != 6 goto .L1305
.L1286:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1285:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1284:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1283:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1282:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1281:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
	if r5 == r7 goto .L1302
.L1303:
	*(u64 *) (r0+0) = r4
	*(u64 *) (r0+8) = r4
	*(u64 *) (r0+16) = r4
	*(u64 *) (r0+24) = r4
	*(u64 *) (r0+32) = r4
	*(u64 *) (r0+40) = r4
	*(u64 *) (r0+48) = r4
	*(u64 *) (r0+56) = r4
	r5 += 8
	r0 += 64
	if r5 != r7 goto .L1303
.L1302:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1238
	r3 &= -2
	r4 = r3
	r9 -= r3
	r4 <<= 2
	r6 += r4
.L1239:
	*(u32 *) (r6+0) = r2
	if r9 == 0 goto .L1238
	*(u32 *) (r6+4) = r2
	if r9 == 1 goto .L1238
	*(u32 *) (r6+8) = r2
	if r9 == 2 goto .L1238
	*(u32 *) (r6+12) = r2
	if r9 == 3 goto .L1238
	*(u32 *) (r6+16) = r2
	if r9 == 4 goto .L1238
	*(u32 *) (r6+20) = r2
.L1238:
	r0 = r1
	exit
.L1305:
	*(u64 *) (r0+0) = r4
	r5 = 1
	r0 += 8
	goto .L1286
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1307
	r0 = r1
	r2 += r3
	r0 += r3
	if r3 == 0 goto .L1306
	r5 = r0
	r5 -= r1
	r5 &= 7
	if r5 == 0 goto .L1457
	if r5 == 1 goto .L1406
	if r5 == 2 goto .L1407
	if r5 == 3 goto .L1408
	if r5 == 4 goto .L1409
	if r5 == 5 goto .L1410
	if r5 == 6 goto .L1411
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1411:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1410:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1409:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1408:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1407:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1406:
	r2 += -1
	r9 = *(u8 *) (r0+-1)
	*(u8 *) (r2+0) = r9
	r0 += -1
	if r1 == r0 goto .L1463
.L1457:
	r5 = *(u8 *) (r0+-1)
	r0 += -8
	*(u8 *) (r2+-1) = r5
	r3 = *(u8 *) (r0+6)
	*(u8 *) (r2+-2) = r3
	r4 = *(u8 *) (r0+5)
	*(u8 *) (r2+-3) = r4
	r9 = *(u8 *) (r0+4)
	r2 += -8
	*(u8 *) (r2+4) = r9
	r5 = *(u8 *) (r0+3)
	*(u8 *) (r2+3) = r5
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r2+2) = r3
	r4 = *(u8 *) (r0+1)
	*(u8 *) (r2+1) = r4
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	if r1 != r0 goto .L1457
	exit
.L1307:
	if r1 != r2 goto .L1464
.L1306:
	exit
.L1464:
	if r3 == 0 goto .L1306
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L1310
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L1465
.L1310:
	r0 = r1
	r0 += r3
	r3 &= 7
	if r3 == 0 goto .L1459
	if r3 == 1 goto .L1418
	if r3 == 2 goto .L1419
	if r3 == 3 goto .L1420
	if r3 == 4 goto .L1421
	if r3 == 5 goto .L1422
	if r3 == 6 goto .L1423
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1423:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1422:
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1421:
	r9 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r9
	r1 += 1
.L1420:
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1419:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1418:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
	if r0 == r1 goto .L1466
.L1459:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+1)
	*(u8 *) (r2+1) = r3
	r4 = *(u8 *) (r1+2)
	*(u8 *) (r2+2) = r4
	r5 = *(u8 *) (r1+3)
	*(u8 *) (r2+3) = r5
	r9 = *(u8 *) (r1+4)
	*(u8 *) (r2+4) = r9
	r3 = *(u8 *) (r1+5)
	*(u8 *) (r2+5) = r3
	r4 = *(u8 *) (r1+6)
	*(u8 *) (r2+6) = r4
	r5 = *(u8 *) (r1+7)
	*(u8 *) (r2+7) = r5
	r1 += 8
	r2 += 8
	if r0 != r1 goto .L1459
	goto .L1306
.L1465:
	r5 = r1
	r9 = r2
	r5 += 1
	r9 -= r5
	if r9 <= 6 goto .L1310
	r6 = r3
	r9 = r1
	r6 &= -8
	r0 = r1
	r5 = r6
	r4 = r2
	r5 += -8
	r9 += r6
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1458
	if r5 == 1 goto .L1412
	if r5 == 2 goto .L1413
	if r5 == 3 goto .L1414
	if r5 == 4 goto .L1415
	if r5 == 5 goto .L1416
	if r5 != 6 goto .L1467
.L1417:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1416:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1415:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1414:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1413:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1412:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r9 == r0 goto .L1456
.L1458:
	r1 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r1
	r5 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r5
	r1 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r1
	r5 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r5
	r1 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r1
	r5 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r5
	r1 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r1
	r5 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r5
	r0 += 64
	r4 += 64
	if r9 != r0 goto .L1458
.L1456:
	r0 = r3
	r2 += r6
	r0 -= r6
	if r3 == r6 goto .L1306
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r3
	if r0 == 1 goto .L1306
	r4 = *(u8 *) (r9+1)
	*(u8 *) (r2+1) = r4
	if r0 == 2 goto .L1306
	r1 = *(u8 *) (r9+2)
	*(u8 *) (r2+2) = r1
	if r0 == 3 goto .L1306
	r5 = *(u8 *) (r9+3)
	*(u8 *) (r2+3) = r5
	if r0 == 4 goto .L1306
	r3 = *(u8 *) (r9+4)
	*(u8 *) (r2+4) = r3
	if r0 == 5 goto .L1306
	r4 = *(u8 *) (r9+5)
	*(u8 *) (r2+5) = r4
	if r0 == 6 goto .L1306
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r2+6) = r9
	exit
.L1463:
	exit
.L1467:
	r0 = *(u64 *) (r1+0)
	r4 += 8
	*(u64 *) (r2+0) = r0
	r0 = r1
	r0 += 8
	goto .L1417
.L1466:
	exit
	.size	bcopy, .-bcopy
	.align	3
	.global	rotl64
	.type	rotl64, @function
rotl64:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 >>= r0
	r3 <<= r2
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
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 <<= r0
	r3 >>= r2
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
	r0 = -r0
	r0 &= 31
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 32
	r3 = r1
	r1 >>= r0
	r3 <<= r2
	r0 = r3
	r0 |= r1
	exit
	.size	rotl32, .-rotl32
	.align	3
	.global	rotr32
	.type	rotr32, @function
rotr32:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r0 = -r0
	r0 &= 31
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 32
	r3 = r1
	r1 <<= r0
	r3 >>= r2
	r0 = r3
	r0 |= r1
	exit
	.size	rotr32, .-rotr32
	.align	3
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 >>= r0
	r3 <<= r2
	r0 = r1
	r0 |= r3
	exit
	.size	rotl_sz, .-rotl_sz
	.align	3
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 <<= r0
	r3 >>= r2
	r0 = r1
	r0 |= r3
	exit
	.size	rotr_sz, .-rotr_sz
	.align	3
	.global	rotl16
	.type	rotl16, @function
rotl16:
	r1 &= 0xffff
	r3 = r2
	r0 = r1
	r3 &= 15
	r2 = -r2
	r0 <<= r3
	r2 &= 15
	r1 >>= r2
	r0 |= r1
	exit
	.size	rotl16, .-rotl16
	.align	3
	.global	rotr16
	.type	rotr16, @function
rotr16:
	r1 &= 0xffff
	r3 = r2
	r0 = r1
	r3 &= 15
	r2 = -r2
	r0 >>= r3
	r2 &= 15
	r1 <<= r2
	r0 |= r1
	exit
	.size	rotr16, .-rotr16
	.align	3
	.global	rotl8
	.type	rotl8, @function
rotl8:
	r1 &= 0xff
	r3 = r2
	r0 = r1
	r3 &= 7
	r2 = -r2
	r0 <<= r3
	r2 &= 7
	r1 >>= r2
	r0 |= r1
	exit
	.size	rotl8, .-rotl8
	.align	3
	.global	rotr8
	.type	rotr8, @function
rotr8:
	r1 &= 0xff
	r3 = r2
	r0 = r1
	r3 &= 7
	r2 = -r2
	r0 >>= r3
	r2 &= 7
	r1 <<= r2
	r0 |= r1
	exit
	.size	rotr8, .-rotr8
	.align	3
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	r0 = r1
	r0 = be16 r0
	exit
	.size	bswap_16, .-bswap_16
	.align	3
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	r0 = r1
	r0 = be32 r0
	exit
	.size	bswap_32, .-bswap_32
	.align	3
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	r0 = r1
	r0 = be64 r0
	exit
	.size	bswap_64, .-bswap_64
	.align	3
	.global	ffs
	.type	ffs, @function
ffs:
	r1 = r1;r1 &= 0xffffffff
	r0 = 0
.L1484:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1507
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1507
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1507
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1507
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1507
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1507
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1507
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1507
	if r0 != 32 goto .L1484
	r0 = r4
	exit
.L1507:
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	ffs, .-ffs
	.align	3
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	r1 <<= 32
	r9 = r1
	r9 s>>= 32
	r0 = r9
	if r1 == 0 goto .L1511
	r0 &= 1
	if r0 != 0 goto .L1511
	r0 = 1
.L1512:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1530
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1511
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1511
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1511
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1511
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1511
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1511
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1512
	exit
.L1511:
	exit
.L1530:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r2 = 0xff7fffff ll
	r6 = r1
	r8 = 0
	call	__ltsf2
	if r8 s>= r0 goto .L1534
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1535
	r0 = r7
	r0 &= 1
	exit
.L1534:
	r0 = 1
	exit
.L1535:
	r7 = r8
	r0 = r7
	r0 &= 1
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	r2 = 0xffefffffffffffff ll
	r6 = r1
	r8 = 0
	call	__ltdf2
	if r8 s>= r0 goto .L1539
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1540
	r0 = r7
	r0 &= 1
	exit
.L1539:
	r0 = 1
	exit
.L1540:
	r7 = r8
	r0 = r7
	r0 &= 1
	exit
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	r2 = 0xffefffffffffffff ll
	r6 = r1
	r8 = 0
	call	__ltdf2
	if r8 s>= r0 goto .L1544
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1545
	r0 = r7
	r0 &= 1
	exit
.L1544:
	r0 = 1
	exit
.L1545:
	r7 = r8
	r0 = r7
	r0 &= 1
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
	r2 <<= 32
	r2 s>>= 32
	r8 = r1
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L1548
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1548
	if r6 s< 0 goto .L1565
	r7 = 0x40000000 ll
.L1550:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1551
.L1552:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1551:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1548
.L1553:
	r2 = r7
	r1 = r7
	call	__mulsf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1552
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1552
	r5 = r6
	r5 >>= 63
	r5 += r6
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r6 = r5
	r1 = r0
	call	__mulsf3
	r9 = r6
	r7 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r6
	r0 = r6
	r0 &= 1
	if r0 != 0 goto .L1552
	r9 s>>= 1
	r6 = r9
	call	__mulsf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r4 <<= 31
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1552
	r4 s>>= 32
	r6 = r4
	call	__mulsf3
	r5 = r6
	r9 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r9 &= 1
	if r9 != 0 goto .L1552
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r4 = r6
	r7 = r0
	r4 &= 1
	r0 = r6
	r2 = r7
	r0 >>= 63
	r1 = r7
	r0 += r6
	r0 <<= 31
	if r4 != 0 goto .L1552
	r0 s>>= 32
	r6 = r0
	call	__mulsf3
	r5 = r6
	r3 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1552
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1552
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1553
.L1548:
	r0 = r8
	exit
.L1565:
	r7 = 0x3f000000 ll
	goto .L1550
	.size	ldexpf, .-ldexpf
	.align	3
	.global	ldexp
	.type	ldexp, @function
ldexp:
	r2 <<= 32
	r2 s>>= 32
	r8 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1567
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1567
	if r6 s< 0 goto .L1584
	r7 = 0x4000000000000000 ll
.L1569:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1570
.L1571:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1570:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1567
.L1572:
	r2 = r7
	r1 = r7
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1571
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1571
	r5 = r6
	r5 >>= 63
	r5 += r6
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r6 = r5
	r1 = r0
	call	__muldf3
	r9 = r6
	r7 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r6
	r0 = r6
	r0 &= 1
	if r0 != 0 goto .L1571
	r9 s>>= 1
	r6 = r9
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r4 <<= 31
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1571
	r4 s>>= 32
	r6 = r4
	call	__muldf3
	r5 = r6
	r9 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r9 &= 1
	if r9 != 0 goto .L1571
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r4 = r6
	r7 = r0
	r4 &= 1
	r0 = r6
	r2 = r7
	r0 >>= 63
	r1 = r7
	r0 += r6
	r0 <<= 31
	if r4 != 0 goto .L1571
	r0 s>>= 32
	r6 = r0
	call	__muldf3
	r5 = r6
	r3 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1571
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1571
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1572
.L1567:
	r0 = r8
	exit
.L1584:
	r7 = 0x3fe0000000000000 ll
	goto .L1569
	.size	ldexp, .-ldexp
	.align	3
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	r2 <<= 32
	r2 s>>= 32
	r8 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1586
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1586
	if r6 s< 0 goto .L1603
	r7 = 0x4000000000000000 ll
.L1588:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1589
.L1590:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1589:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1586
.L1591:
	r2 = r7
	r1 = r7
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1590
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1590
	r5 = r6
	r5 >>= 63
	r5 += r6
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r6 = r5
	r1 = r0
	call	__muldf3
	r9 = r6
	r7 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r6
	r0 = r6
	r0 &= 1
	if r0 != 0 goto .L1590
	r9 s>>= 1
	r6 = r9
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r4 <<= 31
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1590
	r4 s>>= 32
	r6 = r4
	call	__muldf3
	r5 = r6
	r9 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r9 &= 1
	if r9 != 0 goto .L1590
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r4 = r6
	r7 = r0
	r4 &= 1
	r0 = r6
	r2 = r7
	r0 >>= 63
	r1 = r7
	r0 += r6
	r0 <<= 31
	if r4 != 0 goto .L1590
	r0 s>>= 32
	r6 = r0
	call	__muldf3
	r5 = r6
	r3 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1590
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1590
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1591
.L1586:
	r0 = r8
	exit
.L1603:
	r7 = 0x3fe0000000000000 ll
	goto .L1588
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1605
	r0 = r3
	r0 += -1
	if r0 <= 5 goto .L1606
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 != 0 goto .L1606
	r6 = r3
	r9 = r2
	r6 &= -8
	r4 = r2
	r5 = r6
	r0 = r1
	r5 += -8
	r9 += r6
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1706
	if r5 == 1 goto .L1669
	if r5 == 2 goto .L1670
	if r5 == 3 goto .L1671
	if r5 == 4 goto .L1672
	if r5 == 5 goto .L1673
	if r5 == 6 goto .L1674
	r0 = *(u64 *) (r2+0)
	r5 = *(u64 *) (r1+0)
	r2 += 8
	r0 ^= r5
	r4 = r2
	r2 = r0
	r0 = r1
	*(u64 *) (r1+0) = r2
	r0 += 8
.L1674:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1673:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1672:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1671:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1670:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1669:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r2 ^= r5
	*(u64 *) (r0+0) = r2
	r4 += 8
	r0 += 8
	if r9 == r4 goto .L1704
.L1706:
	r2 = *(u64 *) (r0+0)
	r7 = *(u64 *) (r4+0)
	r7 ^= r2
	*(u64 *) (r0+0) = r7
	r5 = r0
	r2 = *(u64 *) (r4+8)
	r7 = *(u64 *) (r5+8)
	r2 ^= r7
	*(u64 *) (r5+8) = r2
	r5 += 8
	r2 = *(u64 *) (r4+16)
	r7 = *(u64 *) (r5+8)
	r2 ^= r7
	*(u64 *) (r5+8) = r2
	r5 += 8
	r2 = *(u64 *) (r4+24)
	r7 = *(u64 *) (r5+8)
	r2 ^= r7
	*(u64 *) (r5+8) = r2
	r5 += 8
	r2 = *(u64 *) (r4+32)
	r7 = *(u64 *) (r5+8)
	r2 ^= r7
	*(u64 *) (r5+8) = r2
	r5 += 8
	r2 = *(u64 *) (r4+40)
	r7 = *(u64 *) (r5+8)
	r2 ^= r7
	*(u64 *) (r5+8) = r2
	r5 += 8
	r2 = *(u64 *) (r4+48)
	r7 = *(u64 *) (r5+8)
	r2 ^= r7
	*(u64 *) (r5+8) = r2
	r5 += 8
	r2 = *(u64 *) (r4+56)
	r7 = *(u64 *) (r5+8)
	r2 ^= r7
	*(u64 *) (r5+8) = r2
	r5 += 8
	r0 += 64
	r4 += 64
	if r9 != r4 goto .L1706
.L1704:
	r0 = r1
	r5 = r3
	r0 += r6
	r5 -= r6
	if r3 == r6 goto .L1605
	r3 = *(u8 *) (r0+0)
	r4 = *(u8 *) (r9+0)
	r3 ^= r4
	*(u8 *) (r0+0) = r3
	if r5 == 1 goto .L1605
	r2 = *(u8 *) (r0+1)
	r3 = *(u8 *) (r9+1)
	r3 ^= r2
	*(u8 *) (r0+1) = r3
	if r5 == 2 goto .L1605
	r4 = *(u8 *) (r0+2)
	r2 = *(u8 *) (r9+2)
	r2 ^= r4
	*(u8 *) (r0+2) = r2
	if r5 == 3 goto .L1605
	r4 = *(u8 *) (r0+3)
	r3 = *(u8 *) (r9+3)
	r3 ^= r4
	*(u8 *) (r0+3) = r3
	if r5 == 4 goto .L1605
	r2 = *(u8 *) (r0+4)
	r4 = *(u8 *) (r9+4)
	r4 ^= r2
	*(u8 *) (r0+4) = r4
	if r5 == 5 goto .L1605
	r2 = *(u8 *) (r0+5)
	r3 = *(u8 *) (r9+5)
	r3 ^= r2
	*(u8 *) (r0+5) = r3
	if r5 == 6 goto .L1605
	r5 = *(u8 *) (r0+6)
	r9 = *(u8 *) (r9+6)
	r9 ^= r5
	*(u8 *) (r0+6) = r9
.L1605:
	r0 = r1
	exit
.L1606:
	r4 = r2
	r9 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1705
	if r3 == 1 goto .L1675
	if r3 == 2 goto .L1676
	if r3 == 3 goto .L1677
	if r3 == 4 goto .L1678
	if r3 == 5 goto .L1679
	if r3 == 6 goto .L1680
	r3 = *(u8 *) (r2+0)
	r0 = *(u8 *) (r1+0)
	r2 += 1
	r3 ^= r0
	r9 += 1
	*(u8 *) (r1+0) = r3
.L1680:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1679:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r9 += 1
	r5 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r5
.L1678:
	r0 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1677:
	r5 = *(u8 *) (r9+0)
	r0 = *(u8 *) (r2+0)
	r9 += 1
	r0 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r0
.L1676:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1675:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r5 ^= r0
	*(u8 *) (r9+0) = r5
	r2 += 1
	r9 += 1
	if r4 == r2 goto .L1605
.L1705:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r9+1)
	r3 = *(u8 *) (r2+0)
	r3 ^= r0
	r0 = *(u8 *) (r2+1)
	r0 ^= r5
	*(u8 *) (r9+0) = r3
	*(u8 *) (r9+1) = r0
	r3 = *(u8 *) (r2+2)
	r0 = *(u8 *) (r9+2)
	r3 ^= r0
	r5 = *(u8 *) (r9+3)
	*(u8 *) (r9+2) = r3
	r3 = *(u8 *) (r2+3)
	r3 ^= r5
	r0 = *(u8 *) (r2+4)
	*(u8 *) (r9+3) = r3
	r3 = *(u8 *) (r9+4)
	r0 ^= r3
	r5 = *(u8 *) (r9+5)
	*(u8 *) (r9+4) = r0
	r0 = *(u8 *) (r2+5)
	r0 ^= r5
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r9+5) = r0
	r0 = *(u8 *) (r9+6)
	r3 ^= r0
	r5 = *(u8 *) (r9+7)
	*(u8 *) (r9+6) = r3
	r3 = *(u8 *) (r2+7)
	r3 ^= r5
	*(u8 *) (r9+7) = r3
	r2 += 8
	r9 += 8
	if r4 != r2 goto .L1705
	goto .L1605
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1716
	r0 = r1
.L1711:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1710
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1710
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1710
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1710
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1710
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1710
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1710
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1711
.L1710:
	if r3 == 0 goto .L1713
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1786
	if r5 == 1 goto .L1764
	if r5 == 2 goto .L1765
	if r5 == 3 goto .L1766
	if r5 == 4 goto .L1767
	if r5 == 5 goto .L1768
	if r5 != 6 goto .L1788
.L1769:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1715
	r2 += 1
	r0 += 1
	r3 += -1
.L1768:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1715
	r2 += 1
	r0 += 1
	r3 += -1
.L1767:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1715
	r2 += 1
	r0 += 1
	r3 += -1
.L1766:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1715
	r2 += 1
	r0 += 1
	r3 += -1
.L1765:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1715
	r2 += 1
	r0 += 1
	r3 += -1
.L1764:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1715
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1713
.L1786:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1715
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1715
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1715
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1715
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1715
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1715
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1715
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1715
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1786
.L1713:
	*(u8 *) (r0+0) = 0
.L1715:
	r0 = r1
	exit
.L1788:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1715
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1769
.L1716:
	r0 = r1
	goto .L1710
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1789
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1845
	if r0 == 1 goto .L1831
	if r0 == 2 goto .L1832
	if r0 == 3 goto .L1833
	if r0 == 4 goto .L1834
	if r0 == 5 goto .L1835
	if r0 != 6 goto .L1848
.L1836:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1789
	r3 += 1
.L1835:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1849
.L1789:
	r0 = r3
	exit
.L1848:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1789
	r3 = 1
	goto .L1836
.L1849:
	r3 += 1
.L1834:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1789
	r3 += 1
.L1833:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1789
	r3 += 1
.L1832:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1789
	r3 += 1
.L1831:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1789
	r3 += 1
	if r2 == r3 goto .L1789
.L1845:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1789
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1789
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1789
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1789
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1789
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1789
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1789
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1789
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1845
	goto .L1789
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1855
.L1861:
	r3 = r2
	goto .L1854
.L1853:
	r3 += 1
	if r4 == r5 goto .L1852
.L1854:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1853
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1861
.L1855:
	r1 = r5
.L1852:
	r0 = r1
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r3 = 0
	r2 s>>= 32
.L1864:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1863
	r3 = r1
.L1863:
	r1 += 1
	if r0 != 0 goto .L1864
	r0 = r3
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r0 = *(u8 *) (r2+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1877
	r0 = r2
.L1868:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1977
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1977
	r0 = r3
	r4 = *(u8 *) (r3+2)
	r0 += 2
	if r4 == 0 goto .L1977
	r0 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1977
	r0 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1977
	r0 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1977
	r0 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1977
	r0 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1868
.L1977:
	r4 = r0
	r4 -= r2
	if r0 == r2 goto .L1877
	r4 += -1
	r9 = r5;r9 &= 0xff
	r7 = r4
	goto .L1979
.L2009:
	r1 += 1
	if r0 == 0 goto .L2008
.L1979:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L2009
	r6 = r1
	r6 += r7
	*(u64 *) (r10+-8) = r6
	r0 = r9
	r6 = r7
	r3 = r2
	r4 = r1
	r6 &= 7
	if r6 == 0 goto .L1870
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L1871
	if r4 != r9 goto .L1871
	r4 = r1
	r3 += 1
	r4 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1871
	if r6 == 1 goto .L1870
	if r6 == 2 goto .L1927
	if r6 == 3 goto .L1928
	if r6 == 4 goto .L1929
	if r6 == 5 goto .L1930
	if r6 == 6 goto .L1931
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1871
	if r6 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1931:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1871
	if r6 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1930:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1871
	if r6 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1929:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1871
	if r6 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1928:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1871
	if r6 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1927:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1871
	if r6 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1870:
	*(u64 *) (r10+-16) = r1
.L1978:
	r1 = *(u8 *) (r3+0)
	if r1 == 0 goto .L2001
	r6 = *(u64 *) (r10+-8)
	if r4 == r6 goto .L2001
	if r1 != r0 goto .L2001
	r3 += 1
	r6 = r4
	r1 = r3
	r6 += 1
	r0 = *(u8 *) (r4+1)
	if r0 == 0 goto .L2001
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L2001
	if r8 != r0 goto .L2001
	r3 += 1
	r0 = *(u8 *) (r4+2)
	if r0 == 0 goto .L2001
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L2001
	if r8 != r0 goto .L2001
	r3 = r1
	r0 = *(u8 *) (r4+3)
	r3 += 2
	if r0 == 0 goto .L2001
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L2001
	if r4 != r0 goto .L2001
	r3 += 1
	r0 = *(u8 *) (r6+3)
	if r0 == 0 goto .L2001
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L2001
	if r4 != r0 goto .L2001
	r3 += 1
	r0 = *(u8 *) (r6+4)
	if r0 == 0 goto .L2001
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L2001
	if r4 != r0 goto .L2001
	r3 += 1
	r0 = *(u8 *) (r6+5)
	if r0 == 0 goto .L2001
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L2001
	if r4 != r0 goto .L2001
	r3 += 1
	r0 = *(u8 *) (r6+6)
	if r0 == 0 goto .L2001
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L2001
	if r4 != r0 goto .L2001
	r4 = r6
	r1 += 7
	r4 += 7
	r3 = r1
	r0 = *(u8 *) (r6+7)
	if r0 != 0 goto .L1978
.L2001:
	r1 = *(u64 *) (r10+-16)
.L1871:
	r4 = *(u8 *) (r3+0)
	if r4 == r0 goto .L1877
	r1 += 1
	goto .L1979
.L2008:
	exit
.L1877:
	r0 = r1
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
	r8 = 0
	r2 = 0x0000000000000000 ll
	if r8 s>= r0 goto .L2020
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2014
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L2013
.L2014:
	r0 = r6
	exit
.L2020:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L2014
.L2013:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	r0 = r6
	exit
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r0 = r1
	if r4 == 0 goto .L2021
	if r4 >= r2 goto .L2032
	r2 -= r4
	r9 = r1
	r9 += r2
	if r1 > r9 goto .L2032
	r5 = *(u8 *) (r3+0)
	r4 += -1
	r5 <<= 56
	r3 += 1
	r5 s>>= 56
	*(u64 *) (r10+-8) = r3
.L2027:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	r1 <<= 56
	r3 += 1
	r1 s>>= 56
	if r1 == r5 goto .L2096
	r0 = r3
.L2023:
	if r9 >= r0 goto .L2027
.L2032:
	r0 = 0
.L2021:
	exit
.L2096:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L2021
.L2026:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L2086
	if r6 == 1 goto .L2070
	if r6 == 2 goto .L2071
	if r6 == 3 goto .L2072
	if r6 == 4 goto .L2073
	if r6 == 5 goto .L2074
	if r6 == 6 goto .L2075
	r6 = *(u8 *) (r3+0)
	r1 = *(u8 *) (r2+0)
	if r6 != r1 goto .L2085
	r1 = r3
	r2 += 1
	r1 += 1
.L2075:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2085
	r1 += 1
	r2 += 1
.L2074:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2085
	r1 += 1
	r2 += 1
.L2073:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2085
	r1 += 1
	r2 += 1
.L2072:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2085
	r1 += 1
	r2 += 1
.L2071:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2085
	r1 += 1
	r2 += 1
.L2070:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2085
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L2097
.L2086:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2085
	r8 = *(u8 *) (r1+1)
	r6 = *(u8 *) (r2+1)
	if r8 != r6 goto .L2085
	r8 = *(u8 *) (r1+2)
	r6 = *(u8 *) (r2+2)
	if r8 != r6 goto .L2085
	r8 = *(u8 *) (r1+3)
	r6 = *(u8 *) (r2+3)
	if r8 != r6 goto .L2085
	r8 = *(u8 *) (r1+4)
	r6 = *(u8 *) (r2+4)
	if r8 != r6 goto .L2085
	r8 = *(u8 *) (r1+5)
	r6 = *(u8 *) (r2+5)
	if r8 != r6 goto .L2085
	r8 = *(u8 *) (r1+6)
	r6 = *(u8 *) (r2+6)
	if r8 != r6 goto .L2085
	r8 = *(u8 *) (r1+7)
	r6 = *(u8 *) (r2+7)
	if r8 != r6 goto .L2085
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L2086
	exit
.L2085:
	if r3 > r9 goto .L2032
	r2 = *(u8 *) (r3+0)
	r0 = r3
	r2 <<= 56
	r0 += 1
	r2 s>>= 56
	if r2 != r5 goto .L2023
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L2026
.L2097:
	exit
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	*(u64 *) (r10+-8) = r2
	r6 = r1
	r8 = r2
	r7 = 0
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r7 s>= r0 goto .L2132
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L2133
	*(u64 *) (r10+-16) = r7
.L2101:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L2107:
	r1 = r6
	r2 = r7
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	r8 += 1
	r2 = r7
	r8 <<= 32
	r1 = r6
	r8 s>>= 32
	r9 = r8
	r9 += 1
	r9 <<= 32
	if r0 s< 0 goto .L2108
	r9 s>>= 32
	r8 = r9
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	r2 = r7
	r3 = r0
	r1 = r6
	r0 = r8
	r0 += 1
	r0 <<= 32
	if r3 s< 0 goto .L2108
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	r5 = r8
	r2 = r7
	r5 += 1
	r1 = r6
	r5 <<= 32
	if r0 s< 0 goto .L2108
	r5 s>>= 32
	r8 = r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L2107
.L2108:
	r2 = *(u64 *) (r10+-8)
	*(u32 *) (r2+0) = r8
	r1 = *(u64 *) (r10+-16)
	if r1 == 0 goto .L2114
	r9 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r9
	exit
.L2133:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r7 s< r0 goto .L2104
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L2113
.L2104:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r6
	exit
.L2132:
	r3 = -9223372036854775808 ll
	r1 = r6
	r1 ^= r3
	r2 = 0xbff0000000000000 ll
	*(u64 *) (r10+-24) = r1
	r1 = r6
	call	__ledf2
	if r7 s<= r0 goto .L2134
	r6 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = 1
	goto .L2101
.L2114:
	r0 = r6
	exit
.L2134:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s> r7 goto .L2111
	*(u32 *) (r8+0) = r7
	r0 = r6
	exit
.L2111:
	*(u64 *) (r10+-16) = 1
.L2102:
	r8 = 0
	r6 = *(u64 *) (r10+-24)
	r7 = r8
.L2109:
	r2 = r6
	r1 = r6
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	r8 += -1
	r2 = r6
	r8 <<= 32
	r1 = r6
	r8 s>>= 32
	r5 = r8
	r5 += -1
	r5 <<= 32
	if r7 s< r0 goto .L2108
	r5 s>>= 32
	r8 = r5
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	r2 = r6
	r9 = r0
	r1 = r6
	r0 = r8
	r0 += -1
	r0 <<= 32
	if r7 s< r9 goto .L2108
	r0 s>>= 32
	r8 = r0
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	r4 = r8
	r2 = r6
	r4 += -1
	r1 = r6
	r4 <<= 32
	if r7 s< r0 goto .L2108
	r4 s>>= 32
	r8 = r4
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	if r7 s>= r0 goto .L2109
	goto .L2108
.L2113:
	*(u64 *) (r10+-24) = r6
	*(u64 *) (r10+-16) = r7
	goto .L2102
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L2138
	r0 = 0
	r5 = r0
.L2137:
	r9 = r2
	r1 = r3
	r4 = r3
	r9 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L2154
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 2
	r5 += r1
	if r2 == 0 goto .L2154
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 3
	r0 += r2
	if r1 == 0 goto .L2154
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 4
	r5 += r1
	if r2 == 0 goto .L2154
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 5
	r0 += r2
	if r1 == 0 goto .L2154
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r2 = r9
	r5 += r1
	r2 += r9
	r1 = r3
	r1 >>= 6
	if r1 == 0 goto .L2154
	r4 = r2
	r9 = r3
	r1 &= 1
	r4 += r2
	r1 = -r1
	r9 >>= 7
	r1 &= r2
	r0 += r1
	if r9 == 0 goto .L2154
	r9 &= 1
	r2 = r4
	r9 = -r9
	r2 += r4
	r9 &= r4
	r3 >>= 8
	r5 += r9
	if r3 != 0 goto .L2137
.L2154:
	r0 += r5
	exit
.L2138:
	r0 = r1
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L2157
	r9 = 32
	r4 = 1
.L2156:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2157
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2158
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2156
.L2159:
	if r3 != 0 goto .L2163
	r0 = r9
.L2163:
	exit
.L2158:
	if r4 == 0 goto .L2165
.L2157:
	r9 = 0
.L2162:
	if r2 >= r0 goto .L2161
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2161:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2162
	goto .L2159
.L2165:
	r9 = r4
	goto .L2159
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r2 = r1
	r1 s>>= 63
	r2 s>>= 56
	r0 = r2
	r0 ^= r1
	if r2 == r1 goto .L2186
	r0 <<= 8
	r1 = r0;r1 &= 0xffffffff
	call	__clzdi2
	r1 = -4294967296 ll
	r0 = r0;r0 &= 0xffffffff
	r0 += -32
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2186:
	r0 = 7
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	r2 = r1
	r0 = r1
	r2 s>>= 63
	r1 ^= r2
	if r0 == r2 goto .L2189
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2189:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2193
	r0 = 0
.L2192:
	r3 = r1
	r4 = r5
	r1 &= 1
	r4 += r5
	r1 = -r1
	r3 >>= 1
	r1 &= r5
	r9 = r4;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2209
	r1 = r3
	r5 = r9
	r3 &= 1
	r5 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r4 = r5;r4 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2191
	r2 = r1
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r2 >>= 1
	r1 &= r4
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2191
	r1 = r2
	r5 = r9
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 1
	r2 &= r9
	r4 = r5;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2191
	r2 = r1
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r2 >>= 1
	r1 &= r4
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2191
	r3 = r2
	r1 = r9
	r2 &= 1
	r1 += r9
	r2 = -r2
	r3 >>= 1
	r2 &= r9
	r4 = r1;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2191
	r1 = r3
	r5 = r4
	r3 &= 1
	r5 += r4
	r3 = -r3
	r1 >>= 1
	r3 &= r4
	r9 = r5;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2191
	r3 = r1
	r2 = r9
	r3 &= 1
	r2 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r5 = r2;r5 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 != 0 goto .L2192
	exit
.L2193:
	r0 = r1
.L2191:
	exit
.L2209:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r0 = r3
	r7 = r3
	r0 &= -8
	r7 >>= 3
	r0 = r0;r0 &= 0xffffffff
	if r2 >= r1 goto .L2211
	r4 = r2
	r4 += r3
	if r1 <= r4 goto .L2395
.L2211:
	if r7 == 0 goto .L2214
	r7 <<= 3
	r9 = r2
	r6 = r7
	r5 = r1
	r6 += -8
	r7 += r2
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2388
	if r6 == 1 goto .L2331
	if r6 == 2 goto .L2332
	if r6 == 3 goto .L2333
	if r6 == 4 goto .L2334
	if r6 == 5 goto .L2335
	if r6 == 6 goto .L2336
	r4 = *(u64 *) (r2+0)
	r9 += 8
	*(u64 *) (r1+0) = r4
	r5 += 8
.L2336:
	r6 = *(u64 *) (r9+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r9 += 8
.L2335:
	r4 = *(u64 *) (r9+0)
	r5 += 8
	*(u64 *) (r5+-8) = r4
	r9 += 8
.L2334:
	r6 = *(u64 *) (r9+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r9 += 8
.L2333:
	r4 = *(u64 *) (r9+0)
	r5 += 8
	*(u64 *) (r5+-8) = r4
	r9 += 8
.L2332:
	r6 = *(u64 *) (r9+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r9 += 8
.L2331:
	r6 = *(u64 *) (r9+0)
	*(u64 *) (r5+0) = r6
	r9 += 8
	r5 += 8
	if r9 == r7 goto .L2385
.L2388:
	r4 = *(u64 *) (r9+0)
	*(u64 *) (r5+0) = r4
	r6 = *(u64 *) (r9+8)
	*(u64 *) (r5+8) = r6
	r4 = *(u64 *) (r9+16)
	*(u64 *) (r5+16) = r4
	r6 = *(u64 *) (r9+24)
	*(u64 *) (r5+24) = r6
	r4 = *(u64 *) (r9+32)
	*(u64 *) (r5+32) = r4
	r6 = *(u64 *) (r9+40)
	*(u64 *) (r5+40) = r6
	r4 = *(u64 *) (r9+48)
	*(u64 *) (r5+48) = r4
	r6 = *(u64 *) (r9+56)
	*(u64 *) (r5+56) = r6
	r9 += 64
	r5 += 64
	if r9 != r7 goto .L2388
.L2385:
	if r0 > r3 goto .L2396
	r8 = r3
	r8 -= r0
	r8 = r8;r8 &= 0xffffffff
	r7 = r8
	r7 += -1
	if r7 <= 6 goto .L2394
	r7 = r1
	r6 = r2
	r7 += r0
	r9 = r0
	r5 = r2
	r9 += 1
	r4 = r7
	r5 += r9
	r6 += r0
	r4 -= r5
	if r4 > 6 goto .L2397
.L2217:
	r3 += -1
	r2 += 1
	r3 -= r0
	r2 += r0
	r0 = r3;r0 &= 0xffffffff
	r0 += r2
	r1 = r0
	r1 -= r6
	r1 &= 7
	if r1 == 0 goto .L2387
	if r1 == 1 goto .L2343
	if r1 == 2 goto .L2344
	if r1 == 3 goto .L2345
	if r1 == 4 goto .L2346
	if r1 == 5 goto .L2347
	if r1 == 6 goto .L2348
	r2 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r2
	r6 += 1
.L2348:
	r3 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r3
	r6 += 1
.L2347:
	r5 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r5
	r6 += 1
.L2346:
	r4 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r4
	r6 += 1
.L2345:
	r9 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r9
	r6 += 1
.L2344:
	r1 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r1
	r6 += 1
.L2343:
	r2 = *(u8 *) (r6+0)
	*(u8 *) (r7+0) = r2
	r6 += 1
	r7 += 1
	if r6 == r0 goto .L2398
.L2387:
	r3 = *(u8 *) (r6+0)
	*(u8 *) (r7+0) = r3
	r5 = *(u8 *) (r6+1)
	*(u8 *) (r7+1) = r5
	r4 = *(u8 *) (r6+2)
	*(u8 *) (r7+2) = r4
	r9 = *(u8 *) (r6+3)
	*(u8 *) (r7+3) = r9
	r1 = *(u8 *) (r6+4)
	*(u8 *) (r7+4) = r1
	r2 = *(u8 *) (r6+5)
	*(u8 *) (r7+5) = r2
	r3 = *(u8 *) (r6+6)
	*(u8 *) (r7+6) = r3
	r5 = *(u8 *) (r6+7)
	*(u8 *) (r7+7) = r5
	r6 += 8
	r7 += 8
	if r6 != r0 goto .L2387
	exit
.L2397:
	r9 = r6
	r9 |= r7
	r9 &= 7
	if r9 != 0 goto .L2217
	r5 = r8
	r5 >>= 3
	r5 <<= 3
	r9 = r5
	r9 += -8
	*(u64 *) (r10+-16) = r9
	r9 = r6
	r9 += r5
	*(u64 *) (r10+-8) = r9
	r4 = r6
	r9 = *(u64 *) (r10+-16)
	r5 = r7
	r9 >>= 3
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2220
	if r9 == 1 goto .L2337
	if r9 == 2 goto .L2338
	if r9 == 3 goto .L2339
	if r9 == 4 goto .L2340
	if r9 == 5 goto .L2341
	if r9 == 6 goto .L2342
	r4 = *(u64 *) (r6+0)
	r5 += 8
	*(u64 *) (r7+0) = r4
	r4 = r6
	r4 += 8
.L2342:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2341:
	r9 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r9
	r4 += 8
.L2340:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2339:
	r9 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r9
	r4 += 8
.L2338:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2337:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
	r6 = *(u64 *) (r10+-8)
	if r4 == r6 goto .L2384
.L2220:
	r6 = *(u64 *) (r10+-8)
.L2386:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r9 = *(u64 *) (r4+8)
	*(u64 *) (r5+8) = r9
	r7 = *(u64 *) (r4+16)
	*(u64 *) (r5+16) = r7
	r9 = *(u64 *) (r4+24)
	*(u64 *) (r5+24) = r9
	r7 = *(u64 *) (r4+32)
	*(u64 *) (r5+32) = r7
	r9 = *(u64 *) (r4+40)
	*(u64 *) (r5+40) = r9
	r7 = *(u64 *) (r4+48)
	*(u64 *) (r5+48) = r7
	r7 = *(u64 *) (r4+56)
	*(u64 *) (r5+56) = r7
	r4 += 64
	r5 += 64
	if r4 != r6 goto .L2386
.L2384:
	r4 = r8
	r8 &= 7
	r4 &= -8
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	if r8 == 0 goto .L2210
	r5 = r1
	r9 = r2
	r5 += r0
	r9 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r5 = r0
	r5 += 1
	r9 = r5;r9 &= 0xffffffff
	if r9 > r3 goto .L2210
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 2
	r4 = r9;r4 &= 0xffffffff
	if r4 > r3 goto .L2210
	r6 = r2
	r5 = r1
	r6 += r4
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 3
	r9 = r4;r9 &= 0xffffffff
	if r9 > r3 goto .L2210
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 4
	r4 = r9;r4 &= 0xffffffff
	if r4 > r3 goto .L2210
	r6 = r2
	r5 = r1
	r6 += r4
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 5
	r9 = r4;r9 &= 0xffffffff
	if r9 > r3 goto .L2210
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2210
	r2 += r0
	r1 += r0
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2395:
	r5 = r3
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r0 = r9
	if r3 == 0 goto .L2210
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2389
	if r3 == 1 goto .L2325
	if r3 == 2 goto .L2326
	if r3 == 3 goto .L2327
	if r3 == 4 goto .L2328
	if r3 == 5 goto .L2329
	if r3 != 6 goto .L2399
.L2330:
	r4 = r1
	r3 = r2
	r4 += r0
	r3 += r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r5
.L2329:
	r9 = r1
	r4 = r2
	r9 += r0
	r4 += r0
	r0 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
.L2328:
	r5 = r1
	r9 = r2
	r5 += r0
	r9 += r0
	r0 += -1
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
.L2327:
	r5 = r1
	r3 = r2
	r5 += r0
	r3 += r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r9
.L2326:
	r4 = r1
	r5 = r2
	r4 += r0
	r5 += r0
	r0 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2325:
	r9 = r2
	r5 = r1
	r9 += r0
	r5 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r0 += -1
	if r0 == -1 goto .L2400
.L2389:
	r6 = r2
	r6 += r0
	r5 = r1
	r4 = *(u8 *) (r6+0)
	r5 += r0
	r6 = r2
	r6 += r0
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r6+-1)
	r5 += r0
	r6 = r1
	*(u8 *) (r5+-1) = r3
	r6 += r0
	r4 = r2
	r5 = r1
	r4 += r0
	r5 += r0
	r9 = *(u8 *) (r4+-2)
	*(u8 *) (r6+-2) = r9
	r6 = r2
	r6 += r0
	r3 = *(u8 *) (r6+-3)
	r6 = r2
	*(u8 *) (r5+-3) = r3
	r6 += r0
	r5 = r1
	r4 = *(u8 *) (r6+-4)
	r5 += r0
	*(u8 *) (r5+-4) = r4
	r3 = r2
	r4 = r0
	r3 += r0
	r4 += -6
	r9 = *(u8 *) (r3+-5)
	r6 = r1
	r5 = r1
	r6 += r0
	r5 += r4
	*(u8 *) (r6+-5) = r9
	r6 = r2
	r9 = r2
	r6 += r4
	r9 += r0
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r9+-7)
	r5 += r0
	*(u8 *) (r5+-7) = r3
	r0 += -8
	if r0 != -1 goto .L2389
.L2210:
	exit
.L2214:
	if r3 == 0 goto .L2210
.L2394:
	r1 += r0
	r6 = r2
	r7 = r1
	r6 += r0
	goto .L2217
.L2396:
	exit
.L2399:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 += -1
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	goto .L2330
.L2400:
	exit
.L2398:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r2 >= r1 goto .L2402
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2544
.L2402:
	if r9 == 0 goto .L2405
	r0 = r9
	r0 += -1
	if r0 <= 5 goto .L2406
	r6 = r2
	r6 |= r1
	r6 &= 7
	if r6 == 0 goto .L2545
.L2406:
	r9 += r9
	r0 = r2
	r6 = r9
	r4 = r1
	r9 += -2
	r6 += r2
	r9 >>= 1
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2539
	if r9 == 1 goto .L2505
	if r9 == 2 goto .L2506
	if r9 == 3 goto .L2507
	if r9 == 4 goto .L2508
	if r9 == 5 goto .L2509
	if r9 == 6 goto .L2510
	r0 = *(u16 *) (r2+0)
	r4 += 2
	*(u16 *) (r1+0) = r0
	r0 = r2
	r0 += 2
.L2510:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2509:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2508:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2507:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2506:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2505:
	r9 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r9
	r0 += 2
	r4 += 2
	if r0 == r6 goto .L2405
.L2539:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r9 = *(u16 *) (r0+2)
	*(u16 *) (r4+2) = r9
	r5 = *(u16 *) (r0+4)
	*(u16 *) (r4+4) = r5
	r9 = *(u16 *) (r0+6)
	*(u16 *) (r4+6) = r9
	r5 = *(u16 *) (r0+8)
	*(u16 *) (r4+8) = r5
	r9 = *(u16 *) (r0+10)
	*(u16 *) (r4+10) = r9
	r5 = *(u16 *) (r0+12)
	*(u16 *) (r4+12) = r5
	r9 = *(u16 *) (r0+14)
	*(u16 *) (r4+14) = r9
	r0 += 16
	r4 += 16
	if r0 != r6 goto .L2539
.L2405:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L2401
.L2546:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2545:
	r4 = r2
	r5 = r1
	r4 += 2
	r5 -= r4
	if r5 <= 4 goto .L2406
	r6 = r3
	r0 = r2
	r6 >>= 3
	r4 = r1
	r7 = r6
	r7 <<= 3
	r5 = r7
	r7 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2538
	if r5 == 1 goto .L2499
	if r5 == 2 goto .L2500
	if r5 == 3 goto .L2501
	if r5 == 4 goto .L2502
	if r5 == 5 goto .L2503
	if r5 == 6 goto .L2504
	r0 = *(u64 *) (r2+0)
	r4 += 8
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
.L2504:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2503:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2502:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2501:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2500:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2499:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2537
.L2538:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r5 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r5
	r5 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r5
	r5 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r5
	r5 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r5
	r5 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r5
	r5 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r5
	r5 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r5
	r0 += 64
	r4 += 64
	if r0 != r7 goto .L2538
.L2537:
	r6 <<= 2
	if r9 == r6 goto .L2405
	r0 = r6
	r0 += r6
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r0 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r0
	r0 = r6
	r0 += 1
	if r0 > r9 goto .L2405
	r0 += r0
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r0 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r0
	r6 += 2
	if r6 > r9 goto .L2405
	r6 += r6
	r9 = r2
	r5 = r1
	r9 += r6
	r5 += r6
	r4 = *(u16 *) (r9+0)
	*(u16 *) (r5+0) = r4
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L2401
	goto .L2546
.L2544:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	r0 = r9
	if r3 == 0 goto .L2401
	r5 = r9
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2540
	if r5 == 1 goto .L2493
	if r5 == 2 goto .L2494
	if r5 == 3 goto .L2495
	if r5 == 4 goto .L2496
	if r5 == 5 goto .L2497
	if r5 == 6 goto .L2498
	r4 = r2
	r3 = r1
	r4 += r9
	r3 += r9
	r0 += -1
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
.L2498:
	r5 = r1
	r4 = r2
	r5 += r0
	r4 += r0
	r0 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
.L2497:
	r9 = r1
	r5 = r2
	r9 += r0
	r5 += r0
	r0 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
.L2496:
	r9 = r1
	r3 = r2
	r9 += r0
	r3 += r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r5
.L2495:
	r4 = r1
	r9 = r2
	r4 += r0
	r9 += r0
	r0 += -1
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r3
.L2494:
	r5 = r1
	r4 = r2
	r5 += r0
	r4 += r0
	r0 += -1
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
.L2493:
	r5 = r2
	r3 = r1
	r5 += r0
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
	if r0 == -1 goto .L2547
.L2540:
	r6 = r2
	r5 = r1
	r6 += r0
	r5 += r0
	r3 = *(u8 *) (r6+0)
	r6 = r2
	*(u8 *) (r5+0) = r3
	r6 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r6+-1)
	r6 = r2
	*(u8 *) (r5+-1) = r9
	r6 += r0
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r6+-2)
	r6 = r2
	*(u8 *) (r5+-2) = r4
	r6 += r0
	r5 = r1
	r3 = *(u8 *) (r6+-3)
	r5 += r0
	*(u8 *) (r5+-3) = r3
	r4 = r2
	r6 = r1
	r4 += r0
	r6 += r0
	r9 = *(u8 *) (r4+-4)
	r5 = r1
	*(u8 *) (r6+-4) = r9
	r5 += r0
	r4 = r0
	r6 = r2
	r4 += -6
	r6 += r0
	r3 = *(u8 *) (r6+-5)
	*(u8 *) (r5+-5) = r3
	r5 = r1
	r5 += r4
	r6 = r2
	r3 = r2
	r6 += r4
	r3 += r0
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r5 = r1
	r9 = *(u8 *) (r3+-7)
	r5 += r0
	*(u8 *) (r5+-7) = r9
	r0 += -8
	if r0 != -1 goto .L2540
.L2401:
	exit
.L2547:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r0 = r3
	r8 = r3
	r0 &= -4
	r8 >>= 2
	r0 = r0;r0 &= 0xffffffff
	if r2 >= r1 goto .L2549
	r4 = r2
	r4 += r3
	if r1 <= r4 goto .L2780
.L2549:
	if r8 == 0 goto .L2781
	r6 = r8
	r6 += -1
	if r6 <= 7 goto .L2554
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 == 0 goto .L2782
.L2554:
	r8 <<= 2
	r4 = r2
	r6 = r8
	r5 = r1
	r6 += -4
	r8 += r2
	r6 >>= 2
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2771
	if r6 == 1 goto .L2706
	if r6 == 2 goto .L2707
	if r6 == 3 goto .L2708
	if r6 == 4 goto .L2709
	if r6 == 5 goto .L2710
	if r6 == 6 goto .L2711
	r9 = *(u32 *) (r2+0)
	r4 += 4
	*(u32 *) (r1+0) = r9
	r5 += 4
.L2711:
	r6 = *(u32 *) (r4+0)
	r5 += 4
	*(u32 *) (r5+-4) = r6
	r4 += 4
.L2710:
	r9 = *(u32 *) (r4+0)
	r5 += 4
	*(u32 *) (r5+-4) = r9
	r4 += 4
.L2709:
	r6 = *(u32 *) (r4+0)
	r5 += 4
	*(u32 *) (r5+-4) = r6
	r4 += 4
.L2708:
	r9 = *(u32 *) (r4+0)
	r5 += 4
	*(u32 *) (r5+-4) = r9
	r4 += 4
.L2707:
	r6 = *(u32 *) (r4+0)
	r5 += 4
	*(u32 *) (r5+-4) = r6
	r4 += 4
.L2706:
	r6 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r6
	r4 += 4
	r5 += 4
	if r4 == r8 goto .L2559
.L2771:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r6 = *(u32 *) (r4+4)
	*(u32 *) (r5+4) = r6
	r9 = *(u32 *) (r4+8)
	*(u32 *) (r5+8) = r9
	r6 = *(u32 *) (r4+12)
	*(u32 *) (r5+12) = r6
	r9 = *(u32 *) (r4+16)
	*(u32 *) (r5+16) = r9
	r6 = *(u32 *) (r4+20)
	*(u32 *) (r5+20) = r6
	r9 = *(u32 *) (r4+24)
	*(u32 *) (r5+24) = r9
	r6 = *(u32 *) (r4+28)
	*(u32 *) (r5+28) = r6
	r4 += 32
	r5 += 32
	if r4 != r8 goto .L2771
.L2559:
	if r0 > r3 goto .L2548
	r8 = r3
	r8 -= r0
	r8 = r8;r8 &= 0xffffffff
	r7 = r8
	r7 += -1
	if r7 <= 6 goto .L2779
	r7 = r1
	r6 = r2
	r7 += r0
	r4 = r0
	r5 = r2
	r4 += 1
	r9 = r7
	r5 += r4
	r6 += r0
	r9 -= r5
	if r9 > 6 goto .L2783
.L2553:
	r3 += -1
	r2 += 1
	r3 -= r0
	r2 += r0
	r0 = r3;r0 &= 0xffffffff
	r0 += r2
	r1 = r0
	r1 -= r6
	r1 &= 7
	if r1 == 0 goto .L2770
	if r1 == 1 goto .L2718
	if r1 == 2 goto .L2719
	if r1 == 3 goto .L2720
	if r1 == 4 goto .L2721
	if r1 == 5 goto .L2722
	if r1 == 6 goto .L2723
	r2 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r2
	r6 += 1
.L2723:
	r3 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r3
	r6 += 1
.L2722:
	r5 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r5
	r6 += 1
.L2721:
	r9 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r9
	r6 += 1
.L2720:
	r4 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r4
	r6 += 1
.L2719:
	r1 = *(u8 *) (r6+0)
	r7 += 1
	*(u8 *) (r7+-1) = r1
	r6 += 1
.L2718:
	r2 = *(u8 *) (r6+0)
	*(u8 *) (r7+0) = r2
	r6 += 1
	r7 += 1
	if r6 == r0 goto .L2784
.L2770:
	r3 = *(u8 *) (r6+0)
	*(u8 *) (r7+0) = r3
	r5 = *(u8 *) (r6+1)
	*(u8 *) (r7+1) = r5
	r9 = *(u8 *) (r6+2)
	*(u8 *) (r7+2) = r9
	r4 = *(u8 *) (r6+3)
	*(u8 *) (r7+3) = r4
	r1 = *(u8 *) (r6+4)
	*(u8 *) (r7+4) = r1
	r2 = *(u8 *) (r6+5)
	*(u8 *) (r7+5) = r2
	r3 = *(u8 *) (r6+6)
	*(u8 *) (r7+6) = r3
	r5 = *(u8 *) (r6+7)
	*(u8 *) (r7+7) = r5
	r6 += 8
	r7 += 8
	if r6 != r0 goto .L2770
	exit
.L2782:
	r9 = r2
	r5 = r1
	r9 += 4
	r5 ^= r9
	r6 = r5
	r6 = -r6
	r6 |= r5
	if r6 s>= 0 goto .L2554
	r7 = r3
	r4 = r2
	r7 >>= 3
	r5 = r1
	r9 = r7
	r9 <<= 3
	r6 = r9
	r9 += r2
	r6 += -8
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2772
	if r6 == 1 goto .L2700
	if r6 == 2 goto .L2701
	if r6 == 3 goto .L2702
	if r6 == 4 goto .L2703
	if r6 == 5 goto .L2704
	if r6 == 6 goto .L2705
	r4 = *(u64 *) (r2+0)
	r5 += 8
	*(u64 *) (r1+0) = r4
	r4 = r2
	r4 += 8
.L2705:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2704:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2703:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2702:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2701:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2700:
	r6 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r6
	r4 += 8
	r5 += 8
	if r4 == r9 goto .L2768
.L2772:
	r6 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r6
	r6 = *(u64 *) (r4+8)
	*(u64 *) (r5+8) = r6
	r6 = *(u64 *) (r4+16)
	*(u64 *) (r5+16) = r6
	r6 = *(u64 *) (r4+24)
	*(u64 *) (r5+24) = r6
	r6 = *(u64 *) (r4+32)
	*(u64 *) (r5+32) = r6
	r6 = *(u64 *) (r4+40)
	*(u64 *) (r5+40) = r6
	r6 = *(u64 *) (r4+48)
	*(u64 *) (r5+48) = r6
	r6 = *(u64 *) (r4+56)
	*(u64 *) (r5+56) = r6
	r4 += 64
	r5 += 64
	if r4 != r9 goto .L2772
.L2768:
	r7 <<= 1
	if r8 == r7 goto .L2559
	r7 <<= 2
	r9 = r2
	r4 = r1
	r9 += r7
	r4 += r7
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	goto .L2559
.L2783:
	r4 = r6
	r4 |= r7
	r4 &= 7
	if r4 != 0 goto .L2553
	r5 = r8
	r5 >>= 3
	r5 <<= 3
	r9 = r5
	r9 += -8
	*(u64 *) (r10+-16) = r9
	r9 = r6
	r9 += r5
	*(u64 *) (r10+-8) = r9
	r4 = r6
	r9 = *(u64 *) (r10+-16)
	r5 = r7
	r9 >>= 3
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2562
	if r9 == 1 goto .L2712
	if r9 == 2 goto .L2713
	if r9 == 3 goto .L2714
	if r9 == 4 goto .L2715
	if r9 == 5 goto .L2716
	if r9 == 6 goto .L2717
	r4 = *(u64 *) (r6+0)
	r5 += 8
	*(u64 *) (r7+0) = r4
	r4 = r6
	r4 += 8
.L2717:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2716:
	r9 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r9
	r4 += 8
.L2715:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2714:
	r9 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r9
	r4 += 8
.L2713:
	r6 = *(u64 *) (r4+0)
	r5 += 8
	*(u64 *) (r5+-8) = r6
	r4 += 8
.L2712:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
	r6 = *(u64 *) (r10+-8)
	if r4 == r6 goto .L2767
.L2562:
	r6 = *(u64 *) (r10+-8)
.L2769:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r9 = *(u64 *) (r4+8)
	*(u64 *) (r5+8) = r9
	r7 = *(u64 *) (r4+16)
	*(u64 *) (r5+16) = r7
	r9 = *(u64 *) (r4+24)
	*(u64 *) (r5+24) = r9
	r7 = *(u64 *) (r4+32)
	*(u64 *) (r5+32) = r7
	r9 = *(u64 *) (r4+40)
	*(u64 *) (r5+40) = r9
	r7 = *(u64 *) (r4+48)
	*(u64 *) (r5+48) = r7
	r7 = *(u64 *) (r4+56)
	*(u64 *) (r5+56) = r7
	r4 += 64
	r5 += 64
	if r4 != r6 goto .L2769
.L2767:
	r4 = r8
	r8 &= 7
	r4 &= -8
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	if r8 == 0 goto .L2548
	r5 = r1
	r9 = r2
	r5 += r0
	r9 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r5 = r0
	r5 += 1
	r9 = r5;r9 &= 0xffffffff
	if r9 > r3 goto .L2548
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 2
	r4 = r9;r4 &= 0xffffffff
	if r4 > r3 goto .L2548
	r6 = r2
	r5 = r1
	r6 += r4
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 3
	r9 = r4;r9 &= 0xffffffff
	if r9 > r3 goto .L2548
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 4
	r4 = r9;r4 &= 0xffffffff
	if r4 > r3 goto .L2548
	r6 = r2
	r5 = r1
	r6 += r4
	r5 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r9
	r4 = r0
	r4 += 5
	r9 = r4;r9 &= 0xffffffff
	if r9 > r3 goto .L2548
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2548
	r2 += r0
	r1 += r0
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2780:
	r5 = r3
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r0 = r9
	if r3 == 0 goto .L2548
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2773
	if r3 == 1 goto .L2694
	if r3 == 2 goto .L2695
	if r3 == 3 goto .L2696
	if r3 == 4 goto .L2697
	if r3 == 5 goto .L2698
	if r3 == 6 goto .L2699
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 += -1
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
.L2699:
	r4 = r1
	r3 = r2
	r4 += r0
	r3 += r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r5
.L2698:
	r9 = r1
	r4 = r2
	r9 += r0
	r4 += r0
	r0 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
.L2697:
	r5 = r1
	r9 = r2
	r5 += r0
	r9 += r0
	r0 += -1
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
.L2696:
	r5 = r1
	r3 = r2
	r5 += r0
	r3 += r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r9
.L2695:
	r4 = r1
	r5 = r2
	r4 += r0
	r5 += r0
	r0 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2694:
	r9 = r2
	r5 = r1
	r9 += r0
	r5 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r0 += -1
	if r0 == -1 goto .L2785
.L2773:
	r6 = r2
	r6 += r0
	r5 = r1
	r4 = *(u8 *) (r6+0)
	r5 += r0
	r6 = r2
	r6 += r0
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r6+-1)
	r5 += r0
	r6 = r1
	*(u8 *) (r5+-1) = r3
	r6 += r0
	r4 = r2
	r5 = r1
	r4 += r0
	r5 += r0
	r9 = *(u8 *) (r4+-2)
	*(u8 *) (r6+-2) = r9
	r6 = r2
	r6 += r0
	r3 = *(u8 *) (r6+-3)
	r6 = r2
	*(u8 *) (r5+-3) = r3
	r6 += r0
	r5 = r1
	r4 = *(u8 *) (r6+-4)
	r5 += r0
	*(u8 *) (r5+-4) = r4
	r3 = r2
	r4 = r0
	r3 += r0
	r4 += -6
	r9 = *(u8 *) (r3+-5)
	r6 = r1
	r5 = r1
	r6 += r0
	r5 += r4
	*(u8 *) (r6+-5) = r9
	r6 = r2
	r9 = r2
	r6 += r4
	r9 += r0
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r9+-7)
	r5 += r0
	*(u8 *) (r5+-7) = r3
	r0 += -8
	if r0 != -1 goto .L2773
.L2548:
	exit
.L2781:
	if r3 == 0 goto .L2548
.L2779:
	r1 += r0
	r6 = r2
	r7 = r1
	r6 += r0
	goto .L2553
.L2785:
	exit
.L2784:
	exit
	.size	__cmovw, .-__cmovw
	.align	3
	.global	__modi
	.type	__modi, @function
__modi:
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	call	__moddi3
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
	r2 = r1
	r0 = r1
	r2 <<= 32
	r3 = r1
	r0 >>= 15
	if r0 != 0 goto .L2795
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2794
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2796
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2797
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2798
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2799
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2800
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2801
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2802
	r2 >>= 38
	if r2 != 0 goto .L2803
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2804
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2805
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2806
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2807
	r3 >>= 1
	if r3 != 0 goto .L2808
	r0 = 16
	if r1 != 0 goto .L2811
.L2794:
	exit
.L2795:
	r0 = 0
	exit
.L2806:
	r0 = 12
	exit
.L2811:
	r0 = 15
	exit
.L2796:
	r0 = 2
	exit
.L2797:
	r0 = 3
	exit
.L2798:
	r0 = 4
	exit
.L2799:
	r0 = 5
	exit
.L2800:
	r0 = 6
	exit
.L2801:
	r0 = 7
	exit
.L2802:
	r0 = 8
	exit
.L2803:
	r0 = 9
	exit
.L2804:
	r0 = 10
	exit
.L2805:
	r0 = 11
	exit
.L2807:
	r0 = 13
	exit
.L2808:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2815
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2816
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2817
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2818
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2819
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2820
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2821
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2822
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2823
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2824
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2825
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2826
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2827
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2828
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2829
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2832
	exit
.L2815:
	r0 = 0
	exit
.L2816:
	r0 = 1
	exit
.L2827:
	r0 = 12
	exit
.L2832:
	r0 = 15
	exit
.L2817:
	r0 = 2
	exit
.L2818:
	r0 = 3
	exit
.L2819:
	r0 = 4
	exit
.L2820:
	r0 = 5
	exit
.L2821:
	r0 = 6
	exit
.L2822:
	r0 = 7
	exit
.L2823:
	r0 = 8
	exit
.L2824:
	r0 = 9
	exit
.L2825:
	r0 = 10
	exit
.L2826:
	r0 = 11
	exit
.L2828:
	r0 = 13
	exit
.L2829:
	r0 = 14
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r2 = 0x47000000 ll
	r6 = r1
	call	__gesf2
	if r0 s>= 0 goto .L2839
	r1 = r6
	call	__fixsfdi
	exit
.L2839:
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
	r1 &= 0xffff
	r3 = r1
	r2 = r1
	r4 = r1
	r5 = r1
	r3 >>= 1
	r2 >>= 2
	r3 &= 1
	r2 &= 1
	r4 >>= 3
	r5 >>= 4
	r4 &= 1
	r5 &= 1
	r0 = r1
	r9 = r1
	r0 &= 1
	r9 >>= 5
	r0 += r3
	r9 &= 1
	r0 += r2
	r3 = r1
	r0 += r4
	r2 = r1
	r0 += r5
	r4 = r1
	r5 = r1
	r2 >>= 6
	r3 >>= 7
	r2 &= 1
	r3 &= 1
	r4 >>= 8
	r5 >>= 9
	r4 &= 1
	r5 &= 1
	r0 += r9
	r9 = r1
	r0 += r2
	r9 >>= 10
	r0 += r3
	r9 &= 1
	r0 += r4
	r3 = r1
	r0 += r5
	r2 = r1
	r0 += r9
	r4 = r1
	r5 = r1
	r3 >>= 11
	r1 >>= 15
	r3 &= 1
	r2 >>= 12
	r0 += r3
	r2 &= 1
	r4 >>= 13
	r0 += r2
	r4 &= 1
	r5 >>= 14
	r0 += r4
	r5 &= 1
	r0 += r5
	r0 += r1
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r1 &= 0xffff
	r3 = r1
	r2 = r1
	r4 = r1
	r5 = r1
	r3 >>= 1
	r2 >>= 2
	r3 &= 1
	r2 &= 1
	r4 >>= 3
	r5 >>= 4
	r4 &= 1
	r5 &= 1
	r0 = r1
	r9 = r1
	r0 &= 1
	r9 >>= 5
	r0 += r3
	r9 &= 1
	r0 += r2
	r3 = r1
	r0 += r4
	r2 = r1
	r0 += r5
	r4 = r1
	r5 = r1
	r2 >>= 6
	r3 >>= 7
	r2 &= 1
	r3 &= 1
	r4 >>= 8
	r5 >>= 9
	r4 &= 1
	r5 &= 1
	r0 += r9
	r9 = r1
	r0 += r2
	r9 >>= 10
	r0 += r3
	r9 &= 1
	r0 += r4
	r3 = r1
	r0 += r5
	r2 = r1
	r0 += r9
	r4 = r1
	r5 = r1
	r3 >>= 11
	r1 >>= 15
	r3 &= 1
	r2 >>= 12
	r0 += r3
	r2 &= 1
	r4 >>= 13
	r0 += r2
	r4 &= 1
	r5 >>= 14
	r0 += r4
	r5 &= 1
	r0 += r5
	r0 += r1
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2845
	r0 = 0
.L2844:
	r3 = r1
	r4 = r5
	r1 &= 1
	r4 += r5
	r1 = -r1
	r3 >>= 1
	r1 &= r5
	r9 = r4;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2861
	r1 = r3
	r5 = r9
	r3 &= 1
	r5 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r4 = r5;r4 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2843
	r2 = r1
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r2 >>= 1
	r1 &= r4
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2843
	r1 = r2
	r5 = r9
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 1
	r2 &= r9
	r4 = r5;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2843
	r2 = r1
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r2 >>= 1
	r1 &= r4
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2843
	r3 = r2
	r1 = r9
	r2 &= 1
	r1 += r9
	r2 = -r2
	r3 >>= 1
	r2 &= r9
	r4 = r1;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2843
	r1 = r3
	r5 = r4
	r3 &= 1
	r5 += r4
	r3 = -r3
	r1 >>= 1
	r3 &= r4
	r9 = r5;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2843
	r3 = r1
	r2 = r9
	r3 &= 1
	r2 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r5 = r2;r5 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 != 0 goto .L2844
	exit
.L2845:
	r0 = r1
.L2843:
	exit
.L2861:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2865
	if r2 == 0 goto .L2866
	r0 = 0
.L2864:
	r3 = r2
	r4 = r1
	r2 &= 1
	r4 += r1
	r2 = -r2
	r3 >>= 1
	r2 &= r1
	r9 = r4;r9 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2882
	r1 = r3
	r5 = r9
	r3 &= 1
	r5 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r4 = r5;r4 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2863
	r2 = r1
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r2 >>= 1
	r1 &= r4
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2863
	r1 = r2
	r5 = r9
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 1
	r2 &= r9
	r4 = r5;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2863
	r2 = r1
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r2 >>= 1
	r1 &= r4
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2863
	r1 = r2
	r5 = r9
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 1
	r2 &= r9
	r4 = r5;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2863
	r2 = r1
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r2 >>= 1
	r1 &= r4
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2863
	r5 = r2
	r1 = r9
	r5 &= 1
	r1 += r9
	r5 = -r5
	r1 = r1;r1 &= 0xffffffff
	r5 &= r9
	r2 >>= 1
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L2864
	exit
.L2866:
	r0 = r2
.L2863:
	exit
.L2865:
	r0 = r1
	exit
.L2882:
	exit
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r3 s>>= 32
	r4 = 1
	if r0 < r2 goto .L2885
	r9 = 32
	r4 = 1
.L2884:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2885
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2886
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2884
.L2887:
	if r3 != 0 goto .L2891
	r0 = r9
.L2891:
	exit
.L2886:
	if r4 == 0 goto .L2893
.L2885:
	r9 = 0
.L2890:
	if r2 >= r0 goto .L2889
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2889:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2890
	goto .L2887
.L2893:
	r9 = r4
	goto .L2887
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2915
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2916
	r0 = r8
	r0 &= 1
	exit
.L2916:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2915:
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
	r3 = 0
	if r3 s>= r0 goto .L2920
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2921
	r0 = r8
	r0 &= 1
	exit
.L2921:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2920:
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
	r0 = r1
	r2 <<= 32
	r0 <<= 32
	r3 = r2
	r0 s>>= 32
	r3 s>>= 32
	if r2 s< 0 goto .L2952
	if r3 == 0 goto .L2930
	r4 = 0
.L2926:
	r1 = r0
	r5 = r3
	r1 <<= 33
	r5 &= 1
	r2 = r3
	r5 = -r5
	r2 s>>= 1
	r0 &= r5
	r2 <<= 32
	r1 s>>= 32
	r9 = r2
	r9 s>>= 32
	if r2 == 0 goto .L2928
	r5 = r1
	r9 &= 1
	r5 <<= 33
	r9 = -r9
	r5 s>>= 32
	r1 &= r9
	r2 s>>= 33
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2928
	r1 = 30
.L2929:
	r3 = r2
	r2 &= 1
	r2 = -r2
	r9 = r5
	r3 s>>= 1
	r5 &= r2
	r9 <<= 33
	r2 = r3
	r0 += r5
	r9 s>>= 32
	r0 <<= 32
	r2 <<= 32
	r0 s>>= 32
	if r3 == 0 goto .L2928
	r3 &= 1
	r3 = -r3
	r5 = r9
	r1 += -1
	r9 &= r3
	r2 s>>= 33
	r5 <<= 33
	r3 = r2
	r0 += r9
	r1 &= 0xff
	r0 <<= 32
	r5 s>>= 32
	r3 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2928
	r2 &= 1
	r2 = -r2
	r3 s>>= 33
	r6 = r5
	r9 = r3
	r5 &= r2
	r1 += -1
	r6 <<= 33
	r0 += r5
	r1 &= 0xff
	r0 <<= 32
	r6 s>>= 32
	r3 <<= 32
	r2 = r9
	r0 s>>= 32
	if r9 == 0 goto .L2928
	r2 &= 1
	r2 = -r2
	r9 = r6
	r5 = r6
	r3 s>>= 33
	r5 &= r2
	r1 += -1
	r9 <<= 33
	r0 += r5
	r6 = r9
	r2 = r3
	r0 <<= 32
	r1 &= 0xff
	r6 s>>= 32
	r2 <<= 32
	r0 s>>= 32
	if r3 == 0 goto .L2928
	r5 = r6
	r1 += -1
	r3 &= 1
	r5 <<= 33
	r3 = -r3
	r1 &= 0xff
	r6 &= r3
	r5 s>>= 32
	r0 += r6
	r2 s>>= 33
	r0 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2928
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2929
.L2928:
	if r4 == 0 goto .L2927
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2930:
	r0 = r3
.L2927:
	exit
.L2952:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2926
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2987
	r0 = 1
	r4 = 0
.L2954:
	if r2 s>= 0 goto .L2955
	r2 = -r2
	r4 = r0
.L2955:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2957
	r0 = 32
	r1 = 1
.L2956:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2957
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2956
.L2959:
	if r4 == 0 goto .L2953
	r0 = -r0
.L2953:
	exit
.L2958:
	if r1 == 0 goto .L2967
.L2957:
	r0 = 0
.L2962:
	if r2 >= r3 goto .L2961
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2961:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2962
	goto .L2959
.L2987:
	r1 = -r1
	r0 = 0
	r4 = 1
	goto .L2954
.L2967:
	r0 = r1
	goto .L2959
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L3027
	r4 = 0
.L2989:
	if r0 s>= 0 goto .L2990
	r0 = -r0
.L2990:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L3025
	r9 = 32
	r1 = 1
.L2991:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L3025
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3026
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2991
.L2994:
	r0 = r3
	if r4 == 0 goto .L2988
	r0 = -r0
.L2988:
	exit
.L3026:
	if r1 == 0 goto .L2994
.L3025:
	if r0 >= r3 goto .L2996
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2996:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L3025
	goto .L2994
.L3027:
	r1 = -r1
	r4 = 1
	goto .L2989
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r0 < r2 goto .L3144
	r4 = r2
	r1 = 0
	r4 <<= 48
	if r4 s<= r1 goto .L3031
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L3085
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3033
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L3086
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3035
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L3087
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3037
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L3088
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3039
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L3089
	r5 = r4
	r5 <<= 48
	if r5 s<= r1 goto .L3041
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L3090
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3043
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L3091
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3045
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L3092
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3047
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L3093
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3049
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L3094
	r9 = r4
	r9 <<= 48
	if r9 s<= r1 goto .L3051
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L3095
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3053
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L3096
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3055
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L3097
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3057
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L3098
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3059
	r1 = r2
	r1 <<= 15
	r1 &= 0xffff
	if r1 > r0 goto .L3060
	if r1 != 0 goto .L3145
.L3061:
	if r3 != 0 goto .L3113
	r0 = r1
	exit
.L3113:
	exit
.L3093:
	r5 = 512
.L3080:
	r9 = r5
	r2 = r4
	r9 >>= 1
	r2 >>= 1
	r1 = 0
.L3081:
	if r2 >= r0 goto .L3063
	r0 -= r2
	r1 |= r9
	r0 &= 0xffff
.L3063:
	r2 = r5
	r9 = r4
	r2 >>= 2
	r9 >>= 2
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3064
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3064:
	r2 = r5
	r9 = r4
	r2 >>= 3
	r9 >>= 3
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3065
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3065:
	r2 = r5
	r9 = r4
	r2 >>= 4
	r9 >>= 4
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3066
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3066:
	r2 = r5
	r9 = r4
	r2 >>= 5
	r9 >>= 5
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3067
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3067:
	r2 = r5
	r9 = r4
	r2 >>= 6
	r9 >>= 6
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3068
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3068:
	r2 = r5
	r9 = r4
	r2 >>= 7
	r9 >>= 7
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3069
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3069:
	r2 = r5
	r9 = r4
	r2 >>= 8
	r9 >>= 8
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3070
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3070:
	r2 = r5
	r9 = r4
	r2 >>= 9
	r9 >>= 9
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3071
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3071:
	r2 = r5
	r9 = r4
	r2 >>= 10
	r9 >>= 10
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3072
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3072:
	r2 = r5
	r9 = r4
	r2 >>= 11
	r9 >>= 11
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3073
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3073:
	r2 = r5
	r9 = r4
	r2 >>= 12
	r9 >>= 12
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3074
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3074:
	r2 = r5
	r9 = r4
	r2 >>= 13
	r9 >>= 13
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3075
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3075:
	r2 = r5
	r9 = r4
	r2 >>= 14
	r9 >>= 14
	if r2 == 0 goto .L3061
	if r9 >= r0 goto .L3076
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3076:
	r4 >>= 15
	if r5 == 16384 goto .L3061
	if r4 >= r0 goto .L3083
	r0 -= r4
	r1 |= 1
	r0 &= 0xffff
	goto .L3061
.L3145:
	r4 = 32768
	r0 += -32768
	r2 = 16384
	r0 &= 0xffff
	r9 = r2
	r5 = r4
	r1 = r4
	goto .L3081
.L3083:
	r0 = 0
	goto .L3061
.L3144:
	if r2 == r0 goto .L3082
	r1 = 0
	goto .L3061
.L3031:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L3061
.L3033:
	r0 -= r4
	r5 = 2
	r0 &= 0xffff
	r2 &= 32767
	r9 = 1
	r1 = r5
	goto .L3081
.L3035:
	r0 -= r4
	r5 = 4
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2
	r1 = r5
	goto .L3081
.L3037:
	r0 -= r4
	r5 = 8
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4
	r1 = r5
	goto .L3081
.L3039:
	r0 -= r4
	r5 = 16
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8
	r1 = r5
	goto .L3081
.L3041:
	r0 -= r4
	r5 = 32
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16
	r1 = r5
	goto .L3081
.L3043:
	r0 -= r4
	r5 = 64
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 32
	r1 = r5
	goto .L3081
.L3045:
	r0 -= r4
	r5 = 128
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 64
	r1 = r5
	goto .L3081
.L3047:
	r0 -= r4
	r5 = 256
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 128
	r1 = r5
	goto .L3081
.L3049:
	r0 -= r4
	r5 = 512
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 256
	r1 = r5
	goto .L3081
.L3082:
	r1 = 1
	r0 = 0
	goto .L3061
.L3085:
	r5 = 2
	goto .L3080
.L3051:
	r0 -= r4
	r5 = 1024
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 512
	r1 = r5
	goto .L3081
.L3086:
	r5 = 4
	goto .L3080
.L3053:
	r0 -= r4
	r5 = 2048
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 1024
	r1 = r5
	goto .L3081
.L3055:
	r0 -= r4
	r5 = 4096
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2048
	r1 = r5
	goto .L3081
.L3087:
	r5 = 8
	goto .L3080
.L3057:
	r0 -= r4
	r5 = 8192
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4096
	r1 = r5
	goto .L3081
.L3088:
	r5 = 16
	goto .L3080
.L3089:
	r5 = 32
	goto .L3080
.L3059:
	r0 -= r4
	r5 = 16384
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8192
	r1 = r5
	goto .L3081
.L3060:
	r5 = r0
	r2 = 0
	r5 <<= 48
	r4 = 32768
	if r5 s<= r2 goto .L3084
	r5 = r4
	goto .L3080
.L3090:
	r5 = 64
	goto .L3080
.L3091:
	r5 = 128
	goto .L3080
.L3084:
	r0 = r2
	r5 = r4
	r1 = r4
	goto .L3063
.L3092:
	r5 = 256
	goto .L3080
.L3096:
	r5 = 4096
	goto .L3080
.L3097:
	r5 = 8192
	goto .L3080
.L3098:
	r5 = 16384
	goto .L3080
.L3095:
	r5 = 2048
	goto .L3080
.L3094:
	r5 = 1024
	goto .L3080
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L3148
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3147:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3148
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3149
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L3147
.L3150:
	if r3 == 0 goto .L3146
	r5 = r1
.L3146:
	r0 = r5
	exit
.L3149:
	if r4 == 0 goto .L3150
.L3148:
	r5 = 0
.L3153:
	if r2 >= r1 goto .L3152
	r1 -= r2
	r5 |= r4
.L3152:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3153
	goto .L3150
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L3180
	r2 += -32
	r0 = 0
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r3 <<= 32
	r0 |= r3
	exit
.L3180:
	if r2 == 0 goto .L3183
	r4 = 32
	r4 -= r2
	r0 = r4;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	r9 = r3
	r1 s>>= 32
	r9 <<= r5
	r1 <<= r5
	r3 >>= r0
	r0 = r9;r0 &= 0xffffffff
	r3 |= r1
	r3 <<= 32
	r3 s>>= 32
	r3 <<= 32
	r0 |= r3
	exit
.L3183:
	r0 = r1
	exit
	.size	__ashldi3, .-__ashldi3
	.align	3
	.global	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	r3 <<= 32
	r3 s>>= 32
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L3185
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L3185:
	if r3 == 0 goto .L3188
	r5 = r3;r5 &= 0xffffffff
	r0 = r1
	r2 <<= r5
	r4 = 64
	r0 <<= r5
	r4 -= r3
	r3 = r4;r3 &= 0xffffffff
	r1 >>= r3
	r1 |= r2
	exit
.L3188:
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
	if r0 == 0 goto .L3190
	r2 += -32
	r4 = r1
	r3 = r2
	r4 s>>= 32
	r1 s>>= 63
	r3 <<= 32
	r1 <<= 32
	r3 s>>= 32
	r0 = r1
	r4 s>>= r3
	r2 = r4;r2 &= 0xffffffff
	r0 |= r2
	exit
.L3190:
	if r2 == 0 goto .L3193
	r9 = r2;r9 &= 0xffffffff
	r4 = r1
	r3 = r1;r3 &= 0xffffffff
	r4 s>>= 32
	r3 >>= r9
	r0 = r4
	r5 = 32
	r5 -= r2
	r5 = r5;r5 &= 0xffffffff
	r0 <<= r5
	r0 |= r3
	r1 = r4
	r1 s>>= r2
	r2 = r0;r2 &= 0xffffffff
	r1 <<= 32
	r0 = r1
	r0 |= r2
	exit
.L3193:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r3 <<= 32
	r3 s>>= 32
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L3195
	r5 = r2
	r0 = r2
	r5 s>>= 63
	r3 += -64
	r1 = r5
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L3195:
	if r3 == 0 goto .L3198
	r4 = r3;r4 &= 0xffffffff
	r5 = 64
	r1 >>= r4
	r5 -= r3
	r0 = r2
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r0 <<= r9
	r5 s>>= r3
	r0 |= r1
	r1 = r5
	exit
.L3198:
	r0 = r1
	r1 = r2
	exit
	.size	__ashrti3, .-__ashrti3
	.align	3
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	r0 = r1
	r0 = be64 r0
	exit
	.size	__bswapdi2, .-__bswapdi2
	.align	3
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	r0 = r1
	r0 = be32 r0
	exit
	.size	__bswapsi2, .-__bswapsi2
	.align	3
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 65534 goto .L3202
	r0 = 0
.L3202:
	r0 <<= 36
	r2 = 16
	r0 s>>= 32
	r3 = 8
	r2 -= r0
	r4 = r2;r4 &= 0xffffffff
	r1 >>= r4
	r5 = r1;r5 &= 0xffffffff
	r1 &= 65280
	r1 += -1
	r1 >>= 63
	r1 <<= 3
	r3 -= r1
	r0 += r1
	r9 = r3;r9 &= 0xffffffff
	r2 = 4
	r5 >>= r9
	r3 = 2
	r1 = r5;r1 &= 0xffffffff
	r5 &= 240
	r5 += -1
	r5 >>= 63
	r5 <<= r3
	r2 -= r5
	r0 += r5
	r4 = r2;r4 &= 0xffffffff
	r9 = r3
	r1 >>= r4
	r5 = r1;r5 &= 0xffffffff
	r1 &= 12
	r1 += -1
	r1 >>= 63
	r1 <<= 1
	r9 -= r1
	r2 = r9;r2 &= 0xffffffff
	r5 >>= r2
	r9 = r5;r9 &= 0xffffffff
	r4 = r9
	r4 >>= 1
	r4 &= 1
	r5 = r4
	r5 ^= 1
	if r4 != 0 goto .L3203
	r3 -= r9
	r0 += r1
	r0 += r3
	exit
.L3203:
	r3 = r5
	r0 += r1
	r0 += r3
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L3206
	r6 = 0
.L3206:
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3208
	r0 = 0
.L3208:
	r1 |= r0
	r6 <<= 6
	call	__clzdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += r6
	exit
	.size	__clzti2, .-__clzti2
	.align	3
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	r3 = r1
	r0 = r2
	r3 s>>= 32
	r0 s>>= 32
	if r0 s>= r3 goto .L3219
	if r3 s> r0 goto .L3220
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3219
	if r1 > r2 goto .L3220
	r0 = 1
	exit
.L3219:
	r0 = 0
	exit
.L3220:
	r0 = 2
	exit
	.size	__cmpdi2, .-__cmpdi2
	.align	3
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	r3 = r1
	r0 = r2
	r3 s>>= 32
	r0 s>>= 32
	if r0 s>= r3 goto .L3226
	if r3 s> r0 goto .L3225
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3226
	r0 = 1
	if r1 <= r2 goto .L3227
	r0 &= 1
	exit
.L3226:
	r0 = -1
	exit
.L3227:
	r0 = 0
	r0 &= 1
	exit
.L3225:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L3232
	if r2 s> r4 goto .L3233
	if r3 >= r1 goto .L3232
	if r1 > r3 goto .L3233
	r0 = 1
	exit
.L3232:
	r0 = 0
	exit
.L3233:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r1 <<= 32
	r3 = r1
	r1 >>= 32
	r3 s>>= 32
	r3 &= 0xffff
	r3 += -1
	r3 >>= 63
	r3 <<= 4
	r1 >>= r3
	r2 = r1;r2 &= 0xffffffff
	r1 &= 0xff
	r1 += -1
	r1 >>= 63
	r4 = r1
	r4 <<= 3
	r1 = 2
	r3 += r4
	r2 >>= r4
	r4 = r2;r4 &= 0xffffffff
	r2 &= 15
	r2 += -1
	r2 >>= 63
	r2 <<= 2
	r4 >>= r2
	r3 += r2
	r5 = r4;r5 &= 0xffffffff
	r4 &= 3
	r4 += -1
	r4 >>= 63
	r4 <<= 1
	r5 >>= r4
	r3 += r4
	r5 &= 3
	r0 = r5
	r5 >>= 1
	r0 ^= -1
	r1 -= r5
	r0 &= 1
	r0 = -r0
	r0 &= r1
	r0 += r3
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	r0 = r1
	r6 = 1
	if r1 == 0 goto .L3236
	r6 = 0
.L3236:
	if r0 == 0 goto .L3242
	r1 = 0
.L3238:
	r2 = r6
	r2 += -1
	r2 &= r0
	r6 <<= 6
	r1 |= r2
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += r6
	exit
.L3242:
	r1 = r2
	goto .L3238
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3246
	if r2 != 0 goto .L3249
	r0 = r2
	exit
.L3246:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L3249:
	r1 = r2
	call	__ctzdi2
	r2 = 279172874240 ll
	r0 <<= 32
	r0 += r2
	r0 s>>= 32
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
	if r0 == 0 goto .L3251
	r0 = 0
	r0 <<= 32
	r2 += -32
	r4 = r0
	r5 = r2;r5 &= 0xffffffff
	r1 >>= 32
	r1 >>= r5
	r3 = r1;r3 &= 0xffffffff
	r0 = r3
	r0 |= r4
	exit
.L3251:
	if r2 == 0 goto .L3254
	r5 = r2;r5 &= 0xffffffff
	r3 = r1
	r4 = 32
	r3 >>= 32
	r4 -= r2
	r9 = r3
	r9 >>= r5
	r0 = r9;r0 &= 0xffffffff
	r0 <<= 32
	r2 = r4;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	r4 = r0
	r1 >>= r5
	r3 <<= r2
	r3 |= r1
	r3 = r3;r3 &= 0xffffffff
	r0 = r3
	r0 |= r4
	exit
.L3254:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r3 <<= 32
	r3 s>>= 32
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L3256
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L3256:
	if r3 == 0 goto .L3259
	r5 = r3;r5 &= 0xffffffff
	r1 >>= r5
	r4 = r2
	r0 = r2
	r4 >>= r5
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r0 <<= r3
	r0 |= r1
	r1 = r4
	exit
.L3259:
	r0 = r1
	r1 = r2
	exit
	.size	__lshrti3, .-__lshrti3
	.align	3
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	r4 = r1;r4 &= 0xffff
	r5 = r2;r5 &= 0xffff
	r0 = r4
	r1 = r1;r1 &= 0xffffffff
	r0 *= r5
	r1 >>= 16
	r2 = r2;r2 &= 0xffffffff
	r5 *= r1
	r2 >>= 16
	r4 *= r2
	r1 *= r2
	r3 = r0
	r0 &= 65535
	r3 >>= 16
	r3 += r5
	r9 = r3;r9 &= 0xffffffff
	r5 = r9
	r9 >>= 16
	r5 <<= 16
	r9 += r1
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 = r0
	r0 &= 65535
	r1 >>= 16
	r1 += r4
	r4 = r1;r4 &= 0xffffffff
	r2 = r4
	r4 >>= 16
	r2 <<= 16
	r9 += r4
	r0 += r2
	r9 <<= 32
	r0 = r0;r0 &= 0xffffffff
	r0 |= r9
	exit
	.size	__muldsi3, .-__muldsi3
	.align	3
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	r4 = r2;r4 &= 0xffffffff
	r6 = r2;r6 &= 0xffff
	r2 s>>= 32
	r5 = r1;r5 &= 0xffffffff
	r9 = r1;r9 &= 0xffff
	r3 = r5
	r0 = r9
	r3 *= r2
	r0 *= r6
	r5 >>= 16
	r2 = r4
	r6 *= r5
	r4 >>= 16
	r9 *= r4
	r5 *= r4
	r4 = r0
	r4 >>= 16
	r4 += r6
	r4 = r4;r4 &= 0xffffffff
	r6 = r4
	r6 <<= 16
	r1 s>>= 32
	r0 &= 65535
	r4 >>= 16
	r0 += r6
	r4 += r5
	r0 = r0;r0 &= 0xffffffff
	r5 = r0
	r5 >>= 16
	r5 += r9
	r9 = r5;r9 &= 0xffffffff
	r6 = r9
	r9 >>= 16
	r4 += r9
	r4 <<= 32
	r2 *= r1
	r6 <<= 16
	r1 = 4294967295 ll
	r0 &= 65535
	r0 += r6
	r0 &= r1
	r0 |= r4
	r4 = r0
	r0 &= r1
	r4 s>>= 32
	r3 += r4
	r3 += r2
	r3 <<= 32
	r0 |= r3
	exit
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	3
	.global	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	r5 = 4294967295 ll
	r7 = r2
	r9 = r1
	r2 = r1
	r3 = r7
	r2 &= r5
	r3 &= r5
	r0 = r2
	r0 *= r3
	r1 = r0
	r1 >>= 32
	r7 >>= 32
	r9 >>= 32
	r0 &= r5
	r3 *= r9
	r2 *= r7
	r3 += r1
	r9 *= r7
	r6 = r3
	r1 = r3
	r6 <<= 32
	r1 >>= 32
	r0 += r6
	r1 += r9
	r6 >>= 32
	r0 &= r5
	r2 += r6
	r4 = r2
	r2 >>= 32
	r4 <<= 32
	r1 += r2
	r0 += r4
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	r0 = r2
	r5 = r1
	r2 = r1
	r1 >>= 32
	r9 = 4294967295 ll
	r5 *= r4
	r2 &= r9
	r7 = r3
	r4 = r1
	r7 &= r9
	r6 = r3
	r3 >>= 32
	r6 *= r0
	r0 = r2
	r0 *= r7
	r7 *= r1
	r1 = r0
	r1 >>= 32
	r4 *= r3
	r7 += r1
	r2 *= r3
	r0 &= r9
	r3 = r7
	r1 = r5
	r3 <<= 32
	r7 >>= 32
	r0 += r3
	r7 += r4
	r0 &= r9
	r3 >>= 32
	r2 += r3
	r9 = r2
	r2 >>= 32
	r9 <<= 32
	r7 += r2
	r0 += r9
	r1 += r7
	r1 += r6
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
	r0 = r1
	r3 = 1
	r0 = -r0
	if r1 != 0 goto .L3266
	r3 = r0
.L3266:
	r1 = r2
	r1 = -r1
	r1 -= r3
	exit
	.size	__negti2, .-__negti2
	.align	3
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	r2 = r1
	r0 = 27030
	r2 s>>= 32
	r2 ^= r1
	r1 = r2;r1 &= 0xffffffff
	r3 = r1
	r3 >>= 16
	r3 ^= r1
	r4 = r3
	r4 >>= 8
	r4 ^= r3
	r5 = r4
	r5 >>= 4
	r5 ^= r4
	r5 &= 15
	r0 s>>= r5
	r0 &= 1
	exit
	.size	__paritydi2, .-__paritydi2
	.align	3
	.global	__parityti2
	.type	__parityti2, @function
__parityti2:
	r1 ^= r2
	r0 = 27030
	r2 = r1
	r2 s>>= 32
	r2 ^= r1
	r1 = r2;r1 &= 0xffffffff
	r3 = r1
	r3 >>= 16
	r3 ^= r1
	r4 = r3
	r4 >>= 8
	r4 ^= r3
	r5 = r4
	r5 >>= 4
	r5 ^= r4
	r5 &= 15
	r0 s>>= r5
	r0 &= 1
	exit
	.size	__parityti2, .-__parityti2
	.align	3
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	r1 = r1;r1 &= 0xffffffff
	r0 = 27030
	r3 = r1
	r3 >>= 16
	r3 ^= r1
	r2 = r3
	r2 >>= 8
	r2 ^= r3
	r4 = r2
	r4 >>= 4
	r4 ^= r2
	r4 &= 15
	r0 s>>= r4
	r0 &= 1
	exit
	.size	__paritysi2, .-__paritysi2
	.align	3
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	r4 = 3689348814741910323 ll
	r2 = 6148914691236517205 ll
	r3 = 1085102592571150095 ll
	r0 = r1
	r0 >>= 1
	r0 &= r2
	r1 -= r0
	r5 = r1
	r1 &= r4
	r5 >>= 2
	r5 &= r4
	r5 += r1
	r9 = r5
	r9 >>= 4
	r9 += r5
	r9 &= r3
	r1 = r9
	r1 >>= 32
	r1 += r9
	r4 = r1;r4 &= 0xffffffff
	r2 = r4
	r2 >>= 16
	r2 += r4
	r0 = r2;r0 &= 0xffffffff
	r3 = r0
	r3 >>= 8
	r0 += r3
	r0 &= 127
	exit
	.size	__popcountdi2, .-__popcountdi2
	.align	3
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	r0 = r1;r0 &= 0xffffffff
	r1 = r0
	r1 >>= 1
	r1 &= 1431655765
	r0 -= r1
	r2 = r0;r2 &= 0xffffffff
	r3 = r2
	r2 &= 858993459
	r3 >>= 2
	r3 &= 858993459
	r3 += r2
	r4 = r3
	r4 >>= 4
	r3 += r4
	r3 &= 252645135
	r0 = r3
	r0 >>= 16
	r0 += r3
	r5 = r0
	r5 >>= 8
	r0 += r5
	r0 &= 63
	exit
	.size	__popcountsi2, .-__popcountsi2
	.align	3
	.global	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	r4 = r1
	r4 >>= 1
	r3 = 6148914691236517205 ll
	r0 = r2
	r5 = r2
	r0 <<= 63
	r5 >>= 1
	r0 |= r4
	r5 &= r3
	r0 &= r3
	r4 = r1
	r9 = 1
	r4 -= r0
	if r4 > r1 goto .L3273
	r9 = 0
.L3273:
	r3 = 3689348814741910323 ll
	r6 = r4
	r4 &= r3
	r2 -= r5
	r6 >>= 2
	r2 -= r9
	r5 = r4
	r0 = r2
	r1 = r2
	r0 <<= 62
	r1 >>= 2
	r0 |= r6
	r1 &= r3
	r0 &= r3
	r2 &= r3
	r4 = r0
	r9 = 1
	r4 += r5
	if r0 >= r4 goto .L3274
	r9 = 0
.L3274:
	r3 = r1
	r3 += r2
	r2 = r4
	r2 >>= 4
	r1 = r9
	r0 = 1
	r1 += r3
	r9 = r1
	r5 = r1
	r9 <<= 60
	r5 >>= 4
	r9 |= r2
	r2 = r9
	r2 += r4
	if r9 >= r2 goto .L3275
	r0 = 0
.L3275:
	r4 = 1085102592571150095 ll
	r5 += r1
	r2 &= r4
	r0 += r5
	r0 &= r4
	r0 += r2
	r3 = r0
	r3 >>= 32
	r3 += r0
	r1 = r3;r1 &= 0xffffffff
	r9 = r1
	r9 >>= 16
	r9 += r1
	r0 = r9;r0 &= 0xffffffff
	r2 = r0
	r2 >>= 8
	r0 += r2
	r0 &= 255
	exit
	.size	__popcountti2, .-__popcountti2
	.align	3
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r0 = r2
	r6 = r1
	r0 &= 1
	r8 = r2
	r7 = 0x3ff0000000000000 ll
	if r0 == 0 goto .L3277
.L3279:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3277:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3278
.L3280:
	r2 = r6
	r1 = r6
	call	__muldf3
	r3 = r8
	r4 = r8
	r3 >>= 63
	r6 = r0
	r3 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if r4 != 0 goto .L3279
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3279
	r5 = r8
	r5 >>= 63
	r5 += r8
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r8 = r5
	r1 = r0
	call	__muldf3
	r9 = r8
	r6 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r8
	r0 = r8
	r0 &= 1
	if r0 != 0 goto .L3279
	r9 s>>= 1
	r8 = r9
	call	__muldf3
	r3 = r8
	r4 = r8
	r3 >>= 63
	r6 = r0
	r3 += r8
	r2 = r0
	r3 <<= 31
	r1 = r0
	r4 &= 1
	if r4 != 0 goto .L3279
	r3 s>>= 32
	r8 = r3
	call	__muldf3
	r5 = r8
	r9 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r9 &= 1
	if r9 != 0 goto .L3279
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r3 = r8
	r6 = r0
	r3 &= 1
	r0 = r8
	r2 = r6
	r0 >>= 63
	r1 = r6
	r0 += r8
	r0 <<= 31
	if r3 != 0 goto .L3279
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r5 = r8
	r4 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if r4 != 0 goto .L3279
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3279
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3280
.L3278:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3276
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3276:
	r0 = r7
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r0 = r2
	r6 = r1
	r0 &= 1
	r8 = r2
	r7 = 0x3f800000 ll
	if r0 == 0 goto .L3287
.L3289:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3287:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3288
.L3290:
	r2 = r6
	r1 = r6
	call	__mulsf3
	r3 = r8
	r4 = r8
	r3 >>= 63
	r6 = r0
	r3 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if r4 != 0 goto .L3289
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3289
	r5 = r8
	r5 >>= 63
	r5 += r8
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r8 = r5
	r1 = r0
	call	__mulsf3
	r9 = r8
	r6 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r8
	r0 = r8
	r0 &= 1
	if r0 != 0 goto .L3289
	r9 s>>= 1
	r8 = r9
	call	__mulsf3
	r3 = r8
	r4 = r8
	r3 >>= 63
	r6 = r0
	r3 += r8
	r2 = r0
	r3 <<= 31
	r1 = r0
	r4 &= 1
	if r4 != 0 goto .L3289
	r3 s>>= 32
	r8 = r3
	call	__mulsf3
	r5 = r8
	r9 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r9 &= 1
	if r9 != 0 goto .L3289
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r3 = r8
	r6 = r0
	r3 &= 1
	r0 = r8
	r2 = r6
	r0 >>= 63
	r1 = r6
	r0 += r8
	r0 <<= 31
	if r3 != 0 goto .L3289
	r0 s>>= 32
	r8 = r0
	call	__mulsf3
	r5 = r8
	r4 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if r4 != 0 goto .L3289
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3289
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3290
.L3288:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3286
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3286:
	r0 = r7
	exit
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r0 = r2
	r3 >>= 32
	r0 >>= 32
	if r0 >= r3 goto .L3300
	if r3 > r0 goto .L3301
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3300
	if r1 > r2 goto .L3301
	r0 = 1
	exit
.L3300:
	r0 = 0
	exit
.L3301:
	r0 = 2
	exit
	.size	__ucmpdi2, .-__ucmpdi2
	.align	3
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	r3 = r1
	r0 = r2
	r3 >>= 32
	r0 >>= 32
	if r0 >= r3 goto .L3307
	if r3 > r0 goto .L3306
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3307
	r0 = 1
	if r1 <= r2 goto .L3308
	r0 &= 1
	exit
.L3307:
	r0 = -1
	exit
.L3308:
	r0 = 0
	r0 &= 1
	exit
.L3306:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L3313
	if r2 > r4 goto .L3314
	if r3 >= r1 goto .L3313
	if r1 > r3 goto .L3314
	r0 = 1
	exit
.L3313:
	r0 = 0
	exit
.L3314:
	r0 = 2
	exit
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
	.global	__ledf2
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
