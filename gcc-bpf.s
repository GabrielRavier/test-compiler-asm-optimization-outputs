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
	r0 = r1
	r6 = r1
	r7 = r2
	r1 = r2
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L639
	if r0 == 0 goto .L644
	r0 = r2
	exit
.L639:
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L644
	r6 = r7
.L644:
	r0 = r6
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	r6 = r1
	r7 = r2
	r0 = r6
	r1 = r7
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L648
	if r2 == 0 goto .L653
	r0 = r7
	exit
.L648:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s> 0 goto .L653
	r6 = r7
.L653:
	r0 = r6
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	r0 = r1
	r6 = r1
	r7 = r2
	r1 = r2
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L657
	if r0 == 0 goto .L662
	r0 = r2
	exit
.L657:
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L662
	r6 = r7
.L662:
	r0 = r6
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	r0 = r1
	r7 = r1
	r6 = r2
	r1 = r2
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L666
	if r0 == 0 goto .L671
	r0 = r7
	exit
.L666:
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L671
	r6 = r7
.L671:
	r0 = r6
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r7 = r1
	r6 = r2
	r0 = r7
	r1 = r6
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L675
	if r2 == 0 goto .L680
	r0 = r7
	exit
.L675:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s> 0 goto .L680
	r6 = r7
.L680:
	r0 = r6
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	r0 = r1
	r7 = r1
	r6 = r2
	r1 = r2
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L684
	if r0 == 0 goto .L689
	r0 = r7
	exit
.L684:
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L689
	r6 = r7
.L689:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L693
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
	if r1 == 0 goto .L693
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L693
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 = r9
	r0 += 2
	if r1 == 0 goto .L693
	r9 = r1
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L693
	r5 = r1
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L693
	r2 += r1
	r0 += 1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+-1) = r1
.L693:
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
	if r2 == 0 goto .L719
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L713
	*(u64 *) (r2+8) = r1
.L713:
	exit
.L719:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L721
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L721:
	r1 = *(u64 *) (r1+8)
	if r1 == 0 goto .L720
	*(u64 *) (r1+0) = r0
.L720:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L731
	exit
.L731:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r4 = 4
.L739:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L733
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L733
	if r0 == 43 goto .L734
	if r0 != 45 goto .L758
	r3 = *(u8 *) (r1+1)
	r1 += 1
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r4 = r3;r4 &= 0xffffffff
	if r4 > 9 goto .L744
	r5 = 1
.L737:
	r0 = 0
	r9 = 9
.L741:
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
	if r9 <= r6 goto .L757
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
	if r9 <= r3 goto .L757
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
	if r9 <= r6 goto .L757
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
	if r9 > r6 goto .L741
.L757:
	if r5 != 0 goto .L740
	r0 = r4
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	exit
.L733:
	r1 += 1
	goto .L739
.L758:
	r3 += -48
	if r3 > 8 goto .L744
	r0 += -48
	r5 = 0
	r3 = r0
	goto .L737
.L734:
	r3 = *(u8 *) (r1+1)
	r5 = 0
	r3 <<= 56
	r1 += 1
	r3 s>>= 56
	r3 += -48
	r9 = r3;r9 &= 0xffffffff
	if r9 <= 8 goto .L737
.L744:
	r0 = 0
.L740:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 4
.L766:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L760
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L760
	if r0 == 43 goto .L761
	if r0 != 45 goto .L785
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 9 goto .L771
	r5 = 1
.L764:
	r2 = 0
	r9 = 9
.L768:
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
	if r9 <= r6 goto .L784
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
	if r9 <= r6 goto .L784
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
	if r9 <= r6 goto .L784
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
	if r9 > r6 goto .L768
.L784:
	if r5 != 0 goto .L759
	r2 = r4
	r2 -= r3
.L759:
	r0 = r2
	exit
.L760:
	r1 += 1
	goto .L766
.L785:
	r3 += -48
	if r3 > 8 goto .L771
	r5 = 0
	r0 += -48
	goto .L764
.L761:
	r0 = *(u8 *) (r1+1)
	r5 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 8 goto .L764
.L771:
	r2 = 0
	r0 = r2
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r4 = 4
.L791:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L787
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L787
	if r0 == 43 goto .L788
	if r0 != 45 goto .L812
	r0 = *(u8 *) (r1+1)
	r5 = 1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 8 goto .L798
.L792:
	r2 = 0
	r9 = 9
.L795:
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
	if r9 <= r6 goto .L811
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
	if r9 <= r6 goto .L811
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
	if r9 <= r6 goto .L811
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
	if r9 > r6 goto .L795
.L811:
	if r5 != 0 goto .L786
	r2 = r4
	r2 -= r3
.L786:
	r0 = r2
	exit
.L787:
	r1 += 1
	goto .L791
.L812:
	r3 += -48
	if r3 > 8 goto .L798
	r5 = 0
	r0 += -48
	goto .L792
.L788:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L798
	r5 = 0
	goto .L792
.L798:
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
	if r1 s< 0 goto .L816
	exit
.L816:
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
	if r1 s< 0 goto .L820
	exit
.L820:
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
	if r1 s< 0 goto .L824
	exit
.L824:
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
	if r3 == 0 goto .L832
.L827:
	if r2 == r0 goto .L833
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L827
	exit
.L833:
	r0 = r1
	exit
.L832:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L842
.L843:
	if r3 == 0 goto .L836
	r1 += 4
	r2 += 4
.L842:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L843
.L836:
	if r4 s>= r3 goto .L840
	r0 = 1
	if r3 s<= r4 goto .L844
	r0 &= 1
	exit
.L840:
	r0 = -1
	exit
.L844:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L846:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L862
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L862
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L862
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L862
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L862
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L862
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L862
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L846
.L862:
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
	if r2 == 0 goto .L863
	r0 = r1
.L865:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L882
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if r5 == 0 goto .L882
	r0 = r4
	r9 = *(u32 *) (r4+8)
	r0 += 8
	if r9 == 0 goto .L882
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L882
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L882
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L882
	r0 += 4
	r9 = *(u32 *) (r4+24)
	if r9 == 0 goto .L882
	r0 += 4
	r4 = *(u32 *) (r4+28)
	if r4 != 0 goto .L865
.L882:
	r0 -= r1
	r0 s>>= 2
.L863:
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L890
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L884
	if r0 == 1 goto .L907
	if r0 == 2 goto .L908
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L886
	if r5 == 0 goto .L886
	r3 = r4
	r1 += 4
	r2 += 4
.L908:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L886
	if r9 == 0 goto .L886
	r3 += -1
	r1 += 4
	r2 += 4
.L907:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L886
	if r5 == 0 goto .L886
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L890
.L884:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L886
	if r0 == 0 goto .L886
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
	if r0 != r9 goto .L886
	if r6 == 0 goto .L886
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L886
	if r6 == 0 goto .L886
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
	if r4 != r5 goto .L886
	if r6 == 0 goto .L886
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L884
.L890:
	r0 = 0
	exit
.L886:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L918
	r0 = 1
	if r2 s<= r1 goto .L919
	r0 &= 1
	exit
.L918:
	r0 = -1
	exit
.L919:
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
	if r3 == 0 goto .L924
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L921
	if r0 == 1 goto .L961
	if r0 == 2 goto .L962
	if r0 == 3 goto .L963
	if r0 == 4 goto .L964
	if r0 == 5 goto .L965
	if r0 != 6 goto .L979
.L966:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L978
	r3 += -1
	r1 += 4
.L965:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L978
	r3 += -1
	r1 += 4
.L964:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L978
	r3 += -1
	r1 += 4
.L963:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L978
	r3 += -1
	r1 += 4
.L962:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L978
	r3 += -1
	r1 += 4
.L961:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L978
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L924
.L921:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L978
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L978
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L978
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L978
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L978
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L978
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L978
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L978
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L921
.L924:
	r0 = 0
	exit
.L978:
	r0 = r1
	exit
.L979:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L978
	r3 = r4
	r1 += 4
	goto .L966
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L987
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L981
	if r0 == 1 goto .L1024
	if r0 == 2 goto .L1025
	if r0 == 3 goto .L1026
	if r0 == 4 goto .L1027
	if r0 == 5 goto .L1028
	if r0 != 6 goto .L1043
.L1029:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 += -1
	r1 += 4
	r2 += 4
.L1028:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 += -1
	r1 += 4
	r2 += 4
.L1027:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 += -1
	r1 += 4
	r2 += 4
.L1026:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 += -1
	r1 += 4
	r2 += 4
.L1025:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 += -1
	r1 += 4
	r2 += 4
