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
	if r1 <= r2 goto .L5
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
	if r0 <= 7 goto .L8
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
	if r3 s<= 1 goto .L551
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
	if r2 <= 25 goto .L595
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
	if r1 <= 127 goto .L597
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
	if r1 <= 31 goto .L603
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
	if r1 <= 9 goto .L605
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
	if r1 <= 93 goto .L607
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
	if r1 <= 25 goto .L609
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
	if r1 <= 94 goto .L611
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
	if r1 > 4 goto .L616
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
	if r1 <= 25 goto .L618
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
	if r1 <= 31 goto .L624
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 32 goto .L625
.L624:
	r0 = 1
	exit
.L625:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 <= 1 goto .L624
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 2 goto .L621
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
	if r1 <= 9 goto .L627
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
	if r1 <= 8231 goto .L634
	r2 = r1
	r2 += -8234
	if r2 <= 47061 goto .L634
	r2 += -49110
	if r2 <= 8184 goto .L634
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
	if r2 <= 9 goto .L641
	r1 |= 32
	r0 = 1
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 5 goto .L642
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
	if r0 s< 0 goto .L668
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
	if r0 s< 0 goto .L679
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
	if r0 s< 0 goto .L690
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
	if r0 s< 0 goto .L701
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
	if r0 s< 0 goto .L712
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
	if r0 s< 0 goto .L723
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
.L773:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L767
	r2 = r0;r2 &= 0xffffffff
	r3 = r2
	r3 += -9
	if r3 <= 4 goto .L767
	if r0 == 43 goto .L768
	if r0 == 45 goto .L769
	r2 += -48
	if r2 > 9 goto .L778
	r0 += -48
	r4 = 0
	r2 = r0
.L771:
	r0 = 0
.L775:
	r3 = *(u8 *) (r1+1)
	r9 = r0
	r9 <<= 2
	r5 = r2
	r0 += r9
	r2 = r3
	r0 <<= 33
	r2 <<= 56
	r0 s>>= 32
	r2 s>>= 56
	r9 = r0
	r2 += -48
	r0 -= r5
	r3 = r2;r3 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r3 > 9 goto .L791
	r9 = r0
	r9 <<= 2
	r3 = *(u8 *) (r1+2)
	r0 += r9
	r5 = r2
	r3 <<= 56
	r0 <<= 33
	r3 s>>= 56
	r0 s>>= 32
	r3 += -48
	r9 = r0
	r0 -= r2
	r2 = r3;r2 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r2 > 9 goto .L791
	r9 = r0
	r9 <<= 2
	r2 = *(u8 *) (r1+3)
	r0 += r9
	r5 = r3
	r2 <<= 56
	r0 <<= 33
	r2 s>>= 56
	r0 s>>= 32
	r2 += -48
	r9 = r0
	r0 -= r3
	r3 = r2;r3 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r3 > 9 goto .L791
	r5 = r0
	r5 <<= 2
	r1 += 4
	r0 += r5
	r5 = r2
	r0 <<= 33
	r2 = *(u8 *) (r1+0)
	r0 s>>= 32
	r2 <<= 56
	r9 = r0
	r2 s>>= 56
	r0 -= r5
	r2 += -48
	r0 <<= 32
	r3 = r2;r3 &= 0xffffffff
	r0 s>>= 32
	if r3 <= 9 goto .L775
.L791:
	if r4 != 0 goto .L774
	r0 = r5
	r0 -= r9
	r0 <<= 32
	r0 s>>= 32
	exit
.L767:
	r1 += 1
	goto .L773
.L769:
	r2 = *(u8 *) (r1+1)
	r1 += 1
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r4 = r2;r4 &= 0xffffffff
	if r4 > 9 goto .L778
	r4 = 1
	goto .L771
.L768:
	r2 = *(u8 *) (r1+1)
	r4 = 0
	r2 <<= 56
	r1 += 1
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r5 <= 9 goto .L771
.L778:
	r0 = 0
.L774:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
.L800:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L794
	r2 = r0;r2 &= 0xffffffff
	r3 = r2
	r3 += -9
	if r3 <= 4 goto .L794
	if r0 == 43 goto .L795
	if r0 == 45 goto .L796
	r2 += -48
	if r2 > 9 goto .L805
	r2 = 0
	r0 += -48
.L798:
	r3 = 0
.L802:
	r9 = *(u8 *) (r1+1)
	r5 = r0
	r3 *= 10
	r0 = r9
	r4 = r3
	r0 <<= 56
	r3 -= r5
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L818
	r9 = *(u8 *) (r1+2)
	r3 *= 10
	r5 = r0
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L818
	r9 = *(u8 *) (r1+3)
	r3 *= 10
	r5 = r0
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L818
	r3 *= 10
	r5 = r0
	r4 = r3
	r1 += 4
	r3 -= r5
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 9 goto .L802
.L818:
	if r2 != 0 goto .L793
	r3 = r5
	r3 -= r4
.L793:
	r0 = r3
	exit
.L794:
	r1 += 1
	goto .L800
.L796:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r5 > 9 goto .L805
	r2 = 1
	goto .L798
.L795:
	r0 = *(u8 *) (r1+1)
	r2 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 <= 9 goto .L798
.L805:
	r3 = 0
	goto .L793
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
.L825:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L821
	r2 = r0;r2 &= 0xffffffff
	r3 = r2
	r3 += -9
	if r3 <= 4 goto .L821
	if r0 == 43 goto .L822
	if r0 == 45 goto .L823
	r2 += -48
	if r2 > 9 goto .L832
	r2 = 0
	r0 += -48
.L826:
	r3 = 0
.L829:
	r9 = *(u8 *) (r1+1)
	r5 = r0
	r3 *= 10
	r0 = r9
	r4 = r3
	r0 <<= 56
	r3 -= r5
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L845
	r9 = *(u8 *) (r1+2)
	r3 *= 10
	r5 = r0
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L845
	r9 = *(u8 *) (r1+3)
	r3 *= 10
	r5 = r0
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L845
	r3 *= 10
	r5 = r0
	r4 = r3
	r1 += 4
	r3 -= r5
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 9 goto .L829
.L845:
	if r2 != 0 goto .L820
	r3 = r5
	r3 -= r4
.L820:
	r0 = r3
	exit
.L821:
	r1 += 1
	goto .L825
.L823:
	r0 = *(u8 *) (r1+1)
	r2 = 1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 9 goto .L826
.L832:
	r3 = 0
	goto .L820
.L822:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 9 goto .L832
	r2 = 0
	goto .L826
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
	if r1 s< 0 goto .L850
	exit
.L850:
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
	if r1 s< 0 goto .L854
	exit
.L854:
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
	if r1 s< 0 goto .L858
	exit
.L858:
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
	if r3 == 0 goto .L868
.L861:
	if r2 == r0 goto .L869
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L861
	exit
.L869:
	r0 = r1
	exit
.L868:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L880
.L881:
	if r3 == 0 goto .L872
	r1 += 4
	r2 += 4
.L880:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L881
.L872:
	if r3 s< r4 goto .L876
	r0 = 1
	if r3 s<= r4 goto .L882
	r0 &= 1
	exit
.L876:
	r0 = -1
	exit
.L882:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L884:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L900
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L900
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L900
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L900
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L900
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L900
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L900
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L884
.L900:
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
	if r2 == 0 goto .L901
	r0 = r1
.L903:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L920
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if r5 == 0 goto .L920
	r0 = r4
	r9 = *(u32 *) (r4+8)
	r0 += 8
	if r9 == 0 goto .L920
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L920
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L920
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L920
	r0 += 4
	r9 = *(u32 *) (r4+24)
	if r9 == 0 goto .L920
	r0 += 4
	r4 = *(u32 *) (r4+28)
	if r4 != 0 goto .L903
.L920:
	r0 -= r1
	r0 s>>= 2
.L901:
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L928
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L956
	if r0 == 1 goto .L945
	if r0 == 2 goto .L946
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L924
	if r5 == 0 goto .L924
	r3 = r4
	r1 += 4
	r2 += 4
.L946:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L924
	if r9 == 0 goto .L924
	r3 += -1
	r1 += 4
	r2 += 4
.L945:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L924
	if r5 == 0 goto .L924
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L928
.L956:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L924
	if r0 == 0 goto .L924
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
	if r0 != r9 goto .L924
	if r6 == 0 goto .L924
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L924
	if r6 == 0 goto .L924
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
	if r4 != r5 goto .L924
	if r6 == 0 goto .L924
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L956
.L928:
	r0 = 0
	exit
.L924:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L958
	r0 = 1
	if r2 s<= r1 goto .L959
	r0 &= 1
	exit
.L958:
	r0 = -1
	exit
.L959:
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
	if r3 == 0 goto .L964
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L1019
	if r0 == 1 goto .L1001
	if r0 == 2 goto .L1002
	if r0 == 3 goto .L1003
	if r0 == 4 goto .L1004
	if r0 == 5 goto .L1005
	if r0 != 6 goto .L1021
