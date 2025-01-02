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
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L629
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L630
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L633
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L633:
	r0 = 0x0000000000000000 ll
	exit
.L629:
	r0 = r6
	exit
.L630:
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
	if r0 != 0 goto .L637
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L638
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L641
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L641:
	r0 = 0x00000000 ll
	exit
.L637:
	r0 = r6
	exit
.L638:
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
	if r0 != 0 goto .L650
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L649
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L644
	if r0 != 0 goto .L650
.L649:
	r0 = r7
	exit
.L644:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L650
	r6 = r7
.L650:
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
	if r0 != 0 goto .L661
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L660
	r0 = r7
	r1 = r6
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L655
	if r2 != 0 goto .L661
.L660:
	r0 = r7
	exit
.L655:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L661
	r6 = r7
.L661:
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
	if r0 != 0 goto .L672
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L671
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L666
	if r0 != 0 goto .L672
.L671:
	r0 = r7
	exit
.L666:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L672
	r6 = r7
.L672:
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
	if r0 != 0 goto .L681
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L683
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L677
	if r0 != 0 goto .L683
.L681:
	r0 = r7
	exit
.L677:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L683
	r6 = r7
.L683:
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
	if r0 != 0 goto .L692
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L694
	r0 = r6
	r1 = r7
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L688
	if r2 != 0 goto .L694
.L692:
	r0 = r7
	exit
.L688:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L694
	r6 = r7
.L694:
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
	if r0 != 0 goto .L703
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L705
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L699
	if r0 != 0 goto .L705
.L703:
	r0 = r7
	exit
.L699:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L705
	r6 = r7
.L705:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L709
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
	if r1 == 0 goto .L709
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L709
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 = r9
	r0 += 2
	if r1 == 0 goto .L709
	r9 = r1
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L709
	r5 = r1
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L709
	r2 += r1
	r0 += 1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+-1) = r1
.L709:
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
	if r2 == 0 goto .L735
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L729
	*(u64 *) (r2+8) = r1
.L729:
	exit
.L735:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L737
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L737:
	r1 = *(u64 *) (r1+8)
	if r1 == 0 goto .L736
	*(u64 *) (r1+0) = r0
.L736:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L747
	exit
.L747:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r4 = 4
.L755:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L749
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L749
	if r0 == 43 goto .L750
	if r0 != 45 goto .L774
	r3 = *(u8 *) (r1+1)
	r1 += 1
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r4 = r3;r4 &= 0xffffffff
	if r4 > 9 goto .L760
	r5 = 1
.L753:
	r0 = 0
	r9 = 9
.L757:
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
	if r9 <= r6 goto .L773
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
	if r9 <= r3 goto .L773
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
	if r9 <= r6 goto .L773
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
	if r9 > r6 goto .L757
.L773:
	if r5 != 0 goto .L756
	r0 = r4
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	exit
.L749:
	r1 += 1
	goto .L755
.L774:
	r3 += -48
	if r3 > 8 goto .L760
	r0 += -48
	r5 = 0
	r3 = r0
	goto .L753
.L750:
	r3 = *(u8 *) (r1+1)
	r5 = 0
	r3 <<= 56
	r1 += 1
	r3 s>>= 56
	r3 += -48
	r9 = r3;r9 &= 0xffffffff
	if r9 <= 8 goto .L753
.L760:
	r0 = 0
.L756:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 4
.L782:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L776
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L776
	if r0 == 43 goto .L777
	if r0 != 45 goto .L801
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 9 goto .L787
	r5 = 1
.L780:
	r2 = 0
	r9 = 9
.L784:
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
	if r9 <= r6 goto .L800
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
	if r9 <= r6 goto .L800
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
	if r9 <= r6 goto .L800
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
	if r9 > r6 goto .L784
.L800:
	if r5 != 0 goto .L775
	r2 = r4
	r2 -= r3
.L775:
	r0 = r2
	exit
.L776:
	r1 += 1
	goto .L782
.L801:
	r3 += -48
	if r3 > 8 goto .L787
	r5 = 0
	r0 += -48
	goto .L780
.L777:
	r0 = *(u8 *) (r1+1)
	r5 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 8 goto .L780
.L787:
	r2 = 0
	r0 = r2
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r4 = 4
.L807:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L803
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L803
	if r0 == 43 goto .L804
	if r0 != 45 goto .L828
	r0 = *(u8 *) (r1+1)
	r5 = 1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 8 goto .L814
.L808:
	r2 = 0
	r9 = 9
.L811:
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
	if r9 <= r6 goto .L827
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
	if r9 <= r6 goto .L827
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
	if r9 <= r6 goto .L827
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
	if r9 > r6 goto .L811
.L827:
	if r5 != 0 goto .L802
	r2 = r4
	r2 -= r3
.L802:
	r0 = r2
	exit
.L803:
	r1 += 1
	goto .L807
.L828:
	r3 += -48
	if r3 > 8 goto .L814
	r5 = 0
	r0 += -48
	goto .L808
.L804:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L814
	r5 = 0
	goto .L808
.L814:
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
	if r1 s< 0 goto .L832
	exit
.L832:
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
	if r1 s< 0 goto .L836
	exit
.L836:
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
	if r1 s< 0 goto .L840
	exit
.L840:
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
	if r3 == 0 goto .L848
.L843:
	if r2 == r0 goto .L849
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L843
	exit
.L849:
	r0 = r1
	exit
.L848:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L858
.L859:
	if r3 == 0 goto .L852
	r1 += 4
	r2 += 4
.L858:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L859
.L852:
	if r4 s>= r3 goto .L856
	r0 = 1
	if r3 s<= r4 goto .L860
	r0 &= 1
	exit
.L856:
	r0 = -1
	exit
.L860:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L862:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L878
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L878
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L878
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L878
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L878
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L878
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L878
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L862
.L878:
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
	if r2 == 0 goto .L879
	r0 = r1
.L881:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L898
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if r5 == 0 goto .L898
	r0 = r4
	r9 = *(u32 *) (r4+8)
	r0 += 8
	if r9 == 0 goto .L898
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L898
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L898
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L898
	r0 += 4
	r9 = *(u32 *) (r4+24)
	if r9 == 0 goto .L898
	r0 += 4
	r4 = *(u32 *) (r4+28)
	if r4 != 0 goto .L881
.L898:
	r0 -= r1
	r0 s>>= 2
.L879:
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L906
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L900
	if r0 == 1 goto .L923
	if r0 == 2 goto .L924
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L902
	if r5 == 0 goto .L902
	r3 = r4
	r1 += 4
	r2 += 4
.L924:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L902
	if r9 == 0 goto .L902
	r3 += -1
	r1 += 4
	r2 += 4
.L923:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L902
	if r5 == 0 goto .L902
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L906
.L900:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L902
	if r0 == 0 goto .L902
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
	if r0 != r9 goto .L902
	if r6 == 0 goto .L902
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L902
	if r6 == 0 goto .L902
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
	if r4 != r5 goto .L902
	if r6 == 0 goto .L902
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L900
.L906:
	r0 = 0
	exit
.L902:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L934
	r0 = 1
	if r2 s<= r1 goto .L935
	r0 &= 1
	exit
.L934:
	r0 = -1
	exit
.L935:
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
	if r3 == 0 goto .L940
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L937
	if r0 == 1 goto .L977
	if r0 == 2 goto .L978
	if r0 == 3 goto .L979
	if r0 == 4 goto .L980
	if r0 == 5 goto .L981
	if r0 != 6 goto .L995
.L982:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L994
	r3 += -1
	r1 += 4
.L981:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L994
	r3 += -1
	r1 += 4
.L980:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L994
	r3 += -1
	r1 += 4
.L979:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L994
	r3 += -1
	r1 += 4
.L978:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L994
	r3 += -1
	r1 += 4
.L977:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L994
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L940
.L937:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L994
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L994
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L994
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L994
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L994
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L994
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L994
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L994
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L937
.L940:
	r0 = 0
	exit
.L994:
	r0 = r1
	exit
.L995:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L994
	r3 = r4
	r1 += 4
	goto .L982
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L1003
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L997
	if r0 == 1 goto .L1040
	if r0 == 2 goto .L1041
	if r0 == 3 goto .L1042
	if r0 == 4 goto .L1043
	if r0 == 5 goto .L1044
	if r0 != 6 goto .L1059
.L1045:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 += -1
	r1 += 4
	r2 += 4
.L1044:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 += -1
	r1 += 4
	r2 += 4
.L1043:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 += -1
	r1 += 4
	r2 += 4