.L1024:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L987
.L981:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L981
.L987:
	r0 = 0
	exit
.L1042:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L1044
	r0 = 1
	if r4 s<= r5 goto .L1045
	r0 &= 1
	exit
.L1044:
	r0 = -1
	exit
.L1045:
	r0 = 0
	r0 &= 1
	exit
.L1043:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1042
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L1029
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1065
	r9 = r3
	r6 = r3
	r5 = r1
	r4 = r1
	r0 = r2
	r9 += -1
	r6 <<= 2
	r5 -= r2
	if r6 < r5 goto .L1181
	if r3 == 0 goto .L1065
	r9 <<= 2
	r3 = r1
	r4 = r9
	r0 += r9
	r4 >>= 2
	r3 += r9
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1051
	if r4 == 1 goto .L1135
	if r4 == 2 goto .L1136
	if r4 == 3 goto .L1137
	if r4 == 4 goto .L1138
	if r4 == 5 goto .L1139
	if r4 != 6 goto .L1182
.L1140:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1139:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1138:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
.L1137:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1136:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1135:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r5
	r9 = r0
	r3 += -4
	r0 += -4
	if r2 == r9 goto .L1065
.L1051:
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
	if r2 != r9 goto .L1051
.L1065:
	r0 = r1
	exit
.L1181:
	if r3 == 0 goto .L1065
	if r9 <= 7 goto .L1141
	r5 = r2
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L1141
	r6 = r2
	r6 += 4
	r7 = r1
	r7 ^= r6
	r6 = r7
	r6 = -r6
	r6 |= r7
	if r6 s>= 0 goto .L1141
	r9 = r3
	r9 >>= 1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1057
	if r6 == 1 goto .L1148
	if r6 == 2 goto .L1149
	if r6 == 3 goto .L1150
	if r6 == 4 goto .L1151
	if r6 == 5 goto .L1152
	if r6 != 6 goto .L1183
.L1153:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1152:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1151:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1150:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1149:
	r6 = *(u64 *) (r0+0)
	r5 += 1
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
.L1148:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r5 += 1
	r0 += 8
	r4 += 8
	if r9 == r5 goto .L1180
.L1057:
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
	if r9 != r5 goto .L1057
.L1180:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1065
	r3 &= -2
	r3 <<= 2
	r9 = r1
	r2 += r3
	r9 += r3
	r0 = r1
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r3
	exit
.L1141:
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1056
	if r3 == 1 goto .L1142
	if r3 == 2 goto .L1143
	if r3 == 3 goto .L1144
	if r3 == 4 goto .L1145
	if r3 == 5 goto .L1146
	if r3 == 6 goto .L1147
	r0 = *(u32 *) (r2+0)
	r4 = r1
	*(u32 *) (r1+0) = r0
	r9 += -1
	r0 = r2
	r4 += 4
	r0 += 4
.L1147:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1146:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1145:
	r3 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1144:
	r2 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1143:
	r5 = *(u32 *) (r0+0)
	r9 += -1
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1142:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r9 += -1
	r4 += 4
	r0 += 4
	if r9 == -1 goto .L1065
.L1056:
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
	if r9 != -1 goto .L1056
	goto .L1065
.L1182:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
	goto .L1140
.L1183:
	r4 = *(u64 *) (r2+0)
	r5 = 1
	*(u64 *) (r1+0) = r4
	r0 += 8
	r4 = r1
	r4 += 8
	goto .L1153
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r9 = r3
	r2 s>>= 32
	r9 += -1
	if r3 == 0 goto .L1185
	r0 = r1
	r6 = r1
	r0 >>= 2
	r0 &= 1
	if r9 <= 4 goto .L1186
	if r0 == 0 goto .L1187
	r6 += 4
	*(u32 *) (r1+0) = r2
	r9 += -1
.L1187:
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
	if r8 == r5 goto .L1188
	if r8 == 1 goto .L1228
	if r8 == 2 goto .L1229
	if r8 == 3 goto .L1230
	if r8 == 4 goto .L1231
	if r8 == 5 goto .L1232
	if r8 != 6 goto .L1250
.L1233:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1232:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1231:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1230:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1229:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1228:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
	if r5 == r7 goto .L1249
.L1188:
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
	if r5 != r7 goto .L1188
.L1249:
	r4 = r3
	r4 &= 1
	if r4 == 0 goto .L1185
	r3 &= -2
	r0 = r3
	r9 -= r3
	r0 <<= 2
	r6 += r0
.L1186:
	*(u32 *) (r6+0) = r2
	if r9 == 0 goto .L1185
	*(u32 *) (r6+4) = r2
	if r9 == 1 goto .L1185
	*(u32 *) (r6+8) = r2
	if r9 == 2 goto .L1185
	*(u32 *) (r6+12) = r2
	if r9 == 3 goto .L1185
	*(u32 *) (r6+16) = r2
	if r9 == 4 goto .L1185
	*(u32 *) (r6+20) = r2
.L1185:
	r0 = r1
	exit
.L1250:
	*(u64 *) (r0+0) = r4
	r5 = 1
	r0 += 8
	goto .L1233
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1252
	r9 = r1
	r2 += r3
	r9 += r3
	if r3 == 0 goto .L1251
	r4 = r9
	r4 -= r1
	r4 &= 7
	if r4 == 0 goto .L1254
	if r4 == 1 goto .L1351
	if r4 == 2 goto .L1352
	if r4 == 3 goto .L1353
	if r4 == 4 goto .L1354
	if r4 == 5 goto .L1355
	if r4 == 6 goto .L1356
	r9 += -1
	r2 += -1
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
.L1356:
	r9 += -1
	r2 += -1
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r3
.L1355:
	r9 += -1
	r2 += -1
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r0
.L1354:
	r9 += -1
	r2 += -1
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r4
.L1353:
	r9 += -1
	r2 += -1
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r5
.L1352:
	r9 += -1
	r2 += -1
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r3
.L1351:
	r2 += -1
	r0 = *(u8 *) (r9+-1)
	*(u8 *) (r2+0) = r0
	r9 += -1
	if r1 == r9 goto .L1402
.L1254:
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
	if r1 != r9 goto .L1254
	exit
.L1252:
	if r1 != r2 goto .L1403
.L1251:
	exit
.L1403:
	if r3 == 0 goto .L1251
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L1255
	r4 = r2
	r4 |= r1
	r4 &= 7
	if r4 == 0 goto .L1404
.L1255:
	r0 = r1
	r0 += r3
	r3 &= 7
	if r3 == 0 goto .L1261
	if r3 == 1 goto .L1363
	if r3 == 2 goto .L1364
	if r3 == 3 goto .L1365
	if r3 == 4 goto .L1366
	if r3 == 5 goto .L1367
	if r3 == 6 goto .L1368
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1368:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1367:
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1366:
	r9 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r9
	r1 += 1
.L1365:
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1364:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1363:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
	if r0 == r1 goto .L1405
.L1261:
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
	if r0 != r1 goto .L1261
	goto .L1251
.L1404:
	r5 = r1
	r9 = r2
	r5 += 1
	r9 -= r5
	if r9 <= 6 goto .L1255
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
	if r5 == 0 goto .L1258
	if r5 == 1 goto .L1357
	if r5 == 2 goto .L1358
	if r5 == 3 goto .L1359
	if r5 == 4 goto .L1360
	if r5 == 5 goto .L1361
	if r5 != 6 goto .L1406
.L1362:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1361:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1360:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1359:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L1358:
	r1 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r1
	r0 += 8
.L1357:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r6 == r0 goto .L1401
.L1258:
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
	if r6 != r0 goto .L1258
.L1401:
	r0 = r3
	r2 += r9
	r0 -= r9
	if r3 == r9 goto .L1251
	r3 = *(u8 *) (r6+0)
	*(u8 *) (r2+0) = r3
	if r0 == 1 goto .L1251
	r9 = *(u8 *) (r6+1)
	*(u8 *) (r2+1) = r9
	if r0 == 2 goto .L1251
	r4 = *(u8 *) (r6+2)
	*(u8 *) (r2+2) = r4
	if r0 == 3 goto .L1251
	r1 = *(u8 *) (r6+3)
	*(u8 *) (r2+3) = r1
	if r0 == 4 goto .L1251
	r5 = *(u8 *) (r6+4)
	*(u8 *) (r2+4) = r5
	if r0 == 5 goto .L1251
	r3 = *(u8 *) (r6+5)
	*(u8 *) (r2+5) = r3
	if r0 == 6 goto .L1251
	r0 = *(u8 *) (r6+6)
	*(u8 *) (r2+6) = r0
	exit
.L1402:
	exit
