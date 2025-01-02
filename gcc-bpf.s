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
	r3 = r0
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L155
	if r3 == 1 goto .L104
	if r3 == 2 goto .L105
	if r3 == 3 goto .L106
	if r3 == 4 goto .L107
	if r3 == 5 goto .L108
	if r3 == 6 goto .L109
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
.L109:
	r2 += -1
	r0 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
.L108:
	r2 += -1
	r0 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
.L107:
	r2 += -1
	r0 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
.L106:
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
.L105:
	r2 += -1
	r0 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
.L104:
	r0 += -1
	r9 = *(u8 *) (r2+-1)
	*(u8 *) (r0+0) = r9
	r2 += -1
	if r1 == r0 goto .L6
.L155:
	r3 = *(u8 *) (r2+-1)
	r2 += -8
	*(u8 *) (r0+-1) = r3
	r5 = *(u8 *) (r2+6)
	*(u8 *) (r0+-2) = r5
	r4 = *(u8 *) (r2+5)
	*(u8 *) (r0+-3) = r4
	r9 = *(u8 *) (r2+4)
	r0 += -8
	*(u8 *) (r0+4) = r9
	r3 = *(u8 *) (r2+3)
	*(u8 *) (r0+3) = r3
	r5 = *(u8 *) (r2+2)
	*(u8 *) (r0+2) = r5
	r4 = *(u8 *) (r2+1)
	*(u8 *) (r0+1) = r4
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
	r5 = r3
	r9 = r2
	r5 &= -8
	r0 = r1
	r4 = r5
	r9 += r5
	r4 += -8
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L156
	if r4 == 1 goto .L110
	if r4 == 2 goto .L111
	if r4 == 3 goto .L112
	if r4 == 4 goto .L113
	if r4 == 5 goto .L114
	if r4 != 6 goto .L162
.L115:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L114:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L113:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L112:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L111:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L110:
	r4 = *(u64 *) (r2+0)
	*(u64 *) (r0+0) = r4
	r2 += 8
	r0 += 8
	if r9 == r2 goto .L154
.L156:
	r4 = *(u64 *) (r2+0)
	*(u64 *) (r0+0) = r4
	r4 = *(u64 *) (r2+8)
	*(u64 *) (r0+8) = r4
	r4 = *(u64 *) (r2+16)
	*(u64 *) (r0+16) = r4
	r4 = *(u64 *) (r2+24)
	*(u64 *) (r0+24) = r4
	r4 = *(u64 *) (r2+32)
	*(u64 *) (r0+32) = r4
	r4 = *(u64 *) (r2+40)
	*(u64 *) (r0+40) = r4
	r4 = *(u64 *) (r2+48)
	*(u64 *) (r0+48) = r4
	r4 = *(u64 *) (r2+56)
	*(u64 *) (r0+56) = r4
	r2 += 64
	r0 += 64
	if r9 != r2 goto .L156
.L154:
	r0 = r1
	r2 = r3
	r0 += r5
	r2 -= r5
	if r3 == r5 goto .L6
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L6
	r5 = *(u8 *) (r9+1)
	*(u8 *) (r0+1) = r5
	if r2 == 2 goto .L6
	r4 = *(u8 *) (r9+2)
	*(u8 *) (r0+2) = r4
	if r2 == 3 goto .L6
	r3 = *(u8 *) (r9+3)
	*(u8 *) (r0+3) = r3
	if r2 == 4 goto .L6
	r5 = *(u8 *) (r9+4)
	*(u8 *) (r0+4) = r5
	if r2 == 5 goto .L6
	r4 = *(u8 *) (r9+5)
	*(u8 *) (r0+5) = r4
	if r2 == 6 goto .L6
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r0+6) = r9
	goto .L6
.L162:
	r0 = *(u64 *) (r2+0)
	r2 += 8
	*(u64 *) (r1+0) = r0
	r0 = r1
	r0 += 8
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
	r0 = r2
	r4 = *(u8 *) (r1+1)
	r0 += 1
	if r4 == 0 goto .L547
	r5 = *(u8 *) (r0+0)
	r2 = r0
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L547
	r5 = *(u8 *) (r0+1)
	r2 += 1
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+3)
	if r4 == 0 goto .L547
	r2 = r0
	r5 = *(u8 *) (r0+2)
	r2 += 2
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+4)
	if r4 == 0 goto .L547
	r5 = *(u8 *) (r0+3)
	r2 += 1
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+5)
	if r4 == 0 goto .L547
	r5 = *(u8 *) (r0+4)
	r2 += 1
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+6)
	if r4 == 0 goto .L547
	r5 = *(u8 *) (r0+5)
	r2 += 1
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r4 = *(u8 *) (r1+7)
	if r4 == 0 goto .L547
	r2 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == 0 goto .L462
	if r5 != r4 goto .L462
	r1 += 8
	r4 = *(u8 *) (r1+0)
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
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1411:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
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
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1407:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
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
	r4 = *(u8 *) (r0+6)
	*(u8 *) (r2+-2) = r4
	r3 = *(u8 *) (r0+5)
	*(u8 *) (r2+-3) = r3
	r9 = *(u8 *) (r0+4)
	r2 += -8
	*(u8 *) (r2+4) = r9
	r5 = *(u8 *) (r0+3)
	*(u8 *) (r2+3) = r5
	r4 = *(u8 *) (r0+2)
	*(u8 *) (r2+2) = r4
	r3 = *(u8 *) (r0+1)
	*(u8 *) (r2+1) = r3
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
	r5 = r3
	r9 = r1
	r5 &= -8
	r0 = r2
	r4 = r5
	r9 += r5
	r4 += -8
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1458
	if r4 == 1 goto .L1412
	if r4 == 2 goto .L1413
	if r4 == 3 goto .L1414
	if r4 == 4 goto .L1415
	if r4 == 5 goto .L1416
	if r4 != 6 goto .L1467
.L1417:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1416:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1415:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1414:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1413:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1412:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r4
	r1 += 8
	r0 += 8
	if r9 == r1 goto .L1456
.L1458:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r4
	r4 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r4
	r4 = *(u64 *) (r1+16)
	*(u64 *) (r0+16) = r4
	r4 = *(u64 *) (r1+24)
	*(u64 *) (r0+24) = r4
	r4 = *(u64 *) (r1+32)
	*(u64 *) (r0+32) = r4
	r4 = *(u64 *) (r1+40)
	*(u64 *) (r0+40) = r4
	r4 = *(u64 *) (r1+48)
	*(u64 *) (r0+48) = r4
	r4 = *(u64 *) (r1+56)
	*(u64 *) (r0+56) = r4
	r1 += 64
	r0 += 64
	if r9 != r1 goto .L1458
.L1456:
	r0 = r3
	r2 += r5
	r0 -= r5
	if r3 == r5 goto .L1306
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r1
	if r0 == 1 goto .L1306
	r3 = *(u8 *) (r9+1)
	*(u8 *) (r2+1) = r3
	if r0 == 2 goto .L1306
	r5 = *(u8 *) (r9+2)
	*(u8 *) (r2+2) = r5
	if r0 == 3 goto .L1306
	r4 = *(u8 *) (r9+3)
	*(u8 *) (r2+3) = r4
	if r0 == 4 goto .L1306
	r1 = *(u8 *) (r9+4)
	*(u8 *) (r2+4) = r1
	if r0 == 5 goto .L1306
	r3 = *(u8 *) (r9+5)
	*(u8 *) (r2+5) = r3
	if r0 == 6 goto .L1306
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r2+6) = r9
	exit
.L1463:
	exit
