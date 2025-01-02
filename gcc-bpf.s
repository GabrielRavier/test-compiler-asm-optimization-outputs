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
	r5 = r0
	r5 -= r1
	r5 &= 7
	if r5 == 0 goto .L7
	if r5 == 1 goto .L104
	if r5 == 2 goto .L105
	if r5 == 3 goto .L106
	if r5 == 4 goto .L107
	if r5 == 5 goto .L108
	if r5 == 6 goto .L109
	r2 += -1
	r0 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
.L109:
	r2 += -1
	r0 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
.L108:
	r2 += -1
	r0 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
.L107:
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
.L106:
	r2 += -1
	r0 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
.L105:
	r2 += -1
	r0 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
.L104:
	r0 += -1
	r4 = *(u8 *) (r2+-1)
	*(u8 *) (r0+0) = r4
	r2 += -1
	if r1 == r0 goto .L6
.L7:
	r5 = *(u8 *) (r2+-1)
	r2 += -8
	*(u8 *) (r0+-1) = r5
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r0+-2) = r3
	r9 = *(u8 *) (r2+5)
	*(u8 *) (r0+-3) = r9
	r4 = *(u8 *) (r2+4)
	r0 += -8
	*(u8 *) (r0+4) = r4
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r0+3) = r5
	r3 = *(u8 *) (r2+2)
	*(u8 *) (r0+2) = r3
	r9 = *(u8 *) (r2+1)
	*(u8 *) (r0+1) = r9
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	if r1 != r0 goto .L7
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
	if r4 == 0 goto .L155
.L8:
	r4 = r3
	r0 = r1
	r4 += r1
	r3 &= 7
	if r3 == 0 goto .L14
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
.L14:
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
	if r4 != r0 goto .L14
	goto .L6
.L155:
	r5 = r2
	r9 = r1
	r5 += 1
	r9 -= r5
	if r9 <= 6 goto .L8
	r9 = r3
	r6 = r2
	r9 &= -8
	r0 = r2
	r5 = r9
	r4 = r1
	r5 += -8
	r6 += r9
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L11
	if r5 == 1 goto .L110
	if r5 == 2 goto .L111
	if r5 == 3 goto .L112
	if r5 == 4 goto .L113
	if r5 == 5 goto .L114
	if r5 != 6 goto .L156
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
	if r6 == r0 goto .L154
.L11:
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
	if r6 != r0 goto .L11
.L154:
	r0 = r1
	r4 = r3
	r0 += r9
	r4 -= r9
	if r3 == r9 goto .L6
	r3 = *(u8 *) (r6+0)
	*(u8 *) (r0+0) = r3
	if r4 == 1 goto .L6
	r9 = *(u8 *) (r6+1)
	*(u8 *) (r0+1) = r9
	if r4 == 2 goto .L6
	r2 = *(u8 *) (r6+2)
	*(u8 *) (r0+2) = r2
	if r4 == 3 goto .L6
	r5 = *(u8 *) (r6+3)
	*(u8 *) (r0+3) = r5
	if r4 == 4 goto .L6
	r3 = *(u8 *) (r6+4)
	*(u8 *) (r0+4) = r3
	if r4 == 5 goto .L6
	r9 = *(u8 *) (r6+5)
	*(u8 *) (r0+5) = r9
	if r4 == 6 goto .L6
	r4 = *(u8 *) (r6+6)
	*(u8 *) (r0+6) = r4
	goto .L6
.L156:
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
	if r4 == 0 goto .L160
	r5 = r4
	r0 = r4
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L158
	if r0 == 1 goto .L201
	if r0 == 2 goto .L202
	if r0 == 3 goto .L203
	if r0 == 4 goto .L204
	if r0 == 5 goto .L205
	if r0 != 6 goto .L218
.L206:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L217
	r4 += -1
	r2 += 1
	r1 += 1
.L205:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L217
	r4 += -1
	r2 += 1
	r1 += 1
.L204:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L217
	r4 += -1
	r2 += 1
	r1 += 1
.L203:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L217
	r4 += -1
	r2 += 1
	r1 += 1
.L202:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L217
	r4 += -1
	r2 += 1
	r1 += 1
.L201:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L217
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L160
.L158:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L217
	r1 += 1
	r5 = *(u8 *) (r2+1)
	*(u8 *) (r1+0) = r5
	r0 = r1
	if r5 == r3 goto .L217
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r1+1) = r9
	r1 += 1
	if r9 == r3 goto .L217
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r0+2) = r5
	r1 = r0
	r1 += 2
	if r5 == r3 goto .L217
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r0+3) = r9
	r1 += 1
	if r9 == r3 goto .L217
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r0+4) = r5
	r1 += 1
	if r5 == r3 goto .L217
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r0+5) = r9
	r1 += 1
	if r9 == r3 goto .L217
	r5 = *(u8 *) (r2+7)
	*(u8 *) (r0+6) = r5
	r1 += 1
	if r5 == r3 goto .L217
	r0 += 7
	r4 += -8
	r2 += 8
	r1 = r0
	if r4 != 0 goto .L158
.L160:
	r0 = 0
	exit
.L217:
	r0 = r1
	r0 += 1
	exit
.L218:
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r4
	if r4 == r3 goto .L217
	r4 = r5
	r2 += 1
	r1 += 1
	goto .L206
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L223
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L220
	if r0 == 1 goto .L260
	if r0 == 2 goto .L261
	if r0 == 3 goto .L262
	if r0 == 4 goto .L263
	if r0 == 5 goto .L264
	if r0 != 6 goto .L278
.L265:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L277
	r1 += 1
	r3 += -1
.L264:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L277
	r1 += 1
	r3 += -1
.L263:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L277
	r1 += 1
	r3 += -1
.L262:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L277
	r1 += 1
	r3 += -1
.L261:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L277
	r1 += 1
	r3 += -1
.L260:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L277
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L223
.L220:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L277
	r1 += 1
	r0 = r1
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L277
	r1 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L277
	r1 = r0
	r4 = *(u8 *) (r0+2)
	r1 += 2
	if r4 == r2 goto .L277
	r1 += 1
	r5 = *(u8 *) (r0+3)
	if r5 == r2 goto .L277
	r1 += 1
	r9 = *(u8 *) (r0+4)
	if r9 == r2 goto .L277
	r1 += 1
	r4 = *(u8 *) (r0+5)
	if r4 == r2 goto .L277
	r1 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == r2 goto .L277
	r0 += 7
	r3 += -8
	r1 = r0
	if r3 != 0 goto .L220
.L223:
	r0 = 0
	exit
.L277:
	r0 = r1
	exit
.L278:
	r3 = *(u8 *) (r1+0)
	if r3 == r2 goto .L277
	r1 += 1
	r3 = r4
	goto .L265
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L284
	r5 = r3
	r0 = r3
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L280
	if r0 == 1 goto .L321
	if r0 == 2 goto .L322
	if r0 == 3 goto .L323
	if r0 == 4 goto .L324
	if r0 == 5 goto .L325
	if r0 != 6 goto .L340
.L326:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r3 += -1
	r1 += 1
	r2 += 1
.L325:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r3 += -1
	r1 += 1
	r2 += 1
.L324:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r3 += -1
	r1 += 1
	r2 += 1
.L323:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r3 += -1
	r1 += 1
	r2 += 1
.L322:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r3 += -1
	r1 += 1
	r2 += 1
.L321:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L284
.L280:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r0 = *(u8 *) (r1+1)
	r4 = *(u8 *) (r2+1)
	if r0 != r4 goto .L339
	r0 = *(u8 *) (r1+2)
	r4 = *(u8 *) (r2+2)
	if r0 != r4 goto .L339
	r0 = *(u8 *) (r1+3)
	r4 = *(u8 *) (r2+3)
	if r0 != r4 goto .L339
	r0 = *(u8 *) (r1+4)
	r4 = *(u8 *) (r2+4)
	if r0 != r4 goto .L339
	r0 = *(u8 *) (r1+5)
	r4 = *(u8 *) (r2+5)
	if r0 != r4 goto .L339
	r0 = *(u8 *) (r1+6)
	r4 = *(u8 *) (r2+6)
	if r0 != r4 goto .L339
	r0 = *(u8 *) (r1+7)
	r4 = *(u8 *) (r2+7)
	if r0 != r4 goto .L339
	r3 += -8
	r1 += 8
	r2 += 8
	if r3 != 0 goto .L280
.L284:
	r0 = 0
	exit
.L339:
	r0 -= r4
	exit
.L340:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L339
	r3 = r5
	r1 += 1
	r2 += 1
	goto .L326
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
	if r3 == 0 goto .L342
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L341
	if r3 == 1 goto .L342
	if r3 == 2 goto .L356
	if r3 == 3 goto .L354
	if r3 == 4 goto .L352
	if r3 == 5 goto .L350
	if r3 != 6 goto .L376
.L348:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L341
.L350:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L341
.L352:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 == r2 goto .L341
.L354:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L341
.L356:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L377
.L342:
	if r1 == r4 goto .L378
	r5 = r1
	r0 = r1
	r5 += -1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L379
	r9 = r1
	r0 = r5
	r9 += -2
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L341
	r5 = r1
	r0 = r9
	r5 += -3
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L341
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L341
	r5 += -2
	r0 = r9
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L341
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L341
	r0 = r9
	r5 += -2
	r9 = *(u8 *) (r9+0)
	if r9 == r2 goto .L341
	r0 = r5
	r1 += -8
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L342
	exit
.L378:
	r0 = 0
.L341:
	exit
.L376:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 != r2 goto .L348
	exit
.L379:
	exit
.L377:
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
	if r1 == 0 goto .L381
.L382:
	r0 += 1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 = r0
	if r4 == 0 goto .L381
	r5 = *(u8 *) (r2+2)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L381
	r0 = r3
	r9 = *(u8 *) (r2+3)
	r0 += 2
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L381
	r1 = *(u8 *) (r2+4)
	r0 += 1
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L381
	r4 = *(u8 *) (r2+5)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L381
	r3 = *(u8 *) (r2+6)
	r0 += 1
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L381
	r5 = *(u8 *) (r2+7)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	r2 += 8
	if r5 == 0 goto .L381
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L382
	exit
.L381:
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
	if r1 != 0 goto .L402
	goto .L408
.L404:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L401
.L402:
	r4 &= 0xff
	if r4 != r2 goto .L404
.L401:
	exit
.L408:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	goto .L411
.L414:
	r0 += 1
	if r3 == 0 goto .L413
.L411:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r2 goto .L414
	exit
.L413:
	r0 = r3
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L423
.L416:
	if r0 == 0 goto .L417
	r1 += 1
	r2 += 1
.L423:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 <<= 56
	r3 <<= 56
	r0 s>>= 56
	r3 s>>= 56
	if r0 == r3 goto .L416
	r0 &= 0xff
.L417:
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
	if r2 == 0 goto .L424
	r0 = r1
.L426:
	r0 += 1
	r4 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L443
	r0 += 1
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L443
	r0 = r4
	r9 = *(u8 *) (r4+2)
	r0 += 2
	if r9 == 0 goto .L443
	r0 += 1
	r2 = *(u8 *) (r4+3)
	if r2 == 0 goto .L443
	r0 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L443
	r0 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L443
	r0 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L443
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L426
.L443:
	r0 -= r1
.L424:
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L452
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L534
	r3 += -1
	r9 = r1
	r9 += r3
	r3 &= 7
	if r3 == 0 goto .L448
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L532
	r2 = r0
	if r3 == 1 goto .L448
	if r3 == 2 goto .L517
	if r3 == 3 goto .L518
	if r3 == 4 goto .L519
	if r3 == 5 goto .L520
	if r3 == 6 goto .L521
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 += 1
	r0 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L532
	r2 = r0
.L521:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L532
	r2 = r3
.L520:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 += 1
	r5 = r2
	r4 = *(u8 *) (r1+0)
	r5 += 1
	if r4 == 0 goto .L532
	r2 = r5
.L519:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L532
	r2 = r0
.L518:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L532
	r2 = r3
.L517:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L532
	r2 = r0
.L448:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r1 == r9 goto .L447
	if r5 != r4 goto .L447
	r3 = r1
	r0 = r2
	r3 += 1
	r0 += 1
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L532
	r2 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L532
	r2 += 1
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r4 = *(u8 *) (r1+3)
	if r4 == 0 goto .L532
	r2 = r0
	r5 = *(u8 *) (r0+2)
	r2 += 2
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L532
	r2 += 1
	r5 = *(u8 *) (r0+3)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L532
	r2 += 1
	r5 = *(u8 *) (r0+4)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r4 = *(u8 *) (r3+5)
	if r4 == 0 goto .L532
	r2 += 1
	r5 = *(u8 *) (r0+5)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L532
	r2 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == 0 goto .L447
	if r5 != r4 goto .L447
	r1 = r3
	r4 = *(u8 *) (r3+7)
	r1 += 7
	if r4 == 0 goto .L532
	r0 += 7
	r2 = r0
	goto .L448
.L532:
	r5 = *(u8 *) (r2+1)
	r4 = 0
.L447:
	r4 -= r5
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	exit
.L452:
	r0 = r3
	exit
.L534:
	r5 = *(u8 *) (r2+0)
	goto .L447
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L535
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
	if r3 == 0 goto .L537
	if r3 == 1 goto .L560
	if r3 == 2 goto .L561
	if r3 == 3 goto .L562
	if r3 == 4 goto .L563
	if r3 == 5 goto .L564
	if r3 != 6 goto .L574
.L565:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L564:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L563:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L562:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L561:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L560:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L575
.L537:
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
	if r0 != r5 goto .L537
.L535:
	exit
.L574:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L565
.L575:
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
	if r2 <= 24 goto .L577
	r1 = 0
.L577:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L579
	r0 = 0
.L579:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L582
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L582:
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
	if r1 <= 30 goto .L585
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L585:
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
	if r1 <= 8 goto .L587
	r0 = 0
.L587:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L589
	r0 = 0
.L589:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L591
	r0 = 0
.L591:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L593
	r0 = 0
.L593:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L597
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 3 goto .L598
	r0 &= 1
	exit
.L598:
	r0 = 0
	r0 &= 1
	exit