.L1406:
	r0 = *(u64 *) (r1+0)
	r4 += 8
	*(u64 *) (r2+0) = r0
	r0 = r1
	r0 += 8
	goto .L1362
.L1405:
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
.L1423:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1446
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1446
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1446
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1446
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1446
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1446
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1446
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1446
	if r0 != 32 goto .L1423
	r0 = r4
	exit
.L1446:
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
	if r1 == 0 goto .L1449
	r0 &= 1
	if r0 != 0 goto .L1449
	r0 = 1
.L1450:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1468
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1449
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1449
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1449
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1449
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1449
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1449
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1450
	exit
.L1449:
	exit
.L1468:
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
	if r0 == 0 goto .L1474
	if r6 s< 0 goto .L1490
	r7 = 0x40000000 ll
.L1476:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1477
.L1478:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1477:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1474
.L1479:
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
	if r3 != 0 goto .L1478
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1478
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
	if r0 != 0 goto .L1478
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
	if r3 != 0 goto .L1478
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
	if r9 != 0 goto .L1478
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
	if r4 != 0 goto .L1478
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
	if r3 != 0 goto .L1478
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1478
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1479
.L1474:
	r0 = r8
	exit
.L1490:
	r7 = 0x3f000000 ll
	goto .L1476
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
	if r0 == 0 goto .L1492
	if r6 s< 0 goto .L1508
	r7 = 0x4000000000000000 ll
.L1494:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1495
.L1496:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1495:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1492
.L1497:
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
	if r3 != 0 goto .L1496
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1496
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
	if r0 != 0 goto .L1496
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
	if r3 != 0 goto .L1496
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
	if r9 != 0 goto .L1496
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
	if r4 != 0 goto .L1496
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
	if r3 != 0 goto .L1496
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1496
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1497
.L1492:
	r0 = r8
	exit
.L1508:
	r7 = 0x3fe0000000000000 ll
	goto .L1494
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
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1510
	if r6 s< 0 goto .L1526
	r7 = 0x4000000000000000 ll
.L1512:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1513
.L1514:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1513:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1510
.L1515:
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
	if r3 != 0 goto .L1514
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1514
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
	if r0 != 0 goto .L1514
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
	if r3 != 0 goto .L1514
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
	if r9 != 0 goto .L1514
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
	if r4 != 0 goto .L1514
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
	if r3 != 0 goto .L1514
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1514
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1515
.L1510:
	r0 = r8
	exit
.L1526:
	r7 = 0x3fe0000000000000 ll
	goto .L1512
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1528
	r0 = r3
	r0 += -1
	if r0 <= 5 goto .L1529
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 != 0 goto .L1529
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
	if r5 == 0 goto .L1530
	if r5 == 1 goto .L1592
	if r5 == 2 goto .L1593
	if r5 == 3 goto .L1594
	if r5 == 4 goto .L1595
	if r5 == 5 goto .L1596
	if r5 == 6 goto .L1597
	r0 = *(u64 *) (r2+0)
	r5 = *(u64 *) (r1+0)
	r2 += 8
	r0 ^= r5
	r4 = r2
	r2 = r0
	r0 = r1
	*(u64 *) (r1+0) = r2
	r0 += 8
.L1597:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1596:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1595:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1594:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1593:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r0 += 8
	r2 ^= r5
	r4 += 8
	*(u64 *) (r0+-8) = r2
.L1592:
	r5 = *(u64 *) (r0+0)
	r2 = *(u64 *) (r4+0)
	r2 ^= r5
	*(u64 *) (r0+0) = r2
	r4 += 8
	r0 += 8
	if r6 == r4 goto .L1627
.L1530:
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
	if r6 != r4 goto .L1530
.L1627:
	r0 = r1
	r2 = r3
	r0 += r9
	r2 -= r9
	if r3 == r9 goto .L1528
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r6+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L1528
	r4 = *(u8 *) (r0+1)
	r5 = *(u8 *) (r6+1)
	r5 ^= r4
	*(u8 *) (r0+1) = r5
	if r2 == 2 goto .L1528
	r9 = *(u8 *) (r0+2)
	r3 = *(u8 *) (r6+2)
	r3 ^= r9
	*(u8 *) (r0+2) = r3
	if r2 == 3 goto .L1528
	r4 = *(u8 *) (r0+3)
	r5 = *(u8 *) (r6+3)
	r5 ^= r4
	*(u8 *) (r0+3) = r5
	if r2 == 4 goto .L1528
	r9 = *(u8 *) (r0+4)
	r3 = *(u8 *) (r6+4)
	r3 ^= r9
	*(u8 *) (r0+4) = r3
	if r2 == 5 goto .L1528
	r4 = *(u8 *) (r0+5)
	r5 = *(u8 *) (r6+5)
	r5 ^= r4
	*(u8 *) (r0+5) = r5
	if r2 == 6 goto .L1528
	r9 = *(u8 *) (r0+6)
	r2 = *(u8 *) (r6+6)
	r2 ^= r9
	*(u8 *) (r0+6) = r2
.L1528:
	r0 = r1
	exit
.L1529:
	r4 = r2
	r9 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1532
	if r3 == 1 goto .L1598
	if r3 == 2 goto .L1599
	if r3 == 3 goto .L1600
	if r3 == 4 goto .L1601
	if r3 == 5 goto .L1602
	if r3 == 6 goto .L1603
	r3 = *(u8 *) (r2+0)
	r0 = *(u8 *) (r1+0)
	r2 += 1
	r3 ^= r0
	r9 += 1
	*(u8 *) (r1+0) = r3
.L1603:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1602:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r9 += 1
	r5 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r5
.L1601:
	r0 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1600:
	r5 = *(u8 *) (r9+0)
	r0 = *(u8 *) (r2+0)
	r9 += 1
	r0 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r0
.L1599:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1598:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r5 ^= r0
	*(u8 *) (r9+0) = r5
	r2 += 1
	r9 += 1
	if r4 == r2 goto .L1528
.L1532:
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
	if r4 != r2 goto .L1532
	goto .L1528
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1635
	r0 = r1
.L1630:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1629
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1629
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1629
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1629
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1629
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1629
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1629
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1630
.L1629:
	if r3 == 0 goto .L1632
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1631
	if r5 == 1 goto .L1683
	if r5 == 2 goto .L1684
	if r5 == 3 goto .L1685
	if r5 == 4 goto .L1686
	if r5 == 5 goto .L1687
	if r5 != 6 goto .L1705
.L1688:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1634
	r2 += 1
	r0 += 1
	r3 += -1
.L1687:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1634
	r2 += 1
	r0 += 1
	r3 += -1
.L1686:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1634
	r2 += 1
	r0 += 1
	r3 += -1
.L1685:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1634
	r2 += 1
	r0 += 1
	r3 += -1
.L1684:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1634
	r2 += 1
	r0 += 1
	r3 += -1
.L1683:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1634
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1632
.L1631:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1634
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1634
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1634
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1634
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1634
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1634
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1634
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1634
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1631
.L1632:
	*(u8 *) (r0+0) = 0
.L1634:
	r0 = r1
	exit
.L1705:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1634
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1688
.L1635:
	r0 = r1
	goto .L1629
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1706
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1707
	if r0 == 1 goto .L1748
	if r0 == 2 goto .L1749
	if r0 == 3 goto .L1750
	if r0 == 4 goto .L1751
	if r0 == 5 goto .L1752
	if r0 != 6 goto .L1762
.L1753:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1706
	r3 += 1
.L1752:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1763
.L1706:
	r0 = r3
	exit
.L1762:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1706
	r3 = 1
	goto .L1753
.L1763:
	r3 += 1
.L1751:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1706
	r3 += 1
.L1750:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1706
	r3 += 1
.L1749:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1706
	r3 += 1
.L1748:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1706
	r3 += 1
	if r2 == r3 goto .L1706
.L1707:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1706
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1706
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1706
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1706
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1706
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1706
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1706
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1706
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1707
	goto .L1706
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1769
.L1773:
	r3 = r2
	goto .L1768
.L1767:
	r3 += 1
	if r4 == r5 goto .L1766
.L1768:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1767
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1773
.L1769:
	r1 = r5
.L1766:
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
.L1776:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1775
	r3 = r1
.L1775:
	r1 += 1
	if r0 != 0 goto .L1776
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
	if r0 == 0 goto .L1920
	r0 = r2
.L1780:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1889
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1889
	r0 = r3
	r4 = *(u8 *) (r3+2)
	r0 += 2
	if r4 == 0 goto .L1889
	r0 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1889
	r0 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1889
	r0 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1889
	r0 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1889
	r0 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1780