.L1467:
	r0 = *(u64 *) (r1+0)
	r1 += 8
	*(u64 *) (r2+0) = r0
	r0 = r2
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
	r5 = r3
	r9 = r2
	r5 &= -8
	r4 = r1
	r6 = r5
	r9 += r5
	r6 += -8
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L1706
	if r6 == 1 goto .L1669
	if r6 == 2 goto .L1670
	if r6 == 3 goto .L1671
	if r6 == 4 goto .L1672
	if r6 == 5 goto .L1673
	if r6 == 6 goto .L1674
	r4 = *(u64 *) (r1+0)
	r0 = *(u64 *) (r2+0)
	r2 += 8
	r0 ^= r4
	r4 = r1
	*(u64 *) (r1+0) = r0
	r4 += 8
.L1674:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1673:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1672:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1671:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1670:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1669:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r0 ^= r6
	*(u64 *) (r4+0) = r0
	r2 += 8
	r4 += 8
	if r9 == r2 goto .L1704
.L1706:
	r6 = *(u64 *) (r4+0)
	r7 = *(u64 *) (r2+0)
	r7 ^= r6
	*(u64 *) (r4+0) = r7
	r6 = r4
	r0 = *(u64 *) (r2+8)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+16)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+24)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+32)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+40)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+48)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+56)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r4 += 64
	r2 += 64
	if r9 != r2 goto .L1706
.L1704:
	r0 = r1
	r2 = r3
	r0 += r5
	r2 -= r5
	if r3 == r5 goto .L1605
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r9+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L1605
	r4 = *(u8 *) (r0+1)
	r3 = *(u8 *) (r9+1)
	r3 ^= r4
	*(u8 *) (r0+1) = r3
	if r2 == 2 goto .L1605
	r5 = *(u8 *) (r0+2)
	r4 = *(u8 *) (r9+2)
	r4 ^= r5
	*(u8 *) (r0+2) = r4
	if r2 == 3 goto .L1605
	r5 = *(u8 *) (r0+3)
	r3 = *(u8 *) (r9+3)
	r3 ^= r5
	*(u8 *) (r0+3) = r3
	if r2 == 4 goto .L1605
	r4 = *(u8 *) (r0+4)
	r5 = *(u8 *) (r9+4)
	r5 ^= r4
	*(u8 *) (r0+4) = r5
	if r2 == 5 goto .L1605
	r4 = *(u8 *) (r0+5)
	r3 = *(u8 *) (r9+5)
	r3 ^= r4
	*(u8 *) (r0+5) = r3
	if r2 == 6 goto .L1605
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
	r4 = 0
	r2 s>>= 32
	goto .L1865
.L1868:
	r9 = r1
	r1 += 1
	r4 = r9
	if r0 == 0 goto .L1867
.L1865:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = r0
	r3 ^= r2
	r5 = r3;r5 &= 0xffffffff
	r5 += -1
	if r5 s< 0 goto .L1868
	r9 = r4
	r1 += 1
	r4 = r9
	if r0 != 0 goto .L1865
.L1867:
	r0 = r9
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
	if r0 == 0 goto .L1880
	r9 = r2
.L1871:
	r9 += 1
	r3 = r9
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1980
	r9 += 1
	r6 = *(u8 *) (r9+0)
	if r6 == 0 goto .L1980
	r9 = r3
	r0 = *(u8 *) (r3+2)
	r9 += 2
	if r0 == 0 goto .L1980
	r9 += 1
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L1980
	r9 += 1
	r6 = *(u8 *) (r3+4)
	if r6 == 0 goto .L1980
	r9 += 1
	r0 = *(u8 *) (r3+5)
	if r0 == 0 goto .L1980
	r9 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1980
	r9 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1871
.L1980:
	r6 = r9
	r6 -= r2
	if r9 == r2 goto .L1880
	r7 = r5;r7 &= 0xff
	r6 += -1
	goto .L1982
.L2012:
	r1 += 1
	if r0 == 0 goto .L2011
.L1982:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L2012
	r8 = r1
	r8 += r6
	*(u64 *) (r10+-8) = r8
	r0 = r7
	r8 = r6
	r3 = r2
	r4 = r1
	r8 &= 7
	if r8 == 0 goto .L1981
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L1874
	if r9 != r7 goto .L1874
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1874
	if r8 == 1 goto .L1981
	if r8 == 2 goto .L1930
	if r8 == 3 goto .L1931
	if r8 == 4 goto .L1932
	if r8 == 5 goto .L1933
	if r8 == 6 goto .L1934
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1874
	if r4 != r0 goto .L1874
	r4 = r1
	r3 += 1
	r4 += 2
	r0 = *(u8 *) (r1+2)
	if r0 == 0 goto .L1874
.L1934:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1874
	if r8 != r0 goto .L1874
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1874
.L1933:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1874
	if r8 != r0 goto .L1874
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1874
.L1932:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1874
	if r8 != r0 goto .L1874
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1874
.L1931:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1874
	if r8 != r0 goto .L1874
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1874
.L1930:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1874
	if r8 != r0 goto .L1874
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1874
.L1981:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1874
	r9 = *(u64 *) (r10+-8)
	if r4 == r9 goto .L1874
	if r8 != r0 goto .L1874
	r3 += 1
	r0 = *(u8 *) (r4+1)
	r8 = r3
	if r0 == 0 goto .L1874
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1874
	if r9 != r0 goto .L1874
	r0 = *(u8 *) (r4+2)
	r3 += 1
	if r0 == 0 goto .L1874
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1874
	if r9 != r0 goto .L1874
	r3 = r8
	r0 = *(u8 *) (r4+3)
	r3 += 2
	if r0 == 0 goto .L1874
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1874
	if r9 != r0 goto .L1874
	r0 = *(u8 *) (r4+4)
	r3 += 1
	if r0 == 0 goto .L1874
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1874
	if r9 != r0 goto .L1874
	r0 = *(u8 *) (r4+5)
	r3 += 1
	if r0 == 0 goto .L1874
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1874
	if r9 != r0 goto .L1874
	r0 = *(u8 *) (r4+6)
	r3 += 1
	if r0 == 0 goto .L1874
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1874
	if r9 != r0 goto .L1874
	r0 = *(u8 *) (r4+7)
	r3 += 1
	if r0 == 0 goto .L1874
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1874
	if r9 != r0 goto .L1874
	r4 += 8
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 != 0 goto .L1981
.L1874:
	r4 = *(u8 *) (r3+0)
	if r4 == r0 goto .L1880
	r1 += 1
	goto .L1982
.L2011:
	exit
.L1880:
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
	if r8 s>= r0 goto .L2023
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2017
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L2016
.L2017:
	r0 = r6
	exit
.L2023:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L2017
.L2016:
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
	if r4 == 0 goto .L2024
	if r4 >= r2 goto .L2035
	r2 -= r4
	r9 = r1
	r9 += r2
	if r1 > r9 goto .L2035
	r5 = *(u8 *) (r3+0)
	r4 += -1
	r5 <<= 56
	r3 += 1
	r5 s>>= 56
	*(u64 *) (r10+-8) = r3
.L2030:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	r1 <<= 56
	r3 += 1
	r1 s>>= 56
	if r1 == r5 goto .L2099
	r0 = r3
.L2026:
	if r9 >= r0 goto .L2030
.L2035:
	r0 = 0
.L2024:
	exit
.L2099:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L2024
.L2029:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L2089
	if r6 == 1 goto .L2073
	if r6 == 2 goto .L2074
	if r6 == 3 goto .L2075
	if r6 == 4 goto .L2076
	if r6 == 5 goto .L2077
	if r6 == 6 goto .L2078
	r6 = *(u8 *) (r3+0)
	r1 = *(u8 *) (r2+0)
	if r6 != r1 goto .L2088
	r1 = r3
	r2 += 1
	r1 += 1