.L597:
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
	if r1 <= 24 goto .L600
	r0 = 0
.L600:
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
	if r1 <= 30 goto .L606
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 31 goto .L607
.L606:
	r0 = 1
	exit
.L607:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L606
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L603
	r9 = 0
.L603:
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
	if r1 <= 8 goto .L609
	r0 = 0
.L609:
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
	if r1 <= 254 goto .L618
	if r1 <= 8230 goto .L616
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L616
	r2 += -49110
	if r2 <= 8183 goto .L616
	r1 += -65532
	if r1 > 1048579 goto .L617
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L616:
	r0 = 1
	exit
.L618:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s<= 32 goto .L619
	r0 = r1
	r0 &= 1
	exit
.L619:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L617:
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
	if r2 <= 8 goto .L623
	r1 |= 32
	r0 = 1
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L624
	r0 &= 1
	exit
.L623:
	r0 = 1
	exit
.L624:
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
	r6 = r1
	r7 = r2
	call	__gtdf2
	if r0 s<= 0 goto .L631
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L631:
	r0 = 0x0000000000000000 ll
	exit
	.size	fdim, .-fdim
	.align	3
	.global	fdimf
	.type	fdimf, @function
fdimf:
	r6 = r1
	r7 = r2
	call	__gtsf2
	if r0 s<= 0 goto .L637
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L637:
	r0 = 0x00000000 ll
	exit
	.size	fdimf, .-fdimf
	.align	3
	.global	fmax
	.type	fmax, @function
fmax:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	r8 = 1
	r1 = r0
	r0 = 0
	if r0 s>= r1 goto .L640
	r8 = r0
.L640:
	r3 = 1
	r2 = 0x0000000000000000 ll
	*(u64 *) (r10+-8) = r3
	r1 = r7
	call	__ltdf2
	r4 = 0
	r2 = r0
	r0 = *(u64 *) (r10+-8)
	if r4 s>= r2 goto .L641
	r0 = r4
.L641:
	r8 &= 0xff
	r0 &= 0xff
	if r8 == r0 goto .L639
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L648
.L638:
	r0 = r6
	exit
.L639:
	r2 = r7
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L638
.L648:
	r6 = r7
	r0 = r6
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	r6 = r1
	r7 = r2
	r2 = 0x00000000 ll
	call	__ltsf2
	r8 = 1
	r1 = r0
	r0 = 0
	if r0 s>= r1 goto .L651
	r8 = r0
.L651:
	r3 = 1
	r2 = 0x00000000 ll
	*(u64 *) (r10+-8) = r3
	r1 = r7
	call	__ltsf2
	r4 = 0
	r2 = r0
	r0 = *(u64 *) (r10+-8)
	if r4 s>= r2 goto .L652
	r0 = r4
.L652:
	r8 &= 0xff
	r0 &= 0xff
	if r8 == r0 goto .L650
	r2 = 0x00000000 ll
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L659
.L649:
	r0 = r6
	exit
.L650:
	r2 = r7
	r1 = r6
	call	__gesf2
	if r0 s>= 0 goto .L649
.L659:
	r6 = r7
	r0 = r6
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	r8 = 1
	r1 = r0
	r0 = 0
	if r0 s>= r1 goto .L662
	r8 = r0
.L662:
	r3 = 1
	r2 = 0x0000000000000000 ll
	*(u64 *) (r10+-8) = r3
	r1 = r7
	call	__ltdf2
	r4 = 0
	r2 = r0
	r0 = *(u64 *) (r10+-8)
	if r4 s>= r2 goto .L663
	r0 = r4
.L663:
	r8 &= 0xff
	r0 &= 0xff
	if r8 == r0 goto .L661
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L670
.L660:
	r0 = r6
	exit
.L661:
	r2 = r7
	r1 = r6
	call	__gedf2
	if r0 s>= 0 goto .L660
.L670:
	r6 = r7
	r0 = r6
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	r8 = 1
	r1 = r0
	r0 = 0
	if r0 s>= r1 goto .L673
	r8 = r0
.L673:
	r3 = 1
	r2 = 0x0000000000000000 ll
	*(u64 *) (r10+-8) = r3
	r1 = r7
	call	__ltdf2
	r4 = 0
	r2 = r0
	r0 = *(u64 *) (r10+-8)
	if r4 s>= r2 goto .L674
	r0 = r4
.L674:
	r8 &= 0xff
	r0 &= 0xff
	if r8 == r0 goto .L672
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L671
.L680:
	r6 = r7
.L671:
	r0 = r6
	exit
.L672:
	r2 = r7
	r1 = r6
	call	__ledf2
	if r0 s>= 0 goto .L680
	r0 = r6
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r6 = r1
	r7 = r2
	r2 = 0x00000000 ll
	call	__ltsf2
	r8 = 1
	r1 = r0
	r0 = 0
	if r0 s>= r1 goto .L684
	r8 = r0
.L684:
	r3 = 1
	r2 = 0x00000000 ll
	*(u64 *) (r10+-8) = r3
	r1 = r7
	call	__ltsf2
	r4 = 0
	r2 = r0
	r0 = *(u64 *) (r10+-8)
	if r4 s>= r2 goto .L685
	r0 = r4
.L685:
	r8 &= 0xff
	r0 &= 0xff
	if r8 == r0 goto .L683
	r2 = 0x00000000 ll
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L682
.L691:
	r6 = r7
.L682:
	r0 = r6
	exit
.L683:
	r2 = r7
	r1 = r6
	call	__lesf2
	if r0 s>= 0 goto .L691
	r0 = r6
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	r8 = 1
	r1 = r0
	r0 = 0
	if r0 s>= r1 goto .L695
	r8 = r0
.L695:
	r3 = 1
	r2 = 0x0000000000000000 ll
	*(u64 *) (r10+-8) = r3
	r1 = r7
	call	__ltdf2
	r4 = 0
	r2 = r0
	r0 = *(u64 *) (r10+-8)
	if r4 s>= r2 goto .L696
	r0 = r4
.L696:
	r8 &= 0xff
	r0 &= 0xff
	if r8 == r0 goto .L694
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L693
.L702:
	r6 = r7
.L693:
	r0 = r6
	exit
.L694:
	r2 = r7
	r1 = r6
	call	__ledf2
	if r0 s>= 0 goto .L702
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L705
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
	if r1 == 0 goto .L705
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L705
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 = r9
	r0 += 2
	if r1 == 0 goto .L705
	r9 = r1
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L705
	r5 = r1
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L705
	r2 += r1
	r0 += 1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+-1) = r1
.L705:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
	.size	l64a, .-l64a
	.align	3
	.global	srand
	.type	srand, @function
srand:
	r1 += -1
	r0 = seed ll
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
	if r2 == 0 goto .L731
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L725
	*(u64 *) (r2+8) = r1
.L725:
	exit
.L731:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L733
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L733:
	r1 = *(u64 *) (r1+8)
	if r1 == 0 goto .L732
	*(u64 *) (r1+0) = r0
.L732:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L743
	exit
.L743:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r4 = 4
.L751:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L745
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L745
	if r0 == 43 goto .L746
	if r0 != 45 goto .L770
	r3 = *(u8 *) (r1+1)
	r1 += 1
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r4 = r3;r4 &= 0xffffffff
	if r4 > 9 goto .L756
	r5 = 1
.L749:
	r0 = 0
	r9 = 9
.L753:
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
	if r9 <= r6 goto .L769
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
	if r9 <= r3 goto .L769
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
	if r9 <= r6 goto .L769
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
	if r9 > r6 goto .L753
.L769:
	if r5 != 0 goto .L752
	r0 = r4
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	exit
.L745:
	r1 += 1
	goto .L751
.L770:
	r3 += -48
	if r3 > 8 goto .L756
	r0 += -48
	r5 = 0
	r3 = r0
	goto .L749
.L746:
	r3 = *(u8 *) (r1+1)
	r5 = 0
	r3 <<= 56
	r1 += 1
	r3 s>>= 56
	r3 += -48
	r9 = r3;r9 &= 0xffffffff
	if r9 <= 8 goto .L749
.L756:
	r0 = 0
.L752:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 4
.L778:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L772
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L772
	if r0 == 43 goto .L773
	if r0 != 45 goto .L797
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 9 goto .L783
	r5 = 1
.L776:
	r2 = 0
	r9 = 9
.L780:
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
	if r9 <= r6 goto .L796
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
	if r9 <= r6 goto .L796
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
	if r9 <= r6 goto .L796
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
	if r9 > r6 goto .L780
.L796:
	if r5 != 0 goto .L771
	r2 = r4
	r2 -= r3
.L771:
	r0 = r2
	exit
.L772:
	r1 += 1
	goto .L778
.L797:
	r3 += -48
	if r3 > 8 goto .L783
	r5 = 0
	r0 += -48
	goto .L776
.L773:
	r0 = *(u8 *) (r1+1)
	r5 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 8 goto .L776
.L783:
	r2 = 0
	r0 = r2
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r4 = 4
.L803:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L799
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L799
	if r0 == 43 goto .L800
	if r0 != 45 goto .L824
	r0 = *(u8 *) (r1+1)
	r5 = 1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 8 goto .L810
.L804:
	r2 = 0
	r9 = 9
.L807:
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
	if r9 <= r6 goto .L823
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
	if r9 <= r6 goto .L823
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
	if r9 <= r6 goto .L823
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
	if r9 > r6 goto .L807
.L823:
	if r5 != 0 goto .L798
	r2 = r4
	r2 -= r3
.L798:
	r0 = r2
	exit
.L799:
	r1 += 1
	goto .L803
.L824:
	r3 += -48
	if r3 > 8 goto .L810
	r5 = 0
	r0 += -48
	goto .L804
.L800:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L810
	r5 = 0
	goto .L804
.L810:
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
	if r1 s< 0 goto .L828
	exit
.L828:
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
	if r1 s< 0 goto .L832
	exit
.L832:
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
	if r1 s< 0 goto .L836
	exit
.L836:
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
	if r3 == 0 goto .L844
.L839:
	if r2 == r0 goto .L845
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L839
	exit
.L845:
	r0 = r1
	exit
.L844:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L854
.L855:
	if r3 == 0 goto .L848
	r1 += 4
	r2 += 4
.L854:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L855
.L848:
	if r4 s>= r3 goto .L852
	r0 = 1
	if r3 s<= r4 goto .L856
	r0 &= 1
	exit
.L852:
	r0 = -1
	exit
.L856:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L858:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L874
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L874
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L874
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L874
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L874
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L874
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L874
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L858
.L874:
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
	if r2 == 0 goto .L875
	r0 = r1
.L877:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L894
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if r5 == 0 goto .L894
	r0 = r4
	r9 = *(u32 *) (r4+8)
	r0 += 8
	if r9 == 0 goto .L894
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L894
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L894
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L894
	r0 += 4
	r9 = *(u32 *) (r4+24)
	if r9 == 0 goto .L894
	r0 += 4
	r4 = *(u32 *) (r4+28)
	if r4 != 0 goto .L877
.L894:
	r0 -= r1
	r0 s>>= 2
.L875:
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L902
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L896
	if r0 == 1 goto .L919
	if r0 == 2 goto .L920
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L898
	if r5 == 0 goto .L898
	r3 = r4
	r1 += 4
	r2 += 4
.L920:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L898
	if r9 == 0 goto .L898
	r3 += -1
	r1 += 4
	r2 += 4
.L919:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L898
	if r5 == 0 goto .L898
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L902
.L896:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L898
	if r0 == 0 goto .L898
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
	if r0 != r9 goto .L898
	if r6 == 0 goto .L898
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L898
	if r6 == 0 goto .L898
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
	if r4 != r5 goto .L898
	if r6 == 0 goto .L898
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L896
.L902:
	r0 = 0
	exit
.L898:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L930
	r0 = 1
	if r2 s<= r1 goto .L931
	r0 &= 1
	exit
.L930:
	r0 = -1
	exit
.L931:
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
	if r3 == 0 goto .L936
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L933
	if r0 == 1 goto .L973
	if r0 == 2 goto .L974
	if r0 == 3 goto .L975
	if r0 == 4 goto .L976
	if r0 == 5 goto .L977
	if r0 != 6 goto .L991
.L978:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L990
	r3 += -1
	r1 += 4
.L977:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L990
	r3 += -1
	r1 += 4
.L976:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L990
	r3 += -1
	r1 += 4
.L975:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L990
	r3 += -1
	r1 += 4
.L974:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L990
	r3 += -1
	r1 += 4
.L973:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L990
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L936
.L933:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L990
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L990
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L990
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L990
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L990
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L990
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L990
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L990
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L933
.L936:
	r0 = 0
	exit
.L990:
	r0 = r1
	exit
.L991:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L990
	r3 = r4
	r1 += 4
	goto .L978
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L999
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L993
	if r0 == 1 goto .L1036
	if r0 == 2 goto .L1037
	if r0 == 3 goto .L1038
	if r0 == 4 goto .L1039
	if r0 == 5 goto .L1040
	if r0 != 6 goto .L1055
.L1041:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 += -1
	r1 += 4
	r2 += 4
.L1040:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 += -1
	r1 += 4
	r2 += 4
.L1039:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 += -1
	r1 += 4
	r2 += 4
.L1038:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 += -1
	r1 += 4
	r2 += 4
.L1037:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 += -1
	r1 += 4
	r2 += 4
.L1036:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L999
.L993:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L993
.L999:
	r0 = 0
	exit
.L1054:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L1056
	r0 = 1
	if r4 s<= r5 goto .L1057
	r0 &= 1
	exit
.L1056:
	r0 = -1
	exit
.L1057:
	r0 = 0
	r0 &= 1
	exit
.L1055:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1054
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L1041
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1077
	r9 = r3
	r6 = r3
	r5 = r1
	r4 = r1
	r0 = r2
	r9 += -1
	r6 <<= 2
	r5 -= r2
	if r6 < r5 goto .L1193
	if r3 == 0 goto .L1077
	r9 <<= 2
	r3 = r1
	r4 = r9
	r0 += r9
	r4 >>= 2
	r3 += r9
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1063
	if r4 == 1 goto .L1147
	if r4 == 2 goto .L1148
	if r4 == 3 goto .L1149
	if r4 == 4 goto .L1150
	if r4 == 5 goto .L1151
	if r4 != 6 goto .L1194