.L1889:
	r4 = r0
	r4 -= r2
	if r0 == r2 goto .L1920
	r4 += -1
	r9 = r5;r9 &= 0xff
	r7 = r4
	r8 = r1
	goto .L1786
.L1922:
	r8 += 1
	if r0 == 0 goto .L1921
.L1786:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L1922
	r1 = r8
	r1 += r7
	*(u64 *) (r10+-8) = r1
	r4 = r7
	r0 = r9
	r6 = r2
	r3 = r8
	r4 &= 7
	if r4 == 0 goto .L1893
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L1783
	if r3 != r9 goto .L1783
	r3 = r8
	r6 += 1
	r3 += 1
	r0 = *(u8 *) (r8+1)
	if r0 == 0 goto .L1783
	if r4 == 1 goto .L1893
	if r4 == 2 goto .L1839
	if r4 == 3 goto .L1840
	if r4 == 4 goto .L1841
	if r4 == 5 goto .L1842
	if r4 == 6 goto .L1843
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1783
	if r1 != r0 goto .L1783
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1783
.L1843:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1783
	if r4 != r0 goto .L1783
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1783
.L1842:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1783
	if r1 != r0 goto .L1783
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1783
.L1841:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1783
	if r4 != r0 goto .L1783
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1783
.L1840:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1783
	if r1 != r0 goto .L1783
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1783
.L1839:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1783
	if r4 != r0 goto .L1783
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1783
.L1893:
	*(u64 *) (r10+-16) = r8
.L1782:
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1913
	r1 = *(u64 *) (r10+-8)
	if r3 == r1 goto .L1913
	if r8 != r0 goto .L1913
	r6 += 1
	r4 = r3
	r1 = r6
	r4 += 1
	r0 = *(u8 *) (r3+1)
	if r0 == 0 goto .L1913
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1913
	if r8 != r0 goto .L1913
	r6 += 1
	r0 = *(u8 *) (r3+2)
	if r0 == 0 goto .L1913
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1913
	if r8 != r0 goto .L1913
	r6 = r1
	r0 = *(u8 *) (r3+3)
	r6 += 2
	if r0 == 0 goto .L1913
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1913
	if r3 != r0 goto .L1913
	r6 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L1913
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1913
	if r8 != r0 goto .L1913
	r6 += 1
	r0 = *(u8 *) (r4+4)
	if r0 == 0 goto .L1913
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1913
	if r3 != r0 goto .L1913
	r6 += 1
	r0 = *(u8 *) (r4+5)
	if r0 == 0 goto .L1913
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1913
	if r8 != r0 goto .L1913
	r6 += 1
	r0 = *(u8 *) (r4+6)
	if r0 == 0 goto .L1913
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1913
	if r3 != r0 goto .L1913
	r3 = r4
	r1 += 7
	r3 += 7
	r6 = r1
	r0 = *(u8 *) (r4+7)
	if r0 != 0 goto .L1782
.L1913:
	r8 = *(u64 *) (r10+-16)
.L1783:
	r4 = *(u8 *) (r6+0)
	if r4 == r0 goto .L1789
	r8 += 1
	goto .L1786
.L1921:
	exit
.L1789:
	r1 = r8
.L1920:
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
	if r8 s>= r0 goto .L1933
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1927
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L1926
.L1927:
	r0 = r6
	exit
.L1933:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L1927
.L1926:
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
	if r4 == 0 goto .L1934
	if r4 >= r2 goto .L1945
	r2 -= r4
	r9 = r1
	r9 += r2
	if r1 > r9 goto .L1945
	r5 = *(u8 *) (r3+0)
	r4 += -1
	r5 <<= 56
	r3 += 1
	r5 s>>= 56
	*(u64 *) (r10+-8) = r3
.L1940:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	r1 <<= 56
	r3 += 1
	r1 s>>= 56
	if r1 == r5 goto .L2009
	r0 = r3
.L1936:
	if r9 >= r0 goto .L1940
.L1945:
	r0 = 0
.L1934:
	exit
.L2009:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1934
.L1939:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L1937
	if r6 == 1 goto .L1983
	if r6 == 2 goto .L1984
	if r6 == 3 goto .L1985
	if r6 == 4 goto .L1986
	if r6 == 5 goto .L1987
	if r6 == 6 goto .L1988
	r6 = *(u8 *) (r3+0)
	r1 = *(u8 *) (r2+0)
	if r6 != r1 goto .L1998
	r1 = r3
	r2 += 1
	r1 += 1
.L1988:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1998
	r1 += 1
	r2 += 1
.L1987:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1998
	r1 += 1
	r2 += 1
.L1986:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1998
	r1 += 1
	r2 += 1
.L1985:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1998
	r1 += 1
	r2 += 1
.L1984:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1998
	r1 += 1
	r2 += 1
.L1983:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1998
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L2010
.L1937:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1998
	r8 = *(u8 *) (r1+1)
	r6 = *(u8 *) (r2+1)
	if r8 != r6 goto .L1998
	r8 = *(u8 *) (r1+2)
	r6 = *(u8 *) (r2+2)
	if r8 != r6 goto .L1998
	r8 = *(u8 *) (r1+3)
	r6 = *(u8 *) (r2+3)
	if r8 != r6 goto .L1998
	r8 = *(u8 *) (r1+4)
	r6 = *(u8 *) (r2+4)
	if r8 != r6 goto .L1998
	r8 = *(u8 *) (r1+5)
	r6 = *(u8 *) (r2+5)
	if r8 != r6 goto .L1998
	r8 = *(u8 *) (r1+6)
	r6 = *(u8 *) (r2+6)
	if r8 != r6 goto .L1998
	r8 = *(u8 *) (r1+7)
	r6 = *(u8 *) (r2+7)
	if r8 != r6 goto .L1998
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L1937
	exit
.L1998:
	if r3 > r9 goto .L1945
	r2 = *(u8 *) (r3+0)
	r0 = r3
	r2 <<= 56
	r0 += 1
	r2 s>>= 56
	if r2 != r5 goto .L1936
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L1939
.L2010:
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
	if r8 s>= r0 goto .L2049
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L2050
	*(u64 *) (r10+-24) = r8
.L2014:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L2020:
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
	if r5 s< 0 goto .L2021
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
	if r0 s< 0 goto .L2021
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
	if r9 s< 0 goto .L2021
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r2 = 0x4000000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__gedf2
	if r0 s>= 0 goto .L2020
.L2021:
	r2 = *(u64 *) (r10+-16)
	*(u32 *) (r2+0) = r8
	r4 = *(u64 *) (r10+-24)
	if r4 == 0 goto .L2027
	r5 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r5
	exit
.L2050:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r8 s< r0 goto .L2017
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L2026
.L2017:
	r0 = *(u64 *) (r10+-16)
	*(u32 *) (r0+0) = 0
	r0 = r6
	exit
.L2049:
	r3 = -9223372036854775808 ll
	r7 = r6
	r2 = 0xbff0000000000000 ll
	r7 ^= r3
	r1 = r6
	call	__ledf2
	if r8 s<= r0 goto .L2051
	r6 = r7
	*(u64 *) (r10+-24) = 1
	goto .L2014
.L2027:
	r0 = r6
	exit
.L2051:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s> r8 goto .L2024
	r1 = *(u64 *) (r10+-16)
	r0 = r6
	*(u32 *) (r1+0) = r8
	exit
.L2024:
	*(u64 *) (r10+-24) = 1
.L2015:
	r8 = 0
	r6 = r7
	r7 = r8
.L2022:
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
	if r7 s< r0 goto .L2021
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
	if r7 s< r4 goto .L2021
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
	if r7 s< r0 goto .L2021
	r9 s>>= 32
	r8 = r9
	call	__adddf3
	r2 = 0x3fd0000000000000 ll
	r6 = r0
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	if r7 s>= r0 goto .L2022
	goto .L2021
.L2026:
	r7 = r6
	*(u64 *) (r10+-24) = r8
	goto .L2015
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L2055
	r0 = 0
.L2054:
	r5 = r2
	r1 = r3
	r4 = r3
	r5 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L2071
	r9 = r5
	r2 = r3
	r1 &= 1
	r9 += r5
	r1 = -r1
	r2 >>= 2
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L2052
	r5 = r9
	r1 = r3
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 3
	r2 &= r9
	r0 += r2
	if r1 == 0 goto .L2052
	r4 = r5
	r9 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r9 >>= 4
	r1 &= r5
	r0 += r1
	if r9 == 0 goto .L2052
	r5 = r4
	r1 = r3
	r9 &= 1
	r5 += r4
	r9 = -r9
	r1 >>= 5
	r9 &= r4
	r0 += r9
	if r1 == 0 goto .L2052
	r4 = r5
	r2 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r2 >>= 6
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L2052
	r9 = r4
	r5 = r3
	r2 &= 1
	r9 += r4
	r2 = -r2
	r5 >>= 7
	r2 &= r4
	r0 += r2
	if r5 == 0 goto .L2052
	r5 &= 1
	r2 = r9
	r5 = -r5
	r2 += r9
	r5 &= r9
	r3 >>= 8
	r0 += r5
	if r3 != 0 goto .L2054
	exit