.L1042:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 += -1
	r1 += 4
	r2 += 4
.L1041:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 += -1
	r1 += 4
	r2 += 4
.L1040:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L1003
.L997:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L997
.L1003:
	r0 = 0
	exit
.L1058:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L1060
	r0 = 1
	if r4 s<= r5 goto .L1061
	r0 &= 1
	exit
.L1060:
	r0 = -1
	exit
.L1061:
	r0 = 0
	r0 &= 1
	exit
.L1059:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1058
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L1045
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1081
	r9 = r3
	r6 = r3
	r5 = r1
	r4 = r1
	r0 = r2
	r9 += -1
	r6 <<= 2
	r5 -= r2
	if r6 < r5 goto .L1197
	if r3 == 0 goto .L1081
	r9 <<= 2
	r3 = r1
	r4 = r9
	r0 += r9
	r4 >>= 2
	r3 += r9
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1067
	if r4 == 1 goto .L1151
	if r4 == 2 goto .L1152
	if r4 == 3 goto .L1153
	if r4 == 4 goto .L1154
	if r4 == 5 goto .L1155
	if r4 != 6 goto .L1198
.L1156:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1155:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1154:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
.L1153:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1152:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1151:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r5
	r9 = r0
	r3 += -4
	r0 += -4
	if r2 == r9 goto .L1081
.L1067:
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
	if r2 != r9 goto .L1067
.L1081:
	r0 = r1
	exit
.L1197:
	if r3 == 0 goto .L1081
	if r9 <= 7 goto .L1157
	r5 = r2
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L1157
	r6 = r2
	r6 += 4
	r7 = r1
	r7 ^= r6
	r6 = r7
	r6 = -r6
	r6 |= r7
	if r6 s>= 0 goto .L1157
	r9 = r3
	r9 >>= 1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1073
	if r6 == 1 goto .L1164
	if r6 == 2 goto .L1165
	if r6 == 3 goto .L1166
	if r6 == 4 goto .L1167
	if r6 == 5 goto .L1168
	if r6 != 6 goto .L1199
.L1169:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1168:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1167:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1166:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1165:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1164:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r5 += 1
	r0 += 8
	r4 += 8
	if r9 == r5 goto .L1196
.L1073:
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
	if r9 != r5 goto .L1073
.L1196:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1081
	r3 &= -2
	r3 <<= 2
	r9 = r1
	r2 += r3
	r9 += r3
	r0 = r1
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r3
	exit
.L1157:
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1072
	if r3 == 1 goto .L1158
	if r3 == 2 goto .L1159
	if r3 == 3 goto .L1160
	if r3 == 4 goto .L1161
	if r3 == 5 goto .L1162
	if r3 == 6 goto .L1163
	r0 = *(u32 *) (r2+0)
	r4 = r1
	*(u32 *) (r1+0) = r0
	r9 += -1
	r0 = r2
	r4 += 4
	r0 += 4
.L1163:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1162:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1161:
	r3 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1160:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1159:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1158:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r9 += -1
	r4 += 4
	r0 += 4
	if r9 == -1 goto .L1081
.L1072:
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
	if r9 != -1 goto .L1072
	goto .L1081
.L1198:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
	goto .L1156
.L1199:
	r4 = *(u64 *) (r2+0)
	r5 = 1
	*(u64 *) (r1+0) = r4
	r0 += 8
	r4 = r1
	r4 += 8
	goto .L1169
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r9 = r3
	r2 s>>= 32
	r9 += -1
	if r3 == 0 goto .L1201
	r0 = r1
	r6 = r1
	r0 >>= 2
	r0 &= 1
	if r9 <= 4 goto .L1202
	if r0 == 0 goto .L1203
	r6 += 4
	*(u32 *) (r1+0) = r2
	r9 += -1
.L1203:
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
	if r8 == r5 goto .L1204
	if r8 == 1 goto .L1244
	if r8 == 2 goto .L1245
	if r8 == 3 goto .L1246
	if r8 == 4 goto .L1247
	if r8 == 5 goto .L1248
	if r8 != 6 goto .L1266
.L1249:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1248:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1247:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1246:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1245:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1244:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
	if r5 == r7 goto .L1265
.L1204:
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
	if r5 != r7 goto .L1204
.L1265:
	r4 = r3
	r4 &= 1
	if r4 == 0 goto .L1201
	r3 &= -2
	r0 = r3
	r9 -= r3
	r0 <<= 2
	r6 += r0
.L1202:
	*(u32 *) (r6+0) = r2
	if r9 == 0 goto .L1201
	*(u32 *) (r6+4) = r2
	if r9 == 1 goto .L1201
	*(u32 *) (r6+8) = r2
	if r9 == 2 goto .L1201
	*(u32 *) (r6+12) = r2
	if r9 == 3 goto .L1201
	*(u32 *) (r6+16) = r2
	if r9 == 4 goto .L1201
	*(u32 *) (r6+20) = r2
.L1201:
	r0 = r1
	exit
.L1266:
	*(u64 *) (r0+0) = r4
	r5 = 1
	r0 += 8
	goto .L1249
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1268
	r9 = r1
	r2 += r3
	r9 += r3
	if r3 == 0 goto .L1267
	r4 = r9
	r4 -= r1
	r4 &= 7
	if r4 == 0 goto .L1270
	if r4 == 1 goto .L1367
	if r4 == 2 goto .L1368
	if r4 == 3 goto .L1369
	if r4 == 4 goto .L1370
	if r4 == 5 goto .L1371
	if r4 == 6 goto .L1372
	r9 += -1
	r2 += -1
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
.L1372:
	r9 += -1
	r2 += -1
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r3
.L1371:
	r9 += -1
	r2 += -1
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r0
.L1370:
	r9 += -1
	r2 += -1
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r4
.L1369:
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
	r2 += -1
	r0 = *(u8 *) (r9+-1)
	*(u8 *) (r2+0) = r0
	r9 += -1
	if r1 == r9 goto .L1418
.L1270:
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
	if r1 != r9 goto .L1270
	exit
.L1268:
	if r1 != r2 goto .L1419
.L1267:
	exit
.L1419:
	if r3 == 0 goto .L1267
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L1271
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L1420
.L1271:
	r0 = r1
	r0 += r3
	r3 &= 7
	if r3 == 0 goto .L1277
	if r3 == 1 goto .L1379
	if r3 == 2 goto .L1380
	if r3 == 3 goto .L1381
	if r3 == 4 goto .L1382
	if r3 == 5 goto .L1383
	if r3 == 6 goto .L1384
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1384:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1383:
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1382:
	r9 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r9
	r1 += 1
.L1381:
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
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
	if r0 == r1 goto .L1421
.L1277:
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
	if r0 != r1 goto .L1277
	goto .L1267
.L1420:
	r5 = r1
	r9 = r2
	r5 += 1
	r9 -= r5
	if r9 <= 6 goto .L1271
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
	if r5 == 0 goto .L1274
	if r5 == 1 goto .L1373
	if r5 == 2 goto .L1374
	if r5 == 3 goto .L1375
	if r5 == 4 goto .L1376
	if r5 == 5 goto .L1377
	if r5 != 6 goto .L1422
.L1378:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1377:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1376:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1375:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1374:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1373:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r6 == r0 goto .L1417
.L1274:
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
	if r6 != r0 goto .L1274
.L1417:
	r0 = r3
	r2 += r9
	r0 -= r9
	if r3 == r9 goto .L1267
	r3 = *(u8 *) (r6+0)
	*(u8 *) (r2+0) = r3
	if r0 == 1 goto .L1267
	r9 = *(u8 *) (r6+1)
	*(u8 *) (r2+1) = r9
	if r0 == 2 goto .L1267
	r4 = *(u8 *) (r6+2)
	*(u8 *) (r2+2) = r4
	if r0 == 3 goto .L1267
	r1 = *(u8 *) (r6+3)
	*(u8 *) (r2+3) = r1
	if r0 == 4 goto .L1267
	r5 = *(u8 *) (r6+4)
	*(u8 *) (r2+4) = r5
	if r0 == 5 goto .L1267
	r3 = *(u8 *) (r6+5)
	*(u8 *) (r2+5) = r3
	if r0 == 6 goto .L1267
	r0 = *(u8 *) (r6+6)
	*(u8 *) (r2+6) = r0
	exit
.L1418:
	exit
.L1422:
	r0 = *(u64 *) (r1+0)
	r4 += 8
	*(u64 *) (r2+0) = r0
	r0 = r1
	r0 += 8
	goto .L1378