.L2078:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2088
	r1 += 1
	r2 += 1
.L2077:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2088
	r1 += 1
	r2 += 1
.L2076:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2088
	r1 += 1
	r2 += 1
.L2075:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2088
	r1 += 1
	r2 += 1
.L2074:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2088
	r1 += 1
	r2 += 1
.L2073:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2088
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L2100
.L2089:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2088
	r8 = *(u8 *) (r1+1)
	r6 = *(u8 *) (r2+1)
	if r8 != r6 goto .L2088
	r8 = *(u8 *) (r1+2)
	r6 = *(u8 *) (r2+2)
	if r8 != r6 goto .L2088
	r8 = *(u8 *) (r1+3)
	r6 = *(u8 *) (r2+3)
	if r8 != r6 goto .L2088
	r8 = *(u8 *) (r1+4)
	r6 = *(u8 *) (r2+4)
	if r8 != r6 goto .L2088
	r8 = *(u8 *) (r1+5)
	r6 = *(u8 *) (r2+5)
	if r8 != r6 goto .L2088
	r8 = *(u8 *) (r1+6)
	r6 = *(u8 *) (r2+6)
	if r8 != r6 goto .L2088
	r8 = *(u8 *) (r1+7)
	r6 = *(u8 *) (r2+7)
	if r8 != r6 goto .L2088
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L2089
	exit
.L2088:
	if r3 > r9 goto .L2035
	r2 = *(u8 *) (r3+0)
	r0 = r3
	r2 <<= 56
	r0 += 1
	r2 s>>= 56
	if r2 != r5 goto .L2026
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L2029
.L2100:
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
	if r7 s>= r0 goto .L2135
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L2136
	*(u64 *) (r10+-16) = r7
.L2104:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L2110:
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
	if r0 s< 0 goto .L2111
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
	if r3 s< 0 goto .L2111
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
	if r0 s< 0 goto .L2111
	r5 s>>= 32
	r8 = r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L2110
.L2111:
	r2 = *(u64 *) (r10+-8)
	*(u32 *) (r2+0) = r8
	r1 = *(u64 *) (r10+-16)
	if r1 == 0 goto .L2117
	r9 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r9
	exit
.L2136:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r7 s< r0 goto .L2107
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L2116
.L2107:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r6
	exit
.L2135:
	r3 = -9223372036854775808 ll
	r1 = r6
	r1 ^= r3
	r2 = 0xbff0000000000000 ll
	*(u64 *) (r10+-24) = r1
	r1 = r6
	call	__ledf2
	if r7 s<= r0 goto .L2137
	r6 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = 1
	goto .L2104
.L2117:
	r0 = r6
	exit
.L2137:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s> r7 goto .L2114
	*(u32 *) (r8+0) = r7
	r0 = r6
	exit
.L2114:
	*(u64 *) (r10+-16) = 1
.L2105:
	r8 = 0
	r6 = *(u64 *) (r10+-24)
	r7 = r8
.L2112:
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
	if r7 s< r0 goto .L2111
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
	if r7 s< r9 goto .L2111
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
	if r7 s< r0 goto .L2111
	r4 s>>= 32
	r8 = r4
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	if r7 s>= r0 goto .L2112
	goto .L2111
.L2116:
	*(u64 *) (r10+-24) = r6
	*(u64 *) (r10+-16) = r7
	goto .L2105
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L2141
	r0 = 0
	r5 = r0
.L2140:
	r9 = r2
	r1 = r3
	r4 = r3
	r9 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L2157
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 2
	r5 += r1
	if r2 == 0 goto .L2157
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 3
	r0 += r2
	if r1 == 0 goto .L2157
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 4
	r5 += r1
	if r2 == 0 goto .L2157
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 5
	r0 += r2
	if r1 == 0 goto .L2157
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r2 = r9
	r5 += r1
	r2 += r9
	r1 = r3
	r1 >>= 6
	if r1 == 0 goto .L2157
	r4 = r2
	r9 = r3
	r1 &= 1
	r4 += r2
	r1 = -r1
	r9 >>= 7
	r1 &= r2
	r0 += r1
	if r9 == 0 goto .L2157
	r9 &= 1
	r2 = r4
	r9 = -r9
	r2 += r4
	r9 &= r4
	r3 >>= 8
	r5 += r9
	if r3 != 0 goto .L2140
.L2157:
	r0 += r5
	exit
.L2141:
	r0 = r1
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r0 < r2 goto .L2204
	r5 = 32
	r4 = 1
.L2159:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r5 += -1
	r9 = r2
	r5 = r5;r5 &= 0xffffffff
	r9 <<= 32
	if r9 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2164
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2161
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 != 0 goto .L2159
.L2162:
	if r3 != 0 goto .L2184
	r0 = r5
	exit
.L2184:
	exit
.L2161:
	if r4 == 0 goto .L2178
.L2164:
	r5 = 0
	r6 = 1
	r8 = r5
	r7 = r5
.L2171:
	r1 = r0
	r9 = r6;r9 &= 0xff
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	if r0 >= r2 goto .L2165
	r9 = r8;r9 &= 0xff
.L2165:
	if r0 >= r2 goto .L2168
	r1 = r0
.L2168:
	r0 = r1;r0 &= 0xffffffff
	if r9 == 0 goto .L2169
	r9 = r4
.L2170:
	r5 |= r9
	r4 >>= 1
	r5 = r5;r5 &= 0xffffffff
	r2 >>= 1
	if r4 != 0 goto .L2171
	goto .L2162
.L2169:
	r9 = r7
	goto .L2170
.L2204:
	r5 = 0
	goto .L2162
.L2178:
	r5 = r4
	goto .L2162
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
	if r2 == r1 goto .L2207
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
.L2207:
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
	if r0 == r2 goto .L2210
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2210:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2214
	r0 = 0
.L2213:
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
	if r3 == 0 goto .L2230
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
	if r1 == 0 goto .L2212
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
	if r2 == 0 goto .L2212
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
	if r1 == 0 goto .L2212
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
	if r2 == 0 goto .L2212
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
	if r3 == 0 goto .L2212
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
	if r1 == 0 goto .L2212
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
	if r1 != 0 goto .L2213
	exit
.L2214:
	r0 = r1
.L2212:
	exit
.L2230:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r6 = r3
	r5 &= -8
	r6 >>= 3
	r5 = r5;r5 &= 0xffffffff
	if r2 >= r1 goto .L2232
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2416
.L2232:
	if r6 == 0 goto .L2235
	r6 <<= 3
	r0 = r2
	r7 = r6
	r4 = r1
	r7 += -8
	r6 += r2
	r7 >>= 3
	r7 += 1
	r7 &= 7
	if r7 == 0 goto .L2409
	if r7 == 1 goto .L2352
	if r7 == 2 goto .L2353
	if r7 == 3 goto .L2354
	if r7 == 4 goto .L2355
	if r7 == 5 goto .L2356
	if r7 == 6 goto .L2357
	r9 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r1+0) = r9
	r4 += 8
.L2357:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2356:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2355:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2354:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2353:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2352:
	r7 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r7
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L2406
.L2409:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r7 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r7
	r9 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r9
	r7 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r7
	r9 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r9
	r7 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r7
	r9 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r9
	r7 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r7
	r0 += 64
	r4 += 64
	if r0 != r6 goto .L2409