.L2055:
	r0 = r1
.L2052:
	exit
.L2071:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L2074
	r9 = 32
	r4 = 1
.L2073:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2074
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2075
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2073
.L2076:
	if r3 != 0 goto .L2080
	r0 = r9
.L2080:
	exit
.L2075:
	if r4 == 0 goto .L2082
.L2074:
	r9 = 0
.L2079:
	if r2 >= r0 goto .L2078
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2078:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2079
	goto .L2076
.L2082:
	r9 = r4
	goto .L2076
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
	if r2 == r1 goto .L2103
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
.L2103:
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
	if r0 == r2 goto .L2106
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2106:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2110
	r0 = 0
.L2109:
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
	if r3 == 0 goto .L2126
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
	if r1 == 0 goto .L2108
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
	if r2 == 0 goto .L2108
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
	if r1 == 0 goto .L2108
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
	if r2 == 0 goto .L2108
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
	if r3 == 0 goto .L2108
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
	if r1 == 0 goto .L2108
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
	if r1 != 0 goto .L2109
	exit
.L2110:
	r0 = r1
.L2108:
	exit
.L2126:
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
	if r2 >= r8 goto .L2128
	r2 += r3
	if r8 <= r2 goto .L2311
.L2128:
	if r1 == 0 goto .L2131
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
	if r4 == 0 goto .L2132
	if r4 == 1 goto .L2248
	if r4 == 2 goto .L2249
	if r4 == 3 goto .L2250
	if r4 == 4 goto .L2251
	if r4 == 5 goto .L2252
	if r4 == 6 goto .L2253
	r1 = *(u64 *) (r7+0)
	r9 += 8
	*(u64 *) (r8+0) = r1
	r2 += 8
.L2253:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2252:
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r1
	r9 += 8
.L2251:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2250:
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r1
	r9 += 8
.L2249:
	r4 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r9 += 8
.L2248:
	r1 = *(u64 *) (r9+0)
	*(u64 *) (r2+0) = r1
	r9 += 8
	r2 += 8
	if r9 == r5 goto .L2302
.L2132:
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
	if r9 != r5 goto .L2132
.L2302:
	if r0 > r3 goto .L2312
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
	if r2 <= 6 goto .L2134
	r4 = r0
	r2 = r7
	r4 += 1
	r1 = r5
	r2 += r4
	r1 -= r2
	if r1 > 6 goto .L2313
.L2134:
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
	if r5 == 0 goto .L2139
	if r5 == 1 goto .L2260
	if r5 == 2 goto .L2261
	if r5 == 3 goto .L2262
	if r5 == 4 goto .L2263
	if r5 == 5 goto .L2264
	if r5 == 6 goto .L2265
	r1 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r1
	r9 += 1
.L2265:
	r4 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r4
	r9 += 1
.L2264:
	r2 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r2
	r9 += 1
.L2263:
	r5 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r5
	r9 += 1
.L2262:
	r1 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r1
	r9 += 1
.L2261:
	r4 = *(u8 *) (r9+0)
	r3 += 1
	*(u8 *) (r3+-1) = r4
	r9 += 1
.L2260:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r2
	r9 += 1
	r3 += 1
	if r9 == r0 goto .L2314
.L2139:
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
	if r9 != r0 goto .L2139
	exit
.L2313:
	r4 = r9
	r4 |= r5
	r4 &= 7
	if r4 != 0 goto .L2134
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
	if r4 == 0 goto .L2307
	if r4 == 1 goto .L2254
	if r4 == 2 goto .L2255
	if r4 == 3 goto .L2256
	if r4 == 4 goto .L2257
	if r4 == 5 goto .L2258
	if r4 == 6 goto .L2259
	r1 = *(u64 *) (r9+0)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r2+0) = r1
	r1 = r9
	r2 += 8
	r1 += 8
.L2259:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2258:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2257:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2256:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2255:
	r9 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r9
	r1 += 8
.L2254:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r5 goto .L2301
.L2307:
	r4 = r5
.L2137:
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
	if r1 != r4 goto .L2137
.L2301:
	r2 = r6
	r6 &= 7
	r2 &= -8
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2127
	r4 = r8
	r1 = r7
	r4 += r0
	r1 += r0
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r9 = r0
	r9 += 1
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2127
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 2
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2127
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 3
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2127
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 4
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2127
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r9 = r0
	r9 += 5
	r1 = r9;r1 &= 0xffffffff
	if r1 > r3 goto .L2127
	r4 = r7
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2127
	r3 = r7
	r9 = r8
	r3 += r0
	r9 += r0
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r9+0) = r1
	exit
.L2311:
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2127
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2141
	if r3 == 1 goto .L2242
	if r3 == 2 goto .L2243
	if r3 == 3 goto .L2244
	if r3 == 4 goto .L2245
	if r3 == 5 goto .L2246
	if r3 != 6 goto .L2315
.L2247:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2246:
	r1 = r8
	r0 = r7
	r1 += r9
	r0 += r9
	r9 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
.L2245:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2244:
	r1 = r8
	r0 = r7
	r1 += r9
	r0 += r9
	r9 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
.L2243:
	r4 = r8
	r5 = r7
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2242:
	r1 = r7
	r0 = r8
	r1 += r9
	r0 += r9
	r2 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r2
	r9 += -1
	if r9 == -1 goto .L2316
.L2141:
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
	if r9 != -1 goto .L2141
.L2127:
	exit
.L2131:
	if r3 == 0 goto .L2127
	r9 = r8
	r9 += r0
	*(u64 *) (r10+-16) = r9
	r9 = r7
	r9 += r0
	goto .L2134
.L2312:
	exit
.L2315:
	r1 = r7
	r0 = r8
	r1 += r5
	r0 += r5
	r2 = *(u8 *) (r1+0)
	r5 += -1
	*(u8 *) (r0+0) = r2
	r9 = r5
	goto .L2247
.L2316:
	exit
.L2314:
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
	if r2 >= r1 goto .L2318
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2460
.L2318:
	if r5 == 0 goto .L2321
	r9 = r5
	r9 += -1
	if r9 <= 5 goto .L2322
	r0 = r8
	r0 |= r7
	r0 &= 7
	if r0 == 0 goto .L2461
.L2322:
	r5 += r5
	r0 = r8
	r4 = r5
	r1 = r7
	r4 += -2
	r5 += r8
	r4 >>= 1
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2327
	if r4 == 1 goto .L2421
	if r4 == 2 goto .L2422
	if r4 == 3 goto .L2423
	if r4 == 4 goto .L2424
	if r4 == 5 goto .L2425
	if r4 == 6 goto .L2426
	r9 = *(u16 *) (r8+0)
	r0 += 2
	*(u16 *) (r7+0) = r9
	r1 += 2
.L2426:
	r2 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r0 += 2
.L2425:
	r4 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r4
	r0 += 2
.L2424:
	r9 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r9
	r0 += 2
.L2423:
	r2 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r0 += 2
.L2422:
	r4 = *(u16 *) (r0+0)
	r1 += 2
	*(u16 *) (r1+-2) = r4
	r0 += 2
.L2421:
	r9 = *(u16 *) (r0+0)
	*(u16 *) (r1+0) = r9
	r0 += 2
	r1 += 2
	if r0 == r5 goto .L2321
.L2327:
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
	if r0 != r5 goto .L2327
.L2321:
	r2 = r3
	r2 &= 1
	if r2 == 0 goto .L2317
.L2462:
	r3 += -1
	r1 = r8
	r3 = r3;r3 &= 0xffffffff
	r0 = r7
	r1 += r3
	r0 += r3
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	exit
.L2461:
	r1 = r8
	r2 = r7
	r1 += 2
	r2 -= r1
	if r2 <= 4 goto .L2322
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
	if r2 == 0 goto .L2325
	if r2 == 1 goto .L2415
	if r2 == 2 goto .L2416
	if r2 == 3 goto .L2417
	if r2 == 4 goto .L2418
	if r2 == 5 goto .L2419
	if r2 == 6 goto .L2420
	r0 = *(u64 *) (r8+0)
	r4 += 8
	*(u64 *) (r7+0) = r0
	r1 += 8