.L1006:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L1018
	r3 += -1
	r1 += 4
.L1005:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1018
	r3 += -1
	r1 += 4
.L1004:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1018
	r3 += -1
	r1 += 4
.L1003:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L1018
	r3 += -1
	r1 += 4
.L1002:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L1018
	r3 += -1
	r1 += 4
.L1001:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1018
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L964
.L1019:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1018
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L1018
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1018
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1018
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L1018
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L1018
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L1018
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L1018
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L1019
.L964:
	r0 = 0
	exit
.L1018:
	r0 = r1
	exit
.L1021:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L1018
	r3 = r4
	r1 += 4
	goto .L1006
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L1029
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L1085
	if r0 == 1 goto .L1066
	if r0 == 2 goto .L1067
	if r0 == 3 goto .L1068
	if r0 == 4 goto .L1069
	if r0 == 5 goto .L1070
	if r0 != 6 goto .L1087
.L1071:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 += -1
	r1 += 4
	r2 += 4
.L1070:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 += -1
	r1 += 4
	r2 += 4
.L1069:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 += -1
	r1 += 4
	r2 += 4
.L1068:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 += -1
	r1 += 4
	r2 += 4
.L1067:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 += -1
	r1 += 4
	r2 += 4
.L1066:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L1029
.L1085:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L1085
.L1029:
	r0 = 0
	exit
.L1084:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L1088
	r0 = 1
	if r4 s<= r5 goto .L1089
	r0 &= 1
	exit
.L1088:
	r0 = -1
	exit
.L1089:
	r0 = 0
	r0 &= 1
	exit
.L1087:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1084
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L1071
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1109
	r9 = r3
	r6 = r3
	r5 = r1
	r4 = r1
	r0 = r2
	r9 += -1
	r6 <<= 2
	r5 -= r2
	if r5 >= r6 goto .L1231
	if r3 == 0 goto .L1109
	r9 <<= 2
	r3 = r1
	r4 = r9
	r0 += r9
	r4 >>= 2
	r3 += r9
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1225
	if r4 == 1 goto .L1179
	if r4 == 2 goto .L1180
	if r4 == 3 goto .L1181
	if r4 == 4 goto .L1182
	if r4 == 5 goto .L1183
	if r4 != 6 goto .L1232
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
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
.L1181:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1180:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1179:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r5
	r9 = r0
	r3 += -4
	r0 += -4
	if r2 == r9 goto .L1109
.L1225:
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
	if r2 != r9 goto .L1225
.L1109:
	r0 = r1
	exit
.L1231:
	if r3 == 0 goto .L1109
	if r9 <= 8 goto .L1185
	r5 = r2
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L1185
	r6 = r2
	r6 += 4
	r7 = r1
	r7 ^= r6
	r6 = r7
	r6 = -r6
	r6 |= r7
	if r6 s>= 0 goto .L1185
	r9 = r3
	r9 >>= 1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1226
	if r6 == 1 goto .L1192
	if r6 == 2 goto .L1193
	if r6 == 3 goto .L1194
	if r6 == 4 goto .L1195
	if r6 == 5 goto .L1196
	if r6 != 6 goto .L1233
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
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1194:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1193:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1192:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r5 += 1
	r0 += 8
	r4 += 8
	if r9 == r5 goto .L1224
.L1226:
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
	if r9 != r5 goto .L1226
.L1224:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1109
	r3 &= -2
	r3 <<= 2
	r9 = r1
	r2 += r3
	r9 += r3
	r0 = r1
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r3
	exit
.L1185:
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1227
	if r3 == 1 goto .L1186
	if r3 == 2 goto .L1187
	if r3 == 3 goto .L1188
	if r3 == 4 goto .L1189
	if r3 == 5 goto .L1190
	if r3 == 6 goto .L1191
	r0 = *(u32 *) (r2+0)
	r4 = r1
	*(u32 *) (r1+0) = r0
	r9 += -1
	r0 = r2
	r4 += 4
	r0 += 4
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
	r9 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1188:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1187:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1186:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r9 += -1
	r4 += 4
	r0 += 4
	if r9 == -1 goto .L1109
.L1227:
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
	if r9 != -1 goto .L1227
	goto .L1109
.L1232:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
	goto .L1184
.L1233:
	r4 = *(u64 *) (r2+0)
	r5 = 1
	*(u64 *) (r1+0) = r4
	r0 += 8
	r4 = r1
	r4 += 8
	goto .L1197
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r9 = r3
	r2 s>>= 32
	r9 += -1
	if r3 == 0 goto .L1235
	r0 = r1
	r6 = r1
	r0 >>= 2
	r0 &= 1
	if r9 <= 5 goto .L1236
	if r0 == 0 goto .L1237
	r6 += 4
	*(u32 *) (r1+0) = r2
	r9 += -1
.L1237:
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
	if r8 == r5 goto .L1300
	if r8 == 1 goto .L1278
	if r8 == 2 goto .L1279
	if r8 == 3 goto .L1280
	if r8 == 4 goto .L1281
	if r8 == 5 goto .L1282
	if r8 != 6 goto .L1302
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
.L1280:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1279:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1278:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
	if r5 == r7 goto .L1299
.L1300:
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
	if r5 != r7 goto .L1300
.L1299:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1235
	r3 &= -2
	r4 = r3
	r9 -= r3
	r4 <<= 2
	r6 += r4
.L1236:
	*(u32 *) (r6+0) = r2
	if r9 == 0 goto .L1235
	*(u32 *) (r6+4) = r2
	if r9 == 1 goto .L1235
	*(u32 *) (r6+8) = r2
	if r9 == 2 goto .L1235
	*(u32 *) (r6+12) = r2
	if r9 == 3 goto .L1235
	*(u32 *) (r6+16) = r2
	if r9 == 4 goto .L1235
	*(u32 *) (r6+20) = r2
.L1235:
	r0 = r1
	exit
.L1302:
	*(u64 *) (r0+0) = r4
	r5 = 1
	r0 += 8
	goto .L1283
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1304
	r0 = r1
	r2 += r3
	r0 += r3
	if r3 == 0 goto .L1303
	r5 = r0
	r5 -= r1
	r5 &= 7
	if r5 == 0 goto .L1454
	if r5 == 1 goto .L1403
	if r5 == 2 goto .L1404
	if r5 == 3 goto .L1405
	if r5 == 4 goto .L1406
	if r5 == 5 goto .L1407
	if r5 == 6 goto .L1408
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1408:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1407:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1406:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1405:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1404:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1403:
	r2 += -1
	r9 = *(u8 *) (r0+-1)
	*(u8 *) (r2+0) = r9
	r0 += -1
	if r1 == r0 goto .L1460
.L1454:
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
	if r1 != r0 goto .L1454
	exit
.L1304:
	if r1 != r2 goto .L1461
.L1303:
	exit
.L1461:
	if r3 == 0 goto .L1303
	r0 = r3
	r0 += -1
	if r0 <= 7 goto .L1307
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L1462
.L1307:
	r0 = r1
	r0 += r3
	r3 &= 7
	if r3 == 0 goto .L1456
	if r3 == 1 goto .L1415
	if r3 == 2 goto .L1416
	if r3 == 3 goto .L1417
	if r3 == 4 goto .L1418
	if r3 == 5 goto .L1419
	if r3 == 6 goto .L1420
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1420:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1419:
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1418:
	r9 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r9
	r1 += 1
.L1417:
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1416:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1415:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
	if r0 == r1 goto .L1463
.L1456:
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
	if r0 != r1 goto .L1456
	goto .L1303
.L1462:
	r5 = r1
	r9 = r2
	r5 += 1
	r9 -= r5
	if r9 <= 6 goto .L1307
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
	if r4 == 0 goto .L1455
	if r4 == 1 goto .L1409
	if r4 == 2 goto .L1410
	if r4 == 3 goto .L1411
	if r4 == 4 goto .L1412
	if r4 == 5 goto .L1413
	if r4 != 6 goto .L1464
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
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1411:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1410:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1409:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r4
	r1 += 8
	r0 += 8
	if r9 == r1 goto .L1453
.L1455:
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
	if r9 != r1 goto .L1455
.L1453:
	r0 = r3
	r2 += r5
	r0 -= r5
	if r3 == r5 goto .L1303
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r1
	if r0 == 1 goto .L1303
	r3 = *(u8 *) (r9+1)
	*(u8 *) (r2+1) = r3
	if r0 == 2 goto .L1303
	r5 = *(u8 *) (r9+2)
	*(u8 *) (r2+2) = r5
	if r0 == 3 goto .L1303
	r4 = *(u8 *) (r9+3)
	*(u8 *) (r2+3) = r4
	if r0 == 4 goto .L1303
	r1 = *(u8 *) (r9+4)
	*(u8 *) (r2+4) = r1
	if r0 == 5 goto .L1303
	r3 = *(u8 *) (r9+5)
	*(u8 *) (r2+5) = r3
	if r0 == 6 goto .L1303
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r2+6) = r9
	exit