.L1152:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1151:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1150:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
.L1149:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1148:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1147:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r5
	r9 = r0
	r3 += -4
	r0 += -4
	if r2 == r9 goto .L1077
.L1063:
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
	if r2 != r9 goto .L1063
.L1077:
	r0 = r1
	exit
.L1193:
	if r3 == 0 goto .L1077
	if r9 <= 7 goto .L1153
	r5 = r2
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L1153
	r6 = r2
	r6 += 4
	r7 = r1
	r7 ^= r6
	r6 = r7
	r6 = -r6
	r6 |= r7
	if r6 s>= 0 goto .L1153
	r9 = r3
	r9 >>= 1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1069
	if r6 == 1 goto .L1160
	if r6 == 2 goto .L1161
	if r6 == 3 goto .L1162
	if r6 == 4 goto .L1163
	if r6 == 5 goto .L1164
	if r6 != 6 goto .L1195
.L1165:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1164:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1163:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1162:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1161:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1160:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r5 += 1
	r0 += 8
	r4 += 8
	if r9 == r5 goto .L1192
.L1069:
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
	if r9 != r5 goto .L1069
.L1192:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1077
	r3 &= -2
	r3 <<= 2
	r9 = r1
	r2 += r3
	r9 += r3
	r0 = r1
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r3
	exit
.L1153:
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1068
	if r3 == 1 goto .L1154
	if r3 == 2 goto .L1155
	if r3 == 3 goto .L1156
	if r3 == 4 goto .L1157
	if r3 == 5 goto .L1158
	if r3 == 6 goto .L1159
	r0 = *(u32 *) (r2+0)
	r4 = r1
	*(u32 *) (r1+0) = r0
	r9 += -1
	r0 = r2
	r4 += 4
	r0 += 4
.L1159:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1158:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1157:
	r3 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1156:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1155:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1154:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r9 += -1
	r4 += 4
	r0 += 4
	if r9 == -1 goto .L1077
.L1068:
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
	if r9 != -1 goto .L1068
	goto .L1077
.L1194:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
	goto .L1152
.L1195:
	r4 = *(u64 *) (r2+0)
	r5 = 1
	*(u64 *) (r1+0) = r4
	r0 += 8
	r4 = r1
	r4 += 8
	goto .L1165
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r9 = r3
	r2 s>>= 32
	r9 += -1
	if r3 == 0 goto .L1197
	r0 = r1
	r6 = r1
	r0 >>= 2
	r0 &= 1
	if r9 <= 4 goto .L1198
	if r0 == 0 goto .L1199
	r6 += 4
	*(u32 *) (r1+0) = r2
	r9 += -1
.L1199:
	r3 -= r0
	r8 = r2
	r0 <<= 2
	r8 <<= 32
	r5 = r0
	r7 = r3
	r4 = r2;r4 &= 0xffffffff
	r7 >>= 1
	r4 |= r8
	r0 = r1
	r8 = r7
	r0 += r5
	r8 &= 7
	r5 = 0
	if r8 == r5 goto .L1200
	if r8 == 1 goto .L1240
	if r8 == 2 goto .L1241
	if r8 == 3 goto .L1242
	if r8 == 4 goto .L1243
	if r8 == 5 goto .L1244
	if r8 != 6 goto .L1262
.L1245:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1244:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1243:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1242:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1241:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1240:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
	if r5 == r7 goto .L1261
.L1200:
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
	if r5 != r7 goto .L1200
.L1261:
	r4 = r3
	r4 &= 1
	if r4 == 0 goto .L1197
	r3 &= -2
	r0 = r3
	r9 -= r3
	r0 <<= 2
	r6 += r0
.L1198:
	*(u32 *) (r6+0) = r2
	if r9 == 0 goto .L1197
	*(u32 *) (r6+4) = r2
	if r9 == 1 goto .L1197
	*(u32 *) (r6+8) = r2
	if r9 == 2 goto .L1197
	*(u32 *) (r6+12) = r2
	if r9 == 3 goto .L1197
	*(u32 *) (r6+16) = r2
	if r9 == 4 goto .L1197
	*(u32 *) (r6+20) = r2
.L1197:
	r0 = r1
	exit
.L1262:
	*(u64 *) (r0+0) = r4
	r5 = 1
	r0 += 8
	goto .L1245
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1264
	r9 = r1
	r2 += r3
	r9 += r3
	if r3 == 0 goto .L1263
	r4 = r9
	r4 -= r1
	r4 &= 7
	if r4 == 0 goto .L1266
	if r4 == 1 goto .L1363
	if r4 == 2 goto .L1364
	if r4 == 3 goto .L1365
	if r4 == 4 goto .L1366
	if r4 == 5 goto .L1367
	if r4 == 6 goto .L1368
	r9 += -1
	r2 += -1
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
.L1368:
	r9 += -1
	r2 += -1
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r3
.L1367:
	r9 += -1
	r2 += -1
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r0
.L1366:
	r9 += -1
	r2 += -1
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r4
.L1365:
	r9 += -1
	r2 += -1
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
.L1364:
	r9 += -1
	r2 += -1
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r3
.L1363:
	r2 += -1
	r0 = *(u8 *) (r9+-1)
	*(u8 *) (r2+0) = r0
	r9 += -1
	if r1 == r9 goto .L1414
.L1266:
	r4 = *(u8 *) (r9+-1)
	r9 += -8
	*(u8 *) (r2+-1) = r4
	r5 = *(u8 *) (r9+6)
	*(u8 *) (r2+-2) = r5
	r3 = *(u8 *) (r9+5)
	*(u8 *) (r2+-3) = r3
	r0 = *(u8 *) (r9+4)
	r2 += -8
	*(u8 *) (r2+4) = r0
	r4 = *(u8 *) (r9+3)
	*(u8 *) (r2+3) = r4
	r5 = *(u8 *) (r9+2)
	*(u8 *) (r2+2) = r5
	r3 = *(u8 *) (r9+1)
	*(u8 *) (r2+1) = r3
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r0
	if r1 != r9 goto .L1266
	exit
.L1264:
	if r1 != r2 goto .L1415
.L1263:
	exit
.L1415:
	if r3 == 0 goto .L1263
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L1267
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L1416
.L1267:
	r0 = r1
	r0 += r3
	r3 &= 7
	if r3 == 0 goto .L1273
	if r3 == 1 goto .L1375
	if r3 == 2 goto .L1376
	if r3 == 3 goto .L1377
	if r3 == 4 goto .L1378
	if r3 == 5 goto .L1379
	if r3 == 6 goto .L1380
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1380:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1379:
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1378:
	r9 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r9
	r1 += 1
.L1377:
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1376:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1375:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
	if r0 == r1 goto .L1417
.L1273:
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
	if r0 != r1 goto .L1273
	goto .L1263
.L1416:
	r5 = r1
	r9 = r2
	r5 += 1
	r9 -= r5
	if r9 <= 6 goto .L1267
	r9 = r3
	r6 = r1
	r9 &= -8
	r0 = r1
	r5 = r9
	r4 = r2
	r5 += -8
	r6 += r9
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1270
	if r5 == 1 goto .L1369
	if r5 == 2 goto .L1370
	if r5 == 3 goto .L1371
	if r5 == 4 goto .L1372
	if r5 == 5 goto .L1373
	if r5 != 6 goto .L1418
.L1374:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1373:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1372:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1371:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1370:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1369:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r6 == r0 goto .L1413
.L1270:
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
	if r6 != r0 goto .L1270
.L1413:
	r0 = r3
	r2 += r9
	r0 -= r9
	if r3 == r9 goto .L1263
	r3 = *(u8 *) (r6+0)
	*(u8 *) (r2+0) = r3
	if r0 == 1 goto .L1263
	r9 = *(u8 *) (r6+1)
	*(u8 *) (r2+1) = r9
	if r0 == 2 goto .L1263
	r4 = *(u8 *) (r6+2)
	*(u8 *) (r2+2) = r4
	if r0 == 3 goto .L1263
	r1 = *(u8 *) (r6+3)
	*(u8 *) (r2+3) = r1
	if r0 == 4 goto .L1263
	r5 = *(u8 *) (r6+4)
	*(u8 *) (r2+4) = r5
	if r0 == 5 goto .L1263
	r3 = *(u8 *) (r6+5)
	*(u8 *) (r2+5) = r3
	if r0 == 6 goto .L1263
	r0 = *(u8 *) (r6+6)
	*(u8 *) (r2+6) = r0
	exit
.L1414:
	exit
.L1418:
	r0 = *(u64 *) (r1+0)
	r4 += 8
	*(u64 *) (r2+0) = r0
	r0 = r1
	r0 += 8
	goto .L1374
.L1417:
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
.L1435:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1458
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1458
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1458
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1458
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1458
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1458
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1458
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1458
	if r0 != 32 goto .L1435
	r0 = r4
	exit
.L1458:
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
	if r1 == 0 goto .L1461
	r0 &= 1
	if r0 != 0 goto .L1461
	r0 = 1
.L1462:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1480
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1461
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1461
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1461
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1461
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1461
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1461
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1462
	exit
.L1461:
	exit
.L1480:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r0 = 0
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	r0 = 0
	exit
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
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
	r2 <<= 32
	r2 s>>= 32
	r8 = r1
	r6 = r2
	r2 = r1
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1486
	if r6 s< 0 goto .L1502
	r7 = 0x40000000 ll
.L1488:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1489
.L1490:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1489:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1486
.L1491:
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
	if r3 != 0 goto .L1490
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1490
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
	if r0 != 0 goto .L1490
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
	if r3 != 0 goto .L1490
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
	if r9 != 0 goto .L1490
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
	if r4 != 0 goto .L1490
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
	if r3 != 0 goto .L1490
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1490
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1491
.L1486:
	r0 = r8
	exit
.L1502:
	r7 = 0x3f000000 ll
	goto .L1488
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
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1504
	if r6 s< 0 goto .L1520
	r7 = 0x4000000000000000 ll
.L1506:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1507
.L1508:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1507:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1504
.L1509:
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
	if r3 != 0 goto .L1508
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1508
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
	if r0 != 0 goto .L1508
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
	if r3 != 0 goto .L1508
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
	if r9 != 0 goto .L1508
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
	if r4 != 0 goto .L1508
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
	if r3 != 0 goto .L1508
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1508
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1509
.L1504:
	r0 = r8
	exit
.L1520:
	r7 = 0x3fe0000000000000 ll
	goto .L1506
	.size	ldexp, .-ldexp
	.align	3
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r1
	r6 = r2
	r2 = r1
	call	__adddf3
	r1 = *(u64 *) (r10+-8)
	r8 = r0
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1521
	r1 = *(u64 *) (r10+-8)
	if r6 s< 0 goto .L1536
	r7 = 0x4000000000000000 ll
.L1524:
	r0 = r6
	r8 = r1
	r0 &= 1
	if r0 == 0 goto .L1525
.L1526:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1525:
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 s>>= 1
	r6 = r2
	if r2 == 0 goto .L1521
.L1527:
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
	if r3 != 0 goto .L1526
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r5 = r6
	r7 = r0
	r5 &= 1
	if r5 != 0 goto .L1526
	r9 = r6
	r9 >>= 63
	r9 += r6
	r9 <<= 31
	r9 s>>= 32
	r2 = r0
	r6 = r9
	r1 = r0
	call	__muldf3
	r4 = r6
	r7 = r0
	r4 &= 1
	r0 = r6
	r2 = r7
	r0 >>= 63
	r1 = r7
	r0 += r6
	if r4 != 0 goto .L1526
	r0 s>>= 1
	r6 = r0
	call	__muldf3
	r5 = r6
	r3 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r5 <<= 31
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1526
	r5 s>>= 32
	r6 = r5
	call	__muldf3
	r9 = r6
	r7 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r6
	r0 = r6
	r0 &= 1
	if r0 != 0 goto .L1526
	r9 s>>= 1
	r6 = r9
	call	__muldf3
	r4 = r6
	r5 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r4 <<= 31
	r1 = r0
	r5 &= 1
	if r5 != 0 goto .L1526
	r4 s>>= 32
	r6 = r4
	call	__muldf3
	r9 = r6
	r3 = r6
	r9 >>= 63
	r7 = r0
	r9 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if r3 != 0 goto .L1526
	r9 s>>= 1
	r6 = r9
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1526
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1527
.L1521:
	r0 = r8
	exit
.L1536:
	r7 = 0x3fe0000000000000 ll
	goto .L1524
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1538
	r0 = r3
	r0 += -1
	if r0 <= 5 goto .L1539
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 != 0 goto .L1539
	r9 = r3
	r6 = r2
	r9 &= -8
	r4 = r2
	r5 = r9
	r0 = r1
	r5 += -8
	r6 += r9
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1540
	if r5 == 1 goto .L1602
	if r5 == 2 goto .L1603
	if r5 == 3 goto .L1604
	if r5 == 4 goto .L1605
	if r5 == 5 goto .L1606
	if r5 == 6 goto .L1607
	r0 = *(u64 *) (r2+0)
	r5 = *(u64 *) (r1+0)
	r2 += 8
	r0 ^= r5
	r4 = r2
	r2 = r0
	r0 = r1
	*(u64 *) (r1+0) = r2
	r0 += 8
.L1607:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1606:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1605:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1604:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1603:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1602:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r2 ^= r5
	*(u64 *) (r0+0) = r2
	r4 += 8
	r0 += 8
	if r6 == r4 goto .L1637