.L2406:
	if r5 > r3 goto .L2417
	r0 = r3
	r0 -= r5
	r9 = r0;r9 &= 0xffffffff
	r4 = r9
	r4 += -1
	if r4 <= 6 goto .L2415
	r6 = r5
	r6 += 1
	r4 = r1
	r0 = r2
	r4 += r5
	r7 = r2
	r0 += r5
	r7 += r6
	r6 = r4
	r6 -= r7
	if r6 > 6 goto .L2418
.L2238:
	r2 += 1
	r2 += r5
	r3 += -1
	r3 -= r5
	r1 = r3;r1 &= 0xffffffff
	r1 += r2
	r2 = r1
	r2 -= r0
	r2 &= 7
	if r2 == 0 goto .L2408
	if r2 == 1 goto .L2364
	if r2 == 2 goto .L2365
	if r2 == 3 goto .L2366
	if r2 == 4 goto .L2367
	if r2 == 5 goto .L2368
	if r2 == 6 goto .L2369
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2369:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2368:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2367:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2366:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2365:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2364:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r4 += 1
	if r0 == r1 goto .L2419
.L2408:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r2
	r5 = *(u8 *) (r0+1)
	*(u8 *) (r4+1) = r5
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r3
	r9 = *(u8 *) (r0+3)
	*(u8 *) (r4+3) = r9
	r2 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r2
	r5 = *(u8 *) (r0+5)
	*(u8 *) (r4+5) = r5
	r3 = *(u8 *) (r0+6)
	*(u8 *) (r4+6) = r3
	r9 = *(u8 *) (r0+7)
	*(u8 *) (r4+7) = r9
	r0 += 8
	r4 += 8
	if r0 != r1 goto .L2408
	exit
.L2418:
	r6 = r0
	r6 |= r4
	r6 &= 7
	if r6 != 0 goto .L2238
	r8 = r9
	r7 = r0
	r8 >>= 3
	r8 <<= 3
	r6 = r8
	r7 += r8
	r6 += -8
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2407
	if r6 == 1 goto .L2358
	if r6 == 2 goto .L2359
	if r6 == 3 goto .L2360
	if r6 == 4 goto .L2361
	if r6 == 5 goto .L2362
	if r6 == 6 goto .L2363
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2363:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2362:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2361:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2360:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2359:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2358:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2405
.L2407:
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
	r0 += 64
	r4 += 64
	if r0 != r7 goto .L2407
.L2405:
	r4 = r9
	r9 &= 7
	r4 &= -8
	r5 += r4
	r5 = r5;r5 &= 0xffffffff
	if r9 == 0 goto .L2231
	r9 = r1
	r0 = r2
	r9 += r5
	r0 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r9 = r5
	r9 += 1
	r0 = r9;r0 &= 0xffffffff
	if r0 > r3 goto .L2231
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 2
	r9 = r0;r9 &= 0xffffffff
	if r9 > r3 goto .L2231
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 3
	r0 = r9;r0 &= 0xffffffff
	if r0 > r3 goto .L2231
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 4
	r9 = r0;r9 &= 0xffffffff
	if r9 > r3 goto .L2231
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 5
	r0 = r9;r0 &= 0xffffffff
	if r0 > r3 goto .L2231
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r5 += 6
	r5 = r5;r5 &= 0xffffffff
	if r5 > r3 goto .L2231
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2416:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2231
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2410
	if r3 == 1 goto .L2346
	if r3 == 2 goto .L2347
	if r3 == 3 goto .L2348
	if r3 == 4 goto .L2349
	if r3 == 5 goto .L2350
	if r3 == 6 goto .L2351
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2351:
	r5 = r1
	r3 = r2
	r5 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
.L2350:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2349:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2348:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2347:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2346:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2420
.L2410:
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r0 = *(u8 *) (r6+0)
	r6 = r2
	*(u8 *) (r5+0) = r0
	r6 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r6+-1)
	r6 = r2
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-2)
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r3 = r2
	r6 = r1
	r3 += r9
	r6 += r9
	r0 = *(u8 *) (r3+-3)
	r5 = r1
	*(u8 *) (r6+-3) = r0
	r5 += r9
	r6 = r2
	r6 += r9
	r4 = *(u8 *) (r6+-4)
	*(u8 *) (r5+-4) = r4
	r5 = r1
	r5 += r9
	r0 = r9
	r6 = r2
	r0 += -6
	r6 += r9
	r3 = *(u8 *) (r6+-5)
	*(u8 *) (r5+-5) = r3
	r5 = r1
	r5 += r0
	r6 = r2
	r6 += r0
	r0 = r2
	r4 = *(u8 *) (r6+0)
	r0 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2410
.L2231:
	exit
.L2235:
	if r3 == 0 goto .L2231
.L2415:
	r1 += r5
	r0 = r2
	r4 = r1
	r0 += r5
	goto .L2238
.L2417:
	exit
.L2420:
	exit
.L2419:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r2 >= r1 goto .L2422
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2564
.L2422:
	if r9 == 0 goto .L2425
	r6 = r9
	r6 += -1
	if r6 <= 5 goto .L2426
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L2565
.L2426:
	r9 += r9
	r0 = r2
	r6 = r9
	r4 = r1
	r9 += -2
	r6 += r2
	r9 >>= 1
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2559
	if r9 == 1 goto .L2525
	if r9 == 2 goto .L2526
	if r9 == 3 goto .L2527
	if r9 == 4 goto .L2528
	if r9 == 5 goto .L2529
	if r9 == 6 goto .L2530
	r4 = *(u16 *) (r2+0)
	r0 += 2
	*(u16 *) (r1+0) = r4
	r4 = r1
	r4 += 2
.L2530:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2529:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2528:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2527:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2526:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2525:
	r9 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r9
	r0 += 2
	r4 += 2
	if r0 == r6 goto .L2425
.L2559:
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
	if r0 != r6 goto .L2559
.L2425:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L2421
.L2566:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2565:
	r5 = r2
	r0 = r1
	r5 += 2
	r0 -= r5
	if r0 <= 4 goto .L2426
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
	if r5 == 0 goto .L2558
	if r5 == 1 goto .L2519
	if r5 == 2 goto .L2520
	if r5 == 3 goto .L2521
	if r5 == 4 goto .L2522
	if r5 == 5 goto .L2523
	if r5 == 6 goto .L2524
	r0 = *(u64 *) (r2+0)
	r4 += 8
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
.L2524:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2523:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2522:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2521:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2520:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2519:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2557
.L2558:
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
	if r0 != r7 goto .L2558
.L2557:
	r6 <<= 2
	if r9 == r6 goto .L2425
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
	if r0 > r9 goto .L2425
	r0 += r0
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r0 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r0
	r6 += 2
	if r6 > r9 goto .L2425
	r6 += r6
	r9 = r2
	r5 = r1
	r9 += r6
	r5 += r6
	r4 = *(u16 *) (r9+0)
	*(u16 *) (r5+0) = r4
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L2421
	goto .L2566
.L2564:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2421
	r5 = r9
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2560
	if r5 == 1 goto .L2513
	if r5 == 2 goto .L2514
	if r5 == 3 goto .L2515
	if r5 == 4 goto .L2516
	if r5 == 5 goto .L2517
	if r5 == 6 goto .L2518
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2518:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2517:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
.L2516:
	r4 = r1
	r3 = r2
	r4 += r9
	r3 += r9
	r9 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r5