.L1460:
	exit
.L1464:
	r0 = *(u64 *) (r1+0)
	r1 += 8
	*(u64 *) (r2+0) = r0
	r0 = r2
	r0 += 8
	goto .L1414
.L1463:
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
.L1481:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1504
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1504
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1504
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1504
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1504
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1504
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1504
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1504
	if r0 != 32 goto .L1481
	r0 = r4
	exit
.L1504:
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
	if r1 == 0 goto .L1508
	r0 &= 1
	if r0 != 0 goto .L1508
	r0 = 1
.L1509:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1527
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1508
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1508
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1508
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1508
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1508
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1508
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1509
	exit
.L1508:
	exit
.L1527:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r2 = 0xff7fffff ll
	r6 = r1
	call	__ltsf2
	if r0 s< 0 goto .L1531
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1532
	r0 = r7
	r0 &= 1
	exit
.L1531:
	r0 = 1
	exit
.L1532:
	r7 = 0
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
	call	__ltdf2
	if r0 s< 0 goto .L1536
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1537
	r0 = r7
	r0 &= 1
	exit
.L1536:
	r0 = 1
	exit
.L1537:
	r7 = 0
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
	call	__ltdf2
	if r0 s< 0 goto .L1541
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1542
	r0 = r7
	r0 &= 1
	exit
.L1541:
	r0 = 1
	exit
.L1542:
	r7 = 0
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
	if r0 != 0 goto .L1545
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1545
	if r6 s< 0 goto .L1562
	r7 = 0x40000000 ll
.L1547:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1548
.L1549:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1548:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1545
.L1550:
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
	if r3 != 0 goto .L1549
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1549
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
	if r0 != 0 goto .L1549
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
	if r3 != 0 goto .L1549
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
	if r9 != 0 goto .L1549
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
	if r4 != 0 goto .L1549
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
	if r3 != 0 goto .L1549
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1549
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1550
.L1545:
	r0 = r8
	exit
.L1562:
	r7 = 0x3f000000 ll
	goto .L1547
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
	if r0 != 0 goto .L1564
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1564
	if r6 s< 0 goto .L1581
	r7 = 0x4000000000000000 ll
.L1566:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1567
.L1568:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1567:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1564
.L1569:
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
	if r3 != 0 goto .L1568
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1568
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
	if r0 != 0 goto .L1568
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
	if r3 != 0 goto .L1568
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
	if r9 != 0 goto .L1568
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
	if r4 != 0 goto .L1568
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
	if r3 != 0 goto .L1568
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1568
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1569
.L1564:
	r0 = r8
	exit
.L1581:
	r7 = 0x3fe0000000000000 ll
	goto .L1566
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
	if r0 != 0 goto .L1583
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1583
	if r6 s< 0 goto .L1600
	r7 = 0x4000000000000000 ll
.L1585:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1586
.L1587:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1586:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1583
.L1588:
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
	if r3 != 0 goto .L1587
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1587
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
	if r0 != 0 goto .L1587
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
	if r3 != 0 goto .L1587
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
	if r9 != 0 goto .L1587
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
	if r4 != 0 goto .L1587
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
	if r3 != 0 goto .L1587
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1587
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1588
.L1583:
	r0 = r8
	exit
.L1600:
	r7 = 0x3fe0000000000000 ll
	goto .L1585
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1602
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L1603
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 != 0 goto .L1603
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
	if r6 == 0 goto .L1703
	if r6 == 1 goto .L1666
	if r6 == 2 goto .L1667
	if r6 == 3 goto .L1668
	if r6 == 4 goto .L1669
	if r6 == 5 goto .L1670
	if r6 == 6 goto .L1671
	r4 = *(u64 *) (r1+0)
	r0 = *(u64 *) (r2+0)
	r2 += 8
	r0 ^= r4
	r4 = r1
	*(u64 *) (r1+0) = r0
	r4 += 8
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
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1668:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1667:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1666:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r0 ^= r6
	*(u64 *) (r4+0) = r0
	r2 += 8
	r4 += 8
	if r9 == r2 goto .L1701
.L1703:
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
	if r9 != r2 goto .L1703
.L1701:
	r0 = r1
	r2 = r3
	r0 += r5
	r2 -= r5
	if r3 == r5 goto .L1602
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r9+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L1602
	r4 = *(u8 *) (r0+1)
	r3 = *(u8 *) (r9+1)
	r3 ^= r4
	*(u8 *) (r0+1) = r3
	if r2 == 2 goto .L1602
	r5 = *(u8 *) (r0+2)
	r4 = *(u8 *) (r9+2)
	r4 ^= r5
	*(u8 *) (r0+2) = r4
	if r2 == 3 goto .L1602
	r5 = *(u8 *) (r0+3)
	r3 = *(u8 *) (r9+3)
	r3 ^= r5
	*(u8 *) (r0+3) = r3
	if r2 == 4 goto .L1602
	r4 = *(u8 *) (r0+4)
	r5 = *(u8 *) (r9+4)
	r5 ^= r4
	*(u8 *) (r0+4) = r5
	if r2 == 5 goto .L1602
	r4 = *(u8 *) (r0+5)
	r3 = *(u8 *) (r9+5)
	r3 ^= r4
	*(u8 *) (r0+5) = r3
	if r2 == 6 goto .L1602
	r5 = *(u8 *) (r0+6)
	r9 = *(u8 *) (r9+6)
	r9 ^= r5
	*(u8 *) (r0+6) = r9
.L1602:
	r0 = r1
	exit
.L1603:
	r4 = r2
	r9 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1702
	if r3 == 1 goto .L1672
	if r3 == 2 goto .L1673
	if r3 == 3 goto .L1674
	if r3 == 4 goto .L1675
	if r3 == 5 goto .L1676
	if r3 == 6 goto .L1677
	r3 = *(u8 *) (r2+0)
	r0 = *(u8 *) (r1+0)
	r2 += 1
	r3 ^= r0
	r9 += 1
	*(u8 *) (r1+0) = r3
.L1677:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1676:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r9 += 1
	r5 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r5
.L1675:
	r0 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1674:
	r5 = *(u8 *) (r9+0)
	r0 = *(u8 *) (r2+0)
	r9 += 1
	r0 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r0
.L1673:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1672:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r5 ^= r0
	*(u8 *) (r9+0) = r5
	r2 += 1
	r9 += 1
	if r4 == r2 goto .L1602
.L1702:
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
	if r4 != r2 goto .L1702
	goto .L1602
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1713
	r0 = r1
.L1708:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1707
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1707
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1707
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1707
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1707
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1707
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1707
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1708
.L1707:
	if r3 == 0 goto .L1710
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1783
	if r5 == 1 goto .L1761
	if r5 == 2 goto .L1762
	if r5 == 3 goto .L1763
	if r5 == 4 goto .L1764
	if r5 == 5 goto .L1765
	if r5 != 6 goto .L1785
.L1766:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1712
	r2 += 1
	r0 += 1
	r3 += -1
.L1765:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1712
	r2 += 1
	r0 += 1
	r3 += -1
.L1764:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1712
	r2 += 1
	r0 += 1
	r3 += -1
.L1763:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1712
	r2 += 1
	r0 += 1
	r3 += -1
.L1762:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1712
	r2 += 1
	r0 += 1
	r3 += -1
.L1761:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1712
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1710
.L1783:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1712
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1712
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1712
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1712
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1712
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1712
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1712
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1712
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1783
.L1710:
	*(u8 *) (r0+0) = 0
.L1712:
	r0 = r1
	exit
.L1785:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1712
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1766
.L1713:
	r0 = r1
	goto .L1707
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1786
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1842
	if r0 == 1 goto .L1828
	if r0 == 2 goto .L1829
	if r0 == 3 goto .L1830
	if r0 == 4 goto .L1831
	if r0 == 5 goto .L1832
	if r0 != 6 goto .L1845
.L1833:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1786
	r3 += 1
.L1832:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1846
.L1786:
	r0 = r3
	exit
.L1845:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1786
	r3 = 1
	goto .L1833
.L1846:
	r3 += 1
.L1831:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1786
	r3 += 1
.L1830:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1786
	r3 += 1
.L1829:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1786
	r3 += 1
.L1828:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1786
	r3 += 1
	if r2 == r3 goto .L1786
.L1842:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1786
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1786
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1786
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1786
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1786
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1786
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1786
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1786
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1842
	goto .L1786
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1852
.L1858:
	r3 = r2
	goto .L1851
.L1850:
	r3 += 1
	if r4 == r5 goto .L1849
.L1851:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1850
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1858
.L1852:
	r1 = r5
.L1849:
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
	goto .L1862
.L1865:
	r9 = r1
	r1 += 1
	r4 = r9
	if r0 == 0 goto .L1864
.L1862:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = r0
	r3 ^= r2
	r5 = r3;r5 &= 0xffffffff
	r5 += -1
	if r5 s< 0 goto .L1865
	r9 = r4
	r1 += 1
	r4 = r9
	if r0 != 0 goto .L1862