.L2420:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2419:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2418:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2417:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2416:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2415:
	r0 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r0
	r4 += 8
	r1 += 8
	if r4 == r6 goto .L2453
.L2325:
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
	if r4 != r6 goto .L2325
.L2453:
	r9 <<= 2
	if r5 == r9 goto .L2321
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
	if r4 > r5 goto .L2321
	r4 += r4
	r2 = r8
	r1 = r7
	r2 += r4
	r1 += r4
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r9 += 2
	if r9 > r5 goto .L2321
	r9 += r9
	r5 = r8
	r4 = r7
	r5 += r9
	r4 += r9
	r9 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r9
	r2 = r3
	r2 &= 1
	if r2 == 0 goto .L2317
	goto .L2462
.L2460:
	r1 = r3
	r1 += -1
	r4 = r1;r4 &= 0xffffffff
	r9 = r4
	if r3 == 0 goto .L2317
	r2 = r4
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L2330
	if r2 == 1 goto .L2409
	if r2 == 2 goto .L2410
	if r2 == 3 goto .L2411
	if r2 == 4 goto .L2412
	if r2 == 5 goto .L2413
	if r2 == 6 goto .L2414
	r3 = r8
	r5 = r7
	r3 += r4
	r5 += r4
	r0 = *(u8 *) (r3+0)
	r4 += -1
	*(u8 *) (r5+0) = r0
	r9 = r4
.L2414:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2413:
	r3 = r7
	r5 = r8
	r3 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
.L2412:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2411:
	r3 = r7
	r5 = r8
	r3 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
.L2410:
	r1 = r7
	r4 = r8
	r1 += r9
	r4 += r9
	r9 += -1
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r2
.L2409:
	r3 = r8
	r5 = r7
	r3 += r9
	r5 += r9
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2463
.L2330:
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
	if r9 != -1 goto .L2330
.L2317:
	exit
.L2463:
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
	if r2 >= r1 goto .L2465
	r1 = r2
	r1 += r3
	if r8 <= r1 goto .L2695
.L2465:
	if r6 == 0 goto .L2696
	r2 = r6
	r2 += -1
	if r2 <= 7 goto .L2470
	r5 = r8
	r5 |= r9
	r5 &= 7
	if r5 == 0 goto .L2697
.L2470:
	r6 <<= 2
	r1 = r9
	r4 = r6
	r5 = r8
	r4 += -4
	r6 += r9
	r4 >>= 2
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L2474
	if r4 == 1 goto .L2622
	if r4 == 2 goto .L2623
	if r4 == 3 goto .L2624
	if r4 == 4 goto .L2625
	if r4 == 5 goto .L2626
	if r4 == 6 goto .L2627
	r2 = *(u32 *) (r9+0)
	r1 += 4
	*(u32 *) (r8+0) = r2
	r5 += 4
.L2627:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2626:
	r2 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r2
	r1 += 4
.L2625:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2624:
	r2 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r2
	r1 += 4
.L2623:
	r4 = *(u32 *) (r1+0)
	r5 += 4
	*(u32 *) (r5+-4) = r4
	r1 += 4
.L2622:
	r2 = *(u32 *) (r1+0)
	*(u32 *) (r5+0) = r2
	r1 += 4
	r5 += 4
	if r1 == r6 goto .L2475
.L2474:
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
	if r1 != r6 goto .L2474
.L2475:
	if r0 > r3 goto .L2464
	r6 = r3
	r5 = r8
	r6 -= r0
	r5 += r0
	r6 = r6;r6 &= 0xffffffff
	r1 = r6
	r1 += -1
	if r1 <= 6 goto .L2698
	r4 = r9
	r1 = r0
	r4 += r0
	r1 += 1
	*(u64 *) (r10+-8) = r4
	r2 = r9
	r2 += r1
	r1 = r5
	r1 -= r2
	if r1 > 6 goto .L2699
.L2469:
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
	if r3 == 0 goto .L2480
	if r3 == 1 goto .L2634
	if r3 == 2 goto .L2635
	if r3 == 3 goto .L2636
	if r3 == 4 goto .L2637
	if r3 == 5 goto .L2638
	if r3 == 6 goto .L2639
	r1 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r1
	r4 += 1
.L2639:
	r2 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r2
	r4 += 1
.L2638:
	r9 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r9
	r4 += 1
.L2637:
	r3 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r3
	r4 += 1
.L2636:
	r1 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r1
	r4 += 1
.L2635:
	r2 = *(u8 *) (r4+0)
	r5 += 1
	*(u8 *) (r5+-1) = r2
	r4 += 1
.L2634:
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r4 += 1
	r5 += 1
	if r4 == r0 goto .L2700
.L2480:
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
	if r4 != r0 goto .L2480
	exit
.L2697:
	r1 = r9
	r4 = r8
	r1 += 4
	r4 ^= r1
	r2 = r4
	r2 = -r2
	r2 |= r4
	if r2 s>= 0 goto .L2470
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
	if r4 == 0 goto .L2472
	if r4 == 1 goto .L2616
	if r4 == 2 goto .L2617
	if r4 == 3 goto .L2618
	if r4 == 4 goto .L2619
	if r4 == 5 goto .L2620
	if r4 == 6 goto .L2621
	r1 = *(u64 *) (r9+0)
	r2 += 8
	*(u64 *) (r8+0) = r1
	r1 = r9
	r1 += 8
.L2621:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2620:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2619:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2618:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2617:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2616:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r7 goto .L2684
.L2472:
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
	if r1 != r7 goto .L2472
.L2684:
	r5 <<= 1
	if r6 == r5 goto .L2475
	r5 <<= 2
	r2 = r9
	r1 = r8
	r2 += r5
	r1 += r5
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	goto .L2475
.L2699:
	r2 = r4
	r2 |= r5
	r2 &= 7
	if r2 != 0 goto .L2469
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
	if r4 == 0 goto .L2690
	if r4 == 1 goto .L2628
	if r4 == 2 goto .L2629
	if r4 == 3 goto .L2630
	if r4 == 4 goto .L2631
	if r4 == 5 goto .L2632
	if r4 == 6 goto .L2633
	r1 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r1+0)
	r1 += 8
	*(u64 *) (r5+0) = r2
	r2 = r5
	r2 += 8
.L2633:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2632:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2631:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2630:
	r4 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r4
	r1 += 8
.L2629:
	r5 = *(u64 *) (r1+0)
	r2 += 8
	*(u64 *) (r2+-8) = r5
	r1 += 8
.L2628:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r2+0) = r4
	r1 += 8
	r2 += 8
	if r1 == r7 goto .L2683
.L2690:
	r4 = r7
.L2478:
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
	if r1 != r4 goto .L2478
.L2683:
	r1 = r6
	r6 &= 7
	r1 &= -8
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2464
	r2 = r8
	r4 = r9
	r2 += r0
	r4 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 1
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2464
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r5 = r0
	r5 += 2
	r1 = r5;r1 &= 0xffffffff
	if r1 > r3 goto .L2464
	r4 = r9
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 3
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2464
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r5 = r0
	r5 += 4
	r1 = r5;r1 &= 0xffffffff
	if r1 > r3 goto .L2464
	r4 = r9
	r2 = r8
	r4 += r1
	r2 += r1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
	r1 = r0
	r1 += 5
	r5 = r1;r5 &= 0xffffffff
	if r5 > r3 goto .L2464
	r4 = r9
	r2 = r8
	r4 += r5
	r2 += r5
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r1
	r0 += 6
	r0 = r0;r0 &= 0xffffffff
	if r0 > r3 goto .L2464
	r9 += r0
	r3 = r8
	r5 = *(u8 *) (r9+0)
	r3 += r0
	*(u8 *) (r3+0) = r5
	exit
.L2695:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r4 = r5
	if r3 == 0 goto .L2464
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2694
	if r3 == 1 goto .L2610
	if r3 == 2 goto .L2611
	if r3 == 3 goto .L2612
	if r3 == 4 goto .L2613
	if r3 == 5 goto .L2614
	if r3 == 6 goto .L2615
	r1 = r9
	r0 = r8
	r1 += r5
	r0 += r5
	r2 = *(u8 *) (r1+0)
	r5 += -1
	*(u8 *) (r0+0) = r2
	r4 = r5
.L2615:
	r5 = r8
	r3 = r9
	r5 += r4
	r3 += r4
	r4 += -1
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r1
.L2614:
	r5 = r8
	r0 = r9
	r5 += r4
	r0 += r4
	r4 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r2