.L1421:
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
.L1439:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1462
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1462
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1462
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1462
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1462
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1462
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1462
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1462
	if r0 != 32 goto .L1439
	r0 = r4
	exit
.L1462:
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
	if r1 == 0 goto .L1465
	r0 &= 1
	if r0 != 0 goto .L1465
	r0 = 1
.L1466:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1484
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1465
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1465
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1465
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1465
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1465
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1465
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1466
	exit
.L1465:
	exit
.L1484:
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
	if r8 s>= r0 goto .L1488
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1489
	r0 = r7
	r0 &= 1
	exit
.L1488:
	r0 = 1
	exit
.L1489:
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
	if r8 s>= r0 goto .L1493
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1494
	r0 = r7
	r0 &= 1
	exit
.L1493:
	r0 = 1
	exit
.L1494:
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
	if r8 s>= r0 goto .L1498
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1499
	r0 = r7
	r0 &= 1
	exit
.L1498:
	r0 = 1
	exit
.L1499:
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
	if r0 != 0 goto .L1502
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1502
	if r6 s< 0 goto .L1518
	r7 = 0x40000000 ll
.L1504:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1505
.L1506:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1505:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1502
.L1507:
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
	if r3 != 0 goto .L1506
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1506
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
	if r0 != 0 goto .L1506
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
	if r3 != 0 goto .L1506
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
	if r9 != 0 goto .L1506
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
	if r4 != 0 goto .L1506
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
	if r3 != 0 goto .L1506
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1506
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1507
.L1502:
	r0 = r8
	exit
.L1518:
	r7 = 0x3f000000 ll
	goto .L1504
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
	if r0 != 0 goto .L1520
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1520
	if r6 s< 0 goto .L1536
	r7 = 0x4000000000000000 ll
.L1522:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1523
.L1524:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1523:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1520
.L1525:
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
	if r3 != 0 goto .L1524
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1524
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
	if r0 != 0 goto .L1524
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
	if r3 != 0 goto .L1524
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
	if r9 != 0 goto .L1524
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
	if r4 != 0 goto .L1524
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
	if r3 != 0 goto .L1524
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1524
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1525
.L1520:
	r0 = r8
	exit
.L1536:
	r7 = 0x3fe0000000000000 ll
	goto .L1522
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
	if r0 != 0 goto .L1538
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1538
	if r6 s< 0 goto .L1554
	r7 = 0x4000000000000000 ll
.L1540:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1541
.L1542:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1541:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1538
.L1543:
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
	if r3 != 0 goto .L1542
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1542
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
	if r0 != 0 goto .L1542
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
	if r3 != 0 goto .L1542
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
	if r9 != 0 goto .L1542
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
	if r4 != 0 goto .L1542
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
	if r3 != 0 goto .L1542
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1542
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1543
.L1538:
	r0 = r8
	exit
.L1554:
	r7 = 0x3fe0000000000000 ll
	goto .L1540
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1556
	r0 = r3
	r0 += -1
	if r0 <= 5 goto .L1557
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 != 0 goto .L1557
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
	if r5 == 0 goto .L1558
	if r5 == 1 goto .L1620
	if r5 == 2 goto .L1621
	if r5 == 3 goto .L1622
	if r5 == 4 goto .L1623
	if r5 == 5 goto .L1624
	if r5 == 6 goto .L1625
	r0 = *(u64 *) (r2+0)
	r5 = *(u64 *) (r1+0)
	r2 += 8
	r0 ^= r5
	r4 = r2
	r2 = r0
	r0 = r1
	*(u64 *) (r1+0) = r2
	r0 += 8
.L1625:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1624:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1623:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1622:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1621:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1620:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r2 ^= r5
	*(u64 *) (r0+0) = r2
	r4 += 8
	r0 += 8
	if r6 == r4 goto .L1655
.L1558:
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
	if r6 != r4 goto .L1558
.L1655:
	r0 = r1
	r2 = r3
	r0 += r9
	r2 -= r9
	if r3 == r9 goto .L1556
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r6+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L1556
	r4 = *(u8 *) (r0+1)
	r5 = *(u8 *) (r6+1)
	r5 ^= r4
	*(u8 *) (r0+1) = r5
	if r2 == 2 goto .L1556
	r9 = *(u8 *) (r0+2)
	r3 = *(u8 *) (r6+2)
	r3 ^= r9
	*(u8 *) (r0+2) = r3
	if r2 == 3 goto .L1556
	r4 = *(u8 *) (r0+3)
	r5 = *(u8 *) (r6+3)
	r5 ^= r4
	*(u8 *) (r0+3) = r5
	if r2 == 4 goto .L1556
	r9 = *(u8 *) (r0+4)
	r3 = *(u8 *) (r6+4)
	r3 ^= r9
	*(u8 *) (r0+4) = r3
	if r2 == 5 goto .L1556
	r4 = *(u8 *) (r0+5)
	r5 = *(u8 *) (r6+5)
	r5 ^= r4
	*(u8 *) (r0+5) = r5
	if r2 == 6 goto .L1556
	r9 = *(u8 *) (r0+6)
	r2 = *(u8 *) (r6+6)
	r2 ^= r9
	*(u8 *) (r0+6) = r2
.L1556:
	r0 = r1
	exit
.L1557:
	r4 = r2
	r9 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1560
	if r3 == 1 goto .L1626
	if r3 == 2 goto .L1627
	if r3 == 3 goto .L1628
	if r3 == 4 goto .L1629
	if r3 == 5 goto .L1630
	if r3 == 6 goto .L1631
	r3 = *(u8 *) (r2+0)
	r0 = *(u8 *) (r1+0)
	r2 += 1
	r3 ^= r0
	r9 += 1
	*(u8 *) (r1+0) = r3
.L1631:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1630:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r9 += 1
	r5 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r5
.L1629:
	r0 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1628:
	r5 = *(u8 *) (r9+0)
	r0 = *(u8 *) (r2+0)
	r9 += 1
	r0 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r0
.L1627:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1626:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r5 ^= r0
	*(u8 *) (r9+0) = r5
	r2 += 1
	r9 += 1
	if r4 == r2 goto .L1556
.L1560:
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
	if r4 != r2 goto .L1560
	goto .L1556
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1663
	r0 = r1
.L1658:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1657
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1657
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1657
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1657
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1657
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1657
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1657
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1658
.L1657:
	if r3 == 0 goto .L1660
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1659
	if r5 == 1 goto .L1711
	if r5 == 2 goto .L1712
	if r5 == 3 goto .L1713
	if r5 == 4 goto .L1714
	if r5 == 5 goto .L1715
	if r5 != 6 goto .L1733
.L1716:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1662
	r2 += 1
	r0 += 1
	r3 += -1
.L1715:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1662
	r2 += 1
	r0 += 1
	r3 += -1
.L1714:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1662
	r2 += 1
	r0 += 1
	r3 += -1
.L1713:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1662
	r2 += 1
	r0 += 1
	r3 += -1
.L1712:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1662
	r2 += 1
	r0 += 1
	r3 += -1
.L1711:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1662
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1660
.L1659:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1662
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1662
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1662
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1662
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1662
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1662
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1662
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1662
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1659
.L1660:
	*(u8 *) (r0+0) = 0
.L1662:
	r0 = r1
	exit
.L1733:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1662
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1716
.L1663:
	r0 = r1
	goto .L1657
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1734
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1735
	if r0 == 1 goto .L1776
	if r0 == 2 goto .L1777
	if r0 == 3 goto .L1778
	if r0 == 4 goto .L1779
	if r0 == 5 goto .L1780
	if r0 != 6 goto .L1790
.L1781:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1734
	r3 += 1
.L1780:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1791
.L1734:
	r0 = r3
	exit
.L1790:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1734
	r3 = 1
	goto .L1781
.L1791:
	r3 += 1
.L1779:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1734
	r3 += 1
.L1778:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1734
	r3 += 1
.L1777:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1734
	r3 += 1
.L1776:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1734
	r3 += 1
	if r2 == r3 goto .L1734
.L1735:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1734
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1734
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1734
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1734
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1734
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1734
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1734
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1734
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1735
	goto .L1734
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1797
.L1801:
	r3 = r2
	goto .L1796
.L1795:
	r3 += 1
	if r4 == r5 goto .L1794
.L1796:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1795
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1801
.L1797:
	r1 = r5
.L1794:
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
.L1804:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1803
	r3 = r1
.L1803:
	r1 += 1
	if r0 != 0 goto .L1804
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
	if r0 == 0 goto .L1948
	r0 = r2