.L1864:
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
	if r0 == 0 goto .L1877
	r9 = r2
.L1868:
	r9 += 1
	r3 = r9
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1977
	r9 += 1
	r6 = *(u8 *) (r9+0)
	if r6 == 0 goto .L1977
	r9 = r3
	r0 = *(u8 *) (r3+2)
	r9 += 2
	if r0 == 0 goto .L1977
	r9 += 1
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L1977
	r9 += 1
	r6 = *(u8 *) (r3+4)
	if r6 == 0 goto .L1977
	r9 += 1
	r0 = *(u8 *) (r3+5)
	if r0 == 0 goto .L1977
	r9 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1977
	r9 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1868
.L1977:
	r6 = r9
	r6 -= r2
	if r9 == r2 goto .L1877
	r7 = r5;r7 &= 0xff
	r6 += -1
	goto .L1979
.L2009:
	r1 += 1
	if r0 == 0 goto .L2008
.L1979:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L2009
	r8 = r1
	r8 += r6
	*(u64 *) (r10+-8) = r8
	r0 = r7
	r8 = r6
	r3 = r2
	r4 = r1
	r8 &= 7
	if r8 == 0 goto .L1978
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L1871
	if r9 != r7 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1871
	if r8 == 1 goto .L1978
	if r8 == 2 goto .L1927
	if r8 == 3 goto .L1928
	if r8 == 4 goto .L1929
	if r8 == 5 goto .L1930
	if r8 == 6 goto .L1931
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1871
	if r4 != r0 goto .L1871
	r4 = r1
	r3 += 1
	r4 += 2
	r0 = *(u8 *) (r1+2)
	if r0 == 0 goto .L1871
.L1931:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1871
	if r8 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1930:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1871
	if r8 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1929:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1871
	if r8 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1928:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1871
	if r8 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1927:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1871
	if r8 != r0 goto .L1871
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1871
.L1978:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1871
	r9 = *(u64 *) (r10+-8)
	if r4 == r9 goto .L1871
	if r8 != r0 goto .L1871
	r3 += 1
	r0 = *(u8 *) (r4+1)
	r8 = r3
	if r0 == 0 goto .L1871
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1871
	if r9 != r0 goto .L1871
	r0 = *(u8 *) (r4+2)
	r3 += 1
	if r0 == 0 goto .L1871
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1871
	if r9 != r0 goto .L1871
	r3 = r8
	r0 = *(u8 *) (r4+3)
	r3 += 2
	if r0 == 0 goto .L1871
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1871
	if r9 != r0 goto .L1871
	r0 = *(u8 *) (r4+4)
	r3 += 1
	if r0 == 0 goto .L1871
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1871
	if r9 != r0 goto .L1871
	r0 = *(u8 *) (r4+5)
	r3 += 1
	if r0 == 0 goto .L1871
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1871
	if r9 != r0 goto .L1871
	r0 = *(u8 *) (r4+6)
	r3 += 1
	if r0 == 0 goto .L1871
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1871
	if r9 != r0 goto .L1871
	r0 = *(u8 *) (r4+7)
	r3 += 1
	if r0 == 0 goto .L1871
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1871
	if r9 != r0 goto .L1871
	r4 += 8
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 != 0 goto .L1978
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
	r2 = 0x0000000000000000 ll
	if r0 s< 0 goto .L2020
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2014
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s< 0 goto .L2013
.L2014:
	r0 = r6
	exit
.L2020:
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L2014
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
	if r2 < r4 goto .L2032
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
	r8 = r2
	*(u64 *) (r10+-8) = r2
	r7 = r1
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s< 0 goto .L2132
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L2133
	*(u64 *) (r10+-16) = 0
.L2101:
	r8 = 0
	r6 = 0x3fe0000000000000 ll
.L2107:
	r1 = r7
	r2 = r6
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r8 += 1
	r2 = r6
	r8 <<= 32
	r1 = r7
	r8 s>>= 32
	r9 = r8
	r9 += 1
	r9 <<= 32
	if r0 s< 0 goto .L2108
	r9 s>>= 32
	r8 = r9
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r2 = r6
	r3 = r0
	r1 = r7
	r0 = r8
	r0 += 1
	r0 <<= 32
	if r3 s< 0 goto .L2108
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r5 = r8
	r2 = r6
	r5 += 1
	r1 = r7
	r5 <<= 32
	if r0 s< 0 goto .L2108
	r5 s>>= 32
	r8 = r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L2107
.L2108:
	r1 = *(u64 *) (r10+-8)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-16)
	if r2 == 0 goto .L2114
	r9 = -9223372036854775808 ll
	r0 = r7
	r0 ^= r9
	exit
.L2133:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s>= 0 goto .L2104
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 != 0 goto .L2113
.L2104:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r7
	exit
.L2132:
	r3 = -9223372036854775808 ll
	r6 = r7
	r2 = 0xbff0000000000000 ll
	r6 ^= r3
	r1 = r7
	call	__ledf2
	if r0 s> 0 goto .L2134
	r7 = r6
	*(u64 *) (r10+-16) = 1
	goto .L2101
.L2114:
	r0 = r7
	exit
.L2134:
	r2 = 0xbfe0000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s> 0 goto .L2111
	*(u32 *) (r8+0) = 0
	r0 = r7
	exit
.L2111:
	*(u64 *) (r10+-16) = 1
.L2102:
	r7 = r6
	r8 = 0
	r6 = 0x3fe0000000000000 ll
.L2109:
	r2 = r7
	r1 = r7
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r8 += -1
	r2 = r7
	r8 <<= 32
	r1 = r7
	r8 s>>= 32
	r5 = r8
	r5 += -1
	r5 <<= 32
	if r0 s>= 0 goto .L2108
	r5 s>>= 32
	r8 = r5
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r2 = r7
	r9 = r0
	r1 = r7
	r0 = r8
	r0 += -1
	r0 <<= 32
	if r9 s>= 0 goto .L2108
	r0 s>>= 32
	r8 = r0
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r4 = r8
	r2 = r7
	r4 += -1
	r1 = r7
	r4 <<= 32
	if r0 s>= 0 goto .L2108
	r4 s>>= 32
	r8 = r4
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	if r0 s< 0 goto .L2109
	goto .L2108
.L2113:
	r6 = r7
	*(u64 *) (r10+-16) = 0
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
	if r2 >= r0 goto .L2201
	r5 = 32
	r4 = 1
.L2156:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r5 += -1
	r9 = r2
	r5 = r5;r5 &= 0xffffffff
	r9 <<= 32
	if r9 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2161
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2158
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 != 0 goto .L2156
.L2159:
	if r3 != 0 goto .L2181
	r0 = r5
	exit
.L2181:
	exit
.L2158:
	if r4 == 0 goto .L2175
.L2161:
	r5 = 0
	r6 = 1
	r8 = r5
	r7 = r5
.L2168:
	r1 = r0
	r9 = r6;r9 &= 0xff
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	if r0 >= r2 goto .L2162
	r9 = r8;r9 &= 0xff
.L2162:
	if r0 >= r2 goto .L2165
	r1 = r0
.L2165:
	r0 = r1;r0 &= 0xffffffff
	if r9 == 0 goto .L2166
	r9 = r4
.L2167:
	r5 |= r9
	r4 >>= 1
	r5 = r5;r5 &= 0xffffffff
	r2 >>= 1
	if r4 != 0 goto .L2168
	goto .L2159
.L2166:
	r9 = r7
	goto .L2167
.L2201:
	r1 = r0
	r4 = 1
	r1 -= r2
	r9 = r1;r9 &= 0xffffffff
	if r2 <= r0 goto .L2170
	r4 = 0
.L2170:
	r5 = r4;r5 &= 0xff
	if r2 > r0 goto .L2173
	r0 = r9
.L2173:
	r0 = r0;r0 &= 0xffffffff
	goto .L2159
.L2175:
	r5 = r4
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
	if r2 == r1 goto .L2204
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
.L2204:
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
	if r0 == r2 goto .L2207
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2207:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2211
	r0 = 0
.L2210:
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
	if r3 == 0 goto .L2227
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
	if r1 == 0 goto .L2209
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
	if r2 == 0 goto .L2209
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
	if r1 == 0 goto .L2209
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
	if r2 == 0 goto .L2209
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
	if r3 == 0 goto .L2209
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
	if r1 == 0 goto .L2209
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
	if r1 != 0 goto .L2210
	exit
.L2211:
	r0 = r1
.L2209:
	exit
.L2227:
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
	if r1 < r2 goto .L2229
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2413
.L2229:
	if r6 == 0 goto .L2232
	r6 <<= 3
	r0 = r2
	r7 = r6
	r4 = r1
	r7 += -8
	r6 += r2
	r7 >>= 3
	r7 += 1
	r7 &= 7
	if r7 == 0 goto .L2406
	if r7 == 1 goto .L2349
	if r7 == 2 goto .L2350
	if r7 == 3 goto .L2351
	if r7 == 4 goto .L2352
	if r7 == 5 goto .L2353
	if r7 == 6 goto .L2354
	r9 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r1+0) = r9
	r4 += 8