.L1540:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r2 ^= r5
	r5 = *(u64 *) (r0+8)
	*(u64 *) (r0+0) = r2
	r2 = *(u64 *) (r4+8)
	r2 ^= r5
	r5 = *(u64 *) (r0+16)
	*(u64 *) (r0+8) = r2
	r2 = *(u64 *) (r4+16)
	r2 ^= r5
	r5 = *(u64 *) (r0+24)
	*(u64 *) (r0+16) = r2
	r2 = *(u64 *) (r4+24)
	r2 ^= r5
	r5 = *(u64 *) (r0+32)
	*(u64 *) (r0+24) = r2
	r2 = *(u64 *) (r4+32)
	r2 ^= r5
	r5 = *(u64 *) (r0+40)
	*(u64 *) (r0+32) = r2
	r2 = *(u64 *) (r4+40)
	r2 ^= r5
	r5 = *(u64 *) (r0+48)
	*(u64 *) (r0+40) = r2
	r2 = *(u64 *) (r4+48)
	r2 ^= r5
	r5 = *(u64 *) (r0+56)
	*(u64 *) (r0+48) = r2
	r2 = *(u64 *) (r4+56)
	r2 ^= r5
	*(u64 *) (r0+56) = r2
	r4 += 64
	r0 += 64
	if r6 != r4 goto .L1540
.L1637:
	r0 = r1
	r2 = r3
	r0 += r9
	r2 -= r9
	if r3 == r9 goto .L1538
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r6+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L1538
	r4 = *(u8 *) (r0+1)
	r5 = *(u8 *) (r6+1)
	r5 ^= r4
	*(u8 *) (r0+1) = r5
	if r2 == 2 goto .L1538
	r9 = *(u8 *) (r0+2)
	r3 = *(u8 *) (r6+2)
	r3 ^= r9
	*(u8 *) (r0+2) = r3
	if r2 == 3 goto .L1538
	r4 = *(u8 *) (r0+3)
	r5 = *(u8 *) (r6+3)
	r5 ^= r4
	*(u8 *) (r0+3) = r5
	if r2 == 4 goto .L1538
	r9 = *(u8 *) (r0+4)
	r3 = *(u8 *) (r6+4)
	r3 ^= r9
	*(u8 *) (r0+4) = r3
	if r2 == 5 goto .L1538
	r4 = *(u8 *) (r0+5)
	r5 = *(u8 *) (r6+5)
	r5 ^= r4
	*(u8 *) (r0+5) = r5
	if r2 == 6 goto .L1538
	r9 = *(u8 *) (r0+6)
	r2 = *(u8 *) (r6+6)
	r2 ^= r9
	*(u8 *) (r0+6) = r2
.L1538:
	r0 = r1
	exit
.L1539:
	r4 = r2
	r9 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1542
	if r3 == 1 goto .L1608
	if r3 == 2 goto .L1609
	if r3 == 3 goto .L1610
	if r3 == 4 goto .L1611
	if r3 == 5 goto .L1612
	if r3 == 6 goto .L1613
	r3 = *(u8 *) (r2+0)
	r0 = *(u8 *) (r1+0)
	r2 += 1
	r3 ^= r0
	r9 += 1
	*(u8 *) (r1+0) = r3
.L1613:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1612:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r9 += 1
	r5 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r5
.L1611:
	r0 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1610:
	r5 = *(u8 *) (r9+0)
	r0 = *(u8 *) (r2+0)
	r9 += 1
	r0 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r0
.L1609:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1608:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r5 ^= r0
	*(u8 *) (r9+0) = r5
	r2 += 1
	r9 += 1
	if r4 == r2 goto .L1538
.L1542:
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
	if r4 != r2 goto .L1542
	goto .L1538
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1645
	r0 = r1
.L1640:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1639
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1639
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1639
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1639
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1639
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1639
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1639
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1640
.L1639:
	if r3 == 0 goto .L1642
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1641
	if r5 == 1 goto .L1693
	if r5 == 2 goto .L1694
	if r5 == 3 goto .L1695
	if r5 == 4 goto .L1696
	if r5 == 5 goto .L1697
	if r5 != 6 goto .L1715
.L1698:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1644
	r2 += 1
	r0 += 1
	r3 += -1
.L1697:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1644
	r2 += 1
	r0 += 1
	r3 += -1
.L1696:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1644
	r2 += 1
	r0 += 1
	r3 += -1
.L1695:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1644
	r2 += 1
	r0 += 1
	r3 += -1
.L1694:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1644
	r2 += 1
	r0 += 1
	r3 += -1
.L1693:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1644
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1642
.L1641:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1644
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1644
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1644
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1644
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1644
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1644
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1644
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1644
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1641
.L1642:
	*(u8 *) (r0+0) = 0
.L1644:
	r0 = r1
	exit
.L1715:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1644
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1698
.L1645:
	r0 = r1
	goto .L1639
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1716
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1717
	if r0 == 1 goto .L1758
	if r0 == 2 goto .L1759
	if r0 == 3 goto .L1760
	if r0 == 4 goto .L1761
	if r0 == 5 goto .L1762
	if r0 != 6 goto .L1772
.L1763:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1716
	r3 += 1
.L1762:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1773
.L1716:
	r0 = r3
	exit
.L1772:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1716
	r3 = 1
	goto .L1763
.L1773:
	r3 += 1
.L1761:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1716
	r3 += 1
.L1760:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1716
	r3 += 1
.L1759:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1716
	r3 += 1
.L1758:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1716
	r3 += 1
	if r2 == r3 goto .L1716
.L1717:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1716
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1716
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1716
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1716
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1716
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1716
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1716
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1716
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1717
	goto .L1716
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1779
.L1783:
	r3 = r2
	goto .L1778
.L1777:
	r3 += 1
	if r4 == r5 goto .L1776
.L1778:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1777
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1783
.L1779:
	r1 = r5
.L1776:
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
.L1786:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1785
	r3 = r1
.L1785:
	r1 += 1
	if r0 != 0 goto .L1786
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
	if r0 == 0 goto .L1930
	r0 = r2
.L1790:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1899
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1899
	r0 = r3
	r4 = *(u8 *) (r3+2)
	r0 += 2
	if r4 == 0 goto .L1899
	r0 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1899
	r0 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1899
	r0 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1899
	r0 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1899
	r0 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1790
.L1899:
	r4 = r0
	r4 -= r2
	if r0 == r2 goto .L1930
	r4 += -1
	r9 = r5;r9 &= 0xff
	r7 = r4
	r8 = r1
	goto .L1796
.L1932:
	r8 += 1
	if r0 == 0 goto .L1931
.L1796:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L1932
	r1 = r8
	r1 += r7
	*(u64 *) (r10+-8) = r1
	r4 = r7
	r0 = r9
	r6 = r2
	r3 = r8
	r4 &= 7
	if r4 == 0 goto .L1903
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L1793
	if r3 != r9 goto .L1793
	r3 = r8
	r6 += 1
	r3 += 1
	r0 = *(u8 *) (r8+1)
	if r0 == 0 goto .L1793
	if r4 == 1 goto .L1903
	if r4 == 2 goto .L1849
	if r4 == 3 goto .L1850
	if r4 == 4 goto .L1851
	if r4 == 5 goto .L1852
	if r4 == 6 goto .L1853
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1793
	if r1 != r0 goto .L1793
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1793
.L1853:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1793
	if r4 != r0 goto .L1793
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1793
.L1852:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1793
	if r1 != r0 goto .L1793
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1793
.L1851:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1793
	if r4 != r0 goto .L1793
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1793
.L1850:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1793
	if r1 != r0 goto .L1793
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1793
.L1849:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1793
	if r4 != r0 goto .L1793
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1793
.L1903:
	*(u64 *) (r10+-16) = r8
.L1792:
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1923
	r1 = *(u64 *) (r10+-8)
	if r3 == r1 goto .L1923
	if r8 != r0 goto .L1923
	r6 += 1
	r4 = r3
	r1 = r6
	r4 += 1
	r0 = *(u8 *) (r3+1)
	if r0 == 0 goto .L1923
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1923
	if r8 != r0 goto .L1923
	r6 += 1
	r0 = *(u8 *) (r3+2)
	if r0 == 0 goto .L1923
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1923
	if r8 != r0 goto .L1923
	r6 = r1
	r0 = *(u8 *) (r3+3)
	r6 += 2
	if r0 == 0 goto .L1923
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1923
	if r3 != r0 goto .L1923
	r6 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L1923
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1923
	if r8 != r0 goto .L1923
	r6 += 1
	r0 = *(u8 *) (r4+4)
	if r0 == 0 goto .L1923
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1923
	if r3 != r0 goto .L1923
	r6 += 1
	r0 = *(u8 *) (r4+5)
	if r0 == 0 goto .L1923
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1923
	if r8 != r0 goto .L1923
	r6 += 1
	r0 = *(u8 *) (r4+6)
	if r0 == 0 goto .L1923
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1923
	if r3 != r0 goto .L1923
	r3 = r4
	r1 += 7
	r3 += 7
	r6 = r1
	r0 = *(u8 *) (r4+7)
	if r0 != 0 goto .L1792
.L1923:
	r8 = *(u64 *) (r10+-16)
.L1793:
	r4 = *(u8 *) (r6+0)
	if r4 == r0 goto .L1799
	r8 += 1
	goto .L1796
.L1931:
	exit
.L1799:
	r1 = r8
.L1930:
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
	if r8 s>= r0 goto .L1943
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1937
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L1936
.L1937:
	r0 = r6
	exit
.L1943:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L1937
.L1936:
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
	if r4 == 0 goto .L1944
	if r4 >= r2 goto .L1955
	r2 -= r4
	r9 = r1
	r9 += r2
	if r1 > r9 goto .L1955
	r5 = *(u8 *) (r3+0)
	r4 += -1
	r5 <<= 56
	r3 += 1
	r5 s>>= 56
	*(u64 *) (r10+-8) = r3
.L1950:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	r1 <<= 56
	r3 += 1
	r1 s>>= 56
	if r1 == r5 goto .L2019
	r0 = r3
.L1946:
	if r9 >= r0 goto .L1950
.L1955:
	r0 = 0
.L1944:
	exit
.L2019:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1944
.L1949:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L1947
	if r6 == 1 goto .L1993
	if r6 == 2 goto .L1994
	if r6 == 3 goto .L1995
	if r6 == 4 goto .L1996
	if r6 == 5 goto .L1997
	if r6 == 6 goto .L1998
	r6 = *(u8 *) (r3+0)
	r1 = *(u8 *) (r2+0)
	if r6 != r1 goto .L2008
	r1 = r3
	r2 += 1
	r1 += 1
.L1998:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2008
	r1 += 1
	r2 += 1
.L1997:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2008
	r1 += 1
	r2 += 1
.L1996:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2008
	r1 += 1
	r2 += 1
.L1995:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2008
	r1 += 1
	r2 += 1
.L1994:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2008
	r1 += 1
	r2 += 1
.L1993:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2008
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L2020
.L1947:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2008
	r8 = *(u8 *) (r1+1)
	r6 = *(u8 *) (r2+1)
	if r8 != r6 goto .L2008
	r8 = *(u8 *) (r1+2)
	r6 = *(u8 *) (r2+2)
	if r8 != r6 goto .L2008
	r8 = *(u8 *) (r1+3)
	r6 = *(u8 *) (r2+3)
	if r8 != r6 goto .L2008
	r8 = *(u8 *) (r1+4)
	r6 = *(u8 *) (r2+4)
	if r8 != r6 goto .L2008
	r8 = *(u8 *) (r1+5)
	r6 = *(u8 *) (r2+5)
	if r8 != r6 goto .L2008
	r8 = *(u8 *) (r1+6)
	r6 = *(u8 *) (r2+6)
	if r8 != r6 goto .L2008
	r8 = *(u8 *) (r1+7)
	r6 = *(u8 *) (r2+7)
	if r8 != r6 goto .L2008
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L1947
	exit
.L2008:
	if r3 > r9 goto .L1955
	r2 = *(u8 *) (r3+0)
	r0 = r3
	r2 <<= 56
	r0 += 1
	r2 s>>= 56
	if r2 != r5 goto .L1946
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L1949
.L2020:
	exit
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	*(u64 *) (r10+-16) = r2
	r6 = r1
	r2 = 0x0000000000000000 ll
	r8 = 0
	call	__ltdf2
	if r8 s>= r0 goto .L2061
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L2062
	*(u64 *) (r10+-24) = r8
.L2024:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L2030:
	r1 = r6
	r2 = r7
	*(u64 *) (r10+-8) = r6
	call	__muldf3
	r2 = 0x4000000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__gedf2
	r8 += 1
	r4 = r0
	r8 <<= 32
	r2 = r7
	r8 s>>= 32
	r1 = r6
	r0 = r8
	r0 += 1
	r0 <<= 32
	if r4 s< 0 goto .L2031
	r0 s>>= 32
	*(u64 *) (r10+-8) = r6
	r8 = r0
	call	__muldf3
	r1 = *(u64 *) (r10+-8)
	r6 = r0
	r2 = 0x4000000000000000 ll
	call	__gedf2
	*(u64 *) (r10+-8) = r6
	r4 = r8
	r2 = r7
	r4 += 1
	r1 = r6
	r4 <<= 32
	if r0 s< 0 goto .L2031
	r4 s>>= 32
	r8 = r4
	call	__muldf3
	r1 = *(u64 *) (r10+-8)
	r6 = r0
	r2 = 0x4000000000000000 ll
	call	__gedf2
	*(u64 *) (r10+-8) = r6
	r5 = r0
	r2 = r7
	r0 = r8
	r1 = r6
	r0 += 1
	r0 <<= 32
	if r5 s< 0 goto .L2031
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r2 = 0x4000000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__gedf2
	if r0 s>= 0 goto .L2030
.L2031:
	r2 = *(u64 *) (r10+-16)
	*(u32 *) (r2+0) = r8
	r4 = *(u64 *) (r10+-24)
	if r4 == 0 goto .L2037
	r3 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r3
	exit
.L2062:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r8 s< r0 goto .L2055
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L2036
.L2055:
	r1 = *(u64 *) (r10+-16)
	r0 = r6
	*(u32 *) (r1+0) = r8
	exit
.L2061:
	r0 = -9223372036854775808 ll
	r7 = r6
	r2 = 0xbff0000000000000 ll
	r7 ^= r0
	r1 = r6
	call	__ledf2
	if r8 s<= r0 goto .L2063
	r6 = r7
	*(u64 *) (r10+-24) = 1
	goto .L2024
.L2037:
	r0 = r6
	exit
.L2063:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L2055
	*(u64 *) (r10+-24) = 1
.L2025:
	r8 = 0
	r6 = r7
	r7 = r8