.L1808:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1917
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1917
	r0 = r3
	r4 = *(u8 *) (r3+2)
	r0 += 2
	if r4 == 0 goto .L1917
	r0 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1917
	r0 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1917
	r0 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1917
	r0 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1917
	r0 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1808
.L1917:
	r4 = r0
	r4 -= r2
	if r0 == r2 goto .L1948
	r4 += -1
	r9 = r5;r9 &= 0xff
	r7 = r4
	r8 = r1
	goto .L1814
.L1950:
	r8 += 1
	if r0 == 0 goto .L1949
.L1814:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L1950
	r1 = r8
	r1 += r7
	*(u64 *) (r10+-8) = r1
	r4 = r7
	r0 = r9
	r6 = r2
	r3 = r8
	r4 &= 7
	if r4 == 0 goto .L1921
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L1811
	if r3 != r9 goto .L1811
	r3 = r8
	r6 += 1
	r3 += 1
	r0 = *(u8 *) (r8+1)
	if r0 == 0 goto .L1811
	if r4 == 1 goto .L1921
	if r4 == 2 goto .L1867
	if r4 == 3 goto .L1868
	if r4 == 4 goto .L1869
	if r4 == 5 goto .L1870
	if r4 == 6 goto .L1871
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1811
	if r1 != r0 goto .L1811
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1811
.L1871:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1811
	if r4 != r0 goto .L1811
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1811
.L1870:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1811
	if r1 != r0 goto .L1811
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1811
.L1869:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1811
	if r4 != r0 goto .L1811
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1811
.L1868:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1811
	if r1 != r0 goto .L1811
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1811
.L1867:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1811
	if r4 != r0 goto .L1811
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1811
.L1921:
	*(u64 *) (r10+-16) = r8
.L1810:
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1941
	r1 = *(u64 *) (r10+-8)
	if r3 == r1 goto .L1941
	if r8 != r0 goto .L1941
	r6 += 1
	r4 = r3
	r1 = r6
	r4 += 1
	r0 = *(u8 *) (r3+1)
	if r0 == 0 goto .L1941
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1941
	if r8 != r0 goto .L1941
	r6 += 1
	r0 = *(u8 *) (r3+2)
	if r0 == 0 goto .L1941
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1941
	if r8 != r0 goto .L1941
	r6 = r1
	r0 = *(u8 *) (r3+3)
	r6 += 2
	if r0 == 0 goto .L1941
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1941
	if r3 != r0 goto .L1941
	r6 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L1941
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1941
	if r8 != r0 goto .L1941
	r6 += 1
	r0 = *(u8 *) (r4+4)
	if r0 == 0 goto .L1941
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1941
	if r3 != r0 goto .L1941
	r6 += 1
	r0 = *(u8 *) (r4+5)
	if r0 == 0 goto .L1941
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1941
	if r8 != r0 goto .L1941
	r6 += 1
	r0 = *(u8 *) (r4+6)
	if r0 == 0 goto .L1941
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1941
	if r3 != r0 goto .L1941
	r3 = r4
	r1 += 7
	r3 += 7
	r6 = r1
	r0 = *(u8 *) (r4+7)
	if r0 != 0 goto .L1810
.L1941:
	r8 = *(u64 *) (r10+-16)
.L1811:
	r4 = *(u8 *) (r6+0)
	if r4 == r0 goto .L1817
	r8 += 1
	goto .L1814
.L1949:
	exit
.L1817:
	r1 = r8
.L1948:
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
	if r8 s>= r0 goto .L1961
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1955
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L1954
.L1955:
	r0 = r6
	exit
.L1961:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L1955
.L1954:
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
	if r4 == 0 goto .L1962
	if r4 >= r2 goto .L1973
	r2 -= r4
	r9 = r1
	r9 += r2
	if r1 > r9 goto .L1973
	r5 = *(u8 *) (r3+0)
	r4 += -1
	r5 <<= 56
	r3 += 1
	r5 s>>= 56
	*(u64 *) (r10+-8) = r3
.L1968:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	r1 <<= 56
	r3 += 1
	r1 s>>= 56
	if r1 == r5 goto .L2037
	r0 = r3
.L1964:
	if r9 >= r0 goto .L1968
.L1973:
	r0 = 0
.L1962:
	exit
.L2037:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1962
.L1967:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L1965
	if r6 == 1 goto .L2011
	if r6 == 2 goto .L2012
	if r6 == 3 goto .L2013
	if r6 == 4 goto .L2014
	if r6 == 5 goto .L2015
	if r6 == 6 goto .L2016
	r6 = *(u8 *) (r3+0)
	r1 = *(u8 *) (r2+0)
	if r6 != r1 goto .L2026
	r1 = r3
	r2 += 1
	r1 += 1
.L2016:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2026
	r1 += 1
	r2 += 1
.L2015:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2026
	r1 += 1
	r2 += 1
.L2014:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2026
	r1 += 1
	r2 += 1
.L2013:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2026
	r1 += 1
	r2 += 1
.L2012:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2026
	r1 += 1
	r2 += 1
.L2011:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2026
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L2038
.L1965:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2026
	r8 = *(u8 *) (r1+1)
	r6 = *(u8 *) (r2+1)
	if r8 != r6 goto .L2026
	r8 = *(u8 *) (r1+2)
	r6 = *(u8 *) (r2+2)
	if r8 != r6 goto .L2026
	r8 = *(u8 *) (r1+3)
	r6 = *(u8 *) (r2+3)
	if r8 != r6 goto .L2026
	r8 = *(u8 *) (r1+4)
	r6 = *(u8 *) (r2+4)
	if r8 != r6 goto .L2026
	r8 = *(u8 *) (r1+5)
	r6 = *(u8 *) (r2+5)
	if r8 != r6 goto .L2026
	r8 = *(u8 *) (r1+6)
	r6 = *(u8 *) (r2+6)
	if r8 != r6 goto .L2026
	r8 = *(u8 *) (r1+7)
	r6 = *(u8 *) (r2+7)
	if r8 != r6 goto .L2026
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L1965
	exit
.L2026:
	if r3 > r9 goto .L1973
	r2 = *(u8 *) (r3+0)
	r0 = r3
	r2 <<= 56
	r0 += 1
	r2 s>>= 56
	if r2 != r5 goto .L1964
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L1967
.L2038:
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
	if r8 s>= r0 goto .L2077
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L2078
	*(u64 *) (r10+-24) = r8
.L2042:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L2048:
	r1 = r6
	r2 = r7
	*(u64 *) (r10+-8) = r6
	call	__muldf3
	r2 = 0x4000000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__gedf2
	r8 += 1
	r5 = r0
	r8 <<= 32
	r2 = r7
	r8 s>>= 32
	r1 = r6
	r0 = r8
	r0 += 1
	r0 <<= 32
	if r5 s< 0 goto .L2049
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
	if r0 s< 0 goto .L2049
	r4 s>>= 32
	r8 = r4
	call	__muldf3
	r1 = *(u64 *) (r10+-8)
	r6 = r0
	r2 = 0x4000000000000000 ll
	call	__gedf2
	*(u64 *) (r10+-8) = r6
	r9 = r0
	r2 = r7
	r0 = r8
	r1 = r6
	r0 += 1
	r0 <<= 32
	if r9 s< 0 goto .L2049
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r2 = 0x4000000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__gedf2
	if r0 s>= 0 goto .L2048
.L2049:
	r2 = *(u64 *) (r10+-16)
	*(u32 *) (r2+0) = r8
	r4 = *(u64 *) (r10+-24)
	if r4 == 0 goto .L2055
	r5 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r5
	exit
.L2078:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r8 s< r0 goto .L2045
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L2054
.L2045:
	r0 = *(u64 *) (r10+-16)
	*(u32 *) (r0+0) = 0
	r0 = r6
	exit
.L2077:
	r3 = -9223372036854775808 ll
	r7 = r6
	r2 = 0xbff0000000000000 ll
	r7 ^= r3
	r1 = r6
	call	__ledf2
	if r8 s<= r0 goto .L2079
	r6 = r7
	*(u64 *) (r10+-24) = 1
	goto .L2042
.L2055:
	r0 = r6
	exit
.L2079:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s> r8 goto .L2052
	r1 = *(u64 *) (r10+-16)
	r0 = r6
	*(u32 *) (r1+0) = r8
	exit
.L2052:
	*(u64 *) (r10+-24) = 1
.L2043:
	r8 = 0
	r6 = r7
	r7 = r8