.L2354:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2353:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2352:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2351:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2350:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2349:
	r7 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r7
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L2403
.L2406:
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
	if r0 != r6 goto .L2406
.L2403:
	if r3 <= r5 goto .L2414
	r0 = r3
	r0 -= r5
	r9 = r0;r9 &= 0xffffffff
	r4 = r9
	r4 += -1
	if r4 <= 7 goto .L2412
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
	if r6 > 6 goto .L2415
.L2235:
	r2 += 1
	r2 += r5
	r3 += -1
	r3 -= r5
	r1 = r3;r1 &= 0xffffffff
	r1 += r2
	r2 = r1
	r2 -= r0
	r2 &= 7
	if r2 == 0 goto .L2405
	if r2 == 1 goto .L2361
	if r2 == 2 goto .L2362
	if r2 == 3 goto .L2363
	if r2 == 4 goto .L2364
	if r2 == 5 goto .L2365
	if r2 == 6 goto .L2366
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2366:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2365:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2364:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2363:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2362:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2361:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r4 += 1
	if r0 == r1 goto .L2416
.L2405:
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
	if r0 != r1 goto .L2405
	exit
.L2415:
	r6 = r0
	r6 |= r4
	r6 &= 7
	if r6 != 0 goto .L2235
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
	if r6 == 0 goto .L2404
	if r6 == 1 goto .L2355
	if r6 == 2 goto .L2356
	if r6 == 3 goto .L2357
	if r6 == 4 goto .L2358
	if r6 == 5 goto .L2359
	if r6 == 6 goto .L2360
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
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2357:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2356:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2355:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2402
.L2404:
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
	if r0 != r7 goto .L2404
.L2402:
	r4 = r9
	r9 &= 7
	r4 &= -8
	r5 += r4
	r5 = r5;r5 &= 0xffffffff
	if r9 == 0 goto .L2228
	r9 = r1
	r0 = r2
	r9 += r5
	r0 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r9 = r5
	r9 += 1
	r0 = r9;r0 &= 0xffffffff
	if r3 <= r0 goto .L2228
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 2
	r9 = r0;r9 &= 0xffffffff
	if r3 <= r9 goto .L2228
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 3
	r0 = r9;r0 &= 0xffffffff
	if r3 <= r0 goto .L2228
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 4
	r9 = r0;r9 &= 0xffffffff
	if r3 <= r9 goto .L2228
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 5
	r0 = r9;r0 &= 0xffffffff
	if r3 <= r0 goto .L2228
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r5 += 6
	r5 = r5;r5 &= 0xffffffff
	if r3 <= r5 goto .L2228
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2413:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2228
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2407
	if r3 == 1 goto .L2343
	if r3 == 2 goto .L2344
	if r3 == 3 goto .L2345
	if r3 == 4 goto .L2346
	if r3 == 5 goto .L2347
	if r3 == 6 goto .L2348
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2348:
	r5 = r1
	r3 = r2
	r5 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
.L2347:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2346:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2345:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2344:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2343:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2417
.L2407:
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
	if r9 != -1 goto .L2407
.L2228:
	exit
.L2232:
	if r3 == 0 goto .L2228
.L2412:
	r1 += r5
	r0 = r2
	r4 = r1
	r0 += r5
	goto .L2235
.L2414:
	exit
.L2417:
	exit
.L2416:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 < r2 goto .L2419
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2561
.L2419:
	if r9 == 0 goto .L2422
	r6 = r9
	r6 += -1
	if r6 <= 6 goto .L2423
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L2562
.L2423:
	r9 += r9
	r0 = r2
	r6 = r9
	r4 = r1
	r9 += -2
	r6 += r2
	r9 >>= 1
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2556
	if r9 == 1 goto .L2522
	if r9 == 2 goto .L2523
	if r9 == 3 goto .L2524
	if r9 == 4 goto .L2525
	if r9 == 5 goto .L2526
	if r9 == 6 goto .L2527
	r4 = *(u16 *) (r2+0)
	r0 += 2
	*(u16 *) (r1+0) = r4
	r4 = r1
	r4 += 2
.L2527:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2526:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2525:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2524:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2523:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2522:
	r9 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r9
	r0 += 2
	r4 += 2
	if r0 == r6 goto .L2422
.L2556:
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
	if r0 != r6 goto .L2556
.L2422:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L2418
.L2563:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2562:
	r5 = r2
	r0 = r1
	r5 += 2
	r0 -= r5
	if r0 <= 4 goto .L2423
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
	if r5 == 0 goto .L2555
	if r5 == 1 goto .L2516
	if r5 == 2 goto .L2517
	if r5 == 3 goto .L2518
	if r5 == 4 goto .L2519
	if r5 == 5 goto .L2520
	if r5 == 6 goto .L2521
	r0 = *(u64 *) (r2+0)
	r4 += 8
	*(u64 *) (r1+0) = r0
	r0 = r2
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
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2518:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2517:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2516:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2554
.L2555:
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
	if r0 != r7 goto .L2555
.L2554:
	r6 <<= 2
	if r9 == r6 goto .L2422
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
	if r9 <= r0 goto .L2422
	r0 += r0
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r0 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r0
	r6 += 2
	if r9 <= r6 goto .L2422
	r6 += r6
	r9 = r2
	r5 = r1
	r9 += r6
	r5 += r6
	r4 = *(u16 *) (r9+0)
	*(u16 *) (r5+0) = r4
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L2418
	goto .L2563
.L2561:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2418
	r5 = r9
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2557
	if r5 == 1 goto .L2510
	if r5 == 2 goto .L2511
	if r5 == 3 goto .L2512
	if r5 == 4 goto .L2513
	if r5 == 5 goto .L2514
	if r5 == 6 goto .L2515
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2515:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2514:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
.L2513:
	r4 = r1
	r3 = r2
	r4 += r9
	r3 += r9
	r9 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r5
.L2512:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
.L2511:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2510:
	r5 = r2
	r3 = r1
	r5 += r9
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	if r9 == -1 goto .L2564
.L2557:
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
	if r9 != -1 goto .L2557
.L2418:
	exit
.L2564:
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
	if r1 < r2 goto .L2566
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2797
.L2566:
	if r9 == 0 goto .L2798
	r6 = r9
	r6 += -1
	if r6 <= 8 goto .L2571
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 == 0 goto .L2799
.L2571:
	r9 <<= 2
	r0 = r2
	r6 = r9
	r4 = r1
	r6 += -4
	r9 += r2
	r6 >>= 2
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2788
	if r6 == 1 goto .L2723
	if r6 == 2 goto .L2724
	if r6 == 3 goto .L2725
	if r6 == 4 goto .L2726
	if r6 == 5 goto .L2727
	if r6 == 6 goto .L2728
	r0 = *(u32 *) (r2+0)
	r4 += 4
	*(u32 *) (r1+0) = r0
	r0 = r2
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
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2725:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2724:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2723:
	r6 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r6
	r0 += 4
	r4 += 4
	if r0 == r9 goto .L2576
.L2788:
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
	if r0 != r9 goto .L2788
.L2576:
	if r3 <= r5 goto .L2565
	r9 = r3
	r9 -= r5
	r6 = r9;r6 &= 0xffffffff
	r0 = r6
	r0 += -1
	if r0 <= 7 goto .L2796
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
	if r7 > 6 goto .L2800
.L2570:
	r2 += 1
	r2 += r5
	r3 += -1
	r3 -= r5
	r1 = r3;r1 &= 0xffffffff
	r1 += r2
	r2 = r1
	r2 -= r0
	r2 &= 7
	if r2 == 0 goto .L2787
	if r2 == 1 goto .L2735
	if r2 == 2 goto .L2736
	if r2 == 3 goto .L2737
	if r2 == 4 goto .L2738
	if r2 == 5 goto .L2739
	if r2 == 6 goto .L2740
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2740:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2739:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2738:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2737:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2736:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2735:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r4 += 1
	if r0 == r1 goto .L2801
.L2787:
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
	if r0 != r1 goto .L2787
	exit
.L2799:
	r0 = r2
	r6 = r1
	r0 += 4
	r6 ^= r0
	r4 = r6
	r4 = -r4
	r4 |= r6
	if r4 s>= 0 goto .L2571
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
	if r6 == 0 goto .L2789
	if r6 == 1 goto .L2717
	if r6 == 2 goto .L2718
	if r6 == 3 goto .L2719
	if r6 == 4 goto .L2720
	if r6 == 5 goto .L2721
	if r6 == 6 goto .L2722
	r0 = *(u64 *) (r2+0)
	r4 += 8
	*(u64 *) (r1+0) = r0
	r0 = r2
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
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2719:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2718:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2717:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
	if r0 == r8 goto .L2785
.L2789:
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
	if r0 != r8 goto .L2789