.L2613:
	r3 = r8
	r1 = r9
	r3 += r4
	r1 += r4
	r4 += -1
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r3+0) = r5
.L2612:
	r3 = r8
	r0 = r9
	r3 += r4
	r0 += r4
	r4 += -1
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r2
.L2611:
	r1 = r8
	r5 = r9
	r1 += r4
	r5 += r4
	r4 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r3
.L2610:
	r2 = r4
	r1 = r9
	r0 = r8
	r1 += r4
	r0 += r4
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r2 += -1
	r4 = r2
	if r2 == -1 goto .L2701
.L2694:
	r0 = r4
.L2482:
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
	if r0 != -1 goto .L2482
.L2464:
	exit
.L2696:
	if r3 == 0 goto .L2464
	r5 = r8
	r4 = r9
	r5 += r0
	r4 += r0
	*(u64 *) (r10+-8) = r4
	goto .L2469
.L2701:
	exit
.L2700:
	exit
.L2698:
	r4 = r9
	r4 += r0
	*(u64 *) (r10+-8) = r4
	goto .L2469
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
	if r0 != 0 goto .L2711
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2710
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2712
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2713
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2714
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2715
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2716
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2717
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2718
	r2 >>= 38
	if r2 != 0 goto .L2719
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2720
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2721
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2722
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2723
	r3 >>= 1
	if r3 != 0 goto .L2724
	r0 = 16
	if r1 != 0 goto .L2727
.L2710:
	exit
.L2711:
	r0 = 0
	exit
.L2722:
	r0 = 12
	exit
.L2727:
	r0 = 15
	exit
.L2712:
	r0 = 2
	exit
.L2713:
	r0 = 3
	exit
.L2714:
	r0 = 4
	exit
.L2715:
	r0 = 5
	exit
.L2716:
	r0 = 6
	exit
.L2717:
	r0 = 7
	exit
.L2718:
	r0 = 8
	exit
.L2719:
	r0 = 9
	exit
.L2720:
	r0 = 10
	exit
.L2721:
	r0 = 11
	exit
.L2723:
	r0 = 13
	exit
.L2724:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2731
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2732
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2733
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2734
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2735
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2736
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2737
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2738
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2739
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2740
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2741
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2742
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2743
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2744
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2745
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2748
	exit
.L2731:
	r0 = 0
	exit
.L2732:
	r0 = 1
	exit
.L2743:
	r0 = 12
	exit
.L2748:
	r0 = 15
	exit
.L2733:
	r0 = 2
	exit
.L2734:
	r0 = 3
	exit
.L2735:
	r0 = 4
	exit
.L2736:
	r0 = 5
	exit
.L2737:
	r0 = 6
	exit
.L2738:
	r0 = 7
	exit
.L2739:
	r0 = 8
	exit
.L2740:
	r0 = 9
	exit
.L2741:
	r0 = 10
	exit
.L2742:
	r0 = 11
	exit
.L2744:
	r0 = 13
	exit
.L2745:
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
	if r0 s>= 0 goto .L2755
	r1 = r6
	call	__fixsfdi
	exit
.L2755:
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
	if r1 == 0 goto .L2761
	r0 = 0
.L2760:
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
	if r3 == 0 goto .L2777
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
	if r1 == 0 goto .L2759
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
	if r2 == 0 goto .L2759
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
	if r1 == 0 goto .L2759
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
	if r2 == 0 goto .L2759
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
	if r3 == 0 goto .L2759
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
	if r1 == 0 goto .L2759
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
	if r1 != 0 goto .L2760
	exit
.L2761:
	r0 = r1
.L2759:
	exit
.L2777:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2781
	if r2 == 0 goto .L2782
	r0 = 0
.L2780:
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
	if r3 == 0 goto .L2798
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
	if r1 == 0 goto .L2779
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
	if r2 == 0 goto .L2779
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
	if r1 == 0 goto .L2779
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
	if r2 == 0 goto .L2779
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
	if r1 == 0 goto .L2779
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
	if r2 == 0 goto .L2779
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
	if r2 != 0 goto .L2780
	exit
.L2782:
	r0 = r2
.L2779:
	exit
.L2781:
	r0 = r1
	exit
.L2798:
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
	if r0 < r2 goto .L2801
	r9 = 32
	r4 = 1
.L2800:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2801
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2802
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2800
.L2803:
	if r3 != 0 goto .L2807
	r0 = r9
.L2807:
	exit
.L2802:
	if r4 == 0 goto .L2809
.L2801:
	r9 = 0
.L2806:
	if r2 >= r0 goto .L2805
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2805:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2806
	goto .L2803
.L2809:
	r9 = r4
	goto .L2803
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2831
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2832
	r0 = r8
	r0 &= 1
	exit
.L2832:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2831:
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
	if r3 s>= r0 goto .L2836
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2837
	r0 = r8
	r0 &= 1
	exit
.L2837:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2836:
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
	if r2 s< 0 goto .L2868
	if r3 == 0 goto .L2846
	r4 = 0
.L2842:
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
	if r2 == 0 goto .L2844
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
	if r2 == 0 goto .L2844
	r1 = 30
.L2845:
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
	if r3 == 0 goto .L2844
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
	if r2 == 0 goto .L2844
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
	if r9 == 0 goto .L2844
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
	if r3 == 0 goto .L2844
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
	if r2 == 0 goto .L2844
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2845
.L2844:
	if r4 == 0 goto .L2843
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2846:
	r0 = r3
.L2843:
	exit
.L2868:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2842
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2902
	r0 = 1
	r4 = 0
.L2870:
	if r2 s>= 0 goto .L2871
	r2 = -r2
	r4 = r0
.L2871:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2873
	r0 = 32
	r1 = 1
.L2872:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2873
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2874
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2872
.L2875:
	if r4 == 0 goto .L2869
	r0 = -r0
.L2869:
	exit
.L2874:
	if r1 == 0 goto .L2883
.L2873:
	r0 = 0
.L2878:
	if r2 >= r3 goto .L2877
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2877:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2878
	goto .L2875
.L2902:
	r1 = -r1
	r0 = 0
	r4 = 1
	goto .L2870
.L2883:
	r0 = r1
	goto .L2875
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2941
	r4 = 0
.L2904:
	if r0 s>= 0 goto .L2905
	r0 = -r0
.L2905:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2912
	r9 = 32
	r1 = 1
.L2906:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2912
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2940
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2906
.L2909:
	r0 = r3
	if r4 == 0 goto .L2903
	r0 = -r0
.L2903:
	exit
.L2940:
	if r1 == 0 goto .L2909
.L2912:
	if r0 >= r3 goto .L2911
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2911:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2912
	goto .L2909
.L2941:
	r1 = -r1
	r4 = 1
	goto .L2904
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r0 < r2 goto .L3057
	r4 = r2
	r1 = 0
	r4 <<= 48
	if r4 s<= r1 goto .L2945
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L2999
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2947
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L3000
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2949
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L3001
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2951
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L3002
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2953
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L3003
	r5 = r4
	r5 <<= 48
	if r5 s<= r1 goto .L2955
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L3004
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2957
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L3005
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2959
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L3006
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2961
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L3007
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2963
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L3008
	r9 = r4
	r9 <<= 48
	if r9 s<= r1 goto .L2965
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L3009
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2967
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L3010
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2969
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L3011
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2971
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L3012
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2973
	r1 = r2
	r1 <<= 15
	r1 &= 0xffff
	if r1 > r0 goto .L2974
	if r1 != 0 goto .L3058
.L2975:
	if r3 != 0 goto .L3027
	r0 = r1
	exit
.L3027:
	exit
.L3007:
	r5 = 512
.L2994:
	r9 = r5
	r2 = r4
	r9 >>= 1
	r2 >>= 1
	r1 = 0
.L2995:
	if r2 >= r0 goto .L2977
	r0 -= r2
	r1 |= r9
	r0 &= 0xffff