.L2515:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
.L2514:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2513:
	r5 = r2
	r3 = r1
	r5 += r9
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	if r9 == -1 goto .L2567
.L2560:
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r0 = *(u8 *) (r6+0)
	r6 = r2
	*(u8 *) (r5+0) = r0
	r6 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r6+-1)
	r6 = r2
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-2)
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r3 = r2
	r6 = r1
	r3 += r9
	r6 += r9
	r0 = *(u8 *) (r3+-3)
	r5 = r1
	*(u8 *) (r6+-3) = r0
	r5 += r9
	r6 = r2
	r6 += r9
	r4 = *(u8 *) (r6+-4)
	*(u8 *) (r5+-4) = r4
	r5 = r1
	r5 += r9
	r0 = r9
	r6 = r2
	r0 += -6
	r6 += r9
	r3 = *(u8 *) (r6+-5)
	*(u8 *) (r5+-5) = r3
	r5 = r1
	r5 += r0
	r6 = r2
	r6 += r0
	r0 = r2
	r4 = *(u8 *) (r6+0)
	r0 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2560
.L2421:
	exit
.L2567:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r9 = r3
	r5 &= -4
	r9 >>= 2
	r5 = r5;r5 &= 0xffffffff
	if r2 >= r1 goto .L2569
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2800
.L2569:
	if r9 == 0 goto .L2801
	r6 = r9
	r6 += -1
	if r6 <= 7 goto .L2574
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 == 0 goto .L2802
.L2574:
	r9 <<= 2
	r0 = r2
	r6 = r9
	r4 = r1
	r6 += -4
	r9 += r2
	r6 >>= 2
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2791
	if r6 == 1 goto .L2726
	if r6 == 2 goto .L2727
	if r6 == 3 goto .L2728
	if r6 == 4 goto .L2729
	if r6 == 5 goto .L2730
	if r6 == 6 goto .L2731
	r0 = *(u32 *) (r2+0)
	r4 += 4
	*(u32 *) (r1+0) = r0
	r0 = r2
	r0 += 4
.L2731:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2730:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2729:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2728:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2727:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2726:
	r6 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r6
	r0 += 4
	r4 += 4
	if r0 == r9 goto .L2579
.L2791:
	r6 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r6
	r6 = *(u32 *) (r0+4)
	*(u32 *) (r4+4) = r6
	r6 = *(u32 *) (r0+8)
	*(u32 *) (r4+8) = r6
	r6 = *(u32 *) (r0+12)
	*(u32 *) (r4+12) = r6
	r6 = *(u32 *) (r0+16)
	*(u32 *) (r4+16) = r6
	r6 = *(u32 *) (r0+20)
	*(u32 *) (r4+20) = r6
	r6 = *(u32 *) (r0+24)
	*(u32 *) (r4+24) = r6
	r6 = *(u32 *) (r0+28)
	*(u32 *) (r4+28) = r6
	r0 += 32
	r4 += 32
	if r0 != r9 goto .L2791
.L2579:
	if r5 > r3 goto .L2568
	r9 = r3
	r9 -= r5
	r6 = r9;r6 &= 0xffffffff
	r0 = r6
	r0 += -1
	if r0 <= 6 goto .L2799
	r7 = r5
	r7 += 1
	r4 = r1
	r0 = r2
	r4 += r5
	r8 = r2
	r0 += r5
	r8 += r7
	r7 = r4
	r7 -= r8
	if r7 > 6 goto .L2803
.L2573:
	r2 += 1
	r2 += r5
	r3 += -1
	r3 -= r5
	r1 = r3;r1 &= 0xffffffff
	r1 += r2
	r2 = r1
	r2 -= r0
	r2 &= 7
	if r2 == 0 goto .L2790
	if r2 == 1 goto .L2738
	if r2 == 2 goto .L2739
	if r2 == 3 goto .L2740
	if r2 == 4 goto .L2741
	if r2 == 5 goto .L2742
	if r2 == 6 goto .L2743
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2743:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2742:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2741:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2740:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2739:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2738:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r4 += 1
	if r0 == r1 goto .L2804
.L2790:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r2
	r5 = *(u8 *) (r0+1)
	*(u8 *) (r4+1) = r5
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r3
	r9 = *(u8 *) (r0+3)
	*(u8 *) (r4+3) = r9
	r2 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r2
	r5 = *(u8 *) (r0+5)
	*(u8 *) (r4+5) = r5
	r3 = *(u8 *) (r0+6)
	*(u8 *) (r4+6) = r3
	r9 = *(u8 *) (r0+7)
	*(u8 *) (r4+7) = r9
	r0 += 8
	r4 += 8
	if r0 != r1 goto .L2790
	exit
.L2802:
	r0 = r2
	r6 = r1
	r0 += 4
	r6 ^= r0
	r4 = r6
	r4 = -r4
	r4 |= r6
	if r4 s>= 0 goto .L2574
	r7 = r3
	r0 = r2
	r7 >>= 3
	r4 = r1
	r8 = r7
	r8 <<= 3
	r6 = r8
	r8 += r2
	r6 += -8
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2792
	if r6 == 1 goto .L2720
	if r6 == 2 goto .L2721
	if r6 == 3 goto .L2722
	if r6 == 4 goto .L2723
	if r6 == 5 goto .L2724
	if r6 == 6 goto .L2725
	r0 = *(u64 *) (r2+0)
	r4 += 8
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
.L2725:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2724:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2723:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2722:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2721:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2720:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
	if r0 == r8 goto .L2788
.L2792:
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
	r0 += 64
	r4 += 64
	if r0 != r8 goto .L2792
.L2788:
	r7 <<= 1
	if r9 == r7 goto .L2579
	r7 <<= 2
	r9 = r2
	r0 = r1
	r9 += r7
	r0 += r7
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r0+0) = r4
	goto .L2579
.L2803:
	r7 = r0
	r7 |= r4
	r7 &= 7
	if r7 != 0 goto .L2573
	r8 = r6
	r7 = r0
	r8 >>= 3
	r8 <<= 3
	r9 = r8
	r7 += r8
	r9 += -8
	r9 >>= 3
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2789
	if r9 == 1 goto .L2732
	if r9 == 2 goto .L2733
	if r9 == 3 goto .L2734
	if r9 == 4 goto .L2735
	if r9 == 5 goto .L2736
	if r9 == 6 goto .L2737
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2737:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2736:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2735:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2734:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2733:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2732:
	r8 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r8
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2787
.L2789:
	r8 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r8
	r9 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r9
	r8 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r8
	r9 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r9
	r8 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r8
	r9 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r9
	r8 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r8
	r8 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r8
	r0 += 64
	r4 += 64
	if r0 != r7 goto .L2789
.L2787:
	r4 = r6
	r6 &= 7
	r4 &= -8
	r5 += r4
	r5 = r5;r5 &= 0xffffffff
	if r6 == 0 goto .L2568
	r9 = r1
	r0 = r2
	r9 += r5
	r0 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r9 = r5
	r9 += 1
	r0 = r9;r0 &= 0xffffffff
	if r0 > r3 goto .L2568
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 2
	r9 = r0;r9 &= 0xffffffff
	if r9 > r3 goto .L2568
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 3
	r0 = r9;r0 &= 0xffffffff
	if r0 > r3 goto .L2568
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 4
	r9 = r0;r9 &= 0xffffffff
	if r9 > r3 goto .L2568
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 5
	r0 = r9;r0 &= 0xffffffff
	if r0 > r3 goto .L2568
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r5 += 6
	r5 = r5;r5 &= 0xffffffff
	if r5 > r3 goto .L2568
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2800:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2568
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2793
	if r3 == 1 goto .L2714
	if r3 == 2 goto .L2715
	if r3 == 3 goto .L2716
	if r3 == 4 goto .L2717
	if r3 == 5 goto .L2718
	if r3 == 6 goto .L2719
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2719:
	r5 = r1
	r3 = r2
	r5 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