.L2785:
	r7 <<= 1
	if r9 == r7 goto .L2576
	r7 <<= 2
	r9 = r2
	r0 = r1
	r9 += r7
	r0 += r7
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r0+0) = r4
	goto .L2576
.L2800:
	r7 = r0
	r7 |= r4
	r7 &= 7
	if r7 != 0 goto .L2570
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
	if r9 == 0 goto .L2786
	if r9 == 1 goto .L2729
	if r9 == 2 goto .L2730
	if r9 == 3 goto .L2731
	if r9 == 4 goto .L2732
	if r9 == 5 goto .L2733
	if r9 == 6 goto .L2734
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2734:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2733:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2732:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2731:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2730:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2729:
	r8 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r8
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2784
.L2786:
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
	if r0 != r7 goto .L2786
.L2784:
	r4 = r6
	r6 &= 7
	r4 &= -8
	r5 += r4
	r5 = r5;r5 &= 0xffffffff
	if r6 == 0 goto .L2565
	r9 = r1
	r0 = r2
	r9 += r5
	r0 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r9 = r5
	r9 += 1
	r0 = r9;r0 &= 0xffffffff
	if r3 <= r0 goto .L2565
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 2
	r9 = r0;r9 &= 0xffffffff
	if r3 <= r9 goto .L2565
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 3
	r0 = r9;r0 &= 0xffffffff
	if r3 <= r0 goto .L2565
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 4
	r9 = r0;r9 &= 0xffffffff
	if r3 <= r9 goto .L2565
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r0
	r9 = r5
	r9 += 5
	r0 = r9;r0 &= 0xffffffff
	if r3 <= r0 goto .L2565
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r5 += 6
	r5 = r5;r5 &= 0xffffffff
	if r3 <= r5 goto .L2565
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2797:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2565
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2790
	if r3 == 1 goto .L2711
	if r3 == 2 goto .L2712
	if r3 == 3 goto .L2713
	if r3 == 4 goto .L2714
	if r3 == 5 goto .L2715
	if r3 == 6 goto .L2716
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2716:
	r5 = r1
	r3 = r2
	r5 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
.L2715:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2714:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2713:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2712:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2711:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2802
.L2790:
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
	if r9 != -1 goto .L2790
.L2565:
	exit
.L2798:
	if r3 == 0 goto .L2565
.L2796:
	r1 += r5
	r0 = r2
	r4 = r1
	r0 += r5
	goto .L2570
.L2802:
	exit
.L2801:
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
	if r0 != 0 goto .L2812
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2811
	r3 = r2
	r3 >>= 45
	if r3 != 0 goto .L2813
	r4 = r2
	r4 >>= 44
	if r4 != 0 goto .L2814
	r5 = r2
	r5 >>= 43
	if r5 != 0 goto .L2815
	r9 = r2
	r9 >>= 42
	if r9 != 0 goto .L2816
	r0 = r2
	r0 >>= 41
	if r0 != 0 goto .L2817
	r3 = r2
	r3 >>= 40
	if r3 != 0 goto .L2818
	r4 = r2
	r4 >>= 39
	if r4 != 0 goto .L2819
	r5 = r2
	r5 >>= 38
	if r5 != 0 goto .L2820
	r9 = r2
	r9 >>= 37
	if r9 != 0 goto .L2821
	r0 = r2
	r0 >>= 36
	if r0 != 0 goto .L2822
	r3 = r2
	r3 >>= 35
	if r3 != 0 goto .L2823
	r4 = r2
	r4 >>= 34
	if r4 != 0 goto .L2824
	r2 >>= 33
	if r2 != 0 goto .L2825
	r0 = 16
	if r1 != 0 goto .L2828
.L2811:
	exit
.L2812:
	r0 = 0
	exit
.L2823:
	r0 = 12
	exit
.L2828:
	r0 = 15
	exit
.L2813:
	r0 = 2
	exit
.L2814:
	r0 = 3
	exit
.L2815:
	r0 = 4
	exit
.L2816:
	r0 = 5
	exit
.L2817:
	r0 = 6
	exit
.L2818:
	r0 = 7
	exit
.L2819:
	r0 = 8
	exit
.L2820:
	r0 = 9
	exit
.L2821:
	r0 = 10
	exit
.L2822:
	r0 = 11
	exit
.L2824:
	r0 = 13
	exit
.L2825:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2832
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2833
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2834
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2835
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2836
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2837
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2838
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2839
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2840
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2841
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2842
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2843
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2844
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2845
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2846
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2849
	exit
.L2832:
	r0 = 0
	exit
.L2833:
	r0 = 1
	exit
.L2844:
	r0 = 12
	exit
.L2849:
	r0 = 15
	exit
.L2834:
	r0 = 2
	exit
.L2835:
	r0 = 3
	exit
.L2836:
	r0 = 4
	exit
.L2837:
	r0 = 5
	exit
.L2838:
	r0 = 6
	exit
.L2839:
	r0 = 7
	exit
.L2840:
	r0 = 8
	exit
.L2841:
	r0 = 9
	exit
.L2842:
	r0 = 10
	exit
.L2843:
	r0 = 11
	exit
.L2845:
	r0 = 13
	exit
.L2846:
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
	if r0 s>= 0 goto .L2856
	r1 = r6
	call	__fixsfdi
	exit
.L2856:
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
	if r1 == 0 goto .L2862
	r0 = 0
.L2861:
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
	if r3 == 0 goto .L2878
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
	if r1 == 0 goto .L2860
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
	if r2 == 0 goto .L2860
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
	if r1 == 0 goto .L2860
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
	if r2 == 0 goto .L2860
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
	if r3 == 0 goto .L2860
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
	if r1 == 0 goto .L2860
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
	if r1 != 0 goto .L2861
	exit
.L2862:
	r0 = r1
.L2860:
	exit
.L2878:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2882
	if r2 == 0 goto .L2883
	r0 = 0
.L2881:
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
	if r3 == 0 goto .L2899
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
	if r1 == 0 goto .L2880
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
	if r2 == 0 goto .L2880
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
	if r1 == 0 goto .L2880
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
	if r2 == 0 goto .L2880
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
	if r1 == 0 goto .L2880
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
	if r2 == 0 goto .L2880
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
	if r2 != 0 goto .L2881
	exit
.L2883:
	r0 = r2
.L2880:
	exit
.L2882:
	r0 = r1
	exit
.L2899:
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
	if r2 >= r0 goto .L2946
	r5 = 32
	r4 = 1
.L2901:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r5 += -1
	r9 = r2
	r5 = r5;r5 &= 0xffffffff
	r9 <<= 32
	if r9 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2906
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2903
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if r5 != 0 goto .L2901
.L2904:
	if r3 != 0 goto .L2926
	r0 = r5
	exit
.L2926:
	exit
.L2903:
	if r4 == 0 goto .L2920
.L2906:
	r5 = 0
	r6 = 1
	r8 = r5
	r7 = r5
.L2913:
	r1 = r0
	r9 = r6;r9 &= 0xff
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	if r0 >= r2 goto .L2907
	r9 = r8;r9 &= 0xff
.L2907:
	if r0 >= r2 goto .L2910
	r1 = r0
.L2910:
	r0 = r1;r0 &= 0xffffffff
	if r9 == 0 goto .L2911
	r9 = r4
.L2912:
	r5 |= r9
	r4 >>= 1
	r5 = r5;r5 &= 0xffffffff
	r2 >>= 1
	if r4 != 0 goto .L2913
	goto .L2904
.L2911:
	r9 = r7
	goto .L2912
.L2946:
	r1 = r0
	r4 = 1
	r1 -= r2
	r9 = r1;r9 &= 0xffffffff
	if r2 <= r0 goto .L2915
	r4 = 0
.L2915:
	r5 = r4;r5 &= 0xff
	if r2 > r0 goto .L2918
	r0 = r9
.L2918:
	r0 = r0;r0 &= 0xffffffff
	goto .L2904
.L2920:
	r5 = r4
	goto .L2904
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s< 0 goto .L2950
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2951
	r0 = r8
	r0 &= 1
	exit
.L2951:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2950:
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
	if r0 s< 0 goto .L2955
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2956
	r0 = r8
	r0 &= 1
	exit
.L2956:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2955:
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
	if r2 s< 0 goto .L2987
	if r3 == 0 goto .L2965
	r4 = 0
.L2961:
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
	if r2 == 0 goto .L2963
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
	if r2 == 0 goto .L2963
	r1 = 30
.L2964:
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
	if r3 == 0 goto .L2963
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
	if r2 == 0 goto .L2963
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
	if r9 == 0 goto .L2963
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
	if r3 == 0 goto .L2963
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
	if r2 == 0 goto .L2963
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2964
.L2963:
	if r4 == 0 goto .L2962
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2965:
	r0 = r3
.L2962:
	exit
.L2987:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2961
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L3034
	r0 = 1
	r4 = 0
.L2989:
	if r2 s>= 0 goto .L2990
	r2 = -r2
	r4 = r0