.L2032:
	r1 = r6
	r2 = r6
	*(u64 *) (r10+-8) = r6
	call	__adddf3
	r2 = 0x3fd0000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r8 += -1
	r2 = r6
	r8 <<= 32
	r1 = r6
	r8 s>>= 32
	r5 = r8
	r5 += -1
	r5 <<= 32
	if r7 s< r0 goto .L2031
	r5 s>>= 32
	*(u64 *) (r10+-8) = r6
	r8 = r5
	call	__adddf3
	r1 = *(u64 *) (r10+-8)
	r6 = r0
	r2 = 0x3fd0000000000000 ll
	call	__ltdf2
	*(u64 *) (r10+-8) = r6
	r9 = r0
	r2 = r6
	r0 = r8
	r1 = r6
	r0 += -1
	r0 <<= 32
	if r7 s< r9 goto .L2031
	r0 s>>= 32
	r8 = r0
	call	__adddf3
	r1 = *(u64 *) (r10+-8)
	r6 = r0
	r2 = 0x3fd0000000000000 ll
	call	__ltdf2
	*(u64 *) (r10+-8) = r6
	r9 = r8
	r2 = r6
	r9 += -1
	r1 = r6
	r9 <<= 32
	if r7 s< r0 goto .L2031
	r9 s>>= 32
	r8 = r9
	call	__adddf3
	r2 = 0x3fd0000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	if r7 s>= r0 goto .L2032
	goto .L2031
.L2036:
	r7 = r6
	*(u64 *) (r10+-24) = r8
	goto .L2025
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L2067
	r0 = 0
.L2066:
	r5 = r2
	r1 = r3
	r4 = r3
	r5 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L2083
	r9 = r5
	r2 = r3
	r1 &= 1
	r9 += r5
	r1 = -r1
	r2 >>= 2
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L2064
	r5 = r9
	r1 = r3
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 3
	r2 &= r9
	r0 += r2
	if r1 == 0 goto .L2064
	r4 = r5
	r9 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r9 >>= 4
	r1 &= r5
	r0 += r1
	if r9 == 0 goto .L2064
	r5 = r4
	r1 = r3
	r9 &= 1
	r5 += r4
	r9 = -r9
	r1 >>= 5
	r9 &= r4
	r0 += r9
	if r1 == 0 goto .L2064
	r4 = r5
	r2 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r2 >>= 6
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L2064
	r9 = r4
	r5 = r3
	r2 &= 1
	r9 += r4
	r2 = -r2
	r5 >>= 7
	r2 &= r4
	r0 += r2
	if r5 == 0 goto .L2064
	r5 &= 1
	r2 = r9
	r5 = -r5
	r2 += r9
	r5 &= r9
	r3 >>= 8
	r0 += r5
	if r3 != 0 goto .L2066
	exit
.L2067:
	r0 = r1
.L2064:
	exit
.L2083:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L2086
	r9 = 32
	r4 = 1
.L2085:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2086
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2087
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2085
.L2088:
	if r3 != 0 goto .L2092
	r0 = r9
.L2092:
	exit
.L2087:
	if r4 == 0 goto .L2094
.L2086:
	r9 = 0
.L2091:
	if r2 >= r0 goto .L2090
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2090:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2091
	goto .L2088
.L2094:
	r9 = r4
	goto .L2088
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
	if r2 == r1 goto .L2115
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
.L2115:
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
	if r0 == r2 goto .L2118
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2118:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2122
	r0 = 0
.L2121:
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
	if r3 == 0 goto .L2138
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
	if r1 == 0 goto .L2120
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
	if r2 == 0 goto .L2120
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
	if r1 == 0 goto .L2120
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
	if r2 == 0 goto .L2120
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
	if r3 == 0 goto .L2120
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
	if r1 == 0 goto .L2120
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
	if r1 != 0 goto .L2121
	exit
.L2122:
	r0 = r1
.L2120:
	exit
.L2138:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r8 = r1
	r0 = r3
	r1 = r3
	r0 &= -8
	r7 = r2
	r1 >>= 3
	r0 = r0;r0 &= 0xffffffff
	if r2 >= r8 goto .L2140
	r2 += r3
	if r8 <= r2 goto .L2323
.L2140:
	if r1 == 0 goto .L2143
	r1 <<= 3
	r9 = r7
	r5 = r1
	r4 = r1
	r2 = r8
	r4 += -8
	r5 += r7
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2144
	if r4 == 1 goto .L2260
	if r4 == 2 goto .L2261
	if r4 == 3 goto .L2262
	if r4 == 4 goto .L2263
	if r4 == 5 goto .L2264
	if r4 == 6 goto .L2265
	r1 = *(u64 *) (r7+0)
	r9 += 8
	*(u64 *) (r8+0) = r1
	r2 += 8
.L2265:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2264:
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r1
	r9 += 8
.L2263:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2262:
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r1
	r9 += 8
.L2261:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2260:
	r1 = *(u64 *) (r9+0)
	*(u64 *) (r2+0) = r1
	r9 += 8
	r2 += 8
	if r9 == r5 goto .L2314
.L2144:
	r4 = *(u64 *) (r9+0)
	*(u64 *) (r2+0) = r4
	r1 = *(u64 *) (r9+8)
	*(u64 *) (r2+8) = r1
	r4 = *(u64 *) (r9+16)
	*(u64 *) (r2+16) = r4
	r1 = *(u64 *) (r9+24)
	*(u64 *) (r2+24) = r1
	r4 = *(u64 *) (r9+32)
	*(u64 *) (r2+32) = r4
	r1 = *(u64 *) (r9+40)
	*(u64 *) (r2+40) = r1
	r4 = *(u64 *) (r9+48)
	*(u64 *) (r2+48) = r4
	r1 = *(u64 *) (r9+56)
	*(u64 *) (r2+56) = r1
	r9 += 64
	r2 += 64
	if r9 != r5 goto .L2144
.L2314:
	if r0 > r3 goto .L2324
	r5 = r8
	r5 += r0
	*(u64 *) (r10+-16) = r5
	r6 = r3
	r9 = r7
	r6 -= r0
	r9 += r0
	r6 = r6;r6 &= 0xffffffff
	r2 = r6
	r2 += -1
	if r2 <= 6 goto .L2146
	r4 = r0
	r2 = r7
	r4 += 1
	r1 = r5
	r2 += r4
	r1 -= r2
	if r1 > 6 goto .L2325
.L2146:
	r3 += -1
	r3 -= r0
	r2 = r7
	r2 += 1
	r2 += r0
	r0 = r3;r0 &= 0xffffffff
	r3 = *(u64 *) (r10+-16)
	r0 += r2
	r5 = r0
	r5 -= r9
	r5 &= 7
	if r5 == 0 goto .L2151
	if r5 == 1 goto .L2272
	if r5 == 2 goto .L2273
	if r5 == 3 goto .L2274
	if r5 == 4 goto .L2275
	if r5 == 5 goto .L2276
	if r5 == 6 goto .L2277
	r1 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r1
	r9 += 1
.L2277:
	r4 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r4
	r9 += 1
.L2276:
	r2 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r2
	r9 += 1
.L2275:
	r5 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r5
	r9 += 1
.L2274:
	r1 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r1
	r9 += 1
.L2273:
	r4 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r4
	r9 += 1
.L2272:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r2
	r9 += 1
	r3 += 1
	if r9 == r0 goto .L2326
.L2151:
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r5
	r1 = *(u8 *) (r9+1)
	*(u8 *) (r3+1) = r1
	r4 = *(u8 *) (r9+2)
	*(u8 *) (r3+2) = r4
	r2 = *(u8 *) (r9+3)
	*(u8 *) (r3+3) = r2
	r5 = *(u8 *) (r9+4)
	*(u8 *) (r3+4) = r5
	r1 = *(u8 *) (r9+5)
	*(u8 *) (r3+5) = r1
	r4 = *(u8 *) (r9+6)
	*(u8 *) (r3+6) = r4
	r2 = *(u8 *) (r9+7)
	*(u8 *) (r3+7) = r2
	r9 += 8
	r3 += 8
	if r9 != r0 goto .L2151
	exit
.L2325:
	r4 = r9
	r4 |= r5
	r4 &= 7
	if r4 != 0 goto .L2146
	r4 = r6
	r2 = r5
	r4 >>= 3
	r4 <<= 3
	r5 = r4
	r5 += -8
	*(u64 *) (r10+-8) = r5
	r1 = r9
	r5 = r9
	r5 += r4
	r4 = *(u64 *) (r10+-8)
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2319
	if r4 == 1 goto .L2266
	if r4 == 2 goto .L2267
	if r4 == 3 goto .L2268
	if r4 == 4 goto .L2269
	if r4 == 5 goto .L2270
	if r4 == 6 goto .L2271
	r1 = *(u64 *) (r9+0)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r2+0) = r1
	r1 = r9
	r2 += 8
	r1 += 8
.L2271:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2270:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2269:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2268:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2267:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2266:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r5 goto .L2313
.L2319:
	r4 = r5
.L2149:
	r5 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r5
	r9 = *(u64 *) (r1+8)
	*(u64 *) (r2+8) = r9
	r5 = *(u64 *) (r1+16)
	*(u64 *) (r2+16) = r5
	r9 = *(u64 *) (r1+24)
	*(u64 *) (r2+24) = r9
	r5 = *(u64 *) (r1+32)
	*(u64 *) (r2+32) = r5
	r9 = *(u64 *) (r1+40)
	*(u64 *) (r2+40) = r9
	r5 = *(u64 *) (r1+48)
	*(u64 *) (r2+48) = r5
	r9 = *(u64 *) (r1+56)
	*(u64 *) (r2+56) = r9
	r1 += 64
	r2 += 64
	if r1 != r4 goto .L2149
.L2313:
	r2 = r6
	r6 &= 7
	r2 &= -8
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2139
	r4 = r8
	r1 = r7
	r4 += r0
	r1 += r0
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r9 = r0
	r9 += 1
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2139
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 2
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2139
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 3
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2139
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 4
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2139
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 5
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2139
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2139
	r3 = r7
	r9 = r8
	r3 += r0
	r9 += r0
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r1
	exit
.L2323:
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2139
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2153
	if r3 == 1 goto .L2254
	if r3 == 2 goto .L2255
	if r3 == 3 goto .L2256
	if r3 == 4 goto .L2257
	if r3 == 5 goto .L2258
	if r3 != 6 goto .L2327
.L2259:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2258:
	r1 = r8
	r0 = r7
	r1 += r9
	r0 += r9
	r9 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
.L2257:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2256:
	r1 = r8
	r0 = r7
	r1 += r9
	r0 += r9
	r9 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
.L2255:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2254:
	r1 = r7
	r0 = r8
	r1 += r9
	r0 += r9
	r2 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r2
	r9 += -1
	if r9 == -1 goto .L2328
.L2153:
	r0 = r7
	r0 += r9
	r4 = r9
	r5 = r9
	r4 += -1
	r5 += -6
	*(u64 *) (r10+-8) = r0
	r0 = r7
	r0 += r4
	*(u64 *) (r10+-32) = r5
	*(u64 *) (r10+-16) = r0
	r5 = r8
	r0 = *(u64 *) (r10+-8)
	r5 += r9
	r0 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r0
	r5 = r8
	r0 = *(u64 *) (r10+-16)
	r5 += r4
	r0 = *(u8 *) (r0+0)
	r4 = r7
	*(u8 *) (r5+0) = r0
	r4 += r9
	r4 = *(u8 *) (r4+-2)
	r5 = r8
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r4 = r8
	r4 += r9
	r3 = r7
	r2 = r7
	r3 += r9
	r2 += r9
	r0 = *(u8 *) (r3+-3)
	*(u8 *) (r4+-3) = r0
	r4 = r8
	r1 = *(u8 *) (r2+-4)
	r4 += r9
	*(u8 *) (r4+-4) = r1
	r6 = r9
	r3 = r7
	r6 += -5
	r1 = r8
	*(u64 *) (r10+-24) = r6
	r5 = *(u64 *) (r10+-24)
	r3 += r5
	r1 += r5
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r1+0) = r0
	r4 = *(u64 *) (r10+-32)
	r2 = r7
	r3 = r8
	r2 += r4
	r3 += r4
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r3+0) = r1
	r6 = r9
	r5 = r7
	r6 += -7
	r2 = r8
	r5 += r6
	r2 += r6
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
	r9 += -8
	if r9 != -1 goto .L2153
.L2139:
	exit
.L2143:
	if r3 == 0 goto .L2139
	r9 = r8
	r9 += r0
	*(u64 *) (r10+-16) = r9
	r9 = r7
	r9 += r0
	goto .L2146
.L2324:
	exit
.L2327:
	r1 = r7
	r0 = r8
	r1 += r5
	r0 += r5
	r2 = *(u8 *) (r1+0)
	r5 += -1
	*(u8 *) (r0+0) = r2
	r9 = r5
	goto .L2259
.L2328:
	exit
.L2326:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r7 = r1
	r5 = r3
	r8 = r2
	r5 >>= 1
	if r2 >= r1 goto .L2330
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2472
.L2330:
	if r5 == 0 goto .L2333
	r9 = r5
	r9 += -1
	if r9 <= 5 goto .L2334
	r0 = r8
	r0 |= r7
	r0 &= 7
	if r0 == 0 goto .L2473
.L2334:
	r5 += r5
	r0 = r8
	r4 = r5
	r1 = r7
	r4 += -2
	r5 += r8
	r4 >>= 1
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2339
	if r4 == 1 goto .L2433
	if r4 == 2 goto .L2434
	if r4 == 3 goto .L2435
	if r4 == 4 goto .L2436
	if r4 == 5 goto .L2437
	if r4 == 6 goto .L2438
	r9 = *(u16 *) (r8+0)
	r0 += 2
	*(u16 *) (r7+0) = r9
	r1 += 2
.L2438:
	r2 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r0 += 2
.L2437:
	r4 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r4
	r0 += 2
.L2436:
	r9 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r9
	r0 += 2
.L2435:
	r2 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r0 += 2
.L2434:
	r4 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r4
	r0 += 2