.L2718:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2717:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2716:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2715:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2714:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2805
.L2793:
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r0 = *(u8 *) (r6+0)
	r6 = r2
	*(u8 *) (r5+0) = r0
	r6 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r6+-1)
	r6 = r2
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-2)
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r3 = r2
	r6 = r1
	r3 += r9
	r6 += r9
	r0 = *(u8 *) (r3+-3)
	r5 = r1
	*(u8 *) (r6+-3) = r0
	r5 += r9
	r6 = r2
	r6 += r9
	r4 = *(u8 *) (r6+-4)
	*(u8 *) (r5+-4) = r4
	r5 = r1
	r5 += r9
	r0 = r9
	r6 = r2
	r0 += -6
	r6 += r9
	r3 = *(u8 *) (r6+-5)
	*(u8 *) (r5+-5) = r3
	r5 = r1
	r5 += r0
	r6 = r2
	r6 += r0
	r0 = r2
	r4 = *(u8 *) (r6+0)
	r0 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2793
.L2568:
	exit
.L2801:
	if r3 == 0 goto .L2568
.L2799:
	r1 += r5
	r0 = r2
	r4 = r1
	r0 += r5
	goto .L2573
.L2805:
	exit
.L2804:
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
	r0 >>= 15
	if r0 != 0 goto .L2815
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2814
	r3 = r2
	r3 >>= 45
	if r3 != 0 goto .L2816
	r4 = r2
	r4 >>= 44
	if r4 != 0 goto .L2817
	r5 = r2
	r5 >>= 43
	if r5 != 0 goto .L2818
	r9 = r2
	r9 >>= 42
	if r9 != 0 goto .L2819
	r0 = r2
	r0 >>= 41
	if r0 != 0 goto .L2820
	r3 = r2
	r3 >>= 40
	if r3 != 0 goto .L2821
	r4 = r2
	r4 >>= 39
	if r4 != 0 goto .L2822
	r5 = r2
	r5 >>= 38
	if r5 != 0 goto .L2823
	r9 = r2
	r9 >>= 37
	if r9 != 0 goto .L2824
	r0 = r2
	r0 >>= 36
	if r0 != 0 goto .L2825
	r3 = r2
	r3 >>= 35
	if r3 != 0 goto .L2826
	r4 = r2
	r4 >>= 34
	if r4 != 0 goto .L2827
	r2 >>= 33
	if r2 != 0 goto .L2828
	r0 = 16
	if r1 != 0 goto .L2831
.L2814:
	exit
.L2815:
	r0 = 0
	exit
.L2826:
	r0 = 12
	exit
.L2831:
	r0 = 15
	exit
.L2816:
	r0 = 2
	exit
.L2817:
	r0 = 3
	exit
.L2818:
	r0 = 4
	exit
.L2819:
	r0 = 5
	exit
.L2820:
	r0 = 6
	exit
.L2821:
	r0 = 7
	exit
.L2822:
	r0 = 8
	exit
.L2823:
	r0 = 9
	exit
.L2824:
	r0 = 10
	exit
.L2825:
	r0 = 11
	exit
.L2827:
	r0 = 13
	exit
.L2828:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2835
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2836
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2837
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2838
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2839
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2840
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2841
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2842
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2843
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2844
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2845
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2846
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2847
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2848
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2849
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2852
	exit
.L2835:
	r0 = 0
	exit
.L2836:
	r0 = 1
	exit
.L2847:
	r0 = 12
	exit
.L2852:
	r0 = 15
	exit
.L2837:
	r0 = 2
	exit
.L2838:
	r0 = 3
	exit
.L2839:
	r0 = 4
	exit
.L2840:
	r0 = 5
	exit
.L2841:
	r0 = 6
	exit
.L2842:
	r0 = 7
	exit
.L2843:
	r0 = 8
	exit
.L2844:
	r0 = 9
	exit
.L2845:
	r0 = 10
	exit
.L2846:
	r0 = 11
	exit
.L2848:
	r0 = 13
	exit
.L2849:
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
	if r0 s>= 0 goto .L2859
	r1 = r6
	call	__fixsfdi
	exit
.L2859:
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
	if r1 == 0 goto .L2865
	r0 = 0
.L2864:
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
	if r3 == 0 goto .L2881
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
	if r3 == 0 goto .L2863
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
	if r1 == 0 goto .L2863
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
	if r1 != 0 goto .L2864
	exit
.L2865:
	r0 = r1
.L2863:
	exit
.L2881:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2885
	if r2 == 0 goto .L2886
	r0 = 0
.L2884:
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
	if r3 == 0 goto .L2902
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
	if r1 == 0 goto .L2883
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
	if r2 == 0 goto .L2883
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
	if r1 == 0 goto .L2883
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
	if r2 == 0 goto .L2883
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
	if r1 == 0 goto .L2883
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
	if r2 == 0 goto .L2883
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
	if r2 != 0 goto .L2884
	exit
.L2886:
	r0 = r2
.L2883:
	exit
.L2885:
	r0 = r1
	exit
.L2902:
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
	if r0 < r2 goto .L2949
	r5 = 32
	r4 = 1
.L2904:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r5 += -1
	r9 = r2
	r5 = r5;r5 &= 0xffffffff
	r9 <<= 32
	if r9 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2909
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2906
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 != 0 goto .L2904
.L2907:
	if r3 != 0 goto .L2929
	r0 = r5
	exit
.L2929:
	exit
.L2906:
	if r4 == 0 goto .L2923
.L2909:
	r5 = 0
	r6 = 1
	r8 = r5
	r7 = r5
.L2916:
	r1 = r0
	r9 = r6;r9 &= 0xff
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	if r0 >= r2 goto .L2910
	r9 = r8;r9 &= 0xff
.L2910:
	if r0 >= r2 goto .L2913
	r1 = r0
.L2913:
	r0 = r1;r0 &= 0xffffffff
	if r9 == 0 goto .L2914
	r9 = r4
.L2915:
	r5 |= r9
	r4 >>= 1
	r5 = r5;r5 &= 0xffffffff
	r2 >>= 1
	if r4 != 0 goto .L2916
	goto .L2907
.L2914:
	r9 = r7
	goto .L2915
.L2949:
	r5 = 0
	goto .L2907
.L2923:
	r5 = r4
	goto .L2907
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2953
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2954
	r0 = r8
	r0 &= 1
	exit
.L2954:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2953:
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
	if r3 s>= r0 goto .L2958
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2959
	r0 = r8
	r0 &= 1
	exit
.L2959:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2958:
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
	if r2 s< 0 goto .L2990
	if r3 == 0 goto .L2968
	r4 = 0
.L2964:
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
	if r2 == 0 goto .L2966
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
	if r2 == 0 goto .L2966
	r1 = 30
.L2967:
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
	if r3 == 0 goto .L2966
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
	if r2 == 0 goto .L2966
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
	if r9 == 0 goto .L2966
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
	if r3 == 0 goto .L2966
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
	if r2 == 0 goto .L2966
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2967
.L2966:
	if r4 == 0 goto .L2965
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2968:
	r0 = r3
.L2965:
	exit
.L2990:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2964
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L3037
	r0 = 1
	r4 = 0
.L2992:
	if r2 s>= 0 goto .L2993
	r2 = -r2
	r4 = r0
.L2993:
	r2 = r2;r2 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	if r3 < r2 goto .L3038
	r0 = 32
	r1 = 1
.L2994:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2999
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2996
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2994
.L2997:
	if r4 == 0 goto .L2991
	r0 = -r0
	exit
.L2991:
	exit
.L2996:
	if r1 == 0 goto .L3013