.L2050:
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
	if r7 s< r0 goto .L2049
	r5 s>>= 32
	*(u64 *) (r10+-8) = r6
	r8 = r5
	call	__adddf3
	r1 = *(u64 *) (r10+-8)
	r6 = r0
	r2 = 0x3fd0000000000000 ll
	call	__ltdf2
	*(u64 *) (r10+-8) = r6
	r4 = r0
	r2 = r6
	r0 = r8
	r1 = r6
	r0 += -1
	r0 <<= 32
	if r7 s< r4 goto .L2049
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
	if r7 s< r0 goto .L2049
	r9 s>>= 32
	r8 = r9
	call	__adddf3
	r2 = 0x3fd0000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	if r7 s>= r0 goto .L2050
	goto .L2049
.L2054:
	r7 = r6
	*(u64 *) (r10+-24) = r8
	goto .L2043
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L2083
	r0 = 0
.L2082:
	r5 = r2
	r1 = r3
	r4 = r3
	r5 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L2099
	r9 = r5
	r2 = r3
	r1 &= 1
	r9 += r5
	r1 = -r1
	r2 >>= 2
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L2080
	r5 = r9
	r1 = r3
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 3
	r2 &= r9
	r0 += r2
	if r1 == 0 goto .L2080
	r4 = r5
	r9 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r9 >>= 4
	r1 &= r5
	r0 += r1
	if r9 == 0 goto .L2080
	r5 = r4
	r1 = r3
	r9 &= 1
	r5 += r4
	r9 = -r9
	r1 >>= 5
	r9 &= r4
	r0 += r9
	if r1 == 0 goto .L2080
	r4 = r5
	r2 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r2 >>= 6
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L2080
	r9 = r4
	r5 = r3
	r2 &= 1
	r9 += r4
	r2 = -r2
	r5 >>= 7
	r2 &= r4
	r0 += r2
	if r5 == 0 goto .L2080
	r5 &= 1
	r2 = r9
	r5 = -r5
	r2 += r9
	r5 &= r9
	r3 >>= 8
	r0 += r5
	if r3 != 0 goto .L2082
	exit
.L2083:
	r0 = r1
.L2080:
	exit
.L2099:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L2102
	r9 = 32
	r4 = 1
.L2101:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2102
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2103
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2101
.L2104:
	if r3 != 0 goto .L2108
	r0 = r9
.L2108:
	exit
.L2103:
	if r4 == 0 goto .L2110
.L2102:
	r9 = 0
.L2107:
	if r2 >= r0 goto .L2106
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2106:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2107
	goto .L2104
.L2110:
	r9 = r4
	goto .L2104
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
	if r2 == r1 goto .L2131
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
.L2131:
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
	if r0 == r2 goto .L2134
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2134:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2138
	r0 = 0
.L2137:
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
	if r3 == 0 goto .L2154
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
	if r1 == 0 goto .L2136
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
	if r2 == 0 goto .L2136
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
	if r1 == 0 goto .L2136
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
	if r2 == 0 goto .L2136
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
	if r3 == 0 goto .L2136
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
	if r1 == 0 goto .L2136
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
	if r1 != 0 goto .L2137
	exit
.L2138:
	r0 = r1
.L2136:
	exit
.L2154:
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
	if r2 >= r8 goto .L2156
	r2 += r3
	if r8 <= r2 goto .L2339
.L2156:
	if r1 == 0 goto .L2159
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
	if r4 == 0 goto .L2160
	if r4 == 1 goto .L2276
	if r4 == 2 goto .L2277
	if r4 == 3 goto .L2278
	if r4 == 4 goto .L2279
	if r4 == 5 goto .L2280
	if r4 == 6 goto .L2281
	r1 = *(u64 *) (r7+0)
	r9 += 8
	*(u64 *) (r8+0) = r1
	r2 += 8
.L2281:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2280:
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r1
	r9 += 8
.L2279:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2278:
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r1
	r9 += 8
.L2277:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2276:
	r1 = *(u64 *) (r9+0)
	*(u64 *) (r2+0) = r1
	r9 += 8
	r2 += 8
	if r9 == r5 goto .L2330
.L2160:
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
	if r9 != r5 goto .L2160
.L2330:
	if r0 > r3 goto .L2340
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
	if r2 <= 6 goto .L2162
	r4 = r0
	r2 = r7
	r4 += 1
	r1 = r5
	r2 += r4
	r1 -= r2
	if r1 > 6 goto .L2341
.L2162:
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
	if r5 == 0 goto .L2167
	if r5 == 1 goto .L2288
	if r5 == 2 goto .L2289
	if r5 == 3 goto .L2290
	if r5 == 4 goto .L2291
	if r5 == 5 goto .L2292
	if r5 == 6 goto .L2293
	r1 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r1
	r9 += 1
.L2293:
	r4 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r4
	r9 += 1
.L2292:
	r2 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r2
	r9 += 1
.L2291:
	r5 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r5
	r9 += 1
.L2290:
	r1 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r1
	r9 += 1
.L2289:
	r4 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r4
	r9 += 1
.L2288:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r2
	r9 += 1
	r3 += 1
	if r9 == r0 goto .L2342
.L2167:
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
	if r9 != r0 goto .L2167
	exit
.L2341:
	r4 = r9
	r4 |= r5
	r4 &= 7
	if r4 != 0 goto .L2162
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
	if r4 == 0 goto .L2335
	if r4 == 1 goto .L2282
	if r4 == 2 goto .L2283
	if r4 == 3 goto .L2284
	if r4 == 4 goto .L2285
	if r4 == 5 goto .L2286
	if r4 == 6 goto .L2287
	r1 = *(u64 *) (r9+0)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r2+0) = r1
	r1 = r9
	r2 += 8
	r1 += 8
.L2287:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2286:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2285:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2284:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2283:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2282:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r5 goto .L2329
.L2335:
	r4 = r5
.L2165:
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
	if r1 != r4 goto .L2165
.L2329:
	r2 = r6
	r6 &= 7
	r2 &= -8
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2155
	r4 = r8
	r1 = r7
	r4 += r0
	r1 += r0
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r9 = r0
	r9 += 1
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2155
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 2
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2155
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 3
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2155
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 4
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2155
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 5
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2155
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2155
	r3 = r7
	r9 = r8
	r3 += r0
	r9 += r0
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r1
	exit
.L2339:
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2155
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2169
	if r3 == 1 goto .L2270
	if r3 == 2 goto .L2271
	if r3 == 3 goto .L2272
	if r3 == 4 goto .L2273
	if r3 == 5 goto .L2274
	if r3 != 6 goto .L2343
.L2275:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2274:
	r1 = r8
	r0 = r7
	r1 += r9
	r0 += r9
	r9 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
.L2273:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2272:
	r1 = r8
	r0 = r7
	r1 += r9
	r0 += r9
	r9 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
.L2271:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2270:
	r1 = r7
	r0 = r8
	r1 += r9
	r0 += r9
	r2 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r2
	r9 += -1
	if r9 == -1 goto .L2344
.L2169:
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
	if r9 != -1 goto .L2169
.L2155:
	exit
.L2159:
	if r3 == 0 goto .L2155
	r9 = r8
	r9 += r0
	*(u64 *) (r10+-16) = r9
	r9 = r7
	r9 += r0
	goto .L2162
.L2340:
	exit
.L2343:
	r1 = r7
	r0 = r8
	r1 += r5
	r0 += r5
	r2 = *(u8 *) (r1+0)
	r5 += -1
	*(u8 *) (r0+0) = r2
	r9 = r5
	goto .L2275
.L2344:
	exit
.L2342:
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
	if r2 >= r1 goto .L2346
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2488
.L2346:
	if r5 == 0 goto .L2349
	r9 = r5
	r9 += -1
	if r9 <= 5 goto .L2350
	r0 = r8
	r0 |= r7
	r0 &= 7
	if r0 == 0 goto .L2489
.L2350:
	r5 += r5
	r0 = r8
	r4 = r5
	r1 = r7
	r4 += -2
	r5 += r8
	r4 >>= 1
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2355
	if r4 == 1 goto .L2449
	if r4 == 2 goto .L2450
	if r4 == 3 goto .L2451
	if r4 == 4 goto .L2452
	if r4 == 5 goto .L2453
	if r4 == 6 goto .L2454
	r9 = *(u16 *) (r8+0)
	r0 += 2
	*(u16 *) (r7+0) = r9
	r1 += 2
.L2454:
	r2 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r0 += 2
.L2453:
	r4 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r4
	r0 += 2
.L2452:
	r9 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r9
	r0 += 2
.L2451:
	r2 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r0 += 2
.L2450:
	r4 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r4
	r0 += 2