.L2433:
	r9 = *(u16 *) (r0+0)
	*(u16 *) (r1+0) = r9
	r0 += 2
	r1 += 2
	if r0 == r5 goto .L2333
.L2339:
	r2 = *(u16 *) (r0+0)
	*(u16 *) (r1+0) = r2
	r4 = *(u16 *) (r0+2)
	*(u16 *) (r1+2) = r4
	r9 = *(u16 *) (r0+4)
	*(u16 *) (r1+4) = r9
	r2 = *(u16 *) (r0+6)
	*(u16 *) (r1+6) = r2
	r4 = *(u16 *) (r0+8)
	*(u16 *) (r1+8) = r4
	r9 = *(u16 *) (r0+10)
	*(u16 *) (r1+10) = r9
	r2 = *(u16 *) (r0+12)
	*(u16 *) (r1+12) = r2
	r4 = *(u16 *) (r0+14)
	*(u16 *) (r1+14) = r4
	r0 += 16
	r1 += 16
	if r0 != r5 goto .L2339
.L2333:
	r2 = r3
	r2 &= 1
	if r2 == 0 goto .L2329
.L2474:
	r3 += -1
	r1 = r8
	r3 = r3;r3 &= 0xffffffff
	r0 = r7
	r1 += r3
	r0 += r3
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	exit
.L2473:
	r1 = r8
	r2 = r7
	r1 += 2
	r2 -= r1
	if r2 <= 4 goto .L2334
	r9 = r3
	r4 = r8
	r9 >>= 3
	r1 = r7
	r6 = r9
	r6 <<= 3
	r2 = r6
	r6 += r8
	r2 += -8
	r2 >>= 3
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L2337
	if r2 == 1 goto .L2427
	if r2 == 2 goto .L2428
	if r2 == 3 goto .L2429
	if r2 == 4 goto .L2430
	if r2 == 5 goto .L2431
	if r2 == 6 goto .L2432
	r0 = *(u64 *) (r8+0)
	r4 += 8
	*(u64 *) (r7+0) = r0
	r1 += 8
.L2432:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2431:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2430:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2429:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2428:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2427:
	r0 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r0
	r4 += 8
	r1 += 8
	if r4 == r6 goto .L2465
.L2337:
	r2 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r2
	r0 = *(u64 *) (r4+8)
	*(u64 *) (r1+8) = r0
	r2 = *(u64 *) (r4+16)
	*(u64 *) (r1+16) = r2
	r0 = *(u64 *) (r4+24)
	*(u64 *) (r1+24) = r0
	r2 = *(u64 *) (r4+32)
	*(u64 *) (r1+32) = r2
	r0 = *(u64 *) (r4+40)
	*(u64 *) (r1+40) = r0
	r2 = *(u64 *) (r4+48)
	*(u64 *) (r1+48) = r2
	r0 = *(u64 *) (r4+56)
	*(u64 *) (r1+56) = r0
	r4 += 64
	r1 += 64
	if r4 != r6 goto .L2337
.L2465:
	r9 <<= 2
	if r5 == r9 goto .L2333
	r4 = r9
	r2 = r8
	r4 += r9
	r1 = r7
	r2 += r4
	r1 += r4
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r4 = r9
	r4 += 1
	if r4 > r5 goto .L2333
	r4 += r4
	r2 = r8
	r1 = r7
	r2 += r4
	r1 += r4
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r9 += 2
	if r9 > r5 goto .L2333
	r9 += r9
	r5 = r8
	r4 = r7
	r5 += r9
	r4 += r9
	r9 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r9
	r2 = r3
	r2 &= 1
	if r2 == 0 goto .L2329
	goto .L2474
.L2472:
	r1 = r3
	r1 += -1
	r4 = r1;r4 &= 0xffffffff
	r9 = r4
	if r3 == 0 goto .L2329
	r2 = r4
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L2342
	if r2 == 1 goto .L2421
	if r2 == 2 goto .L2422
	if r2 == 3 goto .L2423
	if r2 == 4 goto .L2424
	if r2 == 5 goto .L2425
	if r2 == 6 goto .L2426
	r3 = r8
	r5 = r7
	r3 += r4
	r5 += r4
	r0 = *(u8 *) (r3+0)
	r4 += -1
	*(u8 *) (r5+0) = r0
	r9 = r4
.L2426:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2425:
	r3 = r7
	r5 = r8
	r3 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
.L2424:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2423:
	r3 = r7
	r5 = r8
	r3 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
.L2422:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2421:
	r3 = r8
	r5 = r7
	r3 += r9
	r5 += r9
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2475
.L2342:
	r0 = r8
	r0 += r9
	r4 = r9
	r5 = r9
	r4 += -1
	r5 += -6
	*(u64 *) (r10+-8) = r0
	r0 = r8
	r0 += r4
	*(u64 *) (r10+-32) = r5
	*(u64 *) (r10+-16) = r0
	r5 = r7
	r0 = *(u64 *) (r10+-8)
	r5 += r9
	r0 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r0
	r5 = r7
	r0 = *(u64 *) (r10+-16)
	r5 += r4
	r0 = *(u8 *) (r0+0)
	r4 = r8
	*(u8 *) (r5+0) = r0
	r4 += r9
	r4 = *(u8 *) (r4+-2)
	r5 = r7
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r4 = r7
	r4 += r9
	r3 = r8
	r2 = r8
	r3 += r9
	r2 += r9
	r0 = *(u8 *) (r3+-3)
	*(u8 *) (r4+-3) = r0
	r4 = r7
	r1 = *(u8 *) (r2+-4)
	r4 += r9
	*(u8 *) (r4+-4) = r1
	r6 = r9
	r3 = r8
	r6 += -5
	r1 = r7
	*(u64 *) (r10+-24) = r6
	r5 = *(u64 *) (r10+-24)
	r3 += r5
	r1 += r5
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r1+0) = r0
	r4 = *(u64 *) (r10+-32)
	r2 = r8
	r3 = r7
	r2 += r4
	r3 += r4
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r3+0) = r1
	r6 = r9
	r5 = r8
	r6 += -7
	r2 = r7
	r5 += r6
	r2 += r6
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
	r9 += -8
	if r9 != -1 goto .L2342
.L2329:
	exit
.L2475:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r8 = r1
	r0 = r3
	r6 = r3
	r0 &= -4
	r9 = r2
	r6 >>= 2
	r0 = r0;r0 &= 0xffffffff
	if r2 >= r1 goto .L2477
	r1 = r2
	r1 += r3
	if r8 <= r1 goto .L2707
.L2477:
	if r6 == 0 goto .L2708
	r2 = r6
	r2 += -1
	if r2 <= 7 goto .L2482
	r5 = r8
	r5 |= r9
	r5 &= 7
	if r5 == 0 goto .L2709
.L2482:
	r6 <<= 2
	r1 = r9
	r4 = r6
	r5 = r8
	r4 += -4
	r6 += r9
	r4 >>= 2
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2486
	if r4 == 1 goto .L2634
	if r4 == 2 goto .L2635
	if r4 == 3 goto .L2636
	if r4 == 4 goto .L2637
	if r4 == 5 goto .L2638
	if r4 == 6 goto .L2639
	r2 = *(u32 *) (r9+0)
	r1 += 4
	*(u32 *) (r8+0) = r2
	r5 += 4
.L2639:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2638:
	r2 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r2
	r1 += 4
.L2637:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2636:
	r2 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r2
	r1 += 4
.L2635:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2634:
	r2 = *(u32 *) (r1+0)
	*(u32 *) (r5+0) = r2
	r1 += 4
	r5 += 4
	if r1 == r6 goto .L2487
.L2486:
	r4 = *(u32 *) (r1+0)
	*(u32 *) (r5+0) = r4
	r2 = *(u32 *) (r1+4)
	*(u32 *) (r5+4) = r2
	r4 = *(u32 *) (r1+8)
	*(u32 *) (r5+8) = r4
	r2 = *(u32 *) (r1+12)
	*(u32 *) (r5+12) = r2
	r4 = *(u32 *) (r1+16)
	*(u32 *) (r5+16) = r4
	r2 = *(u32 *) (r1+20)
	*(u32 *) (r5+20) = r2
	r4 = *(u32 *) (r1+24)
	*(u32 *) (r5+24) = r4
	r2 = *(u32 *) (r1+28)
	*(u32 *) (r5+28) = r2
	r1 += 32
	r5 += 32
	if r1 != r6 goto .L2486
.L2487:
	if r0 > r3 goto .L2476
	r6 = r3
	r5 = r8
	r6 -= r0
	r5 += r0
	r6 = r6;r6 &= 0xffffffff
	r1 = r6
	r1 += -1
	if r1 <= 6 goto .L2710
	r4 = r9
	r1 = r0
	r4 += r0
	r1 += 1
	*(u64 *) (r10+-8) = r4
	r2 = r9
	r2 += r1
	r1 = r5
	r1 -= r2
	if r1 > 6 goto .L2711
.L2481:
	r3 += -1
	r3 -= r0
	r4 = *(u64 *) (r10+-8)
	r9 += 1
	r9 += r0
	r0 = r3;r0 &= 0xffffffff
	r0 += r9
	r3 = r0
	r3 -= r4
	r3 &= 7
	if r3 == 0 goto .L2492
	if r3 == 1 goto .L2646
	if r3 == 2 goto .L2647
	if r3 == 3 goto .L2648
	if r3 == 4 goto .L2649
	if r3 == 5 goto .L2650
	if r3 == 6 goto .L2651
	r1 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r1
	r4 += 1
.L2651:
	r2 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r2
	r4 += 1
.L2650:
	r9 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r9
	r4 += 1
.L2649:
	r3 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r3
	r4 += 1
.L2648:
	r1 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r1
	r4 += 1
.L2647:
	r2 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r2
	r4 += 1
.L2646:
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r4 += 1
	r5 += 1
	if r4 == r0 goto .L2712
.L2492:
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r1 = *(u8 *) (r4+1)
	*(u8 *) (r5+1) = r1
	r2 = *(u8 *) (r4+2)
	*(u8 *) (r5+2) = r2
	r9 = *(u8 *) (r4+3)
	*(u8 *) (r5+3) = r9
	r3 = *(u8 *) (r4+4)
	*(u8 *) (r5+4) = r3
	r1 = *(u8 *) (r4+5)
	*(u8 *) (r5+5) = r1
	r2 = *(u8 *) (r4+6)
	*(u8 *) (r5+6) = r2
	r9 = *(u8 *) (r4+7)
	*(u8 *) (r5+7) = r9
	r4 += 8
	r5 += 8
	if r4 != r0 goto .L2492
	exit
.L2709:
	r1 = r9
	r4 = r8
	r1 += 4
	r4 ^= r1
	r2 = r4
	r2 = -r2
	r2 |= r4
	if r2 s>= 0 goto .L2482
	r5 = r3
	r1 = r9
	r5 >>= 3
	r2 = r8
	r7 = r5
	r7 <<= 3
	r4 = r7
	r7 += r9
	r4 += -8
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2484
	if r4 == 1 goto .L2628
	if r4 == 2 goto .L2629
	if r4 == 3 goto .L2630
	if r4 == 4 goto .L2631
	if r4 == 5 goto .L2632
	if r4 == 6 goto .L2633
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r8+0) = r1
	r1 = r9
	r1 += 8
.L2633:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2632:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2631:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2630:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2629:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2628:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r7 goto .L2696
.L2484:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r4 = *(u64 *) (r1+8)
	*(u64 *) (r2+8) = r4
	r4 = *(u64 *) (r1+16)
	*(u64 *) (r2+16) = r4
	r4 = *(u64 *) (r1+24)
	*(u64 *) (r2+24) = r4
	r4 = *(u64 *) (r1+32)
	*(u64 *) (r2+32) = r4
	r4 = *(u64 *) (r1+40)
	*(u64 *) (r2+40) = r4
	r4 = *(u64 *) (r1+48)
	*(u64 *) (r2+48) = r4
	r4 = *(u64 *) (r1+56)
	*(u64 *) (r2+56) = r4
	r1 += 64
	r2 += 64
	if r1 != r7 goto .L2484
.L2696:
	r5 <<= 1
	if r6 == r5 goto .L2487
	r5 <<= 2
	r2 = r9
	r1 = r8
	r2 += r5
	r1 += r5
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	goto .L2487
.L2711:
	r2 = r4
	r2 |= r5
	r2 &= 7
	if r2 != 0 goto .L2481
	r1 = r4
	r7 = r6
	r7 >>= 3
	r7 <<= 3
	r4 = r7
	r4 += -8
	*(u64 *) (r10+-16) = r4
	r4 = r1
	r4 += r7
	r2 = r5
	r7 = r4
	r4 = *(u64 *) (r10+-16)
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2702
	if r4 == 1 goto .L2640
	if r4 == 2 goto .L2641
	if r4 == 3 goto .L2642
	if r4 == 4 goto .L2643
	if r4 == 5 goto .L2644
	if r4 == 6 goto .L2645
	r1 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r1+0)
	r1 += 8
	*(u64 *) (r5+0) = r2
	r2 = r5
	r2 += 8
.L2645:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2644:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2643:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2642:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2641:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2640:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r7 goto .L2695
.L2702:
	r4 = r7
.L2490:
	r5 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r5
	r5 = *(u64 *) (r1+8)
	*(u64 *) (r2+8) = r5
	r5 = *(u64 *) (r1+16)
	*(u64 *) (r2+16) = r5
	r5 = *(u64 *) (r1+24)
	*(u64 *) (r2+24) = r5
	r5 = *(u64 *) (r1+32)
	*(u64 *) (r2+32) = r5
	r5 = *(u64 *) (r1+40)
	*(u64 *) (r2+40) = r5
	r5 = *(u64 *) (r1+48)
	*(u64 *) (r2+48) = r5
	r5 = *(u64 *) (r1+56)
	*(u64 *) (r2+56) = r5
	r1 += 64
	r2 += 64
	if r1 != r4 goto .L2490