.L2977:
	r2 = r5
	r9 = r4
	r2 >>= 2
	r9 >>= 2
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2978
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2978:
	r2 = r5
	r9 = r4
	r2 >>= 3
	r9 >>= 3
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2979
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2979:
	r2 = r5
	r9 = r4
	r2 >>= 4
	r9 >>= 4
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2980
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2980:
	r2 = r5
	r9 = r4
	r2 >>= 5
	r9 >>= 5
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2981
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2981:
	r2 = r5
	r9 = r4
	r2 >>= 6
	r9 >>= 6
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2982
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2982:
	r2 = r5
	r9 = r4
	r2 >>= 7
	r9 >>= 7
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2983
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2983:
	r2 = r5
	r9 = r4
	r2 >>= 8
	r9 >>= 8
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2984
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2984:
	r2 = r5
	r9 = r4
	r2 >>= 9
	r9 >>= 9
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2985
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2985:
	r2 = r5
	r9 = r4
	r2 >>= 10
	r9 >>= 10
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2986
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2986:
	r2 = r5
	r9 = r4
	r2 >>= 11
	r9 >>= 11
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2987
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2987:
	r2 = r5
	r9 = r4
	r2 >>= 12
	r9 >>= 12
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2988
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2988:
	r2 = r5
	r9 = r4
	r2 >>= 13
	r9 >>= 13
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2989
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2989:
	r2 = r5
	r9 = r4
	r2 >>= 14
	r9 >>= 14
	if r2 == 0 goto .L2975
	if r9 >= r0 goto .L2990
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2990:
	r4 >>= 15
	if r5 == 16384 goto .L2975
	if r4 >= r0 goto .L2997
	r0 -= r4
	r1 |= 1
	r0 &= 0xffff
	goto .L2975
.L3058:
	r4 = 32768
	r0 += -32768
	r2 = 16384
	r0 &= 0xffff
	r9 = r2
	r5 = r4
	r1 = r4
	goto .L2995
.L2997:
	r0 = 0
	goto .L2975
.L3057:
	if r2 == r0 goto .L2996
	r1 = 0
	goto .L2975
.L2945:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L2975
.L2947:
	r0 -= r4
	r5 = 2
	r0 &= 0xffff
	r2 &= 32767
	r9 = 1
	r1 = r5
	goto .L2995
.L2949:
	r0 -= r4
	r5 = 4
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2
	r1 = r5
	goto .L2995
.L2951:
	r0 -= r4
	r5 = 8
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4
	r1 = r5
	goto .L2995
.L2953:
	r0 -= r4
	r5 = 16
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8
	r1 = r5
	goto .L2995
.L2955:
	r0 -= r4
	r5 = 32
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16
	r1 = r5
	goto .L2995
.L2957:
	r0 -= r4
	r5 = 64
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 32
	r1 = r5
	goto .L2995
.L2959:
	r0 -= r4
	r5 = 128
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 64
	r1 = r5
	goto .L2995
.L2961:
	r0 -= r4
	r5 = 256
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 128
	r1 = r5
	goto .L2995
.L2963:
	r0 -= r4
	r5 = 512
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 256
	r1 = r5
	goto .L2995
.L2996:
	r1 = 1
	r0 = 0
	goto .L2975
.L2999:
	r5 = 2
	goto .L2994
.L2965:
	r0 -= r4
	r5 = 1024
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 512
	r1 = r5
	goto .L2995
.L3000:
	r5 = 4
	goto .L2994
.L2967:
	r0 -= r4
	r5 = 2048
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 1024
	r1 = r5
	goto .L2995
.L2969:
	r0 -= r4
	r5 = 4096
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2048
	r1 = r5
	goto .L2995
.L3001:
	r5 = 8
	goto .L2994
.L2971:
	r0 -= r4
	r5 = 8192
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4096
	r1 = r5
	goto .L2995
.L3002:
	r5 = 16
	goto .L2994
.L3003:
	r5 = 32
	goto .L2994
.L2973:
	r0 -= r4
	r5 = 16384
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8192
	r1 = r5
	goto .L2995
.L2974:
	r2 = r0
	r4 = 32768
	r2 <<= 48
	if r2 s<= 0 goto .L2998
	r5 = r4
	goto .L2994
.L3004:
	r5 = 64
	goto .L2994
.L3005:
	r5 = 128
	goto .L2994
.L2998:
	r0 = 0
	r5 = r4
	r1 = r4
	goto .L2977
.L3006:
	r5 = 256
	goto .L2994
.L3010:
	r5 = 4096
	goto .L2994
.L3011:
	r5 = 8192
	goto .L2994
.L3012:
	r5 = 16384
	goto .L2994
.L3009:
	r5 = 2048
	goto .L2994
.L3008:
	r5 = 1024
	goto .L2994
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L3061
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3060:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3061
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L3062
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L3060
.L3063:
	if r3 == 0 goto .L3059
	r5 = r1
.L3059:
	r0 = r5
	exit
.L3062:
	if r4 == 0 goto .L3063
.L3061:
	r5 = 0
.L3066:
	if r2 >= r1 goto .L3065
	r1 -= r2
	r5 |= r4
.L3065:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3066
	goto .L3063
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L3093
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
.L3093:
	if r2 == 0 goto .L3096
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
.L3096:
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
	if r0 == 0 goto .L3098
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L3098:
	if r3 == 0 goto .L3101
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
.L3101:
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
	if r0 == 0 goto .L3103
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
.L3103:
	if r2 == 0 goto .L3106
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
.L3106:
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
	if r0 == 0 goto .L3108
	r4 = r2
	r0 = r2
	r4 s>>= 63
	r3 += -64
	r1 = r4
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L3108:
	if r3 == 0 goto .L3111
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
.L3111:
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
	if r1 <= 65534 goto .L3115
	r0 = 0
.L3115:
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
	if r4 != 0 goto .L3116
	r3 -= r1
	r0 += r9
	r0 += r3
	exit
.L3116:
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
	if r2 == 0 goto .L3119
	r6 = 0
.L3119:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3121
	r0 = 0
.L3121:
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
	if r0 s>= r3 goto .L3132
	if r3 s> r0 goto .L3133
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3132
	if r1 > r2 goto .L3133
	r0 = 1
	exit
.L3132:
	r0 = 0
	exit
.L3133:
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
	if r0 s>= r3 goto .L3139
	if r3 s> r0 goto .L3138
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3139
	r0 = 1
	if r1 <= r2 goto .L3140
	r0 &= 1
	exit
.L3139:
	r0 = -1
	exit
.L3140:
	r0 = 0
	r0 &= 1
	exit
.L3138:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L3145
	if r2 s> r4 goto .L3146
	if r3 >= r1 goto .L3145
	if r1 > r3 goto .L3146
	r0 = 1
	exit
.L3145:
	r0 = 0
	exit
.L3146:
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
	if r1 == 0 goto .L3149
	r6 = 0
.L3149:
	r6 &= 0xff
	if r0 == 0 goto .L3155
	r1 = 0
.L3151:
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
.L3155:
	r1 = r2
	goto .L3151
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3159
	if r2 != 0 goto .L3162
	r0 = r2
	exit
.L3159:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L3162:
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
	if r0 == 0 goto .L3164
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
.L3164:
	if r2 == 0 goto .L3167
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
.L3167:
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
	if r0 == 0 goto .L3169
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L3169:
	if r3 == 0 goto .L3172
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
.L3172:
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
	if r1 != 0 goto .L3179
	r3 = r0
.L3179:
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
	if r4 > r1 goto .L3186
	r9 = 0
.L3186:
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
	if r0 >= r4 goto .L3187
	r9 = 0
.L3187:
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
	if r9 >= r2 goto .L3188
	r0 = 0
.L3188:
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
	if r0 == 0 goto .L3190
.L3192:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3190:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3191
.L3193:
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
	if r4 != 0 goto .L3192
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3192
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
	if r0 != 0 goto .L3192
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
	if r4 != 0 goto .L3192
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
	if r9 != 0 goto .L3192
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
	if r3 != 0 goto .L3192
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
	if r4 != 0 goto .L3192
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3192
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3193
.L3191:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3189
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3189:
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
	if r0 == 0 goto .L3199
.L3201:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3199:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3200
.L3202:
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
	if r4 != 0 goto .L3201
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L3201
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
	if r0 != 0 goto .L3201
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
	if r4 != 0 goto .L3201
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
	if r9 != 0 goto .L3201
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
	if r3 != 0 goto .L3201
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
	if r4 != 0 goto .L3201
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L3201
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3202
.L3200:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L3198
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3198:
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
	if r0 >= r3 goto .L3211
	if r3 > r0 goto .L3212
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3211
	if r1 > r2 goto .L3212
	r0 = 1
	exit
.L3211:
	r0 = 0
	exit
.L3212:
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
	if r0 >= r3 goto .L3218
	if r3 > r0 goto .L3217
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L3218
	r0 = 1
	if r1 <= r2 goto .L3219
	r0 &= 1
	exit
.L3218:
	r0 = -1
	exit
.L3219:
	r0 = 0
	r0 &= 1
	exit
.L3217:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L3224
	if r2 > r4 goto .L3225
	if r3 >= r1 goto .L3224
	if r1 > r3 goto .L3225
	r0 = 1
	exit
.L3224:
	r0 = 0
	exit
.L3225:
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
	.global	__subdf3
	.global	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