.L2449:
	r9 = *(u16 *) (r0+0)
	*(u16 *) (r1+0) = r9
	r0 += 2
	r1 += 2
	if r0 == r5 goto .L2349
.L2355:
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
	if r0 != r5 goto .L2355
.L2349:
	r2 = r3
	r2 &= 1
	if r2 == 0 goto .L2345
.L2490:
	r3 += -1
	r1 = r8
	r3 = r3;r3 &= 0xffffffff
	r0 = r7
	r1 += r3
	r0 += r3
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	exit
.L2489:
	r1 = r8
	r2 = r7
	r1 += 2
	r2 -= r1
	if r2 <= 4 goto .L2350
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
	if r2 == 0 goto .L2353
	if r2 == 1 goto .L2443
	if r2 == 2 goto .L2444
	if r2 == 3 goto .L2445
	if r2 == 4 goto .L2446
	if r2 == 5 goto .L2447
	if r2 == 6 goto .L2448
	r0 = *(u64 *) (r8+0)
	r4 += 8
	*(u64 *) (r7+0) = r0
	r1 += 8
.L2448:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2447:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2446:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2445:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2444:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2443:
	r0 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r0
	r4 += 8
	r1 += 8
	if r4 == r6 goto .L2481
.L2353:
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
	if r4 != r6 goto .L2353
.L2481:
	r9 <<= 2
	if r5 == r9 goto .L2349
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
	if r4 > r5 goto .L2349
	r4 += r4
	r2 = r8
	r1 = r7
	r2 += r4
	r1 += r4
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r9 += 2
	if r9 > r5 goto .L2349
	r9 += r9
	r5 = r8
	r4 = r7
	r5 += r9
	r4 += r9
	r9 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r9
	r2 = r3
	r2 &= 1
	if r2 == 0 goto .L2345
	goto .L2490
.L2488:
	r1 = r3
	r1 += -1
	r4 = r1;r4 &= 0xffffffff
	r9 = r4
	if r3 == 0 goto .L2345
	r2 = r4
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L2358
	if r2 == 1 goto .L2437
	if r2 == 2 goto .L2438
	if r2 == 3 goto .L2439
	if r2 == 4 goto .L2440
	if r2 == 5 goto .L2441
	if r2 == 6 goto .L2442
	r3 = r8
	r5 = r7
	r3 += r4
	r5 += r4
	r0 = *(u8 *) (r3+0)
	r4 += -1
	*(u8 *) (r5+0) = r0
	r9 = r4
.L2442:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2441:
	r3 = r7
	r5 = r8
	r3 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
.L2440:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2439:
	r3 = r7
	r5 = r8
	r3 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
.L2438:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2437:
	r3 = r8
	r5 = r7
	r3 += r9
	r5 += r9
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2491
.L2358:
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
	if r9 != -1 goto .L2358
.L2345:
	exit
.L2491:
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
	if r2 >= r1 goto .L2493
	r1 = r2
	r1 += r3
	if r8 <= r1 goto .L2723
.L2493:
	if r6 == 0 goto .L2724
	r2 = r6
	r2 += -1
	if r2 <= 7 goto .L2498
	r5 = r8
	r5 |= r9
	r5 &= 7
	if r5 == 0 goto .L2725
.L2498:
	r6 <<= 2
	r1 = r9
	r4 = r6
	r5 = r8
	r4 += -4
	r6 += r9
	r4 >>= 2
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2502
	if r4 == 1 goto .L2650
	if r4 == 2 goto .L2651
	if r4 == 3 goto .L2652
	if r4 == 4 goto .L2653
	if r4 == 5 goto .L2654
	if r4 == 6 goto .L2655
	r2 = *(u32 *) (r9+0)
	r1 += 4
	*(u32 *) (r8+0) = r2
	r5 += 4
.L2655:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2654:
	r2 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r2
	r1 += 4
.L2653:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2652:
	r2 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r2
	r1 += 4
.L2651:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2650:
	r2 = *(u32 *) (r1+0)
	*(u32 *) (r5+0) = r2
	r1 += 4
	r5 += 4
	if r1 == r6 goto .L2503
.L2502:
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
	if r1 != r6 goto .L2502
.L2503:
	if r0 > r3 goto .L2492
	r6 = r3
	r5 = r8
	r6 -= r0
	r5 += r0
	r6 = r6;r6 &= 0xffffffff
	r1 = r6
	r1 += -1
	if r1 <= 6 goto .L2726
	r4 = r9
	r1 = r0
	r4 += r0
	r1 += 1
	*(u64 *) (r10+-8) = r4
	r2 = r9
	r2 += r1
	r1 = r5
	r1 -= r2
	if r1 > 6 goto .L2727
.L2497:
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
	if r3 == 0 goto .L2508
	if r3 == 1 goto .L2662
	if r3 == 2 goto .L2663
	if r3 == 3 goto .L2664
	if r3 == 4 goto .L2665
	if r3 == 5 goto .L2666
	if r3 == 6 goto .L2667
	r1 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r1
	r4 += 1
.L2667:
	r2 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r2
	r4 += 1
.L2666:
	r9 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r9
	r4 += 1
.L2665:
	r3 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r3
	r4 += 1
.L2664:
	r1 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r1
	r4 += 1
.L2663:
	r2 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r2
	r4 += 1
.L2662:
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r4 += 1
	r5 += 1
	if r4 == r0 goto .L2728
.L2508:
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
	if r4 != r0 goto .L2508
	exit
.L2725:
	r1 = r9
	r4 = r8
	r1 += 4
	r4 ^= r1
	r2 = r4
	r2 = -r2
	r2 |= r4
	if r2 s>= 0 goto .L2498
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
	if r4 == 0 goto .L2500
	if r4 == 1 goto .L2644
	if r4 == 2 goto .L2645
	if r4 == 3 goto .L2646
	if r4 == 4 goto .L2647
	if r4 == 5 goto .L2648
	if r4 == 6 goto .L2649
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r8+0) = r1
	r1 = r9
	r1 += 8
.L2649:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2648:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2647:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2646:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2645:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2644:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r7 goto .L2712
.L2500:
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
	if r1 != r7 goto .L2500
.L2712:
	r5 <<= 1
	if r6 == r5 goto .L2503
	r5 <<= 2
	r2 = r9
	r1 = r8
	r2 += r5
	r1 += r5
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	goto .L2503
.L2727:
	r2 = r4
	r2 |= r5
	r2 &= 7
	if r2 != 0 goto .L2497
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
	if r4 == 0 goto .L2718
	if r4 == 1 goto .L2656
	if r4 == 2 goto .L2657
	if r4 == 3 goto .L2658
	if r4 == 4 goto .L2659
	if r4 == 5 goto .L2660
	if r4 == 6 goto .L2661
	r1 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r1+0)
	r1 += 8
	*(u64 *) (r5+0) = r2
	r2 = r5
	r2 += 8
.L2661:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2660:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2659:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2658:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2657:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2656:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r7 goto .L2711
.L2718:
	r4 = r7
.L2506:
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
	if r1 != r4 goto .L2506
.L2711:
	r1 = r6
	r6 &= 7
	r1 &= -8
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2492
	r2 = r8
	r4 = r9
	r2 += r0
	r4 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 1
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2492
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r5 = r0
	r5 += 2
	r1 = r5;r1 &= 0xffffffff
	if r1 > r3 goto .L2492
	r4 = r9
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 3
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2492
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r5 = r0
	r5 += 4
	r1 = r5;r1 &= 0xffffffff
	if r1 > r3 goto .L2492
	r4 = r9
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 5
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2492
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2492
	r9 += r0
	r3 = r8
	r5 = *(u8 *) (r9+0)
	r3 += r0
	*(u8 *) (r3+0) = r5
	exit
.L2723:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r4 = r5
	if r3 == 0 goto .L2492
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2722
	if r3 == 1 goto .L2638
	if r3 == 2 goto .L2639
	if r3 == 3 goto .L2640
	if r3 == 4 goto .L2641
	if r3 == 5 goto .L2642
	if r3 == 6 goto .L2643
	r1 = r9
	r0 = r8
	r1 += r5
	r0 += r5
	r2 = *(u8 *) (r1+0)
	r5 += -1
	*(u8 *) (r0+0) = r2
	r4 = r5
.L2643:
	r5 = r8
	r3 = r9
	r5 += r4
	r3 += r4
	r4 += -1
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r1
.L2642:
	r5 = r8
	r0 = r9
	r5 += r4
	r0 += r4
	r4 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r2