.L2695:
	r1 = r6
	r6 &= 7
	r1 &= -8
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2476
	r2 = r8
	r4 = r9
	r2 += r0
	r4 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 1
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2476
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r5 = r0
	r5 += 2
	r1 = r5;r1 &= 0xffffffff
	if r1 > r3 goto .L2476
	r4 = r9
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 3
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2476
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r5 = r0
	r5 += 4
	r1 = r5;r1 &= 0xffffffff
	if r1 > r3 goto .L2476
	r4 = r9
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 5
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2476
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2476
	r9 += r0
	r3 = r8
	r5 = *(u8 *) (r9+0)
	r3 += r0
	*(u8 *) (r3+0) = r5
	exit
.L2707:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r4 = r5
	if r3 == 0 goto .L2476
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2706
	if r3 == 1 goto .L2622
	if r3 == 2 goto .L2623
	if r3 == 3 goto .L2624
	if r3 == 4 goto .L2625
	if r3 == 5 goto .L2626
	if r3 == 6 goto .L2627
	r1 = r9
	r0 = r8
	r1 += r5
	r0 += r5
	r2 = *(u8 *) (r1+0)
	r5 += -1
	*(u8 *) (r0+0) = r2
	r4 = r5
.L2627:
	r5 = r8
	r3 = r9
	r5 += r4
	r3 += r4
	r4 += -1
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r1
.L2626:
	r5 = r8
	r0 = r9
	r5 += r4
	r0 += r4
	r4 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r2
.L2625:
	r3 = r8
	r1 = r9
	r3 += r4
	r1 += r4
	r4 += -1
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r3+0) = r5
.L2624:
	r3 = r8
	r0 = r9
	r3 += r4
	r0 += r4
	r4 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r2
.L2623:
	r1 = r8
	r5 = r9
	r1 += r4
	r5 += r4
	r4 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r3
.L2622:
	r2 = r4
	r1 = r9
	r0 = r8
	r1 += r4
	r0 += r4
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r2 += -1
	r4 = r2
	if r2 == -1 goto .L2713
.L2706:
	r0 = r4
.L2494:
	r1 = r9
	r1 += r0
	r5 = r0
	r6 = r0
	r5 += -1
	r6 += -5
	*(u64 *) (r10+-8) = r1
	r1 = r9
	r1 += r5
	*(u64 *) (r10+-24) = r6
	*(u64 *) (r10+-16) = r1
	r6 = r8
	r1 = *(u64 *) (r10+-8)
	r6 += r0
	r1 = *(u8 *) (r1+0)
	*(u8 *) (r6+0) = r1
	r6 = r8
	r1 = *(u64 *) (r10+-16)
	r6 += r5
	r1 = *(u8 *) (r1+0)
	r5 = r9
	*(u8 *) (r6+0) = r1
	r5 += r0
	r5 = *(u8 *) (r5+-2)
	r6 = r8
	r6 += r0
	*(u8 *) (r6+-2) = r5
	r5 = r8
	r5 += r0
	r4 = r9
	r3 = r9
	r4 += r0
	r3 += r0
	r1 = *(u8 *) (r4+-3)
	*(u8 *) (r5+-3) = r1
	r5 = r8
	r2 = *(u8 *) (r3+-4)
	r5 += r0
	*(u8 *) (r5+-4) = r2
	r6 = *(u64 *) (r10+-24)
	r4 = r9
	r2 = r8
	r4 += r6
	r2 += r6
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r7 = r0
	r3 = r9
	r7 += -6
	r4 = r8
	*(u64 *) (r10+-32) = r7
	r5 = *(u64 *) (r10+-32)
	r3 += r5
	r4 += r5
	r3 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r3
	r7 = r0
	r2 = r9
	r7 += -7
	r5 = r8
	r2 += r7
	r5 += r7
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r1
	r0 += -8
	if r0 != -1 goto .L2494
.L2476:
	exit
.L2708:
	if r3 == 0 goto .L2476
	r5 = r8
	r4 = r9
	r5 += r0
	r4 += r0
	*(u64 *) (r10+-8) = r4
	goto .L2481
.L2713:
	exit
.L2712:
	exit
.L2710:
	r4 = r9
	r4 += r0
	*(u64 *) (r10+-8) = r4
	goto .L2481
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
	if r0 != 0 goto .L2723
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2722
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2724
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2725
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2726
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2727
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2728
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2729
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2730
	r2 >>= 38
	if r2 != 0 goto .L2731
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2732
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2733
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2734
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2735
	r3 >>= 1
	if r3 != 0 goto .L2736
	r0 = 16
	if r1 != 0 goto .L2739
.L2722:
	exit
.L2723:
	r0 = 0
	exit
.L2734:
	r0 = 12
	exit
.L2739:
	r0 = 15
	exit
.L2724:
	r0 = 2
	exit
.L2725:
	r0 = 3
	exit
.L2726:
	r0 = 4
	exit
.L2727:
	r0 = 5
	exit
.L2728:
	r0 = 6
	exit
.L2729:
	r0 = 7
	exit
.L2730:
	r0 = 8
	exit
.L2731:
	r0 = 9
	exit
.L2732:
	r0 = 10
	exit
.L2733:
	r0 = 11
	exit
.L2735:
	r0 = 13
	exit
.L2736:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2743
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2744
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2745
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2746
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2747
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2748
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2749
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2750
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2751
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2752
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2753
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2754
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2755
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2756
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2757
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2760
	exit
.L2743:
	r0 = 0
	exit
.L2744:
	r0 = 1
	exit
.L2755:
	r0 = 12
	exit
.L2760:
	r0 = 15
	exit
.L2745:
	r0 = 2
	exit
.L2746:
	r0 = 3
	exit
.L2747:
	r0 = 4
	exit
.L2748:
	r0 = 5
	exit
.L2749:
	r0 = 6
	exit
.L2750:
	r0 = 7
	exit
.L2751:
	r0 = 8
	exit
.L2752:
	r0 = 9
	exit
.L2753:
	r0 = 10
	exit
.L2754:
	r0 = 11
	exit
.L2756:
	r0 = 13
	exit
.L2757:
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
	if r0 s>= 0 goto .L2767
	r1 = r6
	call	__fixsfdi
	exit
.L2767:
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
	if r1 == 0 goto .L2773
	r0 = 0
.L2772:
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
	if r3 == 0 goto .L2789
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
	if r1 == 0 goto .L2771
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
	if r2 == 0 goto .L2771
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
	if r1 == 0 goto .L2771
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
	if r2 == 0 goto .L2771
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
	if r3 == 0 goto .L2771
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
	if r1 == 0 goto .L2771
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
	if r1 != 0 goto .L2772
	exit
.L2773:
	r0 = r1
.L2771:
	exit
.L2789:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2793
	if r2 == 0 goto .L2794
	r0 = 0
.L2792:
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
	if r3 == 0 goto .L2810
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
	if r1 == 0 goto .L2791
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
	if r2 == 0 goto .L2791
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
	if r1 == 0 goto .L2791
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
	if r2 == 0 goto .L2791
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
	if r1 == 0 goto .L2791
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
	if r2 == 0 goto .L2791
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
	if r2 != 0 goto .L2792
	exit
.L2794:
	r0 = r2
.L2791:
	exit
.L2793:
	r0 = r1
	exit
.L2810:
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
	if r0 < r2 goto .L2813
	r9 = 32
	r4 = 1
.L2812:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2813
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2814
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2812
.L2815:
	if r3 != 0 goto .L2819
	r0 = r9
.L2819:
	exit
.L2814:
	if r4 == 0 goto .L2821
.L2813:
	r9 = 0
.L2818:
	if r2 >= r0 goto .L2817
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2817:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2818
	goto .L2815
.L2821:
	r9 = r4
	goto .L2815
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2843
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2844
	r0 = r8
	r0 &= 1
	exit
.L2844:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2843:
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
	if r3 s>= r0 goto .L2848
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2849
	r0 = r8
	r0 &= 1
	exit
.L2849:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2848:
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
	if r2 s< 0 goto .L2880
	if r3 == 0 goto .L2858
	r4 = 0
.L2854:
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
	if r2 == 0 goto .L2856
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
	if r2 == 0 goto .L2856
	r1 = 30
.L2857:
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
	if r3 == 0 goto .L2856
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
	if r2 == 0 goto .L2856
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
	if r9 == 0 goto .L2856
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
	if r3 == 0 goto .L2856
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
	if r2 == 0 goto .L2856
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2857
.L2856:
	if r4 == 0 goto .L2855
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2858:
	r0 = r3
.L2855:
	exit
.L2880:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2854
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2914
	r0 = 1
	r4 = 0
.L2882:
	if r2 s>= 0 goto .L2883
	r2 = -r2
	r4 = r0
.L2883:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2885
	r0 = 32
	r1 = 1
.L2884:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2885
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2886
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2884
.L2887:
	if r4 == 0 goto .L2881
	r0 = -r0
.L2881:
	exit
.L2886:
	if r1 == 0 goto .L2895
.L2885:
	r0 = 0
.L2890:
	if r2 >= r3 goto .L2889
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2889:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2890
	goto .L2887
.L2914:
	r1 = -r1
	r0 = 0
	r4 = 1
	goto .L2882
.L2895:
	r0 = r1
	goto .L2887
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2953
	r4 = 0
.L2916:
	if r0 s>= 0 goto .L2917
	r0 = -r0
.L2917:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2924
	r9 = 32
	r1 = 1
.L2918:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2924
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2952
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2918
.L2921:
	r0 = r3
	if r4 == 0 goto .L2915
	r0 = -r0
.L2915:
	exit
.L2952:
	if r1 == 0 goto .L2921
.L2924:
	if r0 >= r3 goto .L2923
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2923:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2924
	goto .L2921
.L2953:
	r1 = -r1
	r4 = 1
	goto .L2916
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r0 < r2 goto .L3069
	r4 = r2
	r1 = 0
	r4 <<= 48
	if r4 s<= r1 goto .L2957
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L3011
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2959
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L3012
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2961
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L3013
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2963
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L3014
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2965
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L3015
	r5 = r4
	r5 <<= 48
	if r5 s<= r1 goto .L2967
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L3016
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2969
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L3017
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2971
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L3018
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2973
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L3019
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2975
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L3020
	r9 = r4
	r9 <<= 48
	if r9 s<= r1 goto .L2977
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L3021
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2979
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L3022
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2981
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L3023
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2983
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L3024
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2985
	r1 = r2
	r1 <<= 15
	r1 &= 0xffff
	if r1 > r0 goto .L2986
	if r1 != 0 goto .L3070
.L2987:
	if r3 != 0 goto .L3039
	r0 = r1
	exit
.L3039:
	exit
.L3019:
	r5 = 512
.L3006:
	r9 = r5
	r2 = r4
	r9 >>= 1
	r2 >>= 1
	r1 = 0
.L3007:
	if r2 >= r0 goto .L2989
	r0 -= r2
	r1 |= r9
	r0 &= 0xffff
.L2989:
	r2 = r5
	r9 = r4
	r2 >>= 2
	r9 >>= 2
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2990
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2990:
	r2 = r5
	r9 = r4
	r2 >>= 3
	r9 >>= 3
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2991
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2991:
	r2 = r5
	r9 = r4
	r2 >>= 4
	r9 >>= 4
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2992
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2992:
	r2 = r5
	r9 = r4
	r2 >>= 5
	r9 >>= 5
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2993
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2993:
	r2 = r5
	r9 = r4
	r2 >>= 6
	r9 >>= 6
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2994
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2994:
	r2 = r5
	r9 = r4
	r2 >>= 7
	r9 >>= 7
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2995
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2995:
	r2 = r5
	r9 = r4
	r2 >>= 8
	r9 >>= 8
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2996
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2996:
	r2 = r5
	r9 = r4
	r2 >>= 9
	r9 >>= 9
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2997
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2997:
	r2 = r5
	r9 = r4
	r2 >>= 10
	r9 >>= 10
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2998
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2998:
	r2 = r5
	r9 = r4
	r2 >>= 11
	r9 >>= 11
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L2999
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2999:
	r2 = r5
	r9 = r4
	r2 >>= 12
	r9 >>= 12
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L3000
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3000:
	r2 = r5
	r9 = r4
	r2 >>= 13
	r9 >>= 13
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L3001
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3001:
	r2 = r5
	r9 = r4
	r2 >>= 14
	r9 >>= 14
	if r2 == 0 goto .L2987
	if r9 >= r0 goto .L3002
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3002:
	r4 >>= 15
	if r5 == 16384 goto .L2987
	if r4 >= r0 goto .L3009
	r0 -= r4
	r1 |= 1
	r0 &= 0xffff
	goto .L2987
.L3070:
	r4 = 32768
	r0 += -32768
	r2 = 16384
	r0 &= 0xffff
	r9 = r2
	r5 = r4
	r1 = r4
	goto .L3007
.L3009:
	r0 = 0
	goto .L2987
.L3069:
	if r2 == r0 goto .L3008
	r1 = 0
	goto .L2987
.L2957:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L2987
.L2959:
	r0 -= r4
	r5 = 2
	r0 &= 0xffff
	r2 &= 32767
	r9 = 1
	r1 = r5
	goto .L3007
.L2961:
	r0 -= r4
	r5 = 4
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2
	r1 = r5
	goto .L3007
.L2963:
	r0 -= r4
	r5 = 8
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4
	r1 = r5
	goto .L3007
.L2965:
	r0 -= r4
	r5 = 16
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8
	r1 = r5
	goto .L3007
.L2967:
	r0 -= r4
	r5 = 32
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16
	r1 = r5
	goto .L3007
.L2969:
	r0 -= r4
	r5 = 64
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 32
	r1 = r5
	goto .L3007
.L2971:
	r0 -= r4
	r5 = 128
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 64
	r1 = r5
	goto .L3007
.L2973:
	r0 -= r4
	r5 = 256
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 128
	r1 = r5
	goto .L3007
.L2975:
	r0 -= r4
	r5 = 512
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 256
	r1 = r5
	goto .L3007
.L3008:
	r1 = 1
	r0 = 0
	goto .L2987
.L3011:
	r5 = 2
	goto .L3006
.L2977:
	r0 -= r4
	r5 = 1024
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 512
	r1 = r5
	goto .L3007
.L3012:
	r5 = 4
	goto .L3006
.L2979:
	r0 -= r4
	r5 = 2048
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 1024
	r1 = r5
	goto .L3007