.L2999:
	r0 = 0
	r6 = 1
	r8 = r0
	r7 = r0
.L3006:
	r5 = r3
	r9 = r6;r9 &= 0xff
	r5 -= r2
	r5 = r5;r5 &= 0xffffffff
	if r3 >= r2 goto .L3000
	r9 = r8;r9 &= 0xff
.L3000:
	if r3 >= r2 goto .L3003
	r5 = r3
.L3003:
	r3 = r5;r3 &= 0xffffffff
	if r9 == 0 goto .L3004
	r9 = r1
.L3005:
	r0 |= r9
	r1 >>= 1
	r0 = r0;r0 &= 0xffffffff
	r2 >>= 1
	if r1 != 0 goto .L3006
	goto .L2997
.L3004:
	r9 = r7
	goto .L3005
.L3037:
	r1 = -r1
	r0 = 0
	r4 = 1
	goto .L2992
.L3038:
	r0 = 0
	goto .L2997
.L3013:
	r0 = r1
	goto .L2997
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L3086
	r4 = 0
.L3040:
	if r0 s>= 0 goto .L3041
	r0 = -r0
.L3041:
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	if r3 < r0 goto .L3045
	r2 = 32
	r1 = 1
.L3042:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r2 += -1
	r9 = r0
	r2 = r2;r2 &= 0xffffffff
	r9 <<= 32
	if r9 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L3085
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	if r2 != 0 goto .L3042
.L3045:
	r0 = r3
	if r4 == 0 goto .L3039
	r0 = -r0
.L3039:
	exit
.L3085:
	if r1 == 0 goto .L3045
.L3084:
	r5 = r3
	r5 -= r0
	r9 = r5;r9 &= 0xffffffff
	if r3 >= r0 goto .L3050
	r9 = r3
.L3050:
	r3 = r9;r3 &= 0xffffffff
	r1 >>= 1
	r0 >>= 1
	goto .L3085
.L3086:
	r1 = -r1
	r4 = 1
	goto .L3040
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r0 < r2 goto .L3314
	r5 = r2
	r1 = 0
	r5 <<= 48
	if r5 s<= r1 goto .L3092
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L3198
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3199
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L3200
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3201
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L3202
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3203
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L3204
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3205
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L3206
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3207
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L3208
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3209
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L3210
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3211
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L3212
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3213
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L3214
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3215
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L3216
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3217
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L3218
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3219
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L3220
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3221
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L3222
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3223
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L3224
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L3225
	r2 <<= 15
	r1 = r2;r1 &= 0xffff
	if r1 > r0 goto .L3226
	if r1 != 0 goto .L3315
.L3095:
	if r3 != 0 goto .L3282
	r0 = r1
	exit
.L3282:
	exit
.L3214:
	r2 = 512
.L3093:
	r6 = r0
	r6 -= r4
	r6 &= 0xffff
	if r0 >= r4 goto .L3187
	r6 = r0
.L3187:
	r5 = r6;r5 &= 0xffff
	if r0 >= r4 goto .L3261
.L3313:
	r1 = 0
.L3196:
	r6 = r2
	r9 = r4
	r0 = r5
	r9 >>= 1
	r6 >>= 1
	r0 -= r9
	r0 &= 0xffff
	if r5 >= r9 goto .L3098
	r0 = r5
.L3098:
	r0 &= 0xffff
	if r5 >= r9 goto .L3100
	r6 = 0
.L3100:
	r1 |= r6
	r9 = r4
	r6 = r2
	r1 &= 0xffff
	r6 >>= 2
	r9 >>= 2
	if r6 == 0 goto .L3095
	r7 = r0
	r5 = 1
	r7 -= r9
	r7 &= 0xffff
	if r0 >= r9 goto .L3102
	r5 = 0
.L3102:
	if r0 < r9 goto .L3105
	r0 = r7
.L3105:
	r0 &= 0xffff
	if r5 == 0 goto .L3107
	r5 = r6
.L3107:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 3
	r1 &= 0xffff
	r7 >>= 3
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3108
	r5 = 0
.L3108:
	if r0 < r7 goto .L3111
	r0 = r9
.L3111:
	r0 &= 0xffff
	if r5 == 0 goto .L3113
	r5 = r6
.L3113:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 4
	r1 &= 0xffff
	r7 >>= 4
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3114
	r5 = 0
.L3114:
	if r0 < r7 goto .L3117
	r0 = r9
.L3117:
	r0 &= 0xffff
	if r5 == 0 goto .L3119
	r5 = r6
.L3119:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 5
	r1 &= 0xffff
	r7 >>= 5
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3120
	r5 = 0
.L3120:
	if r0 < r7 goto .L3123
	r0 = r9
.L3123:
	r0 &= 0xffff
	if r5 == 0 goto .L3125
	r5 = r6
.L3125:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 6
	r1 &= 0xffff
	r7 >>= 6
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3126
	r5 = 0
.L3126:
	if r0 < r7 goto .L3129
	r0 = r9
.L3129:
	r0 &= 0xffff
	if r5 == 0 goto .L3131
	r5 = r6
.L3131:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 7
	r1 &= 0xffff
	r7 >>= 7
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3132
	r5 = 0
.L3132:
	if r0 < r7 goto .L3135
	r0 = r9
.L3135:
	r0 &= 0xffff
	if r5 == 0 goto .L3137
	r5 = r6
.L3137:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 8
	r1 &= 0xffff
	r7 >>= 8
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3138
	r5 = 0
.L3138:
	if r0 < r7 goto .L3141
	r0 = r9
.L3141:
	r0 &= 0xffff
	if r5 == 0 goto .L3143
	r5 = r6
.L3143:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 9
	r1 &= 0xffff
	r7 >>= 9
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3144
	r5 = 0
.L3144:
	if r0 < r7 goto .L3147
	r0 = r9
.L3147:
	r0 &= 0xffff
	if r5 == 0 goto .L3149
	r5 = r6
.L3149:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 10
	r1 &= 0xffff
	r7 >>= 10
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3150
	r5 = 0
.L3150:
	if r0 < r7 goto .L3153
	r0 = r9
.L3153:
	r0 &= 0xffff
	if r5 == 0 goto .L3155
	r5 = r6
.L3155:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 11
	r1 &= 0xffff
	r7 >>= 11
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3156
	r5 = 0
.L3156:
	if r0 < r7 goto .L3159
	r0 = r9
.L3159:
	r0 &= 0xffff
	if r5 == 0 goto .L3161
	r5 = r6
.L3161:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 12
	r1 &= 0xffff
	r7 >>= 12
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3162
	r5 = 0
.L3162:
	if r0 < r7 goto .L3165
	r0 = r9
.L3165:
	r0 &= 0xffff
	if r5 == 0 goto .L3167
	r5 = r6
.L3167:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 13
	r1 &= 0xffff
	r7 >>= 13
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3168
	r5 = 0
.L3168:
	if r0 < r7 goto .L3171
	r0 = r9
.L3171:
	r0 &= 0xffff
	if r5 == 0 goto .L3173
	r5 = r6
.L3173:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 14
	r1 &= 0xffff
	r7 >>= 14
	if r6 == 0 goto .L3095
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3174
	r5 = 0
.L3174:
	if r0 < r7 goto .L3177
	r0 = r9
.L3177:
	r0 &= 0xffff
	if r5 == 0 goto .L3179
	r5 = r6
.L3179:
	r1 |= r5
	r4 >>= 15
	r1 &= 0xffff
	if r2 == 16384 goto .L3095
	r2 = r0
	r9 = 1
	r2 -= r4
	r2 &= 0xffff
	if r0 >= r4 goto .L3180
	r9 = 0