.L2641:
	r3 = r8
	r1 = r9
	r3 += r4
	r1 += r4
	r4 += -1
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r3+0) = r5
.L2640:
	r3 = r8
	r0 = r9
	r3 += r4
	r0 += r4
	r4 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r2
.L2639:
	r1 = r8
	r5 = r9
	r1 += r4
	r5 += r4
	r4 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r3
.L2638:
	r2 = r4
	r1 = r9
	r0 = r8
	r1 += r4
	r0 += r4
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r2 += -1
	r4 = r2
	if r2 == -1 goto .L2729
.L2722:
	r0 = r4
.L2510:
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
	if r0 != -1 goto .L2510
.L2492:
	exit
.L2724:
	if r3 == 0 goto .L2492
	r5 = r8
	r4 = r9
	r5 += r0
	r4 += r0
	*(u64 *) (r10+-8) = r4
	goto .L2497
.L2729:
	exit
.L2728:
	exit
.L2726:
	r4 = r9
	r4 += r0
	*(u64 *) (r10+-8) = r4
	goto .L2497
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
	if r0 != 0 goto .L2739
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2738
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2740
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2741
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2742
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2743
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2744
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2745
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2746
	r2 >>= 38
	if r2 != 0 goto .L2747
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2748
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2749
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2750
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2751
	r3 >>= 1
	if r3 != 0 goto .L2752
	r0 = 16
	if r1 != 0 goto .L2755
.L2738:
	exit
.L2739:
	r0 = 0
	exit
.L2750:
	r0 = 12
	exit
.L2755:
	r0 = 15
	exit
.L2740:
	r0 = 2
	exit
.L2741:
	r0 = 3
	exit
.L2742:
	r0 = 4
	exit
.L2743:
	r0 = 5
	exit
.L2744:
	r0 = 6
	exit
.L2745:
	r0 = 7
	exit
.L2746:
	r0 = 8
	exit
.L2747:
	r0 = 9
	exit
.L2748:
	r0 = 10
	exit
.L2749:
	r0 = 11
	exit
.L2751:
	r0 = 13
	exit
.L2752:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2759
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2760
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2761
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2762
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2763
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2764
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2765
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2766
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2767
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2768
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2769
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2770
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2771
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2772
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2773
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2776
	exit
.L2759:
	r0 = 0
	exit
.L2760:
	r0 = 1
	exit
.L2771:
	r0 = 12
	exit
.L2776:
	r0 = 15
	exit
.L2761:
	r0 = 2
	exit
.L2762:
	r0 = 3
	exit
.L2763:
	r0 = 4
	exit
.L2764:
	r0 = 5
	exit
.L2765:
	r0 = 6
	exit
.L2766:
	r0 = 7
	exit
.L2767:
	r0 = 8
	exit
.L2768:
	r0 = 9
	exit
.L2769:
	r0 = 10
	exit
.L2770:
	r0 = 11
	exit
.L2772:
	r0 = 13
	exit
.L2773:
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
	if r0 s>= 0 goto .L2783
	r1 = r6
	call	__fixsfdi
	exit
.L2783:
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
	if r1 == 0 goto .L2789
	r0 = 0
.L2788:
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
	if r3 == 0 goto .L2805
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
	if r1 == 0 goto .L2787
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
	if r2 == 0 goto .L2787
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
	if r1 == 0 goto .L2787
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
	if r2 == 0 goto .L2787
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
	if r3 == 0 goto .L2787
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
	if r1 == 0 goto .L2787
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
	if r1 != 0 goto .L2788
	exit
.L2789:
	r0 = r1
.L2787:
	exit
.L2805:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2809
	if r2 == 0 goto .L2810
	r0 = 0
.L2808:
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
	if r3 == 0 goto .L2826
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
	if r1 == 0 goto .L2807
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
	if r2 == 0 goto .L2807
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
	if r1 == 0 goto .L2807
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
	if r2 == 0 goto .L2807
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
	if r1 == 0 goto .L2807
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
	if r2 == 0 goto .L2807
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
	if r2 != 0 goto .L2808
	exit
.L2810:
	r0 = r2
.L2807:
	exit
.L2809:
	r0 = r1
	exit
.L2826:
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
	if r0 < r2 goto .L2829
	r9 = 32
	r4 = 1
.L2828:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2829
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2830
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2828
.L2831:
	if r3 != 0 goto .L2835
	r0 = r9
.L2835:
	exit
.L2830:
	if r4 == 0 goto .L2837
.L2829:
	r9 = 0
.L2834:
	if r2 >= r0 goto .L2833
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2833:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2834
	goto .L2831
.L2837:
	r9 = r4
	goto .L2831
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2859
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2860
	r0 = r8
	r0 &= 1
	exit
.L2860:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2859:
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
	if r3 s>= r0 goto .L2864
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2865
	r0 = r8
	r0 &= 1
	exit
.L2865:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2864:
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
	if r2 s< 0 goto .L2896
	if r3 == 0 goto .L2874
	r4 = 0
.L2870:
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
	if r2 == 0 goto .L2872
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
	if r2 == 0 goto .L2872
	r1 = 30
.L2873:
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
	if r3 == 0 goto .L2872
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
	if r2 == 0 goto .L2872
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
	if r9 == 0 goto .L2872
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
	if r3 == 0 goto .L2872
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
	if r2 == 0 goto .L2872
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2873
.L2872:
	if r4 == 0 goto .L2871
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2874:
	r0 = r3
.L2871:
	exit
.L2896:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2870
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2930
	r0 = 1
	r4 = 0
.L2898:
	if r2 s>= 0 goto .L2899
	r2 = -r2
	r4 = r0
.L2899:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2901
	r0 = 32
	r1 = 1
.L2900:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2901
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2902
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2900
.L2903:
	if r4 == 0 goto .L2897
	r0 = -r0
.L2897:
	exit
.L2902:
	if r1 == 0 goto .L2911
.L2901:
	r0 = 0
.L2906:
	if r2 >= r3 goto .L2905
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2905:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2906
	goto .L2903
.L2930:
	r1 = -r1
	r0 = 0
	r4 = 1
	goto .L2898
.L2911:
	r0 = r1
	goto .L2903
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2969
	r4 = 0
.L2932:
	if r0 s>= 0 goto .L2933
	r0 = -r0
.L2933:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2940
	r9 = 32
	r1 = 1
.L2934:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2940
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2968
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2934
.L2937:
	r0 = r3
	if r4 == 0 goto .L2931
	r0 = -r0
.L2931:
	exit
.L2968:
	if r1 == 0 goto .L2937
.L2940:
	if r0 >= r3 goto .L2939
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2939:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2940
	goto .L2937
.L2969:
	r1 = -r1
	r4 = 1
	goto .L2932
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r0 < r2 goto .L3085
	r4 = r2
	r1 = 0
	r4 <<= 48
	if r4 s<= r1 goto .L2973
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L3027
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2975
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L3028
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2977
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L3029
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2979
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L3030
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2981
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L3031
	r5 = r4
	r5 <<= 48
	if r5 s<= r1 goto .L2983
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L3032
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2985
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L3033
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2987
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L3034
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2989
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L3035
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2991
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L3036
	r9 = r4
	r9 <<= 48
	if r9 s<= r1 goto .L2993
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L3037
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2995
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L3038
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2997
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L3039
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2999
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L3040
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L3001
	r1 = r2
	r1 <<= 15
	r1 &= 0xffff
	if r1 > r0 goto .L3002
	if r1 != 0 goto .L3086
.L3003:
	if r3 != 0 goto .L3055
	r0 = r1
	exit
.L3055:
	exit
.L3035:
	r5 = 512
.L3022:
	r9 = r5
	r2 = r4
	r9 >>= 1
	r2 >>= 1
	r1 = 0
.L3023:
	if r2 >= r0 goto .L3005
	r0 -= r2
	r1 |= r9
	r0 &= 0xffff