.L2981:
	r0 -= r4
	r5 = 4096
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2048
	r1 = r5
	goto .L3007
.L3013:
	r5 = 8
	goto .L3006
.L2983:
	r0 -= r4
	r5 = 8192
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4096
	r1 = r5
	goto .L3007
.L3014:
	r5 = 16
	goto .L3006
.L3015:
	r5 = 32
	goto .L3006
.L2985:
	r0 -= r4
	r5 = 16384
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8192
	r1 = r5
	goto .L3007
.L2986:
	r2 = r0
	r4 = 32768
	r2 <<= 48
	if r2 s<= 0 goto .L3010
	r5 = r4
	goto .L3006
.L3016:
	r5 = 64
	goto .L3006
.L3017:
	r5 = 128
	goto .L3006
.L3010:
	r0 = 0
	r5 = r4
	r1 = r4
	goto .L2989
.L3018:
	r5 = 256
	goto .L3006
.L3022:
	r5 = 4096
	goto .L3006
.L3023:
	r5 = 8192
	goto .L3006
.L3024:
	r5 = 16384
	goto .L3006
.L3021:
	r5 = 2048
	goto .L3006
.L3020:
	r5 = 1024
	goto .L3006
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L3073
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3072:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3073
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3074
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L3072
.L3075:
	if r3 == 0 goto .L3071
	r5 = r1
.L3071:
	r0 = r5
	exit
.L3074:
	if r4 == 0 goto .L3075
.L3073:
	r5 = 0
.L3078:
	if r2 >= r1 goto .L3077
	r1 -= r2
	r5 |= r4
.L3077:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3078
	goto .L3075
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L3105
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
.L3105:
	if r2 == 0 goto .L3108
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
.L3108:
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
	if r0 == 0 goto .L3110
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L3110:
	if r3 == 0 goto .L3113
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
.L3113:
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
	if r0 == 0 goto .L3115
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
.L3115:
	if r2 == 0 goto .L3118
	r5 = r2;r5 &= 0xffffffff
	r4 = r1
	r3 = r1;r3 &= 0xffffffff
	r4 s>>= 32
	r3 >>= r5
	r0 = r4
	r1 = 32
	r1 -= r2
	r9 = r1;r9 &= 0xffffffff
	r0 <<= r9
	r0 |= r3
	r1 = r4
	r1 s>>= r2
	r2 = r0;r2 &= 0xffffffff
	r1 <<= 32
	r0 = r1
	r0 |= r2
	exit
.L3118:
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
	if r0 == 0 goto .L3120
	r4 = r2
	r0 = r2
	r4 s>>= 63
	r3 += -64
	r1 = r4
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L3120:
	if r3 == 0 goto .L3123
	r4 = r3;r4 &= 0xffffffff
	r1 >>= r4
	r0 = r2
	r4 = r2
	r5 = 64
	r4 s>>= r3
	r5 -= r3
	r9 = r5;r9 &= 0xffffffff
	r0 <<= r9
	r0 |= r1
	r1 = r4
	exit
.L3123:
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
	if r1 <= 65534 goto .L3127
	r0 = 0
.L3127:
	r0 <<= 36
	r2 = 16
	r0 s>>= 32
	r9 = 8
	r2 -= r0
	r4 = r2;r4 &= 0xffffffff
	r1 >>= r4
	r5 = r1;r5 &= 0xffffffff
	r1 &= 65280
	r1 += -1
	r1 >>= 63
	r1 <<= 3
	r9 -= r1
	r3 = 2
	r0 += r1
	r2 = 4
	r1 = r9;r1 &= 0xffffffff
	r5 >>= r1
	r9 = r5;r9 &= 0xffffffff
	r5 &= 240
	r5 += -1
	r5 >>= 63
	r5 <<= r3
	r2 -= r5
	r0 += r5
	r4 = r2;r4 &= 0xffffffff
	r1 = r3
	r9 >>= r4
	r5 = r9;r5 &= 0xffffffff
	r9 &= 12
	r9 += -1
	r9 >>= 63
	r9 <<= 1
	r1 -= r9
	r2 = r1;r2 &= 0xffffffff
	r5 >>= r2
	r1 = r5;r1 &= 0xffffffff
	r4 = r1
	r4 >>= 1
	r4 &= 1
	r5 = r4
	r5 ^= 1
	if r4 != 0 goto .L3128
	r3 -= r1
	r0 += r9
	r0 += r3
	exit
.L3128:
	r3 = r5
	r0 += r9
	r0 += r3
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L3131
	r6 = 0
.L3131:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3133
	r0 = 0
.L3133:
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
	if r0 s>= r3 goto .L3144
	if r3 s> r0 goto .L3145
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3144
	if r1 > r2 goto .L3145
	r0 = 1
	exit
.L3144:
	r0 = 0
	exit
.L3145:
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
	if r0 s>= r3 goto .L3151
	if r3 s> r0 goto .L3150
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3151
	r0 = 1
	if r1 <= r2 goto .L3152
	r0 &= 1
	exit
.L3151:
	r0 = -1
	exit
.L3152:
	r0 = 0
	r0 &= 1
	exit
.L3150:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L3157
	if r2 s> r4 goto .L3158
	if r3 >= r1 goto .L3157
	if r1 > r3 goto .L3158
	r0 = 1
	exit
.L3157:
	r0 = 0
	exit
.L3158:
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
	r2 >>= r4
	r3 += r4
	r0 = r2;r0 &= 0xffffffff
	r4 = r2
	r4 &= 15
	r4 += -1
	r4 >>= 63
	r4 <<= 2
	r0 >>= r4
	r2 = r0;r2 &= 0xffffffff
	r0 &= 3
	r0 += -1
	r0 >>= 63
	r1 = r3
	r9 = r0
	r1 += r4
	r9 <<= 1
	r4 = 2
	r1 += r9
	r2 >>= r9
	r2 &= 3
	r0 = r2
	r2 >>= 1
	r0 ^= -1
	r4 -= r2
	r0 &= 1
	r0 = -r0
	r0 &= r4
	r0 += r1
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	r0 = r1
	r6 = 1
	if r1 == 0 goto .L3161
	r6 = 0
.L3161:
	r6 &= 0xff
	if r0 == 0 goto .L3167
	r1 = 0
.L3163:
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
.L3167:
	r1 = r2
	goto .L3163
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3171
	if r2 != 0 goto .L3174
	r0 = r2
	exit
.L3171:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L3174:
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
	if r0 == 0 goto .L3176
	r0 = 0
	r0 <<= 32
	r2 += -32
	r9 = r0
	r5 = r2;r5 &= 0xffffffff
	r1 >>= 32
	r1 >>= r5
	r3 = r1;r3 &= 0xffffffff
	r0 = r3
	r0 |= r9
	exit
.L3176:
	if r2 == 0 goto .L3179
	r5 = r2;r5 &= 0xffffffff
	r3 = r1
	r3 >>= 32
	r9 = r3
	r9 >>= r5
	r0 = r9;r0 &= 0xffffffff
	r0 <<= 32
	r4 = 32
	r9 = r0
	r4 -= r2
	r1 = r1;r1 &= 0xffffffff
	r2 = r4;r2 &= 0xffffffff
	r1 >>= r5
	r3 <<= r2
	r3 |= r1
	r3 = r3;r3 &= 0xffffffff
	r0 = r3
	r0 |= r9
	exit
.L3179:
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
	if r0 == 0 goto .L3181
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L3181:
	if r3 == 0 goto .L3184
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
.L3184:
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
	r4 = r1;r4 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	r9 = r1;r9 &= 0xffff
	r3 = r2;r3 &= 0xffff
	r7 = r4
	r0 = r9
	r7 >>= 16
	r0 *= r3
	r8 = r5
	r3 *= r7
	r8 >>= 16
	r7 *= r8
	r9 *= r8
	r2 s>>= 32
	r6 = r0
	r1 s>>= 32
	r6 >>= 16
	r0 &= 65535
	r6 += r3
	r3 = r6;r3 &= 0xffffffff
	r8 = r3
	r3 >>= 16
	r8 <<= 16
	r3 += r7
	r0 += r8
	r0 = r0;r0 &= 0xffffffff
	r7 = r0
	r7 >>= 16
	r7 += r9
	r5 *= r1
	r9 = 4294967295 ll
	r8 = r2
	r4 *= r2
	r0 &= 65535
	r2 = r7;r2 &= 0xffffffff
	r7 = r2
	r2 >>= 16
	r7 <<= 16
	r3 += r2
	r0 += r7
	r3 <<= 32
	r0 &= r9
	r0 |= r3
	r1 = r0
	r0 &= r9
	r1 s>>= 32
	r4 += r1
	r4 += r5
	r4 <<= 32
	r0 |= r4
	exit
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	3
	.global	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	r9 = 4294967295 ll
	r4 = r1
	r3 = r2
	r4 &= r9
	r3 &= r9
	r2 >>= 32
	r1 >>= 32
	r0 = r4
	r0 *= r3
	r3 *= r1
	r5 = r0
	r1 *= r2
	r5 >>= 32
	r0 &= r9
	r3 += r5
	r4 *= r2
	r5 = r3
	r3 >>= 32
	r5 <<= 32
	r0 += r5
	r5 >>= 32
	r0 &= r9
	r4 += r5
	r9 = r1
	r2 = r4
	r1 = r3
	r2 <<= 32
	r1 += r9
	r4 >>= 32
	r0 += r2
	r1 += r4
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	r9 = 4294967295 ll
	*(u64 *) (r10+-24) = r2
	r5 = r1
	r0 = r3
	r5 &= r9
	r0 &= r9
	r7 = r3
	r2 = r5
	r7 >>= 32
	r2 *= r0
	r8 = r2
	r8 >>= 32
	r6 = r1
	r2 &= r9
	r6 >>= 32
	r5 *= r7
	r0 *= r6
	r6 *= r7
	r0 += r8
	r8 = r0
	r0 >>= 32
	r8 <<= 32
	r0 += r6
	r2 += r8
	r8 >>= 32
	r5 += r8
	r7 = r5
	r5 >>= 32
	r0 += r5
	r2 &= r9
	r7 <<= 32
	r1 *= r4
	r2 += r7
	r4 = *(u64 *) (r10+-24)
	r1 += r0
	r3 *= r4
	r0 = r2
	r1 += r3
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
	if r1 != 0 goto .L3191
	r3 = r0
.L3191:
	r1 = r2
	r1 = -r1
	r1 -= r3
	exit
	.size	__negti2, .-__negti2
	.align	3
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	r0 = r1
	r0 s>>= 32
	r0 ^= r1
	r2 = r0;r2 &= 0xffffffff
	r0 = 27030
	r1 = r2
	r1 >>= 16
	r1 ^= r2
	r3 = r1
	r3 >>= 8
	r3 ^= r1
	r4 = r3
	r4 >>= 4
	r4 ^= r3
	r4 &= 15
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
	r0 s>>= 32
	r0 ^= r1
	r2 = r0;r2 &= 0xffffffff
	r0 = 27030
	r1 = r2
	r1 >>= 16
	r1 ^= r2
	r3 = r1
	r3 >>= 8
	r3 ^= r1
	r4 = r3
	r4 >>= 4
	r4 ^= r3
	r4 &= 15
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
	r0 = 27030
	r3 &= 15
	r0 s>>= r3
	r0 &= 1
	exit
	.size	__paritysi2, .-__paritysi2
	.align	3
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	r3 = 3689348814741910323 ll
	r0 = r1
	r2 = 6148914691236517205 ll
	r0 >>= 1
	r0 &= r2
	r1 -= r0
	r4 = r1
	r1 &= r3
	r4 >>= 2
	r4 &= r3
	r4 += r1
	r1 = 1085102592571150095 ll
	r5 = r4
	r5 >>= 4
	r5 += r4
	r5 &= r1
	r9 = r5
	r9 >>= 32
	r9 += r5
	r3 = r9;r3 &= 0xffffffff
	r0 = r3
	r0 >>= 16
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r2 = r0
	r2 >>= 8
	r0 += r2
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
	if r4 > r1 goto .L3198
	r9 = 0
.L3198:
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
	if r0 >= r4 goto .L3199
	r9 = 0
.L3199:
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
	if r9 >= r2 goto .L3200
	r0 = 0
.L3200:
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
	if r0 == 0 goto .L3202
.L3204:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3202:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3203
.L3205:
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
	if r4 != 0 goto .L3204
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3204
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
	if r0 != 0 goto .L3204
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
	if r4 != 0 goto .L3204
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
	if r9 != 0 goto .L3204
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
	if r3 != 0 goto .L3204
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
	if r4 != 0 goto .L3204
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3204
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3205
.L3203:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3201
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3201:
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
	if r0 == 0 goto .L3211
.L3213:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3211:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3212
.L3214:
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
	if r4 != 0 goto .L3213
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3213
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
	if r0 != 0 goto .L3213
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
	if r4 != 0 goto .L3213
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
	if r9 != 0 goto .L3213
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
	if r3 != 0 goto .L3213
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
	if r4 != 0 goto .L3213
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3213
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3214
.L3212:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3210
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3210:
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
	if r0 >= r3 goto .L3223
	if r3 > r0 goto .L3224
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3223
	if r1 > r2 goto .L3224
	r0 = 1
	exit
.L3223:
	r0 = 0
	exit
.L3224:
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
	if r0 >= r3 goto .L3230
	if r3 > r0 goto .L3229
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3230
	r0 = 1
	if r1 <= r2 goto .L3231
	r0 &= 1
	exit
.L3230:
	r0 = -1
	exit
.L3231:
	r0 = 0
	r0 &= 1
	exit
.L3229:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L3236
	if r2 > r4 goto .L3237
	if r3 >= r1 goto .L3236
	if r1 > r3 goto .L3237
	r0 = 1
	exit
.L3236:
	r0 = 0
	exit
.L3237:
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
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__bpf_floatunsidf
	.global	__clzdi2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__mulsf3
	.global	__nesf2
	.global	__addsf3
	.global	__bpf_floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__lesf2
	.global	__ledf2
	.global	__gesf2
	.global	__ltsf2
	.global	__gedf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__subdf3
	.global	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