.L3180:
	if r0 >= r4 goto .L3183
	r2 = r0
.L3183:
	r9 |= r1
	r0 = r2;r0 &= 0xffff
	r1 = r9
	goto .L3095
.L3315:
	r2 = 32768
	r4 = r2
.L3094:
	r5 = r0
	r5 -= r4
	r5 &= 0xffff
	if r0 >= r4 goto .L3194
	r5 = r0
.L3194:
	r5 &= 0xffff
	if r0 < r4 goto .L3313
.L3261:
	r1 = r2;r1 &= 0xffff
	goto .L3196
.L3314:
	r4 = r0
	r4 -= r2
	r2 ^= r0
	r4 &= 0xffff
	r2 += -1
	r1 = r2
	r1 >>= 63
	if r2 s< 0 goto .L3090
	r4 = r0
.L3090:
	r0 = r4;r0 &= 0xffff
	goto .L3095
.L3198:
	r2 = 2
	goto .L3093
.L3199:
	r2 = 2
	goto .L3094
.L3200:
	r2 = 4
	goto .L3093
.L3201:
	r2 = 4
	goto .L3094
.L3202:
	r2 = 8
	goto .L3093
.L3203:
	r2 = 8
	goto .L3094
.L3204:
	r2 = 16
	goto .L3093
.L3205:
	r2 = 16
	goto .L3094
.L3206:
	r2 = 32
	goto .L3093
.L3207:
	r2 = 32
	goto .L3094
.L3208:
	r2 = 64
	goto .L3093
.L3209:
	r2 = 64
	goto .L3094
.L3210:
	r2 = 128
	goto .L3093
.L3211:
	r2 = 128
	goto .L3094
.L3212:
	r2 = 256
	goto .L3093
.L3213:
	r2 = 256
	goto .L3094
.L3215:
	r2 = 512
	goto .L3094
.L3216:
	r2 = 1024
	goto .L3093
.L3217:
	r2 = 1024
	goto .L3094
.L3218:
	r2 = 2048
	goto .L3093
.L3219:
	r2 = 2048
	goto .L3094
.L3220:
	r2 = 4096
	goto .L3093
.L3221:
	r2 = 4096
	goto .L3094
.L3222:
	r2 = 8192
	goto .L3093
.L3223:
	r2 = 8192
	goto .L3094
.L3224:
	r2 = 16384
	goto .L3093
.L3225:
	r2 = 16384
	goto .L3094
.L3226:
	r4 = 32768
	r2 = r4
	goto .L3093
.L3092:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L3095
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	if r1 < r2 goto .L3365
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3317:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3322
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3319
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L3317
.L3320:
	if r3 == 0 goto .L3316
	r5 = r1
.L3316:
	r0 = r5
	exit
.L3319:
	if r4 == 0 goto .L3320
.L3322:
	r5 = 0
	r9 = 1
	r7 = r5
	r6 = r5
.L3329:
	r8 = r1
	r0 = r9;r0 &= 0xff
	r8 -= r2
	if r1 >= r2 goto .L3323
	r0 = r7;r0 &= 0xff
.L3323:
	if r1 < r2 goto .L3326
	r1 = r8
.L3326:
	if r0 == 0 goto .L3327
	r0 = r4
.L3328:
	r5 |= r0
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3329
	goto .L3320
.L3327:
	r0 = r6
	goto .L3328
.L3365:
	r5 = 0
	goto .L3320
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L3367
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
.L3367:
	if r2 == 0 goto .L3370
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
.L3370:
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
	if r0 == 0 goto .L3372
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L3372:
	if r3 == 0 goto .L3375
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
.L3375:
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
	if r0 == 0 goto .L3377
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
.L3377:
	if r2 == 0 goto .L3380
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
.L3380:
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
	if r0 == 0 goto .L3382
	r5 = r2
	r0 = r2
	r5 s>>= 63
	r3 += -64
	r1 = r5
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L3382:
	if r3 == 0 goto .L3385
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
.L3385:
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
	if r1 <= 65534 goto .L3389
	r0 = 0
.L3389:
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
	if r4 != 0 goto .L3390
	r3 -= r9
	r0 += r1
	r0 += r3
	exit
.L3390:
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
	if r2 == 0 goto .L3393
	r6 = 0
.L3393:
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3395
	r0 = 0
.L3395:
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
	if r0 s>= r3 goto .L3406
	if r3 s> r0 goto .L3407
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3406
	if r1 > r2 goto .L3407
	r0 = 1
	exit
.L3406:
	r0 = 0
	exit
.L3407:
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
	if r0 s>= r3 goto .L3413
	if r3 s> r0 goto .L3412
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3413
	r0 = 1
	if r1 <= r2 goto .L3414
	r0 &= 1
	exit
.L3413:
	r0 = -1
	exit
.L3414:
	r0 = 0
	r0 &= 1
	exit
.L3412:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L3419
	if r2 s> r4 goto .L3420
	if r3 >= r1 goto .L3419
	if r1 > r3 goto .L3420
	r0 = 1
	exit
.L3419:
	r0 = 0
	exit
.L3420:
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
	if r1 == 0 goto .L3423
	r6 = 0
.L3423:
	if r0 == 0 goto .L3429
	r1 = 0
.L3425:
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
.L3429:
	r1 = r2
	goto .L3425
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3433
	if r2 != 0 goto .L3436
	r0 = r2
	exit
.L3433:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L3436:
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
	if r0 == 0 goto .L3438
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
.L3438:
	if r2 == 0 goto .L3441
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
.L3441:
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
	if r0 == 0 goto .L3443
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L3443:
	if r3 == 0 goto .L3446
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
.L3446:
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
	if r1 != 0 goto .L3453
	r3 = r0
.L3453:
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
	if r4 > r1 goto .L3460
	r9 = 0
.L3460:
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
	if r0 >= r4 goto .L3461
	r9 = 0
.L3461:
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
	if r9 >= r2 goto .L3462
	r0 = 0
.L3462:
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
	if r0 == 0 goto .L3464
.L3466:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3464:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3465
.L3467:
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
	if r4 != 0 goto .L3466
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3466
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
	if r0 != 0 goto .L3466
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
	if r4 != 0 goto .L3466
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
	if r9 != 0 goto .L3466
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
	if r3 != 0 goto .L3466
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
	if r4 != 0 goto .L3466
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3466
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3467
.L3465:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3463
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3463:
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
	if r0 == 0 goto .L3474
.L3476:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3474:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3475
.L3477:
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
	if r4 != 0 goto .L3476
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3476
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
	if r0 != 0 goto .L3476
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
	if r4 != 0 goto .L3476
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
	if r9 != 0 goto .L3476
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
	if r3 != 0 goto .L3476
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
	if r4 != 0 goto .L3476
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3476
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3477
.L3475:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3473
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3473:
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
	if r0 >= r3 goto .L3487
	if r3 > r0 goto .L3488
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3487
	if r1 > r2 goto .L3488
	r0 = 1
	exit
.L3487:
	r0 = 0
	exit
.L3488:
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
	if r0 >= r3 goto .L3494
	if r3 > r0 goto .L3493
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3494
	r0 = 1
	if r1 <= r2 goto .L3495
	r0 &= 1
	exit
.L3494:
	r0 = -1
	exit
.L3495:
	r0 = 0
	r0 &= 1
	exit
.L3493:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L3500
	if r2 > r4 goto .L3501
	if r3 >= r1 goto .L3500
	if r1 > r3 goto .L3501
	r0 = 1
	exit
.L3500:
	r0 = 0
	exit
.L3501:
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