.L3005:
	r2 = r5
	r9 = r4
	r2 >>= 2
	r9 >>= 2
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3006
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3006:
	r2 = r5
	r9 = r4
	r2 >>= 3
	r9 >>= 3
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3007
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3007:
	r2 = r5
	r9 = r4
	r2 >>= 4
	r9 >>= 4
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3008
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3008:
	r2 = r5
	r9 = r4
	r2 >>= 5
	r9 >>= 5
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3009
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3009:
	r2 = r5
	r9 = r4
	r2 >>= 6
	r9 >>= 6
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3010
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3010:
	r2 = r5
	r9 = r4
	r2 >>= 7
	r9 >>= 7
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3011
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3011:
	r2 = r5
	r9 = r4
	r2 >>= 8
	r9 >>= 8
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3012
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3012:
	r2 = r5
	r9 = r4
	r2 >>= 9
	r9 >>= 9
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3013
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3013:
	r2 = r5
	r9 = r4
	r2 >>= 10
	r9 >>= 10
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3014
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3014:
	r2 = r5
	r9 = r4
	r2 >>= 11
	r9 >>= 11
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3015
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3015:
	r2 = r5
	r9 = r4
	r2 >>= 12
	r9 >>= 12
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3016
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3016:
	r2 = r5
	r9 = r4
	r2 >>= 13
	r9 >>= 13
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3017
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3017:
	r2 = r5
	r9 = r4
	r2 >>= 14
	r9 >>= 14
	if r2 == 0 goto .L3003
	if r9 >= r0 goto .L3018
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L3018:
	r4 >>= 15
	if r5 == 16384 goto .L3003
	if r4 >= r0 goto .L3025
	r0 -= r4
	r1 |= 1
	r0 &= 0xffff
	goto .L3003
.L3086:
	r4 = 32768
	r0 += -32768
	r2 = 16384
	r0 &= 0xffff
	r9 = r2
	r5 = r4
	r1 = r4
	goto .L3023
.L3025:
	r0 = 0
	goto .L3003
.L3085:
	if r2 == r0 goto .L3024
	r1 = 0
	goto .L3003
.L2973:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L3003
.L2975:
	r0 -= r4
	r5 = 2
	r0 &= 0xffff
	r2 &= 32767
	r9 = 1
	r1 = r5
	goto .L3023
.L2977:
	r0 -= r4
	r5 = 4
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2
	r1 = r5
	goto .L3023
.L2979:
	r0 -= r4
	r5 = 8
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4
	r1 = r5
	goto .L3023
.L2981:
	r0 -= r4
	r5 = 16
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8
	r1 = r5
	goto .L3023
.L2983:
	r0 -= r4
	r5 = 32
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16
	r1 = r5
	goto .L3023
.L2985:
	r0 -= r4
	r5 = 64
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 32
	r1 = r5
	goto .L3023
.L2987:
	r0 -= r4
	r5 = 128
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 64
	r1 = r5
	goto .L3023
.L2989:
	r0 -= r4
	r5 = 256
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 128
	r1 = r5
	goto .L3023
.L2991:
	r0 -= r4
	r5 = 512
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 256
	r1 = r5
	goto .L3023
.L3024:
	r1 = 1
	r0 = 0
	goto .L3003
.L3027:
	r5 = 2
	goto .L3022
.L2993:
	r0 -= r4
	r5 = 1024
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 512
	r1 = r5
	goto .L3023
.L3028:
	r5 = 4
	goto .L3022
.L2995:
	r0 -= r4
	r5 = 2048
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 1024
	r1 = r5
	goto .L3023
.L2997:
	r0 -= r4
	r5 = 4096
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2048
	r1 = r5
	goto .L3023
.L3029:
	r5 = 8
	goto .L3022
.L2999:
	r0 -= r4
	r5 = 8192
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4096
	r1 = r5
	goto .L3023
.L3030:
	r5 = 16
	goto .L3022
.L3031:
	r5 = 32
	goto .L3022
.L3001:
	r0 -= r4
	r5 = 16384
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8192
	r1 = r5
	goto .L3023
.L3002:
	r2 = r0
	r4 = 32768
	r2 <<= 48
	if r2 s<= 0 goto .L3026
	r5 = r4
	goto .L3022
.L3032:
	r5 = 64
	goto .L3022
.L3033:
	r5 = 128
	goto .L3022
.L3026:
	r0 = 0
	r5 = r4
	r1 = r4
	goto .L3005
.L3034:
	r5 = 256
	goto .L3022
.L3038:
	r5 = 4096
	goto .L3022
.L3039:
	r5 = 8192
	goto .L3022
.L3040:
	r5 = 16384
	goto .L3022
.L3037:
	r5 = 2048
	goto .L3022
.L3036:
	r5 = 1024
	goto .L3022
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L3089
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3088:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3089
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3090
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L3088
.L3091:
	if r3 == 0 goto .L3087
	r5 = r1
.L3087:
	r0 = r5
	exit
.L3090:
	if r4 == 0 goto .L3091
.L3089:
	r5 = 0
.L3094:
	if r2 >= r1 goto .L3093
	r1 -= r2
	r5 |= r4
.L3093:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3094
	goto .L3091
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L3121
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
.L3121:
	if r2 == 0 goto .L3124
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
.L3124:
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
	if r0 == 0 goto .L3126
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L3126:
	if r3 == 0 goto .L3129
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
.L3129:
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
	if r0 == 0 goto .L3131
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
.L3131:
	if r2 == 0 goto .L3134
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
.L3134:
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
	if r0 == 0 goto .L3136
	r4 = r2
	r0 = r2
	r4 s>>= 63
	r3 += -64
	r1 = r4
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L3136:
	if r3 == 0 goto .L3139
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
.L3139:
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
	if r1 <= 65534 goto .L3143
	r0 = 0
.L3143:
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
	if r4 != 0 goto .L3144
	r3 -= r1
	r0 += r9
	r0 += r3
	exit
.L3144:
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
	if r2 == 0 goto .L3147
	r6 = 0
.L3147:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3149
	r0 = 0
.L3149:
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
	if r0 s>= r3 goto .L3160
	if r3 s> r0 goto .L3161
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3160
	if r1 > r2 goto .L3161
	r0 = 1
	exit
.L3160:
	r0 = 0
	exit
.L3161:
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
	if r0 s>= r3 goto .L3167
	if r3 s> r0 goto .L3166
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3167
	r0 = 1
	if r1 <= r2 goto .L3168
	r0 &= 1
	exit
.L3167:
	r0 = -1
	exit
.L3168:
	r0 = 0
	r0 &= 1
	exit
.L3166:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L3173
	if r2 s> r4 goto .L3174
	if r3 >= r1 goto .L3173
	if r1 > r3 goto .L3174
	r0 = 1
	exit
.L3173:
	r0 = 0
	exit
.L3174:
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
	if r1 == 0 goto .L3177
	r6 = 0
.L3177:
	r6 &= 0xff
	if r0 == 0 goto .L3183
	r1 = 0
.L3179:
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
.L3183:
	r1 = r2
	goto .L3179
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3187
	if r2 != 0 goto .L3190
	r0 = r2
	exit
.L3187:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L3190:
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
	if r0 == 0 goto .L3192
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
.L3192:
	if r2 == 0 goto .L3195
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
.L3195:
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
	if r0 == 0 goto .L3197
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L3197:
	if r3 == 0 goto .L3200
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
.L3200:
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
	if r1 != 0 goto .L3207
	r3 = r0
.L3207:
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
	if r4 > r1 goto .L3214
	r9 = 0
.L3214:
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
	if r0 >= r4 goto .L3215
	r9 = 0
.L3215:
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
	if r9 >= r2 goto .L3216
	r0 = 0
.L3216:
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
	if r0 == 0 goto .L3218
.L3220:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3218:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3219
.L3221:
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
	if r4 != 0 goto .L3220
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3220
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
	if r0 != 0 goto .L3220
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
	if r4 != 0 goto .L3220
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
	if r9 != 0 goto .L3220
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
	if r3 != 0 goto .L3220
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
	if r4 != 0 goto .L3220
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3220
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3221
.L3219:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3217
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3217:
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
	if r0 == 0 goto .L3227
.L3229:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3227:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3228
.L3230:
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
	if r4 != 0 goto .L3229
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3229
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
	if r0 != 0 goto .L3229
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
	if r4 != 0 goto .L3229
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
	if r9 != 0 goto .L3229
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
	if r3 != 0 goto .L3229
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
	if r4 != 0 goto .L3229
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3229
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3230
.L3228:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3226
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3226:
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
	if r0 >= r3 goto .L3239
	if r3 > r0 goto .L3240
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3239
	if r1 > r2 goto .L3240
	r0 = 1
	exit
.L3239:
	r0 = 0
	exit
.L3240:
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
	if r0 >= r3 goto .L3246
	if r3 > r0 goto .L3245
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3246
	r0 = 1
	if r1 <= r2 goto .L3247
	r0 &= 1
	exit
.L3246:
	r0 = -1
	exit
.L3247:
	r0 = 0
	r0 &= 1
	exit
.L3245:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L3252
	if r2 > r4 goto .L3253
	if r3 >= r1 goto .L3252
	if r1 > r3 goto .L3253
	r0 = 1
	exit
.L3252:
	r0 = 0
	exit
.L3253:
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