.L2990:
	r2 = r2;r2 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	if r2 >= r3 goto .L3035
	r0 = 32
	r1 = 1
.L2991:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2996
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r2 goto .L2993
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2991
.L2994:
	if r4 == 0 goto .L2988
	r0 = -r0
	exit
.L2988:
	exit
.L2993:
	if r1 == 0 goto .L3010
.L2996:
	r0 = 0
	r6 = 1
	r8 = r0
	r7 = r0
.L3003:
	r5 = r3
	r9 = r6;r9 &= 0xff
	r5 -= r2
	r5 = r5;r5 &= 0xffffffff
	if r3 >= r2 goto .L2997
	r9 = r8;r9 &= 0xff
.L2997:
	if r3 >= r2 goto .L3000
	r5 = r3
.L3000:
	r3 = r5;r3 &= 0xffffffff
	if r9 == 0 goto .L3001
	r9 = r1
.L3002:
	r0 |= r9
	r1 >>= 1
	r0 = r0;r0 &= 0xffffffff
	r2 >>= 1
	if r1 != 0 goto .L3003
	goto .L2994
.L3001:
	r9 = r7
	goto .L3002
.L3034:
	r1 = -r1
	r0 = 0
	r4 = 1
	goto .L2989
.L3035:
	r0 = 1
	if r2 <= r3 goto .L2994
	r0 = 0
	goto .L2994
.L3010:
	r0 = r1
	goto .L2994
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L3087
	r4 = 0
.L3037:
	if r0 s>= 0 goto .L3038
	r0 = -r0
.L3038:
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	if r0 >= r3 goto .L3088
	r9 = 32
	r1 = 1
.L3039:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r9 += -1
	r2 = r0
	r9 = r9;r9 &= 0xffffffff
	r2 <<= 32
	if r2 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L3084
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r3 <= r0 goto .L3086
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	if r9 != 0 goto .L3039
.L3042:
	r0 = r3
	if r4 == 0 goto .L3036
	r0 = -r0
	exit
.L3086:
	if r1 == 0 goto .L3042
.L3084:
	r5 = r3
	r5 -= r0
	r2 = r5;r2 &= 0xffffffff
	if r3 >= r0 goto .L3047
	r2 = r3
.L3047:
	r3 = r2;r3 &= 0xffffffff
	r1 >>= 1
	r0 >>= 1
	goto .L3086
.L3036:
	exit
.L3087:
	r1 = -r1
	r4 = 1
	goto .L3037
.L3088:
	r1 = r3
	r1 -= r0
	r2 = r1;r2 &= 0xffffffff
	if r0 <= r3 goto .L3059
	r1 = r3
	r3 = r1;r3 &= 0xffffffff
	goto .L3042
.L3059:
	r1 = r2
	r3 = r1;r3 &= 0xffffffff
	goto .L3042
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r2 >= r0 goto .L3316
	r1 = r2
	r1 <<= 48
	if r1 s< 0 goto .L3094
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r0 <= r4 goto .L3200
	r5 = r4
	r5 <<= 48
	if r5 s< 0 goto .L3201
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r0 <= r4 goto .L3202
	r9 = r4
	r9 <<= 48
	if r9 s< 0 goto .L3203
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r0 <= r4 goto .L3204
	r1 = r4
	r1 <<= 48
	if r1 s< 0 goto .L3205
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r0 <= r4 goto .L3206
	r5 = r4
	r5 <<= 48
	if r5 s< 0 goto .L3207
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r0 <= r4 goto .L3208
	r9 = r4
	r9 <<= 48
	if r9 s< 0 goto .L3209
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r0 <= r4 goto .L3210
	r1 = r4
	r1 <<= 48
	if r1 s< 0 goto .L3211
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r0 <= r4 goto .L3212
	r5 = r4
	r5 <<= 48
	if r5 s< 0 goto .L3213
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r0 <= r4 goto .L3214
	r9 = r4
	r9 <<= 48
	if r9 s< 0 goto .L3215
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r0 <= r4 goto .L3216
	r1 = r4
	r1 <<= 48
	if r1 s< 0 goto .L3217
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r0 <= r4 goto .L3218
	r5 = r4
	r5 <<= 48
	if r5 s< 0 goto .L3219
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r0 <= r4 goto .L3220
	r9 = r4
	r9 <<= 48
	if r9 s< 0 goto .L3221
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r0 <= r4 goto .L3222
	r1 = r4
	r1 <<= 48
	if r1 s< 0 goto .L3223
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r0 <= r4 goto .L3224
	r5 = r4
	r5 <<= 48
	if r5 s< 0 goto .L3225
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r0 <= r4 goto .L3226
	r9 = r4
	r9 <<= 48
	if r9 s< 0 goto .L3227
	r2 <<= 15
	r1 = r2;r1 &= 0xffff
	if r0 <= r1 goto .L3228
	if r1 != 0 goto .L3317
.L3097:
	if r3 != 0 goto .L3284
	r0 = r1
	exit
.L3284:
	exit
.L3216:
	r2 = 512
.L3095:
	r6 = r0
	r6 -= r4
	r6 &= 0xffff
	if r0 >= r4 goto .L3189
	r6 = r0
.L3189:
	r5 = r6;r5 &= 0xffff
	if r0 >= r4 goto .L3263
.L3315:
	r1 = 0
.L3198:
	r6 = r2
	r9 = r4
	r0 = r5
	r9 >>= 1
	r6 >>= 1
	r0 -= r9
	r0 &= 0xffff
	if r5 >= r9 goto .L3100
	r0 = r5
.L3100:
	r0 &= 0xffff
	if r5 >= r9 goto .L3102
	r6 = 0
.L3102:
	r1 |= r6
	r9 = r4
	r6 = r2
	r1 &= 0xffff
	r6 >>= 2
	r9 >>= 2
	if r6 == 0 goto .L3097
	r7 = r0
	r5 = 1
	r7 -= r9
	r7 &= 0xffff
	if r0 >= r9 goto .L3104
	r5 = 0
.L3104:
	if r0 < r9 goto .L3107
	r0 = r7
.L3107:
	r0 &= 0xffff
	if r5 == 0 goto .L3109
	r5 = r6
.L3109:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 3
	r1 &= 0xffff
	r7 >>= 3
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3110
	r5 = 0
.L3110:
	if r0 < r7 goto .L3113
	r0 = r9
.L3113:
	r0 &= 0xffff
	if r5 == 0 goto .L3115
	r5 = r6
.L3115:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 4
	r1 &= 0xffff
	r7 >>= 4
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3116
	r5 = 0
.L3116:
	if r0 < r7 goto .L3119
	r0 = r9
.L3119:
	r0 &= 0xffff
	if r5 == 0 goto .L3121
	r5 = r6
.L3121:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 5
	r1 &= 0xffff
	r7 >>= 5
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3122
	r5 = 0
.L3122:
	if r0 < r7 goto .L3125
	r0 = r9
.L3125:
	r0 &= 0xffff
	if r5 == 0 goto .L3127
	r5 = r6
.L3127:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 6
	r1 &= 0xffff
	r7 >>= 6
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3128
	r5 = 0
.L3128:
	if r0 < r7 goto .L3131
	r0 = r9
.L3131:
	r0 &= 0xffff
	if r5 == 0 goto .L3133
	r5 = r6
.L3133:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 7
	r1 &= 0xffff
	r7 >>= 7
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3134
	r5 = 0
.L3134:
	if r0 < r7 goto .L3137
	r0 = r9
.L3137:
	r0 &= 0xffff
	if r5 == 0 goto .L3139
	r5 = r6
.L3139:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 8
	r1 &= 0xffff
	r7 >>= 8
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3140
	r5 = 0
.L3140:
	if r0 < r7 goto .L3143
	r0 = r9
.L3143:
	r0 &= 0xffff
	if r5 == 0 goto .L3145
	r5 = r6
.L3145:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 9
	r1 &= 0xffff
	r7 >>= 9
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3146
	r5 = 0
.L3146:
	if r0 < r7 goto .L3149
	r0 = r9
.L3149:
	r0 &= 0xffff
	if r5 == 0 goto .L3151
	r5 = r6
.L3151:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 10
	r1 &= 0xffff
	r7 >>= 10
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3152
	r5 = 0
.L3152:
	if r0 < r7 goto .L3155
	r0 = r9
.L3155:
	r0 &= 0xffff
	if r5 == 0 goto .L3157
	r5 = r6
.L3157:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 11
	r1 &= 0xffff
	r7 >>= 11
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3158
	r5 = 0
.L3158:
	if r0 < r7 goto .L3161
	r0 = r9
.L3161:
	r0 &= 0xffff
	if r5 == 0 goto .L3163
	r5 = r6
.L3163:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 12
	r1 &= 0xffff
	r7 >>= 12
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3164
	r5 = 0
.L3164:
	if r0 < r7 goto .L3167
	r0 = r9
.L3167:
	r0 &= 0xffff
	if r5 == 0 goto .L3169
	r5 = r6
.L3169:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 13
	r1 &= 0xffff
	r7 >>= 13
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3170
	r5 = 0
.L3170:
	if r0 < r7 goto .L3173
	r0 = r9
.L3173:
	r0 &= 0xffff
	if r5 == 0 goto .L3175
	r5 = r6
.L3175:
	r1 |= r5
	r6 = r2
	r7 = r4
	r6 >>= 14
	r1 &= 0xffff
	r7 >>= 14
	if r6 == 0 goto .L3097
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if r0 >= r7 goto .L3176
	r5 = 0
.L3176:
	if r0 < r7 goto .L3179
	r0 = r9
.L3179:
	r0 &= 0xffff
	if r5 == 0 goto .L3181
	r5 = r6
.L3181:
	r1 |= r5
	r4 >>= 15
	r1 &= 0xffff
	if r2 == 16384 goto .L3097
	r2 = r0
	r9 = 1
	r2 -= r4
	r2 &= 0xffff
	if r0 >= r4 goto .L3182
	r9 = 0
.L3182:
	if r0 >= r4 goto .L3185
	r2 = r0
.L3185:
	r9 |= r1
	r0 = r2;r0 &= 0xffff
	r1 = r9
	goto .L3097
.L3317:
	r2 = 32768
	r4 = r2
.L3096:
	r5 = r0
	r5 -= r4
	r5 &= 0xffff
	if r0 >= r4 goto .L3196
	r5 = r0
.L3196:
	r5 &= 0xffff
	if r0 < r4 goto .L3315
.L3263:
	r1 = r2;r1 &= 0xffff
	goto .L3198
.L3316:
	r4 = r0
	r4 -= r2
	r2 ^= r0
	r4 &= 0xffff
	r2 += -1
	r1 = r2
	r1 >>= 63
	if r2 s< 0 goto .L3092
	r4 = r0
.L3092:
	r0 = r4;r0 &= 0xffff
	goto .L3097
.L3200:
	r2 = 2
	goto .L3095
.L3201:
	r2 = 2
	goto .L3096
.L3202:
	r2 = 4
	goto .L3095
.L3203:
	r2 = 4
	goto .L3096
.L3204:
	r2 = 8
	goto .L3095
.L3205:
	r2 = 8
	goto .L3096
.L3206:
	r2 = 16
	goto .L3095
.L3207:
	r2 = 16
	goto .L3096
.L3208:
	r2 = 32
	goto .L3095
.L3209:
	r2 = 32
	goto .L3096
.L3210:
	r2 = 64
	goto .L3095
.L3211:
	r2 = 64
	goto .L3096
.L3212:
	r2 = 128
	goto .L3095
.L3213:
	r2 = 128
	goto .L3096
.L3214:
	r2 = 256
	goto .L3095
.L3215:
	r2 = 256
	goto .L3096
.L3217:
	r2 = 512
	goto .L3096
.L3218:
	r2 = 1024
	goto .L3095
.L3219:
	r2 = 1024
	goto .L3096
.L3220:
	r2 = 2048
	goto .L3095
.L3221:
	r2 = 2048
	goto .L3096
.L3222:
	r2 = 4096
	goto .L3095
.L3223:
	r2 = 4096
	goto .L3096
.L3224:
	r2 = 8192
	goto .L3095
.L3225:
	r2 = 8192
	goto .L3096
.L3226:
	r2 = 16384
	goto .L3095
.L3227:
	r2 = 16384
	goto .L3096
.L3228:
	r4 = 32768
	r2 = r4
	goto .L3095
.L3094:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L3097
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r1 goto .L3367
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3319:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3324
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3321
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L3319
.L3322:
	if r3 == 0 goto .L3318
	r5 = r1
.L3318:
	r0 = r5
	exit
.L3321:
	if r4 == 0 goto .L3322
.L3324:
	r5 = 0
	r9 = 1
	r7 = r5
	r6 = r5
.L3331:
	r8 = r1
	r0 = r9;r0 &= 0xff
	r8 -= r2
	if r1 >= r2 goto .L3325
	r0 = r7;r0 &= 0xff
.L3325:
	if r1 < r2 goto .L3328
	r1 = r8
.L3328:
	if r0 == 0 goto .L3329
	r0 = r4
.L3330:
	r5 |= r0
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3331
	goto .L3322
.L3329:
	r0 = r6
	goto .L3330
.L3367:
	r4 = r1
	r0 = 1
	r4 -= r2
	if r2 <= r1 goto .L3333
	r0 = 0
.L3333:
	r5 = r0;r5 &= 0xff
	if r2 <= r1 goto .L3336
	r4 = r1
.L3336:
	r1 = r4
	goto .L3322
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L3369
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
.L3369:
	if r2 == 0 goto .L3372
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
.L3372:
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
	if r0 == 0 goto .L3374
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L3374:
	if r3 == 0 goto .L3377
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
.L3377:
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
	if r0 == 0 goto .L3379
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
.L3379:
	if r2 == 0 goto .L3382
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
.L3382:
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
	if r0 == 0 goto .L3384
	r5 = r2
	r0 = r2
	r5 s>>= 63
	r3 += -64
	r1 = r5
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L3384:
	if r3 == 0 goto .L3387
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
.L3387:
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
	if r1 <= 65535 goto .L3391
	r0 = 0
.L3391:
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
	if r4 != 0 goto .L3392
	r3 -= r9
	r0 += r1
	r0 += r3
	exit
.L3392:
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
	if r2 == 0 goto .L3395
	r6 = 0
.L3395:
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3397
	r0 = 0
.L3397:
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
	if r3 s< r0 goto .L3408
	if r3 s> r0 goto .L3409
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 < r2 goto .L3408
	if r1 > r2 goto .L3409
	r0 = 1
	exit
.L3408:
	r0 = 0
	exit
.L3409:
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
	if r3 s< r0 goto .L3415
	if r3 s> r0 goto .L3414
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 < r2 goto .L3415
	r0 = 1
	if r1 <= r2 goto .L3416
	r0 &= 1
	exit
.L3415:
	r0 = -1
	exit
.L3416:
	r0 = 0
	r0 &= 1
	exit
.L3414:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r2 s< r4 goto .L3421
	if r2 s> r4 goto .L3422
	if r1 < r3 goto .L3421
	if r1 > r3 goto .L3422
	r0 = 1
	exit
.L3421:
	r0 = 0
	exit
.L3422:
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
	if r1 == 0 goto .L3425
	r6 = 0
.L3425:
	if r0 == 0 goto .L3431
	r1 = 0
.L3427:
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
.L3431:
	r1 = r2
	goto .L3427
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3435
	if r2 != 0 goto .L3438
	r0 = r2
	exit
.L3435:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L3438:
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
	if r0 == 0 goto .L3440
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
.L3440:
	if r2 == 0 goto .L3443
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
.L3443:
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
	if r0 == 0 goto .L3445
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L3445:
	if r3 == 0 goto .L3448
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
.L3448:
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
	if r1 != 0 goto .L3455
	r3 = r0
.L3455:
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
	if r4 > r1 goto .L3462
	r9 = 0
.L3462:
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
	if r4 < r0 goto .L3463
	r9 = 0
.L3463:
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
	if r2 < r9 goto .L3464
	r0 = 0
.L3464:
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
	if r0 == 0 goto .L3466
.L3468:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3466:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3467
.L3469:
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
	if r4 != 0 goto .L3468
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3468
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
	if r0 != 0 goto .L3468
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
	if r4 != 0 goto .L3468
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
	if r9 != 0 goto .L3468
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
	if r3 != 0 goto .L3468
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
	if r4 != 0 goto .L3468
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3468
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3469
.L3467:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3465
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3465:
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
	if r0 == 0 goto .L3476
.L3478:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3476:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3477
.L3479:
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
	if r4 != 0 goto .L3478
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3478
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
	if r0 != 0 goto .L3478
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
	if r4 != 0 goto .L3478
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
	if r9 != 0 goto .L3478
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
	if r3 != 0 goto .L3478
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
	if r4 != 0 goto .L3478
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3478
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3479
.L3477:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3475
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3475:
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
	if r3 < r0 goto .L3489
	if r3 > r0 goto .L3490
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 < r2 goto .L3489
	if r1 > r2 goto .L3490
	r0 = 1
	exit
.L3489:
	r0 = 0
	exit
.L3490:
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
	if r3 < r0 goto .L3496
	if r3 > r0 goto .L3495
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 < r2 goto .L3496
	r0 = 1
	if r1 <= r2 goto .L3497
	r0 &= 1
	exit
.L3496:
	r0 = -1
	exit
.L3497:
	r0 = 0
	r0 &= 1
	exit
.L3495:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r2 < r4 goto .L3502
	if r2 > r4 goto .L3503
	if r1 < r3 goto .L3502
	if r1 > r3 goto .L3503
	r0 = 1
	exit
.L3502:
	r0 = 0
	exit
.L3503:
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
